# as @e[tag=bp_member] at @s (lowdate)
tag @s add selectUpRm
execute as @e[tag=bp_member,distance=..0.1] if score @s g_check matches 0 if score @s g_id = @e[type=marker,tag=selectUpRm,limit=1] g_id store success score @s g_check run tag @e[type=marker,tag=selectUpRm,limit=1] remove selectUpRm
kill @s[tag=selectUpRm]