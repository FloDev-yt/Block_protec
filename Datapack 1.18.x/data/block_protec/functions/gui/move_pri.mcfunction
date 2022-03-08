tag @s add bp_priTooFar
execute as @e[scores={bp_area=1..},tag=bp_pri] if score @s bp_idArea = @e[scores={bp_area=1..},distance=..0.1,limit=1] bp_idArea at @s run function block_protec:placed_bp/ext_create_2
execute if entity @s[tag=!bp_priTooFar] as @e[scores={bp_area=1..},distance=..0.1,limit=1] run function block_protec:placed_bp/pri_create_2
# if not found block principal
execute if entity @s[tag=bp_priTooFar] run function block_protec:message/error/pri_too_far