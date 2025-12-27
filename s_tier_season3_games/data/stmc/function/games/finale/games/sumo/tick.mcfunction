
# countdown
execute if score finale.handler finale.round.timer matches 300 run title @a actionbar {"text":"5 seconds!", "color":white}
execute if score finale.handler finale.round.timer matches 320 run title @a actionbar {"text":"4 seconds!", "color":white}
execute if score finale.handler finale.round.timer matches 340 run title @a actionbar {"text":"3 seconds!", "color":white}
execute if score finale.handler finale.round.timer matches 360 run title @a actionbar {"text":"2 seconds!", "color":white}
execute if score finale.handler finale.round.timer matches 380 run title @a actionbar {"text":"1 second!", "color":white}

execute as @a at @s if score finale.handler finale.round.timer matches 300 run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 0.8 1
execute as @a at @s if score finale.handler finale.round.timer matches 320 run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 0.8 1.1
execute as @a at @s if score finale.handler finale.round.timer matches 340 run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 0.8 1.2
execute as @a at @s if score finale.handler finale.round.timer matches 360 run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 0.8 1.3
execute as @a at @s if score finale.handler finale.round.timer matches 380 run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 0.8 1.4
execute as @a at @s if score finale.handler finale.round.timer matches 400 run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 2

# also sets glass barrier in place
execute if score team.RedRaccoons stats.points.team.rank matches 1 in stmc:finale run fill -3 146 8 3 149 8 minecraft:red_stained_glass
execute if score team.RedRaccoons stats.points.team.rank matches 2 in stmc:finale run fill -3 146 -8 3 149 -8 minecraft:red_stained_glass

execute if score team.OrangeOtters stats.points.team.rank matches 1 in stmc:finale run fill -3 146 8 3 149 8 minecraft:orange_stained_glass
execute if score team.OrangeOtters stats.points.team.rank matches 2 in stmc:finale run fill -3 146 -8 3 149 -8 minecraft:orange_stained_glass

execute if score team.PinkPikas stats.points.team.rank matches 1 in stmc:finale run fill -3 146 8 3 149 8 minecraft:pink_stained_glass
execute if score team.PinkPikas stats.points.team.rank matches 2 in stmc:finale run fill -3 146 -8 3 149 -8 minecraft:pink_stained_glass

execute if score team.YellowYaks stats.points.team.rank matches 1 in stmc:finale run fill -3 146 8 3 149 8 minecraft:yellow_stained_glass
execute if score team.YellowYaks stats.points.team.rank matches 2 in stmc:finale run fill -3 146 -8 3 149 -8 minecraft:yellow_stained_glass

execute if score team.GreenGoats stats.points.team.rank matches 1 in stmc:finale run fill -3 146 8 3 149 8 minecraft:green_stained_glass
execute if score team.GreenGoats stats.points.team.rank matches 2 in stmc:finale run fill -3 146 -8 3 149 -8 minecraft:green_stained_glass

execute if score team.CyanCougars stats.points.team.rank matches 1 in stmc:finale run fill -3 146 8 3 149 8 minecraft:cyan_stained_glass
execute if score team.CyanCougars stats.points.team.rank matches 2 in stmc:finale run fill -3 146 -8 3 149 -8 minecraft:cyan_stained_glass

execute if score team.PurplePenguins stats.points.team.rank matches 1 in stmc:finale run fill -3 146 8 3 149 8 minecraft:purple_stained_glass
execute if score team.PurplePenguins stats.points.team.rank matches 2 in stmc:finale run fill -3 146 -8 3 149 -8 minecraft:purple_stained_glass

execute if score team.BlueBears stats.points.team.rank matches 1 in stmc:finale run fill -3 146 8 3 149 8 minecraft:blue_stained_glass
execute if score team.BlueBears stats.points.team.rank matches 2 in stmc:finale run fill -3 146 -8 3 149 -8 minecraft:blue_stained_glass
