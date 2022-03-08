#as @e[scores={bp_area=1..},distance=..0.1,limit=1] at @s
scoreboard players operation #bp_TheDis2Save g_check = @s bp_area
scoreboard players add #bp_TheDis2Save g_check 23
execute if entity @s[scores={bp_area=35..}] run scoreboard players add #bp_TheDis2Save g_check 5
tag @s add bp_seleckLu
execute positioned ~-144.5 ~-400 ~-144.5 as @e[scores={bp_area=1..},tag=!bp_seleckLu,dx=288,dy=800,dz=288] positioned ~144.5 ~400 ~144.5 unless score @s g_id = @e[scores={bp_area=1..},distance=..0.1,limit=1] g_id run function block_protec:gui/level_up_calcule
execute if entity @s[tag=bp_isClose2] as @p[tag=bp_selectPLu] run function block_protec:message/error/to_close
execute if entity @s[tag=!bp_isClose2] run function block_protec:gui/level_up_ok
tag @s remove bp_seleckLu
tag @s remove bp_isClose2