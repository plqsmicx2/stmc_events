defaultgamemode adventure
gamerule immediate_respawn true
gamerule limited_crafting true

scoreboard objectives add mine.game.mined.diamond_ore minecraft.mined:minecraft.diamond_ore
scoreboard objectives add mine.points.mined.diamond_ore dummy Points
scoreboard objectives add mine.game.deathcount deathCount

scoreboard objectives add mine.vote trigger
scoreboard objectives add mine.vote.creaking dummy
scoreboard objectives add mine.vote.creeper dummy
scoreboard objectives add mine.vote.hoglin dummy
scoreboard objectives add mine.vote.warden dummy
scoreboard objectives add mine.vote.witch dummy
scoreboard objectives add mine.vote.spider dummy

scoreboard objectives add mine.stage.creaking dummy
scoreboard objectives add mine.stage.creeper dummy
scoreboard objectives add mine.stage.hoglin dummy
scoreboard objectives add mine.stage.warden dummy
scoreboard objectives add mine.stage.witch dummy
scoreboard objectives add mine.stage.spider dummy
scoreboard objectives add mine.stage.lobby dummy

scoreboard objectives add mine.endermite_damaged minecraft.custom:minecraft.damage_taken
scoreboard objectives add mine.damaged minecraft.custom:minecraft.damage_taken

scoreboard objectives add mine.stage dummy
scoreboard objectives add mine.timer dummy
scoreboard objectives add mine.timer.delay1 dummy
scoreboard objectives add mine.timer.explanation dummy
scoreboard objectives add mine.timer.delay2 dummy
scoreboard objectives add mine.points.team dummy
scoreboard objectives add mine.points.indiv dummy