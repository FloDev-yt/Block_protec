# at command_block
setblock ~ ~ ~ minecraft:air
summon marker ~ ~ ~ {Tags:["bp_check"]}
scoreboard players set @e[type=marker,distance=..0.1,tag=bp_check,limit=1] bp_area 15
# next step
execute as @e[type=marker,distance=..0.1,tag=bp_check,limit=1] run function block_protec:placed_bp/check