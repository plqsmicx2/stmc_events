# thread handling when the game is active

# give arrows
scoreboard objectives add .arrows dummy
execute as @a store result score @s .arrows run clear @s arrow 0
execute as @a[scores={finale.competitor=1..}] if score @s .arrows matches ..0 run give @s arrow 1
scoreboard objectives remove .arrows

# set arrow damage
execute in stmc:finale as @e[type=arrow,tag=!damage.set] run data merge entity @s {Tags:["damage.set"],damage:1.15d}

# set glowing
execute if score shoot.handler shoot.timer.game matches 1200.. run \
        effect give @a[scores={shoot.stats.alive=1..}] glowing 1 0 true

# check for dead players
execute as @a[scores={shoot.stats.alive=1..,shoot.stats.deaths=1..}] run \
        teleport @s 0 109.5 0
execute as @a[scores={shoot.stats.alive=1..,shoot.stats.deaths=1..}] run \
        gamemode adventure @s
execute as @a[scores={shoot.stats.alive=1..,shoot.stats.deaths=1..}] run \
        effect clear @s
execute as @a[scores={shoot.stats.alive=1..,shoot.stats.deaths=1..}] run \
        scoreboard players set @s shoot.stats.alive 0

# determine how many teams are left
scoreboard objectives add .teams dummy
scoreboard players set shoot.handler .teams 0
execute as @a[team=RED_RACCOONS,scores={shoot.stats.alive=1..}] run scoreboard players add shoot.handler .teams 1
execute as @a[team=ORANGE_OTTERS,scores={shoot.stats.alive=1..}] run scoreboard players add shoot.handler .teams 1
execute as @a[team=PINK_PIKAS,scores={shoot.stats.alive=1..}] run scoreboard players add shoot.handler .teams 1
execute as @a[team=YELLOW_YAKS,scores={shoot.stats.alive=1..}] run scoreboard players add shoot.handler .teams 1
execute as @a[team=GREEN_GOATS,scores={shoot.stats.alive=1..}] run scoreboard players add shoot.handler .teams 1
execute as @a[team=CYAN_COUGARS,scores={shoot.stats.alive=1..}] run scoreboard players add shoot.handler .teams 1
execute as @a[team=PURPLE_PENGUINS,scores={shoot.stats.alive=1..}] run scoreboard players add shoot.handler .teams 1
execute as @a[team=BLUE_BEARS,scores={shoot.stats.alive=1..}] run scoreboard players add shoot.handler .teams 1

# if only one team is left, end the game
execute if score shoot.handler .teams matches 1 run function stmc:games/finale/games/shoot/helper/game_end