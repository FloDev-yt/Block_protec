advancement revoke @s only block_protec:container_shulker_box
scoreboard players reset @s bp_open_shulker_box
execute if entity @s[gamemode=adventure] run function block_protec:protec/container/tp