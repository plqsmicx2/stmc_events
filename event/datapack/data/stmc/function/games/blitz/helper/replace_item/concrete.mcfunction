# helper function that replaces all mined concrete
# with concrete that can be placed

# check for concrete on ground
# if the concrete cannot be placed, summon one that can be placed
# and delete the one that cannot

# red
execute as @e[type=item,nbt={Item:{id:"minecraft:red_concrete"}}] at @s unless entity @s[nbt={Item:{components:{"minecraft:can_place_on":[]}}}] run \
        summon item ~ ~ ~ {Item:{id:"red_concrete",components:{can_place_on:[{"blocks":"#stmc:all"}],"tooltip_display":{hidden_components:[can_place_on]}}}}
execute as @e[type=item,nbt={Item:{id:"minecraft:red_concrete"}}] unless entity @s[nbt={Item:{components:{"minecraft:can_place_on":[]}}}] run \
        kill @s

# orange
execute as @e[type=item,nbt={Item:{id:"minecraft:orange_concrete"}}] at @s unless entity @s[nbt={Item:{components:{"minecraft:can_place_on":[]}}}] run \
        summon item ~ ~ ~ {Item:{id:"orange_concrete",components:{can_place_on:[{"blocks":"#stmc:all"}],"tooltip_display":{hidden_components:[can_place_on]}}}}
execute as @e[type=item,nbt={Item:{id:"minecraft:orange_concrete"}}] unless entity @s[nbt={Item:{components:{"minecraft:can_place_on":[]}}}] run \
        kill @s

# pink
execute as @e[type=item,nbt={Item:{id:"minecraft:pink_concrete"}}] at @s unless entity @s[nbt={Item:{components:{"minecraft:can_place_on":[]}}}] run \
        summon item ~ ~ ~ {Item:{id:"pink_concrete",components:{can_place_on:[{"blocks":"#stmc:all"}],"tooltip_display":{hidden_components:[can_place_on]}}}}
execute as @e[type=item,nbt={Item:{id:"minecraft:pink_concrete"}}] unless entity @s[nbt={Item:{components:{"minecraft:can_place_on":[]}}}] run \
        kill @s

# yellow
execute as @e[type=item,nbt={Item:{id:"minecraft:yellow_concrete"}}] at @s unless entity @s[nbt={Item:{components:{"minecraft:can_place_on":[]}}}] run \
        summon item ~ ~ ~ {Item:{id:"yellow_concrete",components:{can_place_on:[{"blocks":"#stmc:all"}],"tooltip_display":{hidden_components:[can_place_on]}}}}
execute as @e[type=item,nbt={Item:{id:"minecraft:yellow_concrete"}}] unless entity @s[nbt={Item:{components:{"minecraft:can_place_on":[]}}}] run \
        kill @s

# green
execute as @e[type=item,nbt={Item:{id:"minecraft:green_concrete"}}] at @s unless entity @s[nbt={Item:{components:{"minecraft:can_place_on":[]}}}] run \
        summon item ~ ~ ~ {Item:{id:"green_concrete",components:{can_place_on:[{"blocks":"#stmc:all"}],"tooltip_display":{hidden_components:[can_place_on]}}}}
execute as @e[type=item,nbt={Item:{id:"minecraft:green_concrete"}}] unless entity @s[nbt={Item:{components:{"minecraft:can_place_on":[]}}}] run \
        kill @s

# cyan
execute as @e[type=item,nbt={Item:{id:"minecraft:cyan_concrete"}}] at @s unless entity @s[nbt={Item:{components:{"minecraft:can_place_on":[]}}}] run \
        summon item ~ ~ ~ {Item:{id:"cyan_concrete",components:{can_place_on:[{"blocks":"#stmc:all"}],"tooltip_display":{hidden_components:[can_place_on]}}}}
execute as @e[type=item,nbt={Item:{id:"minecraft:cyan_concrete"}}] unless entity @s[nbt={Item:{components:{"minecraft:can_place_on":[]}}}] run \
        kill @s

# purple
execute as @e[type=item,nbt={Item:{id:"minecraft:purple_concrete"}}] at @s unless entity @s[nbt={Item:{components:{"minecraft:can_place_on":[]}}}] run \
        summon item ~ ~ ~ {Item:{id:"purple_concrete",components:{can_place_on:[{"blocks":"#stmc:all"}],"tooltip_display":{hidden_components:[can_place_on]}}}}
execute as @e[type=item,nbt={Item:{id:"minecraft:purple_concrete"}}] unless entity @s[nbt={Item:{components:{"minecraft:can_place_on":[]}}}] run \
        kill @s

# blue
execute as @e[type=item,nbt={Item:{id:"minecraft:blue_concrete"}}] at @s unless entity @s[nbt={Item:{components:{"minecraft:can_place_on":[]}}}] run \
        summon item ~ ~ ~ {Item:{id:"blue_concrete",components:{can_place_on:[{"blocks":"#stmc:all"}],"tooltip_display":{hidden_components:[can_place_on]}}}}
execute as @e[type=item,nbt={Item:{id:"minecraft:blue_concrete"}}] unless entity @s[nbt={Item:{components:{"minecraft:can_place_on":[]}}}] run \
        kill @s
