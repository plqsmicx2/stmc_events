

#function stmc:games/mine/game/chicken
execute as @a if items entity @s weapon.offhand compass run function stmc:games/mine/game/compass
function stmc:games/mine/game/diamond
function stmc:games/mine/game/endermite
function stmc:games/mine/game/endermite_clear
execute as @a[gamemode=adventure] run function stmc:games/mine/game/lantern
#function stmc:games/mine/game/snowball

execute as @a[gamemode=adventure,scores={mine.game.deathcount=1}] run gamemode spectator @s

execute unless entity @a[gamemode=adventure] run function stmc:games/mine/game_end


execute if score mine.handler mine.timer matches 20 run title @a title "Mine"
execute if score mine.handler mine.timer matches 40 if score mine.handler mine.stage.creeper matches 1 run title @a title {"color":"green","text":"Creeper"}
execute if score mine.handler mine.timer matches 40 if score mine.handler mine.stage.creaking matches 1 run title @a title {"color":"dark_red","text":"Creaking"}
execute if score mine.handler mine.timer matches 40 if score mine.handler mine.stage.hoglin matches 1 run title @a title {"color":"gold","text":"Hoglin"}
execute if score mine.handler mine.timer matches 40 if score mine.handler mine.stage.warden matches 1 run title @a title {"color":"dark_aqua","text":"Warden"}
execute if score mine.handler mine.timer matches 40 if score mine.handler mine.stage.witch matches 1 run title @a title {"color":"dark_purple","text":"Witch"}
execute if score mine.handler mine.timer matches 40 if score mine.handler mine.stage.spider matches 1 run title @a title {"color":"red","text":"Spider"}

execute if score mine.handler mine.timer matches 100 run function stmc:games/mine/game/openwalls



execute if score mine.handler mine.stage.creeper matches 1 run function stmc:games/mine/game/creeper
execute if score mine.handler mine.stage.creaking matches 1 run function stmc:games/mine/game/creaking
execute if score mine.handler mine.stage.hoglin matches 1 run function stmc:games/mine/game/hoglin
execute if score mine.handler mine.stage.warden matches 1 run function stmc:games/mine/game/warden
execute if score mine.handler mine.stage.witch matches 1 run function stmc:games/mine/game/witch
execute if score mine.handler mine.stage.spider matches 1 run function stmc:games/mine/game/spider


