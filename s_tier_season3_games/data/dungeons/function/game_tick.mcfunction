
#timer
scoreboard players add dungeons.handler dungeons.timer 1
scoreboard players remove dungeons.handler dungeons.timer_inverse 1

#update bossbar timer
execute store result bossbar minecraft:dungeons.timer value run scoreboard players get dungeons.handler dungeons.timer_inverse

#check to end game
function dungeons:game/end
#use key to open rooms
function dungeons:game/key
#timers per room
function dungeons:game/timers
#progress swords
function dungeons:game/sword
#lantern fxn
function dungeons:game/lantern
#bedrock spawnpoint
function dungeons:game/spawnpoint
#change room numbers from 1-9 to 1-6
function dungeons:game/roomnumbers
