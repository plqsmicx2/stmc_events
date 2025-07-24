# <===== FASTEST LAP ANNOUNCEMENT =====>

tellraw @a {"text":"Fastest laps:",color:"white"}
execute as @a if score @s race.fastest_lap.rank matches 1 run tellraw @a [{text:"[#1]: ",color:"green"},{selector:"@s"}]
execute as @a if score @s race.fastest_lap.rank matches 2 run tellraw @a [{text:"[#2]: ",color:"green"},{selector:"@s"}]
execute as @a if score @s race.fastest_lap.rank matches 3 run tellraw @a [{text:"[#3]: ",color:"green"},{selector:"@s"}]
execute as @a if score @s race.fastest_lap.rank matches 4 run tellraw @a [{text:"[#4]: ",color:"green"},{selector:"@s"}]
execute as @a if score @s race.fastest_lap.rank matches 5 run tellraw @a [{text:"[#5]: ",color:"green"},{selector:"@s"}]