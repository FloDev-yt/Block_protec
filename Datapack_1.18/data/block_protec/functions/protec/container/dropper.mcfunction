advancement revoke @s only block_protec:container_dropper
scoreboard players reset @s bp_open_dropper
execute if entity @s[gamemode=adventure] run function block_protec:protec/container/tp