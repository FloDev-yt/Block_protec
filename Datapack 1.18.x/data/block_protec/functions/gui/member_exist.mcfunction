# as @p
execute if score @s bp_nbMember matches 1.. at @s run function block_protec:gui/member_list
# if not have member
execute if score @s bp_nbMember matches 0 run function block_protec:message/error/not_member