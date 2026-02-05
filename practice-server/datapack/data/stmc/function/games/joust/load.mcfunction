# helper function that creates & sets scoreboards

# return to hub if carrot on a stick is used
scoreboard objectives add joust.return used:carrot_on_a_stick

# every five kills scoreboard
scoreboard objectives add joustKillsPotion dummy

# despawn kits & interactions
execute in stmc:joust/main run kill @e[type=armor_stand]
execute in stmc:joust/main run kill @e[type=interaction]

# summon kit armor stands
execute in stmc:joust/main run function stmc:games/joust/utils/spawn_kits

scoreboard objectives remove joust.sidebar