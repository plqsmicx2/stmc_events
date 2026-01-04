
# randomize current rotation
execute store result storage mine:data rot int 1 run random value -179..180

#summons warden at: {10,25,40,50,#60,66,72,78,84,90}
execute if score mine.handler mine.timer matches 200 run function stmc:games/mine/mobs/warden with storage mine:data
execute if score mine.handler mine.timer matches 500 run function stmc:games/mine/mobs/warden with storage mine:data
execute if score mine.handler mine.timer matches 800 run function stmc:games/mine/mobs/warden with storage mine:data
execute if score mine.handler mine.timer matches 1000 run function stmc:games/mine/mobs/warden with storage mine:data
#rapid spawns
execute if score mine.handler mine.timer matches 1200 run function stmc:games/mine/mobs/warden with storage mine:data
execute if score mine.handler mine.timer matches 1320 run function stmc:games/mine/mobs/warden with storage mine:data
execute if score mine.handler mine.timer matches 1440 run function stmc:games/mine/mobs/warden with storage mine:data
execute if score mine.handler mine.timer matches 1560 run function stmc:games/mine/mobs/warden with storage mine:data
execute if score mine.handler mine.timer matches 1680 run function stmc:games/mine/mobs/warden with storage mine:data
execute if score mine.handler mine.timer matches 1800 run function stmc:games/mine/mobs/warden with storage mine:data

#after rapid spawns
execute if score mine.handler mine.timer matches 1300.. in stmc:mine/creaking run effect give @e[type=warden] speed infinite 9 true
execute if score mine.handler mine.timer matches 1320 as @a[gamemode=adventure] at @s in stmc:mine/creaking run summon snowball
execute if score mine.handler mine.timer matches 1440 as @a[gamemode=adventure] at @s in stmc:mine/creaking run summon snowball
execute if score mine.handler mine.timer matches 1560 as @a[gamemode=adventure] at @s in stmc:mine/creaking run summon snowball
execute if score mine.handler mine.timer matches 1680 as @a[gamemode=adventure] at @s in stmc:mine/creaking run summon snowball
execute if score mine.handler mine.timer matches 1800 as @a[gamemode=adventure] at @s in stmc:mine/creaking run summon snowball
