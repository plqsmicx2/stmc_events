# function to track player deaths & update appropriate scoreboards

# ensure spawnpoint is correct (for automatic respawn)
execute as @a in trials:disco run spawnpoint @s ~ ~ ~

# if the player falls into this region, kill them
execute in trials:disco as @a[scores={disco.alive=1},x=-5,y=100,z=-5,dx=11,dy=2,dz=11] run scoreboard players set disco.handler disco.deathThisTick 1
execute in trials:disco as @a[scores={disco.alive=1},x=-5,y=100,z=-5,dx=11,dy=2,dz=11] run scoreboard players set @s disco.alive 0
execute in trials:disco as @a[scores={disco.alive=1},x=-5,y=100,z=-5,dx=11,dy=2,dz=11] run kill @s
execute as @a[gamemode=!spectator,scores={disco.alive=0}] at @s run playsound minecraft:entity.player.death master @s ~ ~ ~
execute as @a[gamemode=!spectator,scores={disco.alive=0}] run gamemode spectator @s

# and award points to players still alive
execute as @a[scores={disco.alive=1}] if score disco.handler disco.stage matches 3 if score disco.handler disco.deathThisTick matches 1 run scoreboard players add @s disco.points.indiv 5
execute as @a[scores={disco.alive=1}] if score disco.handler disco.stage matches 3 if score disco.handler disco.deathThisTick matches 1 at @s run playsound minecraft:block.amethyst_cluster.hit master @s ~ ~ ~ 10.0 0.2
execute as @a[scores={disco.alive=1}] if score disco.handler disco.stage matches 3 if score disco.handler disco.deathThisTick matches 1 run tellraw @s ["",{text:"[",bold:true,color:"gray"},{text:"+5 points",bold:true,color:"red"},{text:"]",bold:true,color:"gray"},{text:" Outlasted Player!",bold:true,color:"red"}]

# check total # of players alive
scoreboard players set disco.handler disco.players_alive 0
execute as @a[scores={disco.alive=1}] run scoreboard players add disco.handler disco.players_alive 1

# next, let's check up on our teams
# first we update the players alive of each team
scoreboard players set disco.RedRaccoons disco.players_alive 0
execute as @a[team=RED_RACCOONS] if score @s disco.alive matches 1 run scoreboard players add disco.RedRaccoons disco.players_alive 1
scoreboard players set disco.OrangeOtters disco.players_alive 0
execute as @a[team=ORANGE_OTTERS] if score @s disco.alive matches 1 run scoreboard players add disco.OrangeOtters disco.players_alive 1
scoreboard players set disco.PinkPikas disco.players_alive 0
execute as @a[team=PINK_PIKAS] if score @s disco.alive matches 1 run scoreboard players add disco.PinkPikas disco.players_alive 1
scoreboard players set disco.GreenGoats disco.players_alive 0
execute as @a[team=GREEN_GOATS] if score @s disco.alive matches 1 run scoreboard players add disco.GreenGoats disco.players_alive 1
scoreboard players set disco.CyanCougars disco.players_alive 0
execute as @a[team=CYAN_COUGARS] if score @s disco.alive matches 1 run scoreboard players add disco.CyanCougars disco.players_alive 1
scoreboard players set disco.PurplePenguins disco.players_alive 0
execute as @a[team=PURPLE_PENGUINS] if score @s disco.alive matches 1 run scoreboard players add disco.PurplePenguins disco.players_alive 1

# and then for each team with > 0 players alive, we note that in teams_alive
scoreboard players set disco.handler disco.teams_alive 0
execute if score disco.RedRaccoons disco.players_alive matches 1..4 run scoreboard players add disco.handler disco.teams_alive 1
execute if score disco.OrangeOtters disco.players_alive matches 1..4 run scoreboard players add disco.handler disco.teams_alive 1
execute if score disco.PinkPikas disco.players_alive matches 1..4 run scoreboard players add disco.handler disco.teams_alive 1
execute if score disco.GreenGoats disco.players_alive matches 1..4 run scoreboard players add disco.handler disco.teams_alive 1
execute if score disco.CyanCougars disco.players_alive matches 1..4 run scoreboard players add disco.handler disco.teams_alive 1
execute if score disco.PurplePenguins disco.players_alive matches 1..4 run scoreboard players add disco.handler disco.teams_alive 1

# reset deathThisTick
scoreboard players set disco.handler disco.deathThisTick 0