execute unless score @s bp_maxMainArea matches -1.. run scoreboard players operation @s bp_nbMaxMain = .#default bp_maxMainArea
execute if score @s bp_maxMainArea matches -1.. run scoreboard players operation @s bp_nbMaxMain = @s bp_maxMainArea
execute unless score @s bp_maxExtArea matches -1.. run scoreboard players operation @s bp_nbMaxExt = .#default bp_maxExtArea
execute if score @s bp_maxExtArea matches -1.. run scoreboard players operation @s bp_nbMaxExt = @s bp_maxExtArea
# 
scoreboard players add @s bp_nbMainArea 0
scoreboard players add @s bp_nbExtArea 0
scoreboard players reset @s bp_timer
# set score
scoreboard players operation @s bp_idAreaBook = @e[scores={bp_area=1..},distance=..0.1,limit=1] bp_idArea
scoreboard players operation @s bp_nbMember = @e[scores={bp_area=1..},distance=..0.1,limit=1] bp_nbMember
scoreboard players operation @s bp_nbExt = @e[scores={bp_area=1..},distance=..0.1,limit=1] bp_nbExt
# give book
clear @s minecraft:written_book{bpMenu:1}
loot give @s loot block_protec:book_menu
# item remove
execute as @e[scores={bp_area=1..},tag=bp_pri] if score @s bp_idArea = @e[scores={bp_area=1..},distance=..0.1,limit=1] bp_idArea at @s run kill @e[name=bp_item,distance=..0.3]