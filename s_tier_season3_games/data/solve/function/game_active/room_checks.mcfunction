# this function handles all teams' room checks

# logic (per team):
# 1) increment active timer
# 2) check if all players are in hallway
# 3) if so, increment the room they are working on & remove the appropriate netherite blocks

# clear items between rooms
execute as @a if entity @s[x=33,y=92,z=5,dx=2,dy=4,dz=103] if score @s solve.stats.roomsCompleted matches 0 run clear @s
execute as @a if entity @s[x=53,y=92,z=5,dx=2,dy=4,dz=103] if score @s solve.stats.roomsCompleted matches 1 run clear @s
execute as @a if entity @s[x=72,y=92,z=5,dx=2,dy=4,dz=103] if score @s solve.stats.roomsCompleted matches 2 run clear @s
execute as @a if entity @s[x=91,y=92,z=5,dx=2,dy=4,dz=103] if score @s solve.stats.roomsCompleted matches 3 run clear @s

# <===== RED RACCOONS =====>

# coordinates:
# 18 93 6 --> 18 94 6
# 37 93 6 --> 37 94 6
# 56 93 6 --> 56 94 6
# 75 93 6 --> 75 94 6
# 94 93 6 --> 94 94 6

# Room 1:

# increment active timer
execute if score solve.RedRaccoons solve.stats.roomsCompleted matches 0 run scoreboard players add solve.RedRaccoons solve.timer.game.room1 1

# check if room is completed

# if player is in hallway, set their room completed to 1
execute in solve:solve as @a[team=RED_RACCOONS,x=33,y=92,z=5,dx=4,dy=4,dz=3] run scoreboard players set @s solve.stats.roomsCompleted 1

# check how many players are completed for the team
scoreboard players set solve.RedRaccoons solve.stats.playersCompleted 0
execute if score solve.RedRaccoons solve.stats.roomsCompleted matches 0 as @a[team=RED_RACCOONS,scores={solve.stats.roomsCompleted=1..}] run scoreboard players add solve.RedRaccoons solve.stats.playersCompleted 1

# if all players on the team are completed, increment the room & remove the netherite blocks
execute in solve:solve if score solve.RedRaccoons solve.stats.roomsCompleted matches 0 if score solve.RedRaccoons solve.stats.playersCompleted = solve.RedRaccoons solve.stats.players run scoreboard players set solve.RedRaccoons solve.stats.roomsCompleted 1
execute in solve:solve if score solve.RedRaccoons solve.stats.roomsCompleted matches 1 run fill 37 93 6 37 94 6 air replace minecraft:netherite_block

# Room 2:

# increment active timer
execute if score solve.RedRaccoons solve.stats.roomsCompleted matches 1 run scoreboard players add solve.RedRaccoons solve.timer.game.room2 1

# check if room is completed

# if player is in hallway, set their room completed to 1
execute in solve:solve as @a[team=RED_RACCOONS,x=53,y=92,z=5,dx=4,dy=4,dz=3] run scoreboard players set @s solve.stats.roomsCompleted 2

# check how many players are completed for the team
scoreboard players set solve.RedRaccoons solve.stats.playersCompleted 0
execute if score solve.RedRaccoons solve.stats.roomsCompleted matches 1 as @a[team=RED_RACCOONS,scores={solve.stats.roomsCompleted=2..}] run scoreboard players add solve.RedRaccoons solve.stats.playersCompleted 1

# if all players on the team are completed, increment the room & remove the netherite blocks
execute in solve:solve if score solve.RedRaccoons solve.stats.roomsCompleted matches 1 if score solve.RedRaccoons solve.stats.playersCompleted = solve.RedRaccoons solve.stats.players run scoreboard players set solve.RedRaccoons solve.stats.roomsCompleted 2
execute in solve:solve if score solve.RedRaccoons solve.stats.roomsCompleted matches 2 run fill 56 93 6 56 94 6 air replace minecraft:netherite_block

# Room 3:

# increment active timer
execute if score solve.RedRaccoons solve.stats.roomsCompleted matches 2 run scoreboard players add solve.RedRaccoons solve.timer.game.room3 1

# check if room is completed

# if player is in hallway, set their room completed to 1
execute in solve:solve as @a[team=RED_RACCOONS,x=72,y=92,z=5,dx=4,dy=4,dz=3] run scoreboard players set @s solve.stats.roomsCompleted 3

# check how many players are completed for the team
scoreboard players set solve.RedRaccoons solve.stats.playersCompleted 0
execute if score solve.RedRaccoons solve.stats.roomsCompleted matches 2 as @a[team=RED_RACCOONS,scores={solve.stats.roomsCompleted=3..}] run scoreboard players add solve.RedRaccoons solve.stats.playersCompleted 1

# if all players on the team are completed, increment the room & remove the netherite blocks
execute in solve:solve if score solve.RedRaccoons solve.stats.roomsCompleted matches 2 if score solve.RedRaccoons solve.stats.playersCompleted = solve.RedRaccoons solve.stats.players run scoreboard players set solve.RedRaccoons solve.stats.roomsCompleted 3
execute in solve:solve if score solve.RedRaccoons solve.stats.roomsCompleted matches 3 run fill 75 93 6 75 94 6 air replace minecraft:netherite_block

# Room 4:

# increment active timer
execute if score solve.RedRaccoons solve.stats.roomsCompleted matches 3 run scoreboard players add solve.RedRaccoons solve.timer.game.room4 1

# check if room is completed

# if player is in hallway, set their room completed to 1
execute in solve:solve as @a[team=RED_RACCOONS,x=91,y=92,z=5,dx=4,dy=4,dz=3] run scoreboard players set @s solve.stats.roomsCompleted 4

# check how many players are completed for the team
scoreboard players set solve.RedRaccoons solve.stats.playersCompleted 0
execute if score solve.RedRaccoons solve.stats.roomsCompleted matches 3 as @a[team=RED_RACCOONS,scores={solve.stats.roomsCompleted=4..}] run scoreboard players add solve.RedRaccoons solve.stats.playersCompleted 1

# if all players on the team are completed, increment the room & remove the netherite blocks
execute in solve:solve if score solve.RedRaccoons solve.stats.roomsCompleted matches 3 if score solve.RedRaccoons solve.stats.playersCompleted = solve.RedRaccoons solve.stats.players run scoreboard players set solve.RedRaccoons solve.stats.roomsCompleted 4
execute in solve:solve if score solve.RedRaccoons solve.stats.roomsCompleted matches 4 run fill 94 93 6 94 94 6 air replace minecraft:netherite_block

# Repeat for other teams:

# <===== ORANGE OTTERS =====>

execute if score solve.OrangeOtters solve.stats.roomsCompleted matches 0 run scoreboard players add solve.OrangeOtters solve.timer.game.room1 1
execute in solve:solve as @a[team=ORANGE_OTTERS,x=33,y=92,z=25,dx=4,dy=4,dz=3] run scoreboard players set @s solve.stats.roomsCompleted 1
scoreboard players set solve.OrangeOtters solve.stats.playersCompleted 0
execute if score solve.OrangeOtters solve.stats.roomsCompleted matches 0 as @a[team=ORANGE_OTTERS,scores={solve.stats.roomsCompleted=1..}] run scoreboard players add solve.OrangeOtters solve.stats.playersCompleted 1
execute in solve:solve if score solve.OrangeOtters solve.stats.roomsCompleted matches 0 if score solve.OrangeOtters solve.stats.playersCompleted = solve.OrangeOtters solve.stats.players run scoreboard players set solve.OrangeOtters solve.stats.roomsCompleted 1
execute in solve:solve if score solve.OrangeOtters solve.stats.roomsCompleted matches 1 run fill 37 93 6 37 94 26 air replace minecraft:netherite_block

execute if score solve.OrangeOtters solve.stats.roomsCompleted matches 1 run scoreboard players add solve.OrangeOtters solve.timer.game.room2 1
execute in solve:solve as @a[team=ORANGE_OTTERS,x=53,y=92,z=25,dx=4,dy=4,dz=3] run scoreboard players set @s solve.stats.roomsCompleted 2
scoreboard players set solve.OrangeOtters solve.stats.playersCompleted 0
execute if score solve.OrangeOtters solve.stats.roomsCompleted matches 1 as @a[team=ORANGE_OTTERS,scores={solve.stats.roomsCompleted=2..}] run scoreboard players add solve.OrangeOtters solve.stats.playersCompleted 1
execute in solve:solve if score solve.OrangeOtters solve.stats.roomsCompleted matches 1 if score solve.OrangeOtters solve.stats.playersCompleted = solve.OrangeOtters solve.stats.players run scoreboard players set solve.OrangeOtters solve.stats.roomsCompleted 2
execute in solve:solve if score solve.OrangeOtters solve.stats.roomsCompleted matches 2 run fill 56 93 6 56 94 26 air replace minecraft:netherite_block

execute if score solve.OrangeOtters solve.stats.roomsCompleted matches 2 run scoreboard players add solve.OrangeOtters solve.timer.game.room3 1
execute in solve:solve as @a[team=ORANGE_OTTERS,x=72,y=92,z=25,dx=4,dy=4,dz=3] run scoreboard players set @s solve.stats.roomsCompleted 3
scoreboard players set solve.OrangeOtters solve.stats.playersCompleted 0
execute if score solve.OrangeOtters solve.stats.roomsCompleted matches 2 as @a[team=ORANGE_OTTERS,scores={solve.stats.roomsCompleted=3..}] run scoreboard players add solve.OrangeOtters solve.stats.playersCompleted 1
execute in solve:solve if score solve.OrangeOtters solve.stats.roomsCompleted matches 2 if score solve.OrangeOtters solve.stats.playersCompleted = solve.OrangeOtters solve.stats.players run scoreboard players set solve.OrangeOtters solve.stats.roomsCompleted 3
execute in solve:solve if score solve.OrangeOtters solve.stats.roomsCompleted matches 3 run fill 75 93 6 75 94 26 air replace minecraft:netherite_block

execute if score solve.OrangeOtters solve.stats.roomsCompleted matches 3 run scoreboard players add solve.OrangeOtters solve.timer.game.room4 1
execute in solve:solve as @a[team=ORANGE_OTTERS,x=91,y=92,z=25,dx=4,dy=4,dz=3] run scoreboard players set @s solve.stats.roomsCompleted 4
scoreboard players set solve.OrangeOtters solve.stats.playersCompleted 0
execute if score solve.OrangeOtters solve.stats.roomsCompleted matches 3 as @a[team=ORANGE_OTTERS,scores={solve.stats.roomsCompleted=4..}] run scoreboard players add solve.OrangeOtters solve.stats.playersCompleted 1
execute in solve:solve if score solve.OrangeOtters solve.stats.roomsCompleted matches 3 if score solve.OrangeOtters solve.stats.playersCompleted = solve.OrangeOtters solve.stats.players run scoreboard players set solve.OrangeOtters solve.stats.roomsCompleted 4
execute in solve:solve if score solve.OrangeOtters solve.stats.roomsCompleted matches 4 run fill 94 93 6 94 94 26 air replace minecraft:netherite_block

# <===== PINK PIKAS =====>

execute if score solve.PinkPikas solve.stats.roomsCompleted matches 0 run scoreboard players add solve.PinkPikas solve.timer.game.room1 1
execute in solve:solve as @a[team=PINK_PIKAS,x=33,y=92,z=45,dx=4,dy=4,dz=3] run scoreboard players set @s solve.stats.roomsCompleted 1
scoreboard players set solve.PinkPikas solve.stats.playersCompleted 0
execute if score solve.PinkPikas solve.stats.roomsCompleted matches 0 as @a[team=PINK_PIKAS,scores={solve.stats.roomsCompleted=1..}] run scoreboard players add solve.PinkPikas solve.stats.playersCompleted 1
execute in solve:solve if score solve.PinkPikas solve.stats.roomsCompleted matches 0 if score solve.PinkPikas solve.stats.playersCompleted = solve.PinkPikas solve.stats.players run scoreboard players set solve.PinkPikas solve.stats.roomsCompleted 1
execute in solve:solve if score solve.PinkPikas solve.stats.roomsCompleted matches 1 run fill 37 93 46 37 94 46 air replace minecraft:netherite_block

execute if score solve.PinkPikas solve.stats.roomsCompleted matches 1 run scoreboard players add solve.PinkPikas solve.timer.game.room2 1
execute in solve:solve as @a[team=PINK_PIKAS,x=53,y=92,z=45,dx=4,dy=4,dz=3] run scoreboard players set @s solve.stats.roomsCompleted 2
scoreboard players set solve.PinkPikas solve.stats.playersCompleted 0
execute if score solve.PinkPikas solve.stats.roomsCompleted matches 1 as @a[team=PINK_PIKAS,scores={solve.stats.roomsCompleted=2..}] run scoreboard players add solve.PinkPikas solve.stats.playersCompleted 1
execute in solve:solve if score solve.PinkPikas solve.stats.roomsCompleted matches 1 if score solve.PinkPikas solve.stats.playersCompleted = solve.PinkPikas solve.stats.players run scoreboard players set solve.PinkPikas solve.stats.roomsCompleted 2
execute in solve:solve if score solve.PinkPikas solve.stats.roomsCompleted matches 2 run fill 56 93 46 56 94 46 air replace minecraft:netherite_block

execute if score solve.PinkPikas solve.stats.roomsCompleted matches 2 run scoreboard players add solve.PinkPikas solve.timer.game.room3 1
execute in solve:solve as @a[team=PINK_PIKAS,x=72,y=92,z=45,dx=4,dy=4,dz=3] run scoreboard players set @s solve.stats.roomsCompleted 3
scoreboard players set solve.PinkPikas solve.stats.playersCompleted 0
execute if score solve.PinkPikas solve.stats.roomsCompleted matches 2 as @a[team=PINK_PIKAS,scores={solve.stats.roomsCompleted=3..}] run scoreboard players add solve.PinkPikas solve.stats.playersCompleted 1
execute in solve:solve if score solve.PinkPikas solve.stats.roomsCompleted matches 2 if score solve.PinkPikas solve.stats.playersCompleted = solve.PinkPikas solve.stats.players run scoreboard players set solve.PinkPikas solve.stats.roomsCompleted 3
execute in solve:solve if score solve.PinkPikas solve.stats.roomsCompleted matches 3 run fill 75 93 46 75 94 46 air replace minecraft:netherite_block

execute if score solve.PinkPikas solve.stats.roomsCompleted matches 3 run scoreboard players add solve.PinkPikas solve.timer.game.room4 1
execute in solve:solve as @a[team=PINK_PIKAS,x=91,y=92,z=45,dx=4,dy=4,dz=3] run scoreboard players set @s solve.stats.roomsCompleted 4
scoreboard players set solve.PinkPikas solve.stats.playersCompleted 0
execute if score solve.PinkPikas solve.stats.roomsCompleted matches 3 as @a[team=PINK_PIKAS,scores={solve.stats.roomsCompleted=4..}] run scoreboard players add solve.PinkPikas solve.stats.playersCompleted 1
execute in solve:solve if score solve.PinkPikas solve.stats.roomsCompleted matches 3 if score solve.PinkPikas solve.stats.playersCompleted = solve.PinkPikas solve.stats.players run scoreboard players set solve.PinkPikas solve.stats.roomsCompleted 4
execute in solve:solve if score solve.PinkPikas solve.stats.roomsCompleted matches 4 run fill 94 93 46 94 94 46 air replace minecraft:netherite_block

# <===== GREEN GOATS =====>

execute if score solve.GreenGoats solve.stats.roomsCompleted matches 0 run scoreboard players add solve.GreenGoats solve.timer.game.room1 1
execute in solve:solve as @a[team=GREEN_GOATS,x=33,y=92,z=65,dx=4,dy=4,dz=3] run scoreboard players set @s solve.stats.roomsCompleted 1
scoreboard players set solve.GreenGoats solve.stats.playersCompleted 0
execute if score solve.GreenGoats solve.stats.roomsCompleted matches 0 as @a[team=GREEN_GOATS,scores={solve.stats.roomsCompleted=1..}] run scoreboard players add solve.GreenGoats solve.stats.playersCompleted 1
execute in solve:solve if score solve.GreenGoats solve.stats.roomsCompleted matches 0 if score solve.GreenGoats solve.stats.playersCompleted = solve.GreenGoats solve.stats.players run scoreboard players set solve.GreenGoats solve.stats.roomsCompleted 1
execute in solve:solve if score solve.GreenGoats solve.stats.roomsCompleted matches 1 run fill 37 93 66 37 94 66 air replace minecraft:netherite_block

execute if score solve.GreenGoats solve.stats.roomsCompleted matches 1 run scoreboard players add solve.GreenGoats solve.timer.game.room2 1
execute in solve:solve as @a[team=GREEN_GOATS,x=53,y=92,z=65,dx=4,dy=4,dz=3] run scoreboard players set @s solve.stats.roomsCompleted 2
scoreboard players set solve.GreenGoats solve.stats.playersCompleted 0
execute if score solve.GreenGoats solve.stats.roomsCompleted matches 1 as @a[team=GREEN_GOATS,scores={solve.stats.roomsCompleted=2..}] run scoreboard players add solve.GreenGoats solve.stats.playersCompleted 1
execute in solve:solve if score solve.GreenGoats solve.stats.roomsCompleted matches 1 if score solve.GreenGoats solve.stats.playersCompleted = solve.GreenGoats solve.stats.players run scoreboard players set solve.GreenGoats solve.stats.roomsCompleted 2
execute in solve:solve if score solve.GreenGoats solve.stats.roomsCompleted matches 2 run fill 56 93 66 56 94 66 air replace minecraft:netherite_block

execute if score solve.GreenGoats solve.stats.roomsCompleted matches 2 run scoreboard players add solve.GreenGoats solve.timer.game.room3 1
execute in solve:solve as @a[team=GREEN_GOATS,x=72,y=92,z=65,dx=4,dy=4,dz=3] run scoreboard players set @s solve.stats.roomsCompleted 3
scoreboard players set solve.GreenGoats solve.stats.playersCompleted 0
execute if score solve.GreenGoats solve.stats.roomsCompleted matches 2 as @a[team=GREEN_GOATS,scores={solve.stats.roomsCompleted=3..}] run scoreboard players add solve.GreenGoats solve.stats.playersCompleted 1
execute in solve:solve if score solve.GreenGoats solve.stats.roomsCompleted matches 2 if score solve.GreenGoats solve.stats.playersCompleted = solve.GreenGoats solve.stats.players run scoreboard players set solve.GreenGoats solve.stats.roomsCompleted 3
execute in solve:solve if score solve.GreenGoats solve.stats.roomsCompleted matches 3 run fill 75 93 66 75 94 66 air replace minecraft:netherite_block

execute if score solve.GreenGoats solve.stats.roomsCompleted matches 3 run scoreboard players add solve.GreenGoats solve.timer.game.room4 1
execute in solve:solve as @a[team=GREEN_GOATS,x=91,y=92,z=65,dx=4,dy=4,dz=3] run scoreboard players set @s solve.stats.roomsCompleted 4
scoreboard players set solve.GreenGoats solve.stats.playersCompleted 0
execute if score solve.GreenGoats solve.stats.roomsCompleted matches 3 as @a[team=GREEN_GOATS,scores={solve.stats.roomsCompleted=4..}] run scoreboard players add solve.GreenGoats solve.stats.playersCompleted 1
execute in solve:solve if score solve.GreenGoats solve.stats.roomsCompleted matches 3 if score solve.GreenGoats solve.stats.playersCompleted = solve.GreenGoats solve.stats.players run scoreboard players set solve.GreenGoats solve.stats.roomsCompleted 4
execute in solve:solve if score solve.GreenGoats solve.stats.roomsCompleted matches 4 run fill 94 93 66 94 94 66 air replace minecraft:netherite_block

# <===== CYAN COUGARS =====>

execute if score solve.CyanCougars solve.stats.roomsCompleted matches 0 run scoreboard players add solve.CyanCougars solve.timer.game.room1 1
execute in solve:solve as @a[team=CYAN_COUGARS,x=33,y=92,z=85,dx=4,dy=4,dz=3] run scoreboard players set @s solve.stats.roomsCompleted 1
scoreboard players set solve.CyanCougars solve.stats.playersCompleted 0
execute if score solve.CyanCougars solve.stats.roomsCompleted matches 0 as @a[team=CYAN_COUGARS,scores={solve.stats.roomsCompleted=1..}] run scoreboard players add solve.CyanCougars solve.stats.playersCompleted 1
execute in solve:solve if score solve.CyanCougars solve.stats.roomsCompleted matches 0 if score solve.CyanCougars solve.stats.playersCompleted = solve.CyanCougars solve.stats.players run scoreboard players set solve.CyanCougars solve.stats.roomsCompleted 1
execute in solve:solve if score solve.CyanCougars solve.stats.roomsCompleted matches 1 run fill 37 93 86 37 94 86 air replace minecraft:netherite_block

execute if score solve.CyanCougars solve.stats.roomsCompleted matches 1 run scoreboard players add solve.CyanCougars solve.timer.game.room2 1
execute in solve:solve as @a[team=CYAN_COUGARS,x=53,y=92,z=85,dx=4,dy=4,dz=3] run scoreboard players set @s solve.stats.roomsCompleted 2
scoreboard players set solve.CyanCougars solve.stats.playersCompleted 0
execute if score solve.CyanCougars solve.stats.roomsCompleted matches 1 as @a[team=CYAN_COUGARS,scores={solve.stats.roomsCompleted=2..}] run scoreboard players add solve.CyanCougars solve.stats.playersCompleted 1
execute in solve:solve if score solve.CyanCougars solve.stats.roomsCompleted matches 1 if score solve.CyanCougars solve.stats.playersCompleted = solve.CyanCougars solve.stats.players run scoreboard players set solve.CyanCougars solve.stats.roomsCompleted 2
execute in solve:solve if score solve.CyanCougars solve.stats.roomsCompleted matches 2 run fill 56 93 86 56 94 86 air replace minecraft:netherite_block

execute if score solve.CyanCougars solve.stats.roomsCompleted matches 2 run scoreboard players add solve.CyanCougars solve.timer.game.room3 1
execute in solve:solve as @a[team=CYAN_COUGARS,x=72,y=92,z=85,dx=4,dy=4,dz=3] run scoreboard players set @s solve.stats.roomsCompleted 3
scoreboard players set solve.CyanCougars solve.stats.playersCompleted 0
execute if score solve.CyanCougars solve.stats.roomsCompleted matches 2 as @a[team=CYAN_COUGARS,scores={solve.stats.roomsCompleted=3..}] run scoreboard players add solve.CyanCougars solve.stats.playersCompleted 1
execute in solve:solve if score solve.CyanCougars solve.stats.roomsCompleted matches 2 if score solve.CyanCougars solve.stats.playersCompleted = solve.CyanCougars solve.stats.players run scoreboard players set solve.CyanCougars solve.stats.roomsCompleted 3
execute in solve:solve if score solve.CyanCougars solve.stats.roomsCompleted matches 3 run fill 75 93 86 75 94 86 air replace minecraft:netherite_block

execute if score solve.CyanCougars solve.stats.roomsCompleted matches 3 run scoreboard players add solve.CyanCougars solve.timer.game.room4 1
execute in solve:solve as @a[team=CYAN_COUGARS,x=91,y=92,z=85,dx=4,dy=4,dz=3] run scoreboard players set @s solve.stats.roomsCompleted 4
scoreboard players set solve.CyanCougars solve.stats.playersCompleted 0
execute if score solve.CyanCougars solve.stats.roomsCompleted matches 3 as @a[team=CYAN_COUGARS,scores={solve.stats.roomsCompleted=4..}] run scoreboard players add solve.CyanCougars solve.stats.playersCompleted 1
execute in solve:solve if score solve.CyanCougars solve.stats.roomsCompleted matches 3 if score solve.CyanCougars solve.stats.playersCompleted = solve.CyanCougars solve.stats.players run scoreboard players set solve.CyanCougars solve.stats.roomsCompleted 4
execute in solve:solve if score solve.CyanCougars solve.stats.roomsCompleted matches 4 run fill 94 93 86 94 94 86 air replace minecraft:netherite_block

# <===== PURPLE PENGUINS =====>

execute if score solve.PurplePenguins solve.stats.roomsCompleted matches 0 run scoreboard players add solve.PurplePenguins solve.timer.game.room1 1
execute in solve:solve as @a[team=PURPLE_PENGUINS,x=33,y=92,z=105,dx=4,dy=4,dz=3] run scoreboard players set @s solve.stats.roomsCompleted 1
scoreboard players set solve.PurplePenguins solve.stats.playersCompleted 0
execute if score solve.PurplePenguins solve.stats.roomsCompleted matches 0 as @a[team=PURPLE_PENGUINS,scores={solve.stats.roomsCompleted=1..}] run scoreboard players add solve.PurplePenguins solve.stats.playersCompleted 1
execute in solve:solve if score solve.PurplePenguins solve.stats.roomsCompleted matches 0 if score solve.PurplePenguins solve.stats.playersCompleted = solve.PurplePenguins solve.stats.players run scoreboard players set solve.PurplePenguins solve.stats.roomsCompleted 1
execute in solve:solve if score solve.PurplePenguins solve.stats.roomsCompleted matches 1 run fill 37 93 106 37 94 106 air replace minecraft:netherite_block

execute if score solve.PurplePenguins solve.stats.roomsCompleted matches 1 run scoreboard players add solve.PurplePenguins solve.timer.game.room2 1
execute in solve:solve as @a[team=PURPLE_PENGUINS,x=53,y=92,z=105,dx=4,dy=4,dz=3] run scoreboard players set @s solve.stats.roomsCompleted 2
scoreboard players set solve.PurplePenguins solve.stats.playersCompleted 0
execute if score solve.PurplePenguins solve.stats.roomsCompleted matches 1 as @a[team=PURPLE_PENGUINS,scores={solve.stats.roomsCompleted=2..}] run scoreboard players add solve.PurplePenguins solve.stats.playersCompleted 1
execute in solve:solve if score solve.PurplePenguins solve.stats.roomsCompleted matches 1 if score solve.PurplePenguins solve.stats.playersCompleted = solve.PurplePenguins solve.stats.players run scoreboard players set solve.PurplePenguins solve.stats.roomsCompleted 2
execute in solve:solve if score solve.PurplePenguins solve.stats.roomsCompleted matches 2 run fill 56 93 106 56 94 106 air replace minecraft:netherite_block

execute if score solve.PurplePenguins solve.stats.roomsCompleted matches 2 run scoreboard players add solve.PurplePenguins solve.timer.game.room3 1
execute in solve:solve as @a[team=PURPLE_PENGUINS,x=72,y=92,z=105,dx=4,dy=4,dz=3] run scoreboard players set @s solve.stats.roomsCompleted 3
scoreboard players set solve.PurplePenguins solve.stats.playersCompleted 0
execute if score solve.PurplePenguins solve.stats.roomsCompleted matches 2 as @a[team=PURPLE_PENGUINS,scores={solve.stats.roomsCompleted=3..}] run scoreboard players add solve.PurplePenguins solve.stats.playersCompleted 1
execute in solve:solve if score solve.PurplePenguins solve.stats.roomsCompleted matches 2 if score solve.PurplePenguins solve.stats.playersCompleted = solve.PurplePenguins solve.stats.players run scoreboard players set solve.PurplePenguins solve.stats.roomsCompleted 3
execute in solve:solve if score solve.PurplePenguins solve.stats.roomsCompleted matches 3 run fill 75 93 106 75 94 106 air replace minecraft:netherite_block

execute if score solve.PurplePenguins solve.stats.roomsCompleted matches 3 run scoreboard players add solve.PurplePenguins solve.timer.game.room4 1
execute in solve:solve as @a[team=PURPLE_PENGUINS,x=91,y=92,z=105,dx=4,dy=4,dz=3] run scoreboard players set @s solve.stats.roomsCompleted 4
scoreboard players set solve.PurplePenguins solve.stats.playersCompleted 0
execute if score solve.PurplePenguins solve.stats.roomsCompleted matches 3 as @a[team=PURPLE_PENGUINS,scores={solve.stats.roomsCompleted=4..}] run scoreboard players add solve.PurplePenguins solve.stats.playersCompleted 1
execute in solve:solve if score solve.PurplePenguins solve.stats.roomsCompleted matches 3 if score solve.PurplePenguins solve.stats.playersCompleted = solve.PurplePenguins solve.stats.players run scoreboard players set solve.PurplePenguins solve.stats.roomsCompleted 4
execute in solve:solve if score solve.PurplePenguins solve.stats.roomsCompleted matches 4 run fill 94 93 106 94 94 106 air replace minecraft:netherite_block
