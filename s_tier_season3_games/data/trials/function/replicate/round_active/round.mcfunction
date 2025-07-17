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
item replace entity @a hotbar.0 with diamond_pickaxe[custom_name={"text":"BREAKER","color":"dark_aqua","bold":true},tool={default_mining_speed:10000,damage_per_block:0,rules:[{speed:.1,blocks:["red_wool","orange_wool","pink_wool","green_wool","cyan_wool","purple_wool","deepslate_tiles","deepslate_tile_slab","deepslate_tile_stairs","deepslate_tile_wall","tinted_glass","soul_lantern","red_nether_brick_slab","red_nether_brick_stairs","red_nether_brick_wall","shroomlight","crying_obsidian"]}]}]
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
execute if score replicate.GreenGoats replicate.completed matches 1 run scoreboard players add replicate.handler replicate.completed 1
execute if score replicate.CyanCougars replicate.completed matches 1 run scoreboard players add replicate.handler replicate.completed 1
execute if score replicate.PurplePenguins replicate.completed matches 1 run scoreboard players add replicate.handler replicate.completed 1

execute if score replicate.handler replicate.completed matches 6 run scoreboard players add replicate.handler replicate.stage 1

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

# <===== RED RACCOONS =====>

function trials:replicate/round_active/red_raccoons

# increment appropriate timer for Red Raccoons
execute if score replicate.RedRaccoons replicate.stage matches 0 run scoreboard players add replicate.RedRaccoons replicate.timer.build1 1
execute if score replicate.RedRaccoons replicate.stage matches 1 run scoreboard players add replicate.RedRaccoons replicate.timer.build2 1
execute if score replicate.RedRaccoons replicate.stage matches 2 run scoreboard players add replicate.RedRaccoons replicate.timer.build3 1
execute if score replicate.RedRaccoons replicate.stage matches 3 run scoreboard players add replicate.RedRaccoons replicate.timer.build4 1
execute if score replicate.RedRaccoons replicate.stage matches 4 run scoreboard players add replicate.RedRaccoons replicate.timer.build5 1
execute if score replicate.RedRaccoons replicate.stage matches 5 run scoreboard players add replicate.RedRaccoons replicate.timer.build6 1

# and if we're complete, set the completed score
execute if score replicate.RedRaccoons replicate.completed matches 1 unless score replicate.RedRaccoons replicate.points.rank.overall matches 0.. run scoreboard players operation replicate.RedRaccoons replicate.points.rank.overall = replicate.handler replicate.completed
execute if score replicate.RedRaccoons replicate.stage matches 6 run scoreboard players set replicate.RedRaccoons replicate.completed 1
scoreboard players set replicate.RedRaccoons replicate.timer.game 0
scoreboard players operation replicate.RedRaccoons replicate.timer.game += replicate.RedRaccoons replicate.timer.build1
scoreboard players operation replicate.RedRaccoons replicate.timer.game += replicate.RedRaccoons replicate.timer.build2
scoreboard players operation replicate.RedRaccoons replicate.timer.game += replicate.RedRaccoons replicate.timer.build3
scoreboard players operation replicate.RedRaccoons replicate.timer.game += replicate.RedRaccoons replicate.timer.build4
scoreboard players operation replicate.RedRaccoons replicate.timer.game += replicate.RedRaccoons replicate.timer.build5
scoreboard players operation replicate.RedRaccoons replicate.timer.game += replicate.RedRaccoons replicate.timer.build6

# <===== ORANGE OTTERS =====>

function trials:replicate/round_active/orange_otters

# increment appropriate timer for Orange Otters
execute if score replicate.OrangeOtters replicate.stage matches 0 run scoreboard players add replicate.OrangeOtters replicate.timer.build1 1
execute if score replicate.OrangeOtters replicate.stage matches 1 run scoreboard players add replicate.OrangeOtters replicate.timer.build2 1
execute if score replicate.OrangeOtters replicate.stage matches 2 run scoreboard players add replicate.OrangeOtters replicate.timer.build3 1
execute if score replicate.OrangeOtters replicate.stage matches 3 run scoreboard players add replicate.OrangeOtters replicate.timer.build4 1
execute if score replicate.OrangeOtters replicate.stage matches 4 run scoreboard players add replicate.OrangeOtters replicate.timer.build5 1
execute if score replicate.OrangeOtters replicate.stage matches 5 run scoreboard players add replicate.OrangeOtters replicate.timer.build6 1

# and if we're complete, set the completed score
execute if score replicate.OrangeOtters replicate.completed matches 1 unless score replicate.OrangeOtters replicate.points.rank.overall matches 0.. run scoreboard players operation replicate.OrangeOtters replicate.points.rank.overall = replicate.handler replicate.completed
execute if score replicate.OrangeOtters replicate.stage matches 6 run scoreboard players set replicate.OrangeOtters replicate.completed 1
scoreboard players set replicate.OrangeOtters replicate.timer.game 0
scoreboard players operation replicate.OrangeOtters replicate.timer.game += replicate.OrangeOtters replicate.timer.build1
scoreboard players operation replicate.OrangeOtters replicate.timer.game += replicate.OrangeOtters replicate.timer.build2
scoreboard players operation replicate.OrangeOtters replicate.timer.game += replicate.OrangeOtters replicate.timer.build3
scoreboard players operation replicate.OrangeOtters replicate.timer.game += replicate.OrangeOtters replicate.timer.build4
scoreboard players operation replicate.OrangeOtters replicate.timer.game += replicate.OrangeOtters replicate.timer.build5
scoreboard players operation replicate.OrangeOtters replicate.timer.game += replicate.OrangeOtters replicate.timer.build6

# <===== PINK PIKAS =====>

function trials:replicate/round_active/pink_pikas

# increment appropriate timer for Pink Pikas
execute if score replicate.PinkPikas replicate.stage matches 0 run scoreboard players add replicate.PinkPikas replicate.timer.build1 1
execute if score replicate.PinkPikas replicate.stage matches 1 run scoreboard players add replicate.PinkPikas replicate.timer.build2 1
execute if score replicate.PinkPikas replicate.stage matches 2 run scoreboard players add replicate.PinkPikas replicate.timer.build3 1
execute if score replicate.PinkPikas replicate.stage matches 3 run scoreboard players add replicate.PinkPikas replicate.timer.build4 1
execute if score replicate.PinkPikas replicate.stage matches 4 run scoreboard players add replicate.PinkPikas replicate.timer.build5 1
execute if score replicate.PinkPikas replicate.stage matches 5 run scoreboard players add replicate.PinkPikas replicate.timer.build6 1

# and if we're complete, set the completed score & store their completed time
execute if score replicate.PinkPikas replicate.completed matches 1 unless score replicate.PinkPikas replicate.points.rank.overall matches 0.. run scoreboard players operation replicate.PinkPikas replicate.points.rank.overall = replicate.handler replicate.completed
execute if score replicate.PinkPikas replicate.stage matches 6 run scoreboard players set replicate.PinkPikas replicate.completed 1
scoreboard players set replicate.PinkPikas replicate.timer.game 0
scoreboard players operation replicate.PinkPikas replicate.timer.game += replicate.PinkPikas replicate.timer.build1
scoreboard players operation replicate.PinkPikas replicate.timer.game += replicate.PinkPikas replicate.timer.build2
scoreboard players operation replicate.PinkPikas replicate.timer.game += replicate.PinkPikas replicate.timer.build3
scoreboard players operation replicate.PinkPikas replicate.timer.game += replicate.PinkPikas replicate.timer.build4
scoreboard players operation replicate.PinkPikas replicate.timer.game += replicate.PinkPikas replicate.timer.build5
scoreboard players operation replicate.PinkPikas replicate.timer.game += replicate.PinkPikas replicate.timer.build6

# <===== GREEN GOATS =====>

function trials:replicate/round_active/green_goats

# increment appropriate timer for Green Goats
execute if score replicate.GreenGoats replicate.stage matches 0 run scoreboard players add replicate.GreenGoats replicate.timer.build1 1
execute if score replicate.GreenGoats replicate.stage matches 1 run scoreboard players add replicate.GreenGoats replicate.timer.build2 1
execute if score replicate.GreenGoats replicate.stage matches 2 run scoreboard players add replicate.GreenGoats replicate.timer.build3 1
execute if score replicate.GreenGoats replicate.stage matches 3 run scoreboard players add replicate.GreenGoats replicate.timer.build4 1
execute if score replicate.GreenGoats replicate.stage matches 4 run scoreboard players add replicate.GreenGoats replicate.timer.build5 1
execute if score replicate.GreenGoats replicate.stage matches 5 run scoreboard players add replicate.GreenGoats replicate.timer.build6 1

# and if we're complete, set the completed score
execute if score replicate.GreenGoats replicate.completed matches 1 unless score replicate.GreenGoats replicate.points.rank.overall matches 0.. run scoreboard players operation replicate.GreenGoats replicate.points.rank.overall = replicate.handler replicate.completed
execute if score replicate.GreenGoats replicate.stage matches 6 run scoreboard players set replicate.GreenGoats replicate.completed 1
scoreboard players set replicate.GreenGoats replicate.timer.game 0
scoreboard players operation replicate.GreenGoats replicate.timer.game += replicate.GreenGoats replicate.timer.build1
scoreboard players operation replicate.GreenGoats replicate.timer.game += replicate.GreenGoats replicate.timer.build2
scoreboard players operation replicate.GreenGoats replicate.timer.game += replicate.GreenGoats replicate.timer.build3
scoreboard players operation replicate.GreenGoats replicate.timer.game += replicate.GreenGoats replicate.timer.build4
scoreboard players operation replicate.GreenGoats replicate.timer.game += replicate.GreenGoats replicate.timer.build5
scoreboard players operation replicate.GreenGoats replicate.timer.game += replicate.GreenGoats replicate.timer.build6

# <===== CYAN COUGARS =====>

function trials:replicate/round_active/cyan_cougars

# increment appropriate timer for Cyan Cougars
execute if score replicate.CyanCougars replicate.stage matches 0 run scoreboard players add replicate.CyanCougars replicate.timer.build1 1
execute if score replicate.CyanCougars replicate.stage matches 1 run scoreboard players add replicate.CyanCougars replicate.timer.build2 1
execute if score replicate.CyanCougars replicate.stage matches 2 run scoreboard players add replicate.CyanCougars replicate.timer.build3 1
execute if score replicate.CyanCougars replicate.stage matches 3 run scoreboard players add replicate.CyanCougars replicate.timer.build4 1
execute if score replicate.CyanCougars replicate.stage matches 4 run scoreboard players add replicate.CyanCougars replicate.timer.build5 1
execute if score replicate.CyanCougars replicate.stage matches 5 run scoreboard players add replicate.CyanCougars replicate.timer.build6 1

# and if we're complete, set the completed score
execute if score replicate.CyanCougars replicate.completed matches 1 unless score replicate.CyanCougars replicate.points.rank.overall matches 0.. run scoreboard players operation replicate.CyanCougars replicate.points.rank.overall = replicate.handler replicate.completed
execute if score replicate.CyanCougars replicate.stage matches 6 run scoreboard players set replicate.CyanCougars replicate.completed 1
scoreboard players set replicate.CyanCougars replicate.timer.game 0
scoreboard players operation replicate.CyanCougars replicate.timer.game += replicate.CyanCougars replicate.timer.build1
scoreboard players operation replicate.CyanCougars replicate.timer.game += replicate.CyanCougars replicate.timer.build2
scoreboard players operation replicate.CyanCougars replicate.timer.game += replicate.CyanCougars replicate.timer.build3
scoreboard players operation replicate.CyanCougars replicate.timer.game += replicate.CyanCougars replicate.timer.build4
scoreboard players operation replicate.CyanCougars replicate.timer.game += replicate.CyanCougars replicate.timer.build5
scoreboard players operation replicate.CyanCougars replicate.timer.game += replicate.CyanCougars replicate.timer.build6

# <===== PURPLE PENGUINS =====>

function trials:replicate/round_active/purple_penguins

# increment appropriate timer for Purple Penguins
execute if score replicate.PurplePenguins replicate.stage matches 0 run scoreboard players add replicate.PurplePenguins replicate.timer.build1 1
execute if score replicate.PurplePenguins replicate.stage matches 1 run scoreboard players add replicate.PurplePenguins replicate.timer.build2 1
execute if score replicate.PurplePenguins replicate.stage matches 2 run scoreboard players add replicate.PurplePenguins replicate.timer.build3 1
execute if score replicate.PurplePenguins replicate.stage matches 3 run scoreboard players add replicate.PurplePenguins replicate.timer.build4 1
execute if score replicate.PurplePenguins replicate.stage matches 4 run scoreboard players add replicate.PurplePenguins replicate.timer.build5 1
execute if score replicate.PurplePenguins replicate.stage matches 5 run scoreboard players add replicate.PurplePenguins replicate.timer.build6 1

# and if we're complete, set the completed score
execute if score replicate.PurplePenguins replicate.completed matches 1 unless score replicate.PurplePenguins replicate.points.rank.overall matches 0.. run scoreboard players operation replicate.PurplePenguins replicate.points.rank.overall = replicate.handler replicate.completed
execute if score replicate.PurplePenguins replicate.stage matches 6 run scoreboard players set replicate.PurplePenguins replicate.completed 1
scoreboard players set replicate.PurplePenguins replicate.timer.game 0
scoreboard players operation replicate.PurplePenguins replicate.timer.game += replicate.PurplePenguins replicate.timer.build1
scoreboard players operation replicate.PurplePenguins replicate.timer.game += replicate.PurplePenguins replicate.timer.build2
scoreboard players operation replicate.PurplePenguins replicate.timer.game += replicate.PurplePenguins replicate.timer.build3
scoreboard players operation replicate.PurplePenguins replicate.timer.game += replicate.PurplePenguins replicate.timer.build4
scoreboard players operation replicate.PurplePenguins replicate.timer.game += replicate.PurplePenguins replicate.timer.build5
scoreboard players operation replicate.PurplePenguins replicate.timer.game += replicate.PurplePenguins replicate.timer.build6