# load function for survival games

# Game Settings
# point constants
data modify storage brawl:data killValue set value 4

data modify storage brawl:data eighthPlacement set value 0
data modify storage brawl:data seventhPlacement set value 4
data modify storage brawl:data sixthPlacement set value 8
data modify storage brawl:data fifthPlacement set value 16
data modify storage brawl:data fourthPlacement set value 24
data modify storage brawl:data thirdPlacement set value 32
data modify storage brawl:data secondPlacement set value 40
data modify storage brawl:data firstPlacement set value 52

# teleport players to spawn platform
execute in stmc:brawl/main run tp @a 0 172 0

# force gamemode
gamemode adventure @a
execute as @a[team=SPECTATORS] run gamemode spectator @s

# forceload area
execute in stmc:brawl/main run forceload add -25 -25 25 25

# set time
execute unless score brawl.handler brawl.roundsCompleted matches 2 run time set 12000
execute if score brawl.handler brawl.roundsCompleted matches 2 run time set 18000

# set weather
weather clear

# set appropriate gamerules
gamerule advance_time false
gamerule advance_weather false
gamerule immediate_respawn true

# clear inventories
clear @a

# clear effects
effect clear @a

# ensure full health & hunger
effect give @a saturation 1 4 true
effect give @a instant_health 1 110 true

# set xp
xp set @a 0 levels
xp set @a 0 points

# kill all entities
execute in stmc:brawl/main run kill @e[type=!player]

# failsafe spawn point
execute in stmc:brawl/main run spawnpoint @a 0 172 0

# set worldborder
worldborder center 0 0
worldborder set 300

# player immunities
execute as @a run attribute @s attack_damage base set 0.0
execute as @a run attribute @s knockback_resistance base set 10.0

# create scoreboards
# tracks the current stage of the game
scoreboard objectives add brawl.stage dummy
# tracks how many rounds are complete
scoreboard objectives add brawl.roundsCompleted dummy
# stores if the player is currently alive or not
scoreboard objectives add brawl.alive dummy
# tracks the number of kills a player has gotten
scoreboard objectives add brawl.kills dummy
scoreboard objectives add brawl.kills.round1 dummy
scoreboard objectives add brawl.kills.round2 dummy
scoreboard objectives add brawl.kills.round3 dummy
# tracks the current number of players alive
scoreboard objectives add brawl.players_alive dummy
# tracks the current number of teams alive
scoreboard objectives add brawl.teams_alive dummy
# tracks the individual points a player has earned [is then stored in global indiv as well]
scoreboard objectives add brawl.points.indiv dummy
scoreboard objectives add brawl.points.indiv.round1 dummy
scoreboard objectives add brawl.points.indiv.round2 dummy
scoreboard objectives add brawl.points.indiv.round3 dummy
# tracks the points each team has earned this game [is not stored anywhere else]
# this value is only attributed to the brawl.TEAM players
scoreboard objectives add brawl.points.team dummy
# tracks the rank of each player
scoreboard objectives add brawl.points.indiv.rank dummy
# tracks the rank of each team
scoreboard objectives add brawl.points.team.rank dummy
# constant of 4 (for team placement split calculation)
scoreboard objectives add brawl.points.teamSplitFour dummy
# stores which quadrant the border will end in
scoreboard objectives add brawl.borderFirstCenterX dummy
scoreboard objectives add brawl.borderSecondCenterX dummy
scoreboard objectives add brawl.borderThirdCenterX dummy
scoreboard objectives add brawl.borderFourthCenterX dummy
scoreboard objectives add brawl.borderFirstCenterZ dummy
scoreboard objectives add brawl.borderSecondCenterZ dummy
scoreboard objectives add brawl.borderThirdCenterZ dummy
scoreboard objectives add brawl.borderFourthCenterZ dummy
scoreboard objectives add brawl.borderDistance dummy
scoreboard objectives add brawl.borderRadius dummy
# timers
scoreboard objectives add brawl.timer.delay dummy
scoreboard objectives add brawl.timer.explanation dummy
# no need for intermediate delay since each round begins with a 15 second delay period
scoreboard objectives add brawl.timer.round dummy
scoreboard objectives add brawl.timer.announcements dummy

# create round thread variables (so that it will run even before round/load is called)
scoreboard objectives add brawl.round.stage dummy

# and reset their values (so that old assigned values don't interfere)
scoreboard players reset brawl.round.handler brawl.round.stage

# now, we set stage to 0
scoreboard players set brawl.handler brawl.stage 0
scoreboard players set brawl.handler brawl.roundsCompleted 0

# and set some default values
scoreboard players set brawl.handler brawl.teams_alive 8

# and set some necessary values for our players
scoreboard players set @a brawl.kills 0
scoreboard players set @a brawl.alive 1
scoreboard players set @a[team=SPECTATORS] brawl.alive 0
scoreboard players set @a brawl.death 0
scoreboard players set @a brawl.points.indiv 0
scoreboard players set @a brawl.points.indiv.round1 0
scoreboard players set @a brawl.points.indiv.round2 0
scoreboard players set @a brawl.points.indiv.round3 0

scoreboard players set brawl.handler brawl.points.teamSplitFour 4

scoreboard players set brawl.handler brawl.timer.delay 0
scoreboard players set brawl.handler brawl.timer.explanation 0
scoreboard players set brawl.handler brawl.timer.round 0
scoreboard players set brawl.handler brawl.timer.announcements 0

# set team points to 0 if they don't exist
execute unless score brawl.RedRaccoons brawl.points.team matches 0.. run scoreboard players set brawl.RedRaccoons brawl.points.team 0
execute unless score brawl.OrangeOtters brawl.points.team matches 0.. run scoreboard players set brawl.OrangeOtters brawl.points.team 0
execute unless score brawl.PinkPikas brawl.points.team matches 0.. run scoreboard players set brawl.PinkPikas brawl.points.team 0
execute unless score brawl.YellowYaks brawl.points.team matches 0.. run scoreboard players set brawl.YellowYaks brawl.points.team 0
execute unless score brawl.GreenGoats brawl.points.team matches 0.. run scoreboard players set brawl.GreenGoats brawl.points.team 0
execute unless score brawl.CyanCougars brawl.points.team matches 0.. run scoreboard players set brawl.CyanCougars brawl.points.team 0
execute unless score brawl.PurplePenguins brawl.points.team matches 0.. run scoreboard players set brawl.PurplePenguins brawl.points.team 0
execute unless score brawl.BlueBears brawl.points.team matches 0.. run scoreboard players set brawl.BlueBears brawl.points.team 0

# global resets
execute as @a run attribute @s max_health base set 20
execute as @a run attribute @s max_health modifier remove all

# reset the sidebar
scoreboard objectives remove brawl.sidebar