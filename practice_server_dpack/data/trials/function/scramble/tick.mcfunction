# update sidebar
function trials:scramble/sidebar

# give players item to return to trials hub
execute as @a[team=dim.tr.scramble] run item replace entity @s hotbar.8 with warped_fungus_on_a_stick[item_model=compass,custom_name={"bold":true,"color":"dark_aqua","text":"TRIALS HUB","underlined":true}]
execute as @a[team=dim.tr.scramble] if score @s tr.return matches 1.. run function trials:teleport
scoreboard players set @a tr.return 0

execute in trials:scramble run kill @e[type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick"}}]
execute in trials:scramble run kill @e[type=item,nbt={Item:{id:"minecraft:warped_fungus_on_a_stick"}}]

execute in trials:scramble run kill @e[type=item,nbt={Item:{id:"minecraft:stripped_dark_oak_wood"}}]
execute in trials:scramble run kill @e[type=item,nbt={Item:{id:"minecraft:snow_block"}}]
execute in trials:scramble run kill @e[type=item,nbt={Item:{id:"minecraft:moss_block"}}]
execute in trials:scramble run kill @e[type=item,nbt={Item:{id:"minecraft:light_blue_wool"}}]
execute in trials:scramble run kill @e[type=item,nbt={Item:{id:"minecraft:shroomlight"}}]

# update games currently active
function trials:scramble/game_tick
#execute as @a if score @s scramble.lobby1 matches 1.. run function trials:scramble/game_tick {x:191,y:96,z:-9}
#execute as @a if score @s scramble.lobby2 matches 1.. run function trials:scramble/game_tick {x:-9,y:96,z:191}
#execute as @a if score @s scramble.lobby3 matches 1.. run function trials:scramble/game_tick {x:-209,y:96,z:-9}
#execute as @a if score @s scramble.lobby4 matches 1.. run function trials:scramble/game_tick {x:-9,y:96,z:-209}