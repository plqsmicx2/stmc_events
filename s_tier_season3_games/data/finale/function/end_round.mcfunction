# helper function that ends finale rounds

# update round scoreboards
scoreboard players add finale.handler finale.round.completed 1
scoreboard players set finale.handler finale.round.timer 0

# check for winning team
execute if score finale.RedRaccoons finale.stats.alive matches 1.. run scoreboard players add finale.RedRaccoons finale.round.completed 1
execute if score finale.OrangeOtters finale.stats.alive matches 1.. run scoreboard players add finale.OrangeOtters finale.round.completed 1
execute if score finale.PinkPikas finale.stats.alive matches 1.. run scoreboard players add finale.PinkPikas finale.round.completed 1
execute if score finale.YellowYaks finale.stats.alive matches 1.. run scoreboard players add finale.YellowYaks finale.round.completed 1
execute if score finale.GreenGoats finale.stats.alive matches 1.. run scoreboard players add finale.GreenGoats finale.round.completed 1
execute if score finale.CyanCougars finale.stats.alive matches 1.. run scoreboard players add finale.CyanCougars finale.round.completed 1
execute if score finale.PurplePenguins finale.stats.alive matches 1.. run scoreboard players add finale.PurplePenguins finale.round.completed 1
execute if score finale.BlueBears finale.stats.alive matches 1.. run scoreboard players add finale.BlueBears finale.round.completed 1

# announce winner
execute if score finale.RedRaccoons finale.stats.alive matches 1.. run tellraw @a ["",{text:"Red Raccoons",color:red,bold:true},{text:" win round ",color:white,bold:false},{score:{name:"finale.handler",objective:"finale.round.completed"}},{text:"!",color:white}]
execute if score finale.OrangeOtters finale.stats.alive matches 1.. run tellraw @a ["",{text:"Orange Otters",color:gold,bold:true},{text:" win round ",color:white,bold:false},{score:{name:"finale.handler",objective:"finale.round.completed"}},{text:"!",color:white}]
execute if score finale.PinkPikas finale.stats.alive matches 1.. run tellraw @a ["",{text:"Pink Pikas",color:light_purple,bold:true},{text:" win round ",color:white,bold:false},{score:{name:"finale.handler",objective:"finale.round.completed"}},{text:"!",color:white}]
execute if score finale.YellowYaks finale.stats.alive matches 1.. run tellraw @a ["",{text:"Yellow Yaks",color:yellow,bold:true},{text:" win round ",color:white,bold:false},{score:{name:"finale.handler",objective:"finale.round.completed"}},{text:"!",color:white}]
execute if score finale.GreenGoats finale.stats.alive matches 1.. run tellraw @a ["",{text:"Green Goats",color:dark_green,bold:true},{text:" win round ",color:white,bold:false},{score:{name:"finale.handler",objective:"finale.round.completed"}},{text:"!",color:white}]
execute if score finale.CyanCougars finale.stats.alive matches 1.. run tellraw @a ["",{text:"Cyan Cougars",color:dark_aqua,bold:true},{text:" win round ",color:white,bold:false},{score:{name:"finale.handler",objective:"finale.round.completed"}},{text:"!",color:white}]
execute if score finale.PurplePenguins finale.stats.alive matches 1.. run tellraw @a ["",{text:"Purple Penguins",color:dark_purple,bold:true},{text:" win round ",color:white,bold:false},{score:{name:"finale.handler",objective:"finale.round.completed"}},{text:"!",color:white}]
execute if score finale.BlueBears finale.stats.alive matches 1.. run tellraw @a ["",{text:"Blue Bears",color:blue,bold:true},{text:" win round ",color:white,bold:false},{score:{name:"finale.handler",objective:"finale.round.completed"}},{text:"!",color:white}]

# if any team has two wins, move to next stage
execute if score finale.RedRaccoons finale.round.completed matches 2.. run scoreboard players set finale.handler finale.stage 3
execute if score finale.OrangeOtters finale.round.completed matches 2.. run scoreboard players set finale.handler finale.stage 3
execute if score finale.PinkPikas finale.round.completed matches 2.. run scoreboard players set finale.handler finale.stage 3
execute if score finale.YellowYaks finale.round.completed matches 2.. run scoreboard players set finale.handler finale.stage 3
execute if score finale.GreenGoats finale.round.completed matches 2.. run scoreboard players set finale.handler finale.stage 3
execute if score finale.CyanCougars finale.round.completed matches 2.. run scoreboard players set finale.handler finale.stage 3
execute if score finale.PurplePenguins finale.round.completed matches 2.. run scoreboard players set finale.handler finale.stage 3
execute if score finale.BlueBears finale.round.completed matches 2.. run scoreboard players set finale.handler finale.stage 3

# (failsafe) if three rounds have been played, move to next stage
execute if score finale.handler finale.round.completed matches 3.. run scoreboard players set finale.handler finale.stage 3