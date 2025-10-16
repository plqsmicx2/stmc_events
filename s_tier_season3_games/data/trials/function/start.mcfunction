# start function for trials

# first, we call our load function to instantiate everything & reset old values
function trials:load

# some magic to tell global tick to call trials:tick (maybe set g1 to trials then add stage)
# temporary
scoreboard players add stmc.handler event.stage 1