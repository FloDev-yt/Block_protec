# as: marker,distance=..0.1,tag=bp_check | at: @s
# score
execute store result score @s bp_idArea run scoreboard players add #idMax bp_idArea 1
scoreboard players set @s bp_nbMember 0
scoreboard players set @s bp_nbExt 0
tag @s add bp_closeRC
function block_protec:placed_bp/pri_create_2
function block_protec:placed_bp/item_summon