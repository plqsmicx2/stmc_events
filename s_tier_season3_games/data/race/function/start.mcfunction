# start function for race

# first, we call our load function to instantiate everything & reset old values
function race:load

# some magic to tell global tick to call race:tick (maybe set g4 to race then add stage)
# temporary
scoreboard players set stmc.handler event.stage 7