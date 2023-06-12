execute if entity @s[tag=bp_pri] run function block_protec:right_click/summon_pri_x
execute if entity @s[tag=bp_ext] run data merge entity @e[type=armor_stand,team=bp_rightClick,dx=0,limit=1] {DisabledSlots:1973790}
tag @s add bp_closeRC