
execute if score event.handler dungeon.timer matches 18000 run function dungeon:unload

execute as @a[team=BLUE_BEARS] if items entity @s hotbar.* ominous_trial_key run scoreboard players set BLUE_BEARS dungeon.room 9
execute as @a[team=RED_RACCOONS] if items entity @s hotbar.* ominous_trial_key run scoreboard players set RED_RACCOONS dungeon.room 9
execute as @a[team=CYAN_COUGARS] if items entity @s hotbar.* ominous_trial_key run scoreboard players set CYAN_COUGARS dungeon.room 9
execute as @a[team=GREEN_GOATS] if items entity @s hotbar.* ominous_trial_key run scoreboard players set GREEN_GOATS dungeon.room 9
execute as @a[team=PURPLE_PENGUINS] if items entity @s hotbar.* ominous_trial_key run scoreboard players set PURPLE_PENGUINS dungeon.room 9
execute as @a[team=ORANGE_OTTERS] if items entity @s hotbar.* ominous_trial_key run scoreboard players set ORANGE_OTTERS dungeon.room 9
execute as @a[team=YELLOW_YAKS] if items entity @s hotbar.* ominous_trial_key run scoreboard players set YELLOW_YAKS dungeon.room 9
execute as @a[team=PINK_PIKAS] if items entity @s hotbar.* ominous_trial_key run scoreboard players set PINK_PIKAS dungeon.room 9

#display progress room 6
execute as @a if items entity @s hotbar.* ominous_trial_key run function dungeon:game/display/room_6

#spectator
execute if score BLUE_BEARS dungeon.room matches 9 as @a[team=BLUE_BEARS,gamemode=adventure] run gamemode spectator @s
execute if score RED_RACCOONS dungeon.room matches 9 as @a[team=RED_RACCOONS,gamemode=adventure] run gamemode spectator @s
execute if score CYAN_COUGARS dungeon.room matches 9 as @a[team=CYAN_COUGARS,gamemode=adventure] run gamemode spectator @s
execute if score GREEN_GOATS dungeon.room matches 9 as @a[team=GREEN_GOATS,gamemode=adventure] run gamemode spectator @s
execute if score PURPLE_PENGUINS dungeon.room matches 9 as @a[team=PURPLE_PENGUINS,gamemode=adventure] run gamemode spectator @s
execute if score ORANGE_OTTERS dungeon.room matches 9 as @a[team=ORANGE_OTTERS,gamemode=adventure] run gamemode spectator @s
execute if score YELLOW_YAKS dungeon.room matches 9 as @a[team=YELLOW_YAKS,gamemode=adventure] run gamemode spectator @s
execute if score PINK_PIKAS dungeon.room matches 9 as @a[team=PINK_PIKAS,gamemode=adventure] run gamemode spectator @s

#end after all completions
#execute as @a if items entity @s hotbar.* ominous_trial_key unless score BLUE_BEARS dungeon.room matches 1..8 unless score RED_RACCOONS dungeon.room matches 1..8 unless score CYAN_COUGARS dungeon.room matches 1..8 unless score GREEN_GOATS dungeon.room matches 1..8 unless score PURPLE_PENGUINS dungeon.room matches 1..8 unless score ORANGE_OTTERS dungeon.room matches 1..8 unless score YELLOW_YAKS dungeon.room matches 1..8 unless score PINK_PIKAS dungeon.room matches 1..8 run function dungeon:unload

execute as @a if items entity @s hotbar.* ominous_trial_key run clear @s ominous_trial_key