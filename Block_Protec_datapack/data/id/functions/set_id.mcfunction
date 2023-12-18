scoreboard players add @s g_id 0
execute if score @s g_id matches 0 store result score @s g_id run scoreboard players add #idMax g_id 1
advancement grant @s only id:flag_id requirement