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

function stmc:games/race/calculate_rankings

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
$scoreboard players display name race.playersCompleted race.sidebar [{"text": "Players Completed: ",color:gold,bold:true},\
        {score:{name:"race.handler",objective:"race.players_completed"},color:gold,bold:true},\
        {text:"/$(players)", "color": "gold", "bold": true}]

# current game
scoreboard players set Disco race.sidebar 13
scoreboard players display name Disco race.sidebar {"text": "Race", "color": "green", "bold": true}

# blank line #2
scoreboard players set § race.sidebar 14

# current game
scoreboard players set .currentGame race.sidebar 15
$scoreboard players display name .currentGame race.sidebar {text:"[ Game $(currentGame)/8 ]",color:gray}