# run sidebar
function stmc:games/trials/solve/utils/sidebar

# give players carrot on a stick to return to hub
execute as @a[team=dim.tr.solve] run item replace entity @s hotbar.8 with warped_fungus_on_a_stick[item_model=compass,custom_name={"bold":true,"color":"dark_aqua","text":"TRIALS HUB","underlined":true}]
execute as @a[team=dim.tr.solve] if score @s solve.return matches 1.. run function stmc:games/trials/teleport
scoreboard players set @a solve.return 0

# return players to center
execute as @a[team=dim.tr.solve] at @s if block ~ ~-1 ~ diamond_block in stmc:trials/solve run \
        function stmc:games/trials/solve/utils/complete