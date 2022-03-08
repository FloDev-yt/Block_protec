advancement revoke @s only block_protec:egg
scoreboard players reset @s bp_egg
execute if entity @s[gamemode=adventure] run function block_protec:message/error/used_egg