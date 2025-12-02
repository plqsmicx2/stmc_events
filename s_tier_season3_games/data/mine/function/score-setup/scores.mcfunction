defaultgamemode adventure
gamerule doImmediateRespawn true
gamerule doLimitedCrafting true

scoreboard objectives add mine.game.mined.diamond_ore minecraft.mined:minecraft.diamond_ore
scoreboard objectives add mine.points.mined.diamond_ore dummy Points
scoreboard objectives add mine.game.deathcount deathCount

scoreboard objectives add mine.vote trigger
scoreboard objectives add mine.vote.creaking dummy
scoreboard objectives add mine.vote.hoglin dummy
scoreboard objectives add mine.vote.warden dummy

scoreboard objectives add mine.timer dummy

scoreboard objectives add mine.stage.creaking dummy
scoreboard objectives add mine.stage.hoglin dummy
scoreboard objectives add mine.stage.warden dummy
scoreboard objectives add mine.stage.lobby dummy
