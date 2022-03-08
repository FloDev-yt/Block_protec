#as @p at @e[scores={bp_area=1..},distance=..0.1,limit=1]
tag @s add bp_selectPLu
execute store result score #diamondPlayer bp_diamond run clear @s minecraft:diamond 0
execute as @e[scores={bp_area=1..},distance=..0.1,limit=1] run function block_protec:defined_zones/diamond
execute if score #diamondPlayer bp_diamond < #diamond bp_diamond run function block_protec:message/error/not_diamond
execute unless score #diamond bp_diamond matches 1.. run function block_protec:message/error/not_level_up
execute if score #diamondPlayer bp_diamond >= #diamond bp_diamond as @e[scores={bp_area=1..},distance=..0.1,limit=1] run function block_protec:gui/level_up_1
tag @s remove bp_selectPLu