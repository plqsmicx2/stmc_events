# automatically add our players to their respective teams

# RED RACCOONS
#execute as Quacken_ unless entity @s[team=] run team join RED_RACCOONS Quacken_
#execute as SeagullSpams unless entity @s[team=] run team join RED_RACCOONS SeagullSpams
#execute as Epix809 unless entity @s[team=] run team join RED_RACCOONS Epix809
#execute as .yungGeorge8249 unless entity @s[team=] run team join RED_RACCOONS .yungGeorge8249
# ORANGE OTTERS
execute as Limeae unless entity @s[team=] run team join ORANGE_OTTERS Limeae
execute as orynjuus unless entity @s[team=] run team join ORANGE_OTTERS orynjuus
execute as MinttRose unless entity @s[team=] run team join ORANGE_OTTERS MinttRose
execute as Gioboiiii unless entity @s[team=] run team join ORANGE_OTTERS Gioboiiii
# PINK PIKAS
#execute as damien_____ unless entity @s[team=] run team join PINK_PIKAS damien_____
#execute as authentic_flame unless entity @s[team=] run team join PINK_PIKAS authentic_flame
#execute as SpringsMCJV unless entity @s[team=] run team join PINK_PIKAS SpringsMCJV
#execute as Alivemc unless entity @s[team=] run team join PINK_PIKAS Alivemc
# YELLOW YAKS
execute as Krisppy_ unless entity @s[team=] run team join YELLOW_YAKS Krisppy_
execute as kingjoey367 unless entity @s[team=] run team join YELLOW_YAKS kingjoey367
execute as Icevielbe unless entity @s[team=] run team join YELLOW_YAKS Icevielbe
execute as kale15156686 unless entity @s[team=] run team join YELLOW_YAKS kale15156686
# GREEN GOATS
execute as t3mprano unless entity @s[team=] run team join GREEN_GOATS t3mprano
execute as SenkuXsummers unless entity @s[team=] run team join GREEN_GOATS SenkuXsummers
execute as stompppy unless entity @s[team=] run team join GREEN_GOATS stompppy
#execute as GOFYGAMER unless entity @s[team=] run team join GREEN_GOATS ..
# CYAN COUGARS
execute as notsxnset unless entity @s[team=] run team join CYAN_COUGARS notsxnset
execute as Exrry unless entity @s[team=] run team join CYAN_COUGARS Exrry
execute as SpringsMCJV unless entity @s[team=] run team join CYAN_COUGARS SpringsMCJV
execute as NotPanda911 unless entity @s[team=] run team join CYAN_COUGARS NotPanda911
# PURPLE PENGUINS
execute as damien_____ unless entity @s[team=] run team join PURPLE_PENGUINS damien_____
execute as Ocean_Titan unless entity @s[team=] run team join PURPLE_PENGUINS Ocean_Titan
#execute as TBD unless entity @s[team=] run team join PURPLE_PENGUINS ..
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
