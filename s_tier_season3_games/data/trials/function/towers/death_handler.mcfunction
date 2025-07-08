# function to track player deaths & update appropriate scoreboards

# set spawnpoint to where the player is (for automatic respawn)
execute as @a at @s in trials:towers run spawnpoint @s ~ ~30 ~

# if the player falls into this region, kill them
execute in trials:towers as @a[scores={towers.alive=1},x=-20,y=100,z=-20,dx=40,dy=1,dz=40] run scoreboard players set towers.handler towers.deathThisTick 1
execute in trials:towers as @a[scores={towers.alive=1},x=-20,y=100,z=-20,dx=40,dy=1,dz=40] at @s run playsound minecraft:entity.player.death master @s ~ ~ ~
execute in trials:towers as @a[scores={towers.alive=1},x=-20,y=100,z=-20,dx=40,dy=1,dz=40] run gamemode spectator @s
execute in trials:towers as @a[scores={towers.alive=1},x=-20,y=100,z=-20,dx=40,dy=1,dz=40] run tellraw @a ["",{selector:"@s"},{text:" missed a jump!",color:"white"}]
execute in trials:towers as @a[scores={towers.alive=1},x=-20,y=100,z=-20,dx=40,dy=1,dz=40] run scoreboard players set @s towers.alive 0

# or if the player dies from suffocation, set them to spectator
execute as @a[gamemode=!spectator, scores={towers.deathCounter=1..}] run scoreboard players set towers.handler towers.deathThisTick 1
execute as @a[gamemode=!spectator, scores={towers.deathCounter=1..}] run scoreboard players set @s towers.alive 0
gamemode spectator @a[gamemode=!spectator, scores={towers.deathCounter=1..}]

# and award points to players still alive
execute as @a[scores={towers.alive=1}] if score towers.handler towers.stage matches 5 if score towers.handler towers.deathThisTick matches 1 run scoreboard players add @s towers.points.indiv 3
execute as @a[scores={towers.alive=1}] if score towers.handler towers.stage matches 5 if score towers.handler towers.deathThisTick matches 1 at @s run playsound minecraft:block.amethyst_cluster.hit master @s ~ ~ ~ 10.0 0.2
execute as @a[scores={towers.alive=1}] if score towers.handler towers.stage matches 5 if score towers.handler towers.deathThisTick matches 1 run tellraw @s ["",{text:"[",bold:true,color:"gray"},{text:"+3 points",bold:true,color:"red"},{text:"]",bold:true,color:"gray"},{text:" Outlasted Player!",bold:true,color:"red"}]

# check how many players are alive in total
scoreboard players set towers.handler towers.players_alive 0
execute as @a[scores={towers.alive=1}] run scoreboard players add towers.handler towers.players_alive 1

# next, let's check up on our teams
# first we update the players alive of each team
scoreboard players set towers.RedRaccoons towers.players_alive 0
execute as @a[team=RED_RACCOONS] if score @s towers.alive matches 1 run scoreboard players add towers.RedRaccoons towers.players_alive 1
scoreboard players set towers.OrangeOtters towers.players_alive 0
execute as @a[team=ORANGE_OTTERS] if score @s towers.alive matches 1 run scoreboard players add towers.OrangeOtters towers.players_alive 1
scoreboard players set towers.PinkPikas towers.players_alive 0
execute as @a[team=PINK_PIKAS] if score @s towers.alive matches 1 run scoreboard players add towers.PinkPikas towers.players_alive 1
scoreboard players set towers.GreenGoats towers.players_alive 0
execute as @a[team=GREEN_GOATS] if score @s towers.alive matches 1 run scoreboard players add towers.GreenGoats towers.players_alive 1
scoreboard players set towers.CyanCougars towers.players_alive 0
execute as @a[team=CYAN_COUGARS] if score @s towers.alive matches 1 run scoreboard players add towers.CyanCougars towers.players_alive 1
scoreboard players set towers.PurplePenguins towers.players_alive 0
execute as @a[team=PURPLE_PENGUINS] if score @s towers.alive matches 1 run scoreboard players add towers.PurplePenguins towers.players_alive 1

# and then for each team with > 0 players alive, we note that in teams_alive
scoreboard players set towers.handler towers.teams_alive 0
execute if score towers.RedRaccoons towers.players_alive matches 1..4 run scoreboard players add towers.handler towers.teams_alive 1
execute if score towers.OrangeOtters towers.players_alive matches 1..4 run scoreboard players add towers.handler towers.teams_alive 1
execute if score towers.PinkPikas towers.players_alive matches 1..4 run scoreboard players add towers.handler towers.teams_alive 1
execute if score towers.GreenGoats towers.players_alive matches 1..4 run scoreboard players add towers.handler towers.teams_alive 1
execute if score towers.CyanCougars towers.players_alive matches 1..4 run scoreboard players add towers.handler towers.teams_alive 1
execute if score towers.PurplePenguins towers.players_alive matches 1..4 run scoreboard players add towers.handler towers.teams_alive 1

# reset deathThisTick
scoreboard players set towers.handler towers.deathThisTick 0