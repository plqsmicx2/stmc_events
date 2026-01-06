# main thread handler for survival games [BRAWL]

# set current round
execute store result storage brawl:data roundsCompleted int 1 run \
        scoreboard players get brawl.handler brawl.roundsCompleted

# points update
function stmc:games/brawl/helper/points/points_update with storage brawl:data

# sidebar
function stmc:games/brawl/sidebar with storage stmc:global

# run automatic pause unless we're in a round
execute unless score brawl.handler brawl.stage matches 2 run function stmc:thread/helper/automatic_pause

# if we're in delay stage, wait 10s for players to load
execute if score brawl.handler brawl.stage matches 0 run scoreboard players add brawl.handler brawl.timer.delay 1
execute if score brawl.handler brawl.stage matches 0 if score brawl.handler brawl.timer.delay matches 200.. run \
        scoreboard players set brawl.handler brawl.stage 1

# reset the world spawn
execute if score brawl.handler brawl.timer.delay matches 2 in stmc:brawl/main run fill -8 170 -8 8 170 8 tinted_glass replace air

# If we're in explanation stage, run the explanation
execute if score brawl.handler brawl.stage matches 1 run scoreboard players add brawl.handler brawl.timer.explanation 1
execute in stmc:brawl/main if score brawl.handler brawl.stage matches 1 run function stmc:games/brawl/helper/explanation

# If we're in the game stage, run round.tick
execute if score brawl.handler brawl.stage matches 2 run function stmc:games/brawl/round/tick with storage brawl:data

# end game
execute if score brawl.handler brawl.stage matches 2 if score brawl.handler brawl.roundsCompleted matches 3.. run \
        scoreboard players set brawl.handler brawl.stage 3

# if stage is 3, run announcements & reset
execute if score brawl.handler brawl.stage matches 3 run scoreboard players add brawl.handler brawl.timer.announcements 1

execute if score brawl.handler brawl.timer.announcements matches 80 run function stmc:games/brawl/announcements/player
execute if score brawl.handler brawl.timer.announcements matches 240 run function stmc:games/brawl/announcements/team

execute if score brawl.handler brawl.stage matches 3 if score brawl.handler brawl.timer.announcements matches 300.. run function stmc:games/brawl/reset