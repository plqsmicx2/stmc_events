# reset function for finale

# resets
execute as @a run attribute @s block_break_speed base set 1
gamerule naturalRegeneration true

# move to post game
function lobby:post/start