# this function runs every tick whenever the game is active

# the function is super simple since most logic is handled in other functions

# every tick stuff
kill @e[type=minecraft:item]

# <===== POWDER SPAWNS =====>

# increment timer
scoreboard players add towers.handler towers.timer.game.summon 1

# spawn powder
execute in trials:towers as @a[team=RED_RACCOONS,scores={towers.alive=1}] at @s if score towers.handler towers.timer.game.summon matches 4 run setblock ~ ~4 ~ minecraft:red_concrete_powder
execute in trials:towers as @a[team=ORANGE_OTTERS,scores={towers.alive=1}] at @s if score towers.handler towers.timer.game.summon matches 4 run setblock ~ ~4 ~ minecraft:orange_concrete_powder
execute in trials:towers as @a[team=PINK_PIKAS,scores={towers.alive=1}] at @s if score towers.handler towers.timer.game.summon matches 4 run setblock ~ ~4 ~ minecraft:pink_concrete_powder
execute in trials:towers as @a[team=GREEN_GOATS,scores={towers.alive=1}] at @s if score towers.handler towers.timer.game.summon matches 4 run setblock ~ ~4 ~ minecraft:green_concrete_powder
execute in trials:towers as @a[team=CYAN_COUGARS,scores={towers.alive=1}] at @s if score towers.handler towers.timer.game.summon matches 4 run setblock ~ ~4 ~ minecraft:cyan_concrete_powder
execute in trials:towers as @a[team=PURPLE_PENGUINS,scores={towers.alive=1}] at @s if score towers.handler towers.timer.game.summon matches 4 run setblock ~ ~4 ~ minecraft:purple_concrete_powder

# reset timer
execute if score towers.handler towers.timer.game.summon matches 4 run scoreboard players set towers.handler towers.timer.game.summon 0

# <===== IN-GAME TIMER =====>

# increment timer
scoreboard players add towers.handler towers.timer.game.tickCounter 1

# update seconds elapsed
execute if score towers.handler towers.timer.game.tickCounter matches 20 run scoreboard players add towers.handler towers.timer.game.secondsElapsed 1
execute if score towers.handler towers.timer.game.tickCounter matches 20 run scoreboard players set towers.handler towers.timer.game.tickCounter 0

# update minutes elapsed
execute if score towers.handler towers.timer.game.secondsElapsed matches 60 run scoreboard players add towers.handler towers.timer.game.minsElapsed 1
execute if score towers.handler towers.timer.game.secondsElapsed matches 60 run scoreboard players set towers.handler towers.timer.game.secondsElapsed 0

# update actionbar
execute if score towers.handler towers.timer.game.secondsElapsed matches 0..9 run title @a actionbar ["",{"score":{"name":"towers.handler","objective":"towers.timer.game.minsElapsed"},"color":"aqua"},{"text":":0","color":"aqua"},{"score":{"name":"towers.handler","objective":"towers.timer.game.secondsElapsed"},"color":"aqua"}]
execute if score towers.handler towers.timer.game.secondsElapsed matches 10.. run title @a actionbar ["",{"score":{"name":"towers.handler","objective":"towers.timer.game.minsElapsed"},"color":"aqua"},{"text":":","color":"aqua"},{"score":{"name":"towers.handler","objective":"towers.timer.game.secondsElapsed"},"color":"aqua"}]

# <===== POINT AWARDS =====>

# 30 seconds
execute as @a[scores={towers.alive=1}] if score towers.handler towers.timer.game matches 600 run scoreboard players add @s towers.points.indiv 25
execute as @a[scores={towers.alive=1}] if score towers.handler towers.timer.game matches 600 run playsound minecraft:block.amethyst_cluster.hit master @s ~ ~ ~ 4.0 2.0
execute as @a[scores={towers.alive=1}] if score towers.handler towers.timer.game matches 600 run tellraw @s ["",{text:"[",bold:true,color:"gray"},{text:"+25 points",bold:true,color:"red"},{text:"]",bold:true,color:"gray"},{text:" 30 seconds survived!",bold:true,color:"red"}]

# 60 seconds
execute as @a[scores={towers.alive=1}] if score towers.handler towers.timer.game matches 1200 run scoreboard players add @s towers.points.indiv 25
execute as @a[scores={towers.alive=1}] if score towers.handler towers.timer.game matches 1200 run playsound minecraft:block.amethyst_cluster.hit master @s ~ ~ ~ 4.0 2.0
execute as @a[scores={towers.alive=1}] if score towers.handler towers.timer.game matches 1200 run tellraw @s ["",{text:"[",bold:true,color:"gray"},{text:"+25 points",bold:true,color:"red"},{text:"]",bold:true,color:"gray"},{text:" 60 seconds survived!",bold:true,color:"red"}]

# 90 seconds
execute as @a[scores={towers.alive=1}] if score towers.handler towers.timer.game matches 1800 run scoreboard players add @s towers.points.indiv 25
execute as @a[scores={towers.alive=1}] if score towers.handler towers.timer.game matches 1800 run playsound minecraft:block.amethyst_cluster.hit master @s ~ ~ ~ 4.0 2.0
execute as @a[scores={towers.alive=1}] if score towers.handler towers.timer.game matches 1800 run tellraw @s ["",{text:"[",bold:true,color:"gray"},{text:"+25 points",bold:true,color:"red"},{text:"]",bold:true,color:"gray"},{text:" 90 seconds survived!",bold:true,color:"red"}]

# 120 seconds
execute as @a[scores={towers.alive=1}] if score towers.handler towers.timer.game matches 2400 run scoreboard players add @s towers.points.indiv 50
execute as @a[scores={towers.alive=1}] if score towers.handler towers.timer.game matches 2400 run playsound minecraft:block.amethyst_cluster.hit master @s ~ ~ ~ 4.0 2.0
execute as @a[scores={towers.alive=1}] if score towers.handler towers.timer.game matches 2400 run tellraw @s ["",{text:"[",bold:true,color:"gray"},{text:"+50 points",bold:true,color:"red"},{text:"]",bold:true,color:"gray"},{text:" 2 minutes survived!",bold:true,color:"red"}]

# <===== RIFTS =====>

# create rifts after 30 seconds
execute in trials:towers if score towers.handler towers.timer.game matches 600 run fill -20 100 -20 20 105 20 minecraft:air replace minecraft:red_wool
execute if score towers.handler towers.timer.game matches 600 run tellraw @a {"text":"Rifts have now generated. Good luck!", "color":"aqua"}

# remove night vision after 1 minute
execute if score towers.handler towers.timer.game matches 1200 run effect clear @a[scores={towers.alive=1}] minecraft:night_vision

# <===== END GAME =====>

# no players alive
execute if score towers.handler towers.players_alive matches 0 run scoreboard players set towers.handler towers.stage 4

# 2 minutes elapsed
execute if score towers.handler towers.timer.game matches 2400.. run scoreboard players set towers.handler towers.stage 4