# runs every game tick

# this function handles the game logic for spleef

# it's very simple since most stuff is in death_handler

# <==== START GAME ====>

# teleport players
execute if score spleef.handler spleef.timer.game matches 2 as @a in trials:spleef run tp @s 0 140 0

# give items (after 10s)
execute if score spleef.handler spleef.timer.game matches 200.. run item replace entity @a hotbar.0 with minecraft:netherite_shovel[enchantments={"minecraft:efficiency":5},unbreakable={}]
execute if score spleef.handler spleef.timer.game matches 200.. run item replace entity @a hotbar.1 with minecraft:netherite_pickaxe[enchantments={"minecraft:efficiency":5},unbreakable={}]

# <==== END GAME ====>

# check if game should be ended (one team alive)
execute if score spleef.handler spleef.teams_alive matches 1 run scoreboard players set spleef.handler spleef.stage 4

# <==== DURING GAME ====>

# kill entities (prevents unnecessary lag)
execute if score spleef.handler spleef.timer.game matches 200.. run kill @e[type=!player]

# after 30 seconds, allow block breaking on bottom layer & set it to snow blocks
execute if score spleef.handler spleef.timer.game matches 600 run yawp flag local trials:spleef spleef-secondary break-blocks state Allowed
execute in trials:spleef if score spleef.handler spleef.timer.game matches 600 run fill -15 105 -15 15 105 15 minecraft:snow_block replace minecraft:chiseled_tuff_bricks

# DECAY

# after 60 seconds, warn for first decay [going in 5 blocks & all but bottom 2 layers of ice]
execute in trials:spleef if score spleef.handler spleef.timer.game matches 1200 run fill -20 104 -20 20 120 20 minecraft:red_wool replace minecraft:snow_block
execute in trials:spleef if score spleef.handler spleef.timer.game matches 1200 run fill -15 100 -15 15 120 15 minecraft:snow_block replace minecraft:red_wool
execute in trials:spleef if score spleef.handler spleef.timer.game matches 1200 run fill -25 118 -25 25 120 25 minecraft:red_wool replace minecraft:packed_ice
execute in trials:spleef if score spleef.handler spleef.timer.game matches 1200 run fill -25 118 -25 25 120 25 minecraft:red_wool replace minecraft:blue_ice
# after 5 more seconds, decay the red wool
execute in trials:spleef if score spleef.handler spleef.timer.game matches 1300 run fill -20 104 -20 20 120 20 minecraft:air replace minecraft:red_wool

# after 90 seconds, warn for second decay [going in 5 blocks & all but bottom layer of ice]
execute in trials:spleef if score spleef.handler spleef.timer.game matches 1800 run fill -20 104 -20 20 120 20 minecraft:red_wool replace minecraft:snow_block
execute in trials:spleef if score spleef.handler spleef.timer.game matches 1800 run fill -15 100 -15 15 120 15 minecraft:snow_block replace minecraft:red_wool
execute in trials:spleef if score spleef.handler spleef.timer.game matches 1800 run fill -25 117 -25 25 120 25 minecraft:red_wool replace minecraft:packed_ice
execute in trials:spleef if score spleef.handler spleef.timer.game matches 1800 run fill -25 117 -25 25 120 25 minecraft:red_wool replace minecraft:blue_ice
# after 5 more seconds, decay the red wool
execute in trials:spleef if score spleef.handler spleef.timer.game matches 1900 run fill -20 104 -20 20 120 20 minecraft:air replace minecraft:red_wool

# after 120 seconds, warn for third decay [going in 5 blocks & removing entire top layer]
execute in trials:spleef if score spleef.handler spleef.timer.game matches 2400 run fill -20 104 -20 20 120 20 minecraft:red_wool replace minecraft:snow_block
execute in trials:spleef if score spleef.handler spleef.timer.game matches 2400 run fill -10 100 -10 10 110 10 minecraft:snow_block replace minecraft:red_wool
execute in trials:spleef if score spleef.handler spleef.timer.game matches 2400 run fill -25 115 -25 25 120 25 minecraft:red_wool replace minecraft:packed_ice
execute in trials:spleef if score spleef.handler spleef.timer.game matches 2400 run fill -25 115 -25 25 120 25 minecraft:red_wool replace minecraft:blue_ice
# after 5 more seconds, decay the red wool
execute in trials:spleef if score spleef.handler spleef.timer.game matches 2500 run fill -20 104 -20 20 120 20 minecraft:air replace minecraft:red_wool

# after 120 seconds, warn for fourth (final) decay [going in 5 blocks]
execute in trials:spleef if score spleef.handler spleef.timer.game matches 3000 run fill -20 104 -20 20 120 20 minecraft:red_wool replace minecraft:snow_block
execute in trials:spleef if score spleef.handler spleef.timer.game matches 3000 run fill -5 100 -5 5 110 5 minecraft:snow_block replace minecraft:red_wool
# after 5 more seconds, decay the red wool
execute in trials:spleef if score spleef.handler spleef.timer.game matches 3100 run fill -20 104 -20 20 120 20 minecraft:air replace minecraft:red_wool