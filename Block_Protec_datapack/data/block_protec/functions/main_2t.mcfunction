schedule function block_protec:main_2t 2t

# enable trigger
scoreboard players enable @a help_blockProtec
execute as @a[scores={help_blockProtec=1..}] run function block_protec:gui/trigger
execute as @e[type=marker,name=bp_piston,tag=bp_piston] at @s unless block ~ ~ ~ #block_protec:piston_moving run function block_protec:protec/move_piston
execute as @e[type=marker,name=bp_piston,tag=bp_s_piston] at @s unless block ~ ~ ~ #block_protec:s_piston_moving run function block_protec:protec/move_s_piston