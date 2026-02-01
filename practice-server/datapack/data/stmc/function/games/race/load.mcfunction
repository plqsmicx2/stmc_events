# helper function that creates & sets scoreboards

# disable collision
team modify dim.race collisionRule never

# track players currently playing
scoreboard objectives add race.gameActive dummy
scoreboard players set race.handler race.gameActive 0
scoreboard players set @a race.gameActive 0

# track players' times & stats
scoreboard objectives add race.laps_completed dummy
scoreboard objectives add race.laptime.1 dummy
scoreboard objectives add race.laptime.2 dummy
scoreboard objectives add race.laptime.3 dummy
scoreboard objectives add race.laptime.4 dummy
scoreboard objectives add race.laptime.total dummy
scoreboard objectives add race.laptime.tick dummy
scoreboard objectives add race.laptime.seconds dummy
scoreboard objectives add race.laptime.mins dummy
scoreboard objectives add race.fastest_lap dummy
scoreboard objectives add race.checkpoints_completed dummy
scoreboard objectives add race.soundThisTick dummy

# and set those scoreboards
scoreboard players set @a race.laps_completed 0
scoreboard players set @a race.laptime.1 0
scoreboard players set @a race.laptime.2 0
scoreboard players set @a race.laptime.3 0
scoreboard players set @a race.laptime.4 0
scoreboard players set @a race.laptime.total 0
scoreboard players set @a race.laptime.tick 0
scoreboard players set @a race.laptime.seconds 0
scoreboard players set @a race.laptime.mins 0
scoreboard players set @a race.fastest_lap 0
scoreboard players set @a race.checkpoints_completed 0
scoreboard players set @a race.soundThisTick 0

scoreboard objectives remove race.sidebar

# return to hub if carrot on a stick is used
scoreboard objectives add .return used:carrot_on_a_stick

# return to last checkpoint if warped fungus is used
scoreboard objectives add race.return used:warped_fungus_on_a_stick