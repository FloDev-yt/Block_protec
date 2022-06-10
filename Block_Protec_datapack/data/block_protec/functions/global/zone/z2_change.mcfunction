execute if score @s bp_idArea2 matches -1 run function block_protec:global/zone/z2_out
execute if score @s bp_idArea2 matches 1.. run function block_protec:global/zone/check_id
scoreboard players operation @s bp_idArea2Save = @s bp_idArea2
