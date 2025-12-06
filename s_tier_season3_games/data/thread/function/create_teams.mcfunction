# creates & sets some team values

# Red Raccoons
team add RED_RACCOONS
$team modify RED_RACCOONS displayName {"text": "$(redName)", "color": "red"}
team modify RED_RACCOONS color red
team modify RED_RACCOONS prefix {"text": "\ua000", "font": "team_logos:red_raccoons"}

# Orange Otters
team add ORANGE_OTTERS
$team modify ORANGE_OTTERS displayName {"text": "$(orangeName)", "color": "gold"}
team modify ORANGE_OTTERS color gold
team modify ORANGE_OTTERS prefix {"text": "\ua000", "font": "team_logos:orange_otters"}

# Pink Pikas
team add PINK_PIKAS
$team modify PINK_PIKAS displayName {"text": "$(pinkName)", "color": "light_purple"}
team modify PINK_PIKAS color light_purple
team modify PINK_PIKAS prefix {"text": "\ua000", "font": "team_logos:pink_pikas"}

# Yellow Yaks
team add YELLOW_YAKS
$team modify YELLOW_YAKS displayName {"text": "$(yellowName)", "color": "yellow"}
team modify YELLOW_YAKS color yellow
team modify YELLOW_YAKS prefix {"text": "\ua000", "font": "team_logos:yellow_yaks"}

# Green Goats
team add GREEN_GOATS
$team modify GREEN_GOATS displayName {"text": "$(greenName)", "color": "dark_green"}
team modify GREEN_GOATS color dark_green
team modify GREEN_GOATS prefix {"text": "\ua000", "font": "team_logos:green_goats"}

# Cyan Cougars
team add CYAN_COUGARS
$team modify CYAN_COUGARS displayName {"text": "$(cyanName)", "color": "dark_aqua"}
team modify CYAN_COUGARS color dark_aqua
team modify CYAN_COUGARS prefix {"text": "\ua000", "font": "team_logos:cyan_cougars"}

# Purple Penguins
team add PURPLE_PENGUINS
$team modify PURPLE_PENGUINS displayName {"text": "$(purpleName)", "color": "dark_purple"}
team modify PURPLE_PENGUINS color dark_purple
team modify PURPLE_PENGUINS prefix {"text": "\ua000", "font": "team_logos:purple_penguins"}

# Blue Bears
team add BLUE_BEARS
$team modify BLUE_BEARS displayName {"text": "$(blueName)", "color": "blue"}
team modify BLUE_BEARS color blue
team modify BLUE_BEARS prefix {"text": "\ua000", "font": "team_logos:blue_bears"}

# Spectators
team add SPECTATORS {"text": "Spectators", "color": "gray"}
team modify SPECTATORS color gray

# prevent killing teammates
team modify RED_RACCOONS friendlyFire false
team modify ORANGE_OTTERS friendlyFire false
team modify PINK_PIKAS friendlyFire false
team modify YELLOW_YAKS friendlyFire false
team modify GREEN_GOATS friendlyFire false
team modify CYAN_COUGARS friendlyFire false
team modify PURPLE_PENGUINS friendlyFire false
team modify BLUE_BEARS friendlyFire false
team modify SPECTATORS friendlyFire false
