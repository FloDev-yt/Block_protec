execute if entity @s[scores={bp_idAreaBook=1..}] run function block_protec:gui/book_reset
execute if score @s bp_idArea matches 0 run function block_protec:global/zone/z1_out
execute if score @s bp_idArea matches 1.. run function block_protec:global/zone/z1_check
scoreboard players operation @s bp_idAreaSave = @s bp_idArea