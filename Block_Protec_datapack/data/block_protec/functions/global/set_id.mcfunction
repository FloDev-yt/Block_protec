advancement grant @s only block_protec:flag_id
scoreboard players add @s g_id 0
execute if score @s g_id matches 0 store result score @s g_id run scoreboard players add #idMax g_id 1