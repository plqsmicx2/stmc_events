# listens for interactions with kits

# standardize interact type
execute in stmc:joust/main as @e[type=interaction] if data entity @s interaction run data modify entity @s attack set from entity @s interaction

# potions

# tag players with a potion
execute in stmc:joust/main as @e[type=interaction] on attacker if items entity @s hotbar.* potion run tag @s add upgrade_potion
execute in stmc:joust/main as @e[type=interaction] on attacker if items entity @s hotbar.* splash_potion run tag @s add upgrade_potion

# remove temporary empty potion
execute as @a[team=dim.joust,tag=upgrade_potion] unless items entity @s hotbar.* splash_potion run clear @s potion 1
execute as @a[team=dim.joust,tag=upgrade_potion] if items entity @s hotbar.* splash_potion run clear @s splash_potion 1

# grant new potion
execute in stmc:joust/main as @e[tag=lifesteal] on attacker if entity @s[tag=upgrade_potion] run give @s potion[consumable={consume_seconds:0.65,sound:"entity.generic.drink"},potion_contents={custom_color:12404823,custom_effects:[{id:"minecraft:health_boost",amplifier:1,duration:1800},{id:"minecraft:regeneration",amplifier:0,duration:1800}]},custom_name={"italic":false,"text":"Potion of Health Boost"}]
execute in stmc:joust/main as @e[tag=lifesteal] on attacker run tag @s remove upgrade_potion
execute in stmc:joust/main as @e[tag=knockback] on attacker if entity @s[tag=upgrade_potion] run give @s splash_potion[potion_contents={potion:"minecraft:strong_slowness"}]
execute in stmc:joust/main as @e[tag=knockback] on attacker run tag @s remove upgrade_potion
execute in stmc:joust/main as @e[tag=fire_aspect] on attacker if entity @s[tag=upgrade_potion] run give @s potion[consumable={consume_seconds:0.65,sound:"entity.generic.drink"},potion_contents={potion:"minecraft:fire_resistance"}]
execute in stmc:joust/main as @e[tag=fire_aspect] on attacker run tag @s remove upgrade_potion
execute in stmc:joust/main as @e[tag=invisibility] on attacker if entity @s[tag=upgrade_potion] run give @s splash_potion[potion_contents={potion:"minecraft:invisibility"}]
execute in stmc:joust/main as @e[tag=invisibility] on attacker run tag @s remove upgrade_potion
execute in stmc:joust/main as @e[tag=strength] on attacker if entity @s[tag=upgrade_potion] run give @s potion[consumable={consume_seconds:0.65,sound:"entity.generic.drink"},potion_contents={custom_color:15990661,custom_effects:[{id:"minecraft:haste",amplifier:3,duration:1800}]},custom_name={"italic":false,"text":"Potion of Haste"}]
execute in stmc:joust/main as @e[tag=strength] on attacker run tag @s remove upgrade_potion
execute in stmc:joust/main as @e[tag=swiftness] on attacker if entity @s[tag=upgrade_potion] run give @s potion[consumable={consume_seconds:0.65,sound:"entity.generic.drink"},potion_contents={potion:"minecraft:strong_swiftness"}]
execute in stmc:joust/main as @e[tag=swiftness] on attacker run tag @s remove upgrade_potion
execute in stmc:joust/main as @e[tag=sharpness] on attacker if entity @s[tag=upgrade_potion] run give @s potion[consumable={consume_seconds:0.65,sound:"entity.generic.drink"},potion_contents={custom_color:8407533,custom_effects:[{id:"minecraft:resistance",amplifier:1,duration:1800}]},custom_name={"italic":false,"text":"Potion of Resistance"}]
execute in stmc:joust/main as @e[tag=sharpness] on attacker run tag @s remove upgrade_potion

# play sound effect
execute if entity @a[team=dim.joust,tag=upgrade_potion] run playsound block.brewing_stand.brew player @a[team=dim.joust,tag=upgrade_potion] 0 10000 0 10000 1 0

# remove tag
tag @a[team=dim.joust] remove upgrade_potion

# spears

# clear inventory of spears
execute in stmc:joust/main as @e[type=interaction] on attacker run clear @s #spears

# give new spear
execute in stmc:joust/main as @e[tag=lifesteal] on attacker run give @s wooden_spear[unbreakable={},enchantments={"stmc:lifesteal":1}]
execute in stmc:joust/main as @e[tag=knockback] on attacker run give @s stone_spear[unbreakable={},attribute_modifiers=[{id:"attack_speed",type:"attack_speed",amount:-0.667,operation:"add_multiplied_total",slot:"mainhand",display:{type:"hidden"}},{id:"attack_knockback",type:"attack_knockback",amount:1.0,operation:"add_value",slot:"mainhand"}]]
execute in stmc:joust/main as @e[tag=fire_aspect] on attacker run give @s copper_spear[unbreakable={},enchantments={fire_aspect:1}]
execute in stmc:joust/main as @e[tag=invisibility] on attacker run give @s iron_spear[unbreakable={}]
execute in stmc:joust/main as @e[tag=strength] on attacker run give @s golden_spear[unbreakable={}]
execute in stmc:joust/main as @e[tag=swiftness] on attacker run give @s diamond_spear[unbreakable={}]
execute in stmc:joust/main as @e[tag=sharpness] on attacker run give @s netherite_spear[unbreakable={},enchantments={sharpness:2}]

# reset interaction data
execute in stmc:joust/main as @e[type=interaction] run data remove entity @s attack
execute in stmc:joust/main as @e[type=interaction] run data remove entity @s interaction
