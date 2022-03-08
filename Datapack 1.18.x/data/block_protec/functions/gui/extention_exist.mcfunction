# as @p at @s
execute if score @s bp_nbExt matches 1.. at @s run function block_protec:gui/extention_choice
# if not have member
execute if score @s bp_nbExt matches 0 run function block_protec:message/error/not_ext