# main thread handler for survival games [BRAWL]

# first, we call our load function if this is the first time we're here
execute unless score sg.handler sg.stage matches 0.. run function survival_games:load

# stage key:
# 0- round 1: exists as its own thread with tick & load; runs the whole round from start to finish
# 1- round 2: copy of round 1
# 2- round 3: adds on to round 1 with a score announcement & /reset function

# points update
function survival_games:points_update

# run the rounds
execute if score sg.handler sg.stage matches 0 run function survival_games:round1/tick
execute if score sg.handler sg.stage matches 1 run function survival_games:round2/tick
execute if score sg.handler sg.stage matches 2 run function survival_games:round3/tick

# set team points to 0 if they don't exist
execute unless score sg.RedRaccoons sg.points.team matches 0.. run scoreboard players set sg.RedRaccoons sg.points.team 0
execute unless score sg.OrangeOtters sg.points.team matches 0.. run scoreboard players set sg.OrangeOtters sg.points.team 0
execute unless score sg.PinkPikas sg.points.team matches 0.. run scoreboard players set sg.PinkPikas sg.points.team 0
execute unless score sg.YellowYaks sg.points.team matches 0.. run scoreboard players set sg.YellowYaks sg.points.team 0
execute unless score sg.GreenGoats sg.points.team matches 0.. run scoreboard players set sg.GreenGoats sg.points.team 0
execute unless score sg.CyanCougars sg.points.team matches 0.. run scoreboard players set sg.CyanCougars sg.points.team 0
execute unless score sg.PurplePenguins sg.points.team matches 0.. run scoreboard players set sg.PurplePenguins sg.points.team 0
execute unless score sg.BlueBears sg.points.team matches 0.. run scoreboard players set sg.BlueBears sg.points.team 0

# update the sidebar
# this happens after our tick to reflect point changes the round/tick may have tracked
function survival_games:sidebar