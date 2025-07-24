# updates player points (on a global level)

# first, we make sure that all players have points
# sets players' game values to whatever the game itself has stored
execute if score stmc.handler event.stage matches 2.. as @a run scoreboard players operation @s stats.points.indiv.g1 = @s solve.points.indiv
execute if score stmc.handler event.stage matches 4.. as @a run scoreboard players operation @s stats.points.indiv.g2 = @s sg.points.indiv
execute if score stmc.handler event.stage matches 6.. as @a run scoreboard players operation @s stats.points.indiv.g3 = @s delve.points.indiv
execute if score stmc.handler event.stage matches 8.. as @a run scoreboard players operation @s stats.points.indiv.g4 = @s race.points.indiv
execute if score stmc.handler event.stage matches 10.. as @a run scoreboard players operation @s stats.points.indiv.g5 = @s extract.points.indiv
execute if score stmc.handler event.stage matches 12.. as @a run scoreboard players operation @s stats.points.indiv.g6 = @s tr.points.indiv
# and now sets players with an indiv less than 0 (or null) to 0 in case they don't exist yet
execute as @a unless entity @s[scores={stats.points.indiv.g1=0..}] run scoreboard players set @s stats.points.indiv.g1 0
execute as @a unless entity @s[scores={stats.points.indiv.g2=0..}] run scoreboard players set @s stats.points.indiv.g2 0
execute as @a unless entity @s[scores={stats.points.indiv.g3=0..}] run scoreboard players set @s stats.points.indiv.g3 0
execute as @a unless entity @s[scores={stats.points.indiv.g4=0..}] run scoreboard players set @s stats.points.indiv.g4 0
execute as @a unless entity @s[scores={stats.points.indiv.g5=0..}] run scoreboard players set @s stats.points.indiv.g5 0
execute as @a unless entity @s[scores={stats.points.indiv.g6=0..}] run scoreboard players set @s stats.points.indiv.g6 0

# <===== CALCULATIONS =====>

# and with those created, we can now do the points calculations
# these will happen EVERY TICK no matter what
# first, we reset score values so the sum will be correct
execute as @a run scoreboard players set @s stats.points.indiv_unmultiplied 0
execute as @a run scoreboard players set @s stats.points.indiv 0
execute as @a run scoreboard players set @s stats.points.team 0
execute as @a run scoreboard players set team.RedRaccoons stats.points.team 0
execute as @a run scoreboard players set team.OrangeOtters stats.points.team 0
execute as @a run scoreboard players set team.PinkPikas stats.points.team 0
execute as @a run scoreboard players set team.GreenGoats stats.points.team 0
execute as @a run scoreboard players set team.CyanCougars stats.points.team 0
execute as @a run scoreboard players set team.PurplePenguins stats.points.team 0

# now we set indiv_unmultiplied to the appropriate sum
execute as @a run scoreboard players operation @s stats.points.indiv_unmultiplied += @s stats.points.indiv.g1
execute as @a run scoreboard players operation @s stats.points.indiv_unmultiplied += @s stats.points.indiv.g2
execute as @a run scoreboard players operation @s stats.points.indiv_unmultiplied += @s stats.points.indiv.g3
execute as @a run scoreboard players operation @s stats.points.indiv_unmultiplied += @s stats.points.indiv.g4
execute as @a run scoreboard players operation @s stats.points.indiv_unmultiplied += @s stats.points.indiv.g5
execute as @a run scoreboard players operation @s stats.points.indiv_unmultiplied += @s stats.points.indiv.g6

# for indiv multiplied, we need to, well, multiply each one & then divide them for precision
# we store the temporary variables inside of the multiplier variables themselves (it's easy and means we don't need another scoreboard)
# this also means we need to reset each event.multipliers value
execute as @a run scoreboard players set @s event.multipliers.g1 0
execute as @a run scoreboard players set @s event.multipliers.g2 0
execute as @a run scoreboard players set @s event.multipliers.g3 0
execute as @a run scoreboard players set @s event.multipliers.g4 0
execute as @a run scoreboard players set @s event.multipliers.g5 0
execute as @a run scoreboard players set @s event.multipliers.g6 0
# and now we can update & sum everything
execute as @a run scoreboard players operation @s event.multipliers.g1 += @s stats.points.indiv.g1
execute as @a run scoreboard players operation @s event.multipliers.g1 *= stmc.handler event.multipliers.g1
execute as @a run scoreboard players operation @s event.multipliers.g1 /= stmc.handler event.multipliers.precision
execute as @a run scoreboard players operation @s stats.points.indiv += @s event.multipliers.g1
execute as @a run scoreboard players operation @s event.multipliers.g2 += @s stats.points.indiv.g2
execute as @a run scoreboard players operation @s event.multipliers.g2 *= stmc.handler event.multipliers.g2
execute as @a run scoreboard players operation @s event.multipliers.g2 /= stmc.handler event.multipliers.precision
execute as @a run scoreboard players operation @s stats.points.indiv += @s event.multipliers.g2
execute as @a run scoreboard players operation @s event.multipliers.g3 += @s stats.points.indiv.g3
execute as @a run scoreboard players operation @s event.multipliers.g3 *= stmc.handler event.multipliers.g3
execute as @a run scoreboard players operation @s event.multipliers.g3 /= stmc.handler event.multipliers.precision
execute as @a run scoreboard players operation @s stats.points.indiv += @s event.multipliers.g3
execute as @a run scoreboard players operation @s event.multipliers.g4 += @s stats.points.indiv.g4
execute as @a run scoreboard players operation @s event.multipliers.g4 *= stmc.handler event.multipliers.g4
execute as @a run scoreboard players operation @s event.multipliers.g4 /= stmc.handler event.multipliers.precision
execute as @a run scoreboard players operation @s stats.points.indiv += @s event.multipliers.g4
execute as @a run scoreboard players operation @s event.multipliers.g5 += @s stats.points.indiv.g5
execute as @a run scoreboard players operation @s event.multipliers.g5 *= stmc.handler event.multipliers.g5
execute as @a run scoreboard players operation @s event.multipliers.g5 /= stmc.handler event.multipliers.precision
execute as @a run scoreboard players operation @s stats.points.indiv += @s event.multipliers.g5
execute as @a run scoreboard players operation @s event.multipliers.g6 += @s stats.points.indiv.g6
execute as @a run scoreboard players operation @s event.multipliers.g6 *= stmc.handler event.multipliers.g6
execute as @a run scoreboard players operation @s event.multipliers.g6 /= stmc.handler event.multipliers.precision
execute as @a run scoreboard players operation @s stats.points.indiv += @s event.multipliers.g6

# team scores are now much easier
# we just add the values of all players on that team to the team's point value
# and then set each player's team point value to that one
execute as @a[team=RED_RACCOONS] run scoreboard players operation team.RedRaccoons stats.points.team += @s stats.points.indiv
execute as @a[team=RED_RACCOONS] run scoreboard players operation @s stats.points.team = team.RedRaccoons stats.points.team
execute as @a[team=ORANGE_OTTERS] run scoreboard players operation team.OrangeOtters stats.points.team += @s stats.points.indiv
execute as @a[team=ORANGE_OTTERS] run scoreboard players operation @s stats.points.team = team.OrangeOtters stats.points.team
execute as @a[team=PINK_PIKAS] run scoreboard players operation team.PinkPikas stats.points.team += @s stats.points.indiv
execute as @a[team=PINK_PIKAS] run scoreboard players operation @s stats.points.team = team.PinkPikas stats.points.team
execute as @a[team=GREEN_GOATS] run scoreboard players operation team.GreenGoats stats.points.team += @s stats.points.indiv
execute as @a[team=GREEN_GOATS] run scoreboard players operation @s stats.points.team = team.GreenGoats stats.points.team
execute as @a[team=CYAN_COUGARS] run scoreboard players operation team.CyanCougars stats.points.team += @s stats.points.indiv
execute as @a[team=CYAN_COUGARS] run scoreboard players operation @s stats.points.team = team.CyanCougars stats.points.team
execute as @a[team=PURPLE_PENGUINS] run scoreboard players operation team.PurplePenguins stats.points.team += @s stats.points.indiv
execute as @a[team=PURPLE_PENGUINS] run scoreboard players operation @s stats.points.team = team.PurplePenguins stats.points.team

# and finally, set the players' actionbar to their individual rank & points
execute as @a run title @s actionbar [{text:"[#",color:gold},{score:{name:"@s",objective:"stats.points.indiv.rank"}},{text:"]: ",color:gold},{score:{name:"@s",objective:"stats.points.indiv"}},{text:" points",color:gold}]