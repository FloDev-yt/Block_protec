scoreboard players reset @s g_check
summon marker ~ ~ ~ {CustomName:"\"bp_piston\"",Tags:["bp_s_piston"]}
execute as @e[type=marker,name=bp_piston,tag=bp_s_piston,distance=..0.1,limit=1] run function block_protec:defined_zones/protec_border