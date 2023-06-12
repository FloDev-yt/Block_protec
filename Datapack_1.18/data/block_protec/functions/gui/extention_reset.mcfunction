scoreboard players reset @s bp_select
function block_protec:message/error/ext_choice_cancel
# reset glowing
execute as @e[scores={bp_area=1..},tag=bp_ext] if score @s bp_idArea = @p bp_idAreaBook at @s positioned ~ ~-0.55 ~ run effect clear @e[type=armor_stand,tag=bp_texture,distance=..0.1,limit=1] minecraft:glowing