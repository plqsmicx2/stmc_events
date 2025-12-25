# Macro Inputs: {n}
# Outputs: ~sqrt(n)

# Newton-Raphson method of approximating square roots
# iterate over the value x_n+1 = 0.5*(x_n + n/x_n)

scoreboard objectives add brawl.x_n1 dummy
scoreboard objectives add brawl.x_n dummy
scoreboard objectives add brawl.half dummy
scoreboard objectives add brawl.ten dummy
scoreboard players set #math brawl.half 50
scoreboard players set #math brawl.ten 100

# iteration one
scoreboard players set #math brawl.x_n1 0
scoreboard players operation #math brawl.x_n1 += @s brawl.borderDistance
scoreboard players set #math brawl.x_n 1
scoreboard players operation #math brawl.x_n1 *= #math brawl.half
scoreboard players operation #math brawl.x_n1 *= #math brawl.half
scoreboard players operation #math brawl.x_n *= #math brawl.half
scoreboard players operation #math brawl.x_n1 /= #math brawl.x_n
scoreboard players operation #math brawl.x_n1 += #math brawl.x_n
scoreboard players operation #math brawl.x_n1 /= #math brawl.ten

# iteration two
scoreboard players operation #math brawl.x_n = #math brawl.x_n1
scoreboard players set #math brawl.x_n1 0
scoreboard players operation #math brawl.x_n1 += @s brawl.borderDistance
scoreboard players operation #math brawl.x_n1 *= #math brawl.half
scoreboard players operation #math brawl.x_n1 *= #math brawl.half
scoreboard players operation #math brawl.x_n *= #math brawl.half
scoreboard players operation #math brawl.x_n1 /= #math brawl.x_n
scoreboard players operation #math brawl.x_n1 += #math brawl.x_n
scoreboard players operation #math brawl.x_n1 /= #math brawl.ten

# iteration three
scoreboard players operation #math brawl.x_n = #math brawl.x_n1
scoreboard players set #math brawl.x_n1 0
scoreboard players operation #math brawl.x_n1 += @s brawl.borderDistance
scoreboard players operation #math brawl.x_n1 *= #math brawl.half
scoreboard players operation #math brawl.x_n1 *= #math brawl.half
scoreboard players operation #math brawl.x_n *= #math brawl.half
scoreboard players operation #math brawl.x_n1 /= #math brawl.x_n
scoreboard players operation #math brawl.x_n1 += #math brawl.x_n
scoreboard players operation #math brawl.x_n1 /= #math brawl.ten

# iteration four
scoreboard players operation #math brawl.x_n = #math brawl.x_n1
scoreboard players set #math brawl.x_n1 0
scoreboard players operation #math brawl.x_n1 += @s brawl.borderDistance
scoreboard players operation #math brawl.x_n1 *= #math brawl.half
scoreboard players operation #math brawl.x_n1 *= #math brawl.half
scoreboard players operation #math brawl.x_n *= #math brawl.half
scoreboard players operation #math brawl.x_n1 /= #math brawl.x_n
scoreboard players operation #math brawl.x_n1 += #math brawl.x_n
scoreboard players operation #math brawl.x_n1 /= #math brawl.ten

# iteration five
scoreboard players operation #math brawl.x_n = #math brawl.x_n1
scoreboard players set #math brawl.x_n1 0
scoreboard players operation #math brawl.x_n1 += @s brawl.borderDistance
scoreboard players operation #math brawl.x_n1 *= #math brawl.half
scoreboard players operation #math brawl.x_n1 *= #math brawl.half
scoreboard players operation #math brawl.x_n *= #math brawl.half
scoreboard players operation #math brawl.x_n1 /= #math brawl.x_n
scoreboard players operation #math brawl.x_n1 += #math brawl.x_n
scoreboard players operation #math brawl.x_n1 /= #math brawl.ten

# iteration six
scoreboard players operation #math brawl.x_n = #math brawl.x_n1
scoreboard players set #math brawl.x_n1 0
scoreboard players operation #math brawl.x_n1 += @s brawl.borderDistance
scoreboard players operation #math brawl.x_n1 *= #math brawl.half
scoreboard players operation #math brawl.x_n1 *= #math brawl.half
scoreboard players operation #math brawl.x_n *= #math brawl.half
scoreboard players operation #math brawl.x_n1 /= #math brawl.x_n
scoreboard players operation #math brawl.x_n1 += #math brawl.x_n
scoreboard players operation #math brawl.x_n1 /= #math brawl.ten

# iteration seven
scoreboard players operation #math brawl.x_n = #math brawl.x_n1
scoreboard players set #math brawl.x_n1 0
scoreboard players operation #math brawl.x_n1 += @s brawl.borderDistance
scoreboard players operation #math brawl.x_n1 *= #math brawl.half
scoreboard players operation #math brawl.x_n1 *= #math brawl.half
scoreboard players operation #math brawl.x_n *= #math brawl.half
scoreboard players operation #math brawl.x_n1 /= #math brawl.x_n
scoreboard players operation #math brawl.x_n1 += #math brawl.x_n
scoreboard players operation #math brawl.x_n1 /= #math brawl.ten

# iteration eight
scoreboard players operation #math brawl.x_n = #math brawl.x_n1
scoreboard players set #math brawl.x_n1 0
scoreboard players operation #math brawl.x_n1 += @s brawl.borderDistance
scoreboard players operation #math brawl.x_n1 *= #math brawl.half
scoreboard players operation #math brawl.x_n1 *= #math brawl.half
scoreboard players operation #math brawl.x_n *= #math brawl.half
scoreboard players operation #math brawl.x_n1 /= #math brawl.x_n
scoreboard players operation #math brawl.x_n1 += #math brawl.x_n
scoreboard players operation #math brawl.x_n1 /= #math brawl.ten

# iteration nine
scoreboard players operation #math brawl.x_n = #math brawl.x_n1
scoreboard players set #math brawl.x_n1 0
scoreboard players operation #math brawl.x_n1 += @s brawl.borderDistance
scoreboard players operation #math brawl.x_n1 *= #math brawl.half
scoreboard players operation #math brawl.x_n1 *= #math brawl.half
scoreboard players operation #math brawl.x_n *= #math brawl.half
scoreboard players operation #math brawl.x_n1 /= #math brawl.x_n
scoreboard players operation #math brawl.x_n1 += #math brawl.x_n
scoreboard players operation #math brawl.x_n1 /= #math brawl.ten

return run scoreboard players get #math brawl.x_n1