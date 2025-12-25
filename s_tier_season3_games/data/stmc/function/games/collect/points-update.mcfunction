# helper function that calculates each teams' points then divides them among its players

# calculate team points

# red team
scoreboard players set collect.RedRaccoons collect.points.team 0

execute if score collect.RedRaccoons collect.stats.item1 matches 1 run scoreboard players operation collect.RedRaccoons collect.points.team += collect.handler collect.points.ITEM.FIRST.VALUE
execute if score collect.RedRaccoons collect.stats.item1 matches 2 run scoreboard players operation collect.RedRaccoons collect.points.team += collect.handler collect.points.ITEM.SECOND.VALUE
execute if score collect.RedRaccoons collect.stats.item1 matches 3 run scoreboard players operation collect.RedRaccoons collect.points.team += collect.handler collect.points.ITEM.THIRD.VALUE
execute if score collect.RedRaccoons collect.stats.item1 matches 4 run scoreboard players operation collect.RedRaccoons collect.points.team += collect.handler collect.points.ITEM.FOURTH.VALUE

execute if score collect.RedRaccoons collect.stats.item2 matches 1 run scoreboard players operation collect.RedRaccoons collect.points.team += collect.handler collect.points.ITEM.FIRST.VALUE
execute if score collect.RedRaccoons collect.stats.item2 matches 2 run scoreboard players operation collect.RedRaccoons collect.points.team += collect.handler collect.points.ITEM.SECOND.VALUE
execute if score collect.RedRaccoons collect.stats.item2 matches 3 run scoreboard players operation collect.RedRaccoons collect.points.team += collect.handler collect.points.ITEM.THIRD.VALUE
execute if score collect.RedRaccoons collect.stats.item2 matches 4 run scoreboard players operation collect.RedRaccoons collect.points.team += collect.handler collect.points.ITEM.FOURTH.VALUE

execute if score collect.RedRaccoons collect.stats.item3 matches 1 run scoreboard players operation collect.RedRaccoons collect.points.team += collect.handler collect.points.ITEM.FIRST.VALUE
execute if score collect.RedRaccoons collect.stats.item3 matches 2 run scoreboard players operation collect.RedRaccoons collect.points.team += collect.handler collect.points.ITEM.SECOND.VALUE
execute if score collect.RedRaccoons collect.stats.item3 matches 3 run scoreboard players operation collect.RedRaccoons collect.points.team += collect.handler collect.points.ITEM.THIRD.VALUE
execute if score collect.RedRaccoons collect.stats.item3 matches 4 run scoreboard players operation collect.RedRaccoons collect.points.team += collect.handler collect.points.ITEM.FOURTH.VALUE

execute if score collect.RedRaccoons collect.stats.item4 matches 1 run scoreboard players operation collect.RedRaccoons collect.points.team += collect.handler collect.points.ITEM.FIRST.VALUE
execute if score collect.RedRaccoons collect.stats.item4 matches 2 run scoreboard players operation collect.RedRaccoons collect.points.team += collect.handler collect.points.ITEM.SECOND.VALUE
execute if score collect.RedRaccoons collect.stats.item4 matches 3 run scoreboard players operation collect.RedRaccoons collect.points.team += collect.handler collect.points.ITEM.THIRD.VALUE
execute if score collect.RedRaccoons collect.stats.item4 matches 4 run scoreboard players operation collect.RedRaccoons collect.points.team += collect.handler collect.points.ITEM.FOURTH.VALUE

execute if score collect.RedRaccoons collect.stats.item5 matches 1 run scoreboard players operation collect.RedRaccoons collect.points.team += collect.handler collect.points.ITEM.FIRST.VALUE
execute if score collect.RedRaccoons collect.stats.item5 matches 2 run scoreboard players operation collect.RedRaccoons collect.points.team += collect.handler collect.points.ITEM.SECOND.VALUE
execute if score collect.RedRaccoons collect.stats.item5 matches 3 run scoreboard players operation collect.RedRaccoons collect.points.team += collect.handler collect.points.ITEM.THIRD.VALUE
execute if score collect.RedRaccoons collect.stats.item5 matches 4 run scoreboard players operation collect.RedRaccoons collect.points.team += collect.handler collect.points.ITEM.FOURTH.VALUE

# orange team
scoreboard players set collect.OrangeOtters collect.points.team 0

execute if score collect.OrangeOtters collect.stats.item1 matches 1 run scoreboard players operation collect.OrangeOtters collect.points.team += collect.handler collect.points.ITEM.FIRST.VALUE
execute if score collect.OrangeOtters collect.stats.item1 matches 2 run scoreboard players operation collect.OrangeOtters collect.points.team += collect.handler collect.points.ITEM.SECOND.VALUE
execute if score collect.OrangeOtters collect.stats.item1 matches 3 run scoreboard players operation collect.OrangeOtters collect.points.team += collect.handler collect.points.ITEM.THIRD.VALUE
execute if score collect.OrangeOtters collect.stats.item1 matches 4 run scoreboard players operation collect.OrangeOtters collect.points.team += collect.handler collect.points.ITEM.FOURTH.VALUE

execute if score collect.OrangeOtters collect.stats.item2 matches 1 run scoreboard players operation collect.OrangeOtters collect.points.team += collect.handler collect.points.ITEM.FIRST.VALUE
execute if score collect.OrangeOtters collect.stats.item2 matches 2 run scoreboard players operation collect.OrangeOtters collect.points.team += collect.handler collect.points.ITEM.SECOND.VALUE
execute if score collect.OrangeOtters collect.stats.item2 matches 3 run scoreboard players operation collect.OrangeOtters collect.points.team += collect.handler collect.points.ITEM.THIRD.VALUE
execute if score collect.OrangeOtters collect.stats.item2 matches 4 run scoreboard players operation collect.OrangeOtters collect.points.team += collect.handler collect.points.ITEM.FOURTH.VALUE

execute if score collect.OrangeOtters collect.stats.item3 matches 1 run scoreboard players operation collect.OrangeOtters collect.points.team += collect.handler collect.points.ITEM.FIRST.VALUE
execute if score collect.OrangeOtters collect.stats.item3 matches 2 run scoreboard players operation collect.OrangeOtters collect.points.team += collect.handler collect.points.ITEM.SECOND.VALUE
execute if score collect.OrangeOtters collect.stats.item3 matches 3 run scoreboard players operation collect.OrangeOtters collect.points.team += collect.handler collect.points.ITEM.THIRD.VALUE
execute if score collect.OrangeOtters collect.stats.item3 matches 4 run scoreboard players operation collect.OrangeOtters collect.points.team += collect.handler collect.points.ITEM.FOURTH.VALUE

execute if score collect.OrangeOtters collect.stats.item4 matches 1 run scoreboard players operation collect.OrangeOtters collect.points.team += collect.handler collect.points.ITEM.FIRST.VALUE
execute if score collect.OrangeOtters collect.stats.item4 matches 2 run scoreboard players operation collect.OrangeOtters collect.points.team += collect.handler collect.points.ITEM.SECOND.VALUE
execute if score collect.OrangeOtters collect.stats.item4 matches 3 run scoreboard players operation collect.OrangeOtters collect.points.team += collect.handler collect.points.ITEM.THIRD.VALUE
execute if score collect.OrangeOtters collect.stats.item4 matches 4 run scoreboard players operation collect.OrangeOtters collect.points.team += collect.handler collect.points.ITEM.FOURTH.VALUE

execute if score collect.OrangeOtters collect.stats.item5 matches 1 run scoreboard players operation collect.OrangeOtters collect.points.team += collect.handler collect.points.ITEM.FIRST.VALUE
execute if score collect.OrangeOtters collect.stats.item5 matches 2 run scoreboard players operation collect.OrangeOtters collect.points.team += collect.handler collect.points.ITEM.SECOND.VALUE
execute if score collect.OrangeOtters collect.stats.item5 matches 3 run scoreboard players operation collect.OrangeOtters collect.points.team += collect.handler collect.points.ITEM.THIRD.VALUE
execute if score collect.OrangeOtters collect.stats.item5 matches 4 run scoreboard players operation collect.OrangeOtters collect.points.team += collect.handler collect.points.ITEM.FOURTH.VALUE

# pink team
scoreboard players set collect.PinkPikas collect.points.team 0

execute if score collect.PinkPikas collect.stats.item1 matches 1 run scoreboard players operation collect.PinkPikas collect.points.team += collect.handler collect.points.ITEM.FIRST.VALUE
execute if score collect.PinkPikas collect.stats.item1 matches 2 run scoreboard players operation collect.PinkPikas collect.points.team += collect.handler collect.points.ITEM.SECOND.VALUE
execute if score collect.PinkPikas collect.stats.item1 matches 3 run scoreboard players operation collect.PinkPikas collect.points.team += collect.handler collect.points.ITEM.THIRD.VALUE
execute if score collect.PinkPikas collect.stats.item1 matches 4 run scoreboard players operation collect.PinkPikas collect.points.team += collect.handler collect.points.ITEM.FOURTH.VALUE

execute if score collect.PinkPikas collect.stats.item2 matches 1 run scoreboard players operation collect.PinkPikas collect.points.team += collect.handler collect.points.ITEM.FIRST.VALUE
execute if score collect.PinkPikas collect.stats.item2 matches 2 run scoreboard players operation collect.PinkPikas collect.points.team += collect.handler collect.points.ITEM.SECOND.VALUE
execute if score collect.PinkPikas collect.stats.item2 matches 3 run scoreboard players operation collect.PinkPikas collect.points.team += collect.handler collect.points.ITEM.THIRD.VALUE
execute if score collect.PinkPikas collect.stats.item2 matches 4 run scoreboard players operation collect.PinkPikas collect.points.team += collect.handler collect.points.ITEM.FOURTH.VALUE

execute if score collect.PinkPikas collect.stats.item3 matches 1 run scoreboard players operation collect.PinkPikas collect.points.team += collect.handler collect.points.ITEM.FIRST.VALUE
execute if score collect.PinkPikas collect.stats.item3 matches 2 run scoreboard players operation collect.PinkPikas collect.points.team += collect.handler collect.points.ITEM.SECOND.VALUE
execute if score collect.PinkPikas collect.stats.item3 matches 3 run scoreboard players operation collect.PinkPikas collect.points.team += collect.handler collect.points.ITEM.THIRD.VALUE
execute if score collect.PinkPikas collect.stats.item3 matches 4 run scoreboard players operation collect.PinkPikas collect.points.team += collect.handler collect.points.ITEM.FOURTH.VALUE

execute if score collect.PinkPikas collect.stats.item4 matches 1 run scoreboard players operation collect.PinkPikas collect.points.team += collect.handler collect.points.ITEM.FIRST.VALUE
execute if score collect.PinkPikas collect.stats.item4 matches 2 run scoreboard players operation collect.PinkPikas collect.points.team += collect.handler collect.points.ITEM.SECOND.VALUE
execute if score collect.PinkPikas collect.stats.item4 matches 3 run scoreboard players operation collect.PinkPikas collect.points.team += collect.handler collect.points.ITEM.THIRD.VALUE
execute if score collect.PinkPikas collect.stats.item4 matches 4 run scoreboard players operation collect.PinkPikas collect.points.team += collect.handler collect.points.ITEM.FOURTH.VALUE

execute if score collect.PinkPikas collect.stats.item5 matches 1 run scoreboard players operation collect.PinkPikas collect.points.team += collect.handler collect.points.ITEM.FIRST.VALUE
execute if score collect.PinkPikas collect.stats.item5 matches 2 run scoreboard players operation collect.PinkPikas collect.points.team += collect.handler collect.points.ITEM.SECOND.VALUE
execute if score collect.PinkPikas collect.stats.item5 matches 3 run scoreboard players operation collect.PinkPikas collect.points.team += collect.handler collect.points.ITEM.THIRD.VALUE
execute if score collect.PinkPikas collect.stats.item5 matches 4 run scoreboard players operation collect.PinkPikas collect.points.team += collect.handler collect.points.ITEM.FOURTH.VALUE

# yellow team
scoreboard players set collect.YellowYaks collect.points.team 0

execute if score collect.YellowYaks collect.stats.item1 matches 1 run scoreboard players operation collect.YellowYaks collect.points.team += collect.handler collect.points.ITEM.FIRST.VALUE
execute if score collect.YellowYaks collect.stats.item1 matches 2 run scoreboard players operation collect.YellowYaks collect.points.team += collect.handler collect.points.ITEM.SECOND.VALUE
execute if score collect.YellowYaks collect.stats.item1 matches 3 run scoreboard players operation collect.YellowYaks collect.points.team += collect.handler collect.points.ITEM.THIRD.VALUE
execute if score collect.YellowYaks collect.stats.item1 matches 4 run scoreboard players operation collect.YellowYaks collect.points.team += collect.handler collect.points.ITEM.FOURTH.VALUE

execute if score collect.YellowYaks collect.stats.item2 matches 1 run scoreboard players operation collect.YellowYaks collect.points.team += collect.handler collect.points.ITEM.FIRST.VALUE
execute if score collect.YellowYaks collect.stats.item2 matches 2 run scoreboard players operation collect.YellowYaks collect.points.team += collect.handler collect.points.ITEM.SECOND.VALUE
execute if score collect.YellowYaks collect.stats.item2 matches 3 run scoreboard players operation collect.YellowYaks collect.points.team += collect.handler collect.points.ITEM.THIRD.VALUE
execute if score collect.YellowYaks collect.stats.item2 matches 4 run scoreboard players operation collect.YellowYaks collect.points.team += collect.handler collect.points.ITEM.FOURTH.VALUE

execute if score collect.YellowYaks collect.stats.item3 matches 1 run scoreboard players operation collect.YellowYaks collect.points.team += collect.handler collect.points.ITEM.FIRST.VALUE
execute if score collect.YellowYaks collect.stats.item3 matches 2 run scoreboard players operation collect.YellowYaks collect.points.team += collect.handler collect.points.ITEM.SECOND.VALUE
execute if score collect.YellowYaks collect.stats.item3 matches 3 run scoreboard players operation collect.YellowYaks collect.points.team += collect.handler collect.points.ITEM.THIRD.VALUE
execute if score collect.YellowYaks collect.stats.item3 matches 4 run scoreboard players operation collect.YellowYaks collect.points.team += collect.handler collect.points.ITEM.FOURTH.VALUE

execute if score collect.YellowYaks collect.stats.item4 matches 1 run scoreboard players operation collect.YellowYaks collect.points.team += collect.handler collect.points.ITEM.FIRST.VALUE
execute if score collect.YellowYaks collect.stats.item4 matches 2 run scoreboard players operation collect.YellowYaks collect.points.team += collect.handler collect.points.ITEM.SECOND.VALUE
execute if score collect.YellowYaks collect.stats.item4 matches 3 run scoreboard players operation collect.YellowYaks collect.points.team += collect.handler collect.points.ITEM.THIRD.VALUE
execute if score collect.YellowYaks collect.stats.item4 matches 4 run scoreboard players operation collect.YellowYaks collect.points.team += collect.handler collect.points.ITEM.FOURTH.VALUE

execute if score collect.YellowYaks collect.stats.item5 matches 1 run scoreboard players operation collect.YellowYaks collect.points.team += collect.handler collect.points.ITEM.FIRST.VALUE
execute if score collect.YellowYaks collect.stats.item5 matches 2 run scoreboard players operation collect.YellowYaks collect.points.team += collect.handler collect.points.ITEM.SECOND.VALUE
execute if score collect.YellowYaks collect.stats.item5 matches 3 run scoreboard players operation collect.YellowYaks collect.points.team += collect.handler collect.points.ITEM.THIRD.VALUE
execute if score collect.YellowYaks collect.stats.item5 matches 4 run scoreboard players operation collect.YellowYaks collect.points.team += collect.handler collect.points.ITEM.FOURTH.VALUE

# green team
scoreboard players set collect.GreenGoats collect.points.team 0

execute if score collect.GreenGoats collect.stats.item1 matches 1 run scoreboard players operation collect.GreenGoats collect.points.team += collect.handler collect.points.ITEM.FIRST.VALUE
execute if score collect.GreenGoats collect.stats.item1 matches 2 run scoreboard players operation collect.GreenGoats collect.points.team += collect.handler collect.points.ITEM.SECOND.VALUE
execute if score collect.GreenGoats collect.stats.item1 matches 3 run scoreboard players operation collect.GreenGoats collect.points.team += collect.handler collect.points.ITEM.THIRD.VALUE
execute if score collect.GreenGoats collect.stats.item1 matches 4 run scoreboard players operation collect.GreenGoats collect.points.team += collect.handler collect.points.ITEM.FOURTH.VALUE

execute if score collect.GreenGoats collect.stats.item2 matches 1 run scoreboard players operation collect.GreenGoats collect.points.team += collect.handler collect.points.ITEM.FIRST.VALUE
execute if score collect.GreenGoats collect.stats.item2 matches 2 run scoreboard players operation collect.GreenGoats collect.points.team += collect.handler collect.points.ITEM.SECOND.VALUE
execute if score collect.GreenGoats collect.stats.item2 matches 3 run scoreboard players operation collect.GreenGoats collect.points.team += collect.handler collect.points.ITEM.THIRD.VALUE
execute if score collect.GreenGoats collect.stats.item2 matches 4 run scoreboard players operation collect.GreenGoats collect.points.team += collect.handler collect.points.ITEM.FOURTH.VALUE

execute if score collect.GreenGoats collect.stats.item3 matches 1 run scoreboard players operation collect.GreenGoats collect.points.team += collect.handler collect.points.ITEM.FIRST.VALUE
execute if score collect.GreenGoats collect.stats.item3 matches 2 run scoreboard players operation collect.GreenGoats collect.points.team += collect.handler collect.points.ITEM.SECOND.VALUE
execute if score collect.GreenGoats collect.stats.item3 matches 3 run scoreboard players operation collect.GreenGoats collect.points.team += collect.handler collect.points.ITEM.THIRD.VALUE
execute if score collect.GreenGoats collect.stats.item3 matches 4 run scoreboard players operation collect.GreenGoats collect.points.team += collect.handler collect.points.ITEM.FOURTH.VALUE

execute if score collect.GreenGoats collect.stats.item4 matches 1 run scoreboard players operation collect.GreenGoats collect.points.team += collect.handler collect.points.ITEM.FIRST.VALUE
execute if score collect.GreenGoats collect.stats.item4 matches 2 run scoreboard players operation collect.GreenGoats collect.points.team += collect.handler collect.points.ITEM.SECOND.VALUE
execute if score collect.GreenGoats collect.stats.item4 matches 3 run scoreboard players operation collect.GreenGoats collect.points.team += collect.handler collect.points.ITEM.THIRD.VALUE
execute if score collect.GreenGoats collect.stats.item4 matches 4 run scoreboard players operation collect.GreenGoats collect.points.team += collect.handler collect.points.ITEM.FOURTH.VALUE

execute if score collect.GreenGoats collect.stats.item5 matches 1 run scoreboard players operation collect.GreenGoats collect.points.team += collect.handler collect.points.ITEM.FIRST.VALUE
execute if score collect.GreenGoats collect.stats.item5 matches 2 run scoreboard players operation collect.GreenGoats collect.points.team += collect.handler collect.points.ITEM.SECOND.VALUE
execute if score collect.GreenGoats collect.stats.item5 matches 3 run scoreboard players operation collect.GreenGoats collect.points.team += collect.handler collect.points.ITEM.THIRD.VALUE
execute if score collect.GreenGoats collect.stats.item5 matches 4 run scoreboard players operation collect.GreenGoats collect.points.team += collect.handler collect.points.ITEM.FOURTH.VALUE

# cyan team
scoreboard players set collect.CyanCougars collect.points.team 0

execute if score collect.CyanCougars collect.stats.item1 matches 1 run scoreboard players operation collect.CyanCougars collect.points.team += collect.handler collect.points.ITEM.FIRST.VALUE
execute if score collect.CyanCougars collect.stats.item1 matches 2 run scoreboard players operation collect.CyanCougars collect.points.team += collect.handler collect.points.ITEM.SECOND.VALUE
execute if score collect.CyanCougars collect.stats.item1 matches 3 run scoreboard players operation collect.CyanCougars collect.points.team += collect.handler collect.points.ITEM.THIRD.VALUE
execute if score collect.CyanCougars collect.stats.item1 matches 4 run scoreboard players operation collect.CyanCougars collect.points.team += collect.handler collect.points.ITEM.FOURTH.VALUE

execute if score collect.CyanCougars collect.stats.item2 matches 1 run scoreboard players operation collect.CyanCougars collect.points.team += collect.handler collect.points.ITEM.FIRST.VALUE
execute if score collect.CyanCougars collect.stats.item2 matches 2 run scoreboard players operation collect.CyanCougars collect.points.team += collect.handler collect.points.ITEM.SECOND.VALUE
execute if score collect.CyanCougars collect.stats.item2 matches 3 run scoreboard players operation collect.CyanCougars collect.points.team += collect.handler collect.points.ITEM.THIRD.VALUE
execute if score collect.CyanCougars collect.stats.item2 matches 4 run scoreboard players operation collect.CyanCougars collect.points.team += collect.handler collect.points.ITEM.FOURTH.VALUE

execute if score collect.CyanCougars collect.stats.item3 matches 1 run scoreboard players operation collect.CyanCougars collect.points.team += collect.handler collect.points.ITEM.FIRST.VALUE
execute if score collect.CyanCougars collect.stats.item3 matches 2 run scoreboard players operation collect.CyanCougars collect.points.team += collect.handler collect.points.ITEM.SECOND.VALUE
execute if score collect.CyanCougars collect.stats.item3 matches 3 run scoreboard players operation collect.CyanCougars collect.points.team += collect.handler collect.points.ITEM.THIRD.VALUE
execute if score collect.CyanCougars collect.stats.item3 matches 4 run scoreboard players operation collect.CyanCougars collect.points.team += collect.handler collect.points.ITEM.FOURTH.VALUE

execute if score collect.CyanCougars collect.stats.item4 matches 1 run scoreboard players operation collect.CyanCougars collect.points.team += collect.handler collect.points.ITEM.FIRST.VALUE
execute if score collect.CyanCougars collect.stats.item4 matches 2 run scoreboard players operation collect.CyanCougars collect.points.team += collect.handler collect.points.ITEM.SECOND.VALUE
execute if score collect.CyanCougars collect.stats.item4 matches 3 run scoreboard players operation collect.CyanCougars collect.points.team += collect.handler collect.points.ITEM.THIRD.VALUE
execute if score collect.CyanCougars collect.stats.item4 matches 4 run scoreboard players operation collect.CyanCougars collect.points.team += collect.handler collect.points.ITEM.FOURTH.VALUE

execute if score collect.CyanCougars collect.stats.item5 matches 1 run scoreboard players operation collect.CyanCougars collect.points.team += collect.handler collect.points.ITEM.FIRST.VALUE
execute if score collect.CyanCougars collect.stats.item5 matches 2 run scoreboard players operation collect.CyanCougars collect.points.team += collect.handler collect.points.ITEM.SECOND.VALUE
execute if score collect.CyanCougars collect.stats.item5 matches 3 run scoreboard players operation collect.CyanCougars collect.points.team += collect.handler collect.points.ITEM.THIRD.VALUE
execute if score collect.CyanCougars collect.stats.item5 matches 4 run scoreboard players operation collect.CyanCougars collect.points.team += collect.handler collect.points.ITEM.FOURTH.VALUE

# purple team
scoreboard players set collect.PurplePenguins collect.points.team 0

execute if score collect.PurplePenguins collect.stats.item1 matches 1 run scoreboard players operation collect.PurplePenguins collect.points.team += collect.handler collect.points.ITEM.FIRST.VALUE
execute if score collect.PurplePenguins collect.stats.item1 matches 2 run scoreboard players operation collect.PurplePenguins collect.points.team += collect.handler collect.points.ITEM.SECOND.VALUE
execute if score collect.PurplePenguins collect.stats.item1 matches 3 run scoreboard players operation collect.PurplePenguins collect.points.team += collect.handler collect.points.ITEM.THIRD.VALUE
execute if score collect.PurplePenguins collect.stats.item1 matches 4 run scoreboard players operation collect.PurplePenguins collect.points.team += collect.handler collect.points.ITEM.FOURTH.VALUE

execute if score collect.PurplePenguins collect.stats.item2 matches 1 run scoreboard players operation collect.PurplePenguins collect.points.team += collect.handler collect.points.ITEM.FIRST.VALUE
execute if score collect.PurplePenguins collect.stats.item2 matches 2 run scoreboard players operation collect.PurplePenguins collect.points.team += collect.handler collect.points.ITEM.SECOND.VALUE
execute if score collect.PurplePenguins collect.stats.item2 matches 3 run scoreboard players operation collect.PurplePenguins collect.points.team += collect.handler collect.points.ITEM.THIRD.VALUE
execute if score collect.PurplePenguins collect.stats.item2 matches 4 run scoreboard players operation collect.PurplePenguins collect.points.team += collect.handler collect.points.ITEM.FOURTH.VALUE

execute if score collect.PurplePenguins collect.stats.item3 matches 1 run scoreboard players operation collect.PurplePenguins collect.points.team += collect.handler collect.points.ITEM.FIRST.VALUE
execute if score collect.PurplePenguins collect.stats.item3 matches 2 run scoreboard players operation collect.PurplePenguins collect.points.team += collect.handler collect.points.ITEM.SECOND.VALUE
execute if score collect.PurplePenguins collect.stats.item3 matches 3 run scoreboard players operation collect.PurplePenguins collect.points.team += collect.handler collect.points.ITEM.THIRD.VALUE
execute if score collect.PurplePenguins collect.stats.item3 matches 4 run scoreboard players operation collect.PurplePenguins collect.points.team += collect.handler collect.points.ITEM.FOURTH.VALUE

execute if score collect.PurplePenguins collect.stats.item4 matches 1 run scoreboard players operation collect.PurplePenguins collect.points.team += collect.handler collect.points.ITEM.FIRST.VALUE
execute if score collect.PurplePenguins collect.stats.item4 matches 2 run scoreboard players operation collect.PurplePenguins collect.points.team += collect.handler collect.points.ITEM.SECOND.VALUE
execute if score collect.PurplePenguins collect.stats.item4 matches 3 run scoreboard players operation collect.PurplePenguins collect.points.team += collect.handler collect.points.ITEM.THIRD.VALUE
execute if score collect.PurplePenguins collect.stats.item4 matches 4 run scoreboard players operation collect.PurplePenguins collect.points.team += collect.handler collect.points.ITEM.FOURTH.VALUE

execute if score collect.PurplePenguins collect.stats.item5 matches 1 run scoreboard players operation collect.PurplePenguins collect.points.team += collect.handler collect.points.ITEM.FIRST.VALUE
execute if score collect.PurplePenguins collect.stats.item5 matches 2 run scoreboard players operation collect.PurplePenguins collect.points.team += collect.handler collect.points.ITEM.SECOND.VALUE
execute if score collect.PurplePenguins collect.stats.item5 matches 3 run scoreboard players operation collect.PurplePenguins collect.points.team += collect.handler collect.points.ITEM.THIRD.VALUE
execute if score collect.PurplePenguins collect.stats.item5 matches 4 run scoreboard players operation collect.PurplePenguins collect.points.team += collect.handler collect.points.ITEM.FOURTH.VALUE

# blue team
scoreboard players set collect.BlueBears collect.points.team 0

execute if score collect.BlueBears collect.stats.item1 matches 1 run scoreboard players operation collect.BlueBears collect.points.team += collect.handler collect.points.ITEM.FIRST.VALUE
execute if score collect.BlueBears collect.stats.item1 matches 2 run scoreboard players operation collect.BlueBears collect.points.team += collect.handler collect.points.ITEM.SECOND.VALUE
execute if score collect.BlueBears collect.stats.item1 matches 3 run scoreboard players operation collect.BlueBears collect.points.team += collect.handler collect.points.ITEM.THIRD.VALUE
execute if score collect.BlueBears collect.stats.item1 matches 4 run scoreboard players operation collect.BlueBears collect.points.team += collect.handler collect.points.ITEM.FOURTH.VALUE

execute if score collect.BlueBears collect.stats.item2 matches 1 run scoreboard players operation collect.BlueBears collect.points.team += collect.handler collect.points.ITEM.FIRST.VALUE
execute if score collect.BlueBears collect.stats.item2 matches 2 run scoreboard players operation collect.BlueBears collect.points.team += collect.handler collect.points.ITEM.SECOND.VALUE
execute if score collect.BlueBears collect.stats.item2 matches 3 run scoreboard players operation collect.BlueBears collect.points.team += collect.handler collect.points.ITEM.THIRD.VALUE
execute if score collect.BlueBears collect.stats.item2 matches 4 run scoreboard players operation collect.BlueBears collect.points.team += collect.handler collect.points.ITEM.FOURTH.VALUE

execute if score collect.BlueBears collect.stats.item3 matches 1 run scoreboard players operation collect.BlueBears collect.points.team += collect.handler collect.points.ITEM.FIRST.VALUE
execute if score collect.BlueBears collect.stats.item3 matches 2 run scoreboard players operation collect.BlueBears collect.points.team += collect.handler collect.points.ITEM.SECOND.VALUE
execute if score collect.BlueBears collect.stats.item3 matches 3 run scoreboard players operation collect.BlueBears collect.points.team += collect.handler collect.points.ITEM.THIRD.VALUE
execute if score collect.BlueBears collect.stats.item3 matches 4 run scoreboard players operation collect.BlueBears collect.points.team += collect.handler collect.points.ITEM.FOURTH.VALUE

execute if score collect.BlueBears collect.stats.item4 matches 1 run scoreboard players operation collect.BlueBears collect.points.team += collect.handler collect.points.ITEM.FIRST.VALUE
execute if score collect.BlueBears collect.stats.item4 matches 2 run scoreboard players operation collect.BlueBears collect.points.team += collect.handler collect.points.ITEM.SECOND.VALUE
execute if score collect.BlueBears collect.stats.item4 matches 3 run scoreboard players operation collect.BlueBears collect.points.team += collect.handler collect.points.ITEM.THIRD.VALUE
execute if score collect.BlueBears collect.stats.item4 matches 4 run scoreboard players operation collect.BlueBears collect.points.team += collect.handler collect.points.ITEM.FOURTH.VALUE

execute if score collect.BlueBears collect.stats.item5 matches 1 run scoreboard players operation collect.BlueBears collect.points.team += collect.handler collect.points.ITEM.FIRST.VALUE
execute if score collect.BlueBears collect.stats.item5 matches 2 run scoreboard players operation collect.BlueBears collect.points.team += collect.handler collect.points.ITEM.SECOND.VALUE
execute if score collect.BlueBears collect.stats.item5 matches 3 run scoreboard players operation collect.BlueBears collect.points.team += collect.handler collect.points.ITEM.THIRD.VALUE
execute if score collect.BlueBears collect.stats.item5 matches 4 run scoreboard players operation collect.BlueBears collect.points.team += collect.handler collect.points.ITEM.FOURTH.VALUE

# split team points evenly among players

scoreboard players set @a collect.points.indiv 0

execute as @a[team=RED_RACCOONS] run scoreboard players operation @s collect.points.indiv = collect.RedRaccoons collect.points.team
execute as @a[team=RED_RACCOONS] run scoreboard players operation @s collect.points.indiv /= collect.RedRaccoons collect.stats.players

execute as @a[team=ORANGE_OTTERS] run scoreboard players operation @s collect.points.indiv = collect.OrangeOtters collect.points.team
execute as @a[team=ORANGE_OTTERS] run scoreboard players operation @s collect.points.indiv /= collect.OrangeOtters collect.stats.players

execute as @a[team=PINK_PIKAS] run scoreboard players operation @s collect.points.indiv = collect.PinkPikas collect.points.team
execute as @a[team=PINK_PIKAS] run scoreboard players operation @s collect.points.indiv /= collect.PinkPikas collect.stats.players

execute as @a[team=YELLOW_YAKS] run scoreboard players operation @s collect.points.indiv = collect.YellowYaks collect.points.team
execute as @a[team=YELLOW_YAKS] run scoreboard players operation @s collect.points.indiv /= collect.YellowYaks collect.stats.players

execute as @a[team=GREEN_GOATS] run scoreboard players operation @s collect.points.indiv = collect.GreenGoats collect.points.team
execute as @a[team=GREEN_GOATS] run scoreboard players operation @s collect.points.indiv /= collect.GreenGoats collect.stats.players

execute as @a[team=CYAN_COUGARS] run scoreboard players operation @s collect.points.indiv = collect.CyanCougars collect.points.team
execute as @a[team=CYAN_COUGARS] run scoreboard players operation @s collect.points.indiv /= collect.CyanCougars collect.stats.players

execute as @a[team=PURPLE_PENGUINS] run scoreboard players operation @s collect.points.indiv = collect.PurplePenguins collect.points.team
execute as @a[team=PURPLE_PENGUINS] run scoreboard players operation @s collect.points.indiv /= collect.PurplePenguins collect.stats.players

execute as @a[team=BLUE_BEARS] run scoreboard players operation @s collect.points.indiv = collect.BlueBears collect.points.team
execute as @a[team=BLUE_BEARS] run scoreboard players operation @s collect.points.indiv /= collect.BlueBears collect.stats.players