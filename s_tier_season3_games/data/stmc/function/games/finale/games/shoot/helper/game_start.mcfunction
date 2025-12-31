# helper function that starts the shoot game

# remove barriers
execute in stmc:finale run fill -3 101 -24 3 104 24 air replace tinted_glass

# reset data
scoreboard players set @a[scores={finale.competitor=1..}] shoot.stats.alive 1
scoreboard players set @a[scores={finale.competitor=1..}] shoot.stats.deaths 0

# announce start
execute as @a at @s run playsound block.note_block.pling player @s ~ ~ ~ 2 2

# increment stage
scoreboard players set shoot.handler shoot.stage 3