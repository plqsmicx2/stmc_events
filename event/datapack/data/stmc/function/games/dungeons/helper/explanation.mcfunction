# helper function that explains the game
# this function is run on @s in stmc:dungeons

# blurb #1

execute if score dungeons.handler dungeons.timer.explanation matches 1 run gamemode spectator @a
execute if score dungeons.handler dungeons.timer.explanation matches 1 run tp @a 0 178 34 0 -5
execute if score dungeons.handler dungeons.timer.explanation matches 1 run title @a title {text:"DUNGEONS",color:"dark_red"}
execute if score dungeons.handler dungeons.timer.explanation matches 1 run tellraw @a {text:" "}
execute if score dungeons.handler dungeons.timer.explanation matches 1 run tellraw @a {text:"Dungeons is a team-focused PvE game.",color:"dark_red"}
execute if score dungeons.handler dungeons.timer.explanation matches 1 run tellraw @a {text:" "}
execute if score dungeons.handler dungeons.timer.explanation matches 1 run tellraw @a {text:"Your objective is to progress through six rooms as quickly as possible.",color:"dark_red"}
execute if score dungeons.handler dungeons.timer.explanation matches 1 run tellraw @a {text:" "}

# blurb #2
execute if score dungeons.handler dungeons.timer.explanation matches 100 run tp @a 1 179 63 160 30
execute if score dungeons.handler dungeons.timer.explanation matches 100 run tellraw @a {text:" "}
execute if score dungeons.handler dungeons.timer.explanation matches 100 run tellraw @a {text:"Each room will pit your team against mobs,",color:"dark_red"}
execute if score dungeons.handler dungeons.timer.explanation matches 100 run tellraw @a {text:"As you progress through the rooms, your gear will steadily improve.",color:"dark_red"}
execute if score dungeons.handler dungeons.timer.explanation matches 100 run tellraw @a {text:" "}
execute if score dungeons.handler dungeons.timer.explanation matches 100 run tellraw @a {text:"Within each room, you will also have access to various chests to bolster your gear.",color:"dark_red"}
execute if score dungeons.handler dungeons.timer.explanation matches 100 run tellraw @a {text:" "}

# blurb #3
execute if score dungeons.handler dungeons.timer.explanation matches 200 run tp @a 0 183 107 0 15
execute if score dungeons.handler dungeons.timer.explanation matches 200 run tellraw @a {text:" "}
execute if score dungeons.handler dungeons.timer.explanation matches 200 run tellraw @a {text:"Points will be earned primarily by completing rooms.",color:"dark_red"}
execute if score dungeons.handler dungeons.timer.explanation matches 200 run tellraw @a {text:" "}
execute if score dungeons.handler dungeons.timer.explanation matches 200 run tellraw @a {text:"However, the faster you complete each room, the more bonus points you will earn.",color:"dark_red"}
execute if score dungeons.handler dungeons.timer.explanation matches 200 run tellraw @a {text:" "}

# blurb #4
execute if score dungeons.handler dungeons.timer.explanation matches 300 run gamemode adventure @a
execute if score dungeons.handler dungeons.timer.explanation matches 300 run gamemode spectator @a[team=SPECTATORS]
execute if score dungeons.handler dungeons.timer.explanation matches 300 run tp @a[team=BLUE_BEARS] 0 30 0
execute if score dungeons.handler dungeons.timer.explanation matches 300 run tp @a[team=CYAN_COUGARS] 0 60 0
execute if score dungeons.handler dungeons.timer.explanation matches 300 run tp @a[team=RED_RACCOONS] 0 90 0
execute if score dungeons.handler dungeons.timer.explanation matches 300 run tp @a[team=GREEN_GOATS] 0 120 0
execute if score dungeons.handler dungeons.timer.explanation matches 300 run tp @a[team=PURPLE_PENGUINS] 0 150 0
execute if score dungeons.handler dungeons.timer.explanation matches 300 run tp @a[team=ORANGE_OTTERS] 0 180 0
execute if score dungeons.handler dungeons.timer.explanation matches 300 run tp @a[team=YELLOW_YAKS] 0 210 0
execute if score dungeons.handler dungeons.timer.explanation matches 300 run tp @a[team=PINK_PIKAS] 0 240 0
execute if score dungeons.handler dungeons.timer.explanation matches 300 run tellraw @a {text:" "}
execute if score dungeons.handler dungeons.timer.explanation matches 300 run tellraw @a {text:"The game begins in about 15 seconds.",color:"dark_red"}
execute if score dungeons.handler dungeons.timer.explanation matches 300 run tellraw @a {text:" "}
execute if score dungeons.handler dungeons.timer.explanation matches 300 run tellraw @a {text:"Good luck!",color:"dark_red"}
execute if score dungeons.handler dungeons.timer.explanation matches 300 run tellraw @a {text:" "}

# end explanation
execute if score dungeons.handler dungeons.timer.explanation matches 300.. run scoreboard players set dungeons.handler dungeons.stage 2