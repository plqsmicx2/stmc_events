clear @a
effect clear @a
effect give @a saturation 1 255
effect give @a instant_health 1 10
gamemode adventure @a
scoreboard players reset @a mine.game.mined.diamond_ore
scoreboard players reset @a mine.game.deathcount
scoreboard players reset mine.handler mine.timer

execute in stmc:mine/lobby run spawnpoint @a 0 100 0

forceload remove -49 -49 49 49

kill @e[type=warden]
kill @e[type=hoglin]
kill @e[type=creeper]
kill @e[type=creaking]
kill @e[type=witch]
kill @e[type=spider]
kill @e[type=zombie]
kill @e[type=endermite]
kill @e[type=item]

execute in stmc:mine/lobby run tp @a 0 100 0

execute in stmc:mine/lobby run clone 59 84 59 -59 79 -59 -59 99 -59

execute if score mine.handler mine.stage.creaking matches 1 run scoreboard players set mine.handler mine.stage.creaking 2
execute if score mine.handler mine.stage.creeper matches 1 run scoreboard players set mine.handler mine.stage.creeper 2
execute if score mine.handler mine.stage.hoglin matches 1 run scoreboard players set mine.handler mine.stage.hoglin 2
execute if score mine.handler mine.stage.warden matches 1 run scoreboard players set mine.handler mine.stage.warden 2
execute if score mine.handler mine.stage.witch matches 1 run scoreboard players set mine.handler mine.stage.witch 2
execute if score mine.handler mine.stage.spider matches 1 run scoreboard players set mine.handler mine.stage.spider 2
scoreboard players set mine.handler mine.stage.lobby 1

scoreboard players reset mine.handler mine.vote.creaking
scoreboard players reset mine.handler mine.vote.creeper
scoreboard players reset mine.handler mine.vote.hoglin
scoreboard players reset mine.handler mine.vote.warden
scoreboard players reset mine.handler mine.vote.witch
scoreboard players reset mine.handler mine.vote.spider

scoreboard players reset @a mine.vote