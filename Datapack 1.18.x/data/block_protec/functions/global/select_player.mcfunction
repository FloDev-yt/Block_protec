scoreboard players set #ifUse bp_selectPlayer 0
scoreboard players add #index bp_selectPlayer 1
execute as @a[scores={bp_selectPlayer=1..}] if score @s bp_selectPlayer = #index bp_selectPlayer run scoreboard players set #ifUse bp_selectPlayer 1
execute if score #ifUse bp_selectPlayer matches 1 run function block_protec:global/select_player
execute if score #ifUse bp_selectPlayer matches 0 run scoreboard players operation @s[scores={bp_selectPlayer=0}] bp_selectPlayer = #index bp_selectPlayer
