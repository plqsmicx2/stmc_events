# this function will be run as @s
# if @s set a new record

# inputs:
# map = "Divide", "Descent"

# new record announcement!
$tellraw @s [{text:"New personal record on Davey's $(map)",color:gold}]

# store @s's time in ticks
$scoreboard players operation @s race.daveys$(map).time = @s race.laptime.total