# tick function for players running davey's dream

# speed & jump pads
execute in stmc:race/daveys_dream as @s at @s if block ~ ~-1 ~ green_glazed_terracotta \
        run effect give @s jump_boost 1 5 true
execute in stmc:race/daveys_dream as @s at @s if block ~ ~-1 ~ pink_glazed_terracotta \
        run effect give @s speed 3 1 true

# grant elytra
execute in stmc:race/daveys_dream as @s[x=-8,dx=5,y=177,dy=4,z=-52,dz=4] run \
        item replace entity @s armor.chest with elytra[enchantments={"minecraft:binding_curse":1}]
execute in stmc:race/daveys_dream as @s[x=-8,dx=5,y=177,dy=4,z=-52,dz=4] run \
        item replace entity @s armor.legs with slime_ball[\
        equippable={slot:"legs",camera_overlay:"stmc:overlay/elytra_icon",equip_sound:"item.armor.equip_elytra"},\
        minecraft:enchantments={binding_curse:1,vanishing_curse:1}]

# teleport players back to checkpoint if they're out of bounds
execute if score @s race.checkpoints_completed matches 5 unless entity @s[nbt={FallFlying:1b}] at @s \
        unless block ~ ~-1 ~ #wool unless block ~ ~-1 ~ purple_concrete unless block ~ ~-1 ~ air \
        run tp @s -3.8 178.0 -49.0 -83 38

# grant boost
execute in stmc:race/daveys_dream as @s[x=45,dx=1,y=143,dy=4,z=-32,dz=4] run item replace entity @s weapon.mainhand with \
        firework_rocket[fireworks={flight_duration:1},item_model="orange_dye",custom_name={text:"Boost",color:gold,bold:true}] 1

# remove elytra & boost
execute as @s unless score @s race.checkpoints_completed matches 5 if items entity @s armor.chest minecraft:elytra unless entity @s[nbt={FallFlying:1b}] run \
        clear @s firework_rocket
execute as @s unless score @s race.checkpoints_completed matches 5 if items entity @s armor.chest minecraft:elytra unless entity @s[nbt={FallFlying:1b}] run \
        clear @s slime_ball
execute as @s unless score @s race.checkpoints_completed matches 5 if items entity @s armor.chest minecraft:elytra unless entity @s[nbt={FallFlying:1b}] run \
        clear @s elytra

# kill items
execute in stmc:race/daveys_dream run kill @e[type=item,nbt={Item:{id:"minecraft:elytra"}}]
execute in stmc:race/daveys_dream run kill @e[type=item,nbt={Item:{id:"minecraft:firework_rocket"}}]
execute in stmc:race/daveys_dream run kill @e[type=item,nbt={Item:{id:"minecraft:red_dye"}}]

# remove dolphin's grace between checkpoints 6-11
execute as @s if score @s race.checkpoints_completed matches 6..11 run effect clear @s dolphins_grace
execute as @s unless score @s race.checkpoints_completed matches 6..11 run \
        effect give @s dolphins_grace infinite 1 true