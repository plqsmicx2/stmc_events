# points update function for Extract [EXTRACT]

# this function will add points based on player mine amounts

# the function will then sum up team points

# and finally set total lap time as the actionbar

# <===== PLAYER POINTS =====>

# diamonds
scoreboard objectives add extract.points.diamondPoints dummy
execute as @a run scoreboard players operation @s extract.points.diamondPoints = @s extract.stats.diamondsMined
execute as @a run scoreboard players operation @s extract.points.diamondPoints *= extract.handler extract.points.diamondValue

# gold
scoreboard objectives add extract.points.goldPoints dummy
execute as @a run scoreboard players operation @s extract.points.goldPoints = @s extract.stats.goldMined
execute as @a run scoreboard players operation @s extract.points.goldPoints *= extract.handler extract.points.goldValue

# kills
scoreboard objectives add extract.points.killPoints dummy
execute as @a run scoreboard players operation @s extract.points.killPoints = @s extract.stats.kills
execute as @a run scoreboard players operation @s extract.points.killPoints *= extract.handler extract.points.killValue

# overall
execute as @a run scoreboard players set @s extract.points.indiv 0
execute as @a run scoreboard players operation @s extract.points.indiv += @s extract.points.diamondPoints
execute as @a run scoreboard players operation @s extract.points.indiv += @s extract.points.goldPoints
execute as @a run scoreboard players operation @s extract.points.indiv += @s extract.points.killPoints

# <===== TEAM POINTS =====>

# sum up team points
scoreboard players set extract.RedRaccoons extract.points.team 0
scoreboard players set extract.OrangeOtters extract.points.team 0
scoreboard players set extract.PinkPikas extract.points.team 0
scoreboard players set extract.GreenGoats extract.points.team 0
scoreboard players set extract.CyanCougars extract.points.team 0
scoreboard players set extract.PurplePenguins extract.points.team 0
execute as @a[team=RED_RACCOONS] run scoreboard players operation extract.RedRaccoons extract.points.team += @s extract.points.indiv
execute as @a[team=ORANGE_OTTERS] run scoreboard players operation extract.OrangeOtters extract.points.team += @s extract.points.indiv
execute as @a[team=PINK_PIKAS] run scoreboard players operation extract.PinkPikas extract.points.team += @s extract.points.indiv
execute as @a[team=GREEN_GOATS] run scoreboard players operation extract.GreenGoats extract.points.team += @s extract.points.indiv
execute as @a[team=CYAN_COUGARS] run scoreboard players operation extract.CyanCougars extract.points.team += @s extract.points.indiv
execute as @a[team=PURPLE_PENGUINS] run scoreboard players operation extract.PurplePenguins extract.points.team += @s extract.points.indiv

# <===== SET ACTIONBAR =====>
execute as @a run title @s actionbar [{text:"Individual Points: ",color:yellow},{score:{name:"@s",objective:"extract.points.indiv"},color:red}]