# helper function that stores the current game based on the event stage

execute unless score stmc.handler event.stage matches 1.. run \
        data modify storage stmc:global currentGame set value 0

execute if score stmc.handler event.stage matches 1 run \
        data modify storage stmc:global currentGame set value 1
        
execute if score stmc.handler event.stage matches 2..3 run \
        data modify storage stmc:global currentGame set value 2
        
execute if score stmc.handler event.stage matches 4..5 run \
        data modify storage stmc:global currentGame set value 3
        
execute if score stmc.handler event.stage matches 6..7 run \
        data modify storage stmc:global currentGame set value 4
        
execute if score stmc.handler event.stage matches 8..9 run \
        data modify storage stmc:global currentGame set value 5
        
execute if score stmc.handler event.stage matches 10..11 run \
        data modify storage stmc:global currentGame set value 6
        
execute if score stmc.handler event.stage matches 12..13 run \
        data modify storage stmc:global currentGame set value 7
        
execute if score stmc.handler event.stage matches 14.. run \
        data modify storage stmc:global currentGame set value 8