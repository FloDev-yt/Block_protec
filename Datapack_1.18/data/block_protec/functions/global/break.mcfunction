# as marker at @s
# corner
function block_protec:defined_zones/corner_kill
# principal
execute if entity @s[tag=bp_pri] run setblock ~ ~ ~ minecraft:air
kill @e[type=marker,tag=bp_member,distance=..0.1]
execute positioned ~-0.5 ~-0.976 ~-0.5 run function block_protec:global/kill_tex_rc
function block_protec:defined_zones/drop