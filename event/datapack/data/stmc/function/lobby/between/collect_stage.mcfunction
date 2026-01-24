# tick function for lobby while in collect stage

# <===== EVERY TICK =====>

# update elapsed secs & mins for sidebar
scoreboard players add lobby.handler lobby.timer.temp 1
execute if score lobby.handler lobby.timer.temp matches 20 run scoreboard players remove stmc.handler event.timer.bgSecs 1
execute if score lobby.handler lobby.timer.temp matches 20 run scoreboard players set lobby.handler lobby.timer.temp 0
execute if score stmc.handler event.timer.bgSecs matches ..-1 run scoreboard players remove stmc.handler event.timer.bgMins 1
execute if score stmc.handler event.timer.bgSecs matches ..-1 run scoreboard players set stmc.handler event.timer.bgSecs 59

# <===== TIME DEPENDENT =====>

# FIRST LOBBY:

#execute if score stmc.handler event.stage matches 0 if score lobby.handler lobby.timer matches 10 run \
        gamemode spectator @a

# announce event start
#execute in stmc:lobby/main if score stmc.handler event.stage matches 0 if score lobby.handler lobby.timer matches 10 run \
        tp @a -40 135 -35 -50 25
$execute if score stmc.handler event.stage matches 0 if score lobby.handler lobby.timer matches 10 run \
        title @a title ["",{text:"$(eventName)",color:green,bold:true}]

# quick event explanation
#execute in stmc:lobby/main if score stmc.handler event.stage matches 0 if score lobby.handler lobby.timer matches 100 run \
        tp @a 11 95 47 -225 15
execute if score stmc.handler event.stage matches 0 if score lobby.handler lobby.timer matches 100 run \
        tellraw @a ["",{text:"",color:green}]
execute if score stmc.handler event.stage matches 0 if score lobby.handler lobby.timer matches 100 run \
        tellraw @a ["",{text:"The event will feature 8 custom-made minigames.",color:green}]
execute if score stmc.handler event.stage matches 0 if score lobby.handler lobby.timer matches 100 run \
        tellraw @a ["",{text:"Each minigame will award points based on a custom scoring system.",color:green}]
execute if score stmc.handler event.stage matches 0 if score lobby.handler lobby.timer matches 100 run \
        tellraw @a ["",{text:"After all 8 minigames conclude, the top 2 teams will compete in one final minigame.",color:green}]
execute if score stmc.handler event.stage matches 0 if score lobby.handler lobby.timer matches 100 run \
        tellraw @a ["",{text:"",color:green}]

#execute in stmc:lobby/main if score stmc.handler event.stage matches 0 if score lobby.handler lobby.timer matches 200 run \
        tp @a -15 98 40 120 0
execute if score stmc.handler event.stage matches 0 if score lobby.handler lobby.timer matches 200 run \
        tellraw @a ["",{text:"",color:green}]
execute if score stmc.handler event.stage matches 0 if score lobby.handler lobby.timer matches 200 run \
        tellraw @a ["",{text:"You will determine the order the minigames are played in by voting.",color:green}]
execute if score stmc.handler event.stage matches 0 if score lobby.handler lobby.timer matches 200 run \
        tellraw @a ["",{text:"Minigames played later will be worth more points.",color:green}]
execute if score stmc.handler event.stage matches 0 if score lobby.handler lobby.timer matches 200 run \
        tellraw @a ["",{text:"",color:green}]
execute if score stmc.handler event.stage matches 0 if score lobby.handler lobby.timer matches 300 run \
        tellraw @a ["",{text:"You will vote using tokens. You can accrue tokens by walking into sunflowers in the lobby.",color:green}]
execute if score stmc.handler event.stage matches 0 if score lobby.handler lobby.timer matches 300 run \
        tellraw @a ["",{text:"You may also invest your tokens with a 25% interest by visiting the banker. These tokens will be returned to you after the next game ends with a 25% return on investment.",color:green}]
execute if score stmc.handler event.stage matches 0 if score lobby.handler lobby.timer matches 300 run \
        tellraw @a ["",{text:"",color:green}]

#execute in stmc:lobby/main if score stmc.handler event.stage matches 0 if score lobby.handler lobby.timer matches 400 run \
        tp @a 0 101 0
#execute in stmc:lobby/main if score stmc.handler event.stage matches 0 if score lobby.handler lobby.timer matches 400 run \
        gamemode adventure @a

# NOT FIRST LOBBY:

# increment players' invested tokens
execute unless score stmc.handler event.stage matches 0 if score lobby.handler lobby.timer matches 2 run \
        scoreboard objectives add .investMultiplier dummy
execute unless score stmc.handler event.stage matches 0 if score lobby.handler lobby.timer matches 2 run \
        scoreboard players set #math .investMultiplier 125
execute as @a unless score stmc.handler event.stage matches 0 if score lobby.handler lobby.timer matches 2 run \
        scoreboard players operation @s event.voting.investedTokens *= #math .investMultiplier
execute as @a unless score stmc.handler event.stage matches 0 if score lobby.handler lobby.timer matches 2 run \
        scoreboard players set #math .investMultiplier 100
execute as @a unless score stmc.handler event.stage matches 0 if score lobby.handler lobby.timer matches 2 run \
        scoreboard players operation @s event.voting.investedTokens /= #math .investMultiplier
execute unless score stmc.handler event.stage matches 0 if score lobby.handler lobby.timer matches 2 run \
        scoreboard objectives remove .investMultiplier

# for 50 ticks, return players' invested tokens to them
execute as @a unless score stmc.handler event.stage matches 0 if score lobby.handler lobby.timer matches 2 run \
        tellraw @s ["",{text:"Returning ",color:green},{score:{name:"@s",objective:"event.voting.investedTokens"},color:dark_green},{text:" invested tokens to you!",color:green}]
execute unless score stmc.handler event.stage matches 0 if score lobby.handler lobby.timer matches 2..51 run \
        function stmc:lobby/between/give_tokens

# if anyone still has invested tokens, remove them
execute unless score stmc.handler event.stage matches 0 if score lobby.handler lobby.timer matches 52 run \
        scoreboard players set @a event.voting.investedTokens 0

# at 10s, announce current player scores
execute unless score stmc.handler event.stage matches 0 if score lobby.handler lobby.timer matches 200 run \
        function stmc:lobby/between/player_announcements
        
# at 20s, announce current team scores
execute unless score stmc.handler event.stage matches 0 if score lobby.handler lobby.timer matches 400 run \
        function stmc:lobby/between/team_announcements with storage stmc:global