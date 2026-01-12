
# automatic pause
function stmc:thread/helper/automatic_pause

execute as @a[gamemode=adventure] run function stmc:games/mine/game/lantern
function stmc:games/mine/game/diamond
function stmc:games/mine/game/endermite
function stmc:games/mine/game/endermite_clear

execute if score mine.handler mine.timer matches 1 run function stmc:games/mine/inventory/witch
item replace entity @a hotbar.1 with air
#item replace entity @a hotbar.2 with air

execute if score mine.handler mine.timer matches 20 run title @a title "Mine"
execute if score mine.handler mine.timer matches 40 run title @a title "Lobby"


execute if score mine.handler mine.timer matches 200..500 run scoreboard players enable @a mine.vote

execute as @a at @s if score mine.handler mine.timer matches 200 run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 0.8 1

# sum votes for each game
execute if score mine.handler mine.timer matches 200 run scoreboard players set @a mine.vote -1

execute if score mine.handler mine.timer matches 200 run tellraw @a [{"color":"yellow","text":"\nVote!\n"},{"color":"dark_gray","text":" | "}]
#execute if score mine.handler mine.timer matches 200 if score mine.handler mine.stage.creaking matches 0 run tellraw @a [{"click_event":{"action":"run_command","command":"/trigger mine.vote set 0"},"color":"dark_red","text":"Creaking"}]
#execute if score mine.handler mine.timer matches 200 if score mine.handler mine.stage.hoglin matches 0 run tellraw @a [{"click_event":{"action":"run_command","command":"/trigger mine.vote set 1"},"color":"gold","text":"Hoglin"}]
execute if score mine.handler mine.timer matches 200 if score mine.handler mine.stage.warden matches 0 run tellraw @a [{"click_event":{"action":"run_command","command":"/trigger mine.vote set 2"},"color":"dark_aqua","text":"Warden"}]
execute if score mine.handler mine.timer matches 200 if score mine.handler mine.stage.creeper matches 0 run tellraw @a [{"click_event":{"action":"run_command","command":"/trigger mine.vote set 3"},"color":"green","text":"Creeper"}]
execute if score mine.handler mine.timer matches 200 if score mine.handler mine.stage.witch matches 0 run tellraw @a [{"click_event":{"action":"run_command","command":"/trigger mine.vote set 4"},"color":"dark_purple","text":"Witch"}]
execute if score mine.handler mine.timer matches 200 if score mine.handler mine.stage.spider matches 0 run tellraw @a [{"click_event":{"action":"run_command","command":"/trigger mine.vote set 5"},"color":"red","text":"Spider"}]
execute if score mine.handler mine.timer matches 200 run tellraw @a [{"color":"dark_gray","text":" | "}]

# sum votes for each game
execute if score mine.handler mine.timer matches 500 run scoreboard players set mine.handler mine.vote.creaking 0
execute if score mine.handler mine.timer matches 500 run scoreboard players set mine.handler mine.vote.hoglin 0
execute if score mine.handler mine.timer matches 500 run scoreboard players set mine.handler mine.vote.warden 0
execute if score mine.handler mine.timer matches 500 run scoreboard players set mine.handler mine.vote.creeper 0
execute if score mine.handler mine.timer matches 500 run scoreboard players set mine.handler mine.vote.witch 0
execute if score mine.handler mine.timer matches 500 run scoreboard players set mine.handler mine.vote.spider 0

# sum votes for each game
execute if score mine.handler mine.timer matches 500 as @a[gamemode=adventure,scores={mine.vote=0}] run scoreboard players add mine.handler mine.vote.creaking 1
execute if score mine.handler mine.timer matches 500 as @a[gamemode=adventure,scores={mine.vote=1}] run scoreboard players add mine.handler mine.vote.hoglin 1
execute if score mine.handler mine.timer matches 500 as @a[gamemode=adventure,scores={mine.vote=2}] run scoreboard players add mine.handler mine.vote.warden 1
execute if score mine.handler mine.timer matches 500 as @a[gamemode=adventure,scores={mine.vote=3}] run scoreboard players add mine.handler mine.vote.creeper 1
execute if score mine.handler mine.timer matches 500 as @a[gamemode=adventure,scores={mine.vote=4}] run scoreboard players add mine.handler mine.vote.witch 1
execute if score mine.handler mine.timer matches 500 as @a[gamemode=adventure,scores={mine.vote=5}] run scoreboard players add mine.handler mine.vote.spider 1

# determine winner of vote

# determine max value
execute if score mine.handler mine.timer matches 500 run function stmc:games/mine/helper/determine_max