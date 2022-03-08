# as: marker,distance=..0.1,tag=bp_check at @s
# set id & coords
scoreboard players operation @s g_id = @p[scores={bp_select=1}] g_id
execute store result score @s g_Xcoords run data get entity @s Pos[0]
execute store result score @s g_Zcoords run data get entity @s Pos[2]
scoreboard players operation #bp_TheDisSave g_check = @s bp_area
# 3 is a safety constant between two zones + (5*2 safeZone)
scoreboard players add #bp_TheDisSave g_check 13
# calculates 
# max distanse
execute positioned ~-144.5 ~-400 ~-144.5 as @e[scores={bp_area=1..},tag=!bp_check,dx=288,dy=800,dz=288] positioned ~144.5 ~400 ~144.5 run function block_protec:placed_bp/calculates
# error to close
execute if entity @s[tag=bp_isClose] as @p[scores={bp_select=1}] run function block_protec:message/error/to_close
execute if entity @s[tag=bp_isClose] run function block_protec:defined_zones/drop
# check extention
execute unless entity @s[tag=bp_isClose] if entity @e[scores={bp_area=1..},tag=bp_maybeExt,limit=1] as @p[scores={bp_select=1}] run function block_protec:placed_bp/ext_check
# check block principal
execute if entity @s[tag=!bp_isClose,tag=bp_check] as @p[scores={bp_select=1}] run function block_protec:placed_bp/pri_check
# reset
tag @e[scores={bp_area=1..},tag=bp_maybeExt] remove bp_maybeExt
scoreboard players reset @p[scores={bp_select=1}] bp_select