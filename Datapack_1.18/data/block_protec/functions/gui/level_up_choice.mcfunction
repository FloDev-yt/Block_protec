function block_protec:message/book/select_block
scoreboard players set @s bp_select 23
# glowing
tag @s add bp_selectBlock
execute as @e[scores={bp_area=1..35}] if score @s bp_idArea = @p[tag=bp_selectBlock] bp_idAreaBook at @s positioned ~-0.5 ~-0.8817 ~-0.5 run effect give @e[type=armor_stand,tag=bp_texture,dx=0] minecraft:glowing 15
tag @s remove bp_selectBlock