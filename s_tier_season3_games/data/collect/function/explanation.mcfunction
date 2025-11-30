# this function delivers the explanation of how collect will work

# every 8 seconds, each blurb will be told to the players

# blurb #1
execute if score collect.handler collect.timer.explanation matches 1 run title @a title {"text":"COLLECT","color":"aqua"}
execute if score collect.handler collect.timer.explanation matches 1 run gamemode spectator @a
execute if score collect.handler collect.timer.explanation matches 1 in minecraft:overworld run teleport @a 11 80 9 -45 35
execute if score collect.handler collect.timer.explanation matches 1 run tellraw @a {"text":" "}
execute if score collect.handler collect.timer.explanation matches 1 run tellraw @a {"text":"Collect is a simple vanilla-oriented game.","color":"aqua"}
execute if score collect.handler collect.timer.explanation matches 1 run tellraw @a {"text":" "}
execute if score collect.handler collect.timer.explanation matches 1 run tellraw @a {"text":"There will be one, 12-minute round.","color":"aqua"}
execute if score collect.handler collect.timer.explanation matches 1 run tellraw @a {"text":" "}

# blurb #2
execute if score collect.handler collect.timer.explanation matches 160 in minecraft:overworld run teleport @a -107 64 -43 120 10
execute if score collect.handler collect.timer.explanation matches 160 run tellraw @a {"text":" "}
execute if score collect.handler collect.timer.explanation matches 160 run tellraw @a {"text":"Your objective is to obtain the following five items before other teams:","color":"aqua"}
execute if score collect.handler collect.timer.explanation matches 160 run tellraw @a {"text":" "}
execute if score collect.handler collect.timer.explanation matches 160 run tellraw @a {"text":"Conduit","color":"aqua"}
execute if score collect.handler collect.timer.explanation matches 160 run tellraw @a {"text":"Ender Chest","color":"aqua"}
execute if score collect.handler collect.timer.explanation matches 160 run tellraw @a {"text":"Waxed Weathered Cut Copper Stairs","color":"aqua"}
execute if score collect.handler collect.timer.explanation matches 160 run tellraw @a {"text":"Shulker Box","color":"aqua"}
execute if score collect.handler collect.timer.explanation matches 160 run tellraw @a {"text":"Mud Bricks","color":"aqua"}
execute if score collect.handler collect.timer.explanation matches 160 run tellraw @a {"text":" "}

# blurb #3
execute if score collect.handler collect.timer.explanation matches 320 in minecraft:overworld run teleport @a 30 115 -117 -80 10
execute if score collect.handler collect.timer.explanation matches 320 run tellraw @a {"text":" "}
execute if score collect.handler collect.timer.explanation matches 320 run tellraw @a {"text":"To help you, some custom recipes have been provided.","color":"aqua"}
execute if score collect.handler collect.timer.explanation matches 320 run tellraw @a {"text":" "}
execute if score collect.handler collect.timer.explanation matches 320 run tellraw @a {"text":"Since both the nether and end are disabled, these recipes will be your only source of materials from those dimensions.","color":"aqua"}
execute if score collect.handler collect.timer.explanation matches 320 run tellraw @a {"text":" "}

# blurb #5
execute if score collect.handler collect.timer.explanation matches 480 in minecraft:overworld run teleport @a -18 -27 215 0 15
execute if score collect.handler collect.timer.explanation matches 480 run tellraw @a {"text":" "}
execute if score collect.handler collect.timer.explanation matches 480 run tellraw @a {"text":"Points will be earned for being one of the first four teams to acquire each item:","color":"aqua"}
execute if score collect.handler collect.timer.explanation matches 480 run tellraw @a {"text":" "}
execute if score collect.handler collect.timer.explanation matches 480 run tellraw @a [{"text":"1st: ","color":"aqua"},{"text":"80","color":"dark_red"},{"text":" points","color":"aqua"}]
execute if score collect.handler collect.timer.explanation matches 480 run tellraw @a [{"text":"2nd: ","color":"aqua"},{"text":"60","color":"dark_red"},{"text":" points","color":"aqua"}]
execute if score collect.handler collect.timer.explanation matches 480 run tellraw @a [{"text":"3rd: ","color":"aqua"},{"text":"40","color":"dark_red"},{"text":" points","color":"aqua"}]
execute if score collect.handler collect.timer.explanation matches 480 run tellraw @a [{"text":"4th: ","color":"aqua"},{"text":"20","color":"dark_red"},{"text":" points","color":"aqua"}]
execute if score collect.handler collect.timer.explanation matches 480 run tellraw @a {"text":" "}
execute if score collect.handler collect.timer.explanation matches 480 run tellraw @a {"text":"All points are split among your team.","color":"aqua"}
execute if score collect.handler collect.timer.explanation matches 480 run tellraw @a {"text":" "}

# blurb #6
execute if score collect.handler collect.timer.explanation matches 639 in minecraft:overworld run teleport @a 0 172 0
execute if score collect.handler collect.timer.explanation matches 639 run gamemode adventure @a
execute if score collect.handler collect.timer.explanation matches 639 run gamemode spectator @a[team=SPECTATORS]
execute if score collect.handler collect.timer.explanation matches 639 run tellraw @a {text:" "}
execute if score collect.handler collect.timer.explanation matches 639 run tellraw @a {text:"The game starts in about 20 seconds.",color:"aqua"}
execute if score collect.handler collect.timer.explanation matches 639 run tellraw @a {text:" "}
execute if score collect.handler collect.timer.explanation matches 639 run tellraw @a {text:"Good luck!",color:"aqua"}
execute if score collect.handler collect.timer.explanation matches 639 run tellraw @a {text:" "}