scoreboard players set @s bp_idArea2 0
execute if entity @s[gamemode=survival] run function block_protec:message/zone/protec
team join bp_safeZone @s 
execute if entity @s[gamemode=survival] run gamemode adventure @s