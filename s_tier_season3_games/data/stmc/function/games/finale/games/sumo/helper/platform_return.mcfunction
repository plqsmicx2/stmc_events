# helper function that returns players who fell off the platform
# run in stmc:finale

tp @s[scores={finale.team1=1..}] 0 83 10 180 0
tp @s[scores={finale.team2=1..}] 0 83 -10 0 0

scoreboard players set @s sumo.stats.deaths 0
scoreboard players set @s sumo.stats.alive 1