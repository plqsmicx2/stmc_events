# helper function that starts the game for all teams

# handles important scoreboard resets
# and teleports players

# scoreboard resets
scoreboard players set @a ascend.completed 0
scoreboard players set ascend.handler ascend.timer.game 0
scoreboard players set ascend.handler ascend.timer.game.tempTimer 0
scoreboard players set ascend.handler ascend.timer.game.secondsLeft 0
scoreboard players set ascend.handler ascend.timer.game.minsLeft 4

# teleport players to starter room
execute as @a[team=RED_RACCOONS] in trials:ascend run teleport @s -100 103 -102 180 0
execute as @a[team=ORANGE_OTTERS] in trials:ascend run teleport @s 0 103 -102 180 0
execute as @a[team=PINK_PIKAS] in trials:ascend run teleport @s 100 103 -102 180 0
execute as @a[team=YELLOW_YAKS] in trials:ascend run teleport @s 100 103 -2 180 0
execute as @a[team=GREEN_GOATS] in trials:ascend run teleport @s 100 103 98 180 0
execute as @a[team=CYAN_COUGARS] in trials:ascend run teleport @s 0 103 98 180 0
execute as @a[team=PURPLE_PENGUINS] in trials:ascend run teleport @s -100 103 98 180 0
execute as @a[team=BLUE_BEARS] in trials:ascend run teleport @s -100 103 0 180 0