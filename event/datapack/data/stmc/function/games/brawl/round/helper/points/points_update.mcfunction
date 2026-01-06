# point updater
# run with storage brawl:data

# <===== Get Current Round Points =====>

# create temp variable to store round points
scoreboard objectives add .roundPoints dummy
scoreboard players set @a .roundPoints 0

# create temp variables for multiplication value
scoreboard objectives add brawl.points.killValue dummy
$scoreboard players set brawl.handler brawl.points.killValue $(killValue)

# Determine points from kills for this round

# reset kill points
scoreboard players set @a brawl.round.killPoints 0

# set this round's kills to our killPoints value
execute as @a run scoreboard players operation @s brawl.round.killPoints = @s brawl.round.kills

# then multiply that value by how much each kill is worth
execute as @a run scoreboard players operation @s brawl.round.killPoints *= brawl.handler brawl.points.killValue

# Determine points from team placement (if it can be awarded yet)

# reset team placement points
scoreboard players set @a brawl.round.teamPlacementPoints 0

# store each players' team placement locally
execute as @a[team=RED_RACCOONS] run scoreboard players operation @s brawl.round.teamPlacement = brawl.RedRaccoons brawl.round.teamPlacement
execute as @a[team=ORANGE_OTTERS] run scoreboard players operation @s brawl.round.teamPlacement = brawl.OrangeOtters brawl.round.teamPlacement
execute as @a[team=PINK_PIKAS] run scoreboard players operation @s brawl.round.teamPlacement = brawl.PinkPikas brawl.round.teamPlacement
execute as @a[team=YELLOW_YAKS] run scoreboard players operation @s brawl.round.teamPlacement = brawl.YellowYaks brawl.round.teamPlacement
execute as @a[team=GREEN_GOATS] run scoreboard players operation @s brawl.round.teamPlacement = brawl.GreenGoats brawl.round.teamPlacement
execute as @a[team=CYAN_COUGARS] run scoreboard players operation @s brawl.round.teamPlacement = brawl.CyanCougars brawl.round.teamPlacement
execute as @a[team=PURPLE_PENGUINS] run scoreboard players operation @s brawl.round.teamPlacement = brawl.PurplePenguins brawl.round.teamPlacement
execute as @a[team=BLUE_BEARS] run scoreboard players operation @s brawl.round.teamPlacement = brawl.BlueBears brawl.round.teamPlacement

# add team placement points
$execute as @a if score @s brawl.round.teamPlacement matches 1 run scoreboard players add @s brawl.round.teamPlacementPoints $(firstPlacement)
$execute as @a if score @s brawl.round.teamPlacement matches 2 run scoreboard players add @s brawl.round.teamPlacementPoints $(secondPlacement)
$execute as @a if score @s brawl.round.teamPlacement matches 3 run scoreboard players add @s brawl.round.teamPlacementPoints $(thirdPlacement)
$execute as @a if score @s brawl.round.teamPlacement matches 4 run scoreboard players add @s brawl.round.teamPlacementPoints $(fourthPlacement)
$execute as @a if score @s brawl.round.teamPlacement matches 5 run scoreboard players add @s brawl.round.teamPlacementPoints $(fifthPlacement)
$execute as @a if score @s brawl.round.teamPlacement matches 6 run scoreboard players add @s brawl.round.teamPlacementPoints $(sixthPlacement)
$execute as @a if score @s brawl.round.teamPlacement matches 7 run scoreboard players add @s brawl.round.teamPlacementPoints $(seventhPlacement)
$execute as @a if score @s brawl.round.teamPlacement matches 8 run scoreboard players add @s brawl.round.teamPlacementPoints $(eighthPlacement)

# and after all points have been awarded, we split them up by players on the team (4)
execute as @a at @s run scoreboard players operation @s brawl.round.teamPlacementPoints /= brawl.handler brawl.points.teamSplitFour

# Now, aggregate round points
execute as @a run scoreboard players operation @s .roundPoints += @s brawl.round.killPoints
execute as @a run scoreboard players operation @s .roundPoints += @s brawl.round.teamPlacementPoints

# <===== Total Points Update =====>

# set appropriate round points
execute as @a if score brawl.handler brawl.roundsCompleted matches 0 run \
        scoreboard players operation @s brawl.points.indiv.round1 = @s .roundPoints
execute as @a if score brawl.handler brawl.roundsCompleted matches 1 run \
        scoreboard players operation @s brawl.points.indiv.round2 = @s .roundPoints
execute as @a if score brawl.handler brawl.roundsCompleted matches 2 run \
        scoreboard players operation @s brawl.points.indiv.round3 = @s .roundPoints

# update main points update with new values
function stmc:games/brawl/helper/points/points_update

# <===== Team Points Update =====>

# reset points to 0 for accurate results
# sum round points of each player on the team
# then set current team points to current round points
# OTHER ROUNDS WILL ALSO ADD THIS SCORE DURING THEIR SUM (e.g. r1.points + r2.points + r3.points)

scoreboard players set brawl.RedRaccoons brawl.round.points 0
execute as @a[team=RED_RACCOONS] at @s run scoreboard players operation brawl.RedRaccoons brawl.round.points += @s brawl.round.points

scoreboard players set brawl.OrangeOtters brawl.round.points 0
execute as @a[team=ORANGE_OTTERS] at @s run scoreboard players operation brawl.OrangeOtters brawl.round.points += @s brawl.round.points

scoreboard players set brawl.PinkPikas brawl.round.points 0
execute as @a[team=PINK_PIKAS] at @s run scoreboard players operation brawl.PinkPikas brawl.round.points += @s brawl.round.points

scoreboard players set brawl.YellowYaks brawl.round.points 0
execute as @a[team=YELLOW_YAKS] at @s run scoreboard players operation brawl.YellowYaks brawl.round.points += @s brawl.round.points

scoreboard players set brawl.GreenGoats brawl.round.points 0
execute as @a[team=GREEN_GOATS] at @s run scoreboard players operation brawl.GreenGoats brawl.round.points += @s brawl.round.points

scoreboard players set brawl.CyanCougars brawl.round.points 0
execute as @a[team=CYAN_COUGARS] at @s run scoreboard players operation brawl.CyanCougars brawl.round.points += @s brawl.round.points

scoreboard players set brawl.PurplePenguins brawl.round.points 0
execute as @a[team=PURPLE_PENGUINS] at @s run scoreboard players operation brawl.PurplePenguins brawl.round.points += @s brawl.round.points

scoreboard players set brawl.BlueBears brawl.round.points 0
execute as @a[team=BLUE_BEARS] at @s run scoreboard players operation brawl.BlueBears brawl.round.points += @s brawl.round.points

# <===== Actionbar =====>

# sets player actionbar to Total Kills: # | Distance From Border: ##
execute as @a if score brawl.handler brawl.timer.round matches 300.. run \
        title @s actionbar [{"text":"Total Kills: ","color":"yellow"},{"score":{"name":"@s","objective":"brawl.kills"},"color":"red"},{"text":"   |   Distance From Border: ","color":"yellow"},{"score":{"name":"@s","objective":"brawl.borderDistance"},"color":"red"}]