advancement revoke @s only block_protec:placed_s_piston
execute anchored eyes run function block_protec:protec/look_s_piston/init
execute if score @s g_check matches 0 anchored eyes run function block_protec:protec/look_s_piston/not_find