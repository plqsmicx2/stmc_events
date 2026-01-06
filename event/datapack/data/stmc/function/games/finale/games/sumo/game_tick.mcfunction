# thread handling when the game is active

# check for dead players
execute as @a if score @s sumo.stats.deaths matches 1.. if score @s sumo.stats.alive matches 1 \
        in stmc:finale run function stmc:games/finale/games/sumo/helper/on_death

# determine how many teams are left
scoreboard objectives add .teams dummy
scoreboard players set sumo.handler .teams 0
execute as @a[team=RED_RACCOONS,scores={sumo.stats.alive=1..}] run scoreboard players add sumo.handler .teams 1
execute as @a[team=ORANGE_OTTERS,scores={sumo.stats.alive=1..}] run scoreboard players add sumo.handler .teams 1
execute as @a[team=PINK_PIKAS,scores={sumo.stats.alive=1..}] run scoreboard players add sumo.handler .teams 1
execute as @a[team=YELLOW_YAKS,scores={sumo.stats.alive=1..}] run scoreboard players add sumo.handler .teams 1
execute as @a[team=GREEN_GOATS,scores={sumo.stats.alive=1..}] run scoreboard players add sumo.handler .teams 1
execute as @a[team=CYAN_COUGARS,scores={sumo.stats.alive=1..}] run scoreboard players add sumo.handler .teams 1
execute as @a[team=PURPLE_PENGUINS,scores={sumo.stats.alive=1..}] run scoreboard players add sumo.handler .teams 1
execute as @a[team=BLUE_BEARS,scores={sumo.stats.alive=1..}] run scoreboard players add sumo.handler .teams 1

# if only one team is left, end the game
execute if score sumo.handler .teams matches 1 run function stmc:games/finale/games/sumo/helper/game_end