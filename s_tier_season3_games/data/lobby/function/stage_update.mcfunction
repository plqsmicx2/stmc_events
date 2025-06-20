# does basically nothing, but the key is useful

# KEY:
# 0- pre-event: event is starting (unpaused), but there is a 45 second countdown to when the next stage begins
# 1- voting #1: first instance of the function "voting", which lasts 1 minute in total & includes 10 seconds of announcements, 30 seconds of fake voting, and 20 seconds of announcements & teleports
# 2- game #1: the first game to be played; games handle everything in their own thread & will just be killed once the appropriate stage is reached; no need to adjust its stage afterwards
# 3- delay #1: a 45 second delay between the conclusion of the first game & the next voting stage
# 4- voting #2: tick2 will be called
# 5- game #2: the second game to be played
# 6- delay #2
# 7- voting #3: tick3 will be called
# 8- game #3: the 3rd game to be played
# 9- delay #3
# 10- voting #4: tick4 will be called
# 11- game #4: the 4th game to be played
# 12- delay #4
# 13- voting #5: tick5 will be called
# 14- game #5: the 5th game to be played
# 15- delay #5
# 16- voting #6: tick6 will be called; this one's unique since there's only one game left, so it's shorter by having no fake voting stage
# 17- game #6: the 6th game played; this one's also unique in that its post-announcements & reset stage include finale announcements & teleport
# 18- finale: the end of the event; again is handled by its own thread that includes a 1 minute announcement period, the three gameplay rounds, & a short announcement round after
# 19- post-event: announces the winners on a stage then lets everyone free roam the lobby again