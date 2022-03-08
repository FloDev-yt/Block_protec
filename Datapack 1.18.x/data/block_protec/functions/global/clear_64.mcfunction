clear @s minecraft:diamond 64
scoreboard players remove #diamond bp_diamond 64
execute if score #diamond bp_diamond matches 64.. run function block_protec:global/clear_64