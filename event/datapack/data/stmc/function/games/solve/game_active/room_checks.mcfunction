# this function handles all teams' room checks

# logic (per team):
# 1) increment active timer
# 2) check if all players are in hallway
# 3) if so, increment the room they are working on & remove the appropriate netherite blocks

# clear items between rooms
execute as @a if entity @s[x=33,y=95,z=5,dx=2,dy=4,dz=143] if score @s solve.stats.roomsCompleted matches 0 run clear @s
execute as @a if entity @s[x=53,y=95,z=5,dx=2,dy=4,dz=143] if score @s solve.stats.roomsCompleted matches 1 run clear @s
execute as @a if entity @s[x=72,y=95,z=5,dx=2,dy=4,dz=143] if score @s solve.stats.roomsCompleted matches 2 run clear @s
execute as @a if entity @s[x=91,y=95,z=5,dx=2,dy=4,dz=143] if score @s solve.stats.roomsCompleted matches 3 run clear @s

# <===== RED RACCOONS =====>

# coordinates:
# 18 97 68 -> 37 -> 57 -> 75 -> 94

# Room 1:

# increment active timer
execute if score solve.RedRaccoons solve.stats.roomsCompleted matches 0 run scoreboard players add solve.RedRaccoons solve.timer.game.room1 1

# check if room is completed

# if player is in hallway, set their room completed to 1
execute in stmc:solve as @a[team=RED_RACCOONS,x=33,y=95,z=5,dx=4,dy=4,dz=3] run scoreboard players set @s solve.stats.roomsCompleted 1

# check how many players are completed for the team
scoreboard players set solve.RedRaccoons solve.stats.playersCompleted 0
execute if score solve.RedRaccoons solve.stats.roomsCompleted matches 0 as @a[team=RED_RACCOONS,scores={solve.stats.roomsCompleted=1..}] run scoreboard players add solve.RedRaccoons solve.stats.playersCompleted 1

# if all players on the team are completed, increment the room & remove the netherite blocks
execute in stmc:solve if score solve.RedRaccoons solve.stats.roomsCompleted matches 0 if score solve.RedRaccoons solve.stats.playersCompleted = solve.RedRaccoons solve.stats.players run scoreboard players set solve.RedRaccoons solve.stats.roomsCompleted 1
execute in stmc:solve if score solve.RedRaccoons solve.stats.roomsCompleted matches 1 run fill 37 97 8 37 98 8 air replace minecraft:netherite_block

# Room 2:

# increment active timer
execute if score solve.RedRaccoons solve.stats.roomsCompleted matches 1 run scoreboard players add solve.RedRaccoons solve.timer.game.room2 1

# check if room is completed

# if player is in hallway, set their room completed to 1
execute in stmc:solve as @a[team=RED_RACCOONS,x=53,y=95,z=5,dx=4,dy=4,dz=3] run scoreboard players set @s solve.stats.roomsCompleted 2

# check how many players are completed for the team
scoreboard players set solve.RedRaccoons solve.stats.playersCompleted 0
execute if score solve.RedRaccoons solve.stats.roomsCompleted matches 1 as @a[team=RED_RACCOONS,scores={solve.stats.roomsCompleted=2..}] run scoreboard players add solve.RedRaccoons solve.stats.playersCompleted 1

# if all players on the team are completed, increment the room & remove the netherite blocks
execute in stmc:solve if score solve.RedRaccoons solve.stats.roomsCompleted matches 1 if score solve.RedRaccoons solve.stats.playersCompleted = solve.RedRaccoons solve.stats.players run scoreboard players set solve.RedRaccoons solve.stats.roomsCompleted 2
execute in stmc:solve if score solve.RedRaccoons solve.stats.roomsCompleted matches 2 run fill 57 97 8 57 98 8 air replace minecraft:netherite_block

# Room 3:

# increment active timer
execute if score solve.RedRaccoons solve.stats.roomsCompleted matches 2 run scoreboard players add solve.RedRaccoons solve.timer.game.room3 1

# check if room is completed

# if player is in hallway, set their room completed to 1
execute in stmc:solve as @a[team=RED_RACCOONS,x=72,y=95,z=5,dx=4,dy=4,dz=3] run scoreboard players set @s solve.stats.roomsCompleted 3

# check how many players are completed for the team
scoreboard players set solve.RedRaccoons solve.stats.playersCompleted 0
execute if score solve.RedRaccoons solve.stats.roomsCompleted matches 2 as @a[team=RED_RACCOONS,scores={solve.stats.roomsCompleted=3..}] run scoreboard players add solve.RedRaccoons solve.stats.playersCompleted 1

# if all players on the team are completed, increment the room & remove the netherite blocks
execute in stmc:solve if score solve.RedRaccoons solve.stats.roomsCompleted matches 2 if score solve.RedRaccoons solve.stats.playersCompleted = solve.RedRaccoons solve.stats.players run scoreboard players set solve.RedRaccoons solve.stats.roomsCompleted 3
execute in stmc:solve if score solve.RedRaccoons solve.stats.roomsCompleted matches 3 run fill 75 97 8 75 98 8 air replace minecraft:netherite_block

# Room 4:

# increment active timer
execute if score solve.RedRaccoons solve.stats.roomsCompleted matches 3 run scoreboard players add solve.RedRaccoons solve.timer.game.room4 1

# check if room is completed

# if player is in hallway, set their room completed to 1
execute in stmc:solve as @a[team=RED_RACCOONS,x=91,y=95,z=5,dx=4,dy=4,dz=3] run scoreboard players set @s solve.stats.roomsCompleted 4

# check how many players are completed for the team
scoreboard players set solve.RedRaccoons solve.stats.playersCompleted 0
execute if score solve.RedRaccoons solve.stats.roomsCompleted matches 3 as @a[team=RED_RACCOONS,scores={solve.stats.roomsCompleted=4..}] run scoreboard players add solve.RedRaccoons solve.stats.playersCompleted 1

# if all players on the team are completed, increment the room & remove the netherite blocks
execute in stmc:solve if score solve.RedRaccoons solve.stats.roomsCompleted matches 3 if score solve.RedRaccoons solve.stats.playersCompleted = solve.RedRaccoons solve.stats.players run scoreboard players set solve.RedRaccoons solve.stats.roomsCompleted 4
execute in stmc:solve if score solve.RedRaccoons solve.stats.roomsCompleted matches 4 run fill 94 97 8 94 98 8 air replace minecraft:netherite_block

# Repeat for other teams:

# <===== ORANGE OTTERS =====>

execute if score solve.OrangeOtters solve.stats.roomsCompleted matches 0 run scoreboard players add solve.OrangeOtters solve.timer.game.room1 1
execute in stmc:solve as @a[team=ORANGE_OTTERS,x=33,y=95,z=25,dx=4,dy=4,dz=3] run scoreboard players set @s solve.stats.roomsCompleted 1
scoreboard players set solve.OrangeOtters solve.stats.playersCompleted 0
execute if score solve.OrangeOtters solve.stats.roomsCompleted matches 0 as @a[team=ORANGE_OTTERS,scores={solve.stats.roomsCompleted=1..}] run scoreboard players add solve.OrangeOtters solve.stats.playersCompleted 1
execute in stmc:solve if score solve.OrangeOtters solve.stats.roomsCompleted matches 0 if score solve.OrangeOtters solve.stats.playersCompleted = solve.OrangeOtters solve.stats.players run scoreboard players set solve.OrangeOtters solve.stats.roomsCompleted 1
execute in stmc:solve if score solve.OrangeOtters solve.stats.roomsCompleted matches 1 run fill 37 97 28 37 98 28 air replace minecraft:netherite_block

execute if score solve.OrangeOtters solve.stats.roomsCompleted matches 1 run scoreboard players add solve.OrangeOtters solve.timer.game.room2 1
execute in stmc:solve as @a[team=ORANGE_OTTERS,x=53,y=95,z=25,dx=4,dy=4,dz=3] run scoreboard players set @s solve.stats.roomsCompleted 2
scoreboard players set solve.OrangeOtters solve.stats.playersCompleted 0
execute if score solve.OrangeOtters solve.stats.roomsCompleted matches 1 as @a[team=ORANGE_OTTERS,scores={solve.stats.roomsCompleted=2..}] run scoreboard players add solve.OrangeOtters solve.stats.playersCompleted 1
execute in stmc:solve if score solve.OrangeOtters solve.stats.roomsCompleted matches 1 if score solve.OrangeOtters solve.stats.playersCompleted = solve.OrangeOtters solve.stats.players run scoreboard players set solve.OrangeOtters solve.stats.roomsCompleted 2
execute in stmc:solve if score solve.OrangeOtters solve.stats.roomsCompleted matches 2 run fill 57 97 28 57 98 28 air replace minecraft:netherite_block

execute if score solve.OrangeOtters solve.stats.roomsCompleted matches 2 run scoreboard players add solve.OrangeOtters solve.timer.game.room3 1
execute in stmc:solve as @a[team=ORANGE_OTTERS,x=72,y=95,z=25,dx=4,dy=4,dz=3] run scoreboard players set @s solve.stats.roomsCompleted 3
scoreboard players set solve.OrangeOtters solve.stats.playersCompleted 0
execute if score solve.OrangeOtters solve.stats.roomsCompleted matches 2 as @a[team=ORANGE_OTTERS,scores={solve.stats.roomsCompleted=3..}] run scoreboard players add solve.OrangeOtters solve.stats.playersCompleted 1
execute in stmc:solve if score solve.OrangeOtters solve.stats.roomsCompleted matches 2 if score solve.OrangeOtters solve.stats.playersCompleted = solve.OrangeOtters solve.stats.players run scoreboard players set solve.OrangeOtters solve.stats.roomsCompleted 3
execute in stmc:solve if score solve.OrangeOtters solve.stats.roomsCompleted matches 3 run fill 75 97 28 75 98 28 air replace minecraft:netherite_block

execute if score solve.OrangeOtters solve.stats.roomsCompleted matches 3 run scoreboard players add solve.OrangeOtters solve.timer.game.room4 1
execute in stmc:solve as @a[team=ORANGE_OTTERS,x=91,y=95,z=25,dx=4,dy=4,dz=3] run scoreboard players set @s solve.stats.roomsCompleted 4
scoreboard players set solve.OrangeOtters solve.stats.playersCompleted 0
execute if score solve.OrangeOtters solve.stats.roomsCompleted matches 3 as @a[team=ORANGE_OTTERS,scores={solve.stats.roomsCompleted=4..}] run scoreboard players add solve.OrangeOtters solve.stats.playersCompleted 1
execute in stmc:solve if score solve.OrangeOtters solve.stats.roomsCompleted matches 3 if score solve.OrangeOtters solve.stats.playersCompleted = solve.OrangeOtters solve.stats.players run scoreboard players set solve.OrangeOtters solve.stats.roomsCompleted 4
execute in stmc:solve if score solve.OrangeOtters solve.stats.roomsCompleted matches 4 run fill 94 97 28 94 98 28 air replace minecraft:netherite_block

# <===== PINK PIKAS =====>

execute if score solve.PinkPikas solve.stats.roomsCompleted matches 0 run scoreboard players add solve.PinkPikas solve.timer.game.room1 1
execute in stmc:solve as @a[team=PINK_PIKAS,x=33,y=95,z=45,dx=4,dy=4,dz=3] run scoreboard players set @s solve.stats.roomsCompleted 1
scoreboard players set solve.PinkPikas solve.stats.playersCompleted 0
execute if score solve.PinkPikas solve.stats.roomsCompleted matches 0 as @a[team=PINK_PIKAS,scores={solve.stats.roomsCompleted=1..}] run scoreboard players add solve.PinkPikas solve.stats.playersCompleted 1
execute in stmc:solve if score solve.PinkPikas solve.stats.roomsCompleted matches 0 if score solve.PinkPikas solve.stats.playersCompleted = solve.PinkPikas solve.stats.players run scoreboard players set solve.PinkPikas solve.stats.roomsCompleted 1
execute in stmc:solve if score solve.PinkPikas solve.stats.roomsCompleted matches 1 run fill 37 97 48 37 98 48 air replace minecraft:netherite_block

execute if score solve.PinkPikas solve.stats.roomsCompleted matches 1 run scoreboard players add solve.PinkPikas solve.timer.game.room2 1
execute in stmc:solve as @a[team=PINK_PIKAS,x=53,y=95,z=45,dx=4,dy=4,dz=3] run scoreboard players set @s solve.stats.roomsCompleted 2
scoreboard players set solve.PinkPikas solve.stats.playersCompleted 0
execute if score solve.PinkPikas solve.stats.roomsCompleted matches 1 as @a[team=PINK_PIKAS,scores={solve.stats.roomsCompleted=2..}] run scoreboard players add solve.PinkPikas solve.stats.playersCompleted 1
execute in stmc:solve if score solve.PinkPikas solve.stats.roomsCompleted matches 1 if score solve.PinkPikas solve.stats.playersCompleted = solve.PinkPikas solve.stats.players run scoreboard players set solve.PinkPikas solve.stats.roomsCompleted 2
execute in stmc:solve if score solve.PinkPikas solve.stats.roomsCompleted matches 2 run fill 57 97 48 57 98 48 air replace minecraft:netherite_block

execute if score solve.PinkPikas solve.stats.roomsCompleted matches 2 run scoreboard players add solve.PinkPikas solve.timer.game.room3 1
execute in stmc:solve as @a[team=PINK_PIKAS,x=72,y=95,z=45,dx=4,dy=4,dz=3] run scoreboard players set @s solve.stats.roomsCompleted 3
scoreboard players set solve.PinkPikas solve.stats.playersCompleted 0
execute if score solve.PinkPikas solve.stats.roomsCompleted matches 2 as @a[team=PINK_PIKAS,scores={solve.stats.roomsCompleted=3..}] run scoreboard players add solve.PinkPikas solve.stats.playersCompleted 1
execute in stmc:solve if score solve.PinkPikas solve.stats.roomsCompleted matches 2 if score solve.PinkPikas solve.stats.playersCompleted = solve.PinkPikas solve.stats.players run scoreboard players set solve.PinkPikas solve.stats.roomsCompleted 3
execute in stmc:solve if score solve.PinkPikas solve.stats.roomsCompleted matches 3 run fill 75 97 48 75 98 48 air replace minecraft:netherite_block

execute if score solve.PinkPikas solve.stats.roomsCompleted matches 3 run scoreboard players add solve.PinkPikas solve.timer.game.room4 1
execute in stmc:solve as @a[team=PINK_PIKAS,x=91,y=95,z=45,dx=4,dy=4,dz=3] run scoreboard players set @s solve.stats.roomsCompleted 4
scoreboard players set solve.PinkPikas solve.stats.playersCompleted 0
execute if score solve.PinkPikas solve.stats.roomsCompleted matches 3 as @a[team=PINK_PIKAS,scores={solve.stats.roomsCompleted=4..}] run scoreboard players add solve.PinkPikas solve.stats.playersCompleted 1
execute in stmc:solve if score solve.PinkPikas solve.stats.roomsCompleted matches 3 if score solve.PinkPikas solve.stats.playersCompleted = solve.PinkPikas solve.stats.players run scoreboard players set solve.PinkPikas solve.stats.roomsCompleted 4
execute in stmc:solve if score solve.PinkPikas solve.stats.roomsCompleted matches 4 run fill 94 97 48 94 98 48 air replace minecraft:netherite_block

# <===== GREEN GOATS =====>

execute if score solve.GreenGoats solve.stats.roomsCompleted matches 0 run scoreboard players add solve.GreenGoats solve.timer.game.room1 1
execute in stmc:solve as @a[team=GREEN_GOATS,x=33,y=95,z=65,dx=4,dy=4,dz=3] run scoreboard players set @s solve.stats.roomsCompleted 1
scoreboard players set solve.GreenGoats solve.stats.playersCompleted 0
execute if score solve.GreenGoats solve.stats.roomsCompleted matches 0 as @a[team=GREEN_GOATS,scores={solve.stats.roomsCompleted=1..}] run scoreboard players add solve.GreenGoats solve.stats.playersCompleted 1
execute in stmc:solve if score solve.GreenGoats solve.stats.roomsCompleted matches 0 if score solve.GreenGoats solve.stats.playersCompleted = solve.GreenGoats solve.stats.players run scoreboard players set solve.GreenGoats solve.stats.roomsCompleted 1
execute in stmc:solve if score solve.GreenGoats solve.stats.roomsCompleted matches 1 run fill 37 97 68 37 98 68 air replace minecraft:netherite_block

execute if score solve.GreenGoats solve.stats.roomsCompleted matches 1 run scoreboard players add solve.GreenGoats solve.timer.game.room2 1
execute in stmc:solve as @a[team=GREEN_GOATS,x=53,y=95,z=65,dx=4,dy=4,dz=3] run scoreboard players set @s solve.stats.roomsCompleted 2
scoreboard players set solve.GreenGoats solve.stats.playersCompleted 0
execute if score solve.GreenGoats solve.stats.roomsCompleted matches 1 as @a[team=GREEN_GOATS,scores={solve.stats.roomsCompleted=2..}] run scoreboard players add solve.GreenGoats solve.stats.playersCompleted 1
execute in stmc:solve if score solve.GreenGoats solve.stats.roomsCompleted matches 1 if score solve.GreenGoats solve.stats.playersCompleted = solve.GreenGoats solve.stats.players run scoreboard players set solve.GreenGoats solve.stats.roomsCompleted 2
execute in stmc:solve if score solve.GreenGoats solve.stats.roomsCompleted matches 2 run fill 57 97 68 57 98 68 air replace minecraft:netherite_block

execute if score solve.GreenGoats solve.stats.roomsCompleted matches 2 run scoreboard players add solve.GreenGoats solve.timer.game.room3 1
execute in stmc:solve as @a[team=GREEN_GOATS,x=72,y=95,z=65,dx=4,dy=4,dz=3] run scoreboard players set @s solve.stats.roomsCompleted 3
scoreboard players set solve.GreenGoats solve.stats.playersCompleted 0
execute if score solve.GreenGoats solve.stats.roomsCompleted matches 2 as @a[team=GREEN_GOATS,scores={solve.stats.roomsCompleted=3..}] run scoreboard players add solve.GreenGoats solve.stats.playersCompleted 1
execute in stmc:solve if score solve.GreenGoats solve.stats.roomsCompleted matches 2 if score solve.GreenGoats solve.stats.playersCompleted = solve.GreenGoats solve.stats.players run scoreboard players set solve.GreenGoats solve.stats.roomsCompleted 3
execute in stmc:solve if score solve.GreenGoats solve.stats.roomsCompleted matches 3 run fill 75 97 68 75 98 68 air replace minecraft:netherite_block

execute if score solve.GreenGoats solve.stats.roomsCompleted matches 3 run scoreboard players add solve.GreenGoats solve.timer.game.room4 1
execute in stmc:solve as @a[team=GREEN_GOATS,x=91,y=95,z=65,dx=4,dy=4,dz=3] run scoreboard players set @s solve.stats.roomsCompleted 4
scoreboard players set solve.GreenGoats solve.stats.playersCompleted 0
execute if score solve.GreenGoats solve.stats.roomsCompleted matches 3 as @a[team=GREEN_GOATS,scores={solve.stats.roomsCompleted=4..}] run scoreboard players add solve.GreenGoats solve.stats.playersCompleted 1
execute in stmc:solve if score solve.GreenGoats solve.stats.roomsCompleted matches 3 if score solve.GreenGoats solve.stats.playersCompleted = solve.GreenGoats solve.stats.players run scoreboard players set solve.GreenGoats solve.stats.roomsCompleted 4
execute in stmc:solve if score solve.GreenGoats solve.stats.roomsCompleted matches 4 run fill 94 97 68 94 98 68 air replace minecraft:netherite_block

# <===== CYAN COUGARS =====>

execute if score solve.CyanCougars solve.stats.roomsCompleted matches 0 run scoreboard players add solve.CyanCougars solve.timer.game.room1 1
execute in stmc:solve as @a[team=CYAN_COUGARS,x=33,y=95,z=85,dx=4,dy=4,dz=3] run scoreboard players set @s solve.stats.roomsCompleted 1
scoreboard players set solve.CyanCougars solve.stats.playersCompleted 0
execute if score solve.CyanCougars solve.stats.roomsCompleted matches 0 as @a[team=CYAN_COUGARS,scores={solve.stats.roomsCompleted=1..}] run scoreboard players add solve.CyanCougars solve.stats.playersCompleted 1
execute in stmc:solve if score solve.CyanCougars solve.stats.roomsCompleted matches 0 if score solve.CyanCougars solve.stats.playersCompleted = solve.CyanCougars solve.stats.players run scoreboard players set solve.CyanCougars solve.stats.roomsCompleted 1
execute in stmc:solve if score solve.CyanCougars solve.stats.roomsCompleted matches 1 run fill 37 97 88 37 98 88 air replace minecraft:netherite_block

execute if score solve.CyanCougars solve.stats.roomsCompleted matches 1 run scoreboard players add solve.CyanCougars solve.timer.game.room2 1
execute in stmc:solve as @a[team=CYAN_COUGARS,x=53,y=95,z=85,dx=4,dy=4,dz=3] run scoreboard players set @s solve.stats.roomsCompleted 2
scoreboard players set solve.CyanCougars solve.stats.playersCompleted 0
execute if score solve.CyanCougars solve.stats.roomsCompleted matches 1 as @a[team=CYAN_COUGARS,scores={solve.stats.roomsCompleted=2..}] run scoreboard players add solve.CyanCougars solve.stats.playersCompleted 1
execute in stmc:solve if score solve.CyanCougars solve.stats.roomsCompleted matches 1 if score solve.CyanCougars solve.stats.playersCompleted = solve.CyanCougars solve.stats.players run scoreboard players set solve.CyanCougars solve.stats.roomsCompleted 2
execute in stmc:solve if score solve.CyanCougars solve.stats.roomsCompleted matches 2 run fill 57 97 88 57 98 88 air replace minecraft:netherite_block

execute if score solve.CyanCougars solve.stats.roomsCompleted matches 2 run scoreboard players add solve.CyanCougars solve.timer.game.room3 1
execute in stmc:solve as @a[team=CYAN_COUGARS,x=72,y=95,z=85,dx=4,dy=4,dz=3] run scoreboard players set @s solve.stats.roomsCompleted 3
scoreboard players set solve.CyanCougars solve.stats.playersCompleted 0
execute if score solve.CyanCougars solve.stats.roomsCompleted matches 2 as @a[team=CYAN_COUGARS,scores={solve.stats.roomsCompleted=3..}] run scoreboard players add solve.CyanCougars solve.stats.playersCompleted 1
execute in stmc:solve if score solve.CyanCougars solve.stats.roomsCompleted matches 2 if score solve.CyanCougars solve.stats.playersCompleted = solve.CyanCougars solve.stats.players run scoreboard players set solve.CyanCougars solve.stats.roomsCompleted 3
execute in stmc:solve if score solve.CyanCougars solve.stats.roomsCompleted matches 3 run fill 75 97 88 75 98 88 air replace minecraft:netherite_block

execute if score solve.CyanCougars solve.stats.roomsCompleted matches 3 run scoreboard players add solve.CyanCougars solve.timer.game.room4 1
execute in stmc:solve as @a[team=CYAN_COUGARS,x=91,y=95,z=85,dx=4,dy=4,dz=3] run scoreboard players set @s solve.stats.roomsCompleted 4
scoreboard players set solve.CyanCougars solve.stats.playersCompleted 0
execute if score solve.CyanCougars solve.stats.roomsCompleted matches 3 as @a[team=CYAN_COUGARS,scores={solve.stats.roomsCompleted=4..}] run scoreboard players add solve.CyanCougars solve.stats.playersCompleted 1
execute in stmc:solve if score solve.CyanCougars solve.stats.roomsCompleted matches 3 if score solve.CyanCougars solve.stats.playersCompleted = solve.CyanCougars solve.stats.players run scoreboard players set solve.CyanCougars solve.stats.roomsCompleted 4
execute in stmc:solve if score solve.CyanCougars solve.stats.roomsCompleted matches 4 run fill 94 97 88 94 98 88 air replace minecraft:netherite_block

# <===== PURPLE PENGUINS =====>

execute if score solve.PurplePenguins solve.stats.roomsCompleted matches 0 run scoreboard players add solve.PurplePenguins solve.timer.game.room1 1
execute in stmc:solve as @a[team=PURPLE_PENGUINS,x=33,y=95,z=105,dx=4,dy=4,dz=3] run scoreboard players set @s solve.stats.roomsCompleted 1
scoreboard players set solve.PurplePenguins solve.stats.playersCompleted 0
execute if score solve.PurplePenguins solve.stats.roomsCompleted matches 0 as @a[team=PURPLE_PENGUINS,scores={solve.stats.roomsCompleted=1..}] run scoreboard players add solve.PurplePenguins solve.stats.playersCompleted 1
execute in stmc:solve if score solve.PurplePenguins solve.stats.roomsCompleted matches 0 if score solve.PurplePenguins solve.stats.playersCompleted = solve.PurplePenguins solve.stats.players run scoreboard players set solve.PurplePenguins solve.stats.roomsCompleted 1
execute in stmc:solve if score solve.PurplePenguins solve.stats.roomsCompleted matches 1 run fill 37 97 108 37 98 108 air replace minecraft:netherite_block

execute if score solve.PurplePenguins solve.stats.roomsCompleted matches 1 run scoreboard players add solve.PurplePenguins solve.timer.game.room2 1
execute in stmc:solve as @a[team=PURPLE_PENGUINS,x=53,y=95,z=105,dx=4,dy=4,dz=3] run scoreboard players set @s solve.stats.roomsCompleted 2
scoreboard players set solve.PurplePenguins solve.stats.playersCompleted 0
execute if score solve.PurplePenguins solve.stats.roomsCompleted matches 1 as @a[team=PURPLE_PENGUINS,scores={solve.stats.roomsCompleted=2..}] run scoreboard players add solve.PurplePenguins solve.stats.playersCompleted 1
execute in stmc:solve if score solve.PurplePenguins solve.stats.roomsCompleted matches 1 if score solve.PurplePenguins solve.stats.playersCompleted = solve.PurplePenguins solve.stats.players run scoreboard players set solve.PurplePenguins solve.stats.roomsCompleted 2
execute in stmc:solve if score solve.PurplePenguins solve.stats.roomsCompleted matches 2 run fill 57 97 108 57 98 108 air replace minecraft:netherite_block

execute if score solve.PurplePenguins solve.stats.roomsCompleted matches 2 run scoreboard players add solve.PurplePenguins solve.timer.game.room3 1
execute in stmc:solve as @a[team=PURPLE_PENGUINS,x=72,y=95,z=105,dx=4,dy=4,dz=3] run scoreboard players set @s solve.stats.roomsCompleted 3
scoreboard players set solve.PurplePenguins solve.stats.playersCompleted 0
execute if score solve.PurplePenguins solve.stats.roomsCompleted matches 2 as @a[team=PURPLE_PENGUINS,scores={solve.stats.roomsCompleted=3..}] run scoreboard players add solve.PurplePenguins solve.stats.playersCompleted 1
execute in stmc:solve if score solve.PurplePenguins solve.stats.roomsCompleted matches 2 if score solve.PurplePenguins solve.stats.playersCompleted = solve.PurplePenguins solve.stats.players run scoreboard players set solve.PurplePenguins solve.stats.roomsCompleted 3
execute in stmc:solve if score solve.PurplePenguins solve.stats.roomsCompleted matches 3 run fill 75 97 108 75 98 108 air replace minecraft:netherite_block

execute if score solve.PurplePenguins solve.stats.roomsCompleted matches 3 run scoreboard players add solve.PurplePenguins solve.timer.game.room4 1
execute in stmc:solve as @a[team=PURPLE_PENGUINS,x=91,y=95,z=105,dx=4,dy=4,dz=3] run scoreboard players set @s solve.stats.roomsCompleted 4
scoreboard players set solve.PurplePenguins solve.stats.playersCompleted 0
execute if score solve.PurplePenguins solve.stats.roomsCompleted matches 3 as @a[team=PURPLE_PENGUINS,scores={solve.stats.roomsCompleted=4..}] run scoreboard players add solve.PurplePenguins solve.stats.playersCompleted 1
execute in stmc:solve if score solve.PurplePenguins solve.stats.roomsCompleted matches 3 if score solve.PurplePenguins solve.stats.playersCompleted = solve.PurplePenguins solve.stats.players run scoreboard players set solve.PurplePenguins solve.stats.roomsCompleted 4
execute in stmc:solve if score solve.PurplePenguins solve.stats.roomsCompleted matches 4 run fill 94 97 108 94 98 108 air replace minecraft:netherite_block

# <===== YELLOW YAKS =====>

execute if score solve.YellowYaks solve.stats.roomsCompleted matches 0 run scoreboard players add solve.YellowYaks solve.timer.game.room1 1
execute in stmc:solve as @a[team=YELLOW_YAKS,x=33,y=95,z=125,dx=4,dy=4,dz=3] run scoreboard players set @s solve.stats.roomsCompleted 1
scoreboard players set solve.YellowYaks solve.stats.playersCompleted 0
execute if score solve.YellowYaks solve.stats.roomsCompleted matches 0 as @a[team=YELLOW_YAKS,scores={solve.stats.roomsCompleted=1..}] run scoreboard players add solve.YellowYaks solve.stats.playersCompleted 1
execute in stmc:solve if score solve.YellowYaks solve.stats.roomsCompleted matches 0 if score solve.YellowYaks solve.stats.playersCompleted = solve.YellowYaks solve.stats.players run scoreboard players set solve.YellowYaks solve.stats.roomsCompleted 1
execute in stmc:solve if score solve.YellowYaks solve.stats.roomsCompleted matches 1 run fill 37 97 128 37 98 128 air replace minecraft:netherite_block

execute if score solve.YellowYaks solve.stats.roomsCompleted matches 1 run scoreboard players add solve.YellowYaks solve.timer.game.room2 1
execute in stmc:solve as @a[team=YELLOW_YAKS,x=53,y=95,z=125,dx=4,dy=4,dz=3] run scoreboard players set @s solve.stats.roomsCompleted 2
scoreboard players set solve.YellowYaks solve.stats.playersCompleted 0
execute if score solve.YellowYaks solve.stats.roomsCompleted matches 1 as @a[team=YELLOW_YAKS,scores={solve.stats.roomsCompleted=2..}] run scoreboard players add solve.YellowYaks solve.stats.playersCompleted 1
execute in stmc:solve if score solve.YellowYaks solve.stats.roomsCompleted matches 1 if score solve.YellowYaks solve.stats.playersCompleted = solve.YellowYaks solve.stats.players run scoreboard players set solve.YellowYaks solve.stats.roomsCompleted 2
execute in stmc:solve if score solve.YellowYaks solve.stats.roomsCompleted matches 2 run fill 57 97 128 57 98 128 air replace minecraft:netherite_block

execute if score solve.YellowYaks solve.stats.roomsCompleted matches 2 run scoreboard players add solve.YellowYaks solve.timer.game.room3 1
execute in stmc:solve as @a[team=YELLOW_YAKS,x=72,y=95,z=125,dx=4,dy=4,dz=3] run scoreboard players set @s solve.stats.roomsCompleted 3
scoreboard players set solve.YellowYaks solve.stats.playersCompleted 0
execute if score solve.YellowYaks solve.stats.roomsCompleted matches 2 as @a[team=YELLOW_YAKS,scores={solve.stats.roomsCompleted=3..}] run scoreboard players add solve.YellowYaks solve.stats.playersCompleted 1
execute in stmc:solve if score solve.YellowYaks solve.stats.roomsCompleted matches 2 if score solve.YellowYaks solve.stats.playersCompleted = solve.YellowYaks solve.stats.players run scoreboard players set solve.YellowYaks solve.stats.roomsCompleted 3
execute in stmc:solve if score solve.YellowYaks solve.stats.roomsCompleted matches 3 run fill 75 97 128 75 98 128 air replace minecraft:netherite_block

execute if score solve.YellowYaks solve.stats.roomsCompleted matches 3 run scoreboard players add solve.YellowYaks solve.timer.game.room4 1
execute in stmc:solve as @a[team=YELLOW_YAKS,x=91,y=95,z=125,dx=4,dy=4,dz=3] run scoreboard players set @s solve.stats.roomsCompleted 4
scoreboard players set solve.YellowYaks solve.stats.playersCompleted 0
execute if score solve.YellowYaks solve.stats.roomsCompleted matches 3 as @a[team=YELLOW_YAKS,scores={solve.stats.roomsCompleted=4..}] run scoreboard players add solve.YellowYaks solve.stats.playersCompleted 1
execute in stmc:solve if score solve.YellowYaks solve.stats.roomsCompleted matches 3 if score solve.YellowYaks solve.stats.playersCompleted = solve.YellowYaks solve.stats.players run scoreboard players set solve.YellowYaks solve.stats.roomsCompleted 4
execute in stmc:solve if score solve.YellowYaks solve.stats.roomsCompleted matches 4 run fill 94 97 128 94 98 128 air replace minecraft:netherite_block

# <===== BLUE BEARS =====>

execute if score solve.BlueBears solve.stats.roomsCompleted matches 0 run scoreboard players add solve.BlueBears solve.timer.game.room1 1
execute in stmc:solve as @a[team=BLUE_BEARS,x=33,y=95,z=145,dx=4,dy=4,dz=3] run scoreboard players set @s solve.stats.roomsCompleted 1
scoreboard players set solve.BlueBears solve.stats.playersCompleted 0
execute if score solve.BlueBears solve.stats.roomsCompleted matches 0 as @a[team=BLUE_BEARS,scores={solve.stats.roomsCompleted=1..}] run scoreboard players add solve.BlueBears solve.stats.playersCompleted 1
execute in stmc:solve if score solve.BlueBears solve.stats.roomsCompleted matches 0 if score solve.BlueBears solve.stats.playersCompleted = solve.BlueBears solve.stats.players run scoreboard players set solve.BlueBears solve.stats.roomsCompleted 1
execute in stmc:solve if score solve.BlueBears solve.stats.roomsCompleted matches 1 run fill 37 97 148 37 98 148 air replace minecraft:netherite_block

execute if score solve.BlueBears solve.stats.roomsCompleted matches 1 run scoreboard players add solve.BlueBears solve.timer.game.room2 1
execute in stmc:solve as @a[team=BLUE_BEARS,x=53,y=95,z=145,dx=4,dy=4,dz=3] run scoreboard players set @s solve.stats.roomsCompleted 2
scoreboard players set solve.BlueBears solve.stats.playersCompleted 0
execute if score solve.BlueBears solve.stats.roomsCompleted matches 1 as @a[team=BLUE_BEARS,scores={solve.stats.roomsCompleted=2..}] run scoreboard players add solve.BlueBears solve.stats.playersCompleted 1
execute in stmc:solve if score solve.BlueBears solve.stats.roomsCompleted matches 1 if score solve.BlueBears solve.stats.playersCompleted = solve.BlueBears solve.stats.players run scoreboard players set solve.BlueBears solve.stats.roomsCompleted 2
execute in stmc:solve if score solve.BlueBears solve.stats.roomsCompleted matches 2 run fill 57 97 148 57 98 148 air replace minecraft:netherite_block

execute if score solve.BlueBears solve.stats.roomsCompleted matches 2 run scoreboard players add solve.BlueBears solve.timer.game.room3 1
execute in stmc:solve as @a[team=BLUE_BEARS,x=72,y=95,z=145,dx=4,dy=4,dz=3] run scoreboard players set @s solve.stats.roomsCompleted 3
scoreboard players set solve.BlueBears solve.stats.playersCompleted 0
execute if score solve.BlueBears solve.stats.roomsCompleted matches 2 as @a[team=BLUE_BEARS,scores={solve.stats.roomsCompleted=3..}] run scoreboard players add solve.BlueBears solve.stats.playersCompleted 1
execute in stmc:solve if score solve.BlueBears solve.stats.roomsCompleted matches 2 if score solve.BlueBears solve.stats.playersCompleted = solve.BlueBears solve.stats.players run scoreboard players set solve.BlueBears solve.stats.roomsCompleted 3
execute in stmc:solve if score solve.BlueBears solve.stats.roomsCompleted matches 3 run fill 75 97 148 75 98 148 air replace minecraft:netherite_block

execute if score solve.BlueBears solve.stats.roomsCompleted matches 3 run scoreboard players add solve.BlueBears solve.timer.game.room4 1
execute in stmc:solve as @a[team=BLUE_BEARS,x=91,y=95,z=145,dx=4,dy=4,dz=3] run scoreboard players set @s solve.stats.roomsCompleted 4
scoreboard players set solve.BlueBears solve.stats.playersCompleted 0
execute if score solve.BlueBears solve.stats.roomsCompleted matches 3 as @a[team=BLUE_BEARS,scores={solve.stats.roomsCompleted=4..}] run scoreboard players add solve.BlueBears solve.stats.playersCompleted 1
execute in stmc:solve if score solve.BlueBears solve.stats.roomsCompleted matches 3 if score solve.BlueBears solve.stats.playersCompleted = solve.BlueBears solve.stats.players run scoreboard players set solve.BlueBears solve.stats.roomsCompleted 4
execute in stmc:solve if score solve.BlueBears solve.stats.roomsCompleted matches 4 run fill 94 97 148 94 98 148 air replace minecraft:netherite_block

