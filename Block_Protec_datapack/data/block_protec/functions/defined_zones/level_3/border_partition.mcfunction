# as @e[scores={bp_idAreaSave=x}] Corner find | at @a ~ ~1 ~
summon marker ~ ~ ~ {CustomName:"\"bp_border\"",Rotation:[0.0f,-90.0f]}
data modify entity @e[type=marker,name=bp_border,distance=..0.1,limit=1] Tags set from entity @s Tags
#
execute at @s[tag=bp_diagonal] positioned ^-9.75 ^ ^9.75 positioned ~-15.75 ~-5.5 ~-15.75 at @e[type=marker,name=bp_border,limit=1,dx=55.5,dy=6.3,dz=55.5] run function block_protec:global/border/partition_y
execute at @s[tag=!bp_diagonal] positioned ^9.75 ^ ^9.75 positioned ~-15.75 ~-5.5 ~-15.75 at @e[type=marker,name=bp_border,limit=1,dx=55.5,dy=6.3,dz=55.5] run function block_protec:global/border/partition_y
execute at @s[tag=bp_diagonal] positioned ^-9.75 ^ ^-2.5 positioned ~-15.75 ~-5.5 ~-3.5 at @e[type=marker,name=bp_border,limit=1,dx=55.5,dy=400,dz=6] run function block_protec:global/border/partition_x
execute at @s[tag=!bp_diagonal] positioned ^9.75 ^ ^-2.5 positioned ~-15.75 ~-5.5 ~-3.5 at @e[type=marker,name=bp_border,limit=1,dx=55.5,dy=400,dz=6] run function block_protec:global/border/partition_x
execute at @s[tag=bp_diagonal] positioned ^2.5 ^ ^9.75 positioned ~-3.5 ~-5.5 ~-15.75 at @e[type=marker,name=bp_border,limit=1,dx=6,dy=400,dz=55.5] run function block_protec:global/border/partition_z
execute at @s[tag=!bp_diagonal] positioned ^-2.5 ^ ^9.75 positioned ~-3.5 ~-5.5 ~-15.75 at @e[type=marker,name=bp_border,limit=1,dx=6,dy=400,dz=55.5] run function block_protec:global/border/partition_z
execute at @e[type=marker,name=bp_border,scores={g_check=36},limit=1] run particle minecraft:dust 0 1 0 0.4 ~ ~ ~ 0 0 0 0 5
execute as @e[type=marker,name=bp_border,limit=1] at @s run function block_protec:global/border/partition_set