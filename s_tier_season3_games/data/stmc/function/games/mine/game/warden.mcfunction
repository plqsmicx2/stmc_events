
# randomize current rotation
execute store result storage mine:data rot int 1 run random value -179..180

#summons warden at: {10,25,40,50,#60,63,66,69,72,75,78,81,84,87,90}
execute if score mine.handler mine.timer matches 200 run function stmc:games/mine/mobs/warden with storage mine:data
execute if score mine.handler mine.timer matches 500 run function stmc:games/mine/mobs/warden with storage mine:data
execute if score mine.handler mine.timer matches 800 run function stmc:games/mine/mobs/warden with storage mine:data
execute if score mine.handler mine.timer matches 1000 run function stmc:games/mine/mobs/warden with storage mine:data
#rapid spawns
execute if score mine.handler mine.timer matches 1200 run function stmc:games/mine/mobs/warden with storage mine:data
execute if score mine.handler mine.timer matches 1260 run function stmc:games/mine/mobs/warden with storage mine:data
execute if score mine.handler mine.timer matches 1320 run function stmc:games/mine/mobs/warden with storage mine:data
execute if score mine.handler mine.timer matches 1380 run function stmc:games/mine/mobs/warden with storage mine:data
execute if score mine.handler mine.timer matches 1440 run function stmc:games/mine/mobs/warden with storage mine:data
execute if score mine.handler mine.timer matches 1500 run function stmc:games/mine/mobs/warden with storage mine:data
execute if score mine.handler mine.timer matches 1560 run function stmc:games/mine/mobs/warden with storage mine:data
execute if score mine.handler mine.timer matches 1620 run function stmc:games/mine/mobs/warden with storage mine:data
execute if score mine.handler mine.timer matches 1680 run function stmc:games/mine/mobs/warden with storage mine:data
execute if score mine.handler mine.timer matches 1740 run function stmc:games/mine/mobs/warden with storage mine:data
execute if score mine.handler mine.timer matches 1800 run function stmc:games/mine/mobs/warden with storage mine:data

#pull after rapid spawns
execute if score mine.handler mine.timer matches 1300 in mine:creaking at @a as @e[type=warden,distance=4..10] at @s facing entity @p feet if block ^ ^ ^.36 air run tp @s ^ ^ ^.06