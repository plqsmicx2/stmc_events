# this function runs the game thread for sprint

# update display timer
scoreboard players add sprint.handler sprint.timer.game.tick 1

execute if score sprint.handler sprint.timer.game.tick matches 20.. run \
        scoreboard players remove sprint.handler sprint.timer.game.secs 1
execute if score sprint.handler sprint.timer.game.tick matches 20.. run \
        scoreboard players set sprint.handler sprint.timer.game.tick 0

execute if score sprint.handler sprint.timer.game.secs matches ..-1 run \
        scoreboard players remove sprint.handler sprint.timer.game.mins 1
execute if score sprint.handler sprint.timer.game.secs matches ..-1 run \
        scoreboard players set sprint.handler sprint.timer.game.secs 59

# check # of players completed
scoreboard players set sprint.handler sprint.stats.playersCompleted 0
execute as @a if score @s sprint.stats.completed matches 1 run \
        scoreboard players add sprint.handler sprint.stats.playersCompleted 1

# end game if all players are completed OR if time has run out
$execute if score sprint.handler sprint.stats.playersCompleted matches $(players) run function stmc:games/sprint/helper/end_game

execute store result score $max sprint.timer.game run data get storage sprint:data max_time
execute if score sprint.handler sprint.timer.game = $max sprint.timer.game run function stmc:games/sprint/helper/end_game

# ----------------------------------------------------------
# ------------------ VVVV GAME CODE VVVV -------------------

# check players' difficulty
execute as @a at @s in stmc:sprint run function stmc:games/sprint/helper/game/set_difficulty

# kill all items
execute in stmc:sprint run kill @e[type=item]

# give saturation & invis
effect give @a saturation infinite 1 true
effect give @a invisibility infinite 0 true

# give return to last checkpoint item
item replace entity @a hotbar.8 with carrot_on_a_stick[item_model="red_dye",custom_name={text:"Return",color:red,bold:true}] 1

# check for difficulty changes
execute as @a at @s if block ~ ~-1 ~ lime_glazed_terracotta run \
        scoreboard players set @s sprint.stats.currentDifficulty 1
execute as @a at @s if block ~ ~-1 ~ lime_glazed_terracotta run \
        scoreboard players set @s sprint.return 1
        
execute as @a at @s if block ~ ~-1 ~ yellow_glazed_terracotta run \
        scoreboard players set @s sprint.stats.currentDifficulty 2
execute as @a at @s if block ~ ~-1 ~ yellow_glazed_terracotta run \
        scoreboard players set @s sprint.return 1
        
execute as @a at @s if block ~ ~-1 ~ red_glazed_terracotta run \
        scoreboard players set @s sprint.stats.currentDifficulty 3
execute as @a at @s if block ~ ~-1 ~ red_glazed_terracotta run \
        scoreboard players set @s sprint.return 1

# check for return requests
execute as @a if score @s sprint.return matches 1.. \
        in stmc:sprint run function stmc:games/sprint/helper/game/checkpoint_return
scoreboard players set @a sprint.return 0

# automatic resets
# on parkour fail
execute as @a at @s in stmc:sprint if score @s sprint.stats.currentSection matches 1 if entity @s[y=92,dy=-30] \
        run function stmc:games/sprint/helper/game/checkpoint_return

# on dropper stop (not falling)
execute as @a at @s in stmc:sprint if score @s sprint.stats.currentSection matches 2 if entity @s[x=-21,dx=-20,y=97,dy=-32] \
        as @s run function stmc:games/sprint/helper/game/dropper_return
execute as @a at @s in stmc:sprint if score @s sprint.stats.currentSection matches 2 if entity @s[x=-53,dx=-20,y=97,dy=-32] \
        as @s run function stmc:games/sprint/helper/game/dropper_return
execute as @a at @s in stmc:sprint if score @s sprint.stats.currentSection matches 2 if entity @s[x=-85,dx=-20,y=97,dy=-32] \
        as @s run function stmc:games/sprint/helper/game/dropper_return
execute as @a at @s in stmc:sprint if score @s sprint.stats.currentSection matches 2 if entity @s[x=-117,dx=-20,y=97,dy=-32] \
        as @s run function stmc:games/sprint/helper/game/dropper_return
execute as @a at @s in stmc:sprint if score @s sprint.stats.currentSection matches 2 if entity @s[x=-149,dx=-20,y=97,dy=-32] \
        as @s run function stmc:games/sprint/helper/game/dropper_return
execute as @a at @s in stmc:sprint if score @s sprint.stats.currentSection matches 2 if entity @s[x=-181,dx=-20,y=97,dy=-32] \
        as @s run function stmc:games/sprint/helper/game/dropper_return

# on spear fail
execute as @a at @s in stmc:sprint if score @s sprint.stats.currentSection matches 4 if entity @s[y=97,dy=-30] \
        run function stmc:games/sprint/helper/game/checkpoint_return

# give skip item
item replace entity @a hotbar.7 with warped_fungus_on_a_stick[item_model="compass",custom_name={text:"Skip",color:gray,bold:true}] 1

# check for skip requests
execute as @a if score @s sprint.skip matches 1.. \
        run scoreboard players set @s sprint.return 1
execute as @a if score @s sprint.skip matches 1.. \
        run scoreboard players add @s sprint.stats.currentCheckpoint 1
scoreboard players set @a sprint.skip 0

# check for completions
execute as @a at @s in stmc:sprint run function stmc:games/sprint/helper/game/checkpoint_completion

# check if section should be increased

# Parkour -> Dropper
execute as @a if score @s sprint.stats.currentSection matches 1 if score @s sprint.stats.currentCheckpoint matches 10.. run \
        function stmc:games/sprint/helper/game/increment_section
        
# Dropper -> Elytra
execute as @a if score @s sprint.stats.currentSection matches 2 if score @s sprint.stats.currentCheckpoint matches 7.. run \
        function stmc:games/sprint/helper/game/increment_section
        
# Elytra -> Spear
execute as @a if score @s sprint.stats.currentSection matches 3 if score @s sprint.stats.currentCheckpoint matches 5.. run \
        function stmc:games/sprint/helper/game/increment_section
        
# Spear -> Completion
execute as @a if score @s sprint.stats.currentSection matches 8 if score @s sprint.stats.currentCheckpoint matches 5.. run \
        execute unless score @s sprint.stats.completed matches 1 run function stmc:games/sprint/helper/game/set_completion

# Elytra:

# give effects
execute as @a if score @s sprint.stats.currentSection matches 3 run \
        effect give @s resistance 1 10 true
execute as @a if score @s sprint.stats.currentSection matches 3 run \
        effect give @s night_vision 1 0 true

# give elytra
scoreboard objectives add .elytraCount dummy
execute as @a store result score @s .elytraCount run clear @s elytra 0
execute as @a if score @s sprint.stats.currentSection matches 3 \
        unless score @s .elytraCount matches 1.. run \
        item replace entity @s armor.chest with elytra[enchantments={binding_curse:1},unbreakable={}]
scoreboard objectives remove .elytraCount

# increment boost timer
execute as @a if score @s sprint.stats.currentSection matches 3 run \
        scoreboard players add @s sprint.elytra.boost 1

# give boost [once every 8 seconds]
scoreboard objectives add .boostCount dummy
execute as @a store result score @s .boostCount run clear @s firework_rocket 0
execute as @a if score @s sprint.elytra.boost matches 160.. unless score @s .boostCount matches 1.. run item replace entity @s weapon.mainhand \
        with firework_rocket[fireworks={flight_duration:1},item_model=orange_dye,item_name={text:"Boost",color:gold,bold:true}]
execute as @a if score @s sprint.elytra.boost matches 160.. run scoreboard players set @s sprint.elytra.boost 0
scoreboard objectives remove .boostCount

# Spear:

# give spear
scoreboard objectives add .spearCount dummy
execute as @a store result score @s .spearCount run clear @s #spears 0
execute as @a if score @s sprint.stats.currentSection matches 4 \
        unless score @s .spearCount matches 1.. run \
        item replace entity @s hotbar.0 with wooden_spear[enchantments={lunge:3},unbreakable={}]
scoreboard objectives remove .spearCount