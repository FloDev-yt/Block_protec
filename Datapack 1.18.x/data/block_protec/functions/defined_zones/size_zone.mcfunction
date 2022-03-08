# init
execute as @a[gamemode=!spectator,scores={bp_idArea=1..}] run scoreboard players set @s bp_idArea 0
execute as @a[gamemode=!spectator,scores={bp_idArea2=0..}] run scoreboard players set @s bp_idArea2 -1
tag @a[tag=bp_annim] remove bp_annim
tag @e[type=#block_protec:projectiles,tag=bp_project] remove bp_project
# Size
execute as @e[scores={bp_area=50}] at @s run function block_protec:defined_zones/level_5/size_zone
execute as @e[scores={bp_area=35}] at @s run function block_protec:defined_zones/level_4/size_zone
execute as @e[scores={bp_area=25}] at @s run function block_protec:defined_zones/level_3/size_zone
execute as @e[scores={bp_area=15}] at @s run function block_protec:defined_zones/level_2/size_zone
execute as @e[scores={bp_area=5}] at @s run function block_protec:defined_zones/level_1/size_zone
# if change zone 
scoreboard players set @a[scores={bp_idArea=1..,bp_idArea2=0..}] bp_idArea2 -2
execute as @a[gamemode=!spectator,scores={bp_idArea=0..}] unless score @s bp_idAreaSave = @s bp_idArea run function block_protec:global/zone/z1_change
execute as @a[gamemode=!spectator,scores={bp_idArea2=-1..}] unless score @s bp_idArea2Save = @s bp_idArea2 run function block_protec:global/zone/z2_change
# if in annim zone
execute as @a[gamemode=!spectator,tag=bp_annim,scores={bp_idArea2=0..}] at @s run function block_protec:defined_zones/border_partition
# corner annim
execute as @a[scores={bp_idAreaBook=1..}] at @s as @e[type=marker,name=bp_corner,distance=..32] if score @s bp_idArea = @p[distance=..0.1] bp_idAreaBook at @s run function block_protec:defined_zones/corner_annim