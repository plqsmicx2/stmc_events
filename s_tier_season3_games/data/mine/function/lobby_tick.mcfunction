
# automatic pause
function thread:automatic_pause

execute as @a[gamemode=adventure] run function mine:game/lantern
function mine:game/diamond
function mine:game/endermite
function mine:game/endermite_clear

execute if score mine.handler mine.timer matches 1 run function mine:inventory/creaking
item replace entity @a hotbar.1 with air
item replace entity @a hotbar.2 with air

execute if score mine.handler mine.timer matches 20 run title @a title "Mine"
execute if score mine.handler mine.timer matches 40 run title @a title "Lobby"


execute if score mine.handler mine.timer matches 200..500 run scoreboard players enable @a[gamemode=adventure] mine.vote

execute as @a at @s if score mine.handler mine.timer matches 200 run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 0.8 1

execute if score mine.handler mine.timer matches 200 run tellraw @a [{"color":"yellow","text":"\nVote!\n"},{"color":"dark_gray","text":" | "}]
execute if score mine.handler mine.timer matches 200 if score mine.handler mine.stage.creaking matches 0 run tellraw @a [{"click_event":{"action":"run_command","command":"/trigger mine.vote set 0"},"color":"dark_red","text":"Creaking"}]
execute if score mine.handler mine.timer matches 200 if score mine.handler mine.stage.hoglin matches 0 run tellraw @a [{"click_event":{"action":"run_command","command":"/trigger mine.vote set 1"},"color":"gold","text":"Hoglin"}]
execute if score mine.handler mine.timer matches 200 if score mine.handler mine.stage.warden matches 0 run tellraw @a [{"click_event":{"action":"run_command","command":"/trigger mine.vote set 2"},"color":"dark_aqua","text":"Warden"}]
execute if score mine.handler mine.timer matches 200 if score mine.handler mine.stage.creeper matches 0 run tellraw @a [{"click_event":{"action":"run_command","command":"/trigger mine.vote set 3"},"color":"green","text":"Creeper"}]
execute if score mine.handler mine.timer matches 200 run tellraw @a [{"color":"dark_gray","text":" | "}]

# sum votes for each game
execute if score mine.handler mine.timer matches 500 as @a[gamemode=adventure,scores={mine.vote=0}] run scoreboard players add mine.handler mine.vote.creaking 1
execute if score mine.handler mine.timer matches 500 as @a[gamemode=adventure,scores={mine.vote=1}] run scoreboard players add mine.handler mine.vote.hoglin 1
execute if score mine.handler mine.timer matches 500 as @a[gamemode=adventure,scores={mine.vote=2}] run scoreboard players add mine.handler mine.vote.warden 1
execute if score mine.handler mine.timer matches 500 as @a[gamemode=adventure,scores={mine.vote=3}] run scoreboard players add mine.handler mine.vote.creeper 1

# determine winner of vote

# determine max value

# set max to 0
execute if score mine.handler mine.timer matches 500 run scoreboard players set $mine.highest mine.vote 0

# check if each one is greater
execute if score mine.handler mine.timer matches 500 if score mine.handler mine.vote.creaking > $mine.highest mine.vote run \
        scoreboard players operation $mine.highest mine.vote = mine.handler mine.vote.creaking
execute if score mine.handler mine.timer matches 500 if score mine.handler mine.vote.hoglin > $mine.highest mine.vote run \
        scoreboard players operation $mine.highest mine.vote = mine.handler mine.vote.hoglin
execute if score mine.handler mine.timer matches 500 if score mine.handler mine.vote.warden > $mine.highest mine.vote run \
        scoreboard players operation $mine.highest mine.vote = mine.handler mine.vote.warden
execute if score mine.handler mine.timer matches 500 if score mine.handler mine.vote.creeper > $mine.highest mine.vote run \
        scoreboard players operation $mine.highest mine.vote = mine.handler mine.vote.creeper

# determine which one is that maximum
execute if score mine.handler mine.timer matches 500 if score mine.handler mine.vote.creaking = $mine.highest mine.vote run \
        scoreboard players set mine.handler mine.stage.creaking 1

# for our other two, we manually ensure they are not also added if there is a tie
execute if score mine.handler mine.timer matches 500 if score mine.handler mine.vote.hoglin = $mine.highest mine.vote run \
        execute unless score mine.handler mine.stage.creaking matches 1 run \
        scoreboard players set mine.handler mine.stage.hoglin 1
execute if score mine.handler mine.timer matches 500 if score mine.handler mine.vote.warden = $mine.highest mine.vote run \
        execute unless score mine.handler mine.stage.creaking matches 1 unless score mine.handler mine.stage.hoglin matches 1 run \
        scoreboard players set mine.handler mine.stage.warden 1
execute if score mine.handler mine.timer matches 500 if score mine.handler mine.vote.creeper = $mine.highest mine.vote run \
        execute unless score mine.handler mine.stage.creaking matches 1 unless score mine.handler mine.stage.hoglin matches 1 run \
        execute unless score mine.handler mine.stage.warden matches 1 run \
        scoreboard players set mine.handler mine.stage.creeper 1