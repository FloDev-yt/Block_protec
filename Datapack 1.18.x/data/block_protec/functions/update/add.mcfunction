scoreboard players add @s bp_idUpdate 1
# check bp_nbExtUpdate
scoreboard players set @s bp_nbExtUpdate 0
execute as @e[scores={bp_area=1..}] if score @s bp_idArea = @e[scores={bp_area=1..},distance=..0.1,limit=1] bp_idArea run scoreboard players add @s bp_nbExtUpdate 1