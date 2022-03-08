advancement revoke @s only block_protec:container_furnace
scoreboard players reset @s bp_open_furnace
execute if entity @s[gamemode=adventure] run function block_protec:protec/container/tp