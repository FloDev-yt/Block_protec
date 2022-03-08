scoreboard players remove @s bp_nbExtArea 1
clear @s minecraft:written_book{bpMenu:1}
execute at @s as @e[scores={bp_area=1..},tag=bp_pri] if score @s bp_idArea = @p bp_idAreaBook at @s run function block_protec:placed_bp/item_summon
execute as @e[scores={bp_area=1..}] if score @s bp_idArea = @e[scores={bp_area=1..},distance=..0.1,limit=1] bp_idArea run function block_protec:placed_bp/remove_ext_2