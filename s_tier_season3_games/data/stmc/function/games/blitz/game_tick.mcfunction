# this function runs the game thread for blitz

# update border
function stmc:games/blitz/border/tick

# update visual timer
# increment timer
scoreboard players add blitz.handler blitz.timer.game.temp 1
# check if we need to update the seconds Remaining
execute if score blitz.handler blitz.timer.game.temp matches 20 run scoreboard players add blitz.handler blitz.timer.game.secsRemaining 1
execute if score blitz.handler blitz.timer.game.temp matches 20 run scoreboard players set blitz.handler blitz.timer.game.temp 0
# check if we need to update the minutes Remaining
execute if score blitz.handler blitz.timer.game.secsRemaining matches 60.. run scoreboard players add blitz.handler blitz.timer.game.minsRemaining 1
execute if score blitz.handler blitz.timer.game.secsRemaining matches 60.. run scoreboard players set blitz.handler blitz.timer.game.secsRemaining 0

# prevent crate item drops
execute in stmc:blitz run kill @e[type=item,nbt={Item:{id:"minecraft:redstone"}}]
execute in stmc:blitz run kill @e[type=experience_orb]

# and core item drops
execute in stmc:blitz run kill @e[type=item,nbt={Item:{id:"minecraft:red_wool"}}]
execute in stmc:blitz run kill @e[type=item,nbt={Item:{id:"minecraft:orange_wool"}}]
execute in stmc:blitz run kill @e[type=item,nbt={Item:{id:"minecraft:pink_wool"}}]
execute in stmc:blitz run kill @e[type=item,nbt={Item:{id:"minecraft:yellow_wool"}}]
execute in stmc:blitz run kill @e[type=item,nbt={Item:{id:"minecraft:green_wool"}}]
execute in stmc:blitz run kill @e[type=item,nbt={Item:{id:"minecraft:cyan_wool"}}]
execute in stmc:blitz run kill @e[type=item,nbt={Item:{id:"minecraft:purple_wool"}}]
execute in stmc:blitz run kill @e[type=item,nbt={Item:{id:"minecraft:blue_wool"}}]

# at 3 minutes, remove crate barriers
execute if score blitz.handler blitz.timer.game matches 3600 in stmc:blitz run fill -35 103 -35 35 118 35 air replace tinted_glass
execute if score blitz.handler blitz.timer.game matches 3600 run tellraw @a {text:"Crates have been unlocked!",color:"light_purple",bold:true}
execute if score blitz.handler blitz.timer.game matches 3600 as @a at @s run playsound block.amethyst_block.break player @s ~ ~ ~ 10 1

# at 7 minutes, destroy all cores
execute if score blitz.handler blitz.timer.game matches 8400 in stmc:blitz run fill -97 106 -97 97 106 97 air replace #wool
execute if score blitz.handler blitz.timer.game matches 8400 run tellraw @a {text:"Cores have been broken!",color:"light_purple",bold:true}
execute if score blitz.handler blitz.timer.game matches 8400 as @a at @s run playsound entity.dragon_fireball.explode player @s ~ ~ ~ 10 0.5
execute if score blitz.handler blitz.timer.game matches 8400 as @a at @s run playsound entity.ender_dragon.growl player @s ~ ~ ~ 6 1

# ore generation
function stmc:games/blitz/helper/generate

# kill players too low in the void
execute in stmc:blitz as @a at @s if entity @s[y=0,dy=-100] run kill @s

# check for deaths
# also updates # of players/teams alive
function stmc:games/blitz/helper/death_handler

# handle players' items
function stmc:games/blitz/helper/item_replace

# check for cores broken
# also announces if they are broken
execute in stmc:blitz run function stmc:games/blitz/helper/game/core_check with storage stmc:global

# end game
#execute if score blitz.handler blitz.stats.teamsAlive matches 1 run function stmc:games/blitz/helper/game_end