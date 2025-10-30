# tick function for whole competition
# serves as the single thread handling the whole event

# before event stuff:

# first things first, let's automatically add our players to their respective teams

# RED RACCOONS
execute as Quacken_ unless entity @s[team=] run team join RED_RACCOONS Quacken_
execute as SeagullSpams unless entity @s[team=] run team join RED_RACCOONS SeagullSpams
execute as Epix809 unless entity @s[team=] run team join RED_RACCOONS Epix809
execute as .yungGeorge8249 unless entity @s[team=] run team join RED_RACCOONS .yungGeorge8249
# ORANGE OTTERS
execute as Exrry unless entity @s[team=] run team join ORANGE_OTTERS Exrry
execute as xcmimi unless entity @s[team=] run team join ORANGE_OTTERS xcmimi
execute as GoldShort unless entity @s[team=] run team join ORANGE_OTTERS GoldShort
execute as stompppy unless entity @s[team=] run team join ORANGE_OTTERS stompppy
# PINK PIKAS
execute as damien_____ unless entity @s[team=] run team join PINK_PIKAS damien_____
execute as authentic_flame unless entity @s[team=] run team join PINK_PIKAS authentic_flame
execute as SpringsMCJV unless entity @s[team=] run team join PINK_PIKAS SpringsMCJV
execute as Alivemc unless entity @s[team=] run team join PINK_PIKAS Alivemc
# GREEN GOATS
execute as notsxnset unless entity @s[team=] run team join GREEN_GOATS notsxnset
execute as IISona unless entity @s[team=] run team join GREEN_GOATS IISona
execute as dailey_ unless entity @s[team=] run team join GREEN_GOATS dailey_
execute as MadsAlleyway unless entity @s[team=] run team join GREEN_GOATS MadsAlleyway
# CYAN COUGARS
execute as Krisppy_ unless entity @s[team=] run team join CYAN_COUGARS Krisppy_
execute as plqsmic unless entity @s[team=] run team join BLUE_BEARS plqsmic
execute as ZeroStep2 unless entity @s[team=] run team join CYAN_COUGARS ZeroStep2
execute as minttrose unless entity @s[team=] run team join CYAN_COUGARS minttrose
# PURPLE PENGUINS
execute as notjynxx unless entity @s[team=] run team join PURPLE_PENGUINS notjynxx
execute as aimei6432 unless entity @s[team=] run team join PURPLE_PENGUINS aimei6432
execute as limeae unless entity @s[team=] run team join PURPLE_PENGUINS limeae
execute as Navahamsta unless entity @s[team=] run team join PURPLE_PENGUINS Navahamsta

# SPECTATORS
#execute as @a unless entity @s[team=] run team join SPECTATORS @s

# now, teleport players to the lobby
#execute if score stmc.handler event.paused matches 1 in lobby:lobby as @a unless entity @s[nbt={Dimension:"lobby:lobby"}] run teleport @s 0 101 0
#execute as @a if entity @s[nbt={Dimension:"lobby:lobby"}] run gamemode adventure @s

# and finally, we can get to the thread of the event

# first, we update the stage
# this function doesn't really do anything, but it's still useful for keeping some info
# this function WAS going to do something, but now each subthread's /reset function updates the stage, so it isn't needed
function lobby:stage_update

# and depending on our current stage, we call an update somewhere else in the world
# but we only call that update if the event is unpaused
execute if score stmc.handler event.paused matches 0 if score stmc.handler event.stage matches 0 run function lobby:pre_event/tick
execute if score stmc.handler event.paused matches 0 if score stmc.handler event.stage matches 1 run function trials:tick
execute if score stmc.handler event.paused matches 0 if score stmc.handler event.stage matches 2 run function lobby:between_game
execute if score stmc.handler event.paused matches 0 if score stmc.handler event.stage matches 3 run function survival_games:tick
execute if score stmc.handler event.paused matches 0 if score stmc.handler event.stage matches 4 run function lobby:between_game
execute if score stmc.handler event.paused matches 0 if score stmc.handler event.stage matches 5 run function delve:tick
execute if score stmc.handler event.paused matches 0 if score stmc.handler event.stage matches 6 run function lobby:between_game
execute if score stmc.handler event.paused matches 0 if score stmc.handler event.stage matches 7 run function race:tick
execute if score stmc.handler event.paused matches 0 if score stmc.handler event.stage matches 8 run function lobby:between_game
execute if score stmc.handler event.paused matches 0 if score stmc.handler event.stage matches 9 run function extract:tick
execute if score stmc.handler event.paused matches 0 if score stmc.handler event.stage matches 10 run function lobby:between_game
execute if score stmc.handler event.paused matches 0 if score stmc.handler event.stage matches 11 run function solve:tick
execute if score stmc.handler event.paused matches 0 if score stmc.handler event.stage matches 12 run function lobby:between_game
execute if score stmc.handler event.paused matches 0 if score stmc.handler event.stage matches 13 run function finale:tick
execute if score stmc.handler event.paused matches 0 if score stmc.handler event.stage matches 14 run function lobby:after_event