# reset function for finale

# resets
execute as @a run attribute @s block_break_speed base set 1
gamerule natural_health_regeneration true

# move to post game
function stmc:lobby/post/start