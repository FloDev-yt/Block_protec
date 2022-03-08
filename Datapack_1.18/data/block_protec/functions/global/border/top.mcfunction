scoreboard players add @s g_check 12
execute store result entity @s Pos[1] double 1 run data get entity @e[type=marker,name=bp_corner,distance=..0.1,limit=1] Pos[1]
execute at @s run tp @s ~ ~11 ~ ~180 90
tag @s[tag=bp_Z] add bp_Z_remove
tag @s add bp_Z
tag @s[tag=bp_Z_remove] remove bp_Z