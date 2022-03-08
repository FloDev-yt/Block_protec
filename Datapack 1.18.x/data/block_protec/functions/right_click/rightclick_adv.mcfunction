advancement revoke @s only block_protec:right_click
tag @s add bp_selectRC
execute at @s at @e[distance=..5,team=bp_rightClick,predicate=block_protec:have_mainhand,limit=1] as @p[tag=bp_selectRC] run function block_protec:right_click/armor_mainhand
execute at @s[tag=bp_selectRC] at @e[distance=..5,team=bp_rightClick,predicate=!block_protec:have_button,limit=1] as @p[tag=bp_selectRC] run function block_protec:right_click/armor_offhand
execute unless score @s bp_idAreaBook matches 1.. run function block_protec:right_click/menu_not_ok
tag @s remove bp_selectRC