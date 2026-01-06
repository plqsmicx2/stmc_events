# helper function that determines which finale game won the active vote

# create vote scoreboards
scoreboard objectives add finale.fightVotes dummy
scoreboard objectives add finale.sumoVotes dummy
scoreboard objectives add finale.shootVotes dummy

# reset scoreboards
scoreboard players set finale.handler finale.fightVotes 0
scoreboard players set finale.handler finale.sumoVotes 0
scoreboard players set finale.handler finale.shootVotes 0

# determine vote counts
execute as @a[scores={finale.vote=1}] run scoreboard players add finale.handler finale.fightVotes 1
execute as @a[scores={finale.vote=2}] run scoreboard players add finale.handler finale.sumoVotes 1
execute as @a[scores={finale.vote=3}] run scoreboard players add finale.handler finale.shootVotes 1

# determine max votes
scoreboard objectives add .max dummy

scoreboard players set #finale .max -1

execute if score finale.handler finale.fightVotes > #finale .max run \
        scoreboard players operation #finale .max = finale.handler finale.fightVotes
execute if score finale.handler finale.sumoVotes > #finale .max run \
        scoreboard players operation #finale .max = finale.handler finale.sumoVotes
execute if score finale.handler finale.shootVotes > #finale .max run \
        scoreboard players operation #finale .max = finale.handler finale.shootVotes

# determine which game has that max votes
# and return that game
execute if score finale.handler finale.fightVotes = #finale .max run \
        return 1
execute if score finale.handler finale.sumoVotes = #finale .max run \
        return 2
execute if score finale.handler finale.shootVotes = #finale .max run \
        return 3