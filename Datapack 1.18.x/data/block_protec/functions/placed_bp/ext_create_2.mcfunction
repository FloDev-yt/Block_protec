# place textur armor_stand and corner
function block_protec:defined_zones/extention
function block_protec:right_click/summon_ext
setblock ~ ~ ~ minecraft:air
tag @s remove bp_pri
tag @s add bp_ext
# remove bp_priTooFar
tag @p[tag=bp_priTooFar] remove bp_priTooFar