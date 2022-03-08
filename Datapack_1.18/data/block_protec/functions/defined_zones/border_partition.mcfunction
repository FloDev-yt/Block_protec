# as @a[tag=bp_annim] at @s
execute positioned ~-5.5 ~-15.5 ~-5.5 as @e[scores={bp_idAreaSave=5},dx=10,dy=21.5,dz=10] positioned ~5.5 ~16.5 ~5.5 run function block_protec:defined_zones/level_1/border_partition
execute positioned ~-15.5 ~-400.5 ~-15.5 as @e[scores={bp_idAreaSave=15},dx=30,dy=406.5,dz=30] positioned ~15.5 ~401.5 ~15.5 run function block_protec:defined_zones/level_2/border_partition
execute positioned ~-25.5 ~-400.5 ~-25.5 as @e[scores={bp_idAreaSave=25},dx=50,dy=406.5,dz=50] positioned ~25.5 ~401.5 ~25.5 run function block_protec:defined_zones/level_3/border_partition
execute positioned ~-35.5 ~-400.5 ~-35.5 as @e[scores={bp_idAreaSave=35},dx=70,dy=406.5,dz=70] positioned ~35.5 ~401.5 ~35.5 run function block_protec:defined_zones/level_4/border_partition
execute positioned ~-50.5 ~-400.5 ~-50.5 as @e[scores={bp_idAreaSave=50},dx=100,dy=406.5,dz=100] positioned ~50.5 ~401.5 ~50.5 run function block_protec:defined_zones/level_5/border_partition