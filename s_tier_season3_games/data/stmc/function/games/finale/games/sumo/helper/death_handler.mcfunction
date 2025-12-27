# function to track player deaths & update appropriate scoreboards

# check if a player has fallen (done after to allow round_tick to teleport them back if they shouldn't be dead yet)
execute as @a in stmc:finale if score @s finale.stats.alive matches 1.. if entity @s[x=-13,y=140,z=-23,dx=27,dy=3,dz=47] run \
        scoreboard players add @s finale.stats.deaths 1

# check if a player is dead & not teleported to spectator area
execute as @a if score @s finale.stats.deaths matches 1 if score @s finale.stats.alive matches 1 \
        in stmc:finale run function stmc:games/finale/games/sumo/helper/on_death

# teleport player back to platform if round is not yet started
execute if score finale.handler finale.round.timer matches 0..200 \
        in stmc:finale run function stmc:games/finale/games/sumo/helper/platform_return

# reset all deaths before round starts
execute as @a if score @s finale.stats.deaths matches 1 if score finale.handler finale.round.timer matches 0..200 \
        run scoreboard players set @s finale.stats.alive 1
execute as @a if score @s finale.stats.deaths matches 1 if score finale.handler finale.round.timer matches 0..200 \
        run scoreboard players set @s finale.stats.deaths 0

# check players alive per team
scoreboard players set team.RedRaccoons sumo.alive 0
execute if score team.RedRaccoons stats.points.team.rank matches 1..2 as @a[team=RED_RACCOONS] \
        if score @s sumo.alive matches 1 run scoreboard players add team.RedRaccoons sumo.alive 1
        
scoreboard players set team.OrangeOtters sumo.alive 0
execute if score team.OrangeOtters stats.points.team.rank matches 1..2 as @a[team=ORANGE_OTTERS] \
        if score @s sumo.alive matches 1 run scoreboard players add team.OrangeOtters sumo.alive 1
        
scoreboard players set team.PinkPikas sumo.alive 0
execute if score team.PinkPikas stats.points.team.rank matches 1..2 as @a[team=PINK_PIKAS] \
        if score @s sumo.alive matches 1 run scoreboard players add team.PinkPikas sumo.alive 1
        
scoreboard players set team.YellowYaks sumo.alive 0
execute if score team.YellowYaks stats.points.team.rank matches 1..2 as @a[team=YELLOW_YAKS] \
        if score @s sumo.alive matches 1 run scoreboard players add team.YellowYaks sumo.alive 1
        
scoreboard players set team.GreenGoats sumo.alive 0
execute if score team.GreenGoats stats.points.team.rank matches 1..2 as @a[team=GREEN_GOATS] \
        if score @s sumo.alive matches 1 run scoreboard players add team.GreenGoats sumo.alive 1
        
scoreboard players set team.CyanCougars sumo.alive 0
execute if score team.CyanCougars stats.points.team.rank matches 1..2 as @a[team=CYAN_COUGARS] \
        if score @s sumo.alive matches 1 run scoreboard players add team.CyanCougars sumo.alive 1
        
scoreboard players set team.PurplePenguins sumo.alive 0
execute if score team.PurplePenguins stats.points.team.rank matches 1..2 as @a[team=PURPLE_PENGUINS] \
        if score @s sumo.alive matches 1 run scoreboard players add team.PurplePenguins sumo.alive 1
        
scoreboard players set team.BlueBears sumo.alive 0
execute if score team.BlueBears stats.points.team.rank matches 1..2 as @a[team=BLUE_BEARS] \
        if score @s sumo.alive matches 1 run scoreboard players add team.BlueBears sumo.alive 1

# check # of teams alive
scoreboard players set sumo.handler sumo.alive 0

execute if score team.RedRaccoons sumo.alive matches 1.. run scoreboard players add sumo.handler sumo.alive 1
execute if score team.OrangeOtters sumo.alive matches 1.. run scoreboard players add sumo.handler sumo.alive 1
execute if score team.PinkPikas sumo.alive matches 1.. run scoreboard players add sumo.handler sumo.alive 1
execute if score team.YellowYaks sumo.alive matches 1.. run scoreboard players add sumo.handler sumo.alive 1
execute if score team.GreenGoats sumo.alive matches 1.. run scoreboard players add sumo.handler sumo.alive 1
execute if score team.CyanCougars sumo.alive matches 1.. run scoreboard players add sumo.handler sumo.alive 1
execute if score team.PurplePenguins sumo.alive matches 1.. run scoreboard players add sumo.handler sumo.alive 1
execute if score team.BlueBears sumo.alive matches 1.. run scoreboard players add sumo.handler sumo.alive 1