advancement revoke @s only block_protec:container_hopper
scoreboard players reset @s bp_open_hopper
execute if entity @s[gamemode=adventure] run function block_protec:protec/container/tp