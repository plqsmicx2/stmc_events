# set player team by dimension (to ensure the correct sidebar is always displayed)
execute as @a run team leave @s
execute as @a[nbt={Dimension:"stmc:lobby/main"}] run team join dim.lobby
execute as @a[nbt={Dimension:"stmc:race/daveys_divide"}] run team join dim.race
execute as @a[nbt={Dimension:"stmc:race/daveys_descent"}] run team join dim.race
execute as @a[nbt={Dimension:"stmc:extract/main"}] run team join dim.extract
execute as @a[nbt={Dimension:"stmc:trials/lobby"}] run team join dim.trials
execute as @a[nbt={Dimension:"stmc:trials/scramble"}] run team join dim.tr.scramble
execute as @a[nbt={Dimension:"stmc:trials/replicate"}] run team join dim.tr.replicate
execute as @a[nbt={Dimension:"stmc:trials/spleef"}] run team join dim.tr.spleef
execute as @a[nbt={Dimension:"stmc:trials/towers"}] run team join dim.tr.towers
execute as @a[nbt={Dimension:"stmc:trials/solve"}] run team join dim.tr.solve
execute as @a[nbt={Dimension:"stmc:joust/main"}] run team join dim.joust
execute as @a[nbt={Dimension:"stmc:mystery/mansion"}] run team join dim.mystery
execute as @a[nbt={Dimension:"stmc:sprint/reloaded2"}] run team join dim.sprint
execute as @a[nbt={Dimension:"stmc:arena/main"}] run team join dim.arena
execute as @a[nbt={Dimension:"stmc:arena/lobby"}] run team join dim.arena
execute as @a[nbt={Dimension:"stmc:brawl/manor"}] run team join dim.brawl
execute as @a[nbt={Dimension:"stmc:brawl/antique_town"}] run team join dim.brawl
execute as @a[nbt={Dimension:"stmc:brawl/lobby"}] run team join dim.brawl

# update each dimension's tick
function stmc:lobby/tick
function stmc:games/race/tick
function stmc:games/extract/tick
function stmc:games/trials/tick
function stmc:games/sprint/tick
function stmc:games/arena/tick
function stmc:games/mystery/tick
function stmc:games/brawl/tick
function stmc:games/joust/tick