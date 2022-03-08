execute positioned ~-50.4 ~-1.4 ~-50.4 run scoreboard players operation @a[gamemode=!spectator,dx=99.8,dy=400,dz=99.8] bp_idArea = @s bp_idArea
execute positioned ~-63.5 ~-14.5 ~-63.5 as @a[gamemode=!spectator,scores={bp_idArea=-1..0},dx=126,dy=400,dz=126] positioned ~63.5 ~14.5 ~63.5 run function block_protec:global/zone/z2_set
execute positioned ~-56.2 ~-6 ~-56.2 run tag @a[gamemode=!spectator,scores={bp_idArea=-1..0},dx=111.4,dy=400,dz=111.4] add bp_annim
# entity_explosion : number positioned = R + 0.5 + 13  |  number dx,dz = (number positioned x 2) - 1 
execute positioned ~-63.5 ~-14.5 ~-63.5 run kill @e[type=#block_protec:entity_explosion,dx=126,dy=400,dz=126]
execute positioned ~-63.5 ~-14.5 ~-63.5 run tag @e[type=#block_protec:projectiles,dx=126,dy=400,dz=126] add bp_project