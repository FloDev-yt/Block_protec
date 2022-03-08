execute if entity @s[tag=bp_pri] align xyz run kill @e[type=armor_stand,team=bp_rightClick,dx=0]
execute if entity @s[tag=bp_ext] run data merge entity @e[type=armor_stand,team=bp_rightClick,dx=0,limit=1] {DisabledSlots:4144959}
tag @s remove bp_closeRC