# this function runs every tick whenever the game is active

# the function is super simple since most logic is handled in other functions

# every tick stuff
execute in trials:towers run kill @e[type=minecraft:item]
scoreboard players add towers.handler towers.timer.game 1
function trials:towers/death_handler

# <===== POWDER SPAWNS =====>

# increment timer
scoreboard players add towers.handler towers.timer.game.summon 1

# spawn powder
execute in trials:towers as @a[team=RED_RACCOONS,scores={towers.alive=1}] at @s if score towers.handler towers.timer.game.summon matches 4 run setblock ~ ~4 ~ minecraft:red_concrete_powder
execute in trials:towers as @a[team=ORANGE_OTTERS,scores={towers.alive=1}] at @s if score towers.handler towers.timer.game.summon matches 4 run setblock ~ ~4 ~ minecraft:orange_concrete_powder
execute in trials:towers as @a[team=PINK_PIKAS,scores={towers.alive=1}] at @s if score towers.handler towers.timer.game.summon matches 4 run setblock ~ ~4 ~ minecraft:pink_concrete_powder
execute in trials:towers as @a[team=YELLOW_YAKS,scores={towers.alive=1}] at @s if score towers.handler towers.timer.game.summon matches 4 run setblock ~ ~4 ~ minecraft:yellow_concrete_powder
execute in trials:towers as @a[team=GREEN_GOATS,scores={towers.alive=1}] at @s if score towers.handler towers.timer.game.summon matches 4 run setblock ~ ~4 ~ minecraft:green_concrete_powder
execute in trials:towers as @a[team=CYAN_COUGARS,scores={towers.alive=1}] at @s if score towers.handler towers.timer.game.summon matches 4 run setblock ~ ~4 ~ minecraft:cyan_concrete_powder
execute in trials:towers as @a[team=PURPLE_PENGUINS,scores={towers.alive=1}] at @s if score towers.handler towers.timer.game.summon matches 4 run setblock ~ ~4 ~ minecraft:purple_concrete_powder
execute in trials:towers as @a[team=BLUE_BEARS,scores={towers.alive=1}] at @s if score towers.handler towers.timer.game.summon matches 4 run setblock ~ ~4 ~ minecraft:blue_concrete_powder

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

# 15 seconds
execute as @a[scores={towers.alive=1}] at @s if score towers.handler towers.timer.game matches 300 run playsound minecraft:block.amethyst_cluster.hit master @s ~ ~ ~ 4.0 2.0

# 30 seconds
execute as @a[scores={towers.alive=1}] at @s if score towers.handler towers.timer.game matches 600 run playsound minecraft:block.amethyst_cluster.hit master @s ~ ~ ~ 4.0 2.0

# 45 seconds
execute as @a[scores={towers.alive=1}] at @s if score towers.handler towers.timer.game matches 900 run playsound minecraft:block.amethyst_cluster.hit master @s ~ ~ ~ 4.0 2.0

# 60 seconds
execute as @a[scores={towers.alive=1}] at @s if score towers.handler towers.timer.game matches 1200 run playsound minecraft:block.amethyst_cluster.hit master @s ~ ~ ~ 4.0 2.0

# 75 seconds
execute as @a[scores={towers.alive=1}] at @s if score towers.handler towers.timer.game matches 1500 run playsound minecraft:block.amethyst_cluster.hit master @s ~ ~ ~ 4.0 2.0

# 90 seconds
execute as @a[scores={towers.alive=1}] at @s if score towers.handler towers.timer.game matches 1800 run playsound minecraft:block.amethyst_cluster.hit master @s ~ ~ ~ 4.0 2.0

# 105 seconds
execute as @a[scores={towers.alive=1}] at @s if score towers.handler towers.timer.game matches 2100 run playsound minecraft:block.amethyst_cluster.hit master @s ~ ~ ~ 4.0 2.0

# 120 seconds
execute as @a[scores={towers.alive=1}] at @s if score towers.handler towers.timer.game matches 2400 run playsound minecraft:block.amethyst_cluster.hit master @s ~ ~ ~ 4.0 2.0

# 135 seconds
execute as @a[scores={towers.alive=1}] at @s if score towers.handler towers.timer.game matches 2700 run playsound minecraft:block.amethyst_cluster.hit master @s ~ ~ ~ 4.0 2.0

# 150 seconds
execute as @a[scores={towers.alive=1}] at @s if score towers.handler towers.timer.game matches 3000 run playsound minecraft:block.amethyst_cluster.hit master @s ~ ~ ~ 4.0 2.0

# 165 seconds
execute as @a[scores={towers.alive=1}] at @s if score towers.handler towers.timer.game matches 3300 run playsound minecraft:block.amethyst_cluster.hit master @s ~ ~ ~ 4.0 2.0

# 180 seconds
execute as @a[scores={towers.alive=1}] at @s if score towers.handler towers.timer.game matches 3600 run playsound minecraft:block.amethyst_cluster.hit master @s ~ ~ ~ 4.0 2.0

# <===== END GAME =====>

# no players alive
execute if score towers.handler towers.players_alive matches 0 run function trials:towers/game_end

# 3 minutes elapsed
execute if score towers.handler towers.timer.game matches 3600.. run function trials:towers/game_end