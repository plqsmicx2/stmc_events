# this function delivers the explanation of how BRAWL will work

# every 8 seconds, each blurb will be told to the players

# blurb #1
execute if score sg.r1.handler sg.r1.timer.explanation matches 1 run title @a title {"text":"BRAWL","color":"gold"}
execute if score sg.r1.handler sg.r1.timer.explanation matches 1 run gamemode spectator @a
execute if score sg.r1.handler sg.r1.timer.explanation matches 1 in survival_games:sg1 run teleport @a 95 140 -95 -60 20
execute if score sg.r1.handler sg.r1.timer.explanation matches 1 run tellraw @a {"text":" "}
execute if score sg.r1.handler sg.r1.timer.explanation matches 1 run tellraw @a {"text":"Brawl is played just like hunger games, but faster.","color":"gold"}
execute if score sg.r1.handler sg.r1.timer.explanation matches 1 run tellraw @a {"text":" "}
execute if score sg.r1.handler sg.r1.timer.explanation matches 1 run tellraw @a {"text":"There will be three rounds.","color":"gold"}
execute if score sg.r1.handler sg.r1.timer.explanation matches 1 run tellraw @a {"text":"Each round will be the same.","color":"gold"}
execute if score sg.r1.handler sg.r1.timer.explanation matches 1 run tellraw @a {"text":" "}

# blurb #2
execute if score sg.r1.handler sg.r1.timer.explanation matches 160 in survival_games:sg1 run teleport @a -40 125 115 155 25
execute if score sg.r1.handler sg.r1.timer.explanation matches 160 run tellraw @a {"text":" "}
execute if score sg.r1.handler sg.r1.timer.explanation matches 160 run tellraw @a [{"text":"Kills are worth ","color":"gold"},{"text":"+20","color":"dark_red"},{"text":" points","color":"gold"}]
execute if score sg.r1.handler sg.r1.timer.explanation matches 160 run tellraw @a {"text":" "}
execute if score sg.r1.handler sg.r1.timer.explanation matches 160 run tellraw @a {"text":"There is a 10 second grace period.","color":"red","bold":true}
execute if score sg.r1.handler sg.r1.timer.explanation matches 160 run tellraw @a {"text":" "}
execute if score sg.r1.handler sg.r1.timer.explanation matches 160 run tellraw @a {"text":"There are no individual placement points.","color":"gold"}
execute if score sg.r1.handler sg.r1.timer.explanation matches 160 run tellraw @a {"text":" "}

# blurb #3
execute if score sg.r1.handler sg.r1.timer.explanation matches 320 in survival_games:sg1 run teleport @a 55 125 50 -100 15
execute if score sg.r1.handler sg.r1.timer.explanation matches 320 run tellraw @a {"text":" "}
execute if score sg.r1.handler sg.r1.timer.explanation matches 320 run tellraw @a {"text":"Placing higher as a team earns points.","color":"gold"}
execute if score sg.r1.handler sg.r1.timer.explanation matches 320 run tellraw @a {"text":"These are split evenly among the team & awarded at the round end.","color":"gold"}
execute if score sg.r1.handler sg.r1.timer.explanation matches 320 run tellraw @a [{"text":"1st: ","color":"gold"},{"text":"440","color":"dark_red"},{"text":" points","color":"gold"}]
execute if score sg.r1.handler sg.r1.timer.explanation matches 320 run tellraw @a [{"text":"2nd: ","color":"gold"},{"text":"360","color":"dark_red"},{"text":" points","color":"gold"}]
execute if score sg.r1.handler sg.r1.timer.explanation matches 320 run tellraw @a [{"text":"3rd: ","color":"gold"},{"text":"300","color":"dark_red"},{"text":" points","color":"gold"}]
execute if score sg.r1.handler sg.r1.timer.explanation matches 320 run tellraw @a [{"text":"4th: ","color":"gold"},{"text":"240","color":"dark_red"},{"text":" points","color":"gold"}]
execute if score sg.r1.handler sg.r1.timer.explanation matches 320 run tellraw @a [{"text":"5th: ","color":"gold"},{"text":"180","color":"dark_red"},{"text":" points","color":"gold"}]
execute if score sg.r1.handler sg.r1.timer.explanation matches 320 run tellraw @a [{"text":"6th: ","color":"gold"},{"text":"120","color":"dark_red"},{"text":" points","color":"gold"}]
execute if score sg.r1.handler sg.r1.timer.explanation matches 320 run tellraw @a [{"text":"7th: ","color":"gold"},{"text":"60","color":"dark_red"},{"text":" points","color":"gold"}]
execute if score sg.r1.handler sg.r1.timer.explanation matches 320 run tellraw @a [{"text":"8th: ","color":"gold"},{"text":"0","color":"dark_red"},{"text":" points","color":"gold"}]
execute if score sg.r1.handler sg.r1.timer.explanation matches 320 run tellraw @a {"text":" "}

# blurb #4
execute if score sg.r1.handler sg.r1.timer.explanation matches 480 in survival_games:sg1 run teleport @a 6 115 6 135 40
execute if score sg.r1.handler sg.r1.timer.explanation matches 480 run tellraw @a {"text":" "}
execute if score sg.r1.handler sg.r1.timer.explanation matches 480 run tellraw @a {"text":"The players who get the most kills will also earn a bonus:","color":"gold"}
execute if score sg.r1.handler sg.r1.timer.explanation matches 480 run tellraw @a [{"text":"1st: ","color":"gold"},{"text":"75","color":"dark_red"},{"text":" points","color":"gold"}]
execute if score sg.r1.handler sg.r1.timer.explanation matches 480 run tellraw @a [{"text":"2nd: ","color":"gold"},{"text":"50","color":"dark_red"},{"text":" points","color":"gold"}]
execute if score sg.r1.handler sg.r1.timer.explanation matches 480 run tellraw @a [{"text":"3rd: ","color":"gold"},{"text":"35","color":"dark_red"},{"text":" points","color":"gold"}]
execute if score sg.r1.handler sg.r1.timer.explanation matches 480 run tellraw @a [{"text":"4th: ","color":"gold"},{"text":"20","color":"dark_red"},{"text":" points","color":"gold"}]
execute if score sg.r1.handler sg.r1.timer.explanation matches 480 run tellraw @a [{"text":"5th: ","color":"gold"},{"text":"10","color":"dark_red"},{"text":" points","color":"gold"}]
execute if score sg.r1.handler sg.r1.timer.explanation matches 480 run tellraw @a {"text":" "}

# blurb #5 (also announces end)
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
execute if score sg.r1.handler sg.r1.timer.explanation matches 799 run tellraw @a {"text":" "}
execute if score sg.r1.handler sg.r1.timer.explanation matches 799 run tellraw @a {"text":"The round starts in about 20 seconds.","color":"gold"}
execute if score sg.r1.handler sg.r1.timer.explanation matches 799 run tellraw @a {"text":" "}
execute if score sg.r1.handler sg.r1.timer.explanation matches 799 run tellraw @a {"text":"Good luck!","color":"gold"}
execute if score sg.r1.handler sg.r1.timer.explanation matches 799 run tellraw @a {"text":" "}