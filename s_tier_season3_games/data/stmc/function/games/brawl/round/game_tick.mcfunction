# this function handles all necessary checks during the round

# update border every tick
execute in stmc:brawl/main run function stmc:games/brawl/round/border/tick

# update deaths every tick
execute in stmc:brawl/main run function stmc:games/brawl/round/helper/death_handler

# after 3 seconds begin testing for players landing
execute as @a if items entity @s armor.chest minecraft:elytra run effect give @s resistance 1 110 true
execute as @a if score brawl.handler brawl.timer.round matches 360.. if items entity @s armor.chest minecraft:elytra unless entity @s[nbt={FallFlying:1b}] run item replace entity @s armor.chest with minecraft:air

# after 10 seconds remove immunity
execute as @a if score brawl.handler brawl.timer.round matches 500 run attribute @s attack_damage base set 1.0
execute if score brawl.handler brawl.timer.round matches 500 run effect clear @a resistance
execute if score brawl.handler brawl.timer.round matches 500 run tellraw @a {"text":"Grace Period has ended.","color":"dark_red"}

# player effects

# announce kill
execute as @a if score @s brawl.round.killThisTick matches 1.. run scoreboard players add @s brawl.kills 1
execute as @a if score @s brawl.round.killThisTick matches 1.. run function stmc:effects/brawl/on_kill

# reset temp variables
scoreboard players set @a brawl.round.killThisTick 0
scoreboard players set @a brawl.round.deathThisTick 0

# check if round is complete & end it if it is
execute if score brawl.handler brawl.teams_alive matches 1 run function stmc:games/brawl/round/reset