# as @e[scores={bp_idAreaSave=5}] Corner find | at @a ~ ~1 ~
summon marker ~ ~ ~ {CustomName:"\"bp_border\"",Rotation:[0.0f,-90.0f]}
data modify entity @e[type=marker,name=bp_border,distance=..0.1,limit=1] Tags set from entity @s Tags
# for the top
execute at @s positioned ~-5.5 ~9.9 ~-5.5 as @e[type=marker,name=bp_border,limit=1,dx=10,dy=5.3,dz=10] positioned ~5.5 ~-9.9 ~5.5 run function block_protec:global/border/top
#
execute at @s positioned ~-5.5 ~-5.5 ~-5.5 at @e[type=marker,name=bp_border,limit=1,dx=10,dy=6.3,dz=10] run function block_protec:global/border/partition_y
execute at @s[tag=bp_X] positioned ~-5.5 ~-5.5 ~-5.5 at @e[type=marker,name=bp_border,limit=1,dx=10,dy=20,dz=5.5] run function block_protec:global/border/partition_x
execute at @s[tag=!bp_X] positioned ~-5.5 ~-5.5 ~-1 at @e[type=marker,name=bp_border,limit=1,dx=10,dy=20,dz=5.5] run function block_protec:global/border/partition_x
execute at @s[tag=bp_Z] positioned ~-5.5 ~-5.5 ~-5.5 at @e[type=marker,name=bp_border,limit=1,dx=5.5,dy=20,dz=10] run function block_protec:global/border/partition_z
execute at @s[tag=!bp_Z] positioned ~-1 ~-5.5 ~-5.5 at @e[type=marker,name=bp_border,limit=1,dx=5.5,dy=20,dz=10] run function block_protec:global/border/partition_z
execute at @e[type=marker,name=bp_border,scores={g_check=36},limit=1] run particle minecraft:dust 1 0 0 0.4 ~ ~ ~ 0 0 0 0 5
execute as @e[type=marker,name=bp_border,limit=1] at @s run function block_protec:global/border/partition_set