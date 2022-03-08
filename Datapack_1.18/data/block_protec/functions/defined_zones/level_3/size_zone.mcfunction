execute positioned ~-25.4 ~-1.4 ~-25.4 run scoreboard players operation @a[gamemode=!spectator,dx=49.8,dy=400,dz=49.8] bp_idArea = @s bp_idArea
execute positioned ~-38.5 ~-14.5 ~-38.5 as @a[gamemode=!spectator,scores={bp_idArea=-1..0},dx=76,dy=400,dz=76] positioned ~38.5 ~14.5 ~38.5 run function block_protec:global/zone/z2_set
execute positioned ~-31.2 ~-6 ~-31.2 run tag @a[gamemode=!spectator,scores={bp_idArea=-1..0},dx=61.4,dy=400,dz=61.4] add bp_annim
# entity_explosion : number positioned = R + 0.5 + 13  |  number dx,dz = (number positioned x 2) - 1 
execute positioned ~-38.5 ~-14.5 ~-38.5 run kill @e[type=#block_protec:entity_explosion,dx=76,dy=400,dz=76]
execute positioned ~-38.5 ~-14.5 ~-38.5 run tag @e[type=#block_protec:projectiles,dx=76,dy=400,dz=76] add bp_project