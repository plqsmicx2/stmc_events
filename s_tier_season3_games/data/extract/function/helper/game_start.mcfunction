scoreboard players set extract.handler extract.stage 3

gamemode adventure @a

scoreboard players set extract.handler extract.stats.roundsCompleted 0

# remove temporary scoreboards
scoreboard objectives remove .doubleValueDiamond
scoreboard objectives remove .doubleValueGold

# increment rounds played
scoreboard players add extract.handler extract.stats.roundsCompleted 1

# reset scoreboards
scoreboard players set extract.handler extract.timer.game.round 0

# world resets
execute in extract:extract run kill @e[type=item]
execute in extract:extract run kill @e[type=armor_stand]
execute in extract:extract run kill @e[type=interaction]

# reset player values
scoreboard players set @a extract.stats.alive 1
scoreboard players set @a extract.stats.deaths 0
scoreboard players set @a extract.stats.kit 0

# and handle everything else for players
clear @a
effect clear @a
effect give @a slow_falling 3 0 true
effect give @a instant_health 1 110 true
effect give @a saturation 1 110 true
gamemode adventure @a
item replace entity @a armor.feet with chainmail_boots[attribute_modifiers= \ 
        [{id:"block_break_speed",type:"block_break_speed",amount:-0.99,operation:"add_value",slot:"any",display:{type:"hidden"}}], \ 
        enchantments={"minecraft:binding_curse":1}]