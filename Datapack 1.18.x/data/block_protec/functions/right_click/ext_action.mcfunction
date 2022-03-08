# reset glowing
execute as @e[scores={bp_area=1..}] if score @s bp_idArea = @e[scores={bp_area=1..},distance=..0.1,limit=1] bp_idArea at @s positioned ~-0.5 ~-0.8817 ~-0.5 run effect clear @e[type=armor_stand,tag=bp_texture,dx=0] minecraft:glowing
#as @p at @e[scores={bp_area=1..},distance=..0.1,limit=1]
execute if score @s bp_select matches 20 run function block_protec:gui/move_pri
execute if score @s bp_select matches 21 run function block_protec:placed_bp/pri_check
execute if score @s bp_select matches 22 run function block_protec:gui/delete_ext
execute if score @s bp_select matches 23 run function block_protec:gui/level_up_0
scoreboard players reset @s bp_select