# load function for trials [TRIALS]

# this function creates all local scoreboards (which will be subsequently removed in /reset)

# although trials has multiple rounds, players will be teleported to the trials lobby
execute in trials:lobby run tp @a 0 100 0

# do some normal load stuff

# force gamemode
gamemode survival @a
execute as @a[team=SPECTATORS] run gamemode spectator @s

# clear stuff
effect clear @a
clear @a

# time
time set day

# gamerules
gamerule doDaylightCycle false
gamerule doWeatherCycle false

# world protections
execute as @a[team=RED_RACCOONS] run item replace entity @s armor.feet with minecraft:leather_boots[dyed_color=11546150,attribute_modifiers=[{id:"attack_damage",type:"attack_damage",amount:-2,operation:"add_value",slot:"any",display:{type:"hidden"}},{id:"knockback_resistance",type:"knockback_resistance",amount:10,operation:"add_value",slot:"any",display:{type:"hidden"}},{id:"block_break_speed",type:"block_break_speed",amount:-0.99,operation:"add_value",slot:"any",display:{type:"hidden"}}],enchantments={"minecraft:binding_curse":1}]
execute as @a[team=ORANGE_OTTERS] run item replace entity @s armor.feet with minecraft:leather_boots[dyed_color=16351261,attribute_modifiers=[{id:"attack_damage",type:"attack_damage",amount:-2,operation:"add_value",slot:"any",display:{type:"hidden"}},{id:"knockback_resistance",type:"knockback_resistance",amount:10,operation:"add_value",slot:"any",display:{type:"hidden"}},{id:"block_break_speed",type:"block_break_speed",amount:-0.99,operation:"add_value",slot:"any",display:{type:"hidden"}}],enchantments={"minecraft:binding_curse":1}]
execute as @a[team=PINK_PIKAS] run item replace entity @s armor.feet with minecraft:leather_boots[dyed_color=15961002,attribute_modifiers=[{id:"attack_damage",type:"attack_damage",amount:-2,operation:"add_value",slot:"any",display:{type:"hidden"}},{id:"knockback_resistance",type:"knockback_resistance",amount:10,operation:"add_value",slot:"any",display:{type:"hidden"}},{id:"block_break_speed",type:"block_break_speed",amount:-0.99,operation:"add_value",slot:"any",display:{type:"hidden"}}],enchantments={"minecraft:binding_curse":1}]
execute as @a[team=GREEN_GOATS] run item replace entity @s armor.feet with minecraft:leather_boots[dyed_color=6192150,attribute_modifiers=[{id:"attack_damage",type:"attack_damage",amount:-2,operation:"add_value",slot:"any",display:{type:"hidden"}},{id:"knockback_resistance",type:"knockback_resistance",amount:10,operation:"add_value",slot:"any",display:{type:"hidden"}},{id:"block_break_speed",type:"block_break_speed",amount:-0.99,operation:"add_value",slot:"any",display:{type:"hidden"}}],enchantments={"minecraft:binding_curse":1}]
execute as @a[team=CYAN_COUGARS] run item replace entity @s armor.feet with minecraft:leather_boots[dyed_color=1481884,attribute_modifiers=[{id:"attack_damage",type:"attack_damage",amount:-2,operation:"add_value",slot:"any",display:{type:"hidden"}},{id:"knockback_resistance",type:"knockback_resistance",amount:10,operation:"add_value",slot:"any",display:{type:"hidden"}},{id:"block_break_speed",type:"block_break_speed",amount:-0.99,operation:"add_value",slot:"any",display:{type:"hidden"}}],enchantments={"minecraft:binding_curse":1}]
execute as @a[team=PURPLE_PENGUINS] run item replace entity @s armor.feet with minecraft:leather_boots[dyed_color=8991416,attribute_modifiers=[{id:"attack_damage",type:"attack_damage",amount:-2,operation:"add_value",slot:"any",display:{type:"hidden"}},{id:"knockback_resistance",type:"knockback_resistance",amount:10,operation:"add_value",slot:"any",display:{type:"hidden"}},{id:"block_break_speed",type:"block_break_speed",amount:-0.99,operation:"add_value",slot:"any",display:{type:"hidden"}}],enchantments={"minecraft:binding_curse":1}]

# create scoreboards
# there are not as many because many scoreboards are game-specific

# tracks the current stage of the game overall
scoreboard objectives add tr.stage dummy

# some necessary behind-the-scenes timers
scoreboard objectives add tr.timer.lobby1 dummy
scoreboard objectives add tr.timer.lobby2 dummy
scoreboard objectives add tr.timer.lobby3 dummy
scoreboard objectives add tr.timer.lobby4 dummy

# tracks individual points a player has earned
scoreboard objectives add tr.points.indiv dummy

# tracks the points each team has earned this game [is not stored anywhere else]
# this value is only attributed to the tr.TEAM players
scoreboard objectives add tr.points.team dummy

# tracks the rank of each player
scoreboard objectives add tr.points.player.rank dummy

# tracks the rank of each team
scoreboard objectives add tr.points.team.rank dummy

# tracks the order of games played
scoreboard objectives add tr.stage.game1 dummy
scoreboard objectives add tr.stage.game2 dummy
scoreboard objectives add tr.stage.game3 dummy
scoreboard objectives add tr.stage.game4 dummy

# make stages for each game
scoreboard objectives add disco.stage dummy
scoreboard objectives add replicate.stage dummy
scoreboard objectives add spleef.stage dummy
scoreboard objectives add towers.stage dummy

# and reset each game's stage
scoreboard players reset disco.handler disco.stage
scoreboard players reset replicate.handler replicate.stage
scoreboard players reset spleef.handler spleef.stage
scoreboard players reset towers.handler towers.stage

# set stage to 0
scoreboard players set tr.handler tr.stage 0

# reset timers
scoreboard players set tr.handler tr.timer.lobby1 0
scoreboard players set tr.handler tr.timer.lobby2 0
scoreboard players set tr.handler tr.timer.lobby3 0
scoreboard players set tr.handler tr.timer.lobby4 0

# reset game order
scoreboard players set tr.handler tr.stage.game1 0
scoreboard players set tr.handler tr.stage.game2 0
scoreboard players set tr.handler tr.stage.game3 0
scoreboard players set tr.handler tr.stage.game4 0

# set some necessary values for players
scoreboard players set @a tr.points.indiv 0