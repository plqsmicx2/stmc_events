# helper function that runs as the game is starting

# the function teleports players, sets their spawns, and summons villagers

# update game stage
scoreboard players set blitz.handler blitz.stage 3

# update scoreboards
scoreboard players set blitz.handler blitz.timer.game 0
scoreboard players set blitz.handler blitz.timer.game.generate 0

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

# summon villagers if anyone is on that team

# red team
execute if score blitz.RedRaccoons blitz.stats.players matches 1.. in stmc:blitz run summon villager -40 105 106 {NoGravity:1b,Silent:1b,Invulnerable:1b,CustomNameVisible:1b,PersistenceRequired:1b,NoAI:1b, \ 
        CustomName:{"color":"red","text":"Weaponry"}, \ 
        active_effects:[{id:"minecraft:resistance",amplifier:10,duration:-1,show_particles:0b}], \ 
        Offers:{Recipes:[ \ 
        {rewardExp:0b,maxUses:999999,uses:0,buy:{id:"minecraft:iron_ingot",count:1},sell:{id:"minecraft:stone_sword",count:1,components:{"minecraft:custom_data":{replace:1b}}}}, \ 
        {rewardExp:0b,maxUses:999999,uses:0,buy:{id:"minecraft:gold_ingot",count:1},sell:{id:"minecraft:iron_sword",count:1,components:{"minecraft:custom_data":{replace:1b}}}}, \ 
        {rewardExp:0b,maxUses:999999,uses:0,buy:{id:"minecraft:emerald",count:1},sell:{id:"minecraft:diamond_sword",count:1,components:{"minecraft:custom_data":{replace:1b}}}}, \ 
        {rewardExp:0b,maxUses:999999,uses:0,buy:{id:"minecraft:iron_ingot",count:4},sell:{id:"minecraft:chainmail_leggings",count:1,components:{"minecraft:custom_data":{replace:1b}}}}, \ 
        {rewardExp:0b,maxUses:999999,uses:0,buy:{id:"minecraft:gold_ingot",count:4},sell:{id:"minecraft:iron_leggings",count:1,components:{"minecraft:custom_data":{replace:1b}}}}, \ 
        {rewardExp:0b,maxUses:999999,uses:0,buy:{id:"minecraft:emerald",count:4},sell:{id:"minecraft:diamond_leggings",count:1,components:{"minecraft:custom_data":{replace:1b}}}},]}}
execute if score blitz.RedRaccoons blitz.stats.players matches 1.. in stmc:blitz run summon villager -40 105 105 {NoGravity:1b,Silent:1b,Invulnerable:1b,CustomNameVisible:1b,PersistenceRequired:1b,NoAI:1b, \ 
        CustomName:{"color":"green","text":"Tools"}, \ 
        active_effects:[{id:"minecraft:resistance",amplifier:10,duration:-1,show_particles:0b}], \ 
        Offers:{Recipes:[ \ 
        {rewardExp:0b,maxUses:999999,uses:0,buy:{id:"minecraft:iron_ingot",count:1},sell:{id:"minecraft:red_concrete",count:8,components:{"minecraft:can_place_on":[{"blocks":"#extract:all"}],"tooltip_display":{hidden_components:[can_place_on]}}}}, \ 
        {rewardExp:0b,maxUses:999999,uses:0,buy:{id:"minecraft:gold_ingot",count:2},sell:{id:"minecraft:iron_axe",count:1,components:{"minecraft:custom_data":{return:1b},"can_break":[{blocks:"oak_planks"}]}}}, \ 
        {rewardExp:0b,maxUses:999999,uses:0,buy:{id:"minecraft:gold_ingot",count:2},sell:{id:"minecraft:oak_planks",count:8,components:{"minecraft:can_place_on":[{"blocks":"#extract:all"}],"tooltip_display":{hidden_components:[can_place_on]}}}}, \ 
        {rewardExp:0b,maxUses:999999,uses:0,buy:{id:"minecraft:gold_ingot",count:4},sell:{id:"minecraft:golden_apple",count:1}}, \ 
        {rewardExp:0b,maxUses:999999,uses:0,buy:{id:"minecraft:emerald",count:3},sell:{id:"minecraft:ender_pearl",count:1}}, \ 
        {rewardExp:0b,maxUses:999999,uses:0,buy:{id:"minecraft:emerald",count:1},sell:{id:"minecraft:crossbow",count:1,components:{"minecraft:custom_data":{return:1b}}}}, \ 
        {rewardExp:0b,maxUses:999999,uses:0,buy:{id:"minecraft:gold_ingot",count:1},sell:{id:"minecraft:arrow",count:2}}]}}

# orange team
execute if score blitz.OrangeOtters blitz.stats.players matches 1.. in stmc:blitz run summon villager -40 105 -106 {NoGravity:1b,Silent:1b,Invulnerable:1b,CustomNameVisible:1b,PersistenceRequired:1b,NoAI:1b, \ 
        CustomName:{"color":"red","text":"Weaponry"}, \ 
        active_effects:[{id:"minecraft:resistance",amplifier:10,duration:-1,show_particles:0b}], \ 
        Offers:{Recipes:[ \ 
        {rewardExp:0b,maxUses:999999,uses:0,buy:{id:"minecraft:iron_ingot",count:1},sell:{id:"minecraft:stone_sword",count:1,components:{"minecraft:custom_data":{replace:1b}}}}, \ 
        {rewardExp:0b,maxUses:999999,uses:0,buy:{id:"minecraft:gold_ingot",count:1},sell:{id:"minecraft:iron_sword",count:1,components:{"minecraft:custom_data":{replace:1b}}}}, \ 
        {rewardExp:0b,maxUses:999999,uses:0,buy:{id:"minecraft:emerald",count:1},sell:{id:"minecraft:diamond_sword",count:1,components:{"minecraft:custom_data":{replace:1b}}}}, \ 
        {rewardExp:0b,maxUses:999999,uses:0,buy:{id:"minecraft:iron_ingot",count:4},sell:{id:"minecraft:chainmail_leggings",count:1,components:{"minecraft:custom_data":{replace:1b}}}}, \ 
        {rewardExp:0b,maxUses:999999,uses:0,buy:{id:"minecraft:gold_ingot",count:4},sell:{id:"minecraft:iron_leggings",count:1,components:{"minecraft:custom_data":{replace:1b}}}}, \ 
        {rewardExp:0b,maxUses:999999,uses:0,buy:{id:"minecraft:emerald",count:4},sell:{id:"minecraft:diamond_leggings",count:1,components:{"minecraft:custom_data":{replace:1b}}}},]}}
execute if score blitz.OrangeOtters blitz.stats.players matches 1.. in stmc:blitz run summon villager -40 105 -105 {NoGravity:1b,Silent:1b,Invulnerable:1b,CustomNameVisible:1b,PersistenceRequired:1b,NoAI:1b, \ 
        CustomName:{"color":"green","text":"Tools"}, \ 
        active_effects:[{id:"minecraft:resistance",amplifier:10,duration:-1,show_particles:0b}], \ 
        Offers:{Recipes:[ \ 
        {rewardExp:0b,maxUses:999999,uses:0,buy:{id:"minecraft:iron_ingot",count:1},sell:{id:"minecraft:orange_concrete",count:8,components:{"minecraft:can_place_on":[{"blocks":"#extract:all"}],"tooltip_display":{hidden_components:[can_place_on]}}}}, \ 
        {rewardExp:0b,maxUses:999999,uses:0,buy:{id:"minecraft:gold_ingot",count:2},sell:{id:"minecraft:iron_axe",count:1,components:{"minecraft:custom_data":{return:1b},"can_break":[{blocks:"oak_planks"}]}}}, \ 
        {rewardExp:0b,maxUses:999999,uses:0,buy:{id:"minecraft:gold_ingot",count:2},sell:{id:"minecraft:oak_planks",count:8,components:{"minecraft:can_place_on":[{"blocks":"#extract:all"}],"tooltip_display":{hidden_components:[can_place_on]}}}}, \ 
        {rewardExp:0b,maxUses:999999,uses:0,buy:{id:"minecraft:gold_ingot",count:4},sell:{id:"minecraft:golden_apple",count:1}}, \ 
        {rewardExp:0b,maxUses:999999,uses:0,buy:{id:"minecraft:emerald",count:3},sell:{id:"minecraft:ender_pearl",count:1}}, \ 
        {rewardExp:0b,maxUses:999999,uses:0,buy:{id:"minecraft:emerald",count:1},sell:{id:"minecraft:crossbow",count:1,components:{"minecraft:custom_data":{return:1b}}}}, \ 
        {rewardExp:0b,maxUses:999999,uses:0,buy:{id:"minecraft:gold_ingot",count:1},sell:{id:"minecraft:arrow",count:2}}]}}

# pink team
execute if score blitz.PinkPikas blitz.stats.players matches 1.. in stmc:blitz run summon villager 106 105 -40 {NoGravity:1b,Silent:1b,Invulnerable:1b,CustomNameVisible:1b,PersistenceRequired:1b,NoAI:1b, \ 
        CustomName:{"color":"red","text":"Weaponry"}, \ 
        active_effects:[{id:"minecraft:resistance",amplifier:10,duration:-1,show_particles:0b}], \ 
        Offers:{Recipes:[ \ 
        {rewardExp:0b,maxUses:999999,uses:0,buy:{id:"minecraft:iron_ingot",count:1},sell:{id:"minecraft:stone_sword",count:1,components:{"minecraft:custom_data":{replace:1b}}}}, \ 
        {rewardExp:0b,maxUses:999999,uses:0,buy:{id:"minecraft:gold_ingot",count:1},sell:{id:"minecraft:iron_sword",count:1,components:{"minecraft:custom_data":{replace:1b}}}}, \ 
        {rewardExp:0b,maxUses:999999,uses:0,buy:{id:"minecraft:emerald",count:1},sell:{id:"minecraft:diamond_sword",count:1,components:{"minecraft:custom_data":{replace:1b}}}}, \ 
        {rewardExp:0b,maxUses:999999,uses:0,buy:{id:"minecraft:iron_ingot",count:4},sell:{id:"minecraft:chainmail_leggings",count:1,components:{"minecraft:custom_data":{replace:1b}}}}, \ 
        {rewardExp:0b,maxUses:999999,uses:0,buy:{id:"minecraft:gold_ingot",count:4},sell:{id:"minecraft:iron_leggings",count:1,components:{"minecraft:custom_data":{replace:1b}}}}, \ 
        {rewardExp:0b,maxUses:999999,uses:0,buy:{id:"minecraft:emerald",count:4},sell:{id:"minecraft:diamond_leggings",count:1,components:{"minecraft:custom_data":{replace:1b}}}},]}}
execute if score blitz.PinkPikas blitz.stats.players matches 1.. in stmc:blitz run summon villager 105 105 -40 {NoGravity:1b,Silent:1b,Invulnerable:1b,CustomNameVisible:1b,PersistenceRequired:1b,NoAI:1b, \ 
        CustomName:{"color":"green","text":"Tools"}, \ 
        active_effects:[{id:"minecraft:resistance",amplifier:10,duration:-1,show_particles:0b}], \ 
        Offers:{Recipes:[ \ 
        {rewardExp:0b,maxUses:999999,uses:0,buy:{id:"minecraft:iron_ingot",count:1},sell:{id:"minecraft:pink_concrete",count:8,components:{"minecraft:can_place_on":[{"blocks":"#extract:all"}],"tooltip_display":{hidden_components:[can_place_on]}}}}, \ 
        {rewardExp:0b,maxUses:999999,uses:0,buy:{id:"minecraft:gold_ingot",count:2},sell:{id:"minecraft:iron_axe",count:1,components:{"minecraft:custom_data":{return:1b},"can_break":[{blocks:"oak_planks"}]}}}, \ 
        {rewardExp:0b,maxUses:999999,uses:0,buy:{id:"minecraft:gold_ingot",count:2},sell:{id:"minecraft:oak_planks",count:8,components:{"minecraft:can_place_on":[{"blocks":"#extract:all"}],"tooltip_display":{hidden_components:[can_place_on]}}}}, \ 
        {rewardExp:0b,maxUses:999999,uses:0,buy:{id:"minecraft:gold_ingot",count:4},sell:{id:"minecraft:golden_apple",count:1}}, \ 
        {rewardExp:0b,maxUses:999999,uses:0,buy:{id:"minecraft:emerald",count:3},sell:{id:"minecraft:ender_pearl",count:1}}, \ 
        {rewardExp:0b,maxUses:999999,uses:0,buy:{id:"minecraft:emerald",count:1},sell:{id:"minecraft:crossbow",count:1,components:{"minecraft:custom_data":{return:1b}}}}, \ 
        {rewardExp:0b,maxUses:999999,uses:0,buy:{id:"minecraft:gold_ingot",count:1},sell:{id:"minecraft:arrow",count:2}}]}}

# yellow team
execute if score blitz.YellowYaks blitz.stats.players matches 1.. in stmc:blitz run summon villager 106 105 40 {NoGravity:1b,Silent:1b,Invulnerable:1b,CustomNameVisible:1b,PersistenceRequired:1b,NoAI:1b, \ 
        CustomName:{"color":"red","text":"Weaponry"}, \ 
        active_effects:[{id:"minecraft:resistance",amplifier:10,duration:-1,show_particles:0b}], \ 
        Offers:{Recipes:[ \ 
        {rewardExp:0b,maxUses:999999,uses:0,buy:{id:"minecraft:iron_ingot",count:1},sell:{id:"minecraft:stone_sword",count:1,components:{"minecraft:custom_data":{replace:1b}}}}, \ 
        {rewardExp:0b,maxUses:999999,uses:0,buy:{id:"minecraft:gold_ingot",count:1},sell:{id:"minecraft:iron_sword",count:1,components:{"minecraft:custom_data":{replace:1b}}}}, \ 
        {rewardExp:0b,maxUses:999999,uses:0,buy:{id:"minecraft:emerald",count:1},sell:{id:"minecraft:diamond_sword",count:1,components:{"minecraft:custom_data":{replace:1b}}}}, \ 
        {rewardExp:0b,maxUses:999999,uses:0,buy:{id:"minecraft:iron_ingot",count:4},sell:{id:"minecraft:chainmail_leggings",count:1,components:{"minecraft:custom_data":{replace:1b}}}}, \ 
        {rewardExp:0b,maxUses:999999,uses:0,buy:{id:"minecraft:gold_ingot",count:4},sell:{id:"minecraft:iron_leggings",count:1,components:{"minecraft:custom_data":{replace:1b}}}}, \ 
        {rewardExp:0b,maxUses:999999,uses:0,buy:{id:"minecraft:emerald",count:4},sell:{id:"minecraft:diamond_leggings",count:1,components:{"minecraft:custom_data":{replace:1b}}}},]}}
execute if score blitz.YellowYaks blitz.stats.players matches 1.. in stmc:blitz run summon villager 105 105 40 {NoGravity:1b,Silent:1b,Invulnerable:1b,CustomNameVisible:1b,PersistenceRequired:1b,NoAI:1b, \ 
        CustomName:{"color":"green","text":"Tools"}, \ 
        active_effects:[{id:"minecraft:resistance",amplifier:10,duration:-1,show_particles:0b}], \ 
        Offers:{Recipes:[ \ 
        {rewardExp:0b,maxUses:999999,uses:0,buy:{id:"minecraft:iron_ingot",count:1},sell:{id:"minecraft:yellow_concrete",count:8,components:{"minecraft:can_place_on":[{"blocks":"#extract:all"}],"tooltip_display":{hidden_components:[can_place_on]}}}}, \ 
        {rewardExp:0b,maxUses:999999,uses:0,buy:{id:"minecraft:gold_ingot",count:2},sell:{id:"minecraft:iron_axe",count:1,components:{"minecraft:custom_data":{return:1b},"can_break":[{blocks:"oak_planks"}]}}}, \ 
        {rewardExp:0b,maxUses:999999,uses:0,buy:{id:"minecraft:gold_ingot",count:2},sell:{id:"minecraft:oak_planks",count:8,components:{"minecraft:can_place_on":[{"blocks":"#extract:all"}],"tooltip_display":{hidden_components:[can_place_on]}}}}, \ 
        {rewardExp:0b,maxUses:999999,uses:0,buy:{id:"minecraft:gold_ingot",count:4},sell:{id:"minecraft:golden_apple",count:1}}, \ 
        {rewardExp:0b,maxUses:999999,uses:0,buy:{id:"minecraft:emerald",count:3},sell:{id:"minecraft:ender_pearl",count:1}}, \ 
        {rewardExp:0b,maxUses:999999,uses:0,buy:{id:"minecraft:emerald",count:1},sell:{id:"minecraft:crossbow",count:1,components:{"minecraft:custom_data":{return:1b}}}}, \ 
        {rewardExp:0b,maxUses:999999,uses:0,buy:{id:"minecraft:gold_ingot",count:1},sell:{id:"minecraft:arrow",count:2}}]}}

# green team
execute if score blitz.GreenGoats blitz.stats.players matches 1.. in stmc:blitz run summon villager 40 105 -106 {NoGravity:1b,Silent:1b,Invulnerable:1b,CustomNameVisible:1b,PersistenceRequired:1b,NoAI:1b, \ 
        CustomName:{"color":"red","text":"Weaponry"}, \ 
        active_effects:[{id:"minecraft:resistance",amplifier:10,duration:-1,show_particles:0b}], \ 
        Offers:{Recipes:[ \ 
        {rewardExp:0b,maxUses:999999,uses:0,buy:{id:"minecraft:iron_ingot",count:1},sell:{id:"minecraft:stone_sword",count:1,components:{"minecraft:custom_data":{replace:1b}}}}, \ 
        {rewardExp:0b,maxUses:999999,uses:0,buy:{id:"minecraft:gold_ingot",count:1},sell:{id:"minecraft:iron_sword",count:1,components:{"minecraft:custom_data":{replace:1b}}}}, \ 
        {rewardExp:0b,maxUses:999999,uses:0,buy:{id:"minecraft:emerald",count:1},sell:{id:"minecraft:diamond_sword",count:1,components:{"minecraft:custom_data":{replace:1b}}}}, \ 
        {rewardExp:0b,maxUses:999999,uses:0,buy:{id:"minecraft:iron_ingot",count:4},sell:{id:"minecraft:chainmail_leggings",count:1,components:{"minecraft:custom_data":{replace:1b}}}}, \ 
        {rewardExp:0b,maxUses:999999,uses:0,buy:{id:"minecraft:gold_ingot",count:4},sell:{id:"minecraft:iron_leggings",count:1,components:{"minecraft:custom_data":{replace:1b}}}}, \ 
        {rewardExp:0b,maxUses:999999,uses:0,buy:{id:"minecraft:emerald",count:4},sell:{id:"minecraft:diamond_leggings",count:1,components:{"minecraft:custom_data":{replace:1b}}}},]}}
execute if score blitz.GreenGoats blitz.stats.players matches 1.. in stmc:blitz run summon villager 40 105 -105 {NoGravity:1b,Silent:1b,Invulnerable:1b,CustomNameVisible:1b,PersistenceRequired:1b,NoAI:1b, \ 
        CustomName:{"color":"green","text":"Tools"}, \ 
        active_effects:[{id:"minecraft:resistance",amplifier:10,duration:-1,show_particles:0b}], \ 
        Offers:{Recipes:[ \ 
        {rewardExp:0b,maxUses:999999,uses:0,buy:{id:"minecraft:iron_ingot",count:1},sell:{id:"minecraft:green_concrete",count:8,components:{"minecraft:can_place_on":[{"blocks":"#extract:all"}],"tooltip_display":{hidden_components:[can_place_on]}}}}, \ 
        {rewardExp:0b,maxUses:999999,uses:0,buy:{id:"minecraft:gold_ingot",count:2},sell:{id:"minecraft:iron_axe",count:1,components:{"minecraft:custom_data":{return:1b},"can_break":[{blocks:"oak_planks"}]}}}, \ 
        {rewardExp:0b,maxUses:999999,uses:0,buy:{id:"minecraft:gold_ingot",count:2},sell:{id:"minecraft:oak_planks",count:8,components:{"minecraft:can_place_on":[{"blocks":"#extract:all"}],"tooltip_display":{hidden_components:[can_place_on]}}}}, \ 
        {rewardExp:0b,maxUses:999999,uses:0,buy:{id:"minecraft:gold_ingot",count:4},sell:{id:"minecraft:golden_apple",count:1}}, \ 
        {rewardExp:0b,maxUses:999999,uses:0,buy:{id:"minecraft:emerald",count:3},sell:{id:"minecraft:ender_pearl",count:1}}, \ 
        {rewardExp:0b,maxUses:999999,uses:0,buy:{id:"minecraft:emerald",count:1},sell:{id:"minecraft:crossbow",count:1,components:{"minecraft:custom_data":{return:1b}}}}, \ 
        {rewardExp:0b,maxUses:999999,uses:0,buy:{id:"minecraft:gold_ingot",count:1},sell:{id:"minecraft:arrow",count:2}}]}}

# cyan team
execute if score blitz.CyanCougars blitz.stats.players matches 1.. in stmc:blitz run summon villager -106 105 -40 {NoGravity:1b,Silent:1b,Invulnerable:1b,CustomNameVisible:1b,PersistenceRequired:1b,NoAI:1b, \ 
        CustomName:{"color":"red","text":"Weaponry"}, \ 
        active_effects:[{id:"minecraft:resistance",amplifier:10,duration:-1,show_particles:0b}], \ 
        Offers:{Recipes:[ \ 
        {rewardExp:0b,maxUses:999999,uses:0,buy:{id:"minecraft:iron_ingot",count:1},sell:{id:"minecraft:stone_sword",count:1,components:{"minecraft:custom_data":{replace:1b}}}}, \ 
        {rewardExp:0b,maxUses:999999,uses:0,buy:{id:"minecraft:gold_ingot",count:1},sell:{id:"minecraft:iron_sword",count:1,components:{"minecraft:custom_data":{replace:1b}}}}, \ 
        {rewardExp:0b,maxUses:999999,uses:0,buy:{id:"minecraft:emerald",count:1},sell:{id:"minecraft:diamond_sword",count:1,components:{"minecraft:custom_data":{replace:1b}}}}, \ 
        {rewardExp:0b,maxUses:999999,uses:0,buy:{id:"minecraft:iron_ingot",count:4},sell:{id:"minecraft:chainmail_leggings",count:1,components:{"minecraft:custom_data":{replace:1b}}}}, \ 
        {rewardExp:0b,maxUses:999999,uses:0,buy:{id:"minecraft:gold_ingot",count:4},sell:{id:"minecraft:iron_leggings",count:1,components:{"minecraft:custom_data":{replace:1b}}}}, \ 
        {rewardExp:0b,maxUses:999999,uses:0,buy:{id:"minecraft:emerald",count:4},sell:{id:"minecraft:diamond_leggings",count:1,components:{"minecraft:custom_data":{replace:1b}}}},]}}
execute if score blitz.CyanCougars blitz.stats.players matches 1.. in stmc:blitz run summon villager -105 105 -40 {NoGravity:1b,Silent:1b,Invulnerable:1b,CustomNameVisible:1b,PersistenceRequired:1b,NoAI:1b, \ 
        CustomName:{"color":"green","text":"Tools"}, \ 
        active_effects:[{id:"minecraft:resistance",amplifier:10,duration:-1,show_particles:0b}], \ 
        Offers:{Recipes:[ \ 
        {rewardExp:0b,maxUses:999999,uses:0,buy:{id:"minecraft:iron_ingot",count:1},sell:{id:"minecraft:cyan_concrete",count:8,components:{"minecraft:can_place_on":[{"blocks":"#extract:all"}],"tooltip_display":{hidden_components:[can_place_on]}}}}, \ 
        {rewardExp:0b,maxUses:999999,uses:0,buy:{id:"minecraft:gold_ingot",count:2},sell:{id:"minecraft:iron_axe",count:1,components:{"minecraft:custom_data":{return:1b},"can_break":[{blocks:"oak_planks"}]}}}, \ 
        {rewardExp:0b,maxUses:999999,uses:0,buy:{id:"minecraft:gold_ingot",count:2},sell:{id:"minecraft:oak_planks",count:8,components:{"minecraft:can_place_on":[{"blocks":"#extract:all"}],"tooltip_display":{hidden_components:[can_place_on]}}}}, \ 
        {rewardExp:0b,maxUses:999999,uses:0,buy:{id:"minecraft:gold_ingot",count:4},sell:{id:"minecraft:golden_apple",count:1}}, \ 
        {rewardExp:0b,maxUses:999999,uses:0,buy:{id:"minecraft:emerald",count:3},sell:{id:"minecraft:ender_pearl",count:1}}, \ 
        {rewardExp:0b,maxUses:999999,uses:0,buy:{id:"minecraft:emerald",count:1},sell:{id:"minecraft:crossbow",count:1,components:{"minecraft:custom_data":{return:1b}}}}, \ 
        {rewardExp:0b,maxUses:999999,uses:0,buy:{id:"minecraft:gold_ingot",count:1},sell:{id:"minecraft:arrow",count:2}}]}}

# purple team
execute if score blitz.PurplePenguins blitz.stats.players matches 1.. in stmc:blitz run summon villager -106 105 40 {NoGravity:1b,Silent:1b,Invulnerable:1b,CustomNameVisible:1b,PersistenceRequired:1b,NoAI:1b, \ 
        CustomName:{"color":"red","text":"Weaponry"}, \ 
        active_effects:[{id:"minecraft:resistance",amplifier:10,duration:-1,show_particles:0b}], \ 
        Offers:{Recipes:[ \ 
        {rewardExp:0b,maxUses:999999,uses:0,buy:{id:"minecraft:iron_ingot",count:1},sell:{id:"minecraft:stone_sword",count:1,components:{"minecraft:custom_data":{replace:1b}}}}, \ 
        {rewardExp:0b,maxUses:999999,uses:0,buy:{id:"minecraft:gold_ingot",count:1},sell:{id:"minecraft:iron_sword",count:1,components:{"minecraft:custom_data":{replace:1b}}}}, \ 
        {rewardExp:0b,maxUses:999999,uses:0,buy:{id:"minecraft:emerald",count:1},sell:{id:"minecraft:diamond_sword",count:1,components:{"minecraft:custom_data":{replace:1b}}}}, \ 
        {rewardExp:0b,maxUses:999999,uses:0,buy:{id:"minecraft:iron_ingot",count:4},sell:{id:"minecraft:chainmail_leggings",count:1,components:{"minecraft:custom_data":{replace:1b}}}}, \ 
        {rewardExp:0b,maxUses:999999,uses:0,buy:{id:"minecraft:gold_ingot",count:4},sell:{id:"minecraft:iron_leggings",count:1,components:{"minecraft:custom_data":{replace:1b}}}}, \ 
        {rewardExp:0b,maxUses:999999,uses:0,buy:{id:"minecraft:emerald",count:4},sell:{id:"minecraft:diamond_leggings",count:1,components:{"minecraft:custom_data":{replace:1b}}}},]}}
execute if score blitz.PurplePenguins blitz.stats.players matches 1.. in stmc:blitz run summon villager -105 105 40 {NoGravity:1b,Silent:1b,Invulnerable:1b,CustomNameVisible:1b,PersistenceRequired:1b,NoAI:1b, \ 
        CustomName:{"color":"green","text":"Tools"}, \ 
        active_effects:[{id:"minecraft:resistance",amplifier:10,duration:-1,show_particles:0b}], \ 
        Offers:{Recipes:[ \ 
        {rewardExp:0b,maxUses:999999,uses:0,buy:{id:"minecraft:iron_ingot",count:1},sell:{id:"minecraft:purple_concrete",count:8,components:{"minecraft:can_place_on":[{"blocks":"#extract:all"}],"tooltip_display":{hidden_components:[can_place_on]}}}}, \ 
        {rewardExp:0b,maxUses:999999,uses:0,buy:{id:"minecraft:gold_ingot",count:2},sell:{id:"minecraft:iron_axe",count:1,components:{"minecraft:custom_data":{return:1b},"can_break":[{blocks:"oak_planks"}]}}}, \ 
        {rewardExp:0b,maxUses:999999,uses:0,buy:{id:"minecraft:gold_ingot",count:2},sell:{id:"minecraft:oak_planks",count:8,components:{"minecraft:can_place_on":[{"blocks":"#extract:all"}],"tooltip_display":{hidden_components:[can_place_on]}}}}, \ 
        {rewardExp:0b,maxUses:999999,uses:0,buy:{id:"minecraft:gold_ingot",count:4},sell:{id:"minecraft:golden_apple",count:1}}, \ 
        {rewardExp:0b,maxUses:999999,uses:0,buy:{id:"minecraft:emerald",count:3},sell:{id:"minecraft:ender_pearl",count:1}}, \ 
        {rewardExp:0b,maxUses:999999,uses:0,buy:{id:"minecraft:emerald",count:1},sell:{id:"minecraft:crossbow",count:1,components:{"minecraft:custom_data":{return:1b}}}}, \ 
        {rewardExp:0b,maxUses:999999,uses:0,buy:{id:"minecraft:gold_ingot",count:1},sell:{id:"minecraft:arrow",count:2}}]}}

# blue team
execute if score blitz.BlueBears blitz.stats.players matches 1.. in stmc:blitz run summon villager 40 105 106 {NoGravity:1b,Silent:1b,Invulnerable:1b,CustomNameVisible:1b,PersistenceRequired:1b,NoAI:1b, \ 
        CustomName:{"color":"red","text":"Weaponry"}, \ 
        active_effects:[{id:"minecraft:resistance",amplifier:10,duration:-1,show_particles:0b}], \ 
        Offers:{Recipes:[ \ 
        {rewardExp:0b,maxUses:999999,uses:0,buy:{id:"minecraft:iron_ingot",count:1},sell:{id:"minecraft:stone_sword",count:1,components:{"minecraft:custom_data":{replace:1b}}}}, \ 
        {rewardExp:0b,maxUses:999999,uses:0,buy:{id:"minecraft:gold_ingot",count:1},sell:{id:"minecraft:iron_sword",count:1,components:{"minecraft:custom_data":{replace:1b}}}}, \ 
        {rewardExp:0b,maxUses:999999,uses:0,buy:{id:"minecraft:emerald",count:1},sell:{id:"minecraft:diamond_sword",count:1,components:{"minecraft:custom_data":{replace:1b}}}}, \ 
        {rewardExp:0b,maxUses:999999,uses:0,buy:{id:"minecraft:iron_ingot",count:4},sell:{id:"minecraft:chainmail_leggings",count:1,components:{"minecraft:custom_data":{replace:1b}}}}, \ 
        {rewardExp:0b,maxUses:999999,uses:0,buy:{id:"minecraft:gold_ingot",count:4},sell:{id:"minecraft:iron_leggings",count:1,components:{"minecraft:custom_data":{replace:1b}}}}, \ 
        {rewardExp:0b,maxUses:999999,uses:0,buy:{id:"minecraft:emerald",count:4},sell:{id:"minecraft:diamond_leggings",count:1,components:{"minecraft:custom_data":{replace:1b}}}},]}}
execute if score blitz.BlueBears blitz.stats.players matches 1.. in stmc:blitz run summon villager 40 105 105 {NoGravity:1b,Silent:1b,Invulnerable:1b,CustomNameVisible:1b,PersistenceRequired:1b,NoAI:1b, \ 
        CustomName:{"color":"green","text":"Tools"}, \ 
        active_effects:[{id:"minecraft:resistance",amplifier:10,duration:-1,show_particles:0b}], \ 
        Offers:{Recipes:[ \ 
        {rewardExp:0b,maxUses:999999,uses:0,buy:{id:"minecraft:iron_ingot",count:1},sell:{id:"minecraft:blue_concrete",count:8,components:{"minecraft:can_place_on":[{"blocks":"#extract:all"}],"tooltip_display":{hidden_components:[can_place_on]}}}}, \ 
        {rewardExp:0b,maxUses:999999,uses:0,buy:{id:"minecraft:gold_ingot",count:2},sell:{id:"minecraft:iron_axe",count:1,components:{"minecraft:custom_data":{return:1b},"can_break":[{blocks:"oak_planks"}]}}}, \ 
        {rewardExp:0b,maxUses:999999,uses:0,buy:{id:"minecraft:gold_ingot",count:2},sell:{id:"minecraft:oak_planks",count:8,components:{"minecraft:can_place_on":[{"blocks":"#extract:all"}],"tooltip_display":{hidden_components:[can_place_on]}}}}, \ 
        {rewardExp:0b,maxUses:999999,uses:0,buy:{id:"minecraft:gold_ingot",count:4},sell:{id:"minecraft:golden_apple",count:1}}, \ 
        {rewardExp:0b,maxUses:999999,uses:0,buy:{id:"minecraft:emerald",count:3},sell:{id:"minecraft:ender_pearl",count:1}}, \ 
        {rewardExp:0b,maxUses:999999,uses:0,buy:{id:"minecraft:emerald",count:1},sell:{id:"minecraft:crossbow",count:1,components:{"minecraft:custom_data":{return:1b}}}}, \ 
        {rewardExp:0b,maxUses:999999,uses:0,buy:{id:"minecraft:gold_ingot",count:1},sell:{id:"minecraft:arrow",count:2}}]}}

# give players items

# armor
execute as @a run item replace entity @s armor.head with leather_helmet
execute as @a run item replace entity @s armor.chest with leather_chestplate
execute as @a run item replace entity @s armor.legs with leather_leggings
execute as @a run item replace entity @s armor.feet with leather_boots

# items
execute as @a run item replace entity @s hotbar.0 with wooden_sword
execute as @a run item replace entity @s hotbar.1 with iron_pickaxe[can_break=[{blocks:["red_concrete","orange_concrete","pink_concrete","yellow_concrete","green_concrete","cyan_concrete","purple_concrete","blue_concrete","deepslate_redstone_ore"]}],tooltip_display={hidden_components:["can_break"],hide_tooltip:false}]
execute as @a[team=RED_RACCOONS] run item replace entity @s hotbar.2 with shears[can_break=[{blocks:["orange_wool","pink_wool","yellow_wool","green_wool","cyan_wool","purple_wool","blue_wool"]}],tooltip_display={hidden_components:["can_break"],hide_tooltip:false}]
execute as @a[team=ORANGE_OTTERS] run item replace entity @s hotbar.2 with shears[can_break=[{blocks:["red_wool","pink_wool","yellow_wool","green_wool","cyan_wool","purple_wool","blue_wool"]}],tooltip_display={hidden_components:["can_break"],hide_tooltip:false}]
execute as @a[team=PINK_PIKAS] run item replace entity @s hotbar.2 with shears[can_break=[{blocks:["red_wool","orange_wool","yellow_wool","green_wool","cyan_wool","purple_wool","blue_wool"]}],tooltip_display={hidden_components:["can_break"],hide_tooltip:false}]
execute as @a[team=YELLOW_YAKS] run item replace entity @s hotbar.2 with shears[can_break=[{blocks:["red_wool","orange_wool","pink_wool","green_wool","cyan_wool","purple_wool","blue_wool"]}],tooltip_display={hidden_components:["can_break"],hide_tooltip:false}]
execute as @a[team=GREEN_GOATS] run item replace entity @s hotbar.2 with shears[can_break=[{blocks:["red_wool","orange_wool","pink_wool","yellow_wool","cyan_wool","purple_wool","blue_wool"]}],tooltip_display={hidden_components:["can_break"],hide_tooltip:false}]
execute as @a[team=CYAN_COUGARS] run item replace entity @s hotbar.2 with shears[can_break=[{blocks:["red_wool","orange_wool","pink_wool","yellow_wool","green_wool","purple_wool","blue_wool"]}],tooltip_display={hidden_components:["can_break"],hide_tooltip:false}]
execute as @a[team=PURPLE_PENGUINS] run item replace entity @s hotbar.2 with shears[can_break=[{blocks:["red_wool","orange_wool","pink_wool","yellow_wool","green_wool","cyan_wool","blue_wool"]}],tooltip_display={hidden_components:["can_break"],hide_tooltip:false}]
execute as @a[team=BLUE_BEARS] run item replace entity @s hotbar.2 with shears[can_break=[{blocks:["red_wool","orange_wool","pink_wool","yellow_wool","green_wool","cyan_wool","purple_wool"]}],tooltip_display={hidden_components:["can_break"],hide_tooltip:false}]