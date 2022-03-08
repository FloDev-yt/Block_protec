# corner
particle minecraft:dust 0 0 1 0.4 ~ ~ ~ 0 0 0 0 5
# down
particle minecraft:dust 1 1 1 0.4 ^ ^ ^8 0 0 3 0 20
execute if entity @s[tag=bp_diagonal] run particle minecraft:dust 1 1 1 0.4 ^-8 ^ ^ 3 0 0 0 20
execute if entity @s[tag=!bp_diagonal] run particle minecraft:dust 1 1 1 0.4 ^8 ^ ^ 3 0 0 0 20
# ligne
particle minecraft:dust 1 1 1 0.4 ~ ~8 ~ 0 3 0 0 20