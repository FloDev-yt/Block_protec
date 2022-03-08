# as: @p | at: marker,distance=..0.1,tag=bp_check
execute unless score @s bp_maxMainArea matches -1.. if score @s bp_nbMainArea >= .#default bp_maxMainArea run tag @s add bp_errNbPri
execute if score @s bp_maxMainArea matches 0.. if score @s bp_nbMainArea >= @s bp_maxMainArea run tag @s add bp_errNbPri
# if error
execute if entity @s[tag=bp_errNbPri] run function block_protec:message/error/nb_pri
execute if entity @s[tag=bp_errNbPri] as @e[scores={bp_area=1..},distance=..0.1,tag=!bp_ext,limit=1] run function block_protec:defined_zones/drop
# if ok
execute if entity @s[tag=!bp_errNbPri] run function block_protec:placed_bp/pri_ok
# reset
tag @s remove bp_errNbPri
