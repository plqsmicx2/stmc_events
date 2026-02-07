# tick function for players running davey's descent

# grant elytra
execute in stmc:race/daveys_descent as @s[x=-17,y=125,z=-10,dx=7,dy=3,dz=4] run item replace entity @s armor.chest with elytra[enchantments={"minecraft:binding_curse":1}]
execute in stmc:race/daveys_descent as @s[x=-17,y=125,z=-10,dx=7,dy=3,dz=4] run item replace entity @s armor.legs with slime_ball[equippable={slot:"legs",camera_overlay:"stmc:overlay/elytra_icon",equip_sound:"item.armor.equip_elytra"},minecraft:enchantments={binding_curse:1,vanishing_curse:1}]
# teleport players back to checkpoint if they're out of bounds
execute in stmc:race/daveys_descent if score @s race.checkpoints_completed matches 8 if entity @s[x=-17,dx=-100] run tp @s -14 126 -10
execute in stmc:race/daveys_descent if score @s race.checkpoints_completed matches 8 if entity @s[z=57,dz=50] run tp @s -14 126 -10
execute in stmc:race/daveys_descent if score @s race.checkpoints_completed matches 8 if entity @s[x=-11,dx=100,z=-7,dz=-50] run tp @s -14 126 -10
execute in stmc:race/daveys_descent if score @s race.checkpoints_completed matches 8 if entity @s[x=57,dx=50] run tp @s -14 126 -10

# grant boost
execute in stmc:race/daveys_descent as @s[x=-3,y=120,z=8,dx=3,dy=3] run item replace entity @s weapon.mainhand with \
        firework_rocket[fireworks={flight_duration:1},item_model="orange_dye",custom_name={text:"Boost",color:gold,bold:true}] 1

# remove elytra & boost
execute as @s unless score @s race.checkpoints_completed matches 8 if items entity @s armor.chest minecraft:elytra unless entity @s[nbt={FallFlying:1b}] run \
        clear @s firework_rocket
execute as @s unless score @s race.checkpoints_completed matches 8 if items entity @s armor.chest minecraft:elytra unless entity @s[nbt={FallFlying:1b}] run \
        clear @s slime_ball
execute as @s unless score @s race.checkpoints_completed matches 8 if items entity @s armor.chest minecraft:elytra unless entity @s[nbt={FallFlying:1b}] run \
        clear @s elytra
