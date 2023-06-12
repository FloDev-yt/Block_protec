# add
execute positioned ~-18 ~-23 ~-18 if entity @e[scores={bp_area=5},dx=36,dy=36,dz=36,limit=1] run tag @s add bp_protecBorder
execute positioned ~-28 ~-400 ~-28 if entity @e[scores={bp_area=15},dx=56,dy=414,dz=56,limit=1] run tag @s add bp_protecBorder
execute positioned ~-38 ~-400 ~-38 if entity @e[scores={bp_area=25},dx=76,dy=414,dz=76,limit=1] run tag @s add bp_protecBorder
execute positioned ~-48 ~-400 ~-48 if entity @e[scores={bp_area=35},dx=96,dy=414,dz=96,limit=1] run tag @s add bp_protecBorder
execute positioned ~-63 ~-400 ~-63 if entity @e[scores={bp_area=50},dx=126,dy=414,dz=126,limit=1] run tag @s add bp_protecBorder
# remove
execute positioned ~-13 ~-18 ~-13 if entity @e[scores={bp_area=5},dx=26,dy=26,dz=26,limit=1] run tag @s remove bp_protecBorder
execute positioned ~-23 ~-400 ~-23 if entity @e[scores={bp_area=15},dx=46,dy=409,dz=46,limit=1] run tag @s remove bp_protecBorder
execute positioned ~-33 ~-400 ~-33 if entity @e[scores={bp_area=25},dx=66,dy=409,dz=66,limit=1] run tag @s remove bp_protecBorder
execute positioned ~-43 ~-400 ~-43 if entity @e[scores={bp_area=35},dx=86,dy=409,dz=86,limit=1] run tag @s remove bp_protecBorder
execute positioned ~-18 ~-400 ~-18 if entity @e[scores={bp_area=50},dx=116,dy=409,dz=116,limit=1] run tag @s remove bp_protecBorder
execute if entity @s[tag=bp_protecBorder] run function block_protec:protec/kill_entity
tag @s remove bp_pistonNew