execute as @p[tag=bp_selectPLu] run function block_protec:global/clear
execute positioned ~-0.5 ~-0.976 ~-0.5 run function block_protec:global/kill_tex_rc
function block_protec:defined_zones/corner_kill
execute if entity @s[scores={bp_area=35..}] run scoreboard players add @s bp_area 5
scoreboard players add @s bp_area 10
execute if entity @s[tag=bp_pri] run function block_protec:defined_zones/principal
execute if entity @s[tag=bp_ext] run function block_protec:defined_zones/extention