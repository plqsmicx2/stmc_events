# helper function that announces a single player
# run with the macro [placement]

# run announcement
$function stmc:lobby/helper/player_announcement {placement:$(placement)}

# effects
$execute as @a if score @s stats.points.indiv.rank matches $(placement) at @s \
        run function stmc:effects/lobby/placement