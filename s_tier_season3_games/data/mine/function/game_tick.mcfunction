scoreboard players add mine.handler mine.timer 1



execute as @a[gamemode=adventure,scores={mine.game.deathcount=1}] run gamemode spectator @s

execute unless entity @a[gamemode=adventure] run function mine:game_end



execute if score mine.handler mine.stage.warden matches 1 run function mine:game/snowball
execute if score mine.handler mine.stage.warden matches 1 run function mine:game/chicken

execute as @a[gamemode=adventure] if items entity @s weapon.offhand compass at @s positioned ~-20 ~-1 ~-20 run function mine:game/compass

execute as @a[gamemode=adventure] run function mine:game/lantern

function mine:game/diamond

function mine:game/endermite

function mine:game/endermite_clear



execute if score mine.handler mine.timer matches 20 if score mine.handler mine.stage.creaking matches 1 run title @a title "Creaking"
execute if score mine.handler mine.timer matches 20 if score mine.handler mine.stage.hoglin matches 1 run title @a title "Hoglin"
execute if score mine.handler mine.timer matches 20 if score mine.handler mine.stage.warden matches 1 run title @a title "Warden"

execute if score mine.handler mine.timer matches 40 run title @a title "3"
execute if score mine.handler mine.timer matches 60 run title @a title "2"
execute if score mine.handler mine.timer matches 80 run title @a title "1"
execute if score mine.handler mine.timer matches 100 run title @a title "Mine"
execute if score mine.handler mine.timer matches 100 run function mine:game/openwalls

execute if score mine.handler mine.timer matches 450 if score mine.handler mine.stage.creaking matches 1 as @a[gamemode=adventure] run function mine:mobs/creaking
execute if score mine.handler mine.timer matches 450 if score mine.handler mine.stage.hoglin matches 1 as @a[gamemode=adventure] run function mine:mobs/hoglin
execute if score mine.handler mine.timer matches 450 if score mine.handler mine.stage.warden matches 1 as @a[gamemode=adventure] run function mine:mobs/warden





