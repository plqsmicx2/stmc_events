# tick function handling the active game for replicate [REPLICATE]

# per-team stages:
# 0- build 1
# 1- build 2
# 2- build 3
# 3- build 4
# 4- build 5
# 5- build 6
# 6- team complete

# each build stage is the same:
# at 3 ticks, clone the build
# at >4 ticks, give players necessary blocks
# at 40 ticks, remove the tinted glass barrier
# at >40 ticks, run testforblocks on each player
# at >40 ticks, update playersCompleted for team
# at >40 ticks, if playersCompleted is 4, increment stage, reset each player's completion, and re-add the tinted glass barrier
# these are all handled within each team's function

# <===== GAME-WIDE =====>

# reset inventories
item replace entity @a hotbar.0 with diamond_pickaxe[custom_name={"text":"BREAKER","color":"dark_aqua","bold":true},tool={default_mining_speed:.1,damage_per_block:0,rules:[{speed:9999999,blocks:[ \
                                                    "deepslate_tiles","mud","mangrove_roots","soul_sand", \
                                                    "light_blue_wool","packed_ice","snow_block","redstone_block","coarse_dirt","stone_bricks","iron_block", \
                                                    "prismarine_bricks","dark_prismarine","light_blue_stained_glass","sea_lantern","prismarine", \
                                                    "white_wool","calcite","white_terracotta","black_concrete", \
                                                    "tuff_bricks","waxed_oxidized_cut_copper","waxed_weathered_copper_grate","waxed_exposed_copper_bulb","waxed_chiseled_copper", \
                                                    "red_concrete","orange_concrete","yellow_concrete","lime_concrete","light_blue_concrete", \
                                                    "magenta_concrete","purple_concrete","blue_concrete", \
                                                    "blackstone","smooth_basalt","netherrack","ancient_debris"]}]}]
item replace entity @a hotbar.1 with air

# kill item drops
execute in trials:replicate run kill @e[type=item]

# if game timer is 4800 [4 minutes], end game
execute if score replicate.handler replicate.timer.game matches 4800 run scoreboard players add replicate.handler replicate.stage 1

# if all teams are complete, end game
scoreboard players set replicate.handler replicate.completed 0
execute if score replicate.RedRaccoons replicate.completed matches 1 run scoreboard players add replicate.handler replicate.completed 1
execute if score replicate.OrangeOtters replicate.completed matches 1 run scoreboard players add replicate.handler replicate.completed 1
execute if score replicate.PinkPikas replicate.completed matches 1 run scoreboard players add replicate.handler replicate.completed 1
execute if score replicate.YellowYaks replicate.completed matches 1 run scoreboard players add replicate.handler replicate.completed 1
execute if score replicate.GreenGoats replicate.completed matches 1 run scoreboard players add replicate.handler replicate.completed 1
execute if score replicate.CyanCougars replicate.completed matches 1 run scoreboard players add replicate.handler replicate.completed 1
execute if score replicate.PurplePenguins replicate.completed matches 1 run scoreboard players add replicate.handler replicate.completed 1
execute if score replicate.BlueBears replicate.completed matches 1 run scoreboard players add replicate.handler replicate.completed 1

execute if score replicate.handler replicate.completed matches 8 run scoreboard players add replicate.handler replicate.stage 1

# update visual timer
# increment timer
scoreboard players add replicate.handler replicate.timer.game.tempTimer 1
# check if we need to update the seconds left
execute if score replicate.handler replicate.timer.game.tempTimer matches 20 run scoreboard players remove replicate.handler replicate.timer.game.secondsLeft 1
execute if score replicate.handler replicate.timer.game.tempTimer matches 20 run scoreboard players set replicate.handler replicate.timer.game.tempTimer 0
# check if we need to update the minutes left
execute if score replicate.handler replicate.timer.game.secondsLeft matches -1 run scoreboard players remove replicate.handler replicate.timer.game.minsLeft 1
execute if score replicate.handler replicate.timer.game.secondsLeft matches -1 run scoreboard players set replicate.handler replicate.timer.game.secondsLeft 59
# update actionbar
execute as @a if score replicate.handler replicate.timer.game.secondsLeft matches 10.. run title @s actionbar ["",{"score": {"name": "replicate.handler", "objective": "replicate.timer.game.minsLeft"},"color":"aqua"}, {"text": ":","color":"aqua"}, {"score": {"name": "replicate.handler", "objective": "replicate.timer.game.secondsLeft"},"color":"aqua"}, {"text": " remaining","color":"aqua"}]
execute as @a if score replicate.handler replicate.timer.game.secondsLeft matches ..9 run title @s actionbar ["",{"score": {"name": "replicate.handler", "objective": "replicate.timer.game.minsLeft"},"color":"aqua"}, {"text": ":0","color":"aqua"}, {"score": {"name": "replicate.handler", "objective": "replicate.timer.game.secondsLeft"},"color":"aqua"}, {"text": " remaining","color":"aqua"}]

# check for teams who've completed all builds
function trials:replicate/round_active/round_end with storage stmc:global

# <===== RED RACCOONS =====>

execute unless score replicate.RedRaccoons replicate.completed matches 1 run function trials:replicate/round_active/red_raccoons

# <===== ORANGE OTTERS =====>

execute unless score replicate.OrangeOtters replicate.completed matches 1 run function trials:replicate/round_active/orange_otters

# <===== PINK PIKAS =====>

execute unless score replicate.PinkPikas replicate.completed matches 1 run function trials:replicate/round_active/pink_pikas

# <===== YELLOW YAKS =====>

execute unless score replicate.YellowYaks replicate.completed matches 1 run function trials:replicate/round_active/yellow_yaks

# <===== GREEN GOATS =====>

execute unless score replicate.GreenGoats replicate.completed matches 1 run function trials:replicate/round_active/green_goats

# <===== CYAN COUGARS =====>

execute unless score replicate.CyanCougars replicate.completed matches 1 run function trials:replicate/round_active/cyan_cougars

# <===== PURPLE PENGUINS =====>

execute unless score replicate.PurplePenguins replicate.completed matches 1 run function trials:replicate/round_active/purple_penguins

# <===== BLUE BEARS =====>

execute unless score replicate.BlueBears replicate.completed matches 1 run function trials:replicate/round_active/blue_bears