execute positioned ~-35.4 ~-1.4 ~-35.4 run scoreboard players operation @a[gamemode=!spectator,dx=69.8,dy=400,dz=69.8] bp_idArea = @s bp_idArea
execute positioned ~-48.5 ~-14.5 ~-48.5 as @a[gamemode=!spectator,scores={bp_idArea=-1..0},dx=96,dy=400,dz=96] positioned ~48.5 ~14.5 ~48.5 run function block_protec:global/zone/z2_set
execute positioned ~-41.2 ~-6 ~-41.2 run tag @a[gamemode=!spectator,scores={bp_idArea=-1..0},dx=81.4,dy=400,dz=81.4] add bp_annim
# entity_explosion : number positioned = R + 0.5 + 13  |  number dx,dz = (number positioned x 2) - 1 
execute positioned ~-48.5 ~-14.5 ~-48.5 run kill @e[type=#block_protec:entity_explosion,dx=96,dy=400,dz=96]
execute positioned ~-48.5 ~-14.5 ~-48.5 run tag @e[type=#block_protec:projectiles,dx=96,dy=400,dz=96] add bp_project