# helper function that summons each teams' villagers
# this function is run in stmc:blitz

# check which teams have players
function stmc:games/blitz/helper/count_players

# Red team:
execute if score blitz.RedRaccoons blitz.stats.players matches 1.. run summon villager -40 105 106 {NoGravity:1b,Silent:1b,Invulnerable:1b,Rotation:[0f,0f],CustomNameVisible:1b,PersistenceRequired:1b,NoAI:1b, \ 
        Rotation:[-90f,0f],CustomName:{"color":"red","text":"Weaponry"}, \ 
        active_effects:[{id:"minecraft:resistance",amplifier:10,duration:-1,show_particles:0b}], \ 
        Offers:{Recipes:[ \ 
        {rewardExp:0b,maxUses:999999,uses:0,buy:{id:"minecraft:iron_ingot",count:1},sell:{id:"minecraft:stone_sword",count:1,components:{"minecraft:custom_data":{replace:1b},unbreakable:{}}}}, \ 
        {rewardExp:0b,maxUses:999999,uses:0,buy:{id:"minecraft:gold_ingot",count:1},sell:{id:"minecraft:iron_sword",count:1,components:{"minecraft:custom_data":{replace:1b},unbreakable:{}}}}, \ 
        {rewardExp:0b,maxUses:999999,uses:0,buy:{id:"minecraft:emerald",count:1},sell:{id:"minecraft:diamond_sword",count:1,components:{"minecraft:custom_data":{replace:1b},unbreakable:{}}}}, \ 
        {rewardExp:0b,maxUses:999999,uses:0,buy:{id:"minecraft:iron_ingot",count:4},sell:{id:"minecraft:chainmail_leggings",count:1,components:{"minecraft:custom_data":{replace:1b},unbreakable:{}}}}, \ 
        {rewardExp:0b,maxUses:999999,uses:0,buy:{id:"minecraft:gold_ingot",count:4},sell:{id:"minecraft:iron_leggings",count:1,components:{"minecraft:custom_data":{replace:1b},unbreakable:{}}}}, \ 
        {rewardExp:0b,maxUses:999999,uses:0,buy:{id:"minecraft:emerald",count:4},sell:{id:"minecraft:diamond_leggings",count:1,components:{"minecraft:custom_data":{replace:1b},unbreakable:{}}}}, \ 
        {rewardExp:0b,maxUses:999999,uses:0,buy:{id:"minecraft:emerald",count:1},sell:{id:"minecraft:crossbow",count:1,components:{"minecraft:custom_data":{return:1b}}}}, \ 
        {rewardExp:0b,maxUses:999999,uses:0,buy:{id:"minecraft:gold_ingot",count:1},sell:{id:"minecraft:arrow",count:2}}]}}
execute if score blitz.RedRaccoons blitz.stats.players matches 1.. run summon villager -40 105 105 {NoGravity:1b,Silent:1b,Invulnerable:1b,Rotation:[0f,0f],CustomNameVisible:1b,PersistenceRequired:1b,NoAI:1b, \ 
        Rotation:[-90f,0f],CustomName:{"color":"green","text":"Tools"}, \ 
        active_effects:[{id:"minecraft:resistance",amplifier:10,duration:-1,show_particles:0b}], \ 
        Offers:{Recipes:[ \ 
        {rewardExp:0b,maxUses:999999,uses:0,buy:{id:"minecraft:iron_ingot",count:1},sell:{id:"minecraft:red_concrete",count:8,components:{"minecraft:can_place_on":[{"blocks":"#stmc:all"}],"tooltip_display":{hidden_components:[can_place_on]}}}}, \ 
        {rewardExp:0b,maxUses:999999,uses:0,buy:{id:"minecraft:gold_ingot",count:2},sell:{id:"minecraft:iron_axe",count:1,components:{"minecraft:custom_data":{return:1b},"can_break":[{blocks:["oak_planks","ladder"]}]}}}, \ 
        {rewardExp:0b,maxUses:999999,uses:0,buy:{id:"minecraft:iron_ingot",count:8},sell:{id:"minecraft:ladder",count:2,components:{"minecraft:can_place_on":[{"blocks":"#stmc:all"}],"tooltip_display":{hidden_components:[can_place_on]}}}}, \ 
        {rewardExp:0b,maxUses:999999,uses:0,buy:{id:"minecraft:gold_ingot",count:2},sell:{id:"minecraft:oak_planks",count:8,components:{"minecraft:can_place_on":[{"blocks":"#stmc:all"}],"tooltip_display":{hidden_components:[can_place_on]}}}}, \ 
        {rewardExp:0b,maxUses:999999,uses:0,buy:{id:"minecraft:iron_ingot",count:4},sell:{id:"minecraft:bread",count:1}}, \ 
        {rewardExp:0b,maxUses:999999,uses:0,buy:{id:"minecraft:gold_ingot",count:4},sell:{id:"minecraft:golden_apple",count:1}}, \ 
        {rewardExp:0b,maxUses:999999,uses:0,buy:{id:"minecraft:emerald",count:3},sell:{id:"minecraft:ender_pearl",count:1}}]}}

# Orange team
execute if score blitz.OrangeOtters blitz.stats.players matches 1.. run summon villager -40 105 -106 {NoGravity:1b,Silent:1b,Invulnerable:1b,Rotation:[0f,0f],CustomNameVisible:1b,PersistenceRequired:1b,NoAI:1b, \ 
        Rotation:[-90f,0f],CustomName:{"color":"red","text":"Weaponry"}, \ 
        active_effects:[{id:"minecraft:resistance",amplifier:10,duration:-1,show_particles:0b}], \ 
        Offers:{Recipes:[ \ 
        {rewardExp:0b,maxUses:999999,uses:0,buy:{id:"minecraft:iron_ingot",count:1},sell:{id:"minecraft:stone_sword",count:1,components:{"minecraft:custom_data":{replace:1b},unbreakable:{}}}}, \ 
        {rewardExp:0b,maxUses:999999,uses:0,buy:{id:"minecraft:gold_ingot",count:1},sell:{id:"minecraft:iron_sword",count:1,components:{"minecraft:custom_data":{replace:1b},unbreakable:{}}}}, \ 
        {rewardExp:0b,maxUses:999999,uses:0,buy:{id:"minecraft:emerald",count:1},sell:{id:"minecraft:diamond_sword",count:1,components:{"minecraft:custom_data":{replace:1b},unbreakable:{}}}}, \ 
        {rewardExp:0b,maxUses:999999,uses:0,buy:{id:"minecraft:iron_ingot",count:4},sell:{id:"minecraft:chainmail_leggings",count:1,components:{"minecraft:custom_data":{replace:1b},unbreakable:{}}}}, \ 
        {rewardExp:0b,maxUses:999999,uses:0,buy:{id:"minecraft:gold_ingot",count:4},sell:{id:"minecraft:iron_leggings",count:1,components:{"minecraft:custom_data":{replace:1b},unbreakable:{}}}}, \ 
        {rewardExp:0b,maxUses:999999,uses:0,buy:{id:"minecraft:emerald",count:4},sell:{id:"minecraft:diamond_leggings",count:1,components:{"minecraft:custom_data":{replace:1b},unbreakable:{}}}}, \ 
        {rewardExp:0b,maxUses:999999,uses:0,buy:{id:"minecraft:emerald",count:1},sell:{id:"minecraft:crossbow",count:1,components:{"minecraft:custom_data":{return:1b}}}}, \ 
        {rewardExp:0b,maxUses:999999,uses:0,buy:{id:"minecraft:gold_ingot",count:1},sell:{id:"minecraft:arrow",count:2}}]}}
execute if score blitz.OrangeOtters blitz.stats.players matches 1.. run summon villager -40 105 -105 {NoGravity:1b,Silent:1b,Invulnerable:1b,Rotation:[0f,0f],CustomNameVisible:1b,PersistenceRequired:1b,NoAI:1b, \ 
        Rotation:[-90f,0f],CustomName:{"color":"green","text":"Tools"}, \ 
        active_effects:[{id:"minecraft:resistance",amplifier:10,duration:-1,show_particles:0b}], \ 
        Offers:{Recipes:[ \ 
        {rewardExp:0b,maxUses:999999,uses:0,buy:{id:"minecraft:iron_ingot",count:1},sell:{id:"minecraft:orange_concrete",count:8,components:{"minecraft:can_place_on":[{"blocks":"#stmc:all"}],"tooltip_display":{hidden_components:[can_place_on]}}}}, \ 
        {rewardExp:0b,maxUses:999999,uses:0,buy:{id:"minecraft:gold_ingot",count:2},sell:{id:"minecraft:iron_axe",count:1,components:{"minecraft:custom_data":{return:1b},"can_break":[{blocks:["oak_planks","ladder"]}]}}}, \ 
        {rewardExp:0b,maxUses:999999,uses:0,buy:{id:"minecraft:iron_ingot",count:8},sell:{id:"minecraft:ladder",count:2,components:{"minecraft:can_place_on":[{"blocks":"#stmc:all"}],"tooltip_display":{hidden_components:[can_place_on]}}}}, \ 
        {rewardExp:0b,maxUses:999999,uses:0,buy:{id:"minecraft:gold_ingot",count:2},sell:{id:"minecraft:oak_planks",count:8,components:{"minecraft:can_place_on":[{"blocks":"#stmc:all"}],"tooltip_display":{hidden_components:[can_place_on]}}}}, \ 
        {rewardExp:0b,maxUses:999999,uses:0,buy:{id:"minecraft:iron_ingot",count:4},sell:{id:"minecraft:bread",count:1}}, \ 
        {rewardExp:0b,maxUses:999999,uses:0,buy:{id:"minecraft:gold_ingot",count:4},sell:{id:"minecraft:golden_apple",count:1}}, \ 
        {rewardExp:0b,maxUses:999999,uses:0,buy:{id:"minecraft:emerald",count:3},sell:{id:"minecraft:ender_pearl",count:1}}]}}

# Pink team
execute if score blitz.PinkPikas blitz.stats.players matches 1.. run summon villager 106 105 -40 {NoGravity:1b,Silent:1b,Invulnerable:1b,Rotation:[0f,0f],CustomNameVisible:1b,PersistenceRequired:1b,NoAI:1b, \ 
        Rotation:[0f,0f],CustomName:{"color":"red","text":"Weaponry"}, \ 
        active_effects:[{id:"minecraft:resistance",amplifier:10,duration:-1,show_particles:0b}], \ 
        Offers:{Recipes:[ \ 
        {rewardExp:0b,maxUses:999999,uses:0,buy:{id:"minecraft:iron_ingot",count:1},sell:{id:"minecraft:stone_sword",count:1,components:{"minecraft:custom_data":{replace:1b},unbreakable:{}}}}, \ 
        {rewardExp:0b,maxUses:999999,uses:0,buy:{id:"minecraft:gold_ingot",count:1},sell:{id:"minecraft:iron_sword",count:1,components:{"minecraft:custom_data":{replace:1b},unbreakable:{}}}}, \ 
        {rewardExp:0b,maxUses:999999,uses:0,buy:{id:"minecraft:emerald",count:1},sell:{id:"minecraft:diamond_sword",count:1,components:{"minecraft:custom_data":{replace:1b},unbreakable:{}}}}, \ 
        {rewardExp:0b,maxUses:999999,uses:0,buy:{id:"minecraft:iron_ingot",count:4},sell:{id:"minecraft:chainmail_leggings",count:1,components:{"minecraft:custom_data":{replace:1b},unbreakable:{}}}}, \ 
        {rewardExp:0b,maxUses:999999,uses:0,buy:{id:"minecraft:gold_ingot",count:4},sell:{id:"minecraft:iron_leggings",count:1,components:{"minecraft:custom_data":{replace:1b},unbreakable:{}}}}, \ 
        {rewardExp:0b,maxUses:999999,uses:0,buy:{id:"minecraft:emerald",count:4},sell:{id:"minecraft:diamond_leggings",count:1,components:{"minecraft:custom_data":{replace:1b},unbreakable:{}}}}, \ 
        {rewardExp:0b,maxUses:999999,uses:0,buy:{id:"minecraft:emerald",count:1},sell:{id:"minecraft:crossbow",count:1,components:{"minecraft:custom_data":{return:1b}}}}, \ 
        {rewardExp:0b,maxUses:999999,uses:0,buy:{id:"minecraft:gold_ingot",count:1},sell:{id:"minecraft:arrow",count:2}}]}}
execute if score blitz.PinkPikas blitz.stats.players matches 1.. run summon villager 105 105 -40 {NoGravity:1b,Silent:1b,Invulnerable:1b,Rotation:[0f,0f],CustomNameVisible:1b,PersistenceRequired:1b,NoAI:1b, \ 
        Rotation:[0f,0f],CustomName:{"color":"green","text":"Tools"}, \ 
        active_effects:[{id:"minecraft:resistance",amplifier:10,duration:-1,show_particles:0b}], \ 
        Offers:{Recipes:[ \ 
        {rewardExp:0b,maxUses:999999,uses:0,buy:{id:"minecraft:iron_ingot",count:1},sell:{id:"minecraft:pink_concrete",count:8,components:{"minecraft:can_place_on":[{"blocks":"#stmc:all"}],"tooltip_display":{hidden_components:[can_place_on]}}}}, \ 
        {rewardExp:0b,maxUses:999999,uses:0,buy:{id:"minecraft:gold_ingot",count:2},sell:{id:"minecraft:iron_axe",count:1,components:{"minecraft:custom_data":{return:1b},"can_break":[{blocks:["oak_planks","ladder"]}]}}}, \ 
        {rewardExp:0b,maxUses:999999,uses:0,buy:{id:"minecraft:iron_ingot",count:8},sell:{id:"minecraft:ladder",count:2,components:{"minecraft:can_place_on":[{"blocks":"#stmc:all"}],"tooltip_display":{hidden_components:[can_place_on]}}}}, \ 
        {rewardExp:0b,maxUses:999999,uses:0,buy:{id:"minecraft:gold_ingot",count:2},sell:{id:"minecraft:oak_planks",count:8,components:{"minecraft:can_place_on":[{"blocks":"#stmc:all"}],"tooltip_display":{hidden_components:[can_place_on]}}}}, \ 
        {rewardExp:0b,maxUses:999999,uses:0,buy:{id:"minecraft:iron_ingot",count:4},sell:{id:"minecraft:bread",count:1}}, \ 
        {rewardExp:0b,maxUses:999999,uses:0,buy:{id:"minecraft:gold_ingot",count:4},sell:{id:"minecraft:golden_apple",count:1}}, \ 
        {rewardExp:0b,maxUses:999999,uses:0,buy:{id:"minecraft:emerald",count:3},sell:{id:"minecraft:ender_pearl",count:1}}]}}

# Yellow team
execute if score blitz.YellowYaks blitz.stats.players matches 1.. run summon villager 106 105 40 {NoGravity:1b,Silent:1b,Invulnerable:1b,Rotation:[0f,0f],CustomNameVisible:1b,PersistenceRequired:1b,NoAI:1b, \ 
        Rotation:[180f,0f],CustomName:{"color":"red","text":"Weaponry"}, \ 
        active_effects:[{id:"minecraft:resistance",amplifier:10,duration:-1,show_particles:0b}], \ 
        Offers:{Recipes:[ \ 
        {rewardExp:0b,maxUses:999999,uses:0,buy:{id:"minecraft:iron_ingot",count:1},sell:{id:"minecraft:stone_sword",count:1,components:{"minecraft:custom_data":{replace:1b},unbreakable:{}}}}, \ 
        {rewardExp:0b,maxUses:999999,uses:0,buy:{id:"minecraft:gold_ingot",count:1},sell:{id:"minecraft:iron_sword",count:1,components:{"minecraft:custom_data":{replace:1b},unbreakable:{}}}}, \ 
        {rewardExp:0b,maxUses:999999,uses:0,buy:{id:"minecraft:emerald",count:1},sell:{id:"minecraft:diamond_sword",count:1,components:{"minecraft:custom_data":{replace:1b},unbreakable:{}}}}, \ 
        {rewardExp:0b,maxUses:999999,uses:0,buy:{id:"minecraft:iron_ingot",count:4},sell:{id:"minecraft:chainmail_leggings",count:1,components:{"minecraft:custom_data":{replace:1b},unbreakable:{}}}}, \ 
        {rewardExp:0b,maxUses:999999,uses:0,buy:{id:"minecraft:gold_ingot",count:4},sell:{id:"minecraft:iron_leggings",count:1,components:{"minecraft:custom_data":{replace:1b},unbreakable:{}}}}, \ 
        {rewardExp:0b,maxUses:999999,uses:0,buy:{id:"minecraft:emerald",count:4},sell:{id:"minecraft:diamond_leggings",count:1,components:{"minecraft:custom_data":{replace:1b},unbreakable:{}}}}, \ 
        {rewardExp:0b,maxUses:999999,uses:0,buy:{id:"minecraft:emerald",count:1},sell:{id:"minecraft:crossbow",count:1,components:{"minecraft:custom_data":{return:1b}}}}, \ 
        {rewardExp:0b,maxUses:999999,uses:0,buy:{id:"minecraft:gold_ingot",count:1},sell:{id:"minecraft:arrow",count:2}}]}}
execute if score blitz.YellowYaks blitz.stats.players matches 1.. run summon villager 105 105 40 {NoGravity:1b,Silent:1b,Invulnerable:1b,Rotation:[0f,0f],CustomNameVisible:1b,PersistenceRequired:1b,NoAI:1b, \ 
        Rotation:[180f,0f],CustomName:{"color":"green","text":"Tools"}, \ 
        active_effects:[{id:"minecraft:resistance",amplifier:10,duration:-1,show_particles:0b}], \ 
        Offers:{Recipes:[ \ 
        {rewardExp:0b,maxUses:999999,uses:0,buy:{id:"minecraft:iron_ingot",count:1},sell:{id:"minecraft:yellow_concrete",count:8,components:{"minecraft:can_place_on":[{"blocks":"#stmc:all"}],"tooltip_display":{hidden_components:[can_place_on]}}}}, \ 
        {rewardExp:0b,maxUses:999999,uses:0,buy:{id:"minecraft:gold_ingot",count:2},sell:{id:"minecraft:iron_axe",count:1,components:{"minecraft:custom_data":{return:1b},"can_break":[{blocks:["oak_planks","ladder"]}]}}}, \ 
        {rewardExp:0b,maxUses:999999,uses:0,buy:{id:"minecraft:iron_ingot",count:8},sell:{id:"minecraft:ladder",count:2,components:{"minecraft:can_place_on":[{"blocks":"#stmc:all"}],"tooltip_display":{hidden_components:[can_place_on]}}}}, \ 
        {rewardExp:0b,maxUses:999999,uses:0,buy:{id:"minecraft:gold_ingot",count:2},sell:{id:"minecraft:oak_planks",count:8,components:{"minecraft:can_place_on":[{"blocks":"#stmc:all"}],"tooltip_display":{hidden_components:[can_place_on]}}}}, \ 
        {rewardExp:0b,maxUses:999999,uses:0,buy:{id:"minecraft:iron_ingot",count:4},sell:{id:"minecraft:bread",count:1}}, \ 
        {rewardExp:0b,maxUses:999999,uses:0,buy:{id:"minecraft:gold_ingot",count:4},sell:{id:"minecraft:golden_apple",count:1}}, \ 
        {rewardExp:0b,maxUses:999999,uses:0,buy:{id:"minecraft:emerald",count:3},sell:{id:"minecraft:ender_pearl",count:1}}]}}

# Green team
execute if score blitz.GreenGoats blitz.stats.players matches 1.. run summon villager 40 105 -106 {NoGravity:1b,Silent:1b,Invulnerable:1b,Rotation:[0f,0f],CustomNameVisible:1b,PersistenceRequired:1b,NoAI:1b, \ 
        Rotation:[90f,0f],CustomName:{"color":"red","text":"Weaponry"}, \ 
        active_effects:[{id:"minecraft:resistance",amplifier:10,duration:-1,show_particles:0b}], \ 
        Offers:{Recipes:[ \ 
        {rewardExp:0b,maxUses:999999,uses:0,buy:{id:"minecraft:iron_ingot",count:1},sell:{id:"minecraft:stone_sword",count:1,components:{"minecraft:custom_data":{replace:1b},unbreakable:{}}}}, \ 
        {rewardExp:0b,maxUses:999999,uses:0,buy:{id:"minecraft:gold_ingot",count:1},sell:{id:"minecraft:iron_sword",count:1,components:{"minecraft:custom_data":{replace:1b},unbreakable:{}}}}, \ 
        {rewardExp:0b,maxUses:999999,uses:0,buy:{id:"minecraft:emerald",count:1},sell:{id:"minecraft:diamond_sword",count:1,components:{"minecraft:custom_data":{replace:1b},unbreakable:{}}}}, \ 
        {rewardExp:0b,maxUses:999999,uses:0,buy:{id:"minecraft:iron_ingot",count:4},sell:{id:"minecraft:chainmail_leggings",count:1,components:{"minecraft:custom_data":{replace:1b},unbreakable:{}}}}, \ 
        {rewardExp:0b,maxUses:999999,uses:0,buy:{id:"minecraft:gold_ingot",count:4},sell:{id:"minecraft:iron_leggings",count:1,components:{"minecraft:custom_data":{replace:1b},unbreakable:{}}}}, \ 
        {rewardExp:0b,maxUses:999999,uses:0,buy:{id:"minecraft:emerald",count:4},sell:{id:"minecraft:diamond_leggings",count:1,components:{"minecraft:custom_data":{replace:1b},unbreakable:{}}}}, \ 
        {rewardExp:0b,maxUses:999999,uses:0,buy:{id:"minecraft:emerald",count:1},sell:{id:"minecraft:crossbow",count:1,components:{"minecraft:custom_data":{return:1b}}}}, \ 
        {rewardExp:0b,maxUses:999999,uses:0,buy:{id:"minecraft:gold_ingot",count:1},sell:{id:"minecraft:arrow",count:2}}]}}
execute if score blitz.GreenGoats blitz.stats.players matches 1.. run summon villager 40 105 -105 {NoGravity:1b,Silent:1b,Invulnerable:1b,Rotation:[0f,0f],CustomNameVisible:1b,PersistenceRequired:1b,NoAI:1b, \ 
        Rotation:[90f,0f],CustomName:{"color":"green","text":"Tools"}, \ 
        active_effects:[{id:"minecraft:resistance",amplifier:10,duration:-1,show_particles:0b}], \ 
        Offers:{Recipes:[ \ 
        {rewardExp:0b,maxUses:999999,uses:0,buy:{id:"minecraft:iron_ingot",count:1},sell:{id:"minecraft:green_concrete",count:8,components:{"minecraft:can_place_on":[{"blocks":"#stmc:all"}],"tooltip_display":{hidden_components:[can_place_on]}}}}, \ 
        {rewardExp:0b,maxUses:999999,uses:0,buy:{id:"minecraft:gold_ingot",count:2},sell:{id:"minecraft:iron_axe",count:1,components:{"minecraft:custom_data":{return:1b},"can_break":[{blocks:["oak_planks","ladder"]}]}}}, \ 
        {rewardExp:0b,maxUses:999999,uses:0,buy:{id:"minecraft:iron_ingot",count:8},sell:{id:"minecraft:ladder",count:2,components:{"minecraft:can_place_on":[{"blocks":"#stmc:all"}],"tooltip_display":{hidden_components:[can_place_on]}}}}, \ 
        {rewardExp:0b,maxUses:999999,uses:0,buy:{id:"minecraft:gold_ingot",count:2},sell:{id:"minecraft:oak_planks",count:8,components:{"minecraft:can_place_on":[{"blocks":"#stmc:all"}],"tooltip_display":{hidden_components:[can_place_on]}}}}, \ 
        {rewardExp:0b,maxUses:999999,uses:0,buy:{id:"minecraft:iron_ingot",count:4},sell:{id:"minecraft:bread",count:1}}, \ 
        {rewardExp:0b,maxUses:999999,uses:0,buy:{id:"minecraft:gold_ingot",count:4},sell:{id:"minecraft:golden_apple",count:1}}, \ 
        {rewardExp:0b,maxUses:999999,uses:0,buy:{id:"minecraft:emerald",count:3},sell:{id:"minecraft:ender_pearl",count:1}}]}}

# Cyan team
execute if score blitz.CyanCougars blitz.stats.players matches 1.. run summon villager -106 105 -40 {NoGravity:1b,Silent:1b,Invulnerable:1b,Rotation:[0f,0f],CustomNameVisible:1b,PersistenceRequired:1b,NoAI:1b, \ 
        Rotation:[0f,0f],CustomName:{"color":"red","text":"Weaponry"}, \ 
        active_effects:[{id:"minecraft:resistance",amplifier:10,duration:-1,show_particles:0b}], \ 
        Offers:{Recipes:[ \ 
        {rewardExp:0b,maxUses:999999,uses:0,buy:{id:"minecraft:iron_ingot",count:1},sell:{id:"minecraft:stone_sword",count:1,components:{"minecraft:custom_data":{replace:1b},unbreakable:{}}}}, \ 
        {rewardExp:0b,maxUses:999999,uses:0,buy:{id:"minecraft:gold_ingot",count:1},sell:{id:"minecraft:iron_sword",count:1,components:{"minecraft:custom_data":{replace:1b},unbreakable:{}}}}, \ 
        {rewardExp:0b,maxUses:999999,uses:0,buy:{id:"minecraft:emerald",count:1},sell:{id:"minecraft:diamond_sword",count:1,components:{"minecraft:custom_data":{replace:1b},unbreakable:{}}}}, \ 
        {rewardExp:0b,maxUses:999999,uses:0,buy:{id:"minecraft:iron_ingot",count:4},sell:{id:"minecraft:chainmail_leggings",count:1,components:{"minecraft:custom_data":{replace:1b},unbreakable:{}}}}, \ 
        {rewardExp:0b,maxUses:999999,uses:0,buy:{id:"minecraft:gold_ingot",count:4},sell:{id:"minecraft:iron_leggings",count:1,components:{"minecraft:custom_data":{replace:1b},unbreakable:{}}}}, \ 
        {rewardExp:0b,maxUses:999999,uses:0,buy:{id:"minecraft:emerald",count:4},sell:{id:"minecraft:diamond_leggings",count:1,components:{"minecraft:custom_data":{replace:1b},unbreakable:{}}}}, \ 
        {rewardExp:0b,maxUses:999999,uses:0,buy:{id:"minecraft:emerald",count:1},sell:{id:"minecraft:crossbow",count:1,components:{"minecraft:custom_data":{return:1b}}}}, \ 
        {rewardExp:0b,maxUses:999999,uses:0,buy:{id:"minecraft:gold_ingot",count:1},sell:{id:"minecraft:arrow",count:2}}]}}
execute if score blitz.CyanCougars blitz.stats.players matches 1.. run summon villager -105 105 -40 {NoGravity:1b,Silent:1b,Invulnerable:1b,Rotation:[0f,0f],CustomNameVisible:1b,PersistenceRequired:1b,NoAI:1b, \ 
        Rotation:[0f,0f],CustomName:{"color":"green","text":"Tools"}, \ 
        active_effects:[{id:"minecraft:resistance",amplifier:10,duration:-1,show_particles:0b}], \ 
        Offers:{Recipes:[ \ 
        {rewardExp:0b,maxUses:999999,uses:0,buy:{id:"minecraft:iron_ingot",count:1},sell:{id:"minecraft:cyan_concrete",count:8,components:{"minecraft:can_place_on":[{"blocks":"#stmc:all"}],"tooltip_display":{hidden_components:[can_place_on]}}}}, \ 
        {rewardExp:0b,maxUses:999999,uses:0,buy:{id:"minecraft:gold_ingot",count:2},sell:{id:"minecraft:iron_axe",count:1,components:{"minecraft:custom_data":{return:1b},"can_break":[{blocks:["oak_planks","ladder"]}]}}}, \ 
        {rewardExp:0b,maxUses:999999,uses:0,buy:{id:"minecraft:iron_ingot",count:8},sell:{id:"minecraft:ladder",count:2,components:{"minecraft:can_place_on":[{"blocks":"#stmc:all"}],"tooltip_display":{hidden_components:[can_place_on]}}}}, \ 
        {rewardExp:0b,maxUses:999999,uses:0,buy:{id:"minecraft:gold_ingot",count:2},sell:{id:"minecraft:oak_planks",count:8,components:{"minecraft:can_place_on":[{"blocks":"#stmc:all"}],"tooltip_display":{hidden_components:[can_place_on]}}}}, \ 
        {rewardExp:0b,maxUses:999999,uses:0,buy:{id:"minecraft:iron_ingot",count:4},sell:{id:"minecraft:bread",count:1}}, \ 
        {rewardExp:0b,maxUses:999999,uses:0,buy:{id:"minecraft:gold_ingot",count:4},sell:{id:"minecraft:golden_apple",count:1}}, \ 
        {rewardExp:0b,maxUses:999999,uses:0,buy:{id:"minecraft:emerald",count:3},sell:{id:"minecraft:ender_pearl",count:1}}]}}

# Purple team
execute if score blitz.PurplePenguins blitz.stats.players matches 1.. run summon villager -106 105 40 {NoGravity:1b,Silent:1b,Invulnerable:1b,Rotation:[0f,0f],CustomNameVisible:1b,PersistenceRequired:1b,NoAI:1b, \ 
        Rotation:[180f,0f],CustomName:{"color":"red","text":"Weaponry"}, \ 
        active_effects:[{id:"minecraft:resistance",amplifier:10,duration:-1,show_particles:0b}], \ 
        Offers:{Recipes:[ \ 
        {rewardExp:0b,maxUses:999999,uses:0,buy:{id:"minecraft:iron_ingot",count:1},sell:{id:"minecraft:stone_sword",count:1,components:{"minecraft:custom_data":{replace:1b},unbreakable:{}}}}, \ 
        {rewardExp:0b,maxUses:999999,uses:0,buy:{id:"minecraft:gold_ingot",count:1},sell:{id:"minecraft:iron_sword",count:1,components:{"minecraft:custom_data":{replace:1b},unbreakable:{}}}}, \ 
        {rewardExp:0b,maxUses:999999,uses:0,buy:{id:"minecraft:emerald",count:1},sell:{id:"minecraft:diamond_sword",count:1,components:{"minecraft:custom_data":{replace:1b},unbreakable:{}}}}, \ 
        {rewardExp:0b,maxUses:999999,uses:0,buy:{id:"minecraft:iron_ingot",count:4},sell:{id:"minecraft:chainmail_leggings",count:1,components:{"minecraft:custom_data":{replace:1b},unbreakable:{}}}}, \ 
        {rewardExp:0b,maxUses:999999,uses:0,buy:{id:"minecraft:gold_ingot",count:4},sell:{id:"minecraft:iron_leggings",count:1,components:{"minecraft:custom_data":{replace:1b},unbreakable:{}}}}, \ 
        {rewardExp:0b,maxUses:999999,uses:0,buy:{id:"minecraft:emerald",count:4},sell:{id:"minecraft:diamond_leggings",count:1,components:{"minecraft:custom_data":{replace:1b},unbreakable:{}}}}, \ 
        {rewardExp:0b,maxUses:999999,uses:0,buy:{id:"minecraft:emerald",count:1},sell:{id:"minecraft:crossbow",count:1,components:{"minecraft:custom_data":{return:1b}}}}, \ 
        {rewardExp:0b,maxUses:999999,uses:0,buy:{id:"minecraft:gold_ingot",count:1},sell:{id:"minecraft:arrow",count:2}}]}}
execute if score blitz.PurplePenguins blitz.stats.players matches 1.. run summon villager -105 105 40 {NoGravity:1b,Silent:1b,Invulnerable:1b,Rotation:[0f,0f],CustomNameVisible:1b,PersistenceRequired:1b,NoAI:1b, \ 
        Rotation:[180f,0f],CustomName:{"color":"green","text":"Tools"}, \ 
        active_effects:[{id:"minecraft:resistance",amplifier:10,duration:-1,show_particles:0b}], \ 
        Offers:{Recipes:[ \ 
        {rewardExp:0b,maxUses:999999,uses:0,buy:{id:"minecraft:iron_ingot",count:1},sell:{id:"minecraft:purple_concrete",count:8,components:{"minecraft:can_place_on":[{"blocks":"#stmc:all"}],"tooltip_display":{hidden_components:[can_place_on]}}}}, \ 
        {rewardExp:0b,maxUses:999999,uses:0,buy:{id:"minecraft:gold_ingot",count:2},sell:{id:"minecraft:iron_axe",count:1,components:{"minecraft:custom_data":{return:1b},"can_break":[{blocks:["oak_planks","ladder"]}]}}}, \ 
        {rewardExp:0b,maxUses:999999,uses:0,buy:{id:"minecraft:iron_ingot",count:8},sell:{id:"minecraft:ladder",count:2,components:{"minecraft:can_place_on":[{"blocks":"#stmc:all"}],"tooltip_display":{hidden_components:[can_place_on]}}}}, \ 
        {rewardExp:0b,maxUses:999999,uses:0,buy:{id:"minecraft:gold_ingot",count:2},sell:{id:"minecraft:oak_planks",count:8,components:{"minecraft:can_place_on":[{"blocks":"#stmc:all"}],"tooltip_display":{hidden_components:[can_place_on]}}}}, \ 
        {rewardExp:0b,maxUses:999999,uses:0,buy:{id:"minecraft:iron_ingot",count:4},sell:{id:"minecraft:bread",count:1}}, \ 
        {rewardExp:0b,maxUses:999999,uses:0,buy:{id:"minecraft:gold_ingot",count:4},sell:{id:"minecraft:golden_apple",count:1}}, \ 
        {rewardExp:0b,maxUses:999999,uses:0,buy:{id:"minecraft:emerald",count:3},sell:{id:"minecraft:ender_pearl",count:1}}]}}

# Blue team
execute if score blitz.BlueBears blitz.stats.players matches 1.. run summon villager 40 105 106 {NoGravity:1b,Silent:1b,Invulnerable:1b,Rotation:[0f,0f],CustomNameVisible:1b,PersistenceRequired:1b,NoAI:1b, \ 
        Rotation:[90f,0f],CustomName:{"color":"red","text":"Weaponry"}, \ 
        active_effects:[{id:"minecraft:resistance",amplifier:10,duration:-1,show_particles:0b}], \ 
        Offers:{Recipes:[ \ 
        {rewardExp:0b,maxUses:999999,uses:0,buy:{id:"minecraft:iron_ingot",count:1},sell:{id:"minecraft:stone_sword",count:1,components:{"minecraft:custom_data":{replace:1b},unbreakable:{}}}}, \ 
        {rewardExp:0b,maxUses:999999,uses:0,buy:{id:"minecraft:gold_ingot",count:1},sell:{id:"minecraft:iron_sword",count:1,components:{"minecraft:custom_data":{replace:1b},unbreakable:{}}}}, \ 
        {rewardExp:0b,maxUses:999999,uses:0,buy:{id:"minecraft:emerald",count:1},sell:{id:"minecraft:diamond_sword",count:1,components:{"minecraft:custom_data":{replace:1b},unbreakable:{}}}}, \ 
        {rewardExp:0b,maxUses:999999,uses:0,buy:{id:"minecraft:iron_ingot",count:4},sell:{id:"minecraft:chainmail_leggings",count:1,components:{"minecraft:custom_data":{replace:1b},unbreakable:{}}}}, \ 
        {rewardExp:0b,maxUses:999999,uses:0,buy:{id:"minecraft:gold_ingot",count:4},sell:{id:"minecraft:iron_leggings",count:1,components:{"minecraft:custom_data":{replace:1b},unbreakable:{}}}}, \ 
        {rewardExp:0b,maxUses:999999,uses:0,buy:{id:"minecraft:emerald",count:4},sell:{id:"minecraft:diamond_leggings",count:1,components:{"minecraft:custom_data":{replace:1b},unbreakable:{}}}},]}}
execute if score blitz.BlueBears blitz.stats.players matches 1.. run summon villager 40 105 105 {NoGravity:1b,Silent:1b,Invulnerable:1b,Rotation:[0f,0f],CustomNameVisible:1b,PersistenceRequired:1b,NoAI:1b, \ 
        Rotation:[90f,0f],CustomName:{"color":"green","text":"Tools"}, \ 
        active_effects:[{id:"minecraft:resistance",amplifier:10,duration:-1,show_particles:0b}], \ 
        Offers:{Recipes:[ \ 
        {rewardExp:0b,maxUses:999999,uses:0,buy:{id:"minecraft:iron_ingot",count:1},sell:{id:"minecraft:blue_concrete",count:8,components:{"minecraft:can_place_on":[{"blocks":"#stmc:all"}],"tooltip_display":{hidden_components:[can_place_on]}}}}, \ 
        {rewardExp:0b,maxUses:999999,uses:0,buy:{id:"minecraft:gold_ingot",count:2},sell:{id:"minecraft:iron_axe",count:1,components:{"minecraft:custom_data":{return:1b},"can_break":[{blocks:["oak_planks","ladder"]}]}}}, \ 
        {rewardExp:0b,maxUses:999999,uses:0,buy:{id:"minecraft:iron_ingot",count:8},sell:{id:"minecraft:ladder",count:2,components:{"minecraft:can_place_on":[{"blocks":"#stmc:all"}],"tooltip_display":{hidden_components:[can_place_on]}}}}, \ 
        {rewardExp:0b,maxUses:999999,uses:0,buy:{id:"minecraft:gold_ingot",count:2},sell:{id:"minecraft:oak_planks",count:8,components:{"minecraft:can_place_on":[{"blocks":"#stmc:all"}],"tooltip_display":{hidden_components:[can_place_on]}}}}, \ 
        {rewardExp:0b,maxUses:999999,uses:0,buy:{id:"minecraft:iron_ingot",count:4},sell:{id:"minecraft:bread",count:1}}, \ 
        {rewardExp:0b,maxUses:999999,uses:0,buy:{id:"minecraft:gold_ingot",count:4},sell:{id:"minecraft:golden_apple",count:1}}, \ 
        {rewardExp:0b,maxUses:999999,uses:0,buy:{id:"minecraft:emerald",count:3},sell:{id:"minecraft:ender_pearl",count:1}}]}}
