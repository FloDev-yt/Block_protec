execute if entity @s[type=marker] run setblock ~ ~ ~ minecraft:air destroy
execute if entity @s[type=marker] as @p[distance=..6] run function block_protec:message/error/piston
kill @s