# Macro Inputs: {n}
# Outputs: ~sqrt(n)

# Newton-Raphson method of approximating square roots
# iterate over the value x_n+1 = 0.5*(x_n + n/x_n)

scoreboard objectives add blitz.x_n1 dummy
scoreboard objectives add blitz.x_n dummy
scoreboard objectives add blitz.half dummy
scoreboard objectives add blitz.ten dummy
scoreboard players set #math blitz.half 50
scoreboard players set #math blitz.ten 100

# iteration one
scoreboard players set #math blitz.x_n1 0
scoreboard players operation #math blitz.x_n1 += @s blitz.borderDistance
scoreboard players set #math blitz.x_n 1
scoreboard players operation #math blitz.x_n1 *= #math blitz.half
scoreboard players operation #math blitz.x_n1 *= #math blitz.half
scoreboard players operation #math blitz.x_n *= #math blitz.half
scoreboard players operation #math blitz.x_n1 /= #math blitz.x_n
scoreboard players operation #math blitz.x_n1 += #math blitz.x_n
scoreboard players operation #math blitz.x_n1 /= #math blitz.ten

# iteration two
scoreboard players operation #math blitz.x_n = #math blitz.x_n1
scoreboard players set #math blitz.x_n1 0
scoreboard players operation #math blitz.x_n1 += @s blitz.borderDistance
scoreboard players operation #math blitz.x_n1 *= #math blitz.half
scoreboard players operation #math blitz.x_n1 *= #math blitz.half
scoreboard players operation #math blitz.x_n *= #math blitz.half
scoreboard players operation #math blitz.x_n1 /= #math blitz.x_n
scoreboard players operation #math blitz.x_n1 += #math blitz.x_n
scoreboard players operation #math blitz.x_n1 /= #math blitz.ten

# iteration three
scoreboard players operation #math blitz.x_n = #math blitz.x_n1
scoreboard players set #math blitz.x_n1 0
scoreboard players operation #math blitz.x_n1 += @s blitz.borderDistance
scoreboard players operation #math blitz.x_n1 *= #math blitz.half
scoreboard players operation #math blitz.x_n1 *= #math blitz.half
scoreboard players operation #math blitz.x_n *= #math blitz.half
scoreboard players operation #math blitz.x_n1 /= #math blitz.x_n
scoreboard players operation #math blitz.x_n1 += #math blitz.x_n
scoreboard players operation #math blitz.x_n1 /= #math blitz.ten

# iteration four
scoreboard players operation #math blitz.x_n = #math blitz.x_n1
scoreboard players set #math blitz.x_n1 0
scoreboard players operation #math blitz.x_n1 += @s blitz.borderDistance
scoreboard players operation #math blitz.x_n1 *= #math blitz.half
scoreboard players operation #math blitz.x_n1 *= #math blitz.half
scoreboard players operation #math blitz.x_n *= #math blitz.half
scoreboard players operation #math blitz.x_n1 /= #math blitz.x_n
scoreboard players operation #math blitz.x_n1 += #math blitz.x_n
scoreboard players operation #math blitz.x_n1 /= #math blitz.ten

# iteration five
scoreboard players operation #math blitz.x_n = #math blitz.x_n1
scoreboard players set #math blitz.x_n1 0
scoreboard players operation #math blitz.x_n1 += @s blitz.borderDistance
scoreboard players operation #math blitz.x_n1 *= #math blitz.half
scoreboard players operation #math blitz.x_n1 *= #math blitz.half
scoreboard players operation #math blitz.x_n *= #math blitz.half
scoreboard players operation #math blitz.x_n1 /= #math blitz.x_n
scoreboard players operation #math blitz.x_n1 += #math blitz.x_n
scoreboard players operation #math blitz.x_n1 /= #math blitz.ten

# iteration six
scoreboard players operation #math blitz.x_n = #math blitz.x_n1
scoreboard players set #math blitz.x_n1 0
scoreboard players operation #math blitz.x_n1 += @s blitz.borderDistance
scoreboard players operation #math blitz.x_n1 *= #math blitz.half
scoreboard players operation #math blitz.x_n1 *= #math blitz.half
scoreboard players operation #math blitz.x_n *= #math blitz.half
scoreboard players operation #math blitz.x_n1 /= #math blitz.x_n
scoreboard players operation #math blitz.x_n1 += #math blitz.x_n
scoreboard players operation #math blitz.x_n1 /= #math blitz.ten

# iteration seven
scoreboard players operation #math blitz.x_n = #math blitz.x_n1
scoreboard players set #math blitz.x_n1 0
scoreboard players operation #math blitz.x_n1 += @s blitz.borderDistance
scoreboard players operation #math blitz.x_n1 *= #math blitz.half
scoreboard players operation #math blitz.x_n1 *= #math blitz.half
scoreboard players operation #math blitz.x_n *= #math blitz.half
scoreboard players operation #math blitz.x_n1 /= #math blitz.x_n
scoreboard players operation #math blitz.x_n1 += #math blitz.x_n
scoreboard players operation #math blitz.x_n1 /= #math blitz.ten

# iteration eight
scoreboard players operation #math blitz.x_n = #math blitz.x_n1
scoreboard players set #math blitz.x_n1 0
scoreboard players operation #math blitz.x_n1 += @s blitz.borderDistance
scoreboard players operation #math blitz.x_n1 *= #math blitz.half
scoreboard players operation #math blitz.x_n1 *= #math blitz.half
scoreboard players operation #math blitz.x_n *= #math blitz.half
scoreboard players operation #math blitz.x_n1 /= #math blitz.x_n
scoreboard players operation #math blitz.x_n1 += #math blitz.x_n
scoreboard players operation #math blitz.x_n1 /= #math blitz.ten

# iteration nine
scoreboard players operation #math blitz.x_n = #math blitz.x_n1
scoreboard players set #math blitz.x_n1 0
scoreboard players operation #math blitz.x_n1 += @s blitz.borderDistance
scoreboard players operation #math blitz.x_n1 *= #math blitz.half
scoreboard players operation #math blitz.x_n1 *= #math blitz.half
scoreboard players operation #math blitz.x_n *= #math blitz.half
scoreboard players operation #math blitz.x_n1 /= #math blitz.x_n
scoreboard players operation #math blitz.x_n1 += #math blitz.x_n
scoreboard players operation #math blitz.x_n1 /= #math blitz.ten

return run scoreboard players get #math blitz.x_n1