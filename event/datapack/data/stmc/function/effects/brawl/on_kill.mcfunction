# effect that is run whenever a player gets a kill in brawl
# run on @s
# run with storage brawl:data

# announce points
tellraw @s [{text:"[+",color:gold},{storage:"brawl:data",nbt:"killValue",color:gold},{text:"]  Player Killed!",color:gold}]

# play sound effect
execute as @s at @s run function stmc:effects/grant_points/main