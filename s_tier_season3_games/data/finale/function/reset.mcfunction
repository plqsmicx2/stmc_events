# reset function for finale

# determine winner
execute as @a[team=RED_RACCOONS] if score @s finale.stats.alive matches 1.. run scoreboard players set team.RedRaccoons stats.winningTeam 1
execute as @a[team=ORANGE_OTTERS] if score @s finale.stats.alive matches 1.. run scoreboard players set team.OrangeOtters stats.winningTeam 1
execute as @a[team=PINK_PIKAS] if score @s finale.stats.alive matches 1.. run scoreboard players set team.PinkPikas stats.winningTeam 1
execute as @a[team=GREEN_GOATS] if score @s finale.stats.alive matches 1.. run scoreboard players set team.GreenGoats stats.winningTeam 1
execute as @a[team=CYAN_COUGARS] if score @s finale.stats.alive matches 1.. run scoreboard players set team.CyanCougars stats.winningTeam 1
execute as @a[team=PURPLE_PENGUINS] if score @s finale.stats.alive matches 1.. run scoreboard players set team.PurplePenguins stats.winningTeam 1

# resets
execute as @a run attribute @s block_break_speed base set 1
gamerule naturalRegeneration true

# teleport players to lobby
execute in lobby:lobby run tp @a 0 101 0

# announce winner
execute if score team.RedRaccoons stats.winningTeam matches 1 run title @a title {text:"Red Raccoons Win!",color:red}
execute if score team.OrangeOtters stats.winningTeam matches 1 run title @a title {text:"Orange Otters Win!",color:gold}
execute if score team.PinkPikas stats.winningTeam matches 1 run title @a title {text:"Pink Pikas Win!",color:light_purple}
execute if score team.GreenGoats stats.winningTeam matches 1 run title @a title {text:"Green Goats Win!",color:dark_green}
execute if score team.CyanCougars stats.winningTeam matches 1 run title @a title {text:"Cyan Cougars Win!",color:dark_aqua}
execute if score team.PurplePenguins stats.winningTeam matches 1 run title @a title {text:"Purple Penguins Win!",color:dark_purple}

# play fireworks
execute as @a[team=RED_RACCOONS] at @s if score team.RedRaccoons stats.winningTeam matches 1 run playsound entity.firework_rocket.blast master @s ~ ~ ~ 1.2 1.2
execute as @a[team=ORANGE_OTTERS] at @s if score team.OrangeOtters stats.winningTeam matches 1 run playsound entity.firework_rocket.blast master @s ~ ~ ~ 1.2 1.2
execute as @a[team=PINK_PIKAS] at @s if score team.PinkPikas stats.winningTeam matches 1 run playsound entity.firework_rocket.blast master @s ~ ~ ~ 1.2 1.2
execute as @a[team=GREEN_GOATS] at @s if score team.GreenGoats stats.winningTeam matches 1 run playsound entity.firework_rocket.blast master @s ~ ~ ~ 1.2 1.2
execute as @a[team=CYAN_COUGARS] at @s if score team.CyanCougars stats.winningTeam matches 1 run playsound entity.firework_rocket.blast master @s ~ ~ ~ 1.2 1.2
execute as @a[team=PURPLE_PENGUINS] at @s if score team.PurplePenguins stats.winningTeam matches 1 run playsound entity.firework_rocket.blast master @s ~ ~ ~ 1.2 1.2

# move to post game
scoreboard players set stmc.handler event.stage 14