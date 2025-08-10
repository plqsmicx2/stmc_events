# this function delivers the explanation of how FINALE will work

# every 8 seconds, each blurb will be told to the players

# blurb #1
execute if score finale.handler finale.timer.explanation matches 1 run title @a title {text:"FINALE",color:"white"}
execute if score finale.handler finale.timer.explanation matches 1 run tellraw @a {text:" "}
execute if score finale.handler finale.timer.explanation matches 1 if score team.RedRaccoons stats.points.team.rank matches 1 run tellraw @a {text:"Red Raccoons",color:red}
execute if score finale.handler finale.timer.explanation matches 1 if score team.OrangeOtters stats.points.team.rank matches 1 run tellraw @a {text:"Orange Otters",color:gold}
execute if score finale.handler finale.timer.explanation matches 1 if score team.PinkPikas stats.points.team.rank matches 1 run tellraw @a {text:"Pink Pikas",color:light_purple}
execute if score finale.handler finale.timer.explanation matches 1 if score team.GreenGoats stats.points.team.rank matches 1 run tellraw @a {text:"Green Goats",color:dark_green}
execute if score finale.handler finale.timer.explanation matches 1 if score team.CyanCougars stats.points.team.rank matches 1 run tellraw @a {text:"Cyan Cougars",color:dark_aqua}
execute if score finale.handler finale.timer.explanation matches 1 if score team.PurplePenguins stats.points.team.rank matches 1 run tellraw @a {text:"Purple Penguins",color:dark_purple}
execute if score finale.handler finale.timer.explanation matches 1 run tellraw @a {text:"versus",color:white}
execute if score finale.handler finale.timer.explanation matches 1 if score team.RedRaccoons stats.points.team.rank matches 2 run tellraw @a {text:"Red Raccoons",color:red}
execute if score finale.handler finale.timer.explanation matches 1 if score team.OrangeOtters stats.points.team.rank matches 2 run tellraw @a {text:"Orange Otters",color:gold}
execute if score finale.handler finale.timer.explanation matches 1 if score team.PinkPikas stats.points.team.rank matches 2 run tellraw @a {text:"Pink Pikas",color:light_purple}
execute if score finale.handler finale.timer.explanation matches 1 if score team.GreenGoats stats.points.team.rank matches 2 run tellraw @a {text:"Green Goats",color:dark_green}
execute if score finale.handler finale.timer.explanation matches 1 if score team.CyanCougars stats.points.team.rank matches 2 run tellraw @a {text:"Cyan Cougars",color:dark_aqua}
execute if score finale.handler finale.timer.explanation matches 1 if score team.PurplePenguins stats.points.team.rank matches 2 run tellraw @a {text:"Purple Penguins",color:dark_purple}
execute if score finale.handler finale.timer.explanation matches 1 run tellraw @a {text:" "}

# blurb #2
execute if score finale.handler finale.timer.explanation matches 160 run tellraw @a {text:" "}
execute if score finale.handler finale.timer.explanation matches 160 run tellraw @a {text:"Your objective is to kill all players on the other team.",color:white}
execute if score finale.handler finale.timer.explanation matches 160 run tellraw @a {text:" "}
execute if score finale.handler finale.timer.explanation matches 160 run tellraw @a {text:"Each player has one life.",color:white}
execute if score finale.handler finale.timer.explanation matches 160 run tellraw @a {text:" "}
execute if score finale.handler finale.timer.explanation matches 160 run tellraw @a [{text:"Natural regeneration is ",color:white},{text:"off",color:red,bold:true},{text:".",color:white}]
execute if score finale.handler finale.timer.explanation matches 160 run tellraw @a {text:" "}
execute if score finale.handler finale.timer.explanation matches 160 run tellraw @a {text:"There is one round.",color:white}
execute if score finale.handler finale.timer.explanation matches 160 run tellraw @a {text:" "}

# blurb #3
execute if score finale.handler finale.timer.explanation matches 320 run tellraw @a {text:" "}
execute if score finale.handler finale.timer.explanation matches 320 run tellraw @a {text:"There are additional items scattered across the map in barrels.",color:red}
execute if score finale.handler finale.timer.explanation matches 320 run tellraw @a {text:" "}

# blurb #4
execute if score finale.handler finale.timer.explanation matches 480 run tellraw @a {text:" "}
execute if score finale.handler finale.timer.explanation matches 480 run tellraw @a {text:"After one minute, all alive players will get poison.",color:white}
execute if score finale.handler finale.timer.explanation matches 480 run tellraw @a {text:" "}

# blurb #5
execute if score finale.handler finale.timer.explanation matches 640 run tellraw @a {text:" "}
execute if score finale.handler finale.timer.explanation matches 640 run tellraw @a {text:"Good luck!",color:white}
execute if score finale.handler finale.timer.explanation matches 640 run tellraw @a {text:" "}