# tick function for players running davey's divide

# grant ender pearl
execute as @s at @s if block ~ ~-1 ~ dried_kelp_block unless items entity @s hotbar.0 ender_pearl run \
        item replace entity @s hotbar.0 with ender_pearl 1
execute as @s at @s if block ~ ~-1 ~ green_terracotta unless items entity @s hotbar.0 ender_pearl run \
        item replace entity @s hotbar.0 with ender_pearl 1
execute as @s at @s if block ~ ~-1 ~ green_concrete unless items entity @s hotbar.0 ender_pearl run \
        item replace entity @s hotbar.0 with ender_pearl 1

#reset ender pearl
scoreboard players set @s race.daveysDescent.game.has_pearl 0
execute in stmc:race/daveys_descent as @e[type=ender_pearl] on origin run scoreboard players set @s race.daveysDescent.game.has_pearl 1
execute as @a[team=dim.race,scores={race.daveysDescent.game.used_pearl=1..,race.daveysDescent.game.has_pearl=0}] run clear @s ender_pearl
scoreboard players reset @s[scores={race.daveysDescent.game.has_pearl=0}] race.daveysDescent.game.used_pearl

# teleport players back to checkpoint if they're in lava
execute as @s at @s if block ~ ~ ~ lava run scoreboard players set @s race.return 1
execute as @s at @s if block ~ ~-1 ~ lava run scoreboard players set @s race.return 1

# teleport players back if they're stuck in a block
execute as @s at @s unless block ~ ~1 ~ air unless block ~ ~1 ~ water unless block ~ ~1 ~ lava unless block ~ ~1 ~ #cave_vines unless block ~ ~1 ~ weeping_vines unless block ~ ~1 ~ twisting_vines unless block ~ ~1 ~ structure_void unless block ~ ~1 ~ torch \
        run scoreboard players add @s race.suffocation 1
execute if score @s race.suffocation matches 40.. run scoreboard players set @s race.return 1
execute if score @s race.suffocation matches 40.. run tellraw @s {text:"Resetting due to suffocation concerns.",color:gray,bold:true}
execute if score @s race.suffocation matches 40.. run scoreboard players set @s race.suffocation 0

# grant wind charge
execute as @s at @s if block ~ ~-1 ~ white_concrete unless items entity @s hotbar.0 wind_charge run \
        item replace entity @s hotbar.0 with wind_charge 1
execute as @s at @s if block ~ ~-1 ~ light_gray_concrete_powder unless items entity @s hotbar.0 wind_charge run \
        item replace entity @s hotbar.0 with wind_charge 1
