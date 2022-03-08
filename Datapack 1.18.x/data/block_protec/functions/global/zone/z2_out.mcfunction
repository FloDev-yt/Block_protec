scoreboard players set @s bp_idArea2 -2
execute if entity @s[gamemode=adventure,scores={bp_idArea=-1}] run function block_protec:message/zone/free
team leave @s
gamemode survival @s[gamemode=adventure,scores={bp_idArea=-1}]