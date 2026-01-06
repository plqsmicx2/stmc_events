# this function delivers the explanation of how blitz will work

# every 8 seconds, each blurb will be told to the players

# blurb #1
execute if score blitz.handler blitz.timer.explanation matches 1 run title @a title {"text":"BLITZ","color":"light_purple"}
execute if score blitz.handler blitz.timer.explanation matches 1 run gamemode spectator @a
execute if score blitz.handler blitz.timer.explanation matches 1 run teleport @a 60 130 60 135 20
execute if score blitz.handler blitz.timer.explanation matches 1 run tellraw @a {"text":" "}
execute if score blitz.handler blitz.timer.explanation matches 1 run tellraw @a {"text":"Blitz is a bedwars-inspired sky battle royale.","color":"light_purple"}
execute if score blitz.handler blitz.timer.explanation matches 1 run tellraw @a {"text":" "}
execute if score blitz.handler blitz.timer.explanation matches 1 run tellraw @a {"text":"There will be one round.","color":"light_purple"}
execute if score blitz.handler blitz.timer.explanation matches 1 run tellraw @a {"text":" "}

# blurb #2
execute if score blitz.handler blitz.timer.explanation matches 100 run teleport @a -3 101 108 -20 20
execute if score blitz.handler blitz.timer.explanation matches 100 run tellraw @a {"text":" "}
execute if score blitz.handler blitz.timer.explanation matches 100 run tellraw @a {"text":"Your main objectives are to break other teams' cores (their wool) and mine point crates in the center of the map.","color":"light_purple"}
execute if score blitz.handler blitz.timer.explanation matches 100 run tellraw @a {"text":" "}
execute if score blitz.handler blitz.timer.explanation matches 100 run tellraw @a {"text":"To help, different areas around the map will generate iron, gold, and emeralds.","color":"light_purple"}
execute if score blitz.handler blitz.timer.explanation matches 100 run tellraw @a {"text":" "}
execute if score blitz.handler blitz.timer.explanation matches 100 run tellraw @a {"text":"These ores can be spent at your home base to acquire more items.","color":"light_purple"}
execute if score blitz.handler blitz.timer.explanation matches 100 run tellraw @a {"text":" "}
execute if score blitz.handler blitz.timer.explanation matches 100 run tellraw @a {"text":"Keep inventory is on, so you will not lose these items/ores.","color":"light_purple"}
execute if score blitz.handler blitz.timer.explanation matches 100 run tellraw @a {"text":" "}

# blurb #3
execute if score blitz.handler blitz.timer.explanation matches 200 run teleport @a -29 115 41 145 -5
execute if score blitz.handler blitz.timer.explanation matches 200 run tellraw @a {"text":" "}
execute if score blitz.handler blitz.timer.explanation matches 200 run tellraw @a {"text":"The round will last twelve minutes.","color":"light_purple"}
execute if score blitz.handler blitz.timer.explanation matches 200 run tellraw @a {"text":" "}
execute if score blitz.handler blitz.timer.explanation matches 200 run tellraw @a {"text":"After three minutes, the central loot areas will be unlocked and a border will begin shrinking.","color":"light_purple"}
execute if score blitz.handler blitz.timer.explanation matches 200 run tellraw @a {"text":" "}
execute if score blitz.handler blitz.timer.explanation matches 200 run tellraw @a {"text":"By seven minutes, all teams' cores will be destroyed and the border will overtake home islands.","color":"light_purple"}
execute if score blitz.handler blitz.timer.explanation matches 200 run tellraw @a {"text":" "}
execute if score blitz.handler blitz.timer.explanation matches 200 run tellraw @a {"text":"If multiple teams survive all twelve minutes, they will all earn the top placement points.","color":"light_purple"}
execute if score blitz.handler blitz.timer.explanation matches 200 run tellraw @a {"text":" "}

# blurb #4
execute if score blitz.handler blitz.timer.explanation matches 300 run teleport @a 40 106 93 45 10
execute if score blitz.handler blitz.timer.explanation matches 300 run tellraw @a {"text":" "}
execute if score blitz.handler blitz.timer.explanation matches 300 run tellraw @a {"text":"Players may respawn so long as their teams' cores are intact.","color":"light_purple"}
execute if score blitz.handler blitz.timer.explanation matches 300 run tellraw @a {"text":" "}
execute if score blitz.handler blitz.timer.explanation matches 300 run tellraw @a {"text":"There is a 5 second respawn cooldown.","color":"light_purple"}
execute if score blitz.handler blitz.timer.explanation matches 300 run tellraw @a {"text":" "}

# blurb #5
execute if score blitz.handler blitz.timer.explanation matches 400 run teleport @a 0 172 0
execute if score blitz.handler blitz.timer.explanation matches 400 run gamemode adventure @a
execute if score blitz.handler blitz.timer.explanation matches 400 run gamemode spectator @a[team=SPECTATORS]
execute if score blitz.handler blitz.timer.explanation matches 400 run tellraw @a {text:" "}
execute if score blitz.handler blitz.timer.explanation matches 400 run tellraw @a {text:"The round starts in about 15 seconds.",color:"light_purple"}
execute if score blitz.handler blitz.timer.explanation matches 400 run tellraw @a {text:" "}
execute if score blitz.handler blitz.timer.explanation matches 400 run tellraw @a {text:"Good luck!",color:"light_purple"}
execute if score blitz.handler blitz.timer.explanation matches 400 run tellraw @a {text:" "}

# move to game
execute if score blitz.handler blitz.timer.explanation matches 400 run scoreboard players set blitz.handler blitz.stage 2