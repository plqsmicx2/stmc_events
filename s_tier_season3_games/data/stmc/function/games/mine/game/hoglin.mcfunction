
# randomize current rotation
execute store result storage mine:data rot int 1 run random value -179..180

#summons hoglin at: {5,10,15,20,25,30,35,40,45,50,55,#60,61,62,63,..,89,90}
execute if score mine.handler mine.timer matches 100 run function stmc:games/mine/mobs/hoglin with storage mine:data
execute if score mine.handler mine.timer matches 200 run function stmc:games/mine/mobs/hoglin with storage mine:data
execute if score mine.handler mine.timer matches 300 run function stmc:games/mine/mobs/hoglin with storage mine:data
execute if score mine.handler mine.timer matches 400 run function stmc:games/mine/mobs/hoglin with storage mine:data
execute if score mine.handler mine.timer matches 500 run function stmc:games/mine/mobs/hoglin with storage mine:data
execute if score mine.handler mine.timer matches 600 run function stmc:games/mine/mobs/hoglin with storage mine:data
execute if score mine.handler mine.timer matches 700 run function stmc:games/mine/mobs/hoglin with storage mine:data
execute if score mine.handler mine.timer matches 800 run function stmc:games/mine/mobs/hoglin with storage mine:data
execute if score mine.handler mine.timer matches 900 run function stmc:games/mine/mobs/hoglin with storage mine:data
execute if score mine.handler mine.timer matches 1000 run function stmc:games/mine/mobs/hoglin with storage mine:data
execute if score mine.handler mine.timer matches 1100 run function stmc:games/mine/mobs/hoglin with storage mine:data
#rapid spawns
execute if score mine.handler mine.timer matches 1200 run function stmc:games/mine/mobs/hoglin with storage mine:data
execute if score mine.handler mine.timer matches 1220 run function stmc:games/mine/mobs/hoglin with storage mine:data
execute if score mine.handler mine.timer matches 1240 run function stmc:games/mine/mobs/hoglin with storage mine:data
execute if score mine.handler mine.timer matches 1260 run function stmc:games/mine/mobs/hoglin with storage mine:data
execute if score mine.handler mine.timer matches 1280 run function stmc:games/mine/mobs/hoglin with storage mine:data
execute if score mine.handler mine.timer matches 1300 run function stmc:games/mine/mobs/hoglin with storage mine:data
execute if score mine.handler mine.timer matches 1320 run function stmc:games/mine/mobs/hoglin with storage mine:data
execute if score mine.handler mine.timer matches 1340 run function stmc:games/mine/mobs/hoglin with storage mine:data
execute if score mine.handler mine.timer matches 1360 run function stmc:games/mine/mobs/hoglin with storage mine:data
execute if score mine.handler mine.timer matches 1380 run function stmc:games/mine/mobs/hoglin with storage mine:data
execute if score mine.handler mine.timer matches 1400 run function stmc:games/mine/mobs/hoglin with storage mine:data
execute if score mine.handler mine.timer matches 1420 run function stmc:games/mine/mobs/hoglin with storage mine:data
execute if score mine.handler mine.timer matches 1440 run function stmc:games/mine/mobs/hoglin with storage mine:data
execute if score mine.handler mine.timer matches 1460 run function stmc:games/mine/mobs/hoglin with storage mine:data
execute if score mine.handler mine.timer matches 1480 run function stmc:games/mine/mobs/hoglin with storage mine:data
execute if score mine.handler mine.timer matches 1500 run function stmc:games/mine/mobs/hoglin with storage mine:data
execute if score mine.handler mine.timer matches 1520 run function stmc:games/mine/mobs/hoglin with storage mine:data
execute if score mine.handler mine.timer matches 1540 run function stmc:games/mine/mobs/hoglin with storage mine:data
execute if score mine.handler mine.timer matches 1560 run function stmc:games/mine/mobs/hoglin with storage mine:data
execute if score mine.handler mine.timer matches 1580 run function stmc:games/mine/mobs/hoglin with storage mine:data
execute if score mine.handler mine.timer matches 1600 run function stmc:games/mine/mobs/hoglin with storage mine:data
execute if score mine.handler mine.timer matches 1620 run function stmc:games/mine/mobs/hoglin with storage mine:data
execute if score mine.handler mine.timer matches 1640 run function stmc:games/mine/mobs/hoglin with storage mine:data
execute if score mine.handler mine.timer matches 1660 run function stmc:games/mine/mobs/hoglin with storage mine:data
execute if score mine.handler mine.timer matches 1680 run function stmc:games/mine/mobs/hoglin with storage mine:data
execute if score mine.handler mine.timer matches 1700 run function stmc:games/mine/mobs/hoglin with storage mine:data
execute if score mine.handler mine.timer matches 1720 run function stmc:games/mine/mobs/hoglin with storage mine:data
execute if score mine.handler mine.timer matches 1740 run function stmc:games/mine/mobs/hoglin with storage mine:data
execute if score mine.handler mine.timer matches 1760 run function stmc:games/mine/mobs/hoglin with storage mine:data
execute if score mine.handler mine.timer matches 1780 run function stmc:games/mine/mobs/hoglin with storage mine:data
execute if score mine.handler mine.timer matches 1800 run function stmc:games/mine/mobs/hoglin with storage mine:data

# make hoglins faster after 60s
execute as @e[type=hoglin] if score mine.handler mine.timer matches ..1200 run \
        effect give @s speed 1 1 true
execute as @e[type=hoglin] if score mine.handler mine.timer matches 1200.. run \
        effect give @s speed 1 2 true