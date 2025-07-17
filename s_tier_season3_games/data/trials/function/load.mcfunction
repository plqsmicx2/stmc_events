# load function for trials [TRIALS]

# this function creates all local scoreboards (which will be subsequently removed in /reset)

# although trials has multiple rounds, players will be teleported to the trials lobby
execute in trials:lobby run tp @a 0 100 0

# do some normal load stuff

# force gamemode
gamemode survival @a
execute as @a[team=SPECTATORS] run gamemode spectator @s

# clear stuff
effect clear @a
clear @a

# time
time set day

# gamerules
gamerule doDaylightCycle false
gamerule doWeatherCycle false

# world protections
yawp dim trials:lobby delete-all regions
yawp dim trials:lobby create local lobby-world Cuboid -50 95 -50 50 140 50
yawp local trials:lobby lobby-world add flag break-blocks Denied
yawp local trials:lobby lobby-world add flag spawning-all Denied
yawp local trials:lobby lobby-world add flag fall-damage Denied
yawp local trials:lobby lobby-world add flag no-pvp Allowed
yawp local trials:lobby lobby-world add flag no-hunger Allowed
yawp local trials:lobby lobby-world add flag knockback-players Denied
yawp local trials:lobby lobby-world add flag item-drop Denied
yawp local trials:lobby lobby-world add flag item-pickup Denied
yawp local trials:lobby lobby-world add flag fluid-flow Denied

# create scoreboards
# there are not as many because many scoreboards are game-specific

# tracks the current stage of the game overall
scoreboard objectives add tr.stage dummy

# some necessary behind-the-scenes timers
scoreboard objectives add tr.timer.lobby1 dummy
scoreboard objectives add tr.timer.lobby2 dummy
scoreboard objectives add tr.timer.lobby3 dummy
scoreboard objectives add tr.timer.lobby4 dummy

# tracks individual points a player has earned
scoreboard objectives add tr.points.indiv dummy

# tracks the points each team has earned this game [is not stored anywhere else]
# this value is only attributed to the tr.TEAM players
scoreboard objectives add tr.points.team dummy

# tracks the rank of each player
scoreboard objectives add tr.points.player.rank dummy

# tracks the rank of each team
scoreboard objectives add tr.points.team.rank dummy

# tracks the order of games played
scoreboard objectives add tr.stage.game1 dummy
scoreboard objectives add tr.stage.game2 dummy
scoreboard objectives add tr.stage.game3 dummy
scoreboard objectives add tr.stage.game4 dummy

# make stages for each game
scoreboard objectives add disco.stage dummy
scoreboard objectives add replicate.stage dummy
scoreboard objectives add spleef.stage dummy
scoreboard objectives add towers.stage dummy

# and reset each game's stage
scoreboard players reset disco.handler disco.stage
scoreboard players reset replicate.handler replicate.stage
scoreboard players reset spleef.handler spleef.stage
scoreboard players reset towers.handler towers.stage

# set stage to 0
scoreboard players set tr.handler tr.stage 0

# reset timers
scoreboard players set tr.handler tr.timer.lobby1 0
scoreboard players set tr.handler tr.timer.lobby2 0
scoreboard players set tr.handler tr.timer.lobby3 0
scoreboard players set tr.handler tr.timer.lobby4 0

# reset game order
scoreboard players set tr.handler tr.stage.game1 0
scoreboard players set tr.handler tr.stage.game2 0
scoreboard players set tr.handler tr.stage.game3 0
scoreboard players set tr.handler tr.stage.game4 0

# set some necessary values for players
scoreboard players set @a tr.points.indiv 0