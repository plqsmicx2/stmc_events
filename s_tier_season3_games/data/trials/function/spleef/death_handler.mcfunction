# function to track player deaths & update appropriate scoreboards

# ensure spawnpoint is correct (for automatic respawn)
execute as @a at @s in trials:spleef run spawnpoint @s ~ ~ ~

# if the player falls into this region, kill them
execute in trials:spleef as @a[scores={spleef.alive=1},x=-30,y=60,z=-30,dx=60,dy=30,dz=60] run scoreboard players set spleef.handler spleef.deathThisTick 1
execute in trials:spleef as @a[scores={spleef.alive=1},x=-30,y=60,z=-30,dx=60,dy=30,dz=60] run playsound minecraft:entity.player.death master @s ~ ~ ~
execute in trials:spleef as @a[scores={spleef.alive=1},x=-30,y=60,z=-30,dx=60,dy=30,dz=60] run gamemode spectator @s
execute in trials:spleef as @a[scores={spleef.alive=1},x=-30,y=60,z=-30,dx=60,dy=30,dz=60] run tellraw @a ["",{selector:"@s"},{text:" took a tumble!",color:"white"}]
execute in trials:spleef as @a[scores={spleef.alive=1},x=-30,y=60,z=-30,dx=60,dy=30,dz=60] run scoreboard players set @s spleef.alive 0

# and award points to players still alive
execute as @a[scores={spleef.alive=1}] if score spleef.handler spleef.stage matches 3 if score spleef.handler spleef.deathThisTick matches 1 at @s run playsound minecraft:block.amethyst_cluster.hit master @s ~ ~ ~ 10.0 0.2

# give everyone the placement of the current # of players alive IF they are still alive
execute as @a[scores={spleef.alive=1}] run scoreboard players set @s spleef.points.placement 0
execute as @a[scores={spleef.alive=1}] run scoreboard players operation @s spleef.points.placement = spleef.handler spleef.players_alive

# check total # of players alive
scoreboard players set spleef.handler spleef.players_alive 0
execute as @a[scores={spleef.alive=1}] run scoreboard players add spleef.handler spleef.players_alive 1

# next, let's check up on our teams
# first we update the players alive of each team
scoreboard players set spleef.RedRaccoons spleef.players_alive 0
execute as @a[team=RED_RACCOONS] if score @s spleef.alive matches 1 run scoreboard players add spleef.RedRaccoons spleef.players_alive 1
scoreboard players set spleef.OrangeOtters spleef.players_alive 0
execute as @a[team=ORANGE_OTTERS] if score @s spleef.alive matches 1 run scoreboard players add spleef.OrangeOtters spleef.players_alive 1
scoreboard players set spleef.PinkPikas spleef.players_alive 0
execute as @a[team=PINK_PIKAS] if score @s spleef.alive matches 1 run scoreboard players add spleef.PinkPikas spleef.players_alive 1
scoreboard players set spleef.YellowYaks spleef.players_alive 0
execute as @a[team=YELLOW_YAKS] if score @s spleef.alive matches 1 run scoreboard players add spleef.YellowYaks spleef.players_alive 1
scoreboard players set spleef.GreenGoats spleef.players_alive 0
execute as @a[team=GREEN_GOATS] if score @s spleef.alive matches 1 run scoreboard players add spleef.GreenGoats spleef.players_alive 1
scoreboard players set spleef.CyanCougars spleef.players_alive 0
execute as @a[team=CYAN_COUGARS] if score @s spleef.alive matches 1 run scoreboard players add spleef.CyanCougars spleef.players_alive 1
scoreboard players set spleef.PurplePenguins spleef.players_alive 0
execute as @a[team=PURPLE_PENGUINS] if score @s spleef.alive matches 1 run scoreboard players add spleef.PurplePenguins spleef.players_alive 1
scoreboard players set spleef.BlueBears spleef.players_alive 0
execute as @a[team=BLUE_BEARS] if score @s spleef.alive matches 1 run scoreboard players add spleef.BlueBears spleef.players_alive 1

# and then for each team with > 0 players alive, we note that in teams_alive
scoreboard players set spleef.handler spleef.teams_alive 0
execute if score spleef.RedRaccoons spleef.players_alive matches 1..4 run scoreboard players add spleef.handler spleef.teams_alive 1
execute if score spleef.OrangeOtters spleef.players_alive matches 1..4 run scoreboard players add spleef.handler spleef.teams_alive 1
execute if score spleef.PinkPikas spleef.players_alive matches 1..4 run scoreboard players add spleef.handler spleef.teams_alive 1
execute if score spleef.YellowYaks spleef.players_alive matches 1..4 run scoreboard players add spleef.handler spleef.teams_alive 1
execute if score spleef.GreenGoats spleef.players_alive matches 1..4 run scoreboard players add spleef.handler spleef.teams_alive 1
execute if score spleef.CyanCougars spleef.players_alive matches 1..4 run scoreboard players add spleef.handler spleef.teams_alive 1
execute if score spleef.PurplePenguins spleef.players_alive matches 1..4 run scoreboard players add spleef.handler spleef.teams_alive 1
execute if score spleef.BlueBears spleef.players_alive matches 1..4 run scoreboard players add spleef.handler spleef.teams_alive 1

# reset deathThisTick
scoreboard players set spleef.handler spleef.deathThisTick 0