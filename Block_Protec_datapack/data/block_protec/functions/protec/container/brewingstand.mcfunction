advancement revoke @s only block_protec:container_brewingstand
scoreboard players reset @s bp_open_brewingstand
execute if entity @s[gamemode=adventure] run function block_protec:protec/container/tp