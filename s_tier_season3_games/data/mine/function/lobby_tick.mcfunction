execute as @a[gamemode=adventure] if items entity @s weapon.offhand compass at @s positioned ~-20 ~-1 ~-20 run function mine:game/compass

execute as @a[gamemode=adventure] run function mine:game/lantern

function mine:game/diamond

function mine:game/endermite

function mine:game/endermite_clear



execute if score mine.handler mine.timer matches 20 run title @a title "Mine"
execute if score mine.handler mine.timer matches 40 run title @a title "Lobby"


execute if score mine.handler mine.timer matches 200 run scoreboard players enable @a[gamemode=adventure] mine.vote

execute if score mine.handler mine.timer matches 200 run tellraw @a [{"color":"yellow","text":"\nVote!\n"},{"color":"dark_gray","text":" | "}]
execute if score mine.handler mine.timer matches 200 if score mine.handler mine.stage.creaking matches 0 run tellraw @a [{"click_event":{"action":"run_command","command":"/trigger mine.vote set 0"},"color":"dark_red","text":"Creaking"}]
execute if score mine.handler mine.timer matches 200 if score mine.handler mine.stage.hoglin matches 0 run tellraw @a [{"click_event":{"action":"run_command","command":"/trigger mine.vote set 1"},"color":"gold","text":"Hoglin"}]
execute if score mine.handler mine.timer matches 200 if score mine.handler mine.stage.warden matches 0 run tellraw @a [{"click_event":{"action":"run_command","command":"/trigger mine.vote set 2"},"color":"dark_aqua","text":"Warden"}]
tellraw @a [{"color":"dark_gray","text":" | "}]

execute if score mine.handler mine.timer matches 500 as @a[gamemode=adventure,scores={mine.vote=0}] run scoreboard players add mine.handler mine.vote.creaking 1
execute if score mine.handler mine.timer matches 500 as @a[gamemode=adventure,scores={mine.vote=1}] run scoreboard players add mine.handler mine.vote.hoglin 1
execute if score mine.handler mine.timer matches 500 as @a[gamemode=adventure,scores={mine.vote=2}] run scoreboard players add mine.handler mine.vote.warden 1

execute if score mine.handler mine.timer matches 500 if score mine.handler mine.vote.creaking >= mine.handler mine.vote.hoglin if score mine.handler mine.vote.creaking >= mine.handler mine.vote.warden unless score mine.handler mine.stage.creaking matches 2 run scoreboard players set mine.handler mine.stage.creaking 1
execute if score mine.handler mine.timer matches 500 if score mine.handler mine.vote.creaking < mine.handler mine.vote.hoglin if score mine.handler mine.vote.hoglin >= mine.handler mine.vote.warden unless score mine.handler mine.stage.hoglin matches 2 unless score mine.handler mine.stage.creaking matches 1 run scoreboard players set mine.handler mine.stage.hoglin 1
execute if score mine.handler mine.timer matches 500 if score mine.handler mine.vote.warden > mine.handler mine.vote.creaking if score mine.handler mine.vote.warden > mine.handler mine.vote.hoglin unless score mine.handler mine.stage.warden matches 2 unless score mine.handler mine.stage.creaking matches 1 unless score mine.handler mine.stage.hoglin matches 1 run scoreboard players set mine.handler mine.stage.warden 1