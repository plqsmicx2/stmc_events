
# randomize current rotation
execute store result storage mine:data rot int 1 run random value -179..180

#summons warden at: {10,25,40,50,#60,66,72,78,84,90}
execute if score mine.handler mine.timer matches 200 run function stmc:games/mine/mobs/warden with storage mine:data
execute if score mine.handler mine.timer matches 500 run function stmc:games/mine/mobs/warden with storage mine:data
execute if score mine.handler mine.timer matches 800 run function stmc:games/mine/mobs/warden with storage mine:data
execute if score mine.handler mine.timer matches 1000 run function stmc:games/mine/mobs/warden with storage mine:data
#rapid spawns
execute if score mine.handler mine.timer matches 1200 run function stmc:games/mine/mobs/warden with storage mine:data
execute if score mine.handler mine.timer matches 1400 run function stmc:games/mine/mobs/warden with storage mine:data
execute if score mine.handler mine.timer matches 1600 run function stmc:games/mine/mobs/warden with storage mine:data
execute if score mine.handler mine.timer matches 1800 run function stmc:games/mine/mobs/warden with storage mine:data
execute if score mine.handler mine.timer matches 2000 run function stmc:games/mine/mobs/warden with storage mine:data
execute if score mine.handler mine.timer matches 2200 run function stmc:games/mine/mobs/warden with storage mine:data
execute if score mine.handler mine.timer matches 2400 run function stmc:games/mine/mobs/warden with storage mine:data

#effects after rapid spawns
execute if score mine.handler mine.timer matches 1300.. run effect give @e[type=warden] speed infinite 2 true
execute if score mine.handler mine.timer matches 1500 run effect give @a[gamemode=adventure] wither 1200 0 true
