clear @s minecraft:written_book{bpMenu:1}
execute if score @s bp_select matches 20..22 run function block_protec:gui/extention_reset
# item summon
execute as @e[scores={bp_area=1..},tag=bp_pri] if score @s bp_idArea = @p bp_idAreaBook at @s run function block_protec:placed_bp/item_summon
scoreboard players reset @s bp_idAreaBook