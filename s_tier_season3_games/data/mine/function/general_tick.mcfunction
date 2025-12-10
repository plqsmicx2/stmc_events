

function mine:game/chicken
function mine:game/compass
function mine:game/diamond
function mine:game/endermite
function mine:game/endermite_clear
function mine:game/lantern
function mine:game/openwalls
function mine:game/snowball

execute as @a[gamemode=adventure,scores={mine.game.deathcount=1}] run gamemode spectator @s

execute unless entity @a[gamemode=adventure] run function mine:general_end


execute if score mine.handler mine.timer matches 20 run title @a title "Mine"
execute if score mine.handler mine.timer matches 40 run title @a title "Creaking"

execute if score mine.handler mine.timer matches 100 run function mine:game/openwalls



execute if score mine.handler mine.timer matches 100 if score mine.handler mine.stage.creaking matches 1 run function mine:mobs/creaking
execute if score mine.handler mine.timer matches 100 if score mine.handler mine.stage.creaking matches 1 run function mine:mobs/creaking
execute if score mine.handler mine.timer matches 100 if score mine.handler mine.stage.creaking matches 1 run function mine:mobs/creaking


