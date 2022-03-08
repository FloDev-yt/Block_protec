scoreboard players operation #Xcoords2 g_check = @e[scores={bp_area=1..},distance=..0.1,limit=1] g_Xcoords
scoreboard players operation #Zcoords2 g_check = @e[scores={bp_area=1..},distance=..0.1,limit=1] g_Zcoords
scoreboard players operation #Xcoords2 g_check -= @s g_Xcoords
scoreboard players operation #Zcoords2 g_check -= @s g_Zcoords
## absolute value
execute if score #Xcoords2 g_check matches ..-1 run scoreboard players operation #Xcoords2 g_check *= #-1 bp_area
execute if score #Zcoords2 g_check matches ..-1 run scoreboard players operation #Zcoords2 g_check *= #-1 bp_area
# calculates theoretical distance
scoreboard players operation #bp_TheDis2 g_check = #bp_TheDis2Save g_check
scoreboard players operation #bp_TheDis2 g_check += @s bp_area
# compare
execute if score #Xcoords2 g_check <= #bp_TheDis2 g_check if score #Zcoords2 g_check <= #bp_TheDis2 g_check run tag @e[scores={bp_area=1..},distance=..0.1,limit=1] add bp_isClose2