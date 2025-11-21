# set player team by dimension (to ensure the correct sidebar is always displayed)
execute as @a[nbt={Dimension:"lobby:lobby"}] run team join dim.lobby
execute as @a[nbt={Dimension:"race:race"}] run team join dim.race
execute as @a[nbt={Dimension:"extract:extract"}] run team join dim.extract
execute as @a[nbt={Dimension:"trials:lobby"}] run team join dim.trials
execute as @a[nbt={Dimension:"trials:scramble"}] run team join dim.tr.scramble
execute as @a[nbt={Dimension:"trials:replicate"}] run team join dim.tr.replicate
execute as @a[nbt={Dimension:"trials:spleef"}] run team join dim.tr.spleef
execute as @a[nbt={Dimension:"trials:ascend"}] run team join dim.tr.ascend

# update each dimension's tick
function lobby:tick
function race:tick
function extract:tick
function trials:tick