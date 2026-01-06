# runs every game tick

# this function handles the game logic for spleef

# it's very simple since most stuff is in death_handler

# <==== START GAME ====>

# give items
execute if score spleef.handler spleef.timer.game matches 2.. run item replace entity @a hotbar.0 with minecraft:netherite_shovel[custom_name={"text":"Snow Shovel","color":"dark_aqua","bold":true},tool={default_mining_speed:0.1,rules:[{speed:100000,blocks:["snow_block","red_wool","red_concrete"]}]},unbreakable={},attribute_modifiers=[{id:"block_interaction_range",type:"block_interaction_range",amount:-1.5,operation:"add_value",slot:"mainhand",display:{type:"hidden"}}]]
execute if score spleef.handler spleef.timer.game matches 2.. run item replace entity @a hotbar.1 with minecraft:netherite_pickaxe[custom_name={"text":"Ice Pick","color":"dark_aqua","bold":true},tool={default_mining_speed:0.1,rules:[{speed:100000,blocks:["ice","packed_ice","blue_ice","light_blue_wool","light_blue_concrete"]}]},unbreakable={},attribute_modifiers=[{id:"block_interaction_range",type:"block_interaction_range",amount:-1.5,operation:"add_value",slot:"mainhand",display:{type:"hidden"}}]]

# <==== DURING GAME ====>

# check for deaths (before sidebar so it will reflect this tick's new points)
function stmc:games/trials/spleef/death_handler

# kill entities (prevents unnecessary lag & clears dropped items)
execute if score spleef.handler spleef.timer.game matches 2.. run kill @e[type=!player]

# prevent water spawn
execute in stmc:trials/spleef run fill -15 100 -15 15 120 15 air replace water

# update time
scoreboard players add spleef.handler spleef.timer.game.ticks 1

execute if score spleef.handler spleef.timer.game.ticks matches 20.. run scoreboard players add spleef.handler spleef.timer.game.seconds 1
execute if score spleef.handler spleef.timer.game.ticks matches 20.. run scoreboard players set spleef.handler spleef.timer.game.ticks 0

execute if score spleef.handler spleef.timer.game.seconds matches 60.. run scoreboard players add spleef.handler spleef.timer.game.minutes 1
execute if score spleef.handler spleef.timer.game.seconds matches 60.. run scoreboard players set spleef.handler spleef.timer.game.seconds 0

# handle ice & snow decay
function stmc:games/trials/spleef/decay

# <==== END GAME ====>

# check if game should be ended (one team alive)
execute if score spleef.handler spleef.teams_alive matches 1 run scoreboard players set spleef.handler spleef.stage 4