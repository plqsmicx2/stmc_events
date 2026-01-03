# reset function for finale

# resets
execute as @a run attribute @s block_break_speed base set 1
gamerule natural_health_regeneration true

# nametags
team modify RED_RACCOONS nametagVisibility always
team modify ORANGE_OTTERS nametagVisibility always
team modify PINK_PIKAS nametagVisibility always
team modify YELLOW_YAKS nametagVisibility always
team modify GREEN_GOATS nametagVisibility always
team modify CYAN_COUGARS nametagVisibility always
team modify PURPLE_PENGUINS nametagVisibility always
team modify BLUE_BEARS nametagVisibility always

# move to post game
function stmc:lobby/post/start