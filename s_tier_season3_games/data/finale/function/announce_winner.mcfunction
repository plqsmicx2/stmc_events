# helper function to calculate & announce the final game winner

# determine winner
execute as @a[team=RED_RACCOONS] if score finale.RedRaccoons finale.round.completed matches 2.. run scoreboard players set team.RedRaccoons stats.winningTeam 1
execute as @a[team=ORANGE_OTTERS] if score finale.OrangeOtters finale.round.completed matches 2.. run scoreboard players set team.OrangeOtters stats.winningTeam 1
execute as @a[team=PINK_PIKAS] if score finale.PinkPikas finale.round.completed matches 2.. run scoreboard players set team.PinkPikas stats.winningTeam 1
execute as @a[team=YELLOW_YAKS] if score finale.YellowYaks finale.round.completed matches 2.. run scoreboard players set team.YellowYaks stats.winningTeam 1
execute as @a[team=GREEN_GOATS] if score finale.GreenGoats finale.round.completed matches 2.. run scoreboard players set team.GreenGoats stats.winningTeam 1
execute as @a[team=CYAN_COUGARS] if score finale.CyanCougars finale.round.completed matches 2.. run scoreboard players set team.CyanCougars stats.winningTeam 1
execute as @a[team=PURPLE_PENGUINS] if score finale.PurplePenguins finale.round.completed matches 2.. run scoreboard players set team.PurplePenguins stats.winningTeam 1
execute as @a[team=BLUE_BEARS] if score finale.BlueBears finale.round.completed matches 2.. run scoreboard players set team.BlueBears stats.winningTeam 1

# announce winner
execute if score team.RedRaccoons stats.winningTeam matches 1 run title @a title {text:"Red Raccoons Win!",color:red}
execute if score team.OrangeOtters stats.winningTeam matches 1 run title @a title {text:"Orange Otters Win!",color:gold}
execute if score team.PinkPikas stats.winningTeam matches 1 run title @a title {text:"Pink Pikas Win!",color:light_purple}
execute if score team.YellowYaks stats.winningTeam matches 1 run title @a title {text:"Yellow Yaks Win!",color:yellow}
execute if score team.GreenGoats stats.winningTeam matches 1 run title @a title {text:"Green Goats Win!",color:dark_green}
execute if score team.CyanCougars stats.winningTeam matches 1 run title @a title {text:"Cyan Cougars Win!",color:dark_aqua}
execute if score team.PurplePenguins stats.winningTeam matches 1 run title @a title {text:"Purple Penguins Win!",color:dark_purple}
execute if score team.BlueBears stats.winningTeam matches 1 run title @a title {text:"Blue Bears Win!",color:blue}

# play fireworks
execute as @a[team=RED_RACCOONS] at @s if score team.RedRaccoons stats.winningTeam matches 1 run playsound entity.firework_rocket.blast master @s ~ ~ ~ 1.2 1.2
execute as @a[team=ORANGE_OTTERS] at @s if score team.OrangeOtters stats.winningTeam matches 1 run playsound entity.firework_rocket.blast master @s ~ ~ ~ 1.2 1.2
execute as @a[team=PINK_PIKAS] at @s if score team.PinkPikas stats.winningTeam matches 1 run playsound entity.firework_rocket.blast master @s ~ ~ ~ 1.2 1.2
execute as @a[team=YELLOW_YAKS] at @s if score team.YellowYaks stats.winningTeam matches 1 run playsound entity.firework_rocket.blast master @s ~ ~ ~ 1.2 1.2
execute as @a[team=GREEN_GOATS] at @s if score team.GreenGoats stats.winningTeam matches 1 run playsound entity.firework_rocket.blast master @s ~ ~ ~ 1.2 1.2
execute as @a[team=CYAN_COUGARS] at @s if score team.CyanCougars stats.winningTeam matches 1 run playsound entity.firework_rocket.blast master @s ~ ~ ~ 1.2 1.2
execute as @a[team=PURPLE_PENGUINS] at @s if score team.PurplePenguins stats.winningTeam matches 1 run playsound entity.firework_rocket.blast master @s ~ ~ ~ 1.2 1.2
execute as @a[team=BLUE_BEARS] at @s if score team.BlueBears stats.winningTeam matches 1 run playsound entity.firework_rocket.blast master @s ~ ~ ~ 1.2 1.2
