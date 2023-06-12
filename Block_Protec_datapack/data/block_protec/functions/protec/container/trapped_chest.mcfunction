advancement revoke @s only block_protec:container_trapped_chest
scoreboard players reset @s bp_open_trapped_chest
execute if entity @s[gamemode=adventure] run function block_protec:protec/container/tp