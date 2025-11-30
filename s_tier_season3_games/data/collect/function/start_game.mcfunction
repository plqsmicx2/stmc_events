# this function starts the collect game

clear @a
effect clear @a
function collect:helper/give_items

# set scoreboards
scoreboard players add collect.handler collect.stage 1
scoreboard players set collect.handler collect.timer.game 0
scoreboard players set collect.handler collect.timer.game.tickCount 0
scoreboard players set collect.handler collect.timer.game.secs 0
scoreboard players set collect.handler collect.timer.game.mins 12

# teleport players down
execute as @a at @s in minecraft:overworld run teleport @s ~ ~-3 ~

# set gamemode
gamemode survival @a