# wait 
execute as @s[scores={bp_timer=1..}] run function block_protec:message/error/wait
scoreboard players reset @s[scores={bp_timer=1..}] help_blockProtec
# ok
clear @s[scores={help_blockProtec=2}] minecraft:chorus_fruit{Enchantments:[{}]}
give @s[gamemode=adventure,scores={help_blockProtec=2}] minecraft:chorus_fruit{Enchantments:[{}]}
scoreboard players set @s[scores={help_blockProtec=2}] bp_timer 60
