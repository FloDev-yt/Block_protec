schedule function block_protec:main_20t 20t
# reset selectPlayer
execute as @a[scores={bp_leaveGame=1..}] run function block_protec:global/leave_game
# armor_stand for right click
execute as @e[scores={bp_area=1..},tag=!bp_closeRC] at @s if entity @a[gamemode=!adventure,scores={bp_idArea=1..},distance=..5] run function block_protec:right_click/armor_on
execute as @e[scores={bp_area=1..},tag=bp_closeRC] at @s unless entity @a[gamemode=!adventure,scores={bp_idArea=1..},distance=..5] run function block_protec:right_click/armor_off
# timer
scoreboard players remove @a[scores={bp_timer=1..}] bp_timer 1
execute as @a[scores={bp_timer=0,bp_idAreaBook=1..}] run scoreboard players reset @s bp_idAreaBook
# reset score if lose book
execute as @a[scores={bp_dropWB=1..}] run function block_protec:global/drop_wb
# give recipe
execute as @a[predicate=block_protec:have_obsidian] run function block_protec:message/recipe_unlock
# check idUpdate
execute as @e[scores={bp_area=1..,bp_nbExt=1..}] if score @s bp_nbExtUpdate < @s bp_nbExt at @s run function block_protec:update/lower
# entity protec
execute as @e[type=#block_protec:entity_protec,limit=1,sort=random,tag=!bp_protec,tag=!bp_notProtec] if entity @s[nbt={Invulnerable:1}] run tag @s add bp_notProtec
execute as @e[type=item_frame,limit=1,sort=random,tag=!bp_protec,tag=!bp_notProtec] if entity @s[nbt={Fixed:1}] run tag @s add bp_notProtec
execute as @e[type=armor_stand,limit=1,sort=random,tag=!bp_protec,tag=!bp_notProtec] unless entity @s[nbt={DisabledSlots:0}] run tag @s add bp_notProtec
tag @e[type=#block_protec:projectiles,tag=!bp_inGround,nbt={inGround:1}] add bp_inGround
execute as @e[type=#block_protec:entity_protec,tag=bp_protec] at @s unless entity @a[gamemode=adventure,distance=..4] unless entity @e[type=#block_protec:resest_protec,tag=!bp_inGround,distance=..4] run function block_protec:protec/invulnerable_reset