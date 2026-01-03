# helper function that runs on any players with tokens to invest
# run as @s

# announce investment
tellraw @s [{text:"Invested ",color:green},{score:{name:"@s",objective:"event.voting.investedTokensTemp"},color:dark_green},\
        {text:" tokens!",color:green}]

# sound effect
execute at @s run playsound block.note_block.pling player @s ~ ~ ~ 1 1.5 1

# increment invested token count
scoreboard players operation @s event.voting.investedTokens += @s event.voting.investedTokensTemp

# reset temporary scoreboard
scoreboard players set @a event.voting.investedTokensTemp 0

# clear invested tokens
clear @a paper[custom_data={invest: 1b}]