execute positioned ~-35.6 ~-2 ~-35.6 as @e[type=marker,name=bp_corner,dx=70.2,dy=1,dz=70.2] positioned ~35.6 ~2 ~35.6 if score @s bp_idArea = @e[scores={bp_area=1..},distance=..0.1,limit=1] bp_idArea run tag @s add bp_goodIdCorner
execute positioned ~-35.5 ~-1.5 ~-35.5 run kill @e[type=marker,name=bp_corner,scores={bp_idAreaSave=35},tag=bp_goodIdCorner,y_rotation=0,limit=1,distance=..0.1]
execute positioned ~35.5 ~-1.5 ~-35.5 run kill @e[type=marker,name=bp_corner,scores={bp_idAreaSave=35},tag=bp_goodIdCorner,y_rotation=0,limit=1,distance=..0.1]
execute positioned ~35.5 ~-1.5 ~35.5 run kill @e[type=marker,name=bp_corner,scores={bp_idAreaSave=35},tag=bp_goodIdCorner,y_rotation=180,limit=1,distance=..0.1]
execute positioned ~-35.5 ~-1.5 ~35.5 run kill @e[type=marker,name=bp_corner,scores={bp_idAreaSave=35},tag=bp_goodIdCorner,y_rotation=180,limit=1,distance=..0.1]
tag @e[type=marker,name=bp_corner,tag=bp_goodIdCorner] remove bp_goodIdCorner