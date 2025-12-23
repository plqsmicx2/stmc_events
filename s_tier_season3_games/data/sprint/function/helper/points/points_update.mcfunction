# helper function that calculates & updates points
# runs @a to calculate individual points
# then sums those values into team aggregates

# INDIVIDUAL POINTS CALCULATIONS

# completions

# create temporary variable
scoreboard objectives add sprint.points.completions dummy

# calculate completions
execute as @a run function sprint:helper/points/completions

# multiplier

# create temporary variable
scoreboard objectives add sprint.points.multiplier dummy

# calculate completions
execute as @a run function sprint:helper/points/multiplier

# time bonus

# create temporary variable
scoreboard objectives add sprint.points.bonus dummy

# calculate team bonus
execute as @a if score @s sprint.stats.completed matches 1 run function sprint:helper/points/bonus/time_bonus

# apply multiplier
scoreboard objectives add .precision dummy
scoreboard players set #math .precision 100
execute as @a run scoreboard players operation @s sprint.points.bonus *= @s sprint.points.multiplier
execute as @a run scoreboard players operation @s sprint.points.bonus /= #math .precision
scoreboard objectives remove .precision

# aggregate individual points
scoreboard players set @a sprint.points.indiv 0
execute as @a run scoreboard players operation @s sprint.points.indiv += @s sprint.points.completions
execute as @a run scoreboard players operation @s sprint.points.indiv += @s sprint.points.bonus

# remove temporary variables
scoreboard objectives remove sprint.points.completions
scoreboard objectives remove sprint.points.multiplier
scoreboard objectives remove sprint.points.bonus

# <===== TEAM POINTS =====>

# reset team points
scoreboard players set sprint.RedRaccoons sprint.points.team 0
scoreboard players set sprint.OrangeOtters sprint.points.team 0
scoreboard players set sprint.PinkPikas sprint.points.team 0
scoreboard players set sprint.YellowYaks sprint.points.team 0
scoreboard players set sprint.GreenGoats sprint.points.team 0
scoreboard players set sprint.CyanCougars sprint.points.team 0
scoreboard players set sprint.PurplePenguins sprint.points.team 0
scoreboard players set sprint.BlueBears sprint.points.team 0

# sum up team points
execute as @a[team=RED_RACCOONS] run scoreboard players operation sprint.RedRaccoons sprint.points.team += @s sprint.points.indiv
execute as @a[team=ORANGE_OTTERS] run scoreboard players operation sprint.OrangeOtters sprint.points.team += @s sprint.points.indiv
execute as @a[team=PINK_PIKAS] run scoreboard players operation sprint.PinkPikas sprint.points.team += @s sprint.points.indiv
execute as @a[team=YELLOW_YAKS] run scoreboard players operation sprint.YellowYaks sprint.points.team += @s sprint.points.indiv
execute as @a[team=GREEN_GOATS] run scoreboard players operation sprint.GreenGoats sprint.points.team += @s sprint.points.indiv
execute as @a[team=CYAN_COUGARS] run scoreboard players operation sprint.CyanCougars sprint.points.team += @s sprint.points.indiv
execute as @a[team=PURPLE_PENGUINS] run scoreboard players operation sprint.PurplePenguins sprint.points.team += @s sprint.points.indiv
execute as @a[team=BLUE_BEARS] run scoreboard players operation sprint.BlueBears sprint.points.team += @s sprint.points.indiv

# <===== SET ACTIONBAR =====>
execute as @a if score sprint.handler sprint.stage matches 3..4 run title @s actionbar \
        [{text:"Progress: ",color:gold}, \
        {score:{name:"@s",objective:"sprint.stats.easyCompletions"},color:green},{text:" "}, \
        {score:{name:"@s",objective:"sprint.stats.mediumCompletions"},color:yellow},{text:" "}, \
        {score:{name:"@s",objective:"sprint.stats.hardCompletions"},color:red},{text:" "}, \
        {score:{name:"@s",objective:"sprint.stats.elytraCompletions"},color:light_purple},{text:" "}, \
        {score:{name:"@s",objective:"sprint.stats.spearCompletions"},color:dark_green},{text:" | Points: ",color:gold}, \
        {score:{name:"@s",objective:"sprint.points.indiv"},color:gold}]