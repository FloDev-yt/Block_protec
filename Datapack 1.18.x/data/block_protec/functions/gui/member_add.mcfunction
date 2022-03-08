#Add new member
tag @s add bp_addMembre
execute unless entity @a[tag=!bp_addMembre] run function block_protec:message/error/not_connect
# is ok
execute if entity @s[tag=bp_addMembre] run function block_protec:message/book/list_players