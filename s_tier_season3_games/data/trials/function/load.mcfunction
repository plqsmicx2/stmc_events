# load function for trials [TRIALS]

# this function creates all local scoreboards (which will be subsequently removed in /reset)

# although trials has multiple rounds, players will be teleported to the trials lobby
execute in trials:lobby run tp @a 0 100 0

# create scoreboards
# there are not as many because many scoreboards are game-specific

# tracks the current stage of the game overall
scoreboard objectives add tr.stage dummy

# tracks individual points a player has earned
scoreboard objectives add tr.points.indiv dummy

# tracks the points each team has earned this game [is not stored anywhere else]
# this value is only attributed to the tr.TEAM players
scoreboard objectives add tr.points.team dummy

# tracks the rank of each player
scoreboard objectives add tr.points.player.rank dummy

# tracks the rank of each team
scoreboard objectives add tr.points.team.rank dummy

# tracks the order of games played
scoreboard objectives add tr.stage.game1 dummy
scoreboard objectives add tr.stage.game2 dummy
scoreboard objectives add tr.stage.game3 dummy
scoreboard objectives add tr.stage.game4 dummy

# make stages for each game
scoreboard objectives add disco.stage dummy
scoreboard objectives add replicate.stage dummy
scoreboard objectives add spleef.stage dummy
scoreboard objectives add towers.stage dummy

# and reset each game's stage
scoreboard players reset disco.handler disco.stage
scoreboard players reset replicate.handler replicate.stage
scoreboard players reset spleef.handler spleef.stage
scoreboard players reset towers.handler towers.stage

# set stage to 0
scoreboard players set tr.handler tr.stage 0

# reset game order
scoreboard players set tr.handler tr.stage.game1 0
scoreboard players set tr.handler tr.stage.game2 0
scoreboard players set tr.handler tr.stage.game3 0
scoreboard players set tr.handler tr.stage.game4 0

# set some necessary values for players
scoreboard players set @a tr.points.indiv 0