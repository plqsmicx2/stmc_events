# function to track player deaths & update appropriate scoreboards

# set spawnpoint to where the player is (for automatic respawn)
execute as @a at @s in stmc:trials/towers run spawnpoint @s ~ ~50 ~

# if the player falls into this region, kill them
#execute in stmc:trials/towers as @a[scores={towers.alive=1},x=-20,y=100,z=-20,dx=40,dy=1,dz=40] run scoreboard players set towers.handler towers.deathThisTick 1
#execute in stmc:trials/towers as @a[scores={towers.alive=1},x=-20,y=100,z=-20,dx=40,dy=1,dz=40] at @s run playsound minecraft:entity.player.death master @s ~ ~ ~
#execute in stmc:trials/towers as @a[scores={towers.alive=1},x=-20,y=100,z=-20,dx=40,dy=1,dz=40] run gamemode spectator @s
#execute in stmc:trials/towers as @a[scores={towers.alive=1},x=-20,y=100,z=-20,dx=40,dy=1,dz=40] run tellraw @a ["",{selector:"@s"},{text:" missed a jump!",color:"white"}]
#execute in stmc:trials/towers as @a[scores={towers.alive=1},x=-20,y=100,z=-20,dx=40,dy=1,dz=40] run scoreboard players set @s towers.alive 0

# or if the player dies from suffocation, set them to spectator & set their scores
execute as @a[gamemode=!spectator, scores={towers.deathCounter=1..}] run scoreboard players set towers.handler towers.deathThisTick 1
execute as @a[gamemode=!spectator, scores={towers.deathCounter=1..}] run scoreboard players set @s towers.alive 0
gamemode spectator @a[gamemode=!spectator, scores={towers.deathCounter=1..}]

# check how many players are alive in total
scoreboard players set towers.handler towers.players_alive 0
execute as @a[scores={towers.alive=1}] run scoreboard players add towers.handler towers.players_alive 1

# update player scores
execute as @a[scores={towers.alive=1}] run scoreboard players operation @s towers.stats.survival = towers.handler towers.timer.game
execute as @a[scores={towers.alive=1}] run scoreboard players operation @s towers.stats.placement = towers.handler towers.players_alive

# announce point awards
function stmc:games/trials/towers/helper/point_announcements

# next, let's check up on our teams
# first we update the players alive of each team
scoreboard players set towers.RedRaccoons towers.players_alive 0
execute as @a[team=RED_RACCOONS] if score @s towers.alive matches 1 run scoreboard players add towers.RedRaccoons towers.players_alive 1
scoreboard players set towers.OrangeOtters towers.players_alive 0
execute as @a[team=ORANGE_OTTERS] if score @s towers.alive matches 1 run scoreboard players add towers.OrangeOtters towers.players_alive 1
scoreboard players set towers.PinkPikas towers.players_alive 0
execute as @a[team=PINK_PIKAS] if score @s towers.alive matches 1 run scoreboard players add towers.PinkPikas towers.players_alive 1
scoreboard players set towers.YellowYaks towers.players_alive 0
execute as @a[team=YELLOW_YAKS] if score @s towers.alive matches 1 run scoreboard players add towers.YellowYaks towers.players_alive 1
scoreboard players set towers.GreenGoats towers.players_alive 0
execute as @a[team=GREEN_GOATS] if score @s towers.alive matches 1 run scoreboard players add towers.GreenGoats towers.players_alive 1
scoreboard players set towers.CyanCougars towers.players_alive 0
execute as @a[team=CYAN_COUGARS] if score @s towers.alive matches 1 run scoreboard players add towers.CyanCougars towers.players_alive 1
scoreboard players set towers.PurplePenguins towers.players_alive 0
execute as @a[team=PURPLE_PENGUINS] if score @s towers.alive matches 1 run scoreboard players add towers.PurplePenguins towers.players_alive 1
scoreboard players set towers.BlueBears towers.players_alive 0
execute as @a[team=BLUE_BEARS] if score @s towers.alive matches 1 run scoreboard players add towers.BlueBears towers.players_alive 1

# and then for each team with > 0 players alive, we note that in teams_alive
scoreboard players set towers.handler towers.teams_alive 0
execute if score towers.RedRaccoons towers.players_alive matches 1.. run scoreboard players add towers.handler towers.teams_alive 1
execute if score towers.OrangeOtters towers.players_alive matches 1.. run scoreboard players add towers.handler towers.teams_alive 1
execute if score towers.PinkPikas towers.players_alive matches 1.. run scoreboard players add towers.handler towers.teams_alive 1
execute if score towers.YellowYaks towers.players_alive matches 1.. run scoreboard players add towers.handler towers.teams_alive 1
execute if score towers.GreenGoats towers.players_alive matches 1.. run scoreboard players add towers.handler towers.teams_alive 1
execute if score towers.CyanCougars towers.players_alive matches 1.. run scoreboard players add towers.handler towers.teams_alive 1
execute if score towers.PurplePenguins towers.players_alive matches 1.. run scoreboard players add towers.handler towers.teams_alive 1
execute if score towers.BlueBears towers.players_alive matches 1.. run scoreboard players add towers.handler towers.teams_alive 1

# reset deathThisTick
#scoreboard players set towers.handler towers.deathThisTick 0