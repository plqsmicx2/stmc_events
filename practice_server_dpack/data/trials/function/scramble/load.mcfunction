# helper function that creates all necessary scoreboards

# disable collision
team modify dim.tr.scramble collisionRule never

# track lobbies currently active
scoreboard objectives add scramble.lobby1 dummy
scoreboard objectives add scramble.lobby2 dummy
scoreboard objectives add scramble.lobby3 dummy
scoreboard objectives add scramble.lobby4 dummy
scoreboard players set scramble.handler scramble.lobby1 0
scoreboard players set scramble.handler scramble.lobby2 0
scoreboard players set scramble.handler scramble.lobby3 0
scoreboard players set scramble.handler scramble.lobby4 0

# track players currently in-game
scoreboard objectives add scramble.alive dummy
scoreboard players set @a scramble.alive 0

# track some game-specific data
scoreboard objectives add scramble.timer.game dummy
scoreboard objectives add scramble.timer.round dummy
scoreboard objectives add scramble.roundsCompleted dummy
scoreboard objectives add scramble.current_round_block dummy
scoreboard objectives add scramble.current_round_length dummy
scoreboard objectives add scramble.current_round_length_delay dummy