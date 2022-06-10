# as marker,scores={bp_area=1..} at positioned @e[marker,tag=bp_check]
# calculates true distance
scoreboard players operation #Xcoords g_check = @e[scores={bp_area=1..},distance=..0.1,limit=1] g_Xcoords
scoreboard players operation #Zcoords g_check = @e[scores={bp_area=1..},distance=..0.1,limit=1] g_Zcoords
scoreboard players operation #Xcoords g_check -= @s g_Xcoords
scoreboard players operation #Zcoords g_check -= @s g_Zcoords
## absolute value
execute if score #Xcoords g_check matches ..-1 run scoreboard players operation #Xcoords g_check *= #-1 bp_area
execute if score #Zcoords g_check matches ..-1 run scoreboard players operation #Zcoords g_check *= #-1 bp_area
# calculates theoretical distance
scoreboard players operation #bp_TheDis g_check = #bp_TheDisSave g_check
scoreboard players operation #bp_TheDis g_check += @s bp_area
# check id
execute if score @s g_id = @e[scores={bp_area=1..},distance=..0.1,limit=1] g_id run tag @s add bp_goodId
# compare
execute if entity @s[tag=!bp_goodId] if score #Xcoords g_check <= #bp_TheDis g_check if score #Zcoords g_check <= #bp_TheDis g_check run tag @e[scores={bp_area=1..},distance=..0.1,limit=1] add bp_isClose
# calculates if extention
scoreboard players remove #bp_TheDis g_check 12
execute if entity @s[tag=bp_goodId] if score #Xcoords g_check <= #bp_TheDis g_check if score #Zcoords g_check <= #bp_TheDis g_check run tag @s add bp_maybeExt
# reset
tag @s remove bp_goodId
