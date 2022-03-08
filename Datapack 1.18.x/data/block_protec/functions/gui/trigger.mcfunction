execute if entity @s[scores={help_blockProtec=1}] run function block_protec:message/help
execute if entity @s[scores={help_blockProtec=2}] run function block_protec:global/chorus_fruit
execute if entity @s[scores={help_blockProtec=3}] run function block_protec:message/recipe
execute if entity @s[gamemode=creative,scores={help_blockProtec=4}] run function block_protec:gui/info_zone
execute if entity @s[scores={help_blockProtec=5..}] unless score @s bp_idAreaBook matches 1.. run function block_protec:right_click/menu_not_ok
# option principal
execute if entity @s[scores={help_blockProtec=10}] run function block_protec:gui/member_add
execute if entity @s[scores={help_blockProtec=11}] run function block_protec:gui/member_exist
execute if entity @s[scores={help_blockProtec=13}] run function block_protec:gui/delete_want
execute if entity @s[scores={help_blockProtec=14}] at @s run function block_protec:gui/delete_confirm
# option extention
execute if entity @s[scores={help_blockProtec=20..22}] run function block_protec:gui/extention_exist
# level up
execute if entity @s[scores={help_blockProtec=23}] run function block_protec:gui/level_up_choice
# choose list
execute if entity @s[scores={help_blockProtec=101..198}] run function block_protec:gui/book/member/new
execute if entity @s[scores={help_blockProtec=201..350}] run function block_protec:gui/book/member/select
# reset
scoreboard players reset @s help_blockProtec