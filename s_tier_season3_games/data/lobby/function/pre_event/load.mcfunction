# force gamemode
gamemode survival @a

# do some clears
clear @a
effect clear @a

# lobby world protections
yawp dim lobby:lobby delete-all regions
yawp dim lobby:lobby create local lobby-world Cuboid -30 90 -30 30 120 30
yawp local lobby:lobby lobby-world add flag break-blocks Denied
yawp local lobby:lobby lobby-world add flag no-sign-edit Denied
yawp local lobby:lobby lobby-world add flag spawning-all Denied
yawp local lobby:lobby lobby-world add flag fall-damage Denied
yawp local lobby:lobby lobby-world add flag no-pvp Allowed
yawp local lobby:lobby lobby-world add flag no-hunger Allowed
yawp local lobby:lobby lobby-world add flag knockback-players Allowed
yawp local lobby:lobby lobby-world add flag item-drop Allowed
yawp local lobby:lobby lobby-world add flag item-pickup Allowed

# scoreboard stuff
scoreboard objectives add pre.timer dummy

# reset sidebar
scoreboard objectives remove lobby.sidebar