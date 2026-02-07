# this function will be run as @s
# if @s set a new record

# inputs:
# map = "divide", "descent"

# new record announcement!
$tellraw @s [{text:"New personal lap record on Davey's $(map)!",color:gold}]

# store @s's time in ticks
$scoreboard players operation @s race.daveys$(map).lap = @s race.fastest_lap