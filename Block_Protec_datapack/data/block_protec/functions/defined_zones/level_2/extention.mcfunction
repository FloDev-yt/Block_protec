summon armor_stand ~ ~-0.55 ~ {Small:1b,Invisible:1b,NoBasePlate:1b,NoGravity:1b,Invulnerable:1b,Marker:1b,PersistenceRequired:1b,Tags:["bp_texture","bp_notProtec"],ArmorItems:[{},{},{},{id:"player_head",Count:1b,tag:{SkullOwner:{Id:[I;-1650716785,749292074,-1264239040,7133033],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZDk1YzkwYWVlMDNkNDk5YmU3OTRlMWM0Y2ZkMDg0YzNjMGQ4YjRiOTEzZTg3ZGJjOGM5ZDlkZTYwY2Y5OGIzYiJ9fX0="}]}}}}],Pose:{Head:[180f,0f,0f]}}
execute positioned ~ ~-0.25 ~ summon minecraft:interaction run function block_protec:right_click/interaction_ext
execute unless entity @s[tag=bp_pri] run function block_protec:defined_zones/level_2/corner_summon