# Helper function for tick
# this function runs as @s for all players currently racing

# <===== INCREMENT TIMERS =====>

# increment players' timers
execute if score @s race.laps_completed matches 0 run scoreboard players add @s race.laptime.1 1
execute if score @s race.laps_completed matches 1 run scoreboard players add @s race.laptime.2 1
execute if score @s race.laps_completed matches 2 run scoreboard players add @s race.laptime.3 1
#execute if score @s race.laps_completed matches 3 run scoreboard players add @s race.laptime.4 1

# sum timers
scoreboard players set @s race.laptime.total 0
scoreboard players operation @s race.laptime.total += @s race.laptime.1
scoreboard players operation @s race.laptime.total += @s race.laptime.2
scoreboard players operation @s race.laptime.total += @s race.laptime.3
#scoreboard players operation @s race.laptime.total += @s race.laptime.4

# increment each players' lap times for display
execute if score @s race.laps_completed matches 0..2 run scoreboard players add @s race.laptime.tick 1

execute if score @s race.laps_completed matches 0..2 if score @s race.laptime.tick matches 20 run scoreboard players add @s race.laptime.seconds 1
execute if score @s race.laps_completed matches 0..2 if score @s race.laptime.tick matches 20 run scoreboard players set @s race.laptime.tick 0

execute if score @s race.laps_completed matches 0..2 if score @s race.laptime.seconds matches 60 run scoreboard players add @s race.laptime.mins 1
execute if score @s race.laps_completed matches 0..2 if score @s race.laptime.seconds matches 60 run scoreboard players set @s race.laptime.seconds 0

# announce player current time
execute if score @s race.laptime.seconds matches 0..9 run title @s actionbar [{score:{name:"@s",objective:"race.laptime.mins"},bold:true,color:"green"},{text:":0",color:"green"},{score:{name:"@s",objective:"race.laptime.seconds"},color:"green"}]
execute if score @s race.laptime.seconds matches 10.. run title @s actionbar [{score:{name:"@s",objective:"race.laptime.mins"},bold:true,color:"green"},{text:":",color:"green"},{score:{name:"@s",objective:"race.laptime.seconds"},color:"green"}]

# <===== LAP COMPLETIONS =====>

# checkpoint update (also checks for lap completions)
execute unless score @s race.laps_completed matches 3.. as @s run function race:checkpoint_update

# give return to last checkpoint item
item replace entity @s hotbar.7 with warped_fungus_on_a_stick[item_model="red_dye",custom_name={text:"Return",color:red,bold:true}] 1

# check for checkpoint returns
execute if score @s race.return matches 1.. as @s in race:race run function race:helper/checkpoint_return
scoreboard players set @s race.return 0

# grant elytra
execute in race:race as @s[x=-17,y=125,z=-10,dx=7,dy=3,dz=4] run item replace entity @s armor.chest with elytra[enchantments={"minecraft:binding_curse":1}]
execute in race:race as @s[x=-17,y=125,z=-10,dx=7,dy=3,dz=4] run item replace entity @s armor.legs with slime_ball[equippable={slot:"legs",camera_overlay:"stmc:overlay/elytra_icon",equip_sound:"item.armor.equip_elytra"},minecraft:enchantments={binding_curse:1,vanishing_curse:1}]
# teleport players back to checkpoint if they're out of bounds
execute in race:race if score @s race.checkpoints_completed matches 8 if entity @s[x=-17,dx=-100] run tp @s -14 126 -10
execute in race:race if score @s race.checkpoints_completed matches 8 if entity @s[z=57,dz=50] run tp @s -14 126 -10
execute in race:race if score @s race.checkpoints_completed matches 8 if entity @s[x=-11,dx=100,z=-7,dz=-50] run tp @s -14 126 -10
execute in race:race if score @s race.checkpoints_completed matches 8 if entity @s[x=57,dx=50] run tp @s -14 126 -10

# grant boost
execute in race:race as @s[x=-3,y=120,z=8,dx=3,dy=3] run item replace entity @s weapon.mainhand with \
        firework_rocket[fireworks={flight_duration:1},item_model="orange_dye",custom_name={text:"Boost",color:gold,bold:true}] 1

# remove elytra & boost
execute as @s unless score @s race.checkpoints_completed matches 8 if items entity @s armor.chest minecraft:elytra unless entity @s[nbt={FallFlying:1b}] run \
        clear @s firework_rocket
execute as @s unless score @s race.checkpoints_completed matches 8 if items entity @s armor.chest minecraft:elytra unless entity @s[nbt={FallFlying:1b}] run \
        clear @s elytra

# run reset on players once they complete
execute if score @s race.laps_completed matches 3.. as @s run function race:reset

# store player/team completion ranks & announce completion
execute if score @s race.laps_completed matches 3.. unless score @s race.completion.rank matches 1.. if score @s race.laptime.seconds matches 0..9 run tellraw @a ["",{selector:"@s"},{text:" finished #",color:"green"},{score:{name:"race.handler",objective:"race.players_completed"},bold:true,color:"red"},{text:" in ",color:"green"},{score:{name:"@s",objective:"race.laptime.mins"},bold:true,color:"gold"},{text:":0",bold:true,color:"gold"},{score:{name:"@s",objective:"race.laptime.seconds"},bold:true,color:"gold"},{text:"!",color:"green"},{text:"!",color:"green"}]
execute if score @s race.laps_completed matches 3.. unless score @s race.completion.rank matches 1.. if score @s race.laptime.seconds matches 10.. run tellraw @a ["",{selector:"@s"},{text:" finished #",color:"green"},{score:{name:"race.handler",objective:"race.players_completed"},bold:true,color:"red"},{text:" in ",color:"green"},{score:{name:"@s",objective:"race.laptime.mins"},bold:true,color:"gold"},{text:":",bold:true,color:"gold"},{score:{name:"@s",objective:"race.laptime.seconds"},bold:true,color:"gold"},{text:"!",color:"green"},{text:"!",color:"green"}]
execute if score @s race.laps_completed matches 3.. unless score @s race.completion.rank matches 1.. run scoreboard players operation @s race.completion.rank = race.handler race.players_completed