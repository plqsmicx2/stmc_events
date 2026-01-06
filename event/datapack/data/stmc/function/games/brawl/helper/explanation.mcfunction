# this function delivers the explanation of how BRAWL will work

# every 8 seconds, each blurb will be told to the players

# blurb #1
execute if score brawl.handler brawl.timer.explanation matches 1 run title @a title {"text":"BRAWL","color":"gold"}
execute if score brawl.handler brawl.timer.explanation matches 1 run gamemode spectator @a
execute if score brawl.handler brawl.timer.explanation matches 1 run teleport @a 93 130 83 -12 20
execute if score brawl.handler brawl.timer.explanation matches 1 run tellraw @a {"text":" "}
execute if score brawl.handler brawl.timer.explanation matches 1 run tellraw @a {"text":"Brawl is played just like survival games, but faster.","color":"gold"}
execute if score brawl.handler brawl.timer.explanation matches 1 run tellraw @a {"text":" "}
execute if score brawl.handler brawl.timer.explanation matches 1 run tellraw @a {"text":"There will be three rounds.","color":"gold"}
execute if score brawl.handler brawl.timer.explanation matches 1 run tellraw @a {"text":"Rounds 1 & 2 will be identical. Round 3 will be played at night.","color":"gold"}
execute if score brawl.handler brawl.timer.explanation matches 1 run tellraw @a {"text":" "}

# blurb #2
execute if score brawl.handler brawl.timer.explanation matches 100 run teleport @a 110 142 -137 20 25
execute if score brawl.handler brawl.timer.explanation matches 100 run tellraw @a {"text":" "}
execute if score brawl.handler brawl.timer.explanation matches 100 run tellraw @a {"text":"There is a 10 second grace period.","color":"red","bold":true}
execute if score brawl.handler brawl.timer.explanation matches 100 run tellraw @a {"text":" "}
execute if score brawl.handler brawl.timer.explanation matches 100 run tellraw @a {"text":"You will earn points for killing others and for your team surviving late into the game.","color":"gold"}
execute if score brawl.handler brawl.timer.explanation matches 100 run tellraw @a {"text":"All placement points are split among your team.","color":"gold"}
execute if score brawl.handler brawl.timer.explanation matches 100 run tellraw @a {"text":" "}

# blurb #3
execute if score brawl.handler brawl.timer.explanation matches 200 run teleport @a 40 140 -15 50 25
execute if score brawl.handler brawl.timer.explanation matches 200 run tellraw @a {"text":" "}
execute if score brawl.handler brawl.timer.explanation matches 200 run tellraw @a {"text":"Each round, the border will end in a completely random place.","color":"gold"}
execute if score brawl.handler brawl.timer.explanation matches 200 run tellraw @a {"text":" "}
execute if score brawl.handler brawl.timer.explanation matches 200 run tellraw @a {"text":"Above your hotbar will show how close to the border you are.","color":"gold"}
execute if score brawl.handler brawl.timer.explanation matches 200 run tellraw @a {"text":" "}
execute if score brawl.handler brawl.timer.explanation matches 200 run tellraw @a {"text":"The border moves fast, so don't lose track of it!","color":"gold"}
execute if score brawl.handler brawl.timer.explanation matches 200 run tellraw @a {"text":" "}

# blurb #4
execute if score brawl.handler brawl.timer.explanation matches 300 run teleport @a 0 172 0
execute if score brawl.handler brawl.timer.explanation matches 300 run gamemode adventure @a
execute if score brawl.handler brawl.timer.explanation matches 300 run gamemode spectator @a[team=SPECTATORS]
execute if score brawl.handler brawl.timer.explanation matches 300 run tellraw @a {text:" "}
execute if score brawl.handler brawl.timer.explanation matches 300 run tellraw @a {text:"The round starts in about 15 seconds.",color:"gold"}
execute if score brawl.handler brawl.timer.explanation matches 300 run tellraw @a {text:" "}
execute if score brawl.handler brawl.timer.explanation matches 300 run tellraw @a {text:"Good luck!",color:"gold"}
execute if score brawl.handler brawl.timer.explanation matches 300 run tellraw @a {text:" "}

# move to next stage
execute if score brawl.handler brawl.timer.explanation matches 300.. run scoreboard players set brawl.handler brawl.stage 2