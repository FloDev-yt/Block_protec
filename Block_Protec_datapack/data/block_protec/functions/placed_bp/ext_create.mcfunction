# as: marker,tag=bp_check | at: marker,tag=bp_maybeExt
# copy CustomName
data modify entity @s CustomName set from entity @e[scores={bp_area=1..},distance=..0.1,limit=1] CustomName
# copy score
scoreboard players operation @s bp_idArea = @e[scores={bp_area=1..},distance=..0.1,limit=1] bp_idArea
scoreboard players operation @s bp_nbMember = @e[scores={bp_area=1..},distance=..0.1,limit=1] bp_nbMember
scoreboard players operation @s bp_nbExt = @e[scores={bp_area=1..},distance=..0.1,limit=1] bp_nbExt
execute as @e[scores={bp_area=1..}] if score @s bp_idArea = @e[scores={bp_area=1..},distance=..0.1,limit=1] bp_idArea run scoreboard players add @s bp_nbExt 1
execute as @e[scores={bp_area=1..}] if score @s bp_idArea = @e[scores={bp_area=1..},distance=..0.1,limit=1] bp_idArea run function block_protec:update/add
# copy member id
execute as @e[tag=bp_member,distance=..0.1] at @e[scores={bp_area=1..},tag=bp_check,limit=1] run function block_protec:update/copy_id
# part 2
execute at @s run function block_protec:placed_bp/ext_create_2
# glowing
execute as @e[scores={bp_area=1..},tag=bp_pri] if score @s bp_idArea = @e[scores={bp_area=1..},distance=..0.1,limit=1] bp_idArea at @s positioned ~-0.5 ~-0.8817 ~-0.5 as @e[type=armor_stand,tag=bp_texture,dx=0] run effect give @s minecraft:glowing 15