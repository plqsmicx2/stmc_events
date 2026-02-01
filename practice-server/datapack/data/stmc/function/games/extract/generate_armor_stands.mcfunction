# red team
execute in stmc:extract/main run \ 
        summon armor_stand 45 102 -23 {CustomNameVisible:1b,Invulnerable:1b,Tags:["zombie"],DisabledSlots:4144959,Rotation:[-90F,0F], \ 
        equipment:{feet:{id:"minecraft:chainmail_boots",count:1},legs:{id:"minecraft:chainmail_leggings",count:1},chest:{id:"minecraft:chainmail_chestplate",count:1},head:{id:"minecraft:zombie_head",count:1},mainhand:{id:"minecraft:wooden_axe",count:1},offhand:{id:"minecraft:shield",count:1}},CustomName:{"bold":true,"color":"dark_green","text":"Zombie"}}
execute in stmc:extract/main run \ 
        summon interaction 45 102 -23 {width:1f,height:2f,Tags:["zombie"]}

execute in stmc:extract/main run \ 
        summon armor_stand 46 102 -25 {CustomNameVisible:1b,Invulnerable:1b,Tags:["piglin"],Rotation:[-63F,0F],DisabledSlots:4144959, \ 
        equipment:{feet:{id:"minecraft:leather_boots",count:1},legs:{id:"minecraft:leather_leggings",count:1},chest:{id:"minecraft:leather_chestplate",count:1},head:{id:"minecraft:piglin_head",count:1},mainhand:{id:"minecraft:golden_sword",count:1},offhand:{id:"minecraft:wind_charge",count:1}},CustomName:{"bold":true,"color":"gold","text":"Piglin"}}
execute in stmc:extract/main run \ 
        summon interaction 46 102 -25 {width:1f,height:2f,Tags:["piglin"]}

execute in stmc:extract/main run \ 
        summon armor_stand 48 102 -26 {CustomNameVisible:1b,Invulnerable:1b,Tags:["skeleton"],DisabledSlots:4144959,Rotation:[-23F,0F], \ 
        equipment:{feet:{id:"minecraft:chainmail_boots",count:1},legs:{id:"minecraft:leather_leggings",count:1},chest:{id:"minecraft:leather_chestplate",count:1},head:{id:"minecraft:skeleton_skull",count:1},mainhand:{id:"minecraft:wooden_sword",count:1},offhand:{id:"minecraft:bow",count:1}},CustomName:{"bold":true,"color":"gray","text":"Skeleton"}}
execute in stmc:extract/main run \ 
        summon interaction 48 102 -26 {width:1f,height:2f,Tags:["skeleton"]}

execute in stmc:extract/main run \ 
        summon armor_stand 52 102 -26 {CustomNameVisible:1b,Invulnerable:1b,Tags:["medic"],DisabledSlots:4144959,Rotation:[23F,0F], \ 
        equipment:{feet:{id:"minecraft:chainmail_boots",count:1},legs:{id:"minecraft:chainmail_leggings",count:1},chest:{id:"minecraft:chainmail_chestplate",count:1},head:{id:"minecraft:redstone_block",count:1},mainhand:{id:"minecraft:wooden_sword",count:1},offhand:{id:"minecraft:splash_potion",count:1,components:{"minecraft:potion_contents":{potion:"minecraft:healing"}}}},CustomName:{"bold":true,"color":"dark_red","text":"Medic"}}
execute in stmc:extract/main run \ 
        summon interaction 52 102 -26 {width:1f,height:2f,Tags:["medic"]}

execute in stmc:extract/main run \ 
        summon armor_stand 54 102 -25 {CustomNameVisible:1b,Invulnerable:1b,Tags:["miner"],DisabledSlots:4144959,Rotation:[63F,0F], \ 
        equipment:{feet:{id:"minecraft:chainmail_boots",count:1},legs:{id:"minecraft:chainmail_leggings",count:1},chest:{id:"minecraft:leather_chestplate",count:1},head:{id:"minecraft:diamond_block",count:1},mainhand:{id:"minecraft:stone_sword",count:1},offhand:{id:"minecraft:potion",count:1,components:{"minecraft:potion_contents":{potion:"minecraft:swiftness"}}}},CustomName:{"bold":true,"color":"blue","text":"Miner"}}
execute in stmc:extract/main run \ 
        summon interaction 54 102 -25 {width:1f,height:2f,Tags:["miner"]}

execute in stmc:extract/main run \ 
        summon armor_stand 55 102 -23 {CustomNameVisible:1b,Invulnerable:1b,Tags:["witch"],DisabledSlots:4144959,Rotation:[90F,0F], \ 
        equipment:{feet:{id:"minecraft:chainmail_boots",count:1},legs:{id:"minecraft:leather_leggings",count:1},chest:{id:"minecraft:leather_chestplate",count:1},head:{id:"minecraft:amethyst_block",count:1},mainhand:{id:"minecraft:stone_sword",count:1},offhand:{id:"minecraft:splash_potion",count:1,components:{"minecraft:potion_contents":{potion:"minecraft:strong_harming"}}}},CustomName:{"bold":true,"color":"dark_purple","text":"Witch"}}
execute in stmc:extract/main run \ 
        summon interaction 55 102 -23 {width:1f,height:2f,Tags:["witch"]}

# blue team
execute in stmc:extract/main run \ 
        summon armor_stand 55 102 23 {CustomNameVisible:1b,Invulnerable:1b,Tags:["zombie"],DisabledSlots:4144959,Rotation:[90F,0F], \ 
        equipment:{feet:{id:"minecraft:chainmail_boots",count:1},legs:{id:"minecraft:chainmail_leggings",count:1},chest:{id:"minecraft:chainmail_chestplate",count:1},head:{id:"minecraft:zombie_head",count:1},mainhand:{id:"minecraft:wooden_axe",count:1},offhand:{id:"minecraft:shield",count:1}},CustomName:{"bold":true,"color":"dark_green","text":"Zombie"}}
execute in stmc:extract/main run \ 
        summon interaction 55 102 23 {width:1f,height:2f,Tags:["zombie"]}

execute in stmc:extract/main run \ 
        summon armor_stand 54 102 25 {CustomNameVisible:1b,Invulnerable:1b,Tags:["piglin"],Rotation:[63F,0F],DisabledSlots:4144959, \ 
        equipment:{feet:{id:"minecraft:leather_boots",count:1},legs:{id:"minecraft:leather_leggings",count:1},chest:{id:"minecraft:leather_chestplate",count:1},head:{id:"minecraft:piglin_head",count:1},mainhand:{id:"minecraft:golden_sword",count:1},offhand:{id:"minecraft:wind_charge",count:1}},CustomName:{"bold":true,"color":"gold","text":"Piglin"}}
execute in stmc:extract/main run \ 
        summon interaction 54 102 25 {width:1f,height:2f,Tags:["piglin"]}

execute in stmc:extract/main run \ 
        summon armor_stand 52 102 26 {CustomNameVisible:1b,Invulnerable:1b,Tags:["skeleton"],DisabledSlots:4144959,Rotation:[23F,0F], \ 
        equipment:{feet:{id:"minecraft:chainmail_boots",count:1},legs:{id:"minecraft:leather_leggings",count:1},chest:{id:"minecraft:leather_chestplate",count:1},head:{id:"minecraft:skeleton_skull",count:1},mainhand:{id:"minecraft:wooden_sword",count:1},offhand:{id:"minecraft:bow",count:1}},CustomName:{"bold":true,"color":"gray","text":"Skeleton"}}
execute in stmc:extract/main run \ 
        summon interaction 52 102 26 {width:1f,height:2f,Tags:["skeleton"]}

execute in stmc:extract/main run \ 
        summon armor_stand 48 102 26 {CustomNameVisible:1b,Invulnerable:1b,Tags:["medic"],DisabledSlots:4144959,Rotation:[-23F,0F], \ 
        equipment:{feet:{id:"minecraft:chainmail_boots",count:1},legs:{id:"minecraft:chainmail_leggings",count:1},chest:{id:"minecraft:chainmail_chestplate",count:1},head:{id:"minecraft:redstone_block",count:1},mainhand:{id:"minecraft:wooden_sword",count:1},offhand:{id:"minecraft:splash_potion",count:1,components:{"minecraft:potion_contents":{potion:"minecraft:healing"}}}},CustomName:{"bold":true,"color":"dark_red","text":"Medic"}}
execute in stmc:extract/main run \ 
        summon interaction 48 102 26 {width:1f,height:2f,Tags:["medic"]}

execute in stmc:extract/main run \ 
        summon armor_stand 46 102 25 {CustomNameVisible:1b,Invulnerable:1b,Tags:["miner"],DisabledSlots:4144959,Rotation:[-63F,0F], \ 
        equipment:{feet:{id:"minecraft:chainmail_boots",count:1},legs:{id:"minecraft:chainmail_leggings",count:1},chest:{id:"minecraft:leather_chestplate",count:1},head:{id:"minecraft:diamond_block",count:1},mainhand:{id:"minecraft:stone_sword",count:1},offhand:{id:"minecraft:potion",count:1,components:{"minecraft:potion_contents":{potion:"minecraft:swiftness"}}}},CustomName:{"bold":true,"color":"blue","text":"Miner"}}
execute in stmc:extract/main run \ 
        summon interaction 46 102 25 {width:1f,height:2f,Tags:["miner"]}

execute in stmc:extract/main run \ 
        summon armor_stand 45 102 23 {CustomNameVisible:1b,Invulnerable:1b,Tags:["witch"],DisabledSlots:4144959,Rotation:[-90F,0F], \ 
        equipment:{feet:{id:"minecraft:chainmail_boots",count:1},legs:{id:"minecraft:leather_leggings",count:1},chest:{id:"minecraft:leather_chestplate",count:1},head:{id:"minecraft:amethyst_block",count:1},mainhand:{id:"minecraft:stone_sword",count:1},offhand:{id:"minecraft:splash_potion",count:1,components:{"minecraft:potion_contents":{potion:"minecraft:strong_harming"}}}},CustomName:{"bold":true,"color":"dark_purple","text":"Witch"}}
execute in stmc:extract/main run \ 
        summon interaction 45 102 23 {width:1f,height:2f,Tags:["witch"]}
