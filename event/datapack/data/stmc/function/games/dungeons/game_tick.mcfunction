
#timer
scoreboard players add dungeons.handler dungeons.timer 1
scoreboard players remove dungeons.handler dungeons.timer_inverse 1

#update bossbar timer
execute store result bossbar minecraft:dungeons.timer value run scoreboard players get dungeons.handler dungeons.timer_inverse

#check to end game
execute in stmc:dungeons run function stmc:games/dungeons/game/end
#use key to open rooms
execute in stmc:dungeons run function stmc:games/dungeons/game/key
#timers per room
execute in stmc:dungeons run function stmc:games/dungeons/game/timers
#progress swords
execute in stmc:dungeons run function stmc:games/dungeons/game/sword
#lantern fxn
execute in stmc:dungeons run function stmc:games/dungeons/game/lantern
#bedrock spawnpoint
execute in stmc:dungeons run function stmc:games/dungeons/game/spawnpoint
#change room numbers from 1-9 to 1-6
execute in stmc:dungeons run function stmc:games/dungeons/game/roomnumbers
