# load function for arena

# this function runs whenever beginning the arena game

# teleport players to spawn
execute in stmc:arena run tp @a 0 101 -18 0 0

# force gamemode
gamemode adventure @a
execute as @a[team=SPECTATORS] run gamemode spectator @s

# set time
time set 4000

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
execute as @a run attribute @s max_health base set 20
execute as @a run attribute @s max_health modifier remove all
effect give @a saturation 1 110 true
effect give @a regeneration 5 1 true
effect give @a resistance infinite 4 true
effect give @a mining_fatigue infinite 4 true

# set xp
xp set @a 0 levels
xp set @a 0 points

# kill all entities
execute in stmc:arena run kill @e[type=!player]

# and wrap it up with some scoreboard stuff
# timers
scoreboard objectives add arena.timer.delay1 dummy
scoreboard objectives add arena.timer.explanation dummy
scoreboard objectives add arena.timer.delay2 dummy
scoreboard objectives add arena.timer.game dummy
scoreboard objectives add arena.timer.game.round dummy
scoreboard objectives add arena.timer.game.round1 dummy
scoreboard objectives add arena.timer.game.round2 dummy
scoreboard objectives add arena.timer.game.round3 dummy
scoreboard objectives add arena.timer.game.round4 dummy
scoreboard objectives add arena.timer.game.round5 dummy
scoreboard objectives add arena.timer.game.round6 dummy
scoreboard objectives add arena.timer.game.round7 dummy
scoreboard objectives add arena.timer.delay3 dummy
# stats
scoreboard objectives add arena.stats.kills playerKillCount
scoreboard objectives add arena.stats.kills.rank dummy
scoreboard objectives add arena.stats.alive dummy
scoreboard objectives add arena.players dummy
scoreboard objectives add arena.stats.deaths deathCount
scoreboard objectives add arena.stats.roundsCompleted dummy
scoreboard objectives add arena.stats.diamondsMined minecraft.mined:minecraft.diamond_block
scoreboard objectives add arena.stats.goldMined minecraft.mined:minecraft.gold_block
scoreboard objectives add arena.stats.doubleDiamond dummy
scoreboard objectives add arena.stats.doubleGold dummy
scoreboard objectives add arena.stats.kit dummy
scoreboard objectives add arena.stats.game1completed dummy
scoreboard objectives add arena.stats.game2completed dummy
scoreboard objectives add arena.stats.game3completed dummy
scoreboard objectives add arena.stats.game4completed dummy
scoreboard objectives add arena.stats.gamescompleted dummy
scoreboard objectives add arena.stats.playersAlive dummy
# points
scoreboard objectives add arena.points.indiv dummy
scoreboard objectives add arena.points.indiv.rank dummy
scoreboard objectives add arena.points.team dummy
scoreboard objectives add arena.points.team.rank dummy
scoreboard objectives add arena.points.diamondValue dummy
scoreboard objectives add arena.points.goldValue dummy
scoreboard objectives add arena.points.killValue dummy
scoreboard objectives add arena.points.survivalValue dummy

# (re)set all necessary values
scoreboard players set arena.handler arena.stage 0

scoreboard players set arena.handler arena.timer.delay1 0
scoreboard players set arena.handler arena.timer.explanation 0
scoreboard players set arena.handler arena.timer.delay2 0
scoreboard players set arena.handler arena.timer.game 0
scoreboard players set arena.handler arena.timer.game.round 0
scoreboard players set arena.handler arena.timer.game.round1 0
scoreboard players set arena.handler arena.timer.game.round2 0
scoreboard players set arena.handler arena.timer.game.round3 0
scoreboard players set arena.handler arena.timer.game.round4 0
scoreboard players set arena.handler arena.timer.game.round5 0
scoreboard players set arena.handler arena.timer.game.round6 0
scoreboard players set arena.handler arena.timer.game.round7 0
scoreboard players set arena.handler arena.timer.delay3 0

scoreboard players set @a arena.stats.kills 0
scoreboard players set arena.handler arena.stats.roundsCompleted 0
scoreboard players set @a arena.stats.deaths 0
scoreboard players set @a arena.stats.diamondsMined 0
scoreboard players set @a arena.stats.goldMined 0
scoreboard players set @a arena.stats.doubleDiamond 0
scoreboard players set @a arena.stats.doubleGold 0
scoreboard players set @a arena.stats.kit 0
scoreboard players set arena.handler arena.stats.game1completed 0
scoreboard players set arena.handler arena.stats.game2completed 0
scoreboard players set arena.handler arena.stats.game3completed 0
scoreboard players set arena.handler arena.stats.game4completed 0

scoreboard players set @a arena.points.indiv 0
scoreboard players set arena.handler arena.points.diamondValue 2
scoreboard players set arena.handler arena.points.goldValue 1
scoreboard players set arena.handler arena.points.killValue 1
scoreboard players set arena.handler arena.points.survivalValue 0
function stmc:games/arena/helper/points/update
function stmc:games/arena/helper/game/death_handler/tick

#scoreboard objectives remove arena.sidebar