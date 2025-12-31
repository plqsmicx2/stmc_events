# thread handling when the game is active

# give poison
execute if score fight.handler fight.timer.game matches 1200 run \
        effect give @a[scores={fight.stats.alive=1..}] poison infinite 0 false

# check for dead players
execute as @a[scores={fight.stats.alive=1..,fight.stats.deaths=1..}] run \
        teleport @s 0 109.5 0
execute as @a[scores={fight.stats.alive=1..,fight.stats.deaths=1..}] run \
        gamemode adventure @s
execute as @a[scores={fight.stats.alive=1..,fight.stats.deaths=1..}] run \
        effect clear @s
execute as @a[scores={fight.stats.alive=1..,fight.stats.deaths=1..}] run \
        scoreboard players set @s fight.stats.alive 0

# determine how many teams are left
scoreboard objectives add .teams dummy
scoreboard players set fight.handler .teams 0
execute as @a[team=RED_RACCOONS,scores={fight.stats.alive=1..}] run scoreboard players add fight.handler .teams 1
execute as @a[team=ORANGE_OTTERS,scores={fight.stats.alive=1..}] run scoreboard players add fight.handler .teams 1
execute as @a[team=PINK_PIKAS,scores={fight.stats.alive=1..}] run scoreboard players add fight.handler .teams 1
execute as @a[team=YELLOW_YAKS,scores={fight.stats.alive=1..}] run scoreboard players add fight.handler .teams 1
execute as @a[team=GREEN_GOATS,scores={fight.stats.alive=1..}] run scoreboard players add fight.handler .teams 1
execute as @a[team=CYAN_COUGARS,scores={fight.stats.alive=1..}] run scoreboard players add fight.handler .teams 1
execute as @a[team=PURPLE_PENGUINS,scores={fight.stats.alive=1..}] run scoreboard players add fight.handler .teams 1
execute as @a[team=BLUE_BEARS,scores={fight.stats.alive=1..}] run scoreboard players add fight.handler .teams 1

# if only one team is left, end the game
execute if score fight.handler .teams matches 1 run function stmc:games/finale/games/fight/helper/game_end