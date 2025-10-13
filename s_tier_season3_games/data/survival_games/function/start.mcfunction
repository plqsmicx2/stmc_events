# start function for brawl

# first, we call our load function to instantiate everything & reset old values
function survival_games:load

# some magic to tell global tick to call survival_games:tick (maybe set game to brawl then add stage)
# temporary
scoreboard players set stmc.handler event.stage 3