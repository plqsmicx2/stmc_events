
kill @e[type=armor_stand]
kill @e[type=interaction]

#lifesteal
execute positioned 17 105 97 unless entity @e[type=armor_stand,distance=..0.5] run \
        summon armor_stand 17 105 97 {NoBasePlate:1b,CustomNameVisible:1b,NoGravity:1b,Silent:1b,Invulnerable:1b,ShowArms:1b,DisabledSlots:4144959,equipment:{feet:{id:"minecraft:leather_boots",count:1},legs:{id:"minecraft:chainmail_leggings",count:1},chest:{id:"minecraft:chainmail_chestplate",count:1},head:{id:"minecraft:leather_helmet",count:1},mainhand:{id:"minecraft:wooden_spear",count:1}},CustomName:{"bold":true,"color":"#bda377","text":"Lifesteal"}}
execute positioned 17 105 97 unless entity @e[type=interaction,distance=..0.5] run \
        summon interaction 17 105 97 {width:1f,height:2f,Tags:["lifesteal"]}

#knockback
execute positioned 18 105 98 unless entity @e[type=armor_stand,distance=..0.5] run \
        summon armor_stand 18 105 98 {NoBasePlate:1b,CustomNameVisible:1b,NoGravity:1b,Silent:1b,Invulnerable:1b,ShowArms:1b,DisabledSlots:4144959,equipment:{feet:{id:"minecraft:leather_boots",count:1,components:{"minecraft:dyed_color":8421504}},legs:{id:"minecraft:chainmail_leggings",count:1},chest:{id:"minecraft:chainmail_chestplate",count:1},head:{id:"minecraft:leather_helmet",count:1,components:{"minecraft:dyed_color":8421504}},mainhand:{id:"minecraft:stone_spear",count:1}},CustomName:{"bold":true,"color":"#787777","text":"Knockback"}}
execute positioned 18 105 98 unless entity @e[type=interaction,distance=..0.5] run \
        summon interaction 18 105 98 {width:1f,height:2f,Tags:["knockback"]}

#fire_aspect
execute positioned 19 105 99 unless entity @e[type=armor_stand,distance=..0.5] run \
        summon armor_stand 19 105 99 {NoBasePlate:1b,CustomNameVisible:1b,NoGravity:1b,Silent:1b,Invulnerable:1b,ShowArms:1b,DisabledSlots:4144959,equipment:{feet:{id:"minecraft:copper_boots",count:1},legs:{id:"minecraft:chainmail_leggings",count:1},chest:{id:"minecraft:chainmail_chestplate",count:1},head:{id:"minecraft:copper_helmet",count:1},mainhand:{id:"minecraft:copper_spear",count:1}},CustomName:{"bold":true,"color":"#ff9385","text":"Fire Aspect"}}
execute positioned 19 105 99 unless entity @e[type=interaction,distance=..0.5] run \
        summon interaction 19 105 99 {width:1f,height:2f,Tags:["fire_aspect"]}

#invisibility
execute positioned 19 105 100 unless entity @e[type=armor_stand,distance=..0.5] run \
        summon armor_stand 19 105 100 {NoBasePlate:1b,CustomNameVisible:1b,NoGravity:1b,Silent:1b,Invulnerable:1b,ShowArms:1b,DisabledSlots:4144959,equipment:{feet:{id:"minecraft:iron_boots",count:1},legs:{id:"minecraft:chainmail_leggings",count:1},chest:{id:"minecraft:chainmail_chestplate",count:1},head:{id:"minecraft:iron_helmet",count:1},mainhand:{id:"minecraft:iron_spear",count:1}},CustomName:{"bold":true,"color":"#b1b1b1","text":"Invisibility"}}
execute positioned 19 105 100 unless entity @e[type=interaction,distance=..0.5] run \
        summon interaction 19 105 100 {width:1f,height:2f,Tags:["invisibility"]}

#strength
execute positioned 19 105 101 unless entity @e[type=armor_stand,distance=..0.5] run \
        summon armor_stand 19 105 101 {NoBasePlate:1b,CustomNameVisible:1b,NoGravity:1b,Silent:1b,Invulnerable:1b,ShowArms:1b,DisabledSlots:4144959,equipment:{feet:{id:"minecraft:golden_boots",count:1},legs:{id:"minecraft:chainmail_leggings",count:1},chest:{id:"minecraft:chainmail_chestplate",count:1},head:{id:"minecraft:golden_helmet",count:1},mainhand:{id:"minecraft:golden_spear",count:1}},CustomName:{"bold":true,"color":"#fdff76","text":"Strength"}}
execute positioned 19 105 101 unless entity @e[type=interaction,distance=..0.5] run \
        summon interaction 19 105 101 {width:1f,height:2f,Tags:["strength"]}

#swiftness
execute positioned 18 105 102 unless entity @e[type=armor_stand,distance=..0.5] run \
        summon armor_stand 18 105 102 {NoBasePlate:1b,CustomNameVisible:1b,NoGravity:1b,Silent:1b,Invulnerable:1b,ShowArms:1b,DisabledSlots:4144959,equipment:{feet:{id:"minecraft:diamond_boots",count:1},legs:{id:"minecraft:chainmail_leggings",count:1},chest:{id:"minecraft:chainmail_chestplate",count:1},head:{id:"minecraft:diamond_helmet",count:1},mainhand:{id:"minecraft:diamond_spear",count:1}},CustomName:{"bold":true,"color":"#33ebcb","text":"Swiftness"}}
execute positioned 18 105 102 unless entity @e[type=interaction,distance=..0.5] run \
        summon interaction 18 105 102 {width:1f,height:2f,Tags:["swiftness"]}

#netherite
execute positioned 17 105 103 unless entity @e[type=armor_stand,distance=..0.5] run \
        summon armor_stand 17 105 103 {NoBasePlate:1b,CustomNameVisible:1b,NoGravity:1b,Silent:1b,Invulnerable:1b,ShowArms:1b,DisabledSlots:4144959,equipment:{feet:{id:"minecraft:netherite_boots",count:1},legs:{id:"minecraft:chainmail_leggings",count:1},chest:{id:"minecraft:chainmail_chestplate",count:1},head:{id:"minecraft:netherite_helmet",count:1},mainhand:{id:"minecraft:netherite_spear",count:1}},CustomName:{"bold":true,"color":"#31292a","text":"Sharpness"}}
execute positioned 17 105 103 unless entity @e[type=interaction,distance=..0.5] run \
        summon interaction 17 105 103 {width:1f,height:2f,Tags:["sharpness"]}


#rotate
execute positioned 0 100 100 as @e[type=armor_stand,distance=..1000] run rotate @s facing 0 100 100
