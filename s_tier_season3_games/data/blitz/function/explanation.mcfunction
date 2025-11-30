# this function delivers the explanation of how blitz will work

# every 8 seconds, each blurb will be told to the players

# blurb #1
execute if score blitz.handler blitz.timer.explanation matches 1 run title @a title {"text":"BLITZ","color":"light_purple"}
execute if score blitz.handler blitz.timer.explanation matches 1 run gamemode spectator @a
execute if score blitz.handler blitz.timer.explanation matches 1 in blitz:blitz run teleport @a 60 130 60 135 20
execute if score blitz.handler blitz.timer.explanation matches 1 run tellraw @a {"text":" "}
execute if score blitz.handler blitz.timer.explanation matches 1 run tellraw @a {"text":"Blitz is a bedwars-inspired sky battle royale.","color":"light_purple"}
execute if score blitz.handler blitz.timer.explanation matches 1 run tellraw @a {"text":" "}
execute if score blitz.handler blitz.timer.explanation matches 1 run tellraw @a {"text":"There will be one round.","color":"light_purple"}
execute if score blitz.handler blitz.timer.explanation matches 1 run tellraw @a {"text":" "}

# blurb #2
execute if score blitz.handler blitz.timer.explanation matches 160 in blitz:blitz run teleport @a -3 101 108 -20 20
execute if score blitz.handler blitz.timer.explanation matches 160 run tellraw @a {"text":" "}
execute if score blitz.handler blitz.timer.explanation matches 160 run tellraw @a {"text":"Your main objectives are to break other teams' cores (their wool) and mine point crates in the center of the map.","color":"light_purple"}
execute if score blitz.handler blitz.timer.explanation matches 160 run tellraw @a {"text":" "}
execute if score blitz.handler blitz.timer.explanation matches 160 run tellraw @a {"text":"To help, different areas around the map will generate iron, gold, and emeralds.","color":"light_purple"}
execute if score blitz.handler blitz.timer.explanation matches 160 run tellraw @a {"text":" "}
execute if score blitz.handler blitz.timer.explanation matches 160 run tellraw @a {"text":"These ores can be spent at your home base to acquire more items.","color":"light_purple"}
execute if score blitz.handler blitz.timer.explanation matches 160 run tellraw @a {"text":" "}
execute if score blitz.handler blitz.timer.explanation matches 160 run tellraw @a {"text":"Keep inventory is on, so you will not lose these items/ores.","color":"light_purple"}
execute if score blitz.handler blitz.timer.explanation matches 160 run tellraw @a {"text":" "}

# blurb #3
execute if score blitz.handler blitz.timer.explanation matches 320 in blitz:blitz run teleport @a -29 115 41 145 -5
execute if score blitz.handler blitz.timer.explanation matches 320 run tellraw @a {"text":" "}
execute if score blitz.handler blitz.timer.explanation matches 320 run tellraw @a {"text":"The round will last twelve minutes.","color":"light_purple"}
execute if score blitz.handler blitz.timer.explanation matches 320 run tellraw @a {"text":" "}
execute if score blitz.handler blitz.timer.explanation matches 320 run tellraw @a {"text":"After three minutes, the central loot areas will be unlocked and a border will begin shrinking.","color":"light_purple"}
execute if score blitz.handler blitz.timer.explanation matches 320 run tellraw @a {"text":" "}
execute if score blitz.handler blitz.timer.explanation matches 320 run tellraw @a {"text":"By seven minutes, all teams' cores will be destroyed and home islands will be inaccessible.","color":"light_purple"}
execute if score blitz.handler blitz.timer.explanation matches 320 run tellraw @a {"text":" "}
execute if score blitz.handler blitz.timer.explanation matches 320 run tellraw @a {"text":"If multiple teams survive all twelve minutes, they will all earn the top placement points.","color":"light_purple"}
execute if score blitz.handler blitz.timer.explanation matches 320 run tellraw @a {"text":" "}

# blurb #4
execute if score blitz.handler blitz.timer.explanation matches 480 in blitz:blitz run teleport @a 40 106 93 45 10
execute if score blitz.handler blitz.timer.explanation matches 480 run tellraw @a {"text":" "}
execute if score blitz.handler blitz.timer.explanation matches 480 run tellraw @a {"text":"Players may respawn so long as their teams' cores are intact.","color":"light_purple"}
execute if score blitz.handler blitz.timer.explanation matches 480 run tellraw @a {"text":" "}
execute if score blitz.handler blitz.timer.explanation matches 480 run tellraw @a {"text":"There is a 5 second respawn cooldown.","color":"light_purple"}
execute if score blitz.handler blitz.timer.explanation matches 480 run tellraw @a {"text":" "}

# blurb #5
execute if score blitz.handler blitz.timer.explanation matches 640 in blitz:blitz run teleport @a 0 130 60 180 30
execute if score blitz.handler blitz.timer.explanation matches 640 run tellraw @a {"text":" "}
execute if score blitz.handler blitz.timer.explanation matches 640 run tellraw @a {"text":"Points will be earned for kills, point crates, cores, and placement.","color":"light_purple"}
execute if score blitz.handler blitz.timer.explanation matches 640 run tellraw @a {"text":" "}
execute if score blitz.handler blitz.timer.explanation matches 640 run tellraw @a [{"text":"Kill (on a player without a core): +","color":"light_purple"},{"text":"2","color":"dark_red"},{"text":" points","color":"light_purple"}]
execute if score blitz.handler blitz.timer.explanation matches 640 run tellraw @a [{"text":"Core Broken: +","color":"light_purple"},{"text":"20","color":"dark_red"},{"text":" points","color":"light_purple"}]
execute if score blitz.handler blitz.timer.explanation matches 640 run tellraw @a [{"text":"Point Crate Mined: +","color":"light_purple"},{"text":"10","color":"dark_red"},{"text":" points","color":"light_purple"}]
execute if score blitz.handler blitz.timer.explanation matches 640 run tellraw @a {"text":" "}
execute if score blitz.handler blitz.timer.explanation matches 640 run tellraw @a {"text":"Team placement points:","color":"light_purple"}
execute if score blitz.handler blitz.timer.explanation matches 640 run tellraw @a [{"text":"1st: ","color":"light_purple"},{"text":"100","color":"dark_red"},{"text":" points","color":"light_purple"}, \
                                                                                    {"text":"  |  ","color":"light_purple"},{"text":"2nd: ","color":"light_purple"},{"text":"80","color":"dark_red"},{"text":" points","color":"light_purple"}]
execute if score blitz.handler blitz.timer.explanation matches 640 run tellraw @a [{"text":"3rd: ","color":"light_purple"},{"text":"64","color":"dark_red"},{"text":" points","color":"light_purple"}, \
                                                                                    {"text":"  |  ","color":"light_purple"},{"text":"4th: ","color":"light_purple"},{"text":"48","color":"dark_red"},{"text":" points","color":"light_purple"}]
execute if score blitz.handler blitz.timer.explanation matches 640 run tellraw @a [{"text":"5th: ","color":"light_purple"},{"text":"32","color":"dark_red"},{"text":" points","color":"light_purple"}, \
                                                                                    {"text":"  |  ","color":"light_purple"},{"text":"6th: ","color":"light_purple"},{"text":"16","color":"dark_red"},{"text":" points","color":"light_purple"}]
#execute if score blitz.handler blitz.timer.explanation matches 640 run tellraw @a [{"text":"7th: ","color":"light_purple"},{"text":"4","color":"dark_red"},{"text":" points","color":"light_purple"}, \
                                                                                    {"text":"  |  ","color":"light_purple"},{"text":"8th: ","color":"light_purple"},{"text":"0","color":"dark_red"},{"text":" points","color":"light_purple"}]
execute if score blitz.handler blitz.timer.explanation matches 640 run tellraw @a {"text":" "}

# blurb #6
execute if score blitz.handler blitz.timer.explanation matches 799 in blitz:blitz run teleport @a 0 172 0
execute if score blitz.handler blitz.timer.explanation matches 799 run gamemode adventure @a
execute if score blitz.handler blitz.timer.explanation matches 799 run gamemode spectator @a[team=SPECTATORS]
execute if score blitz.handler blitz.timer.explanation matches 799 run tellraw @a {text:" "}
execute if score blitz.handler blitz.timer.explanation matches 799 run tellraw @a {text:"The round starts in about 20 seconds.",color:"light_purple"}
execute if score blitz.handler blitz.timer.explanation matches 799 run tellraw @a {text:" "}
execute if score blitz.handler blitz.timer.explanation matches 799 run tellraw @a {text:"Good luck!",color:"light_purple"}
execute if score blitz.handler blitz.timer.explanation matches 799 run tellraw @a {text:" "}