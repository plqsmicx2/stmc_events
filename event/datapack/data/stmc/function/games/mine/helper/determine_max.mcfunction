# helper function that determines the maximum value for votes
# then sets the current game based on that value

# set max to 0
execute run scoreboard players set $mine.highest mine.vote 0

# set votes for games not voted for to -1
execute if score mine.handler mine.stage.creaking matches 1.. run \
        scoreboard players set mine.handler mine.vote.creaking -1
execute if score mine.handler mine.stage.hoglin matches 1.. run \
        scoreboard players set mine.handler mine.vote.hoglin -1
execute if score mine.handler mine.stage.warden matches 1.. run \
        scoreboard players set mine.handler mine.vote.warden -1
execute if score mine.handler mine.stage.creeper matches 1.. run \
        scoreboard players set mine.handler mine.vote.creeper -1
execute if score mine.handler mine.stage.witch matches 1.. run \
        scoreboard players set mine.handler mine.vote.witch -1
execute if score mine.handler mine.stage.spider matches 1.. run \
        scoreboard players set mine.handler mine.vote.spider -1

# check if each one is greater
execute if score mine.handler mine.vote.creaking > $mine.highest mine.vote run \
        scoreboard players operation $mine.highest mine.vote = mine.handler mine.vote.creaking
execute if score mine.handler mine.vote.hoglin > $mine.highest mine.vote run \
        scoreboard players operation $mine.highest mine.vote = mine.handler mine.vote.hoglin
execute if score mine.handler mine.vote.warden > $mine.highest mine.vote run \
        scoreboard players operation $mine.highest mine.vote = mine.handler mine.vote.warden
execute if score mine.handler mine.vote.creeper > $mine.highest mine.vote run \
        scoreboard players operation $mine.highest mine.vote = mine.handler mine.vote.creeper
execute if score mine.handler mine.vote.witch > $mine.highest mine.vote run \
        scoreboard players operation $mine.highest mine.vote = mine.handler mine.vote.witch
execute if score mine.handler mine.vote.spider > $mine.highest mine.vote run \
        scoreboard players operation $mine.highest mine.vote = mine.handler mine.vote.spider

# determine which one is that maximum
execute if score mine.handler mine.vote.creaking = $mine.highest mine.vote run \
        scoreboard players set mine.handler mine.stage.creaking 1

# for our others, we manually ensure they are not also added if there is a tie
execute if score mine.handler mine.vote.hoglin = $mine.highest mine.vote run \
        execute unless score mine.handler mine.stage.creaking matches 1 run \
        scoreboard players set mine.handler mine.stage.hoglin 1
execute if score mine.handler mine.vote.warden = $mine.highest mine.vote run \
        execute unless score mine.handler mine.stage.creaking matches 1 unless score mine.handler mine.stage.hoglin matches 1 run \
        scoreboard players set mine.handler mine.stage.warden 1
execute if score mine.handler mine.vote.creeper = $mine.highest mine.vote run \
        execute unless score mine.handler mine.stage.creaking matches 1 unless score mine.handler mine.stage.hoglin matches 1 run \
        execute unless score mine.handler mine.stage.warden matches 1 run \
        scoreboard players set mine.handler mine.stage.creeper 1
execute if score mine.handler mine.vote.witch = $mine.highest mine.vote run \
        execute unless score mine.handler mine.stage.creaking matches 1 unless score mine.handler mine.stage.hoglin matches 1 run \
        execute unless score mine.handler mine.stage.warden matches 1 unless score mine.handler mine.stage.creeper matches 1 run \
        scoreboard players set mine.handler mine.stage.witch 1
execute if score mine.handler mine.vote.spider = $mine.highest mine.vote run \
        execute unless score mine.handler mine.stage.creaking matches 1 unless score mine.handler mine.stage.hoglin matches 1 run \
        execute unless score mine.handler mine.stage.warden matches 1 unless score mine.handler mine.stage.creeper matches 1 run \
        execute unless score mine.handler mine.stage.witch matches 1 run \
        scoreboard players set mine.handler mine.stage.spider 1