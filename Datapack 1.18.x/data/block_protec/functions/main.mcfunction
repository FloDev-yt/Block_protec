# check enter zone
execute if entity @e[scores={bp_area=1..},limit=1] run function block_protec:defined_zones/size_zone
# Entity protec
execute at @a[gamemode=adventure] as @e[type=#block_protec:entity_protec,tag=!bp_protec,tag=!bp_notProtec,distance=..4] run function block_protec:protec/invulnerable_set
execute at @e[type=#block_protec:projectiles,tag=bp_project] as @e[type=#block_protec:entity_protec,tag=!bp_protec,tag=!bp_notProtec,distance=..4] run function block_protec:protec/invulnerable_set
execute at @e[type=#block_protec:min_projectiles] as @e[type=item_frame,distance=..4] run function block_protec:protec/invulnerable_set
execute as @e[type=egg] at @s run function block_protec:defined_zones/protec_border