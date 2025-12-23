
#execute in lobby:lobby_2 run tp @a 0 100 0

#trigger swap spectator and creative
#scoreboard objectives add gamemode dummy
#/tellraw @p ["|| ",{"click_event":{"action":"suggest_command","command":"/trigger gamemode set 1"},"color":"aqua","text":"Creative"},\
  {"text":"\n|| "},{"click_event":{"action":"suggest_command","command":"/trigger gamemode set 3"},"color":"blue","text":"Spectator"}]
scoreboard players enable @a gamemode
execute as @a[scores={gamemode=1}] run gamemode creative
execute as @a[scores={gamemode=3}] run gamemode spectator
scoreboard players reset @a gamemode

#stop maximum chests
#scoreboard objectives add build.place.chest minecraft.used:minecraft.chest
#scoreboard objectives add build.place.oxidized minecraft.used:minecraft.oxidized_copper_chest
#scoreboard objectives add build.place.copper minecraft.used:minecraft.waxed_copper_chest
execute as @a[scores={build.place.chest=11..}] run clear @s chest
execute as @a[scores={build.place.oxidized=4..}] run clear @s oxidized_copper_chest
execute as @a[scores={build.place.copper=2..}] run clear @s waxed_copper_chest

#problem entities
kill @e[type=tnt]
kill @e[type=tnt_minecart]
kill @e[type=ender_dragon]
kill @e[type=wither]
kill @e[type=fireball]
kill @e[type=wither_skull]
kill @e[type=command_block_minecart]
kill @e[type=end_crystal]

#gamerules
gamerule mobGriefing false
gamerule pvp false
gamerule doMobSpawning false