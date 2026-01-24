# this function determines which game won the active vote
# the function manually sets that game to be the next one played

# create temporary scoreboards
scoreboard objectives add lobby.voting.raceCount trigger
scoreboard objectives add lobby.voting.sprintCount trigger
scoreboard objectives add lobby.voting.trialsCount trigger
scoreboard objectives add lobby.voting.dungeonsCount trigger
scoreboard objectives add lobby.voting.mineCount trigger
scoreboard objectives add lobby.voting.extractCount trigger
scoreboard objectives add lobby.voting.blitzCount trigger
scoreboard objectives add lobby.voting.brawlCount trigger

# get # of votes for each player
# everyone gets 1 vote
scoreboard objectives add .voteCount dummy
execute as @a run scoreboard players set @s .voteCount 1
#execute as @a store result score @s .voteCount run clear @s sunflower 0

# store values
scoreboard players set lobby.handler lobby.voting.raceCount 0
execute as @a[scores={lobby.vote=0}] run scoreboard players operation lobby.handler lobby.voting.raceCount += @s .voteCount
scoreboard players set lobby.handler lobby.voting.sprintCount 0
execute as @a[scores={lobby.vote=1}] run scoreboard players operation lobby.handler lobby.voting.sprintCount += @s .voteCount
scoreboard players set lobby.handler lobby.voting.trialsCount 0
execute as @a[scores={lobby.vote=2}] run scoreboard players operation lobby.handler lobby.voting.trialsCount += @s .voteCount
scoreboard players set lobby.handler lobby.voting.dungeonsCount 0
execute as @a[scores={lobby.vote=3}] run scoreboard players operation lobby.handler lobby.voting.dungeonsCount += @s .voteCount
scoreboard players set lobby.handler lobby.voting.mineCount 0
execute as @a[scores={lobby.vote=4}] run scoreboard players operation lobby.handler lobby.voting.mineCount += @s .voteCount
scoreboard players set lobby.handler lobby.voting.extractCount 0
execute as @a[scores={lobby.vote=5}] run scoreboard players operation lobby.handler lobby.voting.extractCount += @s .voteCount
scoreboard players set lobby.handler lobby.voting.blitzCount 0
execute as @a[scores={lobby.vote=6}] run scoreboard players operation lobby.handler lobby.voting.blitzCount += @s .voteCount
scoreboard players set lobby.handler lobby.voting.brawlCount 0
execute as @a[scores={lobby.vote=7}] run scoreboard players operation lobby.handler lobby.voting.brawlCount += @s .voteCount

# set vote counts to -1 if the game has already been played
execute if score race.handler race.stage matches 1.. run \
        scoreboard players set lobby.handler lobby.voting.raceCount -1
execute if score sprint.handler sprint.stage matches 1.. run \
        scoreboard players set lobby.handler lobby.voting.sprintCount -1
execute if score tr.handler tr.stage matches 1.. run \
        scoreboard players set lobby.handler lobby.voting.trialsCount -1
execute if score dungeons.handler dungeons.stage matches 1.. run \
        scoreboard players set lobby.handler lobby.voting.dungeonsCount -1
execute if score mine.handler mine.stage matches 1.. run \
        scoreboard players set lobby.handler lobby.voting.mineCount -1
execute if score extract.handler extract.stage matches 1.. run \
        scoreboard players set lobby.handler lobby.voting.extractCount -1
execute if score blitz.handler blitz.stage matches 1.. run \
        scoreboard players set lobby.handler lobby.voting.blitzCount -1
execute if score brawl.handler brawl.stage matches 1.. run \
        scoreboard players set lobby.handler lobby.voting.brawlCount -1

# first, determine maximum score
scoreboard objectives add .voteMax dummy
scoreboard players set .lobby .voteMax 0
execute if score lobby.handler lobby.voting.raceCount > .lobby .voteMax run \
        scoreboard players operation .lobby .voteMax = lobby.handler lobby.voting.raceCount
execute if score lobby.handler lobby.voting.sprintCount > .lobby .voteMax run \
        scoreboard players operation .lobby .voteMax = lobby.handler lobby.voting.sprintCount
execute if score lobby.handler lobby.voting.trialsCount > .lobby .voteMax run \
        scoreboard players operation .lobby .voteMax = lobby.handler lobby.voting.trialsCount
execute if score lobby.handler lobby.voting.dungeonsCount > .lobby .voteMax run \
        scoreboard players operation .lobby .voteMax = lobby.handler lobby.voting.dungeonsCount
execute if score lobby.handler lobby.voting.mineCount > .lobby .voteMax run \
        scoreboard players operation .lobby .voteMax = lobby.handler lobby.voting.mineCount
execute if score lobby.handler lobby.voting.extractCount > .lobby .voteMax run \
        scoreboard players operation .lobby .voteMax = lobby.handler lobby.voting.extractCount
execute if score lobby.handler lobby.voting.blitzCount > .lobby .voteMax run \
        scoreboard players operation .lobby .voteMax = lobby.handler lobby.voting.blitzCount
execute if score lobby.handler lobby.voting.brawlCount > .lobby .voteMax run \
        scoreboard players operation .lobby .voteMax = lobby.handler lobby.voting.brawlCount

# then determine which game had that maximum score & set them to be the next game
execute if score stmc.handler event.stage matches 0 if score lobby.handler lobby.voting.raceCount = .lobby .voteMax run \
        scoreboard players set stmc.handler stats.game1 0
execute if score stmc.handler event.stage matches 0 if score lobby.handler lobby.voting.sprintCount = .lobby .voteMax run \
        scoreboard players set stmc.handler stats.game1 1
execute if score stmc.handler event.stage matches 0 if score lobby.handler lobby.voting.trialsCount = .lobby .voteMax run \
        scoreboard players set stmc.handler stats.game1 2
execute if score stmc.handler event.stage matches 0 if score lobby.handler lobby.voting.dungeonsCount = .lobby .voteMax run \
        scoreboard players set stmc.handler stats.game1 3
execute if score stmc.handler event.stage matches 0 if score lobby.handler lobby.voting.mineCount = .lobby .voteMax run \
        scoreboard players set stmc.handler stats.game1 4
execute if score stmc.handler event.stage matches 0 if score lobby.handler lobby.voting.extractCount = .lobby .voteMax run \
        scoreboard players set stmc.handler stats.game1 5
execute if score stmc.handler event.stage matches 0 if score lobby.handler lobby.voting.blitzCount = .lobby .voteMax run \
        scoreboard players set stmc.handler stats.game1 6
execute if score stmc.handler event.stage matches 0 if score lobby.handler lobby.voting.brawlCount = .lobby .voteMax run \
        scoreboard players set stmc.handler stats.game1 7
        
execute if score stmc.handler event.stage matches 2 if score lobby.handler lobby.voting.raceCount = .lobby .voteMax run \
        scoreboard players set stmc.handler stats.game2 0
execute if score stmc.handler event.stage matches 2 if score lobby.handler lobby.voting.sprintCount = .lobby .voteMax run \
        scoreboard players set stmc.handler stats.game2 1
execute if score stmc.handler event.stage matches 2 if score lobby.handler lobby.voting.trialsCount = .lobby .voteMax run \
        scoreboard players set stmc.handler stats.game2 2
execute if score stmc.handler event.stage matches 2 if score lobby.handler lobby.voting.dungeonsCount = .lobby .voteMax run \
        scoreboard players set stmc.handler stats.game2 3
execute if score stmc.handler event.stage matches 2 if score lobby.handler lobby.voting.mineCount = .lobby .voteMax run \
        scoreboard players set stmc.handler stats.game2 4
execute if score stmc.handler event.stage matches 2 if score lobby.handler lobby.voting.extractCount = .lobby .voteMax run \
        scoreboard players set stmc.handler stats.game2 5
execute if score stmc.handler event.stage matches 2 if score lobby.handler lobby.voting.blitzCount = .lobby .voteMax run \
        scoreboard players set stmc.handler stats.game2 6
execute if score stmc.handler event.stage matches 2 if score lobby.handler lobby.voting.brawlCount = .lobby .voteMax run \
        scoreboard players set stmc.handler stats.game2 7
        
execute if score stmc.handler event.stage matches 4 if score lobby.handler lobby.voting.raceCount = .lobby .voteMax run \
        scoreboard players set stmc.handler stats.game3 0
execute if score stmc.handler event.stage matches 4 if score lobby.handler lobby.voting.sprintCount = .lobby .voteMax run \
        scoreboard players set stmc.handler stats.game3 1
execute if score stmc.handler event.stage matches 4 if score lobby.handler lobby.voting.trialsCount = .lobby .voteMax run \
        scoreboard players set stmc.handler stats.game3 2
execute if score stmc.handler event.stage matches 4 if score lobby.handler lobby.voting.dungeonsCount = .lobby .voteMax run \
        scoreboard players set stmc.handler stats.game3 3
execute if score stmc.handler event.stage matches 4 if score lobby.handler lobby.voting.mineCount = .lobby .voteMax run \
        scoreboard players set stmc.handler stats.game3 4
execute if score stmc.handler event.stage matches 4 if score lobby.handler lobby.voting.extractCount = .lobby .voteMax run \
        scoreboard players set stmc.handler stats.game3 5
execute if score stmc.handler event.stage matches 4 if score lobby.handler lobby.voting.blitzCount = .lobby .voteMax run \
        scoreboard players set stmc.handler stats.game3 6
execute if score stmc.handler event.stage matches 4 if score lobby.handler lobby.voting.brawlCount = .lobby .voteMax run \
        scoreboard players set stmc.handler stats.game3 7
        
execute if score stmc.handler event.stage matches 6 if score lobby.handler lobby.voting.raceCount = .lobby .voteMax run \
        scoreboard players set stmc.handler stats.game4 0
execute if score stmc.handler event.stage matches 6 if score lobby.handler lobby.voting.sprintCount = .lobby .voteMax run \
        scoreboard players set stmc.handler stats.game4 1
execute if score stmc.handler event.stage matches 6 if score lobby.handler lobby.voting.trialsCount = .lobby .voteMax run \
        scoreboard players set stmc.handler stats.game4 2
execute if score stmc.handler event.stage matches 6 if score lobby.handler lobby.voting.dungeonsCount = .lobby .voteMax run \
        scoreboard players set stmc.handler stats.game4 3
execute if score stmc.handler event.stage matches 6 if score lobby.handler lobby.voting.mineCount = .lobby .voteMax run \
        scoreboard players set stmc.handler stats.game4 4
execute if score stmc.handler event.stage matches 6 if score lobby.handler lobby.voting.extractCount = .lobby .voteMax run \
        scoreboard players set stmc.handler stats.game4 5
execute if score stmc.handler event.stage matches 6 if score lobby.handler lobby.voting.blitzCount = .lobby .voteMax run \
        scoreboard players set stmc.handler stats.game4 6
execute if score stmc.handler event.stage matches 6 if score lobby.handler lobby.voting.brawlCount = .lobby .voteMax run \
        scoreboard players set stmc.handler stats.game4 7
        
execute if score stmc.handler event.stage matches 8 if score lobby.handler lobby.voting.raceCount = .lobby .voteMax run \
        scoreboard players set stmc.handler stats.game5 0
execute if score stmc.handler event.stage matches 8 if score lobby.handler lobby.voting.sprintCount = .lobby .voteMax run \
        scoreboard players set stmc.handler stats.game5 1
execute if score stmc.handler event.stage matches 8 if score lobby.handler lobby.voting.trialsCount = .lobby .voteMax run \
        scoreboard players set stmc.handler stats.game5 2
execute if score stmc.handler event.stage matches 8 if score lobby.handler lobby.voting.dungeonsCount = .lobby .voteMax run \
        scoreboard players set stmc.handler stats.game5 3
execute if score stmc.handler event.stage matches 8 if score lobby.handler lobby.voting.mineCount = .lobby .voteMax run \
        scoreboard players set stmc.handler stats.game5 4
execute if score stmc.handler event.stage matches 8 if score lobby.handler lobby.voting.extractCount = .lobby .voteMax run \
        scoreboard players set stmc.handler stats.game5 5
execute if score stmc.handler event.stage matches 8 if score lobby.handler lobby.voting.blitzCount = .lobby .voteMax run \
        scoreboard players set stmc.handler stats.game5 6
execute if score stmc.handler event.stage matches 8 if score lobby.handler lobby.voting.brawlCount = .lobby .voteMax run \
        scoreboard players set stmc.handler stats.game5 7
        
execute if score stmc.handler event.stage matches 10 if score lobby.handler lobby.voting.raceCount = .lobby .voteMax run \
        scoreboard players set stmc.handler stats.game6 0
execute if score stmc.handler event.stage matches 10 if score lobby.handler lobby.voting.sprintCount = .lobby .voteMax run \
        scoreboard players set stmc.handler stats.game6 1
execute if score stmc.handler event.stage matches 10 if score lobby.handler lobby.voting.trialsCount = .lobby .voteMax run \
        scoreboard players set stmc.handler stats.game6 2
execute if score stmc.handler event.stage matches 10 if score lobby.handler lobby.voting.dungeonsCount = .lobby .voteMax run \
        scoreboard players set stmc.handler stats.game6 3
execute if score stmc.handler event.stage matches 10 if score lobby.handler lobby.voting.mineCount = .lobby .voteMax run \
        scoreboard players set stmc.handler stats.game6 4
execute if score stmc.handler event.stage matches 10 if score lobby.handler lobby.voting.extractCount = .lobby .voteMax run \
        scoreboard players set stmc.handler stats.game6 5
execute if score stmc.handler event.stage matches 10 if score lobby.handler lobby.voting.blitzCount = .lobby .voteMax run \
        scoreboard players set stmc.handler stats.game6 6
execute if score stmc.handler event.stage matches 10 if score lobby.handler lobby.voting.brawlCount = .lobby .voteMax run \
        scoreboard players set stmc.handler stats.game6 7
        
execute if score stmc.handler event.stage matches 12 if score lobby.handler lobby.voting.raceCount = .lobby .voteMax run \
        scoreboard players set stmc.handler stats.game7 0
execute if score stmc.handler event.stage matches 12 if score lobby.handler lobby.voting.sprintCount = .lobby .voteMax run \
        scoreboard players set stmc.handler stats.game7 1
execute if score stmc.handler event.stage matches 12 if score lobby.handler lobby.voting.trialsCount = .lobby .voteMax run \
        scoreboard players set stmc.handler stats.game7 2
execute if score stmc.handler event.stage matches 12 if score lobby.handler lobby.voting.dungeonsCount = .lobby .voteMax run \
        scoreboard players set stmc.handler stats.game7 3
execute if score stmc.handler event.stage matches 12 if score lobby.handler lobby.voting.mineCount = .lobby .voteMax run \
        scoreboard players set stmc.handler stats.game7 4
execute if score stmc.handler event.stage matches 12 if score lobby.handler lobby.voting.extractCount = .lobby .voteMax run \
        scoreboard players set stmc.handler stats.game7 5
execute if score stmc.handler event.stage matches 12 if score lobby.handler lobby.voting.blitzCount = .lobby .voteMax run \
        scoreboard players set stmc.handler stats.game7 6
execute if score stmc.handler event.stage matches 12 if score lobby.handler lobby.voting.brawlCount = .lobby .voteMax run \
        scoreboard players set stmc.handler stats.game7 7

# announce winner
tellraw @a ""
tellraw @a ["",{text:"Votes counted!",color:green}]
tellraw @a ""
tellraw @a ["",{text:"The results are:",color:green}]

execute unless score lobby.handler lobby.voting.raceCount matches -1 run \
        tellraw @a ["",{text:"Race: ",color:green},{score:{objective:"lobby.voting.raceCount",name:"lobby.handler"},color:dark_green}]
execute unless score lobby.handler lobby.voting.sprintCount matches -1 run \
        tellraw @a ["",{text:"Sprint: ",color:dark_green},{score:{objective:"lobby.voting.sprintCount",name:"lobby.handler"},color:dark_green}]
execute unless score lobby.handler lobby.voting.trialsCount matches -1 run \
        tellraw @a ["",{text:"Trials: ",color:dark_aqua},{score:{objective:"lobby.voting.trialsCount",name:"lobby.handler"},color:dark_green}]
execute unless score lobby.handler lobby.voting.dungeonsCount matches -1 run \
        tellraw @a ["",{text:"Dungeons: ",color:dark_blue},{score:{objective:"lobby.voting.dungeonsCount",name:"lobby.handler"},color:dark_green}]
execute unless score lobby.handler lobby.voting.mineCount matches -1 run \
        tellraw @a ["",{text:"Mine: ",color:gray},{score:{objective:"lobby.voting.mineCount",name:"lobby.handler"},color:dark_green}]
execute unless score lobby.handler lobby.voting.extractCount matches -1 run \
        tellraw @a ["",{text:"Extract: ",color:red},{score:{objective:"lobby.voting.extractCount",name:"lobby.handler"},color:dark_green}]
execute unless score lobby.handler lobby.voting.blitzCount matches -1 run \
        tellraw @a ["",{text:"Blitz: ",color:light_purple},{score:{objective:"lobby.voting.blitzCount",name:"lobby.handler"},color:dark_green}]
execute unless score lobby.handler lobby.voting.brawlCount matches -1 run \
        tellraw @a ["",{text:"Brawl: ",color:gold},{score:{objective:"lobby.voting.brawlCount",name:"lobby.handler"},color:dark_green}]
