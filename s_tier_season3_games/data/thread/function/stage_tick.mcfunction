# function to determine which subthread to run
# all even stages run a lobby thread
# all odd stages run a game thread

# <===== STAGE ZERO =====>
# lobby stage

execute if score stmc.handler event.stage matches 0 run function lobby:between/tick

# <===== STAGE ONE =====>
# game stage

execute if score stmc.handler event.stage matches 1 if score stmc.handler stats.game1 matches 0 run function race:tick
execute if score stmc.handler event.stage matches 1 if score stmc.handler stats.game1 matches 1 run function solve:tick
execute if score stmc.handler event.stage matches 1 if score stmc.handler stats.game1 matches 2 run function trials:tick
execute if score stmc.handler event.stage matches 1 if score stmc.handler stats.game1 matches 3 run function collect:tick
execute if score stmc.handler event.stage matches 1 if score stmc.handler stats.game1 matches 4 run function mine:tick
execute if score stmc.handler event.stage matches 1 if score stmc.handler stats.game1 matches 5 run function extract:tick
execute if score stmc.handler event.stage matches 1 if score stmc.handler stats.game1 matches 6 run function blitz:tick
execute if score stmc.handler event.stage matches 1 if score stmc.handler stats.game1 matches 7 run function survival_games:tick

# <===== STAGE TWO =====>
# lobby stage

execute if score stmc.handler event.stage matches 2 run function lobby:between/tick

# <===== STAGE THREE =====>
# game stage

execute if score stmc.handler event.stage matches 3 if score stmc.handler stats.game2 matches 0 run function race:tick
execute if score stmc.handler event.stage matches 3 if score stmc.handler stats.game2 matches 1 run function solve:tick
execute if score stmc.handler event.stage matches 3 if score stmc.handler stats.game2 matches 2 run function trials:tick
execute if score stmc.handler event.stage matches 3 if score stmc.handler stats.game2 matches 3 run function collect:tick
execute if score stmc.handler event.stage matches 3 if score stmc.handler stats.game2 matches 4 run function mine:tick
execute if score stmc.handler event.stage matches 3 if score stmc.handler stats.game2 matches 5 run function extract:tick
execute if score stmc.handler event.stage matches 3 if score stmc.handler stats.game2 matches 6 run function blitz:tick
execute if score stmc.handler event.stage matches 3 if score stmc.handler stats.game2 matches 7 run function survival_games:tick

# <===== STAGE FOUR =====>
# lobby stage

execute if score stmc.handler event.stage matches 4 run function lobby:between/tick

# <===== STAGE FIVE =====>
# game stage

execute if score stmc.handler event.stage matches 5 if score stmc.handler stats.game3 matches 0 run function race:tick
execute if score stmc.handler event.stage matches 5 if score stmc.handler stats.game3 matches 1 run function solve:tick
execute if score stmc.handler event.stage matches 5 if score stmc.handler stats.game3 matches 2 run function trials:tick
execute if score stmc.handler event.stage matches 5 if score stmc.handler stats.game3 matches 3 run function collect:tick
execute if score stmc.handler event.stage matches 5 if score stmc.handler stats.game3 matches 4 run function mine:tick
execute if score stmc.handler event.stage matches 5 if score stmc.handler stats.game3 matches 5 run function extract:tick
execute if score stmc.handler event.stage matches 5 if score stmc.handler stats.game3 matches 6 run function blitz:tick
execute if score stmc.handler event.stage matches 5 if score stmc.handler stats.game3 matches 7 run function survival_games:tick

# <===== STAGE SIX =====>
# lobby stage

execute if score stmc.handler event.stage matches 6 run function lobby:between/tick

# <===== STAGE SEVEN =====>
# game stage

execute if score stmc.handler event.stage matches 7 if score stmc.handler stats.game4 matches 0 run function race:tick
execute if score stmc.handler event.stage matches 7 if score stmc.handler stats.game4 matches 1 run function solve:tick
execute if score stmc.handler event.stage matches 7 if score stmc.handler stats.game4 matches 2 run function trials:tick
execute if score stmc.handler event.stage matches 7 if score stmc.handler stats.game4 matches 3 run function collect:tick
execute if score stmc.handler event.stage matches 7 if score stmc.handler stats.game4 matches 4 run function mine:tick
execute if score stmc.handler event.stage matches 7 if score stmc.handler stats.game4 matches 5 run function extract:tick
execute if score stmc.handler event.stage matches 7 if score stmc.handler stats.game4 matches 6 run function blitz:tick
execute if score stmc.handler event.stage matches 7 if score stmc.handler stats.game4 matches 7 run function survival_games:tick

# <===== STAGE EIGHT =====>
# lobby stage

execute if score stmc.handler event.stage matches 8 run function lobby:between/tick

# <===== STAGE NINE =====>
# game stage

execute if score stmc.handler event.stage matches 9 if score stmc.handler stats.game5 matches 0 run function race:tick
execute if score stmc.handler event.stage matches 9 if score stmc.handler stats.game5 matches 1 run function solve:tick
execute if score stmc.handler event.stage matches 9 if score stmc.handler stats.game5 matches 2 run function trials:tick
execute if score stmc.handler event.stage matches 9 if score stmc.handler stats.game5 matches 3 run function collect:tick
execute if score stmc.handler event.stage matches 9 if score stmc.handler stats.game5 matches 4 run function mine:tick
execute if score stmc.handler event.stage matches 9 if score stmc.handler stats.game5 matches 5 run function extract:tick
execute if score stmc.handler event.stage matches 9 if score stmc.handler stats.game5 matches 6 run function blitz:tick
execute if score stmc.handler event.stage matches 9 if score stmc.handler stats.game5 matches 7 run function survival_games:tick

# <===== STAGE TEN =====>
# lobby stage

execute if score stmc.handler event.stage matches 10 run function lobby:between/tick

# <===== STAGE ELEVEN =====>
# game stage

execute if score stmc.handler event.stage matches 11 if score stmc.handler stats.game6 matches 0 run function race:tick
execute if score stmc.handler event.stage matches 11 if score stmc.handler stats.game6 matches 1 run function solve:tick
execute if score stmc.handler event.stage matches 11 if score stmc.handler stats.game6 matches 2 run function trials:tick
execute if score stmc.handler event.stage matches 11 if score stmc.handler stats.game6 matches 3 run function collect:tick
execute if score stmc.handler event.stage matches 11 if score stmc.handler stats.game6 matches 4 run function mine:tick
execute if score stmc.handler event.stage matches 11 if score stmc.handler stats.game6 matches 5 run function extract:tick
execute if score stmc.handler event.stage matches 11 if score stmc.handler stats.game6 matches 6 run function blitz:tick
execute if score stmc.handler event.stage matches 11 if score stmc.handler stats.game6 matches 7 run function survival_games:tick

# <===== STAGE TWELVE =====>
# lobby stage

execute if score stmc.handler event.stage matches 12 run function lobby:between/tick

# <===== STAGE THIRTEEN =====>
# game stage

execute if score stmc.handler event.stage matches 13 if score stmc.handler stats.game7 matches 0 run function race:tick
execute if score stmc.handler event.stage matches 13 if score stmc.handler stats.game7 matches 1 run function solve:tick
execute if score stmc.handler event.stage matches 13 if score stmc.handler stats.game7 matches 2 run function trials:tick
execute if score stmc.handler event.stage matches 13 if score stmc.handler stats.game7 matches 3 run function collect:tick
execute if score stmc.handler event.stage matches 13 if score stmc.handler stats.game7 matches 4 run function mine:tick
execute if score stmc.handler event.stage matches 13 if score stmc.handler stats.game7 matches 5 run function extract:tick
execute if score stmc.handler event.stage matches 13 if score stmc.handler stats.game7 matches 6 run function blitz:tick
execute if score stmc.handler event.stage matches 13 if score stmc.handler stats.game7 matches 7 run function survival_games:tick

# <===== STAGE FOURTEEN =====>
# lobby stage

execute if score stmc.handler event.stage matches 14 run function lobby:between/tick

# <===== STAGE FIFTEEN =====>
# game stage

execute if score stmc.handler event.stage matches 15 if score stmc.handler stats.game8 matches 0 run function race:tick
execute if score stmc.handler event.stage matches 15 if score stmc.handler stats.game8 matches 1 run function solve:tick
execute if score stmc.handler event.stage matches 15 if score stmc.handler stats.game8 matches 2 run function trials:tick
execute if score stmc.handler event.stage matches 15 if score stmc.handler stats.game8 matches 3 run function collect:tick
execute if score stmc.handler event.stage matches 15 if score stmc.handler stats.game8 matches 4 run function mine:tick
execute if score stmc.handler event.stage matches 15 if score stmc.handler stats.game8 matches 5 run function extract:tick
execute if score stmc.handler event.stage matches 15 if score stmc.handler stats.game8 matches 6 run function blitz:tick
execute if score stmc.handler event.stage matches 15 if score stmc.handler stats.game8 matches 7 run function survival_games:tick

# <===== STAGE SIXTEEN =====>
# lobby stage

execute if score stmc.handler event.stage matches 16 run function lobby:final/tick

# <===== STAGE SEVENTEEN =====>
# finale stage

execute if score stmc.handler event.stage matches 16 run function finale:tick

# <===== STAGE EIGHTEEN =====>
# lobby stage

execute if score stmc.handler event.stage matches 14 run function lobby:post/tick
