clear @a
effect clear @a
effect give @a saturation 1 255
effect give @a instant_health 1 10
gamemode spectator @a

bossbar remove dungeons.timer

forceload remove -16 -3 14 140

kill @e[type=!player]

scoreboard players set dungeons.handler dungeons.stage 4

#move to reset?