# helper function that creates & sets scoreboards

# return to hub if carrot on a stick is used
scoreboard objectives add solve.return used:warped_fungus_on_a_stick

# create text displays
execute in stmc:trials/solve run kill @e[type=text_display]

execute in stmc:trials/solve run summon text_display 22 103 -9 \
        {billboard:"center",Rotation:[0F,0F],text:{"bold":true,"color":"green","shadow_color":-14869215,"text":"Invitational I Rooms"}}

execute in stmc:trials/solve run summon text_display 31 103 0 \
        {billboard:"center",Rotation:[90F,0F],text:{"bold":true,"color":"green","shadow_color":-14869215,"text":"Reloaded I Rooms"}}

execute in stmc:trials/solve run summon text_display 22 103 9 \
        {billboard:"center",Rotation:[180F,0F],text:{"bold":true,"color":"green","shadow_color":-14869215,"text":"Invitational II Rooms"}}

scoreboard objectives remove solve.sidebar