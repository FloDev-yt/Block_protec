scoreboard players remove @s g_check 1
execute align xyz if block ~ ~ ~ #block_protec:s_piston_moving unless entity @e[type=marker,name=bp_piston,tag=bp_piston,distance=..0.1] run function block_protec:protec/look_s_piston/find
execute if score @s g_check matches 1.. positioned ^ ^ ^0.4 run function block_protec:protec/look_s_piston/loop