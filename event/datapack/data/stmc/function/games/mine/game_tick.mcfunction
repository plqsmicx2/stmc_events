#start lobby
execute if score mine.handler mine.stage.creaking matches 0 run \
execute if score mine.handler mine.stage.hoglin matches 0 run \
execute if score mine.handler mine.stage.warden matches 0 run \
execute if score mine.handler mine.stage.creeper matches 0 run \
execute if score mine.handler mine.stage.witch matches 0 run \
execute if score mine.handler mine.stage.spider matches 0 run \
execute if score mine.handler mine.stage.lobby matches 0 in stmc:mine/lobby run function stmc:games/mine/load

#start
execute if score mine.handler mine.stage.creaking matches 1 if score mine.handler mine.stage.lobby matches 1 in stmc:mine/game run function stmc:games/mine/general_start with storage mine:data
execute if score mine.handler mine.stage.creeper matches 1 if score mine.handler mine.stage.lobby matches 1 in stmc:mine/game run function stmc:games/mine/general_start with storage mine:data
execute if score mine.handler mine.stage.hoglin matches 1 if score mine.handler mine.stage.lobby matches 1 in stmc:mine/game run function stmc:games/mine/general_start with storage mine:data
execute if score mine.handler mine.stage.warden matches 1 if score mine.handler mine.stage.lobby matches 1 in stmc:mine/game run function stmc:games/mine/general_start with storage mine:data
execute if score mine.handler mine.stage.witch matches 1 if score mine.handler mine.stage.lobby matches 1 in stmc:mine/game run function stmc:games/mine/general_start with storage mine:data
execute if score mine.handler mine.stage.spider matches 1 if score mine.handler mine.stage.lobby matches 1 in stmc:mine/game run function stmc:games/mine/general_start with storage mine:data

#tick
execute if score mine.handler mine.stage.creaking matches 1 in stmc:mine/game run function stmc:games/mine/general_tick with storage mine:data
execute if score mine.handler mine.stage.creeper matches 1 in stmc:mine/game run function stmc:games/mine/general_tick with storage mine:data
execute if score mine.handler mine.stage.hoglin matches 1 in stmc:mine/game run function stmc:games/mine/general_tick with storage mine:data
execute if score mine.handler mine.stage.warden matches 1 in stmc:mine/game run function stmc:games/mine/general_tick with storage mine:data
execute if score mine.handler mine.stage.witch matches 1 in stmc:mine/game run function stmc:games/mine/general_tick with storage mine:data
execute if score mine.handler mine.stage.spider matches 1 in stmc:mine/game run function stmc:games/mine/general_tick with storage mine:data

#lobby tick
execute if score mine.handler mine.stage.lobby matches 1 in stmc:mine/lobby run function stmc:games/mine/lobby_tick
