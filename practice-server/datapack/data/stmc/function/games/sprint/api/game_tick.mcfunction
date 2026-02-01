
# check players' difficulty
execute as @s at @s in stmc:sprint/reloaded2 run function stmc:games/sprint/api/set_difficulty

# kill all items
execute in stmc:sprint/reloaded2 run kill @e[type=item]

# give saturation & invis
effect give @s saturation infinite 1 true
#effect give @s invisibility infinite 0 true

# check for difficulty changes
execute as @s at @s if block ~ ~-1 ~ lime_glazed_terracotta run \
        scoreboard players set @s sprint.stats.currentDifficulty 1
execute as @s at @s if block ~ ~-1 ~ lime_glazed_terracotta run \
        scoreboard players set @s sprint.dead 1
        
execute as @s at @s if block ~ ~-1 ~ yellow_glazed_terracotta run \
        scoreboard players set @s sprint.stats.currentDifficulty 2
execute as @s at @s if block ~ ~-1 ~ yellow_glazed_terracotta run \
        scoreboard players set @s sprint.dead 1
        
execute as @s at @s if block ~ ~-1 ~ red_glazed_terracotta run \
        scoreboard players set @s sprint.stats.currentDifficulty 3
execute as @s at @s if block ~ ~-1 ~ red_glazed_terracotta run \
        scoreboard players set @s sprint.dead 1

# give back item
item replace entity @s hotbar.6 with apple[food={nutrition:1,saturation:1,can_always_eat:true},\
        item_model="green_dye",custom_name={text:"Back",color:dark_green,bold:true}] 1

# check for back requests
execute as @s if score @s sprint.back matches 1.. \
        run scoreboard players set @s sprint.dead 1
execute as @s if score @s sprint.back matches 1.. \
        run scoreboard players remove @s sprint.stats.currentCheckpoint 1
scoreboard players set @s sprint.back 0

# give skip item
item replace entity @s hotbar.7 with warped_fungus_on_a_stick[\
        item_model="yellow_dye",custom_name={text:"Next",color:yellow,bold:true}] 1

# check for skip requests
execute as @s if score @s sprint.next matches 1.. \
        run scoreboard players set @s sprint.dead 1
execute as @s if score @s sprint.next matches 1.. \
        run scoreboard players add @s sprint.stats.currentCheckpoint 1
scoreboard players set @s sprint.next 0

# check for return requests
execute as @s if score @s sprint.dead matches 1.. \
        in stmc:sprint/reloaded2 run function stmc:games/sprint/api/checkpoint/return
scoreboard players set @s sprint.dead 0

# automatic resets
# on parkour fail
execute as @s at @s in stmc:sprint/reloaded2 if score @s sprint.stats.currentSection matches 1 if entity @s[y=92,dy=-30] \
        run function stmc:games/sprint/api/checkpoint/return

# on dropper stop (not falling)
#execute as @s at @s in stmc:sprint/reloaded2 if score @s sprint.stats.currentSection matches 2 if entity @s[x=-21,dx=-20,y=97,dy=-32] \
        as @s run function stmc:games/sprint/helper/game/dropper_return
#execute as @s at @s in stmc:sprint/reloaded2 if score @s sprint.stats.currentSection matches 2 if entity @s[x=-53,dx=-20,y=97,dy=-32] \
        as @s run function stmc:games/sprint/helper/game/dropper_return
#execute as @s at @s in stmc:sprint/reloaded2 if score @s sprint.stats.currentSection matches 2 if entity @s[x=-85,dx=-20,y=97,dy=-32] \
        as @s run function stmc:games/sprint/helper/game/dropper_return
#execute as @s at @s in stmc:sprint/reloaded2 if score @s sprint.stats.currentSection matches 2 if entity @s[x=-117,dx=-20,y=97,dy=-32] \
        as @s run function stmc:games/sprint/helper/game/dropper_return
#execute as @s at @s in stmc:sprint/reloaded2 if score @s sprint.stats.currentSection matches 2 if entity @s[x=-149,dx=-20,y=97,dy=-32] \
        as @s run function stmc:games/sprint/helper/game/dropper_return
#execute as @s at @s in stmc:sprint/reloaded2 if score @s sprint.stats.currentSection matches 2 if entity @s[x=-181,dx=-20,y=97,dy=-32] \
        as @s run function stmc:games/sprint/helper/game/dropper_return

# on spear fail
execute as @s at @s in stmc:sprint/reloaded2 if score @s sprint.stats.currentSection matches 4 if entity @s[y=97,dy=-30] \
        run function stmc:games/sprint/api/checkpoint/return

# check for completions
execute as @s at @s in stmc:sprint/reloaded2 run function stmc:games/sprint/api/checkpoint/tick

# check if section should be increased

# Parkour -> Dropper
#execute as @s if score @s sprint.stats.currentSection matches 1 if score @s sprint.stats.currentCheckpoint matches 10.. run \
        function stmc:games/sprint/helper/game/increment_section
        
# Dropper -> Elytra
#execute as @s if score @s sprint.stats.currentSection matches 2 if score @s sprint.stats.currentCheckpoint matches 7.. run \
        function stmc:games/sprint/helper/game/increment_section
        
# Elytra -> Spear
#execute as @s if score @s sprint.stats.currentSection matches 3 if score @s sprint.stats.currentCheckpoint matches 5.. run \
        function stmc:games/sprint/helper/game/increment_section
        
# Spear -> Completion
#execute as @s if score @s sprint.stats.currentSection matches 4 if score @s sprint.stats.currentCheckpoint matches 9.. run \
        execute unless score @s sprint.stats.completed matches 1 run function stmc:games/sprint/helper/game/set_completion

# Elytra:

# give effects
execute as @s if score @s sprint.stats.currentSection matches 3 run \
        effect give @s resistance 1 10 true
execute as @s if score @s sprint.stats.currentSection matches 3 run \
        effect give @s night_vision 1 0 true

# give elytra
scoreboard objectives add .elytraCount dummy
execute as @s store result score @s .elytraCount run clear @s elytra 0
execute as @s if score @s sprint.stats.currentSection matches 3 \
        unless score @s .elytraCount matches 1.. run \
        item replace entity @s armor.chest with elytra[enchantments={binding_curse:1},unbreakable={}]
scoreboard objectives remove .elytraCount

# increment boost timer
execute as @s if score @s sprint.stats.currentSection matches 3 run \
        scoreboard players add @s sprint.elytra.boost 1

# give boost [once every 8 seconds]
scoreboard objectives add .boostCount dummy
execute as @s store result score @s .boostCount run clear @s firework_rocket 0
execute as @s if score @s sprint.elytra.boost matches 160.. unless score @s .boostCount matches 1.. run item replace entity @s weapon.mainhand \
        with firework_rocket[fireworks={flight_duration:1},item_model=orange_dye,item_name={text:"Boost",color:gold,bold:true}]
execute as @s if score @s sprint.elytra.boost matches 160.. run scoreboard players set @s sprint.elytra.boost 0
scoreboard objectives remove .boostCount

# Spear:

# give spear
scoreboard objectives add .spearCount dummy
execute as @s store result score @s .spearCount run clear @s #spears 0
execute as @s if score @s sprint.stats.currentSection matches 4 \
        unless score @s .spearCount matches 1.. run \
        item replace entity @s hotbar.0 with wooden_spear[enchantments={lunge:3},unbreakable={}]
scoreboard objectives remove .spearCount