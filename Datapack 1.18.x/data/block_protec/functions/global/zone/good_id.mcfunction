gamemode survival @s[gamemode=adventure]
execute if score @s bp_idArea matches 1.. run function block_protec:message/zone/welcome
tag @s add bp_goodId