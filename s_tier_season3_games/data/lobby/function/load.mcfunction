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

# create global scoreboards
# records if the event is currently paused
scoreboard objectives add event.paused dummy
# records the current stage
scoreboard objectives add event.stage dummy
# tracks points of team [is always set based on sum of @a[team=...] indiv]
scoreboard objectives add stats.points.team dummy
# tracks individual points across event [set by sum of indiv.g# but weighted for game multipliers]
scoreboard objectives add stats.points.indiv dummy
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

# and finally, create each game thread's scoreboard
scoreboard objectives add pre.stage dummy
scoreboard objectives add v1.stage dummy
scoreboard objectives add race.stage dummy
scoreboard objectives add d1.stage dummy
scoreboard objectives add v2.stage dummy
# scoreboard objectives add tbd.stage dummy
scoreboard objectives add d2.stage dummy
scoreboard objectives add v3.stage dummy
# scoreboard objectives add puzzle.stage dummy
scoreboard objectives add d3.stage dummy
scoreboard objectives add v4.stage dummy
scoreboard objectives add tr.stage dummy
scoreboard objectives add d4.stage dummy
scoreboard objectives add v5.stage dummy
# scoreboard objectives add tbd.stage dummy
scoreboard objectives add d5.stage dummy
scoreboard objectives add v6.stage dummy
scoreboard objectives add sg.stage dummy
scoreboard objectives add finale.stage dummy
scoreboard objectives add post.stage dummy

# and reset handlers associated with each one
scoreboard players reset pre.handler pre.stage
scoreboard players reset v1.handler v1.stage
scoreboard players reset race.handler race.stage
scoreboard players reset d1.handler d1.stage
scoreboard players reset v2.handler v2.stage
# scoreboard players reset tbd.handler tbd.stage
scoreboard players reset d2.handler d2.stage
scoreboard players reset v3.handler v3.stage
# scoreboard players reset puzzle.handler puzzle.stage
scoreboard players reset d3.handler d3.stage
scoreboard players reset v4.handler v4.stage
scoreboard players reset tr.handler tr.stage
scoreboard players reset d4.handler d4.stage
scoreboard players reset v5.handler v5.stage
# scoreboard players reset tbd.handler tbd.stage
scoreboard players reset d5.handler d5.stage
scoreboard players reset v6.handler v6.stage
scoreboard players reset sg.handler sg.stage
scoreboard players reset finale.handler finale.stage
scoreboard players reset post.handler post.stage