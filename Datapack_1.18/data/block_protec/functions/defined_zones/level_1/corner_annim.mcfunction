# corner
particle minecraft:dust 1 0 0 0.4 ~ ~ ~ 0 0 0 0 5
particle minecraft:dust 1 0 0 0.4 ~ ~11 ~ 0 0 0 0 5
# down
execute as @s[tag=bp_diagonal] run particle minecraft:dust 1 1 1 0.4 ^-5.5 ^ ^ 2 0 0 0 20
execute as @s[tag=!bp_diagonal] run particle minecraft:dust 1 1 1 0.4 ^ ^ ^5.5 0 0 2 0 20
# up
execute as @s[tag=bp_diagonal] run particle minecraft:dust 1 1 1 0.4 ^-5.5 ^11 ^ 2 0 0 0 20
execute as @s[tag=!bp_diagonal] run particle minecraft:dust 1 1 1 0.4 ^ ^11 ^5.5 0 0 2 0 20
# ligne
particle minecraft:dust 1 1 1 0.4 ~ ~5.5 ~ 0 2 0 0 20