# load function for sprint

# this function runs whenever beginning the sprint game

# GAME SETTINGS

# scores

# completion values
# defaults: {easy:1,medium:2,hard:3,elytra:2,spear:2}
data modify storage sprint:data easy_completion set value 1
data modify storage sprint:data medium_completion set value 2
data modify storage sprint:data hard_completion set value 3
data modify storage sprint:data elytra_completion set value 2
data modify storage sprint:data spear_completion set value 1

# percent bonus values
# defaults: {easy:1,medium:2,hard:3,elytra:2,spear:2}
data modify storage sprint:data easy_multiplier set value 1
data modify storage sprint:data medium_multiplier set value 2
data modify storage sprint:data hard_multiplier set value 3
data modify storage sprint:data elytra_multiplier set value 2
data modify storage sprint:data spear_multiplier set value 1

# and wrap it up with some scoreboard stuff

# timers
# .game will store players' time elapsed
scoreboard objectives add sprint.timer.game dummy
scoreboard objectives add sprint.timer.game.mins dummy
scoreboard objectives add sprint.timer.game.secs dummy
scoreboard objectives add sprint.timer.game.tick dummy

# points
# indiv is calculated from the sum of some dummy scoreboards, so we only need one scoreboard here
scoreboard objectives add sprint.points.indiv dummy

# stats
# player-specific
scoreboard objectives add sprint.gameActive dummy

scoreboard objectives add sprint.stats.easyCompletions dummy
scoreboard objectives add sprint.stats.mediumCompletions dummy
scoreboard objectives add sprint.stats.hardCompletions dummy
scoreboard objectives add sprint.stats.elytraCompletions dummy
scoreboard objectives add sprint.stats.spearCompletions dummy
scoreboard objectives add sprint.stats.currentSection dummy
scoreboard objectives add sprint.stats.currentCheckpoint dummy
scoreboard objectives add sprint.stats.currentDifficulty dummy
scoreboard objectives add sprint.stats.completed dummy

scoreboard objectives add sprint.return minecraft.used:carrot_on_a_stick
scoreboard objectives add sprint.next minecraft.used:warped_fungus_on_a_stick
scoreboard objectives add sprint.back minecraft.used:apple
scoreboard objectives add sprint.dead dummy
scoreboard objectives add sprint.dropper.onGround dummy
scoreboard objectives add sprint.elytra.boost dummy

# reset game-specific scoreboard
scoreboard objectives remove sprint.sidebar