
execute if score dungeons.handler dungeons.timer matches 18000 in stmc:dungeons run function stmc:games/dungeons/unload

execute as @a[team=BLUE_BEARS] if items entity @s hotbar.* ominous_trial_key run scoreboard players set BLUE_BEARS dungeons.room 9
execute as @a[team=RED_RACCOONS] if items entity @s hotbar.* ominous_trial_key run scoreboard players set RED_RACCOONS dungeons.room 9
execute as @a[team=CYAN_COUGARS] if items entity @s hotbar.* ominous_trial_key run scoreboard players set CYAN_COUGARS dungeons.room 9
execute as @a[team=GREEN_GOATS] if items entity @s hotbar.* ominous_trial_key run scoreboard players set GREEN_GOATS dungeons.room 9
execute as @a[team=PURPLE_PENGUINS] if items entity @s hotbar.* ominous_trial_key run scoreboard players set PURPLE_PENGUINS dungeons.room 9
execute as @a[team=ORANGE_OTTERS] if items entity @s hotbar.* ominous_trial_key run scoreboard players set ORANGE_OTTERS dungeons.room 9
execute as @a[team=YELLOW_YAKS] if items entity @s hotbar.* ominous_trial_key run scoreboard players set YELLOW_YAKS dungeons.room 9
execute as @a[team=PINK_PIKAS] if items entity @s hotbar.* ominous_trial_key run scoreboard players set PINK_PIKAS dungeons.room 9

#display progress room 6
execute as @a if items entity @s hotbar.* ominous_trial_key run function stmc:games/dungeons/game/display/room_6

#spectator
execute if score BLUE_BEARS dungeons.room matches 9 as @a[team=BLUE_BEARS,gamemode=adventure] run gamemode spectator @s
execute if score RED_RACCOONS dungeons.room matches 9 as @a[team=RED_RACCOONS,gamemode=adventure] run gamemode spectator @s
execute if score CYAN_COUGARS dungeons.room matches 9 as @a[team=CYAN_COUGARS,gamemode=adventure] run gamemode spectator @s
execute if score GREEN_GOATS dungeons.room matches 9 as @a[team=GREEN_GOATS,gamemode=adventure] run gamemode spectator @s
execute if score PURPLE_PENGUINS dungeons.room matches 9 as @a[team=PURPLE_PENGUINS,gamemode=adventure] run gamemode spectator @s
execute if score ORANGE_OTTERS dungeons.room matches 9 as @a[team=ORANGE_OTTERS,gamemode=adventure] run gamemode spectator @s
execute if score YELLOW_YAKS dungeons.room matches 9 as @a[team=YELLOW_YAKS,gamemode=adventure] run gamemode spectator @s
execute if score PINK_PIKAS dungeons.room matches 9 as @a[team=PINK_PIKAS,gamemode=adventure] run gamemode spectator @s

#end after all completions
execute as @a unless entity @s[gamemode=adventure] run function stmc:games/dungeons/unload

execute as @a if items entity @s hotbar.* ominous_trial_key run clear @s ominous_trial_key