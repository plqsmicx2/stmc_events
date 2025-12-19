# automatically add our players to their respective teams

# RED RACCOONS
execute as stompppy unless entity @s[team=] run team join RED_RACCOONS stompppy
execute as t3mprano unless entity @s[team=] run team join RED_RACCOONS t3mprano
execute as Auustin6371 unless entity @s[team=] run team join RED_RACCOONS Auustin6371
execute as Epix809 unless entity @s[team=] run team join RED_RACCOONS Epix809
# ORANGE OTTERS
execute as plqsmic unless entity @s[team=] run team join ORANGE_OTTERS plqsmic
execute as TheVipersBite unless entity @s[team=] run team join ORANGE_OTTERS TheVipersBite
execute as NitroSlash unless entity @s[team=] run team join ORANGE_OTTERS NitroSlash
execute as Gioboiiii unless entity @s[team=] run team join ORANGE_OTTERS Gioboiiii
# PINK PIKAS
execute as Limeae unless entity @s[team=] run team join PINK_PIKAS Limeae
execute as AxelPowers unless entity @s[team=] run team join PINK_PIKAS AxelPowers
execute as Ktay unless entity @s[team=] run team join PINK_PIKAS Ktay
execute as Loremasonn unless entity @s[team=] run team join PINK_PIKAS Loremasonn
# YELLOW YAKS
execute as GoldShort unless entity @s[team=] run team join YELLOW_YAKS GoldShort
execute as Exrry unless entity @s[team=] run team join YELLOW_YAKS Exrry
execute as KAGMan05 unless entity @s[team=] run team join YELLOW_YAKS KAGMan05
execute as ZeroStep2 unless entity @s[team=] run team join YELLOW_YAKS ZeroStep2
# GREEN GOATS
execute as Krisppy_ unless entity @s[team=] run team join GREEN_GOATS Krisppy_
execute as IISona unless entity @s[team=] run team join GREEN_GOATS IISona
execute as Xflames06 unless entity @s[team=] run team join GREEN_GOATS Xflames06
execute as MinttRose unless entity @s[team=] run team join GREEN_GOATS MinttRose
# CYAN COUGARS
execute as damien_____ unless entity @s[team=] run team join CYAN_COUGARS damien_____
execute as OceanTitan unless entity @s[team=] run team join CYAN_COUGARS OceanTitan
execute as SenkuXSummers unless entity @s[team=] run team join CYAN_COUGARS SenkuXSummers
execute as MadsAlleyway unless entity @s[team=] run team join CYAN_COUGARS MadsAlleyway
# PURPLE PENGUINS
execute as notsxnset unless entity @s[team=] run team join PURPLE_PENGUINS notsxnset
execute as NotPanda911 unless entity @s[team=] run team join PURPLE_PENGUINS NotPanda911
execute as zomby1e unless entity @s[team=] run team join PURPLE_PENGUINS zomby1e
execute as gofygamer18 unless entity @s[team=] run team join PURPLE_PENGUINS gofygamer18
# BLUE BEARS
execute as authentic_flame unless entity @s[team=] run team join BLUE_BEARS authentic_flame
execute as Quacken_ unless entity @s[team=] run team join BLUE_BEARS Quacken_
execute as strchris unless entity @s[team=] run team join BLUE_BEARS strchris
execute as TheMackTurtle unless entity @s[team=] run team join BLUE_BEARS TheMackTurtle

# SPECTATORS
execute as @a if entity @s[team=!RED_RACCOONS] if entity @s[team=!ORANGE_OTTERS] if entity @s[team=!PINK_PIKAS] if entity @s[team=!YELLOW_YAKS] \
        if entity @s[team=!GREEN_GOATS] if entity @s[team=!CYAN_COUGARS] if entity @s[team=!PURPLE_PENGUINS] if entity @s[team=!BLUE_BEARS] \ 
        if entity @s[team=!SPECTATORS] run team join SPECTATORS @s
