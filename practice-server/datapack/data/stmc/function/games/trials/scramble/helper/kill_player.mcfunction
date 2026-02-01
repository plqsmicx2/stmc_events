# helper function that kills/resets players

# teleport player to spawn
execute in stmc:trials/scramble run tp @s 0 102 0

# play sound effect
execute at @s run playsound entity.player.death player @s ~ ~ ~ 1 1

effect clear @s
clear @s

# announce death
tellraw @a[team=dim.tr.scramble] ["",{text:"💀 ",color:red},\
        {selector:"@s",color:aqua,bold:true},{text:" died!",color:red}]

# track rounds completed (and update records if applicable)
scoreboard players operation @s scramble.roundsCompleted = scramble.lobby1 scramble.roundsCompleted
scoreboard objectives add .record dummy
execute store result score scramble.handler .record run data get storage scramble:data record.rounds
execute if score @s scramble.roundsCompleted > scramble.handler .record as @s run function stmc:games/trials/scramble/helper/update_record
scoreboard objectives remove .record

# reset scoreboards
scoreboard players set @s scramble.alive 0
scoreboard players set @s scramble.roundsCompleted 0