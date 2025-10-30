# this function handles all necessary checks during the round

# update border every tick
function survival_games:round2/border

# update deaths every tick
function survival_games:round2/death_handler

# update particles every tick
execute as @a[team=RED_RACCOONS] at @s if score @s sg.alive matches 1 anchored feet facing entity @a[team=RED_RACCOONS] eyes run particle minecraft:dripping_lava ^ ^0.5 ^ 0.2 0.2 0.2 0 2 force @s
execute as @a[team=ORANGE_OTTERS] at @s if score @s sg.alive matches 1 anchored feet facing entity @a[team=ORANGE_OTTERS] eyes run particle minecraft:wax_on ^ ^0.5 ^ 0.2 0.2 0.2 0 2 force @s
execute as @a[team=PINK_PIKAS] at @s if score @s sg.alive matches 1 anchored feet facing entity @a[team=PINK_PIKAS] eyes run particle minecraft:cherry_leaves ^ ^0.5 ^ 0.2 0.2 0.2 0 2 force @s
execute as @a[team=YELLOW_YAKS] at @s if score @s sg.alive matches 1 anchored feet facing entity @a[team=YELLOW_YAKS] eyes run particle minecraft:dripping_honey ^ ^0.5 ^ 0.2 0.2 0.2 0 2 force @s
execute as @a[team=GREEN_GOATS] at @s if score @s sg.alive matches 1 anchored feet facing entity @a[team=GREEN_GOATS] eyes run particle minecraft:sneeze ^ ^0.5 ^ 0.2 0.2 0.2 0 2 force @s
execute as @a[team=CYAN_COUGARS] at @s if score @s sg.alive matches 1 anchored feet facing entity @a[team=CYAN_COUGARS] eyes run particle minecraft:glow ^ ^0.5 ^ 0.2 0.2 0.2 0 2 force @s
execute as @a[team=PURPLE_PENGUINS] at @s if score @s sg.alive matches 1 anchored feet facing entity @a[team=PURPLE_PENGUINS] eyes run particle minecraft:dragon_breath ^ ^0.5 ^ 0.2 0.2 0.2 0 2 force @s
execute as @a[team=BLUE_BEARS] at @s if score @s sg.alive matches 1 anchored feet facing entity @a[team=BLUE_BEARS] eyes run particle minecraft:rain ^ ^0.5 ^ 0.2 0.2 0.2 0 2 force @s

# initial needs (when round starts)
# announcement
execute if score sg.r2.handler sg.r2.timer.round matches 1 run title @a title {"text":"Go!","bold":true,"color":"gold"}
# remove the glass barrier
execute in survival_games:sg1 if score sg.r2.handler sg.r2.timer.round matches 1 run fill 8 175 8 -8 175 -8 air replace tinted_glass

# after 3 seconds begin testing for players landing
execute as @a if items entity @s armor.chest minecraft:elytra run effect give @s resistance 1 110 true
execute as @a if score sg.r2.handler sg.r2.timer.round matches 60.. if items entity @s armor.chest minecraft:elytra unless entity @s[nbt={FallFlying:1b}] run item replace entity @s armor.chest with minecraft:air

# after 10 seconds remove immunity
execute as @a if score sg.r2.handler sg.r2.timer.round matches 200 run attribute @s attack_damage base set 1.0
execute as @a if score sg.r2.handler sg.r2.timer.round matches 200 run attribute @s knockback_resistance base set 0.0
execute if score sg.r2.handler sg.r2.timer.round matches 200 run effect clear @a resistance
execute if score sg.r2.handler sg.r2.timer.round matches 200 run tellraw @a {"text":"Grace Period has ended.","color":"dark_red"}

# check if game is over & call reset if it is
execute if score sg.r2.handler sg.teams_alive matches 1 run function survival_games:round2/reset