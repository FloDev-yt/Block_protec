# as @e[scores={bp_area=1..}] at @e[scores={bp_area=1..},tag=selectUpdate,limit=1]
tag @s add selectLowdate
scoreboard players set @e[tag=bp_member,distance=..0.1] g_check 0
execute at @s as @e[tag=bp_member,distance=..0.1] run function block_protec:update/check_kill
execute as @e[tag=bp_member,scores={g_check=0},distance=..0.1] at @e[scores={bp_area=1..},tag=selectLowdate,limit=1] run function block_protec:update/copy_id
scoreboard players operation @s bp_nbMember = @e[scores={bp_area=1..},distance=..0.1,limit=1] bp_nbMember
scoreboard players reset @e[tag=bp_member,distance=..0.1] g_check
tag @s remove selectLowdate