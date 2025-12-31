# helper function that stores the current game based on the event stage

execute unless score stmc.handler event.stage matches 1.. run \
        data modify storage stmc:global currentGame set value 0

execute if score stmc.handler event.stage matches 1..2 run \
        data modify storage stmc:global currentGame set value 1
        
execute if score stmc.handler event.stage matches 3..4 run \
        data modify storage stmc:global currentGame set value 2
        
execute if score stmc.handler event.stage matches 5..6 run \
        data modify storage stmc:global currentGame set value 3
        
execute if score stmc.handler event.stage matches 7..8 run \
        data modify storage stmc:global currentGame set value 4
        
execute if score stmc.handler event.stage matches 9..10 run \
        data modify storage stmc:global currentGame set value 5
        
execute if score stmc.handler event.stage matches 11..12 run \
        data modify storage stmc:global currentGame set value 6
        
execute if score stmc.handler event.stage matches 13..14 run \
        data modify storage stmc:global currentGame set value 7
        
execute if score stmc.handler event.stage matches 15.. run \
        data modify storage stmc:global currentGame set value 8