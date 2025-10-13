# Macro Inputs: {n}
# Outputs: ~sqrt(n)

# Newton-Raphson method of approximating square roots
# iterate over the value x_n+1 = 0.5*(x_n + n/x_n)

scoreboard objectives add sg.x_n1 dummy
scoreboard objectives add sg.x_n dummy
scoreboard objectives add sg.half dummy
scoreboard objectives add sg.ten dummy
scoreboard players set #math sg.half 50
scoreboard players set #math sg.ten 100

# iteration one
scoreboard players set #math sg.x_n1 0
scoreboard players operation #math sg.x_n1 += @s sg.borderDistance
scoreboard players set #math sg.x_n 1
scoreboard players operation #math sg.x_n1 *= #math sg.half
scoreboard players operation #math sg.x_n1 *= #math sg.half
scoreboard players operation #math sg.x_n *= #math sg.half
scoreboard players operation #math sg.x_n1 /= #math sg.x_n
scoreboard players operation #math sg.x_n1 += #math sg.x_n
scoreboard players operation #math sg.x_n1 /= #math sg.ten

# iteration two
scoreboard players operation #math sg.x_n = #math sg.x_n1
scoreboard players set #math sg.x_n1 0
scoreboard players operation #math sg.x_n1 += @s sg.borderDistance
scoreboard players operation #math sg.x_n1 *= #math sg.half
scoreboard players operation #math sg.x_n1 *= #math sg.half
scoreboard players operation #math sg.x_n *= #math sg.half
scoreboard players operation #math sg.x_n1 /= #math sg.x_n
scoreboard players operation #math sg.x_n1 += #math sg.x_n
scoreboard players operation #math sg.x_n1 /= #math sg.ten

# iteration three
scoreboard players operation #math sg.x_n = #math sg.x_n1
scoreboard players set #math sg.x_n1 0
scoreboard players operation #math sg.x_n1 += @s sg.borderDistance
scoreboard players operation #math sg.x_n1 *= #math sg.half
scoreboard players operation #math sg.x_n1 *= #math sg.half
scoreboard players operation #math sg.x_n *= #math sg.half
scoreboard players operation #math sg.x_n1 /= #math sg.x_n
scoreboard players operation #math sg.x_n1 += #math sg.x_n
scoreboard players operation #math sg.x_n1 /= #math sg.ten

# iteration four
scoreboard players operation #math sg.x_n = #math sg.x_n1
scoreboard players set #math sg.x_n1 0
scoreboard players operation #math sg.x_n1 += @s sg.borderDistance
scoreboard players operation #math sg.x_n1 *= #math sg.half
scoreboard players operation #math sg.x_n1 *= #math sg.half
scoreboard players operation #math sg.x_n *= #math sg.half
scoreboard players operation #math sg.x_n1 /= #math sg.x_n
scoreboard players operation #math sg.x_n1 += #math sg.x_n
scoreboard players operation #math sg.x_n1 /= #math sg.ten

# iteration five
scoreboard players operation #math sg.x_n = #math sg.x_n1
scoreboard players set #math sg.x_n1 0
scoreboard players operation #math sg.x_n1 += @s sg.borderDistance
scoreboard players operation #math sg.x_n1 *= #math sg.half
scoreboard players operation #math sg.x_n1 *= #math sg.half
scoreboard players operation #math sg.x_n *= #math sg.half
scoreboard players operation #math sg.x_n1 /= #math sg.x_n
scoreboard players operation #math sg.x_n1 += #math sg.x_n
scoreboard players operation #math sg.x_n1 /= #math sg.ten

# iteration six
scoreboard players operation #math sg.x_n = #math sg.x_n1
scoreboard players set #math sg.x_n1 0
scoreboard players operation #math sg.x_n1 += @s sg.borderDistance
scoreboard players operation #math sg.x_n1 *= #math sg.half
scoreboard players operation #math sg.x_n1 *= #math sg.half
scoreboard players operation #math sg.x_n *= #math sg.half
scoreboard players operation #math sg.x_n1 /= #math sg.x_n
scoreboard players operation #math sg.x_n1 += #math sg.x_n
scoreboard players operation #math sg.x_n1 /= #math sg.ten

# iteration seven
scoreboard players operation #math sg.x_n = #math sg.x_n1
scoreboard players set #math sg.x_n1 0
scoreboard players operation #math sg.x_n1 += @s sg.borderDistance
scoreboard players operation #math sg.x_n1 *= #math sg.half
scoreboard players operation #math sg.x_n1 *= #math sg.half
scoreboard players operation #math sg.x_n *= #math sg.half
scoreboard players operation #math sg.x_n1 /= #math sg.x_n
scoreboard players operation #math sg.x_n1 += #math sg.x_n
scoreboard players operation #math sg.x_n1 /= #math sg.ten

# iteration eight
scoreboard players operation #math sg.x_n = #math sg.x_n1
scoreboard players set #math sg.x_n1 0
scoreboard players operation #math sg.x_n1 += @s sg.borderDistance
scoreboard players operation #math sg.x_n1 *= #math sg.half
scoreboard players operation #math sg.x_n1 *= #math sg.half
scoreboard players operation #math sg.x_n *= #math sg.half
scoreboard players operation #math sg.x_n1 /= #math sg.x_n
scoreboard players operation #math sg.x_n1 += #math sg.x_n
scoreboard players operation #math sg.x_n1 /= #math sg.ten

# iteration nine
scoreboard players operation #math sg.x_n = #math sg.x_n1
scoreboard players set #math sg.x_n1 0
scoreboard players operation #math sg.x_n1 += @s sg.borderDistance
scoreboard players operation #math sg.x_n1 *= #math sg.half
scoreboard players operation #math sg.x_n1 *= #math sg.half
scoreboard players operation #math sg.x_n *= #math sg.half
scoreboard players operation #math sg.x_n1 /= #math sg.x_n
scoreboard players operation #math sg.x_n1 += #math sg.x_n
scoreboard players operation #math sg.x_n1 /= #math sg.ten

return run scoreboard players get #math sg.x_n1