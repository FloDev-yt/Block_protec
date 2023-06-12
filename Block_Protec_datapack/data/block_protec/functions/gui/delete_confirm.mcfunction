# as: @p | at @s
tag @s add bp_selectRemove
execute as @e[scores={bp_area=1..},tag=bp_pri] if score @s bp_idArea = @p[tag=bp_selectRemove] bp_idAreaBook at @s run function block_protec:global/break
scoreboard players remove @s bp_nbMainArea 1
function block_protec:gui/book_reset
# reset
tag @s remove bp_selectRemove