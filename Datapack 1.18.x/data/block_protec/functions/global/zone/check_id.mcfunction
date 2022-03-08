# max distanse
execute at @s as @e[scores={bp_area=1..}] if score @s bp_idArea = @p bp_idArea2 at @s as @e[type=marker,scores={g_id=1..},distance=..0.1] if score @s g_id = @p[tag=bp_selectCheckId] g_id as @p[tag=bp_selectCheckId] run function block_protec:global/zone/good_id
# if not ok
team join bp_safeZone @s
gamemode adventure @s[gamemode=survival,tag=!bp_goodId]
execute if entity @s[tag=!bp_goodId,scores={bp_idArea2Save=-2}] run function block_protec:message/zone/protec
# reset
tag @s remove bp_goodId