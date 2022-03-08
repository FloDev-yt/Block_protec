item modify entity @s weapon.mainhand block_protec:more_1
execute unless predicate block_protec:have_mainhand run item replace entity @s weapon.mainhand from entity @e[distance=..0.1,team=bp_rightClick,limit=1] weapon.mainhand
item replace entity @e[distance=..0.1,team=bp_rightClick,limit=1] weapon.mainhand with air
execute if entity @s[gamemode=!adventure] align xyz positioned ~0.5 ~0.5 ~0.5 run function block_protec:right_click/check_id
tag @s remove bp_selectRC