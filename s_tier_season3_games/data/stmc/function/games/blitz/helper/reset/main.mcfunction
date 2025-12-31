# world reset for blitz

# does NOT handle villagers (those are run on game start)

# kill items
execute in stmc:blitz run kill @e[type=!player]

# reset point crates
execute in stmc:blitz run function stmc:games/blitz/helper/reset/crates

# reset placed blocks
execute in stmc:blitz run function stmc:games/blitz/helper/reset/blocks

# reset team cores
execute in stmc:blitz run function stmc:games/blitz/helper/reset/cores