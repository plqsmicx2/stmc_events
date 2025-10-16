# <===== ROUND 1 =====>

# this round features:
# red versus yellow
# orange versus pink
# green versus blue
# cyan versus purple

# increment timer
execute if score extract.handler extract.stats.roundsCompleted matches 0 run scoreboard players add extract.handler extract.timer.game.round1 1

# update timer bossbar
execute if score extract.handler extract.timer.game.round1 matches 1 run bossbar add extract.timer {text:"Round 1",color:red}
execute if score extract.handler extract.timer.game.round1 matches 1 run bossbar set extract.timer color red
execute if score extract.handler extract.timer.game.round1 matches 1 run bossbar set extract.timer max 2400
execute if score extract.handler extract.timer.game.round1 matches 1 run bossbar set extract.timer players @a
execute if score extract.handler extract.stats.roundsCompleted matches 0 store result bossbar extract.timer value run scoreboard players get extract.handler extract.timer.game.round1

# reset players
execute if score extract.handler extract.timer.game.round1 matches 1 run scoreboard players set @a extract.stats.alive 1
execute if score extract.handler extract.timer.game.round1 matches 1 run scoreboard players set @a extract.stats.deaths 0
execute if score extract.handler extract.timer.game.round1 matches 1 run clear @a
execute if score extract.handler extract.timer.game.round1 matches 1 run effect clear @a
execute if score extract.handler extract.timer.game.round1 matches 1 run effect give @a slow_falling 3 0 true
execute if score extract.handler extract.timer.game.round1 matches 5 run effect give @a instant_health 1 110 true
execute if score extract.handler extract.timer.game.round1 matches 5 run effect give @a saturation 1 5 true
execute if score extract.handler extract.timer.game.round1 matches 1 run gamemode survival @a

# build world
# red in slot 1-1
execute in extract:extract if score extract.handler extract.timer.game.round1 matches 5 run clone -20 29 27 20 -3 0 30 130 27
# orange in slot 1-2
execute in extract:extract if score extract.handler extract.timer.game.round1 matches 10 run clone 26 29 -32 66 -3 -5 30 130 0

# pink in slot 2-1
execute in extract:extract if score extract.handler extract.timer.game.round1 matches 15 run clone 72 29 27 112 -3 0 30 130 87
# green in slot 2-2
execute in extract:extract if score extract.handler extract.timer.game.round1 matches 20 run clone 118 29 -32 158 -3 -5 30 130 60

# cyan in slot 3-1
execute in extract:extract if score extract.handler extract.timer.game.round1 matches 25 run clone 164 29 27 204 -3 0 -20 130 87
# purple in slot 3-2
execute in extract:extract if score extract.handler extract.timer.game.round1 matches 30 run clone 210 29 -32 250 -3 -5 -20 130 60

# teleport players to their respective slots
execute in extract:extract if score extract.handler extract.timer.game.round1 matches 30 run tp @a[team=RED_RACCOONS] 50 134 50
execute in extract:extract if score extract.handler extract.timer.game.round1 matches 30 run tp @a[team=ORANGE_OTTERS] 50 134 4
execute in extract:extract if score extract.handler extract.timer.game.round1 matches 30 run tp @a[team=PINK_PIKAS] 50 134 110
execute in extract:extract if score extract.handler extract.timer.game.round1 matches 30 run tp @a[team=GREEN_GOATS] 50 134 64
execute in extract:extract if score extract.handler extract.timer.game.round1 matches 30 run tp @a[team=CYAN_COUGARS] 0 134 110
execute in extract:extract if score extract.handler extract.timer.game.round1 matches 30 run tp @a[team=PURPLE_PENGUINS] 0 134 64

# countdown at 5 seconds
execute if score extract.handler extract.timer.game.round1 matches 200 run title @a actionbar {text:"5 seconds!",color:red,bold:true}
execute as @a at @s if score extract.handler extract.timer.game.round1 matches 200 run playsound block.amethyst_block.chime master @s ~ ~ ~ 0.8 1.3
execute if score extract.handler extract.timer.game.round1 matches 220 run title @a actionbar {text:"4 seconds!",color:red,bold:true}
execute as @a at @s if score extract.handler extract.timer.game.round1 matches 220 run playsound block.amethyst_block.chime master @s ~ ~ ~ 0.8 1.2
execute if score extract.handler extract.timer.game.round1 matches 240 run title @a actionbar {text:"3 seconds!",color:red,bold:true}
execute as @a at @s if score extract.handler extract.timer.game.round1 matches 240 run playsound block.amethyst_block.chime master @s ~ ~ ~ 0.8 1.1
execute if score extract.handler extract.timer.game.round1 matches 260 run title @a actionbar {text:"2 seconds!",color:red,bold:true}
execute as @a at @s if score extract.handler extract.timer.game.round1 matches 260 run playsound block.amethyst_block.chime master @s ~ ~ ~ 0.8 1.0
execute if score extract.handler extract.timer.game.round1 matches 280 run title @a actionbar {text:"1 second!",color:red,bold:true}
execute as @a at @s if score extract.handler extract.timer.game.round1 matches 280 run playsound block.amethyst_block.chime master @s ~ ~ ~ 0.9 0.9
execute if score extract.handler extract.timer.game.round1 matches 300 run title @a title {text:"Go!",color:red,bold:true}
execute as @a at @s if score extract.handler extract.timer.game.round1 matches 300 run playsound block.amethyst_block.break master @s ~ ~ ~ 0.7 1.0

# start round after 15 seconds
execute in extract:extract if score extract.handler extract.timer.game.round1 matches 300 run fill -5 133 107 55 138 7 air replace red_stained_glass
execute in extract:extract if score extract.handler extract.timer.game.round1 matches 300 run fill -5 133 107 55 138 7 air replace orange_stained_glass
execute in extract:extract if score extract.handler extract.timer.game.round1 matches 300 run fill -5 133 107 55 138 7 air replace pink_stained_glass
execute in extract:extract if score extract.handler extract.timer.game.round1 matches 300 run fill -5 133 107 55 138 7 air replace green_stained_glass
execute in extract:extract if score extract.handler extract.timer.game.round1 matches 300 run fill -5 133 107 55 138 7 air replace cyan_stained_glass
execute in extract:extract if score extract.handler extract.timer.game.round1 matches 300 run fill -5 133 107 55 138 7 air replace purple_stained_glass
execute in extract:extract if score extract.handler extract.timer.game.round1 matches 300 run fill -5 133 107 55 138 7 air replace barrier

# give armor
execute as @a if score extract.handler extract.timer.game.round1 matches 5 run item replace entity @s armor.chest with chainmail_chestplate
execute as @a if score extract.handler extract.timer.game.round1 matches 5 run item replace entity @s armor.feet with iron_boots[attribute_modifiers=[{id:"block_break_speed",type:"block_break_speed",amount:-0.99,operation:"add_value",slot:"any",display:{type:"hidden"}}],enchantments={"minecraft:binding_curse":1}]

# kills & block breaks are automatically calculated by the game, so no need to check up on them

# round end check
execute if score extract.handler extract.stats.roundsCompleted matches 0 if score extract.handler extract.timer.game.round1 matches 2400 run scoreboard players set extract.handler extract.stats.roundsCompleted 1
