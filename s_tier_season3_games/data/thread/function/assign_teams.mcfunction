# automatically add our players to their respective teams

# RED RACCOONS
#execute as Quacken_ unless entity @s[team=] run team join RED_RACCOONS Quacken_
#execute as SeagullSpams unless entity @s[team=] run team join RED_RACCOONS SeagullSpams
#execute as Epix809 unless entity @s[team=] run team join RED_RACCOONS Epix809
#execute as .yungGeorge8249 unless entity @s[team=] run team join RED_RACCOONS .yungGeorge8249
# ORANGE OTTERS
execute as Limeae unless entity @s[team=] run team join ORANGE_OTTERS Limeae
execute as Quacken_ unless entity @s[team=] run team join ORANGE_OTTERS Quacken_
execute as MinttRose unless entity @s[team=] run team join ORANGE_OTTERS MinttRose
execute as Gioboiiii unless entity @s[team=] run team join ORANGE_OTTERS Gioboiiii
# PINK PIKAS
#execute as damien_____ unless entity @s[team=] run team join PINK_PIKAS damien_____
#execute as authentic_flame unless entity @s[team=] run team join PINK_PIKAS authentic_flame
#execute as SpringsMCJV unless entity @s[team=] run team join PINK_PIKAS SpringsMCJV
#execute as Alivemc unless entity @s[team=] run team join PINK_PIKAS Alivemc
# YELLOW YAKS
execute as Krisppy_ unless entity @s[team=] run team join YELLOW_YAKS Krisppy_
execute as NitroSlash unless entity @s[team=] run team join YELLOW_YAKS NitroSlash
execute as Icevielbe unless entity @s[team=] run team join YELLOW_YAKS Icevielbe
execute as nottkkale unless entity @s[team=] run team join YELLOW_YAKS nottkkale
# GREEN GOATS
execute as t3mprano unless entity @s[team=] run team join GREEN_GOATS t3mprano
execute as SenkuXsummers unless entity @s[team=] run team join GREEN_GOATS SenkuXsummers
execute as stompppy unless entity @s[team=] run team join GREEN_GOATS stompppy
execute as AxelPowers unless entity @s[team=] run team join GREEN_GOATS AxelPowers
# CYAN COUGARS
execute as Xflames06 unless entity @s[team=] run team join CYAN_COUGARS Xflames06
execute as Exrry unless entity @s[team=] run team join CYAN_COUGARS Exrry
execute as SpringsMCJV unless entity @s[team=] run team join CYAN_COUGARS SpringsMCJV
execute as .FIamermelts unless entity @s[team=] run team join CYAN_COUGARS .FIamermelts
# PURPLE PENGUINS
execute as damien_____ unless entity @s[team=] run team join PURPLE_PENGUINS damien_____
execute as OceanTitan unless entity @s[team=] run team join PURPLE_PENGUINS OceanTitan
execute as TheVipersBite unless entity @s[team=] run team join PURPLE_PENGUINS TheVipersBite
execute as MadsAlleyway unless entity @s[team=] run team join PURPLE_PENGUINS MadsAlleyway
# BLUE BEARS
execute as plqsmic unless entity @s[team=] run team join BLUE_BEARS plqsmic
execute as IISona unless entity @s[team=] run team join BLUE_BEARS IISona
execute as GoldShort unless entity @s[team=] run team join BLUE_BEARS GoldShort
execute as Loremasonn unless entity @s[team=] run team join BLUE_BEARS Loremasonn

# SPECTATORS
execute as @a if entity @s[team=!RED_RACCOONS] if entity @s[team=!ORANGE_OTTERS] if entity @s[team=!PINK_PIKAS] if entity @s[team=!YELLOW_YAKS] \
        if entity @s[team=!GREEN_GOATS] if entity @s[team=!CYAN_COUGARS] if entity @s[team=!PURPLE_PENGUINS] if entity @s[team=!BLUE_BEARS] \ 
        if entity @s[team=!SPECTATORS] run team join SPECTATORS @s
