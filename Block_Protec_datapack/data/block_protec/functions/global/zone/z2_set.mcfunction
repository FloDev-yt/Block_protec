execute if score @s bp_idArea2 matches 1.. unless score @s bp_idArea2 = @e[scores={bp_area=1..},distance=..0.1,limit=1] bp_idArea run function block_protec:global/zone/z2_overlap
execute if score @s bp_idArea2 matches -2..-1 run scoreboard players operation @s bp_idArea2 = @e[scores={bp_area=1..},distance=..0.1,limit=1] bp_idArea