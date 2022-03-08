execute positioned ~-15.4 ~-1.4 ~-15.4 run scoreboard players operation @a[gamemode=!spectator,dx=29.8,dy=400,dz=29.8] bp_idArea = @s bp_idArea
execute positioned ~-28.5 ~-14.5 ~-28.5 as @a[gamemode=!spectator,scores={bp_idArea=-1..0},dx=56,dy=400,dz=56] positioned ~28.5 ~14.5 ~28.5 run function block_protec:global/zone/z2_set
execute positioned ~-21.2 ~-6 ~-21.2 run tag @a[gamemode=!spectator,scores={bp_idArea=-1..0},dx=41.4,dy=400,dz=41.5] add bp_annim
# entity_explosion : number positioned = R + 0.5 + 5 + 4  |  number dx,dz = (number positioned x 2) - 1 
execute positioned ~-28.5 ~-14.5 ~-28.5 run kill @e[type=#block_protec:entity_explosion,dx=56,dy=400,dz=56]
execute positioned ~-28.5 ~-14.5 ~-28.5 run tag @e[type=#block_protec:projectiles,dx=56,dy=400,dz=56] add bp_project