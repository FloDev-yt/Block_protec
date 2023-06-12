# as @p at @e[type=marker,distance=..0.1,tag=bp_check,limit=1]
execute as @e[type=marker,distance=..0.1,tag=bp_check,limit=1] at @e[scores={bp_area=1..},tag=bp_maybeExt,sort=furthest,limit=1] run function block_protec:placed_bp/ext_create
function block_protec:message/create_ext
scoreboard players add @s bp_nbExtArea 1
execute unless entity @s[scores={bp_idAreaBook=1..}] run scoreboard players set @s bp_timer 16
execute unless entity @s[scores={bp_idAreaBook=1..}] run scoreboard players operation @s bp_idAreaBook = @e[type=marker,distance=..0.1,tag=bp_check,limit=1] bp_idArea
tag @e[type=marker,distance=..0.1,tag=bp_check,limit=1] remove bp_check