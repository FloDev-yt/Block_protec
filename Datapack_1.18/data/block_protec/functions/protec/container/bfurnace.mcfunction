advancement revoke @s only block_protec:container_bfurnace
scoreboard players reset @s bp_open_bfurnace
execute if entity @s[gamemode=adventure] run function block_protec:protec/container/tp