item replace entity @s weapon.mainhand from entity @e[distance=..0.1,team=bp_rightClick,limit=1] weapon.offhand
item replace entity @e[distance=..0.1,team=bp_rightClick,limit=1] weapon.offhand with minecraft:jungle_button
execute if entity @s[gamemode=!adventure] align xyz positioned ~0.5 ~0.5 ~0.5 run function block_protec:right_click/check_id