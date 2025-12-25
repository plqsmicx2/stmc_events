# this function delivers the explanation of how FINALE will work

# every 8 seconds, each blurb will be told to the players

# blurb #1
execute if score finale.handler finale.timer.explanation matches 1 run gamemode spectator @a
execute if score finale.handler finale.timer.explanation matches 1 in stmc:finale run tp @a 6 154 0 90 65
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
execute if score finale.handler finale.timer.explanation matches 160 in stmc:finale run tp @a 0 152 14 180 30
execute if score finale.handler finale.timer.explanation matches 160 run tellraw @a {text:" "}
execute if score finale.handler finale.timer.explanation matches 160 run tellraw @a {text:"Your objective is to knock all of your opponents off the platform.",color:white}
execute if score finale.handler finale.timer.explanation matches 160 run tellraw @a {text:" "}
execute if score finale.handler finale.timer.explanation matches 160 run tellraw @a {text:"Each player has one life.",color:white}
execute if score finale.handler finale.timer.explanation matches 160 run tellraw @a {text:" "}

# blurb #3
execute if score finale.handler finale.timer.explanation matches 320 in stmc:finale run tp @a 0 152 -14 0 30
execute if score finale.handler finale.timer.explanation matches 320 run tellraw @a {text:" "}
execute if score finale.handler finale.timer.explanation matches 320 run tellraw @a {text:"There will be three rounds.",color:white}
execute if score finale.handler finale.timer.explanation matches 320 run tellraw @a {text:" "}
execute if score finale.handler finale.timer.explanation matches 320 run tellraw @a {text:"The first team to win two rounds will be crowned the winner!",color:white}
execute if score finale.handler finale.timer.explanation matches 320 run tellraw @a {text:" "}

# blurb #5
execute in stmc:finale if score finale.handler finale.timer.explanation matches 480 run function stmc:games/finale/start_round
execute if score finale.handler finale.timer.explanation matches 480 run tellraw @a {text:" "}
execute if score finale.handler finale.timer.explanation matches 480 run tellraw @a {text:"Good luck!",color:white}
execute if score finale.handler finale.timer.explanation matches 480 run tellraw @a {text:" "}