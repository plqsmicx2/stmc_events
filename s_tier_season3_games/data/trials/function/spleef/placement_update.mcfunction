# this function is called whenever a player dies

# award points for all alive players

# top 10 --> +15 points
execute as @a[scores={spleef.alive=1}] if score spleef.handler spleef.players_alive matches 10 run scoreboard players add @s spleef.points.indiv 15

# top 5 --> +10 points
execute as @a[scores={spleef.alive=1}] if score spleef.handler spleef.players_alive matches 5 run scoreboard players add @s spleef.points.indiv 10

# top 3 --> +10 points
execute as @a[scores={spleef.alive=1}] if score spleef.handler spleef.players_alive matches 3 run scoreboard players add @s spleef.points.indiv 10

# top 2 --> +15 points
execute as @a[scores={spleef.alive=1}] if score spleef.handler spleef.players_alive matches 2 run scoreboard players add @s spleef.points.indiv 15

# top 1 --> +20 points
execute as @a[scores={spleef.alive=1}] if score spleef.handler spleef.players_alive matches 1 run scoreboard players add @s spleef.points.indiv 20
