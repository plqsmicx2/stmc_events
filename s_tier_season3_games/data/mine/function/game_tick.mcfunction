
execute if score mine.handler mine.stage.creaking matches 0 if score mine.handler mine.stage.hoglin matches 0 if score mine.handler mine.stage.warden matches 0 if score mine.handler mine.stage.lobby matches 0 in mine:lobby run function mine:load

execute if score mine.handler mine.stage.creaking matches 1 if score mine.handler mine.stage.lobby matches 1 in mine:creaking run function mine:general_start with storage mine:data

execute if score mine.handler mine.stage.hoglin matches 1 if score mine.handler mine.stage.lobby matches 1 in mine:hoglin run function mine:general_start

execute if score mine.handler mine.stage.warden matches 1 if score mine.handler mine.stage.lobby matches 1 in mine:warden run function mine:general_start

execute if score mine.handler mine.stage.creaking matches 1 in mine:creaking run function mine:creaking_tick with storage mine:data
execute if score mine.handler mine.stage.creaking matches 1 in mine:creaking run function mine:general_tick

execute if score mine.handler mine.stage.hoglin matches 1 in mine:hoglin run function mine:hoglin_tick
execute if score mine.handler mine.stage.hoglin matches 1 in mine:hoglin run function mine:general_tick

execute if score mine.handler mine.stage.warden matches 1 in mine:warden run function mine:warden_tick
execute if score mine.handler mine.stage.warden matches 1 in mine:warden run function mine:general_tick

execute if score mine.handler mine.stage.lobby matches 1 in mine:lobby run function mine:lobby_tick
execute if score mine.handler mine.stage.lobby matches 1 in mine:lobby run function mine:general_tick
