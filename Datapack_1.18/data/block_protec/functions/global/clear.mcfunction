function block_protec:message/book/level_up
execute if score #diamond bp_diamond matches 64.. run function block_protec:global/clear_64
execute if score #diamond bp_diamond matches 32.. run clear @s minecraft:diamond 32
execute if score #diamond bp_diamond matches 32.. run scoreboard players remove #diamond bp_diamond 32
execute if score #diamond bp_diamond matches 16.. run clear @s minecraft:diamond 16
execute if score #diamond bp_diamond matches 16.. run scoreboard players remove #diamond bp_diamond 16
execute if score #diamond bp_diamond matches 8.. run clear @s minecraft:diamond 8
execute if score #diamond bp_diamond matches 8.. run scoreboard players remove #diamond bp_diamond 8
execute if score #diamond bp_diamond matches 4.. run clear @s minecraft:diamond 4
execute if score #diamond bp_diamond matches 4.. run scoreboard players remove #diamond bp_diamond 4
execute if score #diamond bp_diamond matches 2.. run clear @s minecraft:diamond 2
execute if score #diamond bp_diamond matches 2.. run scoreboard players remove #diamond bp_diamond 2
execute if score #diamond bp_diamond matches 1.. run clear @s minecraft:diamond 1