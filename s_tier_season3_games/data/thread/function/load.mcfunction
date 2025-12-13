# load function for whole competition
# will create global scoreboards & create + assign team information

# create teams first
# creates team + custom display name
# sets team color
# sets team prefix

# set the name of the event
data modify storage stmc:global eventName set value "  STMC Reloaded II  "
data modify storage stmc:global redName set value "Red Raccoons"
data modify storage stmc:global orangeName set value "Orange Otters"
data modify storage stmc:global pinkName set value "Pink Pikas"
data modify storage stmc:global yellowName set value "the rapers"
data modify storage stmc:global greenName set value "Green Goats"
data modify storage stmc:global cyanName set value "Cyan Cougars"
data modify storage stmc:global purpleName set value "Purple Penguins"
data modify storage stmc:global blueName set value "67"

# reset our booleans tracking if games have been played (& set games not being played to -1)
data modify storage stmc:global racePlayed set value 0
data modify storage stmc:global solvePlayed set value 0
data modify storage stmc:global trialsPlayed set value 0
data modify storage stmc:global collectPlayed set value -1
data modify storage stmc:global delvePlayed set value -1
data modify storage stmc:global minePlayed set value 0
data modify storage stmc:global extractPlayed set value 0
data modify storage stmc:global blitzPlayed set value 0
data modify storage stmc:global brawlPlayed set value 0

# create teams
function thread:create_teams with storage stmc:global

# set some global defaults
execute as @a run attribute @s max_health base set 20

# create global scoreboards
# records if the event is currently paused
scoreboard objectives add event.paused dummy
# records the current stage
scoreboard objectives add event.stage dummy
# records if teams should be automatically assigned
scoreboard objectives add event.teamAssignment dummy
# records if the default sidebar should be loaded
scoreboard objectives add event.defSidebar dummy
# records # of players in the event
scoreboard objectives add event.players dummy
# tracks points of team [is always set based on sum of @a[team=...] indiv]
scoreboard objectives add stats.points.team dummy
scoreboard objectives add stats.points.team.rank dummy
# winning team
scoreboard objectives add stats.winningTeam dummy
# tracks individual points across event [set by sum of indiv.g# but weighted for game multipliers]
scoreboard objectives add stats.points.indiv dummy
scoreboard objectives add stats.points.indiv.rank dummy
# voting trackers
scoreboard objectives add event.voting.investedTokens dummy
scoreboard objectives add event.voting.investedTokensTemp dummy
scoreboard objectives add event.voting.bank used:carrot_on_a_stick
# tracks which game will be played when
scoreboard objectives add stats.game1 dummy
scoreboard objectives add stats.game2 dummy
scoreboard objectives add stats.game3 dummy
scoreboard objectives add stats.game4 dummy
scoreboard objectives add stats.game5 dummy
scoreboard objectives add stats.game6 dummy
scoreboard objectives add stats.game7 dummy
scoreboard objectives add stats.game8 dummy
# tracks individual points in each game VVVV
scoreboard objectives add stats.points.indiv.g1 dummy
scoreboard objectives add stats.points.indiv.g2 dummy
scoreboard objectives add stats.points.indiv.g3 dummy
scoreboard objectives add stats.points.indiv.g4 dummy
scoreboard objectives add stats.points.indiv.g5 dummy
scoreboard objectives add stats.points.indiv.g6 dummy
scoreboard objectives add stats.points.indiv.g7 dummy
scoreboard objectives add stats.points.indiv.g8 dummy
# constants that store the multiplier value of each game
scoreboard objectives add event.multipliers.g1 dummy
scoreboard objectives add event.multipliers.g2 dummy
scoreboard objectives add event.multipliers.g3 dummy
scoreboard objectives add event.multipliers.g4 dummy
scoreboard objectives add event.multipliers.g5 dummy
scoreboard objectives add event.multipliers.g6 dummy
scoreboard objectives add event.multipliers.g7 dummy
scoreboard objectives add event.multipliers.g8 dummy
# value of 100 to divide each raw multiplier by (since we can't have floats)
scoreboard objectives add event.multipliers.precision dummy

# create some timers
scoreboard objectives add event.timer.pre_game dummy
scoreboard objectives add event.timer.bgActive dummy
scoreboard objectives add event.timer.bgTickCount dummy
scoreboard objectives add event.timer.bgSecs dummy
scoreboard objectives add event.timer.bgMins dummy
scoreboard objectives add event.timer.post_game dummy

# set the scoreboards that are applicable
# event will be unpaused manually when /start is called
scoreboard players set stmc.handler event.paused 1
# /reset functions will increment the stage
scoreboard players set stmc.handler event.stage 0
# will be turned off if a player's team must be swapped
scoreboard players set stmc.handler event.teamAssignment 1
# will be turned off if a different sidebar should be loaded
scoreboard players set stmc.handler event.defSidebar 1

# everyone starts with 0 invested tokens
scoreboard players set @a event.voting.investedTokens 0
scoreboard players set @a event.voting.investedTokensTemp 0

# and set some multiplier values
scoreboard players set #math event.multipliers.g1 100
scoreboard players set #math event.multipliers.g2 100
scoreboard players set #math event.multipliers.g3 125
scoreboard players set #math event.multipliers.g4 125
scoreboard players set #math event.multipliers.g5 150
scoreboard players set #math event.multipliers.g6 150
scoreboard players set #math event.multipliers.g7 175
scoreboard players set #math event.multipliers.g8 200
scoreboard players set #math event.multipliers.precision 100

# and reset each timer
scoreboard players set stmc.handler event.timer.pre_game 0
scoreboard players set stmc.handler event.timer.bgActive 0
scoreboard players set stmc.handler event.timer.bgTickCount 0
scoreboard players set stmc.handler event.timer.bgSecs 0
scoreboard players set stmc.handler event.timer.bgMins 0
scoreboard players set stmc.handler event.timer.post_game 0

# and finally, create each game thread's scoreboard
scoreboard objectives add lobby.stage dummy
scoreboard objectives add race.stage dummy
scoreboard objectives add extract.stage dummy
scoreboard objectives add solve.stage dummy
scoreboard objectives add tr.stage dummy
scoreboard objectives add delve.stage dummy
scoreboard objectives add sg.stage dummy
scoreboard objectives add mine.stage dummy
scoreboard objectives add blitz.stage dummy
scoreboard objectives add collect.stage dummy
scoreboard objectives add finale.stage dummy

# and reset handlers associated with each one
scoreboard players reset lobby.handler lobby.stage
scoreboard players reset race.handler race.stage
scoreboard players reset extract.handler extract.stage
scoreboard players reset solve.handler solve.stage
scoreboard players reset tr.handler tr.stage
scoreboard players reset delve.handler delve.stage
scoreboard players reset sg.handler sg.stage
scoreboard players reset mine.handler mine.stage
scoreboard players reset blitz.handler blitz.stage
scoreboard players reset collect.handler collect.stage
scoreboard players reset finale.handler finale.stage

# reset player points
scoreboard players set @a stats.points.indiv.g1 0
scoreboard players set @a stats.points.indiv.g2 0
scoreboard players set @a stats.points.indiv.g3 0
scoreboard players set @a stats.points.indiv.g4 0
scoreboard players set @a stats.points.indiv.g5 0
scoreboard players set @a stats.points.indiv.g6 0
scoreboard players set @a stats.points.indiv.g7 0
scoreboard players set @a stats.points.indiv.g8 0

# reset team stats
scoreboard players set team.RedRaccoons stats.winningTeam 0
scoreboard players set team.OrangeOtters stats.winningTeam 0
scoreboard players set team.PinkPikas stats.winningTeam 0
scoreboard players set team.YellowYaks stats.winningTeam 0
scoreboard players set team.GreenGoats stats.winningTeam 0
scoreboard players set team.CyanCougars stats.winningTeam 0
scoreboard players set team.PurplePenguins stats.winningTeam 0
scoreboard players set team.BlueBears stats.winningTeam 0

scoreboard objectives remove lobby.sidebar
function thread:default_sidebar