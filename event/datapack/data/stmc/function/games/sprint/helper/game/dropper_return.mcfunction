# helper function that determines if a player should be reset
# run on @s at @s in stmc:sprint

# check if a player is not currently falling:
execute store result score @s sprint.dropper.onGround run data get entity @s OnGround
execute if score @s sprint.dropper.onGround matches 1.. run scoreboard players set @s sprint.return 1
scoreboard players set @a sprint.dropper.onGround 0