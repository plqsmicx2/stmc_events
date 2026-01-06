# player rankings
execute if score lobby.handler lobby.timer matches 200 run \
        tellraw @a [{"text":"Player Rankings:","color":"gold","bold":true}]

execute as @a[scores={stats.points.indiv.rank=1}] if score lobby.handler lobby.timer matches 500 \
        run title @a title [{text:"#1: ",color:gold},{selector:"@s"},{text:" - ",color:gold},{score:{name:"@s",objective:"stats.points.indiv"},color:red},{text:" points",color:gold}]
execute as @a[scores={stats.points.indiv.rank=2}] if score lobby.handler lobby.timer matches 500 \
        run title @a subtitle [{text:"#2: ",color:gold},{selector:"@s"},{text:" - ",color:gold},{score:{name:"@s",objective:"stats.points.indiv"},color:red},{text:" points",color:gold}]

execute if score lobby.handler lobby.timer matches 470 run \
        function stmc:lobby/final/announcements/helper/player {placement:3}
execute if score lobby.handler lobby.timer matches 440 run \
        function stmc:lobby/final/announcements/helper/player {placement:4}
execute if score lobby.handler lobby.timer matches 410 run \
        function stmc:lobby/final/announcements/helper/player {placement:5}
execute if score lobby.handler lobby.timer matches 380 run \
        function stmc:lobby/final/announcements/helper/player {placement:6}
execute if score lobby.handler lobby.timer matches 350 run \
        function stmc:lobby/final/announcements/helper/player {placement:7}
execute if score lobby.handler lobby.timer matches 320 run \
        function stmc:lobby/final/announcements/helper/player {placement:8}
execute if score lobby.handler lobby.timer matches 290 run \
        function stmc:lobby/final/announcements/helper/player {placement:9}
execute if score lobby.handler lobby.timer matches 260 run \
        function stmc:lobby/final/announcements/helper/player {placement:10}

execute if score lobby.handler lobby.timer matches 240 run \
        tellraw @a [{"text":"Top 10:","color":"gold","bold":true}]

execute if score lobby.handler lobby.timer matches 231 run \
        function stmc:lobby/final/announcements/helper/player {placement:11}
execute if score lobby.handler lobby.timer matches 230 run \
        function stmc:lobby/final/announcements/helper/player {placement:12}
execute if score lobby.handler lobby.timer matches 229 run \
        function stmc:lobby/final/announcements/helper/player {placement:13}
execute if score lobby.handler lobby.timer matches 228 run \
        function stmc:lobby/final/announcements/helper/player {placement:14}
execute if score lobby.handler lobby.timer matches 227 run \
        function stmc:lobby/final/announcements/helper/player {placement:15}
execute if score lobby.handler lobby.timer matches 226 run \
        function stmc:lobby/final/announcements/helper/player {placement:16}
execute if score lobby.handler lobby.timer matches 225 run \
        function stmc:lobby/final/announcements/helper/player {placement:17}
execute if score lobby.handler lobby.timer matches 224 run \
        function stmc:lobby/final/announcements/helper/player {placement:18}
execute if score lobby.handler lobby.timer matches 223 run \
        function stmc:lobby/final/announcements/helper/player {placement:19}
execute if score lobby.handler lobby.timer matches 222 run \
        function stmc:lobby/final/announcements/helper/player {placement:20}
execute if score lobby.handler lobby.timer matches 221 run \
        function stmc:lobby/final/announcements/helper/player {placement:21}
execute if score lobby.handler lobby.timer matches 220 run \
        function stmc:lobby/final/announcements/helper/player {placement:22}
execute if score lobby.handler lobby.timer matches 219 run \
        function stmc:lobby/final/announcements/helper/player {placement:23}
execute if score lobby.handler lobby.timer matches 218 run \
        function stmc:lobby/final/announcements/helper/player {placement:24}
execute if score lobby.handler lobby.timer matches 217 run \
        function stmc:lobby/final/announcements/helper/player {placement:25}
execute if score lobby.handler lobby.timer matches 216 run \
        function stmc:lobby/final/announcements/helper/player {placement:26}
execute if score lobby.handler lobby.timer matches 215 run \
        function stmc:lobby/final/announcements/helper/player {placement:27}
execute if score lobby.handler lobby.timer matches 214 run \
        function stmc:lobby/final/announcements/helper/player {placement:28}
execute if score lobby.handler lobby.timer matches 213 run \
        function stmc:lobby/final/announcements/helper/player {placement:29}
execute if score lobby.handler lobby.timer matches 212 run \
        function stmc:lobby/final/announcements/helper/player {placement:30}
execute if score lobby.handler lobby.timer matches 211 run \
        function stmc:lobby/final/announcements/helper/player {placement:31}
execute if score lobby.handler lobby.timer matches 210 run \
        function stmc:lobby/final/announcements/helper/player {placement:32}
