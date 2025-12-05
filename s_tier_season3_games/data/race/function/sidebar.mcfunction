# creates the sidebar for the game

# sidebar looks like this:
# <lime>STMC Open<lime>
# 
# <lime>Race<lime>
# <gold>Players Completed: ##<gold>
# 
# <yellow>Leaders:<yellow>
# <team color>#1 - player<team color>
# <team color>#2 - player<team color>
# <team color>#3 - player<team color>

scoreboard objectives add race.sidebar dummy
$scoreboard objectives modify race.sidebar displayname {"text": "$(eventName)", "color": "green", "bold": true}
scoreboard objectives setdisplay sidebar race.sidebar

# <===== RANK TEAMS =====>

function race:calculate_rankings

# <===== BUILD FROM THE BOTTOM =====>

execute as @a if score @s race.laps_completed matches 4.. run scoreboard players operation @s race.currentPlacement = @s race.completion.rank

scoreboard players set race.first race.sidebar 3
scoreboard players display name race.first race.sidebar [{text:"#1 - ",color:gold}]
execute as @a if score @s race.currentPlacement matches 1 if entity @s[team=RED_RACCOONS] run \
        scoreboard players display name race.first race.sidebar [{text:"#1 - ",color:gold},{selector:"@s",color:red}]
execute as @a if score @s race.currentPlacement matches 1 if entity @s[team=ORANGE_OTTERS] run \
        scoreboard players display name race.first race.sidebar [{text:"#1 - ",color:gold},{selector:"@s",color:gold}]
execute as @a if score @s race.currentPlacement matches 1 if entity @s[team=PINK_PIKAS] run \
        scoreboard players display name race.first race.sidebar [{text:"#1 - ",color:gold},{selector:"@s",color:light_purple}]
execute as @a if score @s race.currentPlacement matches 1 if entity @s[team=YELLOW_YAKS] run \
        scoreboard players display name race.first race.sidebar [{text:"#1 - ",color:gold},{selector:"@s",color:yellow}]
execute as @a if score @s race.currentPlacement matches 1 if entity @s[team=GREEN_GOATS] run \
        scoreboard players display name race.first race.sidebar [{text:"#1 - ",color:gold},{selector:"@s",color:dark_green}]
execute as @a if score @s race.currentPlacement matches 1 if entity @s[team=CYAN_COUGARS] run \
        scoreboard players display name race.first race.sidebar [{text:"#1 - ",color:gold},{selector:"@s",color:dark_aqua}]
execute as @a if score @s race.currentPlacement matches 1 if entity @s[team=PURPLE_PENGUINS] run \
        scoreboard players display name race.first race.sidebar [{text:"#1 - ",color:gold},{selector:"@s",color:dark_purple}]
execute as @a if score @s race.currentPlacement matches 1 if entity @s[team=BLUE_BEARS] run \
        scoreboard players display name race.first race.sidebar [{text:"#1 - ",color:gold},{selector:"@s",color:blue}]

scoreboard players set race.second race.sidebar 2
scoreboard players display name race.second race.sidebar [{text:"#2 - ",color:gold}]
execute as @a if score @s race.currentPlacement matches 2 if entity @s[team=RED_RACCOONS] run \
        scoreboard players display name race.second race.sidebar [{text:"#2 - ",color:gold},{selector:"@s",color:red}]
execute as @a if score @s race.currentPlacement matches 2 if entity @s[team=ORANGE_OTTERS] run \
        scoreboard players display name race.second race.sidebar [{text:"#2 - ",color:gold},{selector:"@s",color:gold}]
execute as @a if score @s race.currentPlacement matches 2 if entity @s[team=PINK_PIKAS] run \
        scoreboard players display name race.second race.sidebar [{text:"#2 - ",color:gold},{selector:"@s",color:light_purple}]
execute as @a if score @s race.currentPlacement matches 2 if entity @s[team=YELLOW_YAKS] run \
        scoreboard players display name race.second race.sidebar [{text:"#2 - ",color:gold},{selector:"@s",color:yellow}]
execute as @a if score @s race.currentPlacement matches 2 if entity @s[team=GREEN_GOATS] run \
        scoreboard players display name race.second race.sidebar [{text:"#2 - ",color:gold},{selector:"@s",color:dark_green}]
execute as @a if score @s race.currentPlacement matches 2 if entity @s[team=CYAN_COUGARS] run \
        scoreboard players display name race.second race.sidebar [{text:"#2 - ",color:gold},{selector:"@s",color:dark_aqua}]
execute as @a if score @s race.currentPlacement matches 2 if entity @s[team=PURPLE_PENGUINS] run \
        scoreboard players display name race.second race.sidebar [{text:"#2 - ",color:gold},{selector:"@s",color:dark_purple}]
execute as @a if score @s race.currentPlacement matches 2 if entity @s[team=BLUE_BEARS] run \
        scoreboard players display name race.second race.sidebar [{text:"#2 - ",color:gold},{selector:"@s",color:blue}]

scoreboard players set race.third race.sidebar 1
scoreboard players display name race.third race.sidebar [{text:"#3 - ",color:gold}]
execute as @a if score @s race.currentPlacement matches 3 if entity @s[team=RED_RACCOONS] run \
        scoreboard players display name race.third race.sidebar [{text:"#3 - ",color:gold},{selector:"@s",color:red}]
execute as @a if score @s race.currentPlacement matches 3 if entity @s[team=ORANGE_OTTERS] run \
        scoreboard players display name race.third race.sidebar [{text:"#3 - ",color:gold},{selector:"@s",color:gold}]
execute as @a if score @s race.currentPlacement matches 3 if entity @s[team=PINK_PIKAS] run \
        scoreboard players display name race.third race.sidebar [{text:"#3 - ",color:gold},{selector:"@s",color:light_purple}]
execute as @a if score @s race.currentPlacement matches 3 if entity @s[team=YELLOW_YAKS] run \
        scoreboard players display name race.third race.sidebar [{text:"#3 - ",color:gold},{selector:"@s",color:yellow}]
execute as @a if score @s race.currentPlacement matches 3 if entity @s[team=GREEN_GOATS] run \
        scoreboard players display name race.third race.sidebar [{text:"#3 - ",color:gold},{selector:"@s",color:dark_green}]
execute as @a if score @s race.currentPlacement matches 3 if entity @s[team=CYAN_COUGARS] run \
        scoreboard players display name race.third race.sidebar [{text:"#3 - ",color:gold},{selector:"@s",color:dark_aqua}]
execute as @a if score @s race.currentPlacement matches 3 if entity @s[team=PURPLE_PENGUINS] run \
        scoreboard players display name race.third race.sidebar [{text:"#3 - ",color:gold},{selector:"@s",color:dark_purple}]
execute as @a if score @s race.currentPlacement matches 3 if entity @s[team=BLUE_BEARS] run \
        scoreboard players display name race.third race.sidebar [{text:"#3 - ",color:gold},{selector:"@s",color:blue}]

# <==== HEADER INFO =====>

# points header
# no need to override display since it can be done in one line
scoreboard players set §e§lLeaders: race.sidebar 10

# blank line
scoreboard players set §a race.sidebar 11

# round number
scoreboard players set race.playersCompleted race.sidebar 12
execute if score race.handler race.players_completed matches 0 run scoreboard players display name race.playersCompleted race.sidebar {"text": "Players Completed: 0/24", "color": "gold", "bold": true}
execute if score race.handler race.players_completed matches 1 run scoreboard players display name race.playersCompleted race.sidebar {"text": "Players Completed: 1/24", "color": "gold", "bold": true}
execute if score race.handler race.players_completed matches 2 run scoreboard players display name race.playersCompleted race.sidebar {"text": "Players Completed: 2/24", "color": "gold", "bold": true}
execute if score race.handler race.players_completed matches 3 run scoreboard players display name race.playersCompleted race.sidebar {"text": "Players Completed: 3/24", "color": "gold", "bold": true}
execute if score race.handler race.players_completed matches 4 run scoreboard players display name race.playersCompleted race.sidebar {"text": "Players Completed: 4/24", "color": "gold", "bold": true}
execute if score race.handler race.players_completed matches 5 run scoreboard players display name race.playersCompleted race.sidebar {"text": "Players Completed: 5/24", "color": "gold", "bold": true}
execute if score race.handler race.players_completed matches 6 run scoreboard players display name race.playersCompleted race.sidebar {"text": "Players Completed: 6/24", "color": "gold", "bold": true}
execute if score race.handler race.players_completed matches 7 run scoreboard players display name race.playersCompleted race.sidebar {"text": "Players Completed: 7/24", "color": "gold", "bold": true}
execute if score race.handler race.players_completed matches 8 run scoreboard players display name race.playersCompleted race.sidebar {"text": "Players Completed: 8/24", "color": "gold", "bold": true}
execute if score race.handler race.players_completed matches 9 run scoreboard players display name race.playersCompleted race.sidebar {"text": "Players Completed: 9/24", "color": "gold", "bold": true}
execute if score race.handler race.players_completed matches 10 run scoreboard players display name race.playersCompleted race.sidebar {"text": "Players Completed: 10/24", "color": "gold", "bold": true}
execute if score race.handler race.players_completed matches 11 run scoreboard players display name race.playersCompleted race.sidebar {"text": "Players Completed: 11/24", "color": "gold", "bold": true}
execute if score race.handler race.players_completed matches 12 run scoreboard players display name race.playersCompleted race.sidebar {"text": "Players Completed: 12/24", "color": "gold", "bold": true}
execute if score race.handler race.players_completed matches 13 run scoreboard players display name race.playersCompleted race.sidebar {"text": "Players Completed: 13/24", "color": "gold", "bold": true}
execute if score race.handler race.players_completed matches 14 run scoreboard players display name race.playersCompleted race.sidebar {"text": "Players Completed: 14/24", "color": "gold", "bold": true}
execute if score race.handler race.players_completed matches 15 run scoreboard players display name race.playersCompleted race.sidebar {"text": "Players Completed: 15/24", "color": "gold", "bold": true}
execute if score race.handler race.players_completed matches 16 run scoreboard players display name race.playersCompleted race.sidebar {"text": "Players Completed: 16/24", "color": "gold", "bold": true}
execute if score race.handler race.players_completed matches 17 run scoreboard players display name race.playersCompleted race.sidebar {"text": "Players Completed: 17/24", "color": "gold", "bold": true}
execute if score race.handler race.players_completed matches 18 run scoreboard players display name race.playersCompleted race.sidebar {"text": "Players Completed: 18/24", "color": "gold", "bold": true}
execute if score race.handler race.players_completed matches 19 run scoreboard players display name race.playersCompleted race.sidebar {"text": "Players Completed: 19/24", "color": "gold", "bold": true}
execute if score race.handler race.players_completed matches 20 run scoreboard players display name race.playersCompleted race.sidebar {"text": "Players Completed: 20/24", "color": "gold", "bold": true}
execute if score race.handler race.players_completed matches 21 run scoreboard players display name race.playersCompleted race.sidebar {"text": "Players Completed: 21/24", "color": "gold", "bold": true}
execute if score race.handler race.players_completed matches 22 run scoreboard players display name race.playersCompleted race.sidebar {"text": "Players Completed: 22/24", "color": "gold", "bold": true}
execute if score race.handler race.players_completed matches 23 run scoreboard players display name race.playersCompleted race.sidebar {"text": "Players Completed: 23/24", "color": "gold", "bold": true}
execute if score race.handler race.players_completed matches 24 run scoreboard players display name race.playersCompleted race.sidebar {"text": "Players Completed: 24/24", "color": "gold", "bold": true}
execute if score race.handler race.players_completed matches 25 run scoreboard players display name race.playersCompleted race.sidebar {"text": "Players Completed: 25/32", "color": "gold", "bold": true}
execute if score race.handler race.players_completed matches 26 run scoreboard players display name race.playersCompleted race.sidebar {"text": "Players Completed: 26/32", "color": "gold", "bold": true}
execute if score race.handler race.players_completed matches 27 run scoreboard players display name race.playersCompleted race.sidebar {"text": "Players Completed: 27/32", "color": "gold", "bold": true}
execute if score race.handler race.players_completed matches 28 run scoreboard players display name race.playersCompleted race.sidebar {"text": "Players Completed: 28/32", "color": "gold", "bold": true}
execute if score race.handler race.players_completed matches 29 run scoreboard players display name race.playersCompleted race.sidebar {"text": "Players Completed: 29/32", "color": "gold", "bold": true}
execute if score race.handler race.players_completed matches 30 run scoreboard players display name race.playersCompleted race.sidebar {"text": "Players Completed: 30/32", "color": "gold", "bold": true}
execute if score race.handler race.players_completed matches 31 run scoreboard players display name race.playersCompleted race.sidebar {"text": "Players Completed: 31/32", "color": "gold", "bold": true}
execute if score race.handler race.players_completed matches 32 run scoreboard players display name race.playersCompleted race.sidebar {"text": "Players Completed: 32/32", "color": "gold", "bold": true}

# current game
scoreboard players set Disco race.sidebar 13
scoreboard players display name Disco race.sidebar {"text": "Race", "color": "green", "bold": true}

# blank line #2
scoreboard players set § race.sidebar 14