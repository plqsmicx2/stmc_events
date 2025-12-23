#start lobby
execute if score mine.handler mine.stage.creaking matches 0 if score mine.handler mine.stage.creeper matches 0 if score mine.handler mine.stage.hoglin matches 0 if score mine.handler mine.stage.warden matches 0 if score mine.handler mine.stage.lobby matches 0 in mine:lobby run function mine:load

#start
execute if score mine.handler mine.stage.creaking matches 1 if score mine.handler mine.stage.lobby matches 1 in mine:creaking run function mine:general_start with storage mine:data
execute if score mine.handler mine.stage.creeper matches 1 if score mine.handler mine.stage.lobby matches 1 in mine:creaking run function mine:general_start with storage mine:data
execute if score mine.handler mine.stage.hoglin matches 1 if score mine.handler mine.stage.lobby matches 1 in mine:creaking run function mine:general_start with storage mine:data
execute if score mine.handler mine.stage.warden matches 1 if score mine.handler mine.stage.lobby matches 1 in mine:creaking run function mine:general_start with storage mine:data

#tick
execute if score mine.handler mine.stage.creaking matches 1 in mine:creaking run function mine:general_tick with storage mine:data
execute if score mine.handler mine.stage.creeper matches 1 in mine:creaking run function mine:general_tick with storage mine:data
execute if score mine.handler mine.stage.hoglin matches 1 in mine:creaking run function mine:general_tick with storage mine:data
execute if score mine.handler mine.stage.warden matches 1 in mine:creaking run function mine:general_tick with storage mine:data

#lobby tick
execute if score mine.handler mine.stage.lobby matches 1 in mine:lobby run function mine:lobby_tick
