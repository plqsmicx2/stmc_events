# grants a potion item every five kills

execute as @s[scores={joustKillsPotion=5..}] run title @s title ""
execute as @s[scores={joustKillsPotion=5..}] run title @s subtitle {text:"+1 Potion",color:"yellow"}
execute as @s[scores={joustKillsPotion=5..}] run playsound minecraft:block.brewing_stand.brew neutral @s 0 1000 -500 100 1 0
execute as @s[scores={joustKillsPotion=5..}] run give @s potion[potion_contents={potion:"minecraft:water"}] 1
execute as @s[scores={joustKillsPotion=5..}] run scoreboard players reset @s joustKillsPotion