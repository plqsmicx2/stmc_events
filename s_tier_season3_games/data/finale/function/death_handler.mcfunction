# function to track player deaths & update appropriate scoreboards

# check if a player has fallen (done after to allow round_tick to teleport them back if they shouldn't be dead yet)
execute as @a in finale:finale if score @s finale.stats.alive matches 1.. if entity @s[x=-13,y=140,z=-23,dx=27,dy=3,dz=47] run \
        scoreboard players add @s finale.stats.deaths 1

# check if a player is dead & not teleported to spectator area
execute as @a if score @s finale.stats.alive matches 1.. if score @s finale.stats.deaths matches 1.. run gamemode adventure @s
execute as @a if score @s finale.stats.alive matches 1.. if score @s finale.stats.deaths matches 1.. in finale:finale run teleport @s -11 152 0 -90 35
execute as @a if score @s finale.stats.deaths matches 1.. run scoreboard players set @s finale.stats.alive 0

# teleport player back to platform if round is not yet started
execute if score finale.handler finale.round.timer matches 0..200 if score team.RedRaccoons stats.points.team.rank matches 1 in finale:finale run tp @a[team=RED_RACCOONS,scores={finale.stats.deaths=1}] 0 147 10 180 0
execute if score finale.handler finale.round.timer matches 0..200 if score team.RedRaccoons stats.points.team.rank matches 2 in finale:finale run tp @a[team=RED_RACCOONS,scores={finale.stats.deaths=1}] 0 147 -10 0 0

execute if score finale.handler finale.round.timer matches 0..200 if score team.OrangeOtters stats.points.team.rank matches 1 in finale:finale run tp @a[team=ORANGE_OTTERS,scores={finale.stats.deaths=1}] 0 147 10 180 0
execute if score finale.handler finale.round.timer matches 0..200 if score team.OrangeOtters stats.points.team.rank matches 2 in finale:finale run tp @a[team=ORANGE_OTTERS,scores={finale.stats.deaths=1}] 0 147 -10 0 0

execute if score finale.handler finale.round.timer matches 0..200 if score team.PinkPikas stats.points.team.rank matches 1 in finale:finale run tp @a[team=PINK_PIKAS,scores={finale.stats.deaths=1}] 0 147 10 180 0
execute if score finale.handler finale.round.timer matches 0..200 if score team.PinkPikas stats.points.team.rank matches 2 in finale:finale run tp @a[team=PINK_PIKAS,scores={finale.stats.deaths=1}] 0 147 -10 0 0

execute if score finale.handler finale.round.timer matches 0..200 if score team.YellowYaks stats.points.team.rank matches 1 in finale:finale run tp @a[team=YELLOW_YAKS,scores={finale.stats.deaths=1}] 0 147 10 180 0
execute if score finale.handler finale.round.timer matches 0..200 if score team.YellowYaks stats.points.team.rank matches 2 in finale:finale run tp @a[team=YELLOW_YAKS,scores={finale.stats.deaths=1}] 0 147 -10 0 0

execute if score finale.handler finale.round.timer matches 0..200 if score team.GreenGoats stats.points.team.rank matches 1 in finale:finale run tp @a[team=GREEN_GOATS,scores={finale.stats.deaths=1}] 0 147 10 180 0
execute if score finale.handler finale.round.timer matches 0..200 if score team.GreenGoats stats.points.team.rank matches 2 in finale:finale run tp @a[team=GREEN_GOATS,scores={finale.stats.deaths=1}] 0 147 -10 0 0

execute if score finale.handler finale.round.timer matches 0..200 if score team.CyanCougars stats.points.team.rank matches 1 in finale:finale run tp @a[team=CYAN_COUGARS,scores={finale.stats.deaths=1}] 0 147 10 180 0
execute if score finale.handler finale.round.timer matches 0..200 if score team.CyanCougars stats.points.team.rank matches 2 in finale:finale run tp @a[team=CYAN_COUGARS,scores={finale.stats.deaths=1}] 0 147 -10 0 0

execute if score finale.handler finale.round.timer matches 0..200 if score team.PurplePenguins stats.points.team.rank matches 1 in finale:finale run tp @a[team=PURPLE_PENGUINS,scores={finale.stats.deaths=1}] 0 147 10 180 0
execute if score finale.handler finale.round.timer matches 0..200 if score team.PurplePenguins stats.points.team.rank matches 2 in finale:finale run tp @a[team=PURPLE_PENGUINS,scores={finale.stats.deaths=1}] 0 147 -10 0 0

execute if score finale.handler finale.round.timer matches 0..200 if score team.BlueBears stats.points.team.rank matches 1 in finale:finale run tp @a[team=BLUE_BEARS,scores={finale.stats.deaths=1}] 0 147 10 180 0
execute if score finale.handler finale.round.timer matches 0..200 if score team.BlueBears stats.points.team.rank matches 2 in finale:finale run tp @a[team=BLUE_BEARS,scores={finale.stats.deaths=1}] 0 147 -10 0 0

execute as @a if score @s finale.stats.deaths matches 1 if score finale.handler finale.round.timer matches 0..200 run scoreboard players set @s finale.stats.alive 1
execute as @a if score @s finale.stats.deaths matches 1 if score finale.handler finale.round.timer matches 0..200 run scoreboard players set @s finale.stats.deaths 0
