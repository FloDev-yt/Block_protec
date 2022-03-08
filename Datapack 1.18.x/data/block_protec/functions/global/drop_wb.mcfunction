execute if score @s bp_idAreaBook matches 1.. at @s store success score @s g_check run kill @e[type=minecraft:item,distance=..6,nbt={Item:{id:"minecraft:written_book",tag:{bpMenu:1}}}]
execute if entity @s[scores={bp_idAreaBook=1..,g_check=1}] run function block_protec:gui/book_reset
scoreboard players reset @s bp_dropWB