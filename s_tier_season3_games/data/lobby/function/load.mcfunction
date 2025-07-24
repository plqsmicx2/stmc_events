# load function for whole competition
# will create global scoreboards & create + assign team information

# create teams first
# creates team + custom display name
# sets team color
# sets team prefix

# Red Raccoons
team add RED_RACCOONS {"text": "Red Raccoons", "color": "red"}
team modify RED_RACCOONS color red
team modify RED_RACCOONS prefix {"text": "\ua000", "font": "team_logos:red_raccoons"}

# Orange Otters
team add ORANGE_OTTERS {"text": "Orange Otters", "color": "gold"}
team modify ORANGE_OTTERS color gold
team modify ORANGE_OTTERS prefix {"text": "\ua000", "font": "team_logos:orange_otters"}

# Pink Pikas
team add PINK_PIKAS {"text": "Pink Pikas", "color": "light_purple"}
team modify PINK_PIKAS color light_purple
team modify PINK_PIKAS prefix {"text": "\ua000", "font": "team_logos:pink_pikas"}

# Green Goats
team add GREEN_GOATS {"text": "Green Goats", "color": "dark_green"}
team modify GREEN_GOATS color dark_green
team modify GREEN_GOATS prefix {"text": "\ua000", "font": "team_logos:green_goats"}

# Cyan Cougars
team add CYAN_COUGARS {"text": "Cyan Cougars", "color": "dark_aqua"}
team modify CYAN_COUGARS color dark_aqua
team modify CYAN_COUGARS prefix {"text": "\ua000", "font": "team_logos:cyan_cougars"}

# Purple Penguins
team add PURPLE_PENGUINS {"text": "Purple Penguins", "color": "dark_purple"}
team modify PURPLE_PENGUINS color dark_purple
team modify PURPLE_PENGUINS prefix {"text": "\ua000", "font": "team_logos:purple_penguins"}

# Spectators
team add SPECTATORS {"text": "Spectators", "color": "gray"}
team modify SPECTATORS color gray

# prevent killing teammates
team modify RED_RACCOONS friendlyFire false
team modify ORANGE_OTTERS friendlyFire false
team modify PINK_PIKAS friendlyFire false
team modify GREEN_GOATS friendlyFire false
team modify CYAN_COUGARS friendlyFire false
team modify PURPLE_PENGUINS friendlyFire false
team modify SPECTATORS friendlyFire false

# create global scoreboards
# records if the event is currently paused
scoreboard objectives add event.paused dummy
# records the current stage
scoreboard objectives add event.stage dummy
# tracks points of team [is always set based on sum of @a[team=...] indiv]
scoreboard objectives add stats.points.team dummy
scoreboard objectives add stats.points.team.rank dummy
# winning team
scoreboard objectives add stats.winningTeam dummy
# tracks individual points across event [set by sum of indiv.g# but weighted for game multipliers]
scoreboard objectives add stats.points.indiv dummy
scoreboard objectives add stats.points.indiv.rank dummy
# tracks individual points across event [set by sum of indiv.g#]
scoreboard objectives add stats.points.indiv_unmultiplied dummy
# tracks individual points in each game VVVV
scoreboard objectives add stats.points.indiv.g1 dummy
scoreboard objectives add stats.points.indiv.g2 dummy
scoreboard objectives add stats.points.indiv.g3 dummy
scoreboard objectives add stats.points.indiv.g4 dummy
scoreboard objectives add stats.points.indiv.g5 dummy
scoreboard objectives add stats.points.indiv.g6 dummy
# constants that store the multiplier value of each game
scoreboard objectives add event.multipliers.g1 dummy
scoreboard objectives add event.multipliers.g2 dummy
scoreboard objectives add event.multipliers.g3 dummy
scoreboard objectives add event.multipliers.g4 dummy
scoreboard objectives add event.multipliers.g5 dummy
scoreboard objectives add event.multipliers.g6 dummy
# value of 100 to divide each raw multiplier by (since we can't have floats)
scoreboard objectives add event.multipliers.precision dummy

# create some timers
scoreboard objectives add event.timer.pre_game dummy
scoreboard objectives add event.timer.bg1 dummy
scoreboard objectives add event.timer.bg2 dummy
scoreboard objectives add event.timer.bg3 dummy
scoreboard objectives add event.timer.bg4 dummy
scoreboard objectives add event.timer.bg5 dummy
scoreboard objectives add event.timer.bg6 dummy
scoreboard objectives add event.timer.post_game dummy

# set the scoreboards that are applicable
# event will be unpaused manually when /start is called
scoreboard players set stmc.handler event.paused 1
# /reset functions will increment the stage
scoreboard players set stmc.handler event.stage 0

# and set some multiplier values
scoreboard players set stmc.handler event.multipliers.g1 100
scoreboard players set stmc.handler event.multipliers.g2 100
scoreboard players set stmc.handler event.multipliers.g3 125
scoreboard players set stmc.handler event.multipliers.g4 150
scoreboard players set stmc.handler event.multipliers.g5 175
scoreboard players set stmc.handler event.multipliers.g6 200
scoreboard players set stmc.handler event.multipliers.precision 100

# and reset each timer
scoreboard players reset stmc.handler event.timer.pre_game
scoreboard players reset stmc.handler event.timer.bg1
scoreboard players reset stmc.handler event.timer.bg2
scoreboard players reset stmc.handler event.timer.bg3
scoreboard players reset stmc.handler event.timer.bg4
scoreboard players reset stmc.handler event.timer.bg5
scoreboard players reset stmc.handler event.timer.bg6
scoreboard players reset stmc.handler event.timer.post_game

# and finally, create each game thread's scoreboard
scoreboard objectives add race.stage dummy
scoreboard objectives add extract.stage dummy
scoreboard objectives add solve.stage dummy
scoreboard objectives add tr.stage dummy
scoreboard objectives add delve.stage dummy
scoreboard objectives add sg.stage dummy
scoreboard objectives add finale.stage dummy

# and reset handlers associated with each one
scoreboard players reset race.handler race.stage
scoreboard players reset extract.handler extract.stage
scoreboard players reset solve.handler solve.stage
scoreboard players reset tr.handler tr.stage
scoreboard players reset delve.handler delve.stage
scoreboard players reset sg.handler sg.stage
scoreboard players reset finale.handler finale.stage

# reset player points
scoreboard players set @a stats.points.indiv.g1 0
scoreboard players set @a stats.points.indiv.g2 0
scoreboard players set @a stats.points.indiv.g3 0
scoreboard players set @a stats.points.indiv.g4 0
scoreboard players set @a stats.points.indiv.g5 0
scoreboard players set @a stats.points.indiv.g6 0
function lobby:points_update
function lobby:sidebar