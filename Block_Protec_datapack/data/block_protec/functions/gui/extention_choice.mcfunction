function block_protec:message/book/select_ext
scoreboard players operation @s bp_select = @s help_blockProtec
# glowing
tag @s add bp_selectExt
execute as @e[scores={bp_area=1..},tag=bp_ext] if score @s bp_idArea = @p[tag=bp_selectExt] bp_idAreaBook at @s positioned ~ ~-0.55 ~ run effect give @e[type=armor_stand,tag=bp_texture,distance=..0.1,limit=1] minecraft:glowing 15
tag @s remove bp_selectExt