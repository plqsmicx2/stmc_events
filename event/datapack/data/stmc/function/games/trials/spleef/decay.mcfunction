# helper function that handles the decay of blocks

# ICE DECAY

# after 30 seconds, start decay on top 2 y-levels of ice
execute in stmc:trials/spleef if score spleef.handler spleef.timer.game matches 600 run fill -15 119 -15 15 120 15 minecraft:light_blue_wool replace minecraft:ice
execute in stmc:trials/spleef if score spleef.handler spleef.timer.game matches 600 run fill -15 119 -15 15 120 15 minecraft:light_blue_wool replace minecraft:packed_ice
execute in stmc:trials/spleef if score spleef.handler spleef.timer.game matches 600 run fill -15 119 -15 15 120 15 minecraft:light_blue_wool replace minecraft:blue_ice
# after 2 more seconds, decay wool into concrete
execute in stmc:trials/spleef if score spleef.handler spleef.timer.game matches 640 run fill -15 100 -15 15 120 15 minecraft:light_blue_concrete replace minecraft:light_blue_wool
# after 1 more second, decay concrete completely
execute in stmc:trials/spleef if score spleef.handler spleef.timer.game matches 660 run fill -15 100 -15 15 120 15 minecraft:air replace minecraft:light_blue_concrete

# after 50 seconds, remove remainder of ice on top floor
execute in stmc:trials/spleef if score spleef.handler spleef.timer.game matches 1000 run fill -15 117 -15 15 120 15 minecraft:light_blue_wool replace minecraft:ice
execute in stmc:trials/spleef if score spleef.handler spleef.timer.game matches 1000 run fill -15 117 -15 15 120 15 minecraft:light_blue_wool replace minecraft:packed_ice
execute in stmc:trials/spleef if score spleef.handler spleef.timer.game matches 1000 run fill -15 117 -15 15 120 15 minecraft:light_blue_wool replace minecraft:blue_ice
# after 2 more seconds, decay wool into concrete
execute in stmc:trials/spleef if score spleef.handler spleef.timer.game matches 1040 run fill -15 100 -15 15 120 15 minecraft:light_blue_concrete replace minecraft:light_blue_wool
# after 1 more second, decay concrete completely
execute in stmc:trials/spleef if score spleef.handler spleef.timer.game matches 1060 run fill -15 100 -15 15 120 15 minecraft:air replace minecraft:light_blue_concrete

# after 60 seconds, remove top y-level of ice on bottom layers
execute in stmc:trials/spleef if score spleef.handler spleef.timer.game matches 1200 run fill -15 111 -15 15 111 15 minecraft:light_blue_wool replace minecraft:ice
execute in stmc:trials/spleef if score spleef.handler spleef.timer.game matches 1200 run fill -15 111 -15 15 111 15 minecraft:light_blue_wool replace minecraft:packed_ice
execute in stmc:trials/spleef if score spleef.handler spleef.timer.game matches 1200 run fill -15 111 -15 15 111 15 minecraft:light_blue_wool replace minecraft:blue_ice
execute in stmc:trials/spleef if score spleef.handler spleef.timer.game matches 1200 run fill -15 103 -15 15 103 15 minecraft:light_blue_wool replace minecraft:ice
execute in stmc:trials/spleef if score spleef.handler spleef.timer.game matches 1200 run fill -15 103 -15 15 103 15 minecraft:light_blue_wool replace minecraft:packed_ice
execute in stmc:trials/spleef if score spleef.handler spleef.timer.game matches 1200 run fill -15 103 -15 15 103 15 minecraft:light_blue_wool replace minecraft:blue_ice
# after 2 more seconds, decay wool into concrete
execute in stmc:trials/spleef if score spleef.handler spleef.timer.game matches 1240 run fill -15 100 -15 15 120 15 minecraft:light_blue_concrete replace minecraft:light_blue_wool
# after 1 more second, decay concrete completely
execute in stmc:trials/spleef if score spleef.handler spleef.timer.game matches 1260 run fill -15 100 -15 15 120 15 minecraft:air replace minecraft:light_blue_concrete

# after 80 seconds, remove remainder of ice on bottom layers
execute in stmc:trials/spleef if score spleef.handler spleef.timer.game matches 1600 run fill -15 100 -15 15 110 15 minecraft:light_blue_wool replace minecraft:ice
execute in stmc:trials/spleef if score spleef.handler spleef.timer.game matches 1600 run fill -15 100 -15 15 110 15 minecraft:light_blue_wool replace minecraft:packed_ice
execute in stmc:trials/spleef if score spleef.handler spleef.timer.game matches 1600 run fill -15 100 -15 15 110 15 minecraft:light_blue_wool replace minecraft:blue_ice
# after 2 more seconds, decay wool into concrete
execute in stmc:trials/spleef if score spleef.handler spleef.timer.game matches 1640 run fill -15 100 -15 15 120 15 minecraft:light_blue_concrete replace minecraft:light_blue_wool
# after 1 more second, decay concrete completely
execute in stmc:trials/spleef if score spleef.handler spleef.timer.game matches 1660 run fill -15 100 -15 15 120 15 minecraft:air replace minecraft:light_blue_concrete

# SNOW DECAY

# after 60 seconds, begin decaying top layer [decay inward one every 75 ticks to complete whole layer within 60 seconds]
execute in stmc:trials/spleef if score spleef.handler spleef.timer.game matches 1200 run fill -15 116 -15 15 116 15 minecraft:red_wool replace minecraft:snow_block
execute in stmc:trials/spleef if score spleef.handler spleef.timer.game matches 1200 run fill -14 116 -14 14 116 14 minecraft:snow_block replace minecraft:red_wool
execute in stmc:trials/spleef if score spleef.handler spleef.timer.game matches 1240 run fill -15 116 -15 15 116 15 minecraft:red_concrete replace minecraft:red_wool
execute in stmc:trials/spleef if score spleef.handler spleef.timer.game matches 1260 run fill -15 116 -15 15 116 15 minecraft:air replace minecraft:red_concrete

execute in stmc:trials/spleef if score spleef.handler spleef.timer.game matches 1275 run fill -14 116 -14 14 116 14 minecraft:red_wool replace minecraft:snow_block
execute in stmc:trials/spleef if score spleef.handler spleef.timer.game matches 1275 run fill -13 116 -13 13 116 13 minecraft:snow_block replace minecraft:red_wool
execute in stmc:trials/spleef if score spleef.handler spleef.timer.game matches 1315 run fill -14 116 -14 14 116 14 minecraft:red_concrete replace minecraft:red_wool
execute in stmc:trials/spleef if score spleef.handler spleef.timer.game matches 1335 run fill -14 116 -14 14 116 14 minecraft:air replace minecraft:red_concrete

execute in stmc:trials/spleef if score spleef.handler spleef.timer.game matches 1350 run fill -13 116 -13 13 116 13 minecraft:red_wool replace minecraft:snow_block
execute in stmc:trials/spleef if score spleef.handler spleef.timer.game matches 1350 run fill -12 116 -12 12 116 12 minecraft:snow_block replace minecraft:red_wool
execute in stmc:trials/spleef if score spleef.handler spleef.timer.game matches 1390 run fill -13 116 -13 13 116 13 minecraft:red_concrete replace minecraft:red_wool
execute in stmc:trials/spleef if score spleef.handler spleef.timer.game matches 1410 run fill -13 116 -13 13 116 13 minecraft:air replace minecraft:red_concrete

execute in stmc:trials/spleef if score spleef.handler spleef.timer.game matches 1425 run fill -12 116 -12 12 116 12 minecraft:red_wool replace minecraft:snow_block
execute in stmc:trials/spleef if score spleef.handler spleef.timer.game matches 1425 run fill -11 116 -11 11 116 11 minecraft:snow_block replace minecraft:red_wool
execute in stmc:trials/spleef if score spleef.handler spleef.timer.game matches 1465 run fill -12 116 -12 12 116 12 minecraft:red_concrete replace minecraft:red_wool
execute in stmc:trials/spleef if score spleef.handler spleef.timer.game matches 1485 run fill -12 116 -12 12 116 12 minecraft:air replace minecraft:red_concrete

execute in stmc:trials/spleef if score spleef.handler spleef.timer.game matches 1500 run fill -11 116 -11 11 116 11 minecraft:red_wool replace minecraft:snow_block
execute in stmc:trials/spleef if score spleef.handler spleef.timer.game matches 1500 run fill -10 116 -10 10 116 10 minecraft:snow_block replace minecraft:red_wool
execute in stmc:trials/spleef if score spleef.handler spleef.timer.game matches 1540 run fill -11 116 -11 11 116 11 minecraft:red_concrete replace minecraft:red_wool
execute in stmc:trials/spleef if score spleef.handler spleef.timer.game matches 1560 run fill -11 116 -11 11 116 11 minecraft:air replace minecraft:red_concrete

execute in stmc:trials/spleef if score spleef.handler spleef.timer.game matches 1575 run fill -10 116 -10 10 116 10 minecraft:red_wool replace minecraft:snow_block
execute in stmc:trials/spleef if score spleef.handler spleef.timer.game matches 1575 run fill -9 116 -9 9 116 9 minecraft:snow_block replace minecraft:red_wool
execute in stmc:trials/spleef if score spleef.handler spleef.timer.game matches 1615 run fill -10 116 -10 10 116 10 minecraft:red_concrete replace minecraft:red_wool
execute in stmc:trials/spleef if score spleef.handler spleef.timer.game matches 1635 run fill -10 116 -10 10 116 10 minecraft:air replace minecraft:red_concrete

execute in stmc:trials/spleef if score spleef.handler spleef.timer.game matches 1650 run fill -9 116 -9 9 116 9 minecraft:red_wool replace minecraft:snow_block
execute in stmc:trials/spleef if score spleef.handler spleef.timer.game matches 1650 run fill -8 116 -8 8 116 8 minecraft:snow_block replace minecraft:red_wool
execute in stmc:trials/spleef if score spleef.handler spleef.timer.game matches 1690 run fill -9 116 -9 9 116 9 minecraft:red_concrete replace minecraft:red_wool
execute in stmc:trials/spleef if score spleef.handler spleef.timer.game matches 1710 run fill -9 116 -9 9 116 9 minecraft:air replace minecraft:red_concrete

execute in stmc:trials/spleef if score spleef.handler spleef.timer.game matches 1725 run fill -8 116 -8 8 116 8 minecraft:red_wool replace minecraft:snow_block
execute in stmc:trials/spleef if score spleef.handler spleef.timer.game matches 1725 run fill -7 116 -7 7 116 7 minecraft:snow_block replace minecraft:red_wool
execute in stmc:trials/spleef if score spleef.handler spleef.timer.game matches 1765 run fill -8 116 -8 8 116 8 minecraft:red_concrete replace minecraft:red_wool
execute in stmc:trials/spleef if score spleef.handler spleef.timer.game matches 1785 run fill -8 116 -8 8 116 8 minecraft:air replace minecraft:red_concrete

execute in stmc:trials/spleef if score spleef.handler spleef.timer.game matches 1800 run fill -7 116 -7 7 116 7 minecraft:red_wool replace minecraft:snow_block
execute in stmc:trials/spleef if score spleef.handler spleef.timer.game matches 1800 run fill -6 116 -6 6 116 6 minecraft:snow_block replace minecraft:red_wool
execute in stmc:trials/spleef if score spleef.handler spleef.timer.game matches 1840 run fill -7 116 -7 7 116 7 minecraft:red_concrete replace minecraft:red_wool
execute in stmc:trials/spleef if score spleef.handler spleef.timer.game matches 1860 run fill -7 116 -7 7 116 7 minecraft:air replace minecraft:red_concrete

execute in stmc:trials/spleef if score spleef.handler spleef.timer.game matches 1875 run fill -6 116 -6 6 116 6 minecraft:red_wool replace minecraft:snow_block
execute in stmc:trials/spleef if score spleef.handler spleef.timer.game matches 1875 run fill -5 116 -5 5 116 5 minecraft:snow_block replace minecraft:red_wool
execute in stmc:trials/spleef if score spleef.handler spleef.timer.game matches 1915 run fill -6 116 -6 6 116 6 minecraft:red_concrete replace minecraft:red_wool
execute in stmc:trials/spleef if score spleef.handler spleef.timer.game matches 1935 run fill -6 116 -6 6 116 6 minecraft:air replace minecraft:red_concrete

execute in stmc:trials/spleef if score spleef.handler spleef.timer.game matches 1950 run fill -5 116 -5 5 116 5 minecraft:red_wool replace minecraft:snow_block
execute in stmc:trials/spleef if score spleef.handler spleef.timer.game matches 1950 run fill -4 116 -4 4 116 4 minecraft:snow_block replace minecraft:red_wool
execute in stmc:trials/spleef if score spleef.handler spleef.timer.game matches 1990 run fill -5 116 -5 5 116 5 minecraft:red_concrete replace minecraft:red_wool
execute in stmc:trials/spleef if score spleef.handler spleef.timer.game matches 2010 run fill -5 116 -5 5 116 5 minecraft:air replace minecraft:red_concrete

execute in stmc:trials/spleef if score spleef.handler spleef.timer.game matches 2025 run fill -4 116 -4 4 116 4 minecraft:red_wool replace minecraft:snow_block
execute in stmc:trials/spleef if score spleef.handler spleef.timer.game matches 2025 run fill -3 116 -3 3 116 3 minecraft:snow_block replace minecraft:red_wool
execute in stmc:trials/spleef if score spleef.handler spleef.timer.game matches 2065 run fill -4 116 -4 4 116 4 minecraft:red_concrete replace minecraft:red_wool
execute in stmc:trials/spleef if score spleef.handler spleef.timer.game matches 2085 run fill -4 116 -4 4 116 4 minecraft:air replace minecraft:red_concrete

execute in stmc:trials/spleef if score spleef.handler spleef.timer.game matches 2100 run fill -3 116 -3 3 116 3 minecraft:red_wool replace minecraft:snow_block
execute in stmc:trials/spleef if score spleef.handler spleef.timer.game matches 2100 run fill -2 116 -2 2 116 2 minecraft:snow_block replace minecraft:red_wool
execute in stmc:trials/spleef if score spleef.handler spleef.timer.game matches 2140 run fill -3 116 -3 3 116 3 minecraft:red_concrete replace minecraft:red_wool
execute in stmc:trials/spleef if score spleef.handler spleef.timer.game matches 2160 run fill -3 116 -3 3 116 3 minecraft:air replace minecraft:red_concrete

execute in stmc:trials/spleef if score spleef.handler spleef.timer.game matches 2175 run fill -2 116 -2 2 116 2 minecraft:red_wool replace minecraft:snow_block
execute in stmc:trials/spleef if score spleef.handler spleef.timer.game matches 2175 run fill -1 116 -1 1 116 1 minecraft:snow_block replace minecraft:red_wool
execute in stmc:trials/spleef if score spleef.handler spleef.timer.game matches 2215 run fill -2 116 -2 2 116 2 minecraft:red_concrete replace minecraft:red_wool
execute in stmc:trials/spleef if score spleef.handler spleef.timer.game matches 2235 run fill -2 116 -2 2 116 2 minecraft:air replace minecraft:red_concrete

execute in stmc:trials/spleef if score spleef.handler spleef.timer.game matches 2250 run fill -1 116 -1 1 116 1 minecraft:red_wool replace minecraft:snow_block
execute in stmc:trials/spleef if score spleef.handler spleef.timer.game matches 2250 run fill 0 116 0 0 116 0 minecraft:snow_block replace minecraft:red_wool
execute in stmc:trials/spleef if score spleef.handler spleef.timer.game matches 2290 run fill -1 116 -1 1 116 1 minecraft:red_concrete replace minecraft:red_wool
execute in stmc:trials/spleef if score spleef.handler spleef.timer.game matches 2310 run fill -1 116 -1 1 116 1 minecraft:air replace minecraft:red_concrete

execute in stmc:trials/spleef if score spleef.handler spleef.timer.game matches 2325 run fill 0 116 0 0 116 0 minecraft:red_wool replace minecraft:snow_block
execute in stmc:trials/spleef if score spleef.handler spleef.timer.game matches 2365 run fill 0 116 0 0 116 0 minecraft:red_concrete replace minecraft:red_wool
execute in stmc:trials/spleef if score spleef.handler spleef.timer.game matches 2385 run fill 0 116 0 0 116 0 minecraft:air replace minecraft:red_concrete

# after 100 seconds, begin decaying bottom layers [decay inward one every 60 ticks to complete whole layer within 50 seconds]
execute in stmc:trials/spleef if score spleef.handler spleef.timer.game matches 2000 run fill -15 100 -15 15 109 15 minecraft:red_wool replace minecraft:snow_block
execute in stmc:trials/spleef if score spleef.handler spleef.timer.game matches 2000 run fill -14 100 -14 14 109 14 minecraft:snow_block replace minecraft:red_wool
execute in stmc:trials/spleef if score spleef.handler spleef.timer.game matches 2040 run fill -15 100 -15 15 109 15 minecraft:red_concrete replace minecraft:red_wool
execute in stmc:trials/spleef if score spleef.handler spleef.timer.game matches 2060 run fill -15 100 -15 15 109 15 minecraft:air replace minecraft:red_concrete

execute in stmc:trials/spleef if score spleef.handler spleef.timer.game matches 2060 run fill -14 100 -14 14 109 14 minecraft:red_wool replace minecraft:snow_block
execute in stmc:trials/spleef if score spleef.handler spleef.timer.game matches 2060 run fill -13 100 -13 13 109 13 minecraft:snow_block replace minecraft:red_wool
execute in stmc:trials/spleef if score spleef.handler spleef.timer.game matches 2100 run fill -14 100 -14 14 109 14 minecraft:red_concrete replace minecraft:red_wool
execute in stmc:trials/spleef if score spleef.handler spleef.timer.game matches 2120 run fill -14 100 -14 14 109 14 minecraft:air replace minecraft:red_concrete

execute in stmc:trials/spleef if score spleef.handler spleef.timer.game matches 2120 run fill -13 100 -13 13 109 13 minecraft:red_wool replace minecraft:snow_block
execute in stmc:trials/spleef if score spleef.handler spleef.timer.game matches 2120 run fill -12 100 -12 12 109 12 minecraft:snow_block replace minecraft:red_wool
execute in stmc:trials/spleef if score spleef.handler spleef.timer.game matches 2160 run fill -13 100 -13 13 109 13 minecraft:red_concrete replace minecraft:red_wool
execute in stmc:trials/spleef if score spleef.handler spleef.timer.game matches 2180 run fill -13 100 -13 13 109 13 minecraft:air replace minecraft:red_concrete

execute in stmc:trials/spleef if score spleef.handler spleef.timer.game matches 2180 run fill -12 100 -12 12 109 12 minecraft:red_wool replace minecraft:snow_block
execute in stmc:trials/spleef if score spleef.handler spleef.timer.game matches 2180 run fill -11 100 -11 11 109 11 minecraft:snow_block replace minecraft:red_wool
execute in stmc:trials/spleef if score spleef.handler spleef.timer.game matches 2220 run fill -12 100 -12 12 109 12 minecraft:red_concrete replace minecraft:red_wool
execute in stmc:trials/spleef if score spleef.handler spleef.timer.game matches 2240 run fill -12 100 -12 12 109 12 minecraft:air replace minecraft:red_concrete

execute in stmc:trials/spleef if score spleef.handler spleef.timer.game matches 2240 run fill -11 100 -11 11 109 11 minecraft:red_wool replace minecraft:snow_block
execute in stmc:trials/spleef if score spleef.handler spleef.timer.game matches 2240 run fill -10 100 -10 10 109 10 minecraft:snow_block replace minecraft:red_wool
execute in stmc:trials/spleef if score spleef.handler spleef.timer.game matches 2280 run fill -11 100 -11 11 109 11 minecraft:red_concrete replace minecraft:red_wool
execute in stmc:trials/spleef if score spleef.handler spleef.timer.game matches 2300 run fill -11 100 -11 11 109 11 minecraft:air replace minecraft:red_concrete

execute in stmc:trials/spleef if score spleef.handler spleef.timer.game matches 2300 run fill -10 100 -10 10 109 10 minecraft:red_wool replace minecraft:snow_block
execute in stmc:trials/spleef if score spleef.handler spleef.timer.game matches 2300 run fill -9 100 -9 9 109 9 minecraft:snow_block replace minecraft:red_wool
execute in stmc:trials/spleef if score spleef.handler spleef.timer.game matches 2340 run fill -10 100 -10 10 109 10 minecraft:red_concrete replace minecraft:red_wool
execute in stmc:trials/spleef if score spleef.handler spleef.timer.game matches 2360 run fill -10 100 -10 10 109 10 minecraft:air replace minecraft:red_concrete

execute in stmc:trials/spleef if score spleef.handler spleef.timer.game matches 2360 run fill -9 100 -9 9 109 9 minecraft:red_wool replace minecraft:snow_block
execute in stmc:trials/spleef if score spleef.handler spleef.timer.game matches 2360 run fill -8 100 -8 8 109 8 minecraft:snow_block replace minecraft:red_wool
execute in stmc:trials/spleef if score spleef.handler spleef.timer.game matches 2400 run fill -9 100 -9 9 109 9 minecraft:red_concrete replace minecraft:red_wool
execute in stmc:trials/spleef if score spleef.handler spleef.timer.game matches 2420 run fill -9 100 -9 9 109 9 minecraft:air replace minecraft:red_concrete

execute in stmc:trials/spleef if score spleef.handler spleef.timer.game matches 2420 run fill -8 100 -8 8 109 8 minecraft:red_wool replace minecraft:snow_block
execute in stmc:trials/spleef if score spleef.handler spleef.timer.game matches 2420 run fill -7 100 -7 7 109 7 minecraft:snow_block replace minecraft:red_wool
execute in stmc:trials/spleef if score spleef.handler spleef.timer.game matches 2460 run fill -8 100 -8 8 109 8 minecraft:red_concrete replace minecraft:red_wool
execute in stmc:trials/spleef if score spleef.handler spleef.timer.game matches 2480 run fill -8 100 -8 8 109 8 minecraft:air replace minecraft:red_concrete

execute in stmc:trials/spleef if score spleef.handler spleef.timer.game matches 2480 run fill -7 100 -7 7 109 7 minecraft:red_wool replace minecraft:snow_block
execute in stmc:trials/spleef if score spleef.handler spleef.timer.game matches 2480 run fill -6 100 -6 6 109 6 minecraft:snow_block replace minecraft:red_wool
execute in stmc:trials/spleef if score spleef.handler spleef.timer.game matches 2520 run fill -7 100 -7 7 109 7 minecraft:red_concrete replace minecraft:red_wool
execute in stmc:trials/spleef if score spleef.handler spleef.timer.game matches 2540 run fill -7 100 -7 7 109 7 minecraft:air replace minecraft:red_concrete

execute in stmc:trials/spleef if score spleef.handler spleef.timer.game matches 2540 run fill -6 100 -6 6 109 6 minecraft:red_wool replace minecraft:snow_block
execute in stmc:trials/spleef if score spleef.handler spleef.timer.game matches 2540 run fill -5 100 -5 5 109 5 minecraft:snow_block replace minecraft:red_wool
execute in stmc:trials/spleef if score spleef.handler spleef.timer.game matches 2580 run fill -6 100 -6 6 109 6 minecraft:red_concrete replace minecraft:red_wool
execute in stmc:trials/spleef if score spleef.handler spleef.timer.game matches 2600 run fill -6 100 -6 6 109 6 minecraft:air replace minecraft:red_concrete

execute in stmc:trials/spleef if score spleef.handler spleef.timer.game matches 2600 run fill -5 100 -5 5 109 5 minecraft:red_wool replace minecraft:snow_block
execute in stmc:trials/spleef if score spleef.handler spleef.timer.game matches 2600 run fill -4 100 -4 4 109 4 minecraft:snow_block replace minecraft:red_wool
execute in stmc:trials/spleef if score spleef.handler spleef.timer.game matches 2640 run fill -5 100 -5 5 109 5 minecraft:red_concrete replace minecraft:red_wool
execute in stmc:trials/spleef if score spleef.handler spleef.timer.game matches 2660 run fill -5 100 -5 5 109 5 minecraft:air replace minecraft:red_concrete

execute in stmc:trials/spleef if score spleef.handler spleef.timer.game matches 2660 run fill -4 100 -4 4 109 4 minecraft:red_wool replace minecraft:snow_block
execute in stmc:trials/spleef if score spleef.handler spleef.timer.game matches 2660 run fill -3 100 -3 3 109 3 minecraft:snow_block replace minecraft:red_wool
execute in stmc:trials/spleef if score spleef.handler spleef.timer.game matches 2700 run fill -4 100 -4 4 109 4 minecraft:red_concrete replace minecraft:red_wool
execute in stmc:trials/spleef if score spleef.handler spleef.timer.game matches 2720 run fill -4 100 -4 4 109 4 minecraft:air replace minecraft:red_concrete

execute in stmc:trials/spleef if score spleef.handler spleef.timer.game matches 2720 run fill -3 100 -3 3 109 3 minecraft:red_wool replace minecraft:snow_block
execute in stmc:trials/spleef if score spleef.handler spleef.timer.game matches 2720 run fill -2 100 -2 2 109 2 minecraft:snow_block replace minecraft:red_wool
execute in stmc:trials/spleef if score spleef.handler spleef.timer.game matches 2760 run fill -3 100 -3 3 109 3 minecraft:red_concrete replace minecraft:red_wool
execute in stmc:trials/spleef if score spleef.handler spleef.timer.game matches 2780 run fill -3 100 -3 3 109 3 minecraft:air replace minecraft:red_concrete

execute in stmc:trials/spleef if score spleef.handler spleef.timer.game matches 2780 run fill -2 100 -2 2 109 2 minecraft:red_wool replace minecraft:snow_block
execute in stmc:trials/spleef if score spleef.handler spleef.timer.game matches 2780 run fill -1 100 -1 1 109 1 minecraft:snow_block replace minecraft:red_wool
execute in stmc:trials/spleef if score spleef.handler spleef.timer.game matches 2820 run fill -2 100 -2 2 109 2 minecraft:red_concrete replace minecraft:red_wool
execute in stmc:trials/spleef if score spleef.handler spleef.timer.game matches 2840 run fill -2 100 -2 2 109 2 minecraft:air replace minecraft:red_concrete

execute in stmc:trials/spleef if score spleef.handler spleef.timer.game matches 2840 run fill -1 100 -1 1 109 1 minecraft:red_wool replace minecraft:snow_block
execute in stmc:trials/spleef if score spleef.handler spleef.timer.game matches 2840 run fill 0 100 0 0 109 0 minecraft:snow_block replace minecraft:red_wool
execute in stmc:trials/spleef if score spleef.handler spleef.timer.game matches 2880 run fill -1 100 -1 1 109 1 minecraft:red_concrete replace minecraft:red_wool
execute in stmc:trials/spleef if score spleef.handler spleef.timer.game matches 2900 run fill -1 100 -1 1 109 1 minecraft:air replace minecraft:red_concrete

execute in stmc:trials/spleef if score spleef.handler spleef.timer.game matches 2900 run fill 0 100 0 0 109 0 minecraft:red_wool replace minecraft:snow_block
execute in stmc:trials/spleef if score spleef.handler spleef.timer.game matches 2940 run fill 0 100 0 0 109 0 minecraft:red_concrete replace minecraft:red_wool
execute in stmc:trials/spleef if score spleef.handler spleef.timer.game matches 2960 run fill 0 100 0 0 109 0 minecraft:air replace minecraft:red_concrete