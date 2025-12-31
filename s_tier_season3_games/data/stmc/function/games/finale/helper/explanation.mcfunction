# this function delivers the explanation of how FINALE will work

# every 8 seconds, each blurb will be told to the players

# blurb #1
execute if score finale.handler finale.timer.explanation matches 1 run gamemode spectator @a
execute if score finale.handler finale.timer.explanation matches 1 run tp @a 6 154 0 90 65
execute if score finale.handler finale.timer.explanation matches 1 run title @a title {text:"FINALE",color:"white"}
execute if score finale.handler finale.timer.explanation matches 1 run tellraw @a {text:" "}
execute if score finale.handler finale.timer.explanation matches 10 if score team.RedRaccoons stats.points.team.rank matches 1 run tellraw @a {text:"Red Raccoons",color:red}
execute if score finale.handler finale.timer.explanation matches 10 if score team.OrangeOtters stats.points.team.rank matches 1 run tellraw @a {text:"Orange Otters",color:gold}
execute if score finale.handler finale.timer.explanation matches 10 if score team.PinkPikas stats.points.team.rank matches 1 run tellraw @a {text:"Pink Pikas",color:light_purple}
execute if score finale.handler finale.timer.explanation matches 10 if score team.YellowYaks stats.points.team.rank matches 1 run tellraw @a {text:"Yellow Yaks",color:yellow}
execute if score finale.handler finale.timer.explanation matches 10 if score team.GreenGoats stats.points.team.rank matches 1 run tellraw @a {text:"Green Goats",color:dark_green}
execute if score finale.handler finale.timer.explanation matches 10 if score team.CyanCougars stats.points.team.rank matches 1 run tellraw @a {text:"Cyan Cougars",color:dark_aqua}
execute if score finale.handler finale.timer.explanation matches 10 if score team.PurplePenguins stats.points.team.rank matches 1 run tellraw @a {text:"Purple Penguins",color:dark_purple}
execute if score finale.handler finale.timer.explanation matches 10 if score team.BlueBears stats.points.team.rank matches 1 run tellraw @a {text:"Blue Bears",color:blue}
execute if score finale.handler finale.timer.explanation matches 20 run tellraw @a {text:"versus",color:white}
execute if score finale.handler finale.timer.explanation matches 30 if score team.RedRaccoons stats.points.team.rank matches 2 run tellraw @a {text:"Red Raccoons",color:red}
execute if score finale.handler finale.timer.explanation matches 30 if score team.OrangeOtters stats.points.team.rank matches 2 run tellraw @a {text:"Orange Otters",color:gold}
execute if score finale.handler finale.timer.explanation matches 30 if score team.PinkPikas stats.points.team.rank matches 2 run tellraw @a {text:"Pink Pikas",color:light_purple}
execute if score finale.handler finale.timer.explanation matches 30 if score team.YellowYaks stats.points.team.rank matches 2 run tellraw @a {text:"Yellow Yaks",color:yellow}
execute if score finale.handler finale.timer.explanation matches 30 if score team.GreenGoats stats.points.team.rank matches 2 run tellraw @a {text:"Green Goats",color:dark_green}
execute if score finale.handler finale.timer.explanation matches 30 if score team.CyanCougars stats.points.team.rank matches 2 run tellraw @a {text:"Cyan Cougars",color:dark_aqua}
execute if score finale.handler finale.timer.explanation matches 30 if score team.PurplePenguins stats.points.team.rank matches 2 run tellraw @a {text:"Purple Penguins",color:dark_purple}
execute if score finale.handler finale.timer.explanation matches 30 if score team.BlueBears stats.points.team.rank matches 2 run tellraw @a {text:"Blue Bears",color:blue}
execute if score finale.handler finale.timer.explanation matches 30 run tellraw @a {text:" "}

# blurb #2
execute if score finale.handler finale.timer.explanation matches 100 run tp @a 0 152 14 180 30
execute if score finale.handler finale.timer.explanation matches 100 run tellraw @a {text:" "}
execute if score finale.handler finale.timer.explanation matches 100 run tellraw @a {text:"These two teams will play a best of three rounds.",color:white}
execute if score finale.handler finale.timer.explanation matches 100 run tellraw @a {text:" "}
execute if score finale.handler finale.timer.explanation matches 100 run tellraw @a {text:"Each round will be unique: Fight, Shoot, and Sumo.",color:white}
execute if score finale.handler finale.timer.explanation matches 100 run tellraw @a {text:" "}

# blurb #3
execute if score finale.handler finale.timer.explanation matches 200 run tp @a 0 152 -14 0 30
execute if score finale.handler finale.timer.explanation matches 200 run tellraw @a {text:" "}
execute if score finale.handler finale.timer.explanation matches 200 run tellraw @a {text:"The first place team will select the two rounds to play first.",color:white}
execute if score finale.handler finale.timer.explanation matches 200 run tellraw @a {text:" "}
execute if score finale.handler finale.timer.explanation matches 200 run tellraw @a {text:"The round they do not select will be left as a tiebreaker.",color:white}
execute if score finale.handler finale.timer.explanation matches 200 run tellraw @a {text:" "}

# blurb #4
execute if score finale.handler finale.timer.explanation matches 300 run tellraw @a {text:" "}
execute if score finale.handler finale.timer.explanation matches 300 run tellraw @a {text:"Good luck!",color:white}
execute if score finale.handler finale.timer.explanation matches 300 run tellraw @a {text:" "}

# move out of explanation phase
execute if score finale.handler finale.timer.explanation matches 300 run scoreboard players set finale.handler finale.stage 2