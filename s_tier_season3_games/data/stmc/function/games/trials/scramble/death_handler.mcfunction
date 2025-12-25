# function to track player deaths & update appropriate scoreboards

# ensure spawnpoint is correct (for automatic respawn)
execute as @a in stmc:trials/scramble run spawnpoint @s ~ ~ ~

# if the player falls into this region, kill them & give them a placement
execute in stmc:trials/scramble as @a[scores={scramble.alive=1},x=-7,y=100,z=-7,dx=15,dy=13,dz=15] run scoreboard players set scramble.handler scramble.deathThisTick 1
execute in stmc:trials/scramble as @a[scores={scramble.alive=1},x=-7,y=100,z=-7,dx=15,dy=13,dz=15] run tellraw @a [{text:"💀: ",color:red},{selector:"@s"}]
execute in stmc:trials/scramble as @a[scores={scramble.alive=1},x=-7,y=100,z=-7,dx=15,dy=13,dz=15] run scoreboard players set @s scramble.alive 0
execute as @a[gamemode=!spectator,scores={scramble.alive=0}] at @s run playsound minecraft:entity.player.death master @s ~ ~ ~
execute as @a[gamemode=!spectator,scores={scramble.alive=0}] run gamemode spectator @s

# and award points to players still alive
execute as @a[scores={scramble.alive=1}] if score scramble.handler scramble.stage matches 3 if score scramble.handler scramble.deathThisTick matches 1 at @s run playsound minecraft:block.amethyst_cluster.hit master @s ~ ~ ~ 10.0 0.2

# check total # of players alive
scoreboard players set scramble.handler scramble.players_alive 0
execute as @a[scores={scramble.alive=1}] run scoreboard players add scramble.handler scramble.players_alive 1

# give everyone the placement of the current # of players alive IF they are still alive
execute as @a[scores={scramble.alive=1}] run scoreboard players set @s scramble.points.placement 0
execute as @a[scores={scramble.alive=1}] run scoreboard players operation @s scramble.points.placement = scramble.handler scramble.players_alive

# announce current placement/survival points
function stmc:games/trials/scramble/helper/point_announcements

# next, let's check up on our teams
# first we update the players alive of each team
scoreboard players set scramble.RedRaccoons scramble.players_alive 0
execute as @a[team=RED_RACCOONS] if score @s scramble.alive matches 1 run scoreboard players add scramble.RedRaccoons scramble.players_alive 1
scoreboard players set scramble.OrangeOtters scramble.players_alive 0
execute as @a[team=ORANGE_OTTERS] if score @s scramble.alive matches 1 run scoreboard players add scramble.OrangeOtters scramble.players_alive 1
scoreboard players set scramble.PinkPikas scramble.players_alive 0
execute as @a[team=PINK_PIKAS] if score @s scramble.alive matches 1 run scoreboard players add scramble.PinkPikas scramble.players_alive 1
scoreboard players set scramble.PinkPikas scramble.players_alive 0
execute as @a[team=YELLOW_YAKS] if score @s scramble.alive matches 1 run scoreboard players add scramble.YellowYaks scramble.players_alive 1
scoreboard players set scramble.YellowYaks scramble.players_alive 0
execute as @a[team=GREEN_GOATS] if score @s scramble.alive matches 1 run scoreboard players add scramble.GreenGoats scramble.players_alive 1
scoreboard players set scramble.CyanCougars scramble.players_alive 0
execute as @a[team=CYAN_COUGARS] if score @s scramble.alive matches 1 run scoreboard players add scramble.CyanCougars scramble.players_alive 1
scoreboard players set scramble.PurplePenguins scramble.players_alive 0
execute as @a[team=PURPLE_PENGUINS] if score @s scramble.alive matches 1 run scoreboard players add scramble.PurplePenguins scramble.players_alive 1
scoreboard players set scramble.BlueBears scramble.players_alive 0
execute as @a[team=BLUE_BEARS] if score @s scramble.alive matches 1 run scoreboard players add scramble.BlueBears scramble.players_alive 1

# and then for each team with > 0 players alive, we note that in teams_alive
scoreboard players set scramble.handler scramble.teams_alive 0
execute if score scramble.RedRaccoons scramble.players_alive matches 1..4 run scoreboard players add scramble.handler scramble.teams_alive 1
execute if score scramble.OrangeOtters scramble.players_alive matches 1..4 run scoreboard players add scramble.handler scramble.teams_alive 1
execute if score scramble.PinkPikas scramble.players_alive matches 1..4 run scoreboard players add scramble.handler scramble.teams_alive 1
execute if score scramble.YellowYaks scramble.players_alive matches 1..4 run scoreboard players add scramble.handler scramble.teams_alive 1
execute if score scramble.GreenGoats scramble.players_alive matches 1..4 run scoreboard players add scramble.handler scramble.teams_alive 1
execute if score scramble.CyanCougars scramble.players_alive matches 1..4 run scoreboard players add scramble.handler scramble.teams_alive 1
execute if score scramble.PurplePenguins scramble.players_alive matches 1..4 run scoreboard players add scramble.handler scramble.teams_alive 1
execute if score scramble.BlueBears scramble.players_alive matches 1..4 run scoreboard players add scramble.handler scramble.teams_alive 1

# reset deathThisTick
scoreboard players set scramble.handler scramble.deathThisTick 0