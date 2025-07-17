# runs a single round of disco

# <===== ROUND START =====>

# set current round length
execute if score disco.handler disco.example_rounds matches 0..2 run scoreboard players set disco.handler disco.current_round_length 140
scoreboard players set disco.handler disco.current_round_length_delay 40
scoreboard players operation disco.handler disco.current_round_length_delay += disco.handler disco.current_round_length

# randomize block
execute if score disco.handler disco.timer.example matches 1 store result score disco.handler disco.current_round_block run random value 1..5

# and give the player that block
execute as @a if score disco.handler disco.timer.example matches 1 if score disco.handler disco.current_round_block matches 1 run item replace entity @s hotbar.0 with minecraft:amethyst_block
execute as @a if score disco.handler disco.timer.example matches 1 if score disco.handler disco.current_round_block matches 1 run item replace entity @s hotbar.1 with minecraft:amethyst_block
execute as @a if score disco.handler disco.timer.example matches 1 if score disco.handler disco.current_round_block matches 1 run item replace entity @s hotbar.2 with minecraft:amethyst_block
execute as @a if score disco.handler disco.timer.example matches 1 if score disco.handler disco.current_round_block matches 1 run item replace entity @s hotbar.3 with minecraft:amethyst_block
execute as @a if score disco.handler disco.timer.example matches 1 if score disco.handler disco.current_round_block matches 1 run item replace entity @s hotbar.4 with minecraft:amethyst_block
execute as @a if score disco.handler disco.timer.example matches 1 if score disco.handler disco.current_round_block matches 1 run item replace entity @s hotbar.5 with minecraft:amethyst_block
execute as @a if score disco.handler disco.timer.example matches 1 if score disco.handler disco.current_round_block matches 1 run item replace entity @s hotbar.6 with minecraft:amethyst_block
execute as @a if score disco.handler disco.timer.example matches 1 if score disco.handler disco.current_round_block matches 1 run item replace entity @s hotbar.7 with minecraft:amethyst_block
execute as @a if score disco.handler disco.timer.example matches 1 if score disco.handler disco.current_round_block matches 1 run item replace entity @s hotbar.8 with minecraft:amethyst_block
execute as @a if score disco.handler disco.timer.example matches 1 if score disco.handler disco.current_round_block matches 1 run item replace entity @s weapon.offhand with minecraft:amethyst_block

execute as @a if score disco.handler disco.timer.example matches 1 if score disco.handler disco.current_round_block matches 2 run item replace entity @s hotbar.0 with minecraft:ochre_froglight
execute as @a if score disco.handler disco.timer.example matches 1 if score disco.handler disco.current_round_block matches 2 run item replace entity @s hotbar.1 with minecraft:ochre_froglight
execute as @a if score disco.handler disco.timer.example matches 1 if score disco.handler disco.current_round_block matches 2 run item replace entity @s hotbar.2 with minecraft:ochre_froglight
execute as @a if score disco.handler disco.timer.example matches 1 if score disco.handler disco.current_round_block matches 2 run item replace entity @s hotbar.3 with minecraft:ochre_froglight
execute as @a if score disco.handler disco.timer.example matches 1 if score disco.handler disco.current_round_block matches 2 run item replace entity @s hotbar.4 with minecraft:ochre_froglight
execute as @a if score disco.handler disco.timer.example matches 1 if score disco.handler disco.current_round_block matches 2 run item replace entity @s hotbar.5 with minecraft:ochre_froglight
execute as @a if score disco.handler disco.timer.example matches 1 if score disco.handler disco.current_round_block matches 2 run item replace entity @s hotbar.6 with minecraft:ochre_froglight
execute as @a if score disco.handler disco.timer.example matches 1 if score disco.handler disco.current_round_block matches 2 run item replace entity @s hotbar.7 with minecraft:ochre_froglight
execute as @a if score disco.handler disco.timer.example matches 1 if score disco.handler disco.current_round_block matches 2 run item replace entity @s hotbar.8 with minecraft:ochre_froglight
execute as @a if score disco.handler disco.timer.example matches 1 if score disco.handler disco.current_round_block matches 2 run item replace entity @s weapon.offhand with minecraft:ochre_froglight

execute as @a if score disco.handler disco.timer.example matches 1 if score disco.handler disco.current_round_block matches 3 run item replace entity @s hotbar.0 with minecraft:pink_wool
execute as @a if score disco.handler disco.timer.example matches 1 if score disco.handler disco.current_round_block matches 3 run item replace entity @s hotbar.1 with minecraft:pink_wool
execute as @a if score disco.handler disco.timer.example matches 1 if score disco.handler disco.current_round_block matches 3 run item replace entity @s hotbar.2 with minecraft:pink_wool
execute as @a if score disco.handler disco.timer.example matches 1 if score disco.handler disco.current_round_block matches 3 run item replace entity @s hotbar.3 with minecraft:pink_wool
execute as @a if score disco.handler disco.timer.example matches 1 if score disco.handler disco.current_round_block matches 3 run item replace entity @s hotbar.4 with minecraft:pink_wool
execute as @a if score disco.handler disco.timer.example matches 1 if score disco.handler disco.current_round_block matches 3 run item replace entity @s hotbar.5 with minecraft:pink_wool
execute as @a if score disco.handler disco.timer.example matches 1 if score disco.handler disco.current_round_block matches 3 run item replace entity @s hotbar.6 with minecraft:pink_wool
execute as @a if score disco.handler disco.timer.example matches 1 if score disco.handler disco.current_round_block matches 3 run item replace entity @s hotbar.7 with minecraft:pink_wool
execute as @a if score disco.handler disco.timer.example matches 1 if score disco.handler disco.current_round_block matches 3 run item replace entity @s hotbar.8 with minecraft:pink_wool
execute as @a if score disco.handler disco.timer.example matches 1 if score disco.handler disco.current_round_block matches 3 run item replace entity @s weapon.offhand with minecraft:pink_wool

execute as @a if score disco.handler disco.timer.example matches 1 if score disco.handler disco.current_round_block matches 4 run item replace entity @s hotbar.0 with minecraft:emerald_block
execute as @a if score disco.handler disco.timer.example matches 1 if score disco.handler disco.current_round_block matches 4 run item replace entity @s hotbar.1 with minecraft:emerald_block
execute as @a if score disco.handler disco.timer.example matches 1 if score disco.handler disco.current_round_block matches 4 run item replace entity @s hotbar.2 with minecraft:emerald_block
execute as @a if score disco.handler disco.timer.example matches 1 if score disco.handler disco.current_round_block matches 4 run item replace entity @s hotbar.3 with minecraft:emerald_block
execute as @a if score disco.handler disco.timer.example matches 1 if score disco.handler disco.current_round_block matches 4 run item replace entity @s hotbar.4 with minecraft:emerald_block
execute as @a if score disco.handler disco.timer.example matches 1 if score disco.handler disco.current_round_block matches 4 run item replace entity @s hotbar.5 with minecraft:emerald_block
execute as @a if score disco.handler disco.timer.example matches 1 if score disco.handler disco.current_round_block matches 4 run item replace entity @s hotbar.6 with minecraft:emerald_block
execute as @a if score disco.handler disco.timer.example matches 1 if score disco.handler disco.current_round_block matches 4 run item replace entity @s hotbar.7 with minecraft:emerald_block
execute as @a if score disco.handler disco.timer.example matches 1 if score disco.handler disco.current_round_block matches 4 run item replace entity @s hotbar.8 with minecraft:emerald_block
execute as @a if score disco.handler disco.timer.example matches 1 if score disco.handler disco.current_round_block matches 4 run item replace entity @s weapon.offhand with minecraft:emerald_block

execute as @a if score disco.handler disco.timer.example matches 1 if score disco.handler disco.current_round_block matches 5 run item replace entity @s hotbar.0 with minecraft:orange_glazed_terracotta
execute as @a if score disco.handler disco.timer.example matches 1 if score disco.handler disco.current_round_block matches 5 run item replace entity @s hotbar.1 with minecraft:orange_glazed_terracotta
execute as @a if score disco.handler disco.timer.example matches 1 if score disco.handler disco.current_round_block matches 5 run item replace entity @s hotbar.2 with minecraft:orange_glazed_terracotta
execute as @a if score disco.handler disco.timer.example matches 1 if score disco.handler disco.current_round_block matches 5 run item replace entity @s hotbar.3 with minecraft:orange_glazed_terracotta
execute as @a if score disco.handler disco.timer.example matches 1 if score disco.handler disco.current_round_block matches 5 run item replace entity @s hotbar.4 with minecraft:orange_glazed_terracotta
execute as @a if score disco.handler disco.timer.example matches 1 if score disco.handler disco.current_round_block matches 5 run item replace entity @s hotbar.5 with minecraft:orange_glazed_terracotta
execute as @a if score disco.handler disco.timer.example matches 1 if score disco.handler disco.current_round_block matches 5 run item replace entity @s hotbar.6 with minecraft:orange_glazed_terracotta
execute as @a if score disco.handler disco.timer.example matches 1 if score disco.handler disco.current_round_block matches 5 run item replace entity @s hotbar.7 with minecraft:orange_glazed_terracotta
execute as @a if score disco.handler disco.timer.example matches 1 if score disco.handler disco.current_round_block matches 5 run item replace entity @s hotbar.8 with minecraft:orange_glazed_terracotta
execute as @a if score disco.handler disco.timer.example matches 1 if score disco.handler disco.current_round_block matches 5 run item replace entity @s weapon.offhand with minecraft:orange_glazed_terracotta

# and update the floor

# first upper level
execute if score disco.handler disco.timer.example matches 1 in trials:disco run summon marker -25 20 -25 {NoGravity:true,Invulnerable:true,Tags:["upper_level"]}
execute as @e[tag=upper_level] store result entity @s Pos[0] double 1 run random value -25..16
execute as @e[tag=upper_level] store result entity @s Pos[1] double 1 run random value 20..70
execute as @e[tag=upper_level] store result entity @s Pos[2] double 1 run random value -25..16
execute as @e[tag=upper_level] positioned as @s in trials:disco run clone ~ ~ ~ ~8 ~ ~8 -4 107 -4
kill @e[tag=upper_level]

# then lower level
execute if score disco.handler disco.timer.example matches 1 in trials:disco run summon marker -25 20 -25 {NoGravity:true,Invulnerable:true,Tags:["lower_level"]}
execute as @e[tag=lower_level] store result entity @s Pos[0] double 1 run random value -25..14
execute as @e[tag=lower_level] store result entity @s Pos[1] double 1 run random value 20..70
execute as @e[tag=lower_level] store result entity @s Pos[2] double 1 run random value -25..14
execute as @e[tag=lower_level] positioned as @s in trials:disco run clone ~ ~ ~ ~10 ~ ~10 -5 103 -5
kill @e[tag=lower_level]

# <===== FLOOR CLEAR =====>

# wait appropriate amount of time then clear floor & increment round

# increment round counter
execute if score disco.handler disco.timer.example = disco.handler disco.current_round_length run scoreboard players add disco.handler disco.example_rounds 1

# remove black concrete
execute if score disco.handler disco.timer.example = disco.handler disco.current_round_length in trials:disco run fill -5 103 -5 5 107 5 air replace minecraft:black_concrete

# keep amethyst block
execute if score disco.handler disco.timer.example = disco.handler disco.current_round_length if score disco.handler disco.current_round_block matches 1 in trials:disco run fill -5 103 -5 5 107 5 air replace minecraft:ochre_froglight
execute if score disco.handler disco.timer.example = disco.handler disco.current_round_length if score disco.handler disco.current_round_block matches 1 in trials:disco run fill -5 103 -5 5 107 5 air replace minecraft:pink_wool
execute if score disco.handler disco.timer.example = disco.handler disco.current_round_length if score disco.handler disco.current_round_block matches 1 in trials:disco run fill -5 103 -5 5 107 5 air replace minecraft:emerald_block
execute if score disco.handler disco.timer.example = disco.handler disco.current_round_length if score disco.handler disco.current_round_block matches 1 in trials:disco run fill -5 103 -5 5 107 5 air replace minecraft:orange_glazed_terracotta
execute if score disco.handler disco.timer.example = disco.handler disco.current_round_length if score disco.handler disco.current_round_block matches 1 in trials:disco run fill -5 103 -5 5 107 5 air replace minecraft:tinted_glass

# keep ochre froglight
execute if score disco.handler disco.timer.example = disco.handler disco.current_round_length if score disco.handler disco.current_round_block matches 2 in trials:disco run fill -5 103 -5 5 107 5 air replace minecraft:amethyst_block
execute if score disco.handler disco.timer.example = disco.handler disco.current_round_length if score disco.handler disco.current_round_block matches 2 in trials:disco run fill -5 103 -5 5 107 5 air replace minecraft:pink_wool
execute if score disco.handler disco.timer.example = disco.handler disco.current_round_length if score disco.handler disco.current_round_block matches 2 in trials:disco run fill -5 103 -5 5 107 5 air replace minecraft:emerald_block
execute if score disco.handler disco.timer.example = disco.handler disco.current_round_length if score disco.handler disco.current_round_block matches 2 in trials:disco run fill -5 103 -5 5 107 5 air replace minecraft:orange_glazed_terracotta
execute if score disco.handler disco.timer.example = disco.handler disco.current_round_length if score disco.handler disco.current_round_block matches 2 in trials:disco run fill -5 103 -5 5 107 5 air replace minecraft:tinted_glass

# keep pink wool
execute if score disco.handler disco.timer.example = disco.handler disco.current_round_length if score disco.handler disco.current_round_block matches 3 in trials:disco run fill -5 103 -5 5 107 5 air replace minecraft:amethyst_block
execute if score disco.handler disco.timer.example = disco.handler disco.current_round_length if score disco.handler disco.current_round_block matches 3 in trials:disco run fill -5 103 -5 5 107 5 air replace minecraft:ochre_froglight
execute if score disco.handler disco.timer.example = disco.handler disco.current_round_length if score disco.handler disco.current_round_block matches 3 in trials:disco run fill -5 103 -5 5 107 5 air replace minecraft:emerald_block
execute if score disco.handler disco.timer.example = disco.handler disco.current_round_length if score disco.handler disco.current_round_block matches 3 in trials:disco run fill -5 103 -5 5 107 5 air replace minecraft:orange_glazed_terracotta
execute if score disco.handler disco.timer.example = disco.handler disco.current_round_length if score disco.handler disco.current_round_block matches 3 in trials:disco run fill -5 103 -5 5 107 5 air replace minecraft:tinted_glass

# keep emerald block
execute if score disco.handler disco.timer.example = disco.handler disco.current_round_length if score disco.handler disco.current_round_block matches 4 in trials:disco run fill -5 103 -5 5 107 5 air replace minecraft:amethyst_block
execute if score disco.handler disco.timer.example = disco.handler disco.current_round_length if score disco.handler disco.current_round_block matches 4 in trials:disco run fill -5 103 -5 5 107 5 air replace minecraft:ochre_froglight
execute if score disco.handler disco.timer.example = disco.handler disco.current_round_length if score disco.handler disco.current_round_block matches 4 in trials:disco run fill -5 103 -5 5 107 5 air replace minecraft:pink_wool
execute if score disco.handler disco.timer.example = disco.handler disco.current_round_length if score disco.handler disco.current_round_block matches 4 in trials:disco run fill -5 103 -5 5 107 5 air replace minecraft:orange_glazed_terracotta
execute if score disco.handler disco.timer.example = disco.handler disco.current_round_length if score disco.handler disco.current_round_block matches 4 in trials:disco run fill -5 103 -5 5 107 5 air replace minecraft:tinted_glass

# keep orange glazed terracotta
execute if score disco.handler disco.timer.example = disco.handler disco.current_round_length if score disco.handler disco.current_round_block matches 5 in trials:disco run fill -5 103 -5 5 107 5 air replace minecraft:amethyst_block
execute if score disco.handler disco.timer.example = disco.handler disco.current_round_length if score disco.handler disco.current_round_block matches 5 in trials:disco run fill -5 103 -5 5 107 5 air replace minecraft:ochre_froglight
execute if score disco.handler disco.timer.example = disco.handler disco.current_round_length if score disco.handler disco.current_round_block matches 5 in trials:disco run fill -5 103 -5 5 107 5 air replace minecraft:pink_wool
execute if score disco.handler disco.timer.example = disco.handler disco.current_round_length if score disco.handler disco.current_round_block matches 5 in trials:disco run fill -5 103 -5 5 107 5 air replace minecraft:emerald_block
execute if score disco.handler disco.timer.example = disco.handler disco.current_round_length if score disco.handler disco.current_round_block matches 5 in trials:disco run fill -5 103 -5 5 107 5 air replace minecraft:tinted_glass

# <===== ROUND END =====>

# round ends, reset timer & kill !players
execute if score disco.handler disco.timer.example = disco.handler disco.current_round_length_delay in trials:disco run clear @a *[!minecraft:dyed_color]
execute if score disco.handler disco.timer.example = disco.handler disco.current_round_length_delay in trials:disco run kill @e[type=!player]
execute if score disco.handler disco.timer.example = disco.handler disco.current_round_length_delay run scoreboard players set disco.handler disco.timer.example 0