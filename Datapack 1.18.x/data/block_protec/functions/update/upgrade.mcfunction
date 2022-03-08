# as @e[scores={bp_area=1..}] bp_idUpdate lower
execute unless score @s bp_nbMember = @e[scores={bp_area=1..},distance=..0.1,limit=1] bp_nbMember at @e[scores={bp_area=1..},distance=..0.1,limit=1] run function block_protec:update/upgrade_member
scoreboard players add @s bp_nbExtUpdate 1
scoreboard players operation @s bp_nbExt = @e[scores={bp_area=1..},distance=..0.1,limit=1] bp_nbExt
scoreboard players operation @s bp_idUpdate = @e[scores={bp_area=1..},distance=..0.1,limit=1] bp_idUpdate