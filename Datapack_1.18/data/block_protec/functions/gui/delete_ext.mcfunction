# as: @p at @e[scores={bp_area=1..},distance=..0.1,limit=1]
execute as @e[scores={bp_area=1..}] if score @s bp_idArea = @e[scores={bp_area=1..},distance=..0.1,limit=1] bp_idArea run function block_protec:placed_bp/remove_ext_2
execute as @e[scores={bp_area=1..},distance=..0.1,limit=1] at @s run function block_protec:global/break
scoreboard players remove @s bp_nbExtArea 1