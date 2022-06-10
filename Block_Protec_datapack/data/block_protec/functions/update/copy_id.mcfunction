summon marker ~ ~ ~ {Tags:["bp_member","gb_newId"]}
scoreboard players operation @e[type=marker,tag=gb_newId,limit=1] g_id = @s g_id
data modify entity @e[type=marker,tag=gb_newId,limit=1] CustomName set from entity @s CustomName
tag @e[type=marker,tag=gb_newId,limit=1] remove gb_newId