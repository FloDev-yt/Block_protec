execute positioned ~-5.4 ~-1.4 ~-5.4 run scoreboard players operation @a[gamemode=!spectator,dx=9.8,dy=9.8,dz=9.8] bp_idArea = @s bp_idArea
execute positioned ~-18.5 ~-14.5 ~-18.5 as @a[gamemode=!spectator,scores={bp_idArea=-1..0},dx=36,dy=36,dz=36] positioned ~18.5 ~14.5 ~18.5 run function block_protec:global/zone/z2_set
execute positioned ~-10.5 ~-6.5 ~-10.5 run tag @a[gamemode=!spectator,scores={bp_idArea=-1..0},dx=20,dy=20,dz=20] add bp_annim
# entity_explosion : number positioned = R + 0.5 + 5 + 4  |  number dx,dz = (number positioned x 2) - 1 
execute positioned ~-14.5 ~-10.5 ~-14.5 run kill @e[type=#block_protec:entity_explosion,dx=28,dy=28,dz=28]
execute positioned ~-14.5 ~-10.5 ~-14.5 run tag @e[type=#block_protec:projectiles,dx=28,dy=28,dz=28] add bp_project