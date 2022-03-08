advancement revoke @s only block_protec:potion_l
scoreboard players reset @s bp_lingering_p
execute if entity @s[gamemode=adventure] run function block_protec:protec/potion_use