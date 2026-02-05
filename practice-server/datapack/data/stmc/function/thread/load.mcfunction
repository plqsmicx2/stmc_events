tellraw @a {text:"Datapack Reloaded!",color:green}

# create teams
team add dim.lobby
team add dim.race
team add dim.extract
team add dim.trials
team add dim.tr.scramble
team add dim.tr.replicate
team add dim.tr.spleef
team add dim.tr.ascend
team add dim.tr.towers
team add dim.tr.solve
team add dim.joust
team add dim.mystery
team add dim.sprint
team add dim.brawl
team add dim.arena

# modify team colors (for use in setting sidebars)
team modify dim.lobby color white
team modify dim.race color green
team modify dim.extract color red
team modify dim.trials color aqua
team modify dim.tr.scramble color dark_aqua
team modify dim.tr.replicate color dark_purple
team modify dim.tr.solve color yellow
team modify dim.joust color gray
team modify dim.sprint color dark_green
team modify dim.brawl color gold
team modify dim.arena color light_purple
team modify dim.mystery color blue

# load other games' scoreboards
function stmc:games/race/load
function stmc:games/extract/load
function stmc:games/trials/load
function stmc:games/sprint/load
function stmc:games/arena/load
function stmc:games/brawl/load
function stmc:games/mystery/load
function stmc:games/joust/load

# reset sidebars
scoreboard objectives remove lobby.sidebar
scoreboard objectives remove race.sidebar
scoreboard objectives remove extract.sidebar
scoreboard objectives remove trials.sidebar