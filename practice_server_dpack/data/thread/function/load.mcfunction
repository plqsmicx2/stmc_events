# create teams
team add dim.lobby
team add dim.race
team add dim.extract
team add dim.trials
team add dim.tr.scramble
team add dim.tr.replicate
team add dim.tr.spleef
team add dim.tr.ascend

# modify team colors (for use in setting sidebars)
team modify dim.lobby color white
team modify dim.race color green
team modify dim.extract color gold
team modify dim.trials color aqua
team modify dim.tr.scramble color dark_green
team modify dim.tr.replicate color dark_purple
team modify dim.tr.spleef color blue
team modify dim.tr.ascend color dark_red

# load other games' scoreboards
function race:load
function extract:load
function trials:load

# reset sidebars
scoreboard objectives remove lobby.sidebar
scoreboard objectives remove race.sidebar
scoreboard objectives remove extract.sidebar
scoreboard objectives remove trials.sidebar