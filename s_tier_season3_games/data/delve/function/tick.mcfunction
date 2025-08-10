# tick function for delve [DELVE]

# stages:
# 0- delay1 (clones, waiting for players)
# 1- explanation (explanation of game)
# 2- delay2 (40s, letting people understand, countdown at 5s)
# 3- game
# 4- delay3 (reset, points announcement)

# run load if we haven't already
execute unless score delve.handler delve.stage matches 0.. run function delve:load

# every tick functions
function delve:points_update
function delve:sidebar
function delve:bulb_checks

# <===== KILL SHERDS =====>

# pots
execute in delve:delve run kill @e[type=item,nbt={Item:{id:"minecraft:decorated_pot"}}]

# sherds
execute in delve:delve run clear @a[gamemode=survival] #minecraft:decorated_pot_sherds


# if we're in stage 1, increment timer
execute if score delve.handler delve.stage matches 0 run scoreboard players add delve.handler delve.timer.delay1 1

# reset world
execute in delve:delve if score delve.handler delve.timer.delay1 matches 40 run clone -104 26 -105 105 39 104 -104 86 -105
execute in delve:delve if score delve.handler delve.timer.delay1 matches 45 run clone -104 26 -105 105 39 104 -104 116 -105
execute in delve:delve if score delve.handler delve.timer.delay1 matches 50 run clone -104 26 -105 105 39 104 -104 146 -105
execute in delve:delve if score delve.handler delve.timer.delay1 matches 55 run clone -104 26 -105 105 39 104 -104 176 -105
execute in delve:delve if score delve.handler delve.timer.delay1 matches 60 run clone -104 26 -105 105 39 104 -104 206 -105
execute in delve:delve if score delve.handler delve.timer.delay1 matches 65 run clone -104 26 -105 105 39 104 -104 236 -105

execute in delve:delve if score delve.handler delve.timer.delay1 matches 200 run setblock 0 91 -1 minecraft:red_bed[part=head,facing=west]
execute in delve:delve if score delve.handler delve.timer.delay1 matches 200 run setblock 0 121 -1 minecraft:orange_bed[part=head,facing=west]
execute in delve:delve if score delve.handler delve.timer.delay1 matches 200 run setblock 0 151 -1 minecraft:pink_bed[part=head,facing=west]
execute in delve:delve if score delve.handler delve.timer.delay1 matches 200 run setblock 0 181 -1 minecraft:green_bed[part=head,facing=west]
execute in delve:delve if score delve.handler delve.timer.delay1 matches 200 run setblock 0 210 -1 minecraft:cyan_bed[part=head,facing=west]
execute in delve:delve if score delve.handler delve.timer.delay1 matches 200 run setblock 0 241 -1 minecraft:purple_bed[part=head,facing=west]

execute if score delve.handler delve.stage matches 0 if score delve.handler delve.timer.delay1 matches 400.. run scoreboard players set delve.handler delve.stage 1

# if we're in stage 2, increment timer & run explanation
execute if score delve.handler delve.stage matches 1 run scoreboard players add delve.handler delve.timer.explanation 1
execute if score delve.handler delve.stage matches 1 run function delve:explanation
execute if score delve.handler delve.stage matches 1 if score delve.handler delve.timer.explanation matches 800.. run scoreboard players set delve.handler delve.stage 2

# if we're in stage 3, increment timer & countdown at 5 seconds
execute if score delve.handler delve.stage matches 2 run scoreboard players add delve.handler delve.timer.delay2 1

# countdown
execute if score delve.handler delve.timer.delay2 matches 1100 run title @a actionbar {"text":"5 seconds!", "color":"light_purple", "bold":true}
execute if score delve.handler delve.timer.delay2 matches 1120 run title @a actionbar {"text":"4 seconds!", "color":"light_purple", "bold":true}
execute if score delve.handler delve.timer.delay2 matches 1140 run title @a actionbar {"text":"3 seconds!", "color":"light_purple", "bold":true}
execute if score delve.handler delve.timer.delay2 matches 1160 run title @a actionbar {"text":"2 seconds!", "color":"light_purple", "bold":true}
execute if score delve.handler delve.timer.delay2 matches 1180 run title @a actionbar {"text":"1 second!", "color":"light_purple", "bold":true}
execute if score delve.handler delve.timer.delay2 matches 1199 run title @a title {"text":"Go!", "color":"light_purple", "bold":true}

execute if score delve.handler delve.stage matches 2 if score delve.handler delve.timer.delay2 matches 1200.. run scoreboard players set delve.handler delve.stage 3

# if we're in stage 4 run game
execute if score delve.handler delve.stage matches 3 run scoreboard players add delve.handler delve.timer.game 1
execute if score delve.handler delve.stage matches 3 run function delve:game_tick

# if we're in stage 5 increment timer
execute if score delve.handler delve.stage matches 4 run scoreboard players add delve.handler delve.timer.delay3 1
execute if score delve.handler delve.stage matches 4 if score delve.handler delve.timer.delay3 matches 200 run function delve:points_announcement
execute if score delve.handler delve.stage matches 4 if score delve.handler delve.timer.delay3 matches 400.. run function delve:reset