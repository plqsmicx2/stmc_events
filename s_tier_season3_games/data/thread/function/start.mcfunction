# starts the game sequence

scoreboard players set stmc.handler event.stage 0
scoreboard players set stmc.handler event.paused 0

function lobby:between/start

# remove invested tokens
scoreboard players set @a event.voting.investedTokens 0