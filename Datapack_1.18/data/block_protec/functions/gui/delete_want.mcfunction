# as @p
execute if score @s bp_nbExt matches 1.. run function block_protec:message/error/ext_exist
# confirm
execute if score @s bp_nbExt matches 0 run function block_protec:message/are_you_sure