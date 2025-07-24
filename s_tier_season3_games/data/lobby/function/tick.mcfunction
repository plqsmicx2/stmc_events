# tick function for whole competition
# serves as the single thread handling the whole event

# before event stuff:

# first things first, let's automatically add our players to their respective teams

# RED RACCOONS
execute as Krisppy unless entity @s[team=] run team join RED_RACCOONS Krisppy
execute as authenticflame unless entity @s[team=] run team join RED_RACCOONS authenticflame
execute as IISona unless entity @s[team=] run team join RED_RACCOONS IISona
execute as ZeroStep2 unless entity @s[team=] run team join RED_RACCOONS ZeroStep2
# ORANGE OTTERS
execute as plqsmic unless entity @s[team=] run team join ORANGE_OTTERS plqsmic
execute as limeae unless entity @s[team=] run team join ORANGE_OTTERS limeae
#execute as GERAD unless entity @s[team=] run team join ORANGE_OTTERS GERAD
execute as Quacken64 unless entity @s[team=] run team join ORANGE_OTTERS Quacken64
# PINK PIKAS
execute as stompppy unless entity @s[team=] run team join PINK_PIKAS stompppy
#execute as KAI unless entity @s[team=] run team join PINK_PIKAS KAI
execute as ThatOneGuy6699 unless entity @s[team=] run team join PINK_PIKAS ThatOneGuy6699
execute as The_Fiend2 unless entity @s[team=] run team join PINK_PIKAS The_Fiend2
# GREEN GOATS
execute as notjynx unless entity @s[team=] run team join GREEN_GOATS notjynx
execute as aimei6432 unless entity @s[team=] run team join GREEN_GOATS aimei6432
execute as GoldShort unless entity @s[team=] run team join GREEN_GOATS GoldShort
execute as MinttRose unless entity @s[team=] run team join GREEN_GOATS MinttRose
# CYAN COUGARS
execute as tastygushers unless entity @s[team=] run team join CYAN_COUGARS tastygushers
execute as seagull_spam unless entity @s[team=] run team join CYAN_COUGARS seagull_spam
execute as Ascellus unless entity @s[team=] run team join CYAN_COUGARS Ascellus
#execute as MADISON unless entity @s[team=] run team join CYAN_COUGARS MADISON
# PURPLE PENGUINS
execute as damien___ unless entity @s[team=] run team join PURPLE_PENGUINS damien___
#execute as TBD unless entity @s[team=] run team join PURPLE_PENGUINS TBD
execute as Epix809 unless entity @s[team=] run team join PURPLE_PENGUINS Epix809
execute as notpanda911 unless entity @s[team=] run team join PURPLE_PENGUINS notpanda911

# now, teleport players to the lobby
#execute if score stmc.handler event.paused matches 1 in lobby:lobby as @a unless entity @s[nbt={Dimension:"lobby:lobby"}] run teleport @s 0 101 0

# and finally, we can get to the thread of the event

# first, we update the stage
# this function doesn't really do anything, but it's still useful for keeping some info
# this function WAS going to do something, but now each subthread's /reset function updates the stage, so it isn't needed
function lobby:stage_update

# and depending on our current stage, we call an update somewhere else in the world
# but we only call that update if the event is unpaused
execute if score stmc.handler event.paused matches 0 if score stmc.handler event.stage matches 0 run function lobby:pre_event/tick
execute if score stmc.handler event.paused matches 0 if score stmc.handler event.stage matches 1 run function solve:tick
execute if score stmc.handler event.paused matches 0 if score stmc.handler event.stage matches 2 run function lobby:between_game
execute if score stmc.handler event.paused matches 0 if score stmc.handler event.stage matches 3 run function survival_games:tick
execute if score stmc.handler event.paused matches 0 if score stmc.handler event.stage matches 4 run function lobby:between_game
execute if score stmc.handler event.paused matches 0 if score stmc.handler event.stage matches 5 run function delve:tick
execute if score stmc.handler event.paused matches 0 if score stmc.handler event.stage matches 6 run function lobby:between_game
execute if score stmc.handler event.paused matches 0 if score stmc.handler event.stage matches 7 run function race:tick
execute if score stmc.handler event.paused matches 0 if score stmc.handler event.stage matches 8 run function lobby:between_game
execute if score stmc.handler event.paused matches 0 if score stmc.handler event.stage matches 9 run function extract:tick
execute if score stmc.handler event.paused matches 0 if score stmc.handler event.stage matches 10 run function lobby:between_game
execute if score stmc.handler event.paused matches 0 if score stmc.handler event.stage matches 11 run function trials:tick
execute if score stmc.handler event.paused matches 0 if score stmc.handler event.stage matches 12 run function lobby:between_game
execute if score stmc.handler event.paused matches 0 if score stmc.handler event.stage matches 13 run function finale:tick
execute if score stmc.handler event.paused matches 0 if score stmc.handler event.stage matches 14 run function lobby:after_event