
execute if score mine.handler mine.stage.creaking matches 0 if score mine.handler mine.stage.hoglin matches 0 if score mine.handler mine.stage.warden matches 0 if score mine.handler mine.stage.lobby matches 0 in mine:lobby run function mine:load

execute if score mine.handler mine.stage.creaking matches 1 if score mine.handler mine.stage.lobby matches 1 in mine:creaking run function mine:game_start
execute if score mine.handler mine.stage.hoglin matches 1 if score mine.handler mine.stage.lobby matches 1 in mine:creaking run function mine:game_start
execute if score mine.handler mine.stage.warden matches 1 if score mine.handler mine.stage.lobby matches 1 in mine:creaking run function mine:game_start

execute if score mine.handler mine.stage.creaking matches 1 in mine:creaking run function mine:game_tick
execute if score mine.handler mine.stage.hoglin matches 1 in mine:creaking run function mine:game_tick
execute if score mine.handler mine.stage.warden matches 1 in mine:creaking run function mine:game_tick

execute if score mine.handler mine.stage.lobby matches 1 in mine:lobby run function mine:lobby_tick

#all games are in mine:creaking until the dimension gets renamed mine:game