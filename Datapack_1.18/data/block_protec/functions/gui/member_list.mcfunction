# as @p at @s
tag @s add bp_selectListM
tag @s add bp_priTooFar
execute as @e[scores={bp_area=1..},tag=bp_pri] if score @s bp_idArea = @p[tag=bp_selectListM] bp_idAreaBook at @s run function block_protec:message/book/list_member
# if not found block principal
execute if entity @s[tag=bp_priTooFar] run function block_protec:message/error/pri_too_far
# reset
tag @s remove bp_selectListM