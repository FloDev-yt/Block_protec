advancement revoke @s only block_protec:potion_s
scoreboard players reset @s bp_splash_p
execute if entity @s[gamemode=adventure] run function block_protec:protec/potion_use