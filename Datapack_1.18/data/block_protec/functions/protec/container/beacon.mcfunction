advancement revoke @s only block_protec:container_beacon
scoreboard players reset @s bp_open_beacon
execute if entity @s[gamemode=adventure] run function block_protec:protec/container/tp