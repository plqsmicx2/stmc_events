# this function handles all necessary checks during the round

# update border every tick
function survival_games:round3/border

# update deaths every tick
function survival_games:round3/death_handler

# update particles every tick
execute as @a[team=RED_RACCOONS] at @s if score @s sg.alive matches 1 anchored feet facing entity @a[team=RED_RACCOONS] eyes run particle minecraft:dripping_lava ^ ^0.5 ^ 0.2 0.2 0.2 0 2 force @s
execute as @a[team=ORANGE_OTTERS] at @s if score @s sg.alive matches 1 anchored feet facing entity @a[team=ORANGE_OTTERS] eyes run particle minecraft:wax_on ^ ^0.5 ^ 0.2 0.2 0.2 0 2 force @s
execute as @a[team=PINK_PIKAS] at @s if score @s sg.alive matches 1 anchored feet facing entity @a[team=PINK_PIKAS] eyes run particle minecraft:cherry_leaves ^ ^0.5 ^ 0.2 0.2 0.2 0 2 force @s
execute as @a[team=GREEN_GOATS] at @s if score @s sg.alive matches 1 anchored feet facing entity @a[team=GREEN_GOATS] eyes run particle minecraft:sneeze ^ ^0.5 ^ 0.2 0.2 0.2 0 2 force @s
execute as @a[team=CYAN_COUGARS] at @s if score @s sg.alive matches 1 anchored feet facing entity @a[team=CYAN_COUGARS] eyes run particle minecraft:glow ^ ^0.5 ^ 0.2 0.2 0.2 0 2 force @s
execute as @a[team=PURPLE_PENGUINS] at @s if score @s sg.alive matches 1 anchored feet facing entity @a[team=PURPLE_PENGUINS] eyes run particle minecraft:dragon_breath ^ ^0.5 ^ 0.2 0.2 0.2 0 2 force @s

# initial needs (when round starts)
# announcement
execute if score sg.r3.handler sg.r3.timer.round matches 1 run title @a title {text:"Go!",bold:true,color:"gold"}
# remove the glass barrier
# TODO ONLY WHEN IMPORTING INTO SERVER (need EssentialsX plugin)
# execute if score sg.r3.handler sg.r3.timer.round matches 1 run sudo plqsmic /pos1 -9 175 -9
# execute if score sg.r3.handler sg.r3.timer.round matches 1 run sudo plqsmic /pos2 9 180 9
# execute if score sg.r3.handler sg.r3.timer.round matches 2 run sudo plqsmic /replace red_wool green_wool
# in the meantime
execute if score sg.r3.handler sg.r3.timer.round matches 2 in survival_games:sg3 run tp @a 0 172 0

# after 2 seconds begin testing for players landing
execute as @a if score sg.r3.handler sg.r3.timer.round matches 40.. if items entity @s armor.chest minecraft:elytra unless entity @s[nbt={FallFlying:1b}] run item replace entity @s armor.chest with minecraft:air

# after 5 seconds remove fall damage immunity
execute if score sg.r3.handler sg.r3.timer.round matches 200 run yawp flag local survival_games:sg3 sg3-world fall-damage state Allowed
execute if score sg.r3.handler sg.r3.timer.round matches 200 run effect clear @a

# check if game is over & call reset if it is
execute if score sg.r3.handler sg.teams_alive matches 1 run function survival_games:round3/reset