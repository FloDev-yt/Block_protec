# remove previous texture
execute if entity @s[tag=bp_pri] positioned ~-0.5 ~-0.8817 ~-0.5 run function block_protec:global/kill_tex_rc
execute if entity @s[scores={bp_area=5}] run function block_protec:defined_zones/level_1/extention
execute if entity @s[scores={bp_area=15}] run function block_protec:defined_zones/level_2/extention
execute if entity @s[scores={bp_area=25}] run function block_protec:defined_zones/level_3/extention
execute if entity @s[scores={bp_area=35}] run function block_protec:defined_zones/level_4/extention
execute if entity @s[scores={bp_area=50}] run function block_protec:defined_zones/level_5/extention