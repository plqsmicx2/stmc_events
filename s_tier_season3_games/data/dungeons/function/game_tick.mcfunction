
#timer
scoreboard players add dungeon.handler dungeon.timer 1
scoreboard players remove dungeon.handler dungeon.timer_inverse 1

#update bossbar timer
execute store result bossbar minecraft:dungeon.timer value run scoreboard players get dungeon.handler dungeon.timer_inverse

#check to end game
function dungeon:game/end
#use key to open rooms
function dungeon:game/key
#timers per room
function dungeon:game/timers
#progress swords
function dungeon:game/sword
#lantern fxn
function dungeon:game/lantern
#bedrock spawnpoint
function dungeon:game/spawnpoint
#change room numbers from 1-9 to 1-6
function dungeon:game/roomnumbers
