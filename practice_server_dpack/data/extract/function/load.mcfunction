# helper function that creates & sets scoreboards

# track players currently playing
scoreboard objectives add extract.gamesActive dummy
scoreboard players set extract.handler extract.gamesActive 0
scoreboard players set @a extract.gamesActive 0

# track players' stats
scoreboard objectives add extract.alive dummy
scoreboard objectives add extract.stats.kills playerKillCount
scoreboard objectives add extract.stats.diamondsMined minecraft.mined:minecraft.diamond_block
scoreboard objectives add extract.stats.goldMined minecraft.mined:minecraft.gold_block
scoreboard objectives add extract.stats.kit dummy

# and set those stats
scoreboard players set @a extract.stats.kills 0
scoreboard players set @a extract.stats.diamondsMined 0
scoreboard players set @a extract.stats.goldMined 0

# track game-wide stats
scoreboard objectives add extract.timer.game dummy
scoreboard objectives add extract.stats.playersAlive dummy

# return to hub if carrot on a stick is used
scoreboard objectives add extract.return used:carrot_on_a_stick

scoreboard objectives remove extract.sidebar