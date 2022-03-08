advancement revoke @s only block_protec:container_smoker
scoreboard players reset @s bp_open_smoker
execute if entity @s[gamemode=adventure] run function block_protec:protec/container/tp