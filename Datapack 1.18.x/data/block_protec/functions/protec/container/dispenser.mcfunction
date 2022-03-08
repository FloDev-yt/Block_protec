advancement revoke @s only block_protec:container_dispenser
scoreboard players reset @s bp_open_dispenser
execute if entity @s[gamemode=adventure] run function block_protec:protec/container/tp