# helper function that runs as the game is starting

# the function teleports players, sets their spawns, and summons villagers

# update game stage
scoreboard players set blitz.handler blitz.stage 3

# update scoreboards
scoreboard players set blitz.handler blitz.timer.game 0
scoreboard players set blitz.handler blitz.timer.game.generate 0

# reset scoreboards
scoreboard players set @a blitz.alive 1
scoreboard players set @a blitz.death 0

# create temporary scoreboards
scoreboard objectives add blitz.borderTickCounter dummy
scoreboard players set blitz.handler blitz.borderTickCounter 0

# remove protections
clear @a
effect clear @a

# ensure max health & base stats
execute as @a run attribute @s max_health base reset
execute as @a run attribute @s attack_damage base reset
execute as @a run attribute @s attack_knockback base reset
execute as @a run attribute @s knockback_resistance base reset
effect give @a saturation 1 110 true
effect give @a instant_health 1 110 true

# determine players on a team
function stmc:games/blitz/helper/count_players

# reset cores & crates
execute in stmc:blitz run function stmc:games/blitz/helper/reset/cores
execute in stmc:blitz run function stmc:games/blitz/helper/reset/crates

# teleport players
execute as @a[team=RED_RACCOONS] in stmc:blitz run tp @s -36 107 100
execute as @a[team=ORANGE_OTTERS] in stmc:blitz run tp @s -36 107 -100
execute as @a[team=PINK_PIKAS] in stmc:blitz run tp @s 100 107 -36
execute as @a[team=YELLOW_YAKS] in stmc:blitz run tp @s 100 107 36
execute as @a[team=GREEN_GOATS] in stmc:blitz run tp @s 36 107 -100
execute as @a[team=CYAN_COUGARS] in stmc:blitz run tp @s -100 107 -36
execute as @a[team=PURPLE_PENGUINS] in stmc:blitz run tp @s -100 107 36
execute as @a[team=BLUE_BEARS] in stmc:blitz run tp @s 36 107 100

# set spawnpoints
execute as @a[team=RED_RACCOONS] in stmc:blitz run spawnpoint @s -36 107 100
execute as @a[team=ORANGE_OTTERS] in stmc:blitz run spawnpoint @s -36 107 -100
execute as @a[team=PINK_PIKAS] in stmc:blitz run spawnpoint @s 100 107 -36
execute as @a[team=YELLOW_YAKS] in stmc:blitz run spawnpoint @s 100 107 36
execute as @a[team=GREEN_GOATS] in stmc:blitz run spawnpoint @s 36 107 -100
execute as @a[team=CYAN_COUGARS] in stmc:blitz run spawnpoint @s -100 107 -36
execute as @a[team=PURPLE_PENGUINS] in stmc:blitz run spawnpoint @s -100 107 36
execute as @a[team=BLUE_BEARS] in stmc:blitz run spawnpoint @s 36 107 100

# summon villagers
execute in stmc:blitz run function stmc:games/blitz/helper/reset/villagers

# give players items

# armor
execute as @a run item replace entity @s armor.head with leather_helmet[enchantments={binding_curse:1},unbreakable={}]
execute as @a run item replace entity @s armor.chest with leather_chestplate[enchantments={binding_curse:1},unbreakable={}]
execute as @a run item replace entity @s armor.legs with leather_leggings[enchantments={binding_curse:1},unbreakable={}]
execute as @a run item replace entity @s armor.feet with leather_boots[enchantments={binding_curse:1},unbreakable={}]

# items
execute as @a run item replace entity @s hotbar.0 with wooden_sword[minecraft:custom_data={replace:1b},unbreakable={}]
execute as @a run item replace entity @s hotbar.1 with iron_pickaxe[can_break=[{blocks:["deepslate_redstone_ore","red_concrete","orange_concrete","pink_concrete","yellow_concrete","green_concrete","cyan_concrete","purple_concrete","blue_concrete"]}],tooltip_display={hidden_components:["can_break"],hide_tooltip:false},unbreakable={}]
execute as @a[team=RED_RACCOONS] run item replace entity @s hotbar.2 with shears[can_break=[{blocks:["orange_wool","pink_wool","yellow_wool","green_wool","cyan_wool","purple_wool","blue_wool"]}],tooltip_display={hidden_components:["can_break"],hide_tooltip:false},unbreakable={}]
execute as @a[team=ORANGE_OTTERS] run item replace entity @s hotbar.2 with shears[can_break=[{blocks:["red_wool","pink_wool","yellow_wool","green_wool","cyan_wool","purple_wool","blue_wool"]}],tooltip_display={hidden_components:["can_break"],hide_tooltip:false},unbreakable={}]
execute as @a[team=PINK_PIKAS] run item replace entity @s hotbar.2 with shears[can_break=[{blocks:["red_wool","orange_wool","yellow_wool","green_wool","cyan_wool","purple_wool","blue_wool"]}],tooltip_display={hidden_components:["can_break"],hide_tooltip:false},unbreakable={}]
execute as @a[team=YELLOW_YAKS] run item replace entity @s hotbar.2 with shears[can_break=[{blocks:["red_wool","orange_wool","pink_wool","green_wool","cyan_wool","purple_wool","blue_wool"]}],tooltip_display={hidden_components:["can_break"],hide_tooltip:false},unbreakable={}]
execute as @a[team=GREEN_GOATS] run item replace entity @s hotbar.2 with shears[can_break=[{blocks:["red_wool","orange_wool","pink_wool","yellow_wool","cyan_wool","purple_wool","blue_wool"]}],tooltip_display={hidden_components:["can_break"],hide_tooltip:false},unbreakable={}]
execute as @a[team=CYAN_COUGARS] run item replace entity @s hotbar.2 with shears[can_break=[{blocks:["red_wool","orange_wool","pink_wool","yellow_wool","green_wool","purple_wool","blue_wool"]}],tooltip_display={hidden_components:["can_break"],hide_tooltip:false},unbreakable={}]
execute as @a[team=PURPLE_PENGUINS] run item replace entity @s hotbar.2 with shears[can_break=[{blocks:["red_wool","orange_wool","pink_wool","yellow_wool","green_wool","cyan_wool","blue_wool"]}],tooltip_display={hidden_components:["can_break"],hide_tooltip:false},unbreakable={}]
execute as @a[team=BLUE_BEARS] run item replace entity @s hotbar.2 with shears[can_break=[{blocks:["red_wool","orange_wool","pink_wool","yellow_wool","green_wool","cyan_wool","purple_wool"]}],tooltip_display={hidden_components:["can_break"],hide_tooltip:false},unbreakable={}]