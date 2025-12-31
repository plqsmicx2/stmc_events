# helper function that announces the rank & points of a certain player
# runs with the macro [placement]

$execute as @a if score @s stats.points.indiv.rank matches $(placement) run \
        tellraw @a ["",{text:"#$(placement): ",color:gold},\
        {selector:"@s"},{text:" - ",color:gold},\
        {score:{name:"@s",objective:"stats.points.indiv"},color:red},\
        {text:" points.",color:gold}]