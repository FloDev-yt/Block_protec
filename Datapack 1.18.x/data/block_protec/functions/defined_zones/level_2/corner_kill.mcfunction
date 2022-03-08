execute positioned ~-15.6 ~-2 ~-15.6 as @e[type=marker,name=bp_corner,dx=30.2,dy=1,dz=30.2] positioned ~15.6 ~2 ~15.6 if score @s bp_idArea = @e[scores={bp_area=1..},distance=..0.1,limit=1] bp_idArea run tag @s add bp_goodIdCorner
execute positioned ~-15.5 ~-1.5 ~-15.5 run kill @e[type=marker,name=bp_corner,scores={bp_idAreaSave=15},tag=bp_goodIdCorner,y_rotation=0,limit=1,distance=..0.1]
execute positioned ~15.5 ~-1.5 ~-15.5 run kill @e[type=marker,name=bp_corner,scores={bp_idAreaSave=15},tag=bp_goodIdCorner,y_rotation=0,limit=1,distance=..0.1]
execute positioned ~15.5 ~-1.5 ~15.5 run kill @e[type=marker,name=bp_corner,scores={bp_idAreaSave=15},tag=bp_goodIdCorner,y_rotation=180,limit=1,distance=..0.1]
execute positioned ~-15.5 ~-1.5 ~15.5 run kill @e[type=marker,name=bp_corner,scores={bp_idAreaSave=15},tag=bp_goodIdCorner,y_rotation=180,limit=1,distance=..0.1]
tag @e[type=marker,name=bp_corner,tag=bp_goodIdCorner] remove bp_goodIdCorner