# as: @p | at: marker,distance=..0.1,tag=bp_check
execute if entity @e[scores={bp_area=1..,bp_idArea=1..},distance=..0.1,limit=1] run function block_protec:placed_bp/remove_ext
execute as @e[scores={bp_area=1..},tag=bp_check,distance=..0.1,limit=1] run function block_protec:placed_bp/pri_set_name
execute as @e[scores={bp_area=1..},distance=..0.1,limit=1] run function block_protec:placed_bp/pri_create
function block_protec:message/create_pri
scoreboard players add @s bp_nbMainArea 1
scoreboard players set @s bp_timer 15
function block_protec:message/zone/welcome
scoreboard players operation @s bp_idArea = @e[scores={bp_area=1..},distance=..0.1,limit=1] bp_idArea
scoreboard players operation @s bp_idAreaSave = @s bp_idArea
scoreboard players operation @s bp_idAreaBook = @s bp_idArea