setblock ~ ~ ~ minecraft:jungle_wall_sign{Text1:"{\"selector\":\"@p[scores={bp_select=1}]\"}"}
data modify entity @s CustomName set from block ~ ~ ~ Text1
setblock ~ ~ ~ minecraft:air
tag @s remove bp_check