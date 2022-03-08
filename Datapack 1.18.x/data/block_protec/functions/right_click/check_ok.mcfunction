execute if score @s bp_select matches 20..22 if entity @e[scores={bp_area=1..},tag=bp_pri,distance=..0.1,limit=1] run function block_protec:message/error/ext_action_cancel
execute if score @s bp_select matches 20..22 if entity @e[scores={bp_area=1..},tag=bp_ext,distance=..0.1,limit=1] run function block_protec:right_click/ext_action
execute if score @s bp_select matches 23 run function block_protec:right_click/ext_action
execute unless score @s bp_select matches 20..23 run function block_protec:right_click/book_score