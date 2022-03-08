advancement revoke @s only block_protec:container_barrel
scoreboard players reset @s bp_open_barrel
execute if entity @s[gamemode=adventure] run function block_protec:protec/container/tp