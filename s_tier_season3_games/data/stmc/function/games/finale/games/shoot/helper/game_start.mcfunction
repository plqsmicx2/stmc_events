# helper function that starts the shoot game

# remove barriers
execute in stmc:finale run fill -3 64 88 3 66 112 air replace tinted_glass

# reset data
scoreboard players set @a shoot.stats.alive 0
scoreboard players set @a[scores={finale.competitor=1..}] shoot.stats.alive 1
scoreboard players set @a[scores={finale.competitor=1..}] shoot.stats.deaths 0

# announce start
execute as @a at @s run playsound block.note_block.pling player @s ~ ~ ~ 2 2

# increment stage
scoreboard players set shoot.handler shoot.stage 3