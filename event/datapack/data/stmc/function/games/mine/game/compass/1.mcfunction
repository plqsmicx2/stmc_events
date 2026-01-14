setblock 0 255 0 barrel{Items:[{Slot:0b,id:"minecraft:compass",count:1,components:{"minecraft:lodestone_tracker":{target:{dimension:"minecraft:overworld",pos:[I;0,0,0]},tracked:false}}}]}

data modify block 0 255 0 Items[0].components."minecraft:lodestone_tracker".target.dimension set from entity @s Dimension

execute at @s as @e[type=!player,type=!item,sort=furthest] positioned ~-20 ~-1 ~-20 if entity @s[dx=40,dy=2,dz=40] run data modify block 0 255 0 Items[0].components."minecraft:lodestone_tracker".target.pos set from entity @s Pos

item replace entity @s hotbar.1 from block 0 255 0 container.0
