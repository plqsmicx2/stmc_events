# reset function for round 1 of survival games

# this function acts as the "end" of the round
# thus, it will handle the removal of all unnecessary scoreboards
# reset other necessary scoreboards
# tally up team placement
# and update brawl.round.state (to move us to point announcements)

# first, remove temporary scoreboards
scoreboard objectives remove brawl.currentPlacement

# handle some important resets
execute in stmc:brawl/main run kill @e[type=!player]
worldborder set 10000

# next, assign the winning team a placement of 1
# this is successful because this function is only called when ONE team matches 1..4
execute unless score brawl.RedRaccoons brawl.round.teamPlacement matches 2.. run scoreboard players set brawl.RedRaccoons brawl.round.teamPlacement 1
execute unless score brawl.OrangeOtters brawl.round.teamPlacement matches 2.. run scoreboard players set brawl.OrangeOtters brawl.round.teamPlacement 1
execute unless score brawl.PinkPikas brawl.round.teamPlacement matches 2.. run scoreboard players set brawl.PinkPikas brawl.round.teamPlacement 1
execute unless score brawl.YellowYaks brawl.round.teamPlacement matches 2.. run scoreboard players set brawl.YellowYaks brawl.round.teamPlacement 1
execute unless score brawl.GreenGoats brawl.round.teamPlacement matches 2.. run scoreboard players set brawl.GreenGoats brawl.round.teamPlacement 1
execute unless score brawl.CyanCougars brawl.round.teamPlacement matches 2.. run scoreboard players set brawl.CyanCougars brawl.round.teamPlacement 1
execute unless score brawl.PurplePenguins brawl.round.teamPlacement matches 2.. run scoreboard players set brawl.PurplePenguins brawl.round.teamPlacement 1
execute unless score brawl.BlueBears brawl.round.teamPlacement matches 2.. run scoreboard players set brawl.BlueBears brawl.round.teamPlacement 1

# then, sum up round team points
function stmc:games/brawl/round/helper/points/points_update with storage brawl:data

# & announce team placement points
execute as @a if score @s brawl.round.teamPlacement matches 1 run tellraw @s ["",{"text":"[1st]: +","color":"yellow"},{score:{name:"@s",objective:"brawl.round.teamPlacementPoints"},"color":"red"},{"text":" points bonus","color":"yellow"}]
execute as @a if score @s brawl.round.teamPlacement matches 2 run tellraw @s ["",{"text":"[2nd]: +","color":"yellow"},{score:{name:"@s",objective:"brawl.round.teamPlacementPoints"},"color":"red"},{"text":" points bonus","color":"yellow"}]
execute as @a if score @s brawl.round.teamPlacement matches 3 run tellraw @s ["",{"text":"[3rd]: +","color":"yellow"},{score:{name:"@s",objective:"brawl.round.teamPlacementPoints"},"color":"red"},{"text":" points bonus","color":"yellow"}]
execute as @a if score @s brawl.round.teamPlacement matches 4 run tellraw @s ["",{"text":"[4th]: +","color":"yellow"},{score:{name:"@s",objective:"brawl.round.teamPlacementPoints"},"color":"red"},{"text":" points bonus","color":"yellow"}]
execute as @a if score @s brawl.round.teamPlacement matches 5 run tellraw @s ["",{"text":"[5th]: +","color":"yellow"},{score:{name:"@s",objective:"brawl.round.teamPlacementPoints"},"color":"red"},{"text":" points bonus","color":"yellow"}]
execute as @a if score @s brawl.round.teamPlacement matches 6 run tellraw @s ["",{"text":"[6th]: +","color":"yellow"},{score:{name:"@s",objective:"brawl.round.teamPlacementPoints"},"color":"red"},{"text":" points bonus","color":"yellow"}]
execute as @a if score @s brawl.round.teamPlacement matches 7 run tellraw @s ["",{"text":"[7th]: +","color":"yellow"},{score:{name:"@s",objective:"brawl.round.teamPlacementPoints"},"color":"red"},{"text":" points bonus","color":"yellow"}]
execute as @a if score @s brawl.round.teamPlacement matches 8 run tellraw @s ["",{"text":"[8th]: +","color":"yellow"},{score:{name:"@s",objective:"brawl.round.teamPlacementPoints"},"color":"red"},{"text":" points bonus","color":"yellow"}]

# & set title to winning team
execute as @a if score brawl.RedRaccoons brawl.round.teamPlacement matches 1 run title @a title {"text":"RED RACCOONS WIN","bold":true,"color":"red"}
execute as @a if score brawl.OrangeOtters brawl.round.teamPlacement matches 1 run title @a title {"text":"ORANGE OTTERS WIN","bold":true,"color":"gold"}
execute as @a if score brawl.PinkPikas brawl.round.teamPlacement matches 1 run title @a title {"text":"PINK PIKAS WIN","bold":true,"color":"light_purple"}
execute as @a if score brawl.YellowYaks brawl.round.teamPlacement matches 1 run title @a title {"text":"YELLOW YAKS WIN","bold":true,"color":"yellow"}
execute as @a if score brawl.GreenGoats brawl.round.teamPlacement matches 1 run title @a title {"text":"GREEN GOATS WIN","bold":true,"color":"dark_green"}
execute as @a if score brawl.CyanCougars brawl.round.teamPlacement matches 1 run title @a title {"text":"CYAN COUGARS WIN","bold":true,"color":"dark_aqua"}
execute as @a if score brawl.PurplePenguins brawl.round.teamPlacement matches 1 run title @a title {"text":"PURPLE PENGUINS WIN","bold":true,"color":"dark_purple"}
execute as @a if score brawl.BlueBears brawl.round.teamPlacement matches 1 run title @a title {"text":"BLUE BEARS WIN","bold":true,"color":"blue"}

# lastly, reset this round
execute unless score brawl.handler brawl.roundsCompleted matches 2 run schedule function stmc:games/brawl/round/helper/return 5s