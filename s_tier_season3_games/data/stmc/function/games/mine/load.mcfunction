
function stmc:games/mine/score-setup/scores

clear @a
effect clear @a
effect give @a saturation 1 255
effect give @a instant_health 1 10
gamemode adventure @a

scoreboard players set @a mine.points.indiv 0
scoreboard players reset @a mine.game.mined.diamond_ore
scoreboard players reset @a mine.game.deathcount
scoreboard players reset mine.handler mine.timer
scoreboard players reset mine.handler mine.timer.delay1
scoreboard players reset mine.handler mine.timer.explanation
scoreboard players reset mine.handler mine.timer.delay2

scoreboard players set mine.handler mine.stage.creaking 0
scoreboard players set mine.handler mine.stage.creeper 0
scoreboard players set mine.handler mine.stage.hoglin 0
scoreboard players set mine.handler mine.stage.warden 0

spawnpoint @a 0 100 0

kill @e[type=warden]
kill @e[type=hoglin]
kill @e[type=creeper]
kill @e[type=creaking]
kill @e[type=endermite]
kill @e[type=item]

tp @a 0 100 0

clone 59 84 59 -59 79 -59 -59 99 -59

scoreboard players set mine.handler mine.stage.lobby 1

scoreboard players set mine.handler mine.stage 0