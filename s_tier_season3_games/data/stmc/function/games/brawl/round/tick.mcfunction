# thread handler for survival games rounds

# ROUND THREAD:
# 0-2s: reset
# 15s: start
# 16-30s: remove elytras
# 25s: end grace period

# update points every tick (regardless of stage)
function stmc:games/brawl/round/helper/points/points_update with storage brawl:data

# run load if this is our first time here
execute if score brawl.handler brawl.timer.round matches ..0 run function stmc:games/brawl/round/load

# increment round timer
scoreboard players add brawl.handler brawl.timer.round 1

# automatically pause unless the round is active
execute unless score brawl.handler brawl.timer.round matches 300.. run function stmc:thread/helper/automatic_pause

# reset world from 0-2s
execute in stmc:brawl/main if score brawl.handler brawl.timer.round matches 1..50 run function stmc:games/brawl/round/helper/reset_world

# give elytra @5s
execute if score brawl.handler brawl.timer.round matches 100 run item replace entity @a armor.chest with minecraft:elytra[enchantments={"minecraft:binding_curse":1b}]

# generate border
execute if score brawl.handler brawl.timer.round matches 100 run function stmc:games/brawl/round/border/generate

# 5s countdown
execute if score brawl.handler brawl.timer.round matches 200 run title @a actionbar {"text":"5 seconds!","bold":true,"color":"gold"}
execute if score brawl.handler brawl.timer.round matches 220 run title @a actionbar {"text":"4 seconds!","bold":true,"color":"gold"}
execute if score brawl.handler brawl.timer.round matches 240 run title @a actionbar {"text":"3 seconds!","bold":true,"color":"gold"}
execute if score brawl.handler brawl.timer.round matches 260 run title @a actionbar {"text":"2 seconds!","bold":true,"color":"gold"}
execute if score brawl.handler brawl.timer.round matches 280 run title @a actionbar {"text":"1 seconds!","bold":true,"color":"gold"}

execute as @a at @s if score brawl.handler brawl.timer.round matches 200 run playsound minecraft:block.note_block.pling master @a ~ ~ ~ 0.8 1
execute as @a at @s if score brawl.handler brawl.timer.round matches 220 run playsound minecraft:block.note_block.pling master @a ~ ~ ~ 0.8 1.1
execute as @a at @s if score brawl.handler brawl.timer.round matches 240 run playsound minecraft:block.note_block.pling master @a ~ ~ ~ 0.8 1.2
execute as @a at @s if score brawl.handler brawl.timer.round matches 260 run playsound minecraft:block.note_block.pling master @a ~ ~ ~ 0.8 1.3
execute as @a at @s if score brawl.handler brawl.timer.round matches 280 run playsound minecraft:block.note_block.pling master @a ~ ~ ~ 0.8 1.4
execute as @a at @s if score brawl.handler brawl.timer.round matches 300 run playsound minecraft:block.note_block.pling master @a ~ ~ ~ 1 2

# start game
execute if score brawl.handler brawl.timer.round matches 300 run function stmc:games/brawl/round/start

# run game_tick after 15s
execute if score brawl.handler brawl.timer.round matches 300.. run function stmc:games/brawl/round/game_tick