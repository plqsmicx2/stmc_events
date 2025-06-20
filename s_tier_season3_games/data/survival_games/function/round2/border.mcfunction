# function controlling the border based on round_time elapsed

# go ahead and set initial border again
execute if score sg.r2.handler sg.r2.timer.round matches 1 run worldborder set 250
execute if score sg.r2.handler sg.r2.timer.round matches 1 run worldborder center 0 0
execute if score sg.r2.handler sg.r2.timer.round matches 1 run worldborder damage amount 0.2
execute if score sg.r2.handler sg.r2.timer.round matches 1 run worldborder damage buffer 1

# summon the entity that will track the center of our worldborder
execute in survival_games:sg2 if score sg.r2.handler sg.r2.timer.round matches 1 run summon armor_stand 0 200 0 {NoGravity:1b,Silent:1b,Invulnerable:1b,HasVisualFire:0b,Glowing:0b,Invisible:1b,Tags:["sg.r2.worldborder.center"]}

# <===== STAGE HANDLING =====>

# begin borderStage 0 at start1
execute if score sg.r2.handler sg.r2.timer.round matches 0..1199 run scoreboard players set sg.r2.handler sg.r2.borderStage 0

# after 1 minute, begin borderStage 1
execute if score sg.r2.handler sg.r2.timer.round matches 1200..2399 run scoreboard players set sg.r2.handler sg.r2.borderStage 1

# after +1 minute [previous border has closed], begin borderStage 2
execute if score sg.r2.handler sg.r2.timer.round matches 2400..2999 run scoreboard players set sg.r2.handler sg.r2.borderStage 2

# after +30 seconds, begin borderStage 3
execute if score sg.r2.handler sg.r2.timer.round matches 3000..3599 run scoreboard players set sg.r2.handler sg.r2.borderStage 3

# after +30 seconds, begin borderStage 4
execute if score sg.r2.handler sg.r2.timer.round matches 3600..3899 run scoreboard players set sg.r2.handler sg.r2.borderStage 4

# after +15 seconds, begin borderStage 5
execute if score sg.r2.handler sg.r2.timer.round matches 3900..4499 run scoreboard players set sg.r2.handler sg.r2.borderStage 5

# after +45 seconds, begin borderStage 6 [final border, no updates will happen once borderStage 6 is reached]
execute if score sg.r2.handler sg.r2.timer.round matches 4500.. run scoreboard players set sg.r2.handler sg.r2.borderStage 6

# <===== BORDER UPDATING =====>

# borderStage 1

# shrink to 100 & recenter to appropriate beacon

# shrink 0.125 each tick
execute in survival_games:sg2 if score sg.r2.handler sg.r2.borderStage matches 1 run worldborder add -0.125

# migrate about 0.04167 blocks each tick in the appropriate direction
# this is achieved by moving our custom armor stand
execute in survival_games:sg2 as @e[tag=sg.r2.worldborder.center] if score sg.r2.handler sg.r2.borderStage matches 1 if score sg.r2.handler sg.borderEnd matches 1 at @s run tp @s ~-0.04208 ~ ~-0.04208
execute in survival_games:sg2 as @e[tag=sg.r2.worldborder.center] if score sg.r2.handler sg.r2.borderStage matches 1 if score sg.r2.handler sg.borderEnd matches 2 at @s run tp @s ~0.04125 ~ ~-0.04208
execute in survival_games:sg2 as @e[tag=sg.r2.worldborder.center] if score sg.r2.handler sg.r2.borderStage matches 1 if score sg.r2.handler sg.borderEnd matches 3 at @s run tp @s ~-0.04208 ~ ~0.04125
execute in survival_games:sg2 as @e[tag=sg.r2.worldborder.center] if score sg.r2.handler sg.r2.borderStage matches 1 if score sg.r2.handler sg.borderEnd matches 4 at @s run tp @s ~0.04125 ~ ~0.04125
# and then updating the center based on the coordinates of that armor stand
execute in survival_games:sg2 as @e[tag=sg.r2.worldborder.center] if score sg.r2.handler sg.r2.borderStage matches 1 at @s run worldborder center ~ ~

# borderStage 2

# increases damage by 200% while waiting for next border to close

execute if score sg.r2.handler sg.r2.timer.round matches 2400 run worldborder damage amount 0.6

# borderStage 3

# shrinks worldborder from 100 -> 50 blocks across 30 seconds

# shrink 0.0833 each tick
execute in survival_games:sg2 if score sg.r2.handler sg.r2.borderStage matches 3 run worldborder add -0.0833

# borderStage 4

# increases damage by the same amount as the last increase while waiting for border to close

execute if score sg.r2.handler sg.r2.timer.round matches 3600 run worldborder damage amount 1

# borderStage 5

# shrinks worldborder from 50 -> 5 blocks across 30 seconds

# shrink 0.075 each tick
execute in survival_games:sg2 if score sg.r2.handler sg.r2.borderStage matches 5 run worldborder add -0.075

# borderStage 6 [FINAL]

# doubles damage again

execute if score sg.r2.handler sg.r2.timer.round matches 3600 run worldborder damage amount 2