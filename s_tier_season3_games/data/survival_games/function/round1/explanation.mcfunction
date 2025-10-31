# this function delivers the explanation of how BRAWL will work

# every 8 seconds, each blurb will be told to the players

# blurb #1
execute if score sg.r1.handler sg.r1.timer.explanation matches 1 run title @a title {"text":"BRAWL","color":"gold"}
execute if score sg.r1.handler sg.r1.timer.explanation matches 1 run gamemode spectator @a
execute if score sg.r1.handler sg.r1.timer.explanation matches 1 in survival_games:sg1 run teleport @a 93 130 83 -12 20
execute if score sg.r1.handler sg.r1.timer.explanation matches 1 run tellraw @a {"text":" "}
execute if score sg.r1.handler sg.r1.timer.explanation matches 1 run tellraw @a {"text":"Brawl is played just like hunger games, but faster.","color":"gold"}
execute if score sg.r1.handler sg.r1.timer.explanation matches 1 run tellraw @a {"text":" "}
execute if score sg.r1.handler sg.r1.timer.explanation matches 1 run tellraw @a {"text":"There will be three rounds.","color":"gold"}
execute if score sg.r1.handler sg.r1.timer.explanation matches 1 run tellraw @a {"text":"Rounds 1 & 2 will be identical. Round 3 will be played at night.","color":"gold"}
execute if score sg.r1.handler sg.r1.timer.explanation matches 1 run tellraw @a {"text":" "}

# blurb #2
execute if score sg.r1.handler sg.r1.timer.explanation matches 160 in survival_games:sg1 run teleport @a 110 142 -137 20 25
execute if score sg.r1.handler sg.r1.timer.explanation matches 160 run tellraw @a {"text":" "}
execute if score sg.r1.handler sg.r1.timer.explanation matches 160 run tellraw @a [{"text":"Kills are worth ","color":"gold"},{"text":"+4","color":"dark_red"},{"text":" points","color":"gold"}]
execute if score sg.r1.handler sg.r1.timer.explanation matches 160 run tellraw @a {"text":" "}
execute if score sg.r1.handler sg.r1.timer.explanation matches 160 run tellraw @a {"text":"There is a 10 second grace period.","color":"red","bold":true}
execute if score sg.r1.handler sg.r1.timer.explanation matches 160 run tellraw @a {"text":" "}
execute if score sg.r1.handler sg.r1.timer.explanation matches 160 run tellraw @a {"text":"There are no individual placement points.","color":"gold"}
execute if score sg.r1.handler sg.r1.timer.explanation matches 160 run tellraw @a {"text":" "}

# blurb #3
execute if score sg.r1.handler sg.r1.timer.explanation matches 320 in survival_games:sg1 run teleport @a -37 131 111 160 20
execute if score sg.r1.handler sg.r1.timer.explanation matches 320 run tellraw @a {"text":" "}
execute if score sg.r1.handler sg.r1.timer.explanation matches 320 run tellraw @a {"text":"Placing higher as a team earns points.","color":"gold"}
execute if score sg.r1.handler sg.r1.timer.explanation matches 320 run tellraw @a {"text":"These are split evenly among the team & awarded at the round end.","color":"gold"}
execute if score sg.r1.handler sg.r1.timer.explanation matches 320 run tellraw @a [{"text":"1st: ","color":"gold"},{"text":"52","color":"dark_red"},{"text":" points","color":"gold"}, \
                                                                                    {"text":"  |  ","color":"gold"},{"text":"2nd: ","color":"gold"},{"text":"40","color":"dark_red"},{"text":" points","color":"gold"}]
execute if score sg.r1.handler sg.r1.timer.explanation matches 320 run tellraw @a [{"text":"3rd: ","color":"gold"},{"text":"32","color":"dark_red"},{"text":" points","color":"gold"}, \
                                                                                    {"text":"  |  ","color":"gold"},{"text":"4th: ","color":"gold"},{"text":"24","color":"dark_red"},{"text":" points","color":"gold"}]
execute if score sg.r1.handler sg.r1.timer.explanation matches 320 run tellraw @a [{"text":"5th: ","color":"gold"},{"text":"16","color":"dark_red"},{"text":" points","color":"gold"}, \
                                                                                    {"text":"  |  ","color":"gold"},{"text":"6th: ","color":"gold"},{"text":"8","color":"dark_red"},{"text":" points","color":"gold"}]
execute if score sg.r1.handler sg.r1.timer.explanation matches 320 run tellraw @a [{"text":"7th: ","color":"gold"},{"text":"4","color":"dark_red"},{"text":" points","color":"gold"}, \
                                                                                    {"text":"  |  ","color":"gold"},{"text":"8th: ","color":"gold"},{"text":"0","color":"dark_red"},{"text":" points","color":"gold"}]
execute if score sg.r1.handler sg.r1.timer.explanation matches 320 run tellraw @a {"text":" "}

# blurb #4
execute if score sg.r1.handler sg.r1.timer.explanation matches 480 in survival_games:sg1 run teleport @a -3 140 -35 135 25
execute if score sg.r1.handler sg.r1.timer.explanation matches 480 run tellraw @a {"text":" "}
execute if score sg.r1.handler sg.r1.timer.explanation matches 480 run tellraw @a {"text":"The players who get the most kills will also earn a bonus:","color":"gold"}
execute if score sg.r1.handler sg.r1.timer.explanation matches 480 run tellraw @a [{"text":"1st: ","color":"gold"},{"text":"20","color":"dark_red"},{"text":" points","color":"gold"}]
execute if score sg.r1.handler sg.r1.timer.explanation matches 480 run tellraw @a [{"text":"2nd: ","color":"gold"},{"text":"16","color":"dark_red"},{"text":" points","color":"gold"}]
execute if score sg.r1.handler sg.r1.timer.explanation matches 480 run tellraw @a [{"text":"3rd: ","color":"gold"},{"text":"12","color":"dark_red"},{"text":" points","color":"gold"}]
execute if score sg.r1.handler sg.r1.timer.explanation matches 480 run tellraw @a [{"text":"4th: ","color":"gold"},{"text":"8","color":"dark_red"},{"text":" points","color":"gold"}]
execute if score sg.r1.handler sg.r1.timer.explanation matches 480 run tellraw @a [{"text":"5th: ","color":"gold"},{"text":"4","color":"dark_red"},{"text":" points","color":"gold"}]
execute if score sg.r1.handler sg.r1.timer.explanation matches 480 run tellraw @a {"text":" "}

# blurb #5
execute if score sg.r1.handler sg.r1.timer.explanation matches 640 in survival_games:sg1 run teleport @a 40 140 -15 50 25
execute if score sg.r1.handler sg.r1.timer.explanation matches 640 run tellraw @a {"text":" "}
execute if score sg.r1.handler sg.r1.timer.explanation matches 640 run tellraw @a {"text":"Each round, the border will end in a completely random place.","color":"gold"}
execute if score sg.r1.handler sg.r1.timer.explanation matches 640 run tellraw @a {"text":" "}
execute if score sg.r1.handler sg.r1.timer.explanation matches 640 run tellraw @a {"text":"Above your hotbar will show how close to the border you are.","color":"gold"}
execute if score sg.r1.handler sg.r1.timer.explanation matches 640 run tellraw @a {"text":" "}
execute if score sg.r1.handler sg.r1.timer.explanation matches 640 run tellraw @a {"text":"The border moves fast, so don't lose track of it!","color":"gold"}
execute if score sg.r1.handler sg.r1.timer.explanation matches 640 run tellraw @a {"text":" "}

# blurb #6
execute if score sg.r1.handler sg.r1.timer.explanation matches 799 in survival_games:sg1 run teleport @a 0 177 0
execute if score sg.r1.handler sg.r1.timer.explanation matches 799 run gamemode adventure @a
execute if score sg.r1.handler sg.r1.timer.explanation matches 799 run gamemode spectator @a[team=SPECTATORS]
execute if score sg.r1.handler sg.r1.timer.explanation matches 799 run tellraw @a {text:" "}
execute if score sg.r1.handler sg.r1.timer.explanation matches 799 run tellraw @a {text:"The round starts in about 20 seconds.",color:"gold"}
execute if score sg.r1.handler sg.r1.timer.explanation matches 799 run tellraw @a {text:" "}
execute if score sg.r1.handler sg.r1.timer.explanation matches 799 run tellraw @a {text:"Good luck!",color:"gold"}
execute if score sg.r1.handler sg.r1.timer.explanation matches 799 run tellraw @a {text:" "}