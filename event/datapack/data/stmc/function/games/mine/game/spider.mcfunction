
# randomize current rotation
execute store result storage mine:data rot int 1 run random value -179..180

#summons spider at: {5,15,25,35,45,50,55,#60,62,..,88,90}
execute if score mine.handler mine.timer matches 100 run function stmc:games/mine/mobs/spider with storage mine:data
execute if score mine.handler mine.timer matches 300 run function stmc:games/mine/mobs/spider with storage mine:data
execute if score mine.handler mine.timer matches 500 run function stmc:games/mine/mobs/spider with storage mine:data
execute if score mine.handler mine.timer matches 700 run function stmc:games/mine/mobs/spider with storage mine:data
execute if score mine.handler mine.timer matches 900 run function stmc:games/mine/mobs/spider with storage mine:data
execute if score mine.handler mine.timer matches 1000 run function stmc:games/mine/mobs/spider with storage mine:data
execute if score mine.handler mine.timer matches 1100 run function stmc:games/mine/mobs/spider with storage mine:data
#rapid spawns
execute if score mine.handler mine.timer matches 1200 run function stmc:games/mine/mobs/spider with storage mine:data
execute if score mine.handler mine.timer matches 1240 run function stmc:games/mine/mobs/spider with storage mine:data
execute if score mine.handler mine.timer matches 1280 run function stmc:games/mine/mobs/spider with storage mine:data
execute if score mine.handler mine.timer matches 1320 run function stmc:games/mine/mobs/spider with storage mine:data
execute if score mine.handler mine.timer matches 1360 run function stmc:games/mine/mobs/spider with storage mine:data
execute if score mine.handler mine.timer matches 1400 run function stmc:games/mine/mobs/spider with storage mine:data
execute if score mine.handler mine.timer matches 1440 run function stmc:games/mine/mobs/spider with storage mine:data
execute if score mine.handler mine.timer matches 1480 run function stmc:games/mine/mobs/spider with storage mine:data
execute if score mine.handler mine.timer matches 1520 run function stmc:games/mine/mobs/spider with storage mine:data
execute if score mine.handler mine.timer matches 1560 run function stmc:games/mine/mobs/spider with storage mine:data
execute if score mine.handler mine.timer matches 1600 run function stmc:games/mine/mobs/spider with storage mine:data
execute if score mine.handler mine.timer matches 1640 run function stmc:games/mine/mobs/spider with storage mine:data
execute if score mine.handler mine.timer matches 1680 run function stmc:games/mine/mobs/spider with storage mine:data
execute if score mine.handler mine.timer matches 1720 run function stmc:games/mine/mobs/spider with storage mine:data
execute if score mine.handler mine.timer matches 1760 run function stmc:games/mine/mobs/spider with storage mine:data
execute if score mine.handler mine.timer matches 1800 run function stmc:games/mine/mobs/spider with storage mine:data
execute if score mine.handler mine.timer matches 1840 run function stmc:games/mine/mobs/spider with storage mine:data
execute if score mine.handler mine.timer matches 1880 run function stmc:games/mine/mobs/spider with storage mine:data
execute if score mine.handler mine.timer matches 1920 run function stmc:games/mine/mobs/spider with storage mine:data
execute if score mine.handler mine.timer matches 1960 run function stmc:games/mine/mobs/spider with storage mine:data
execute if score mine.handler mine.timer matches 2000 run function stmc:games/mine/mobs/spider with storage mine:data
execute if score mine.handler mine.timer matches 2040 run function stmc:games/mine/mobs/spider with storage mine:data
execute if score mine.handler mine.timer matches 2080 run function stmc:games/mine/mobs/spider with storage mine:data
execute if score mine.handler mine.timer matches 2120 run function stmc:games/mine/mobs/spider with storage mine:data
execute if score mine.handler mine.timer matches 2160 run function stmc:games/mine/mobs/spider with storage mine:data
execute if score mine.handler mine.timer matches 2200 run function stmc:games/mine/mobs/spider with storage mine:data
execute if score mine.handler mine.timer matches 2240 run function stmc:games/mine/mobs/spider with storage mine:data
execute if score mine.handler mine.timer matches 2280 run function stmc:games/mine/mobs/spider with storage mine:data
execute if score mine.handler mine.timer matches 2320 run function stmc:games/mine/mobs/spider with storage mine:data
execute if score mine.handler mine.timer matches 2360 run function stmc:games/mine/mobs/spider with storage mine:data
execute if score mine.handler mine.timer matches 2400 run function stmc:games/mine/mobs/spider with storage mine:data

# strength and speed
execute as @e[type=spider] run effect give @s speed 1 1 true
execute as @e[type=spider] run effect give @s strength 1 0 true
# make spiders speed after 60s
#execute as @e[type=spider] if score mine.handler mine.timer matches 1200.. run \
        effect give @s speed 1 1 true