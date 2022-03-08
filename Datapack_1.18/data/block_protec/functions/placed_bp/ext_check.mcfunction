# as: @p | at: marker,distance=..0.1,tag=bp_check
execute unless score @s bp_maxExtArea matches -1.. if score @s bp_nbExtArea >= .#default bp_maxExtArea run tag @s add bp_errNbExt
execute if score @s bp_maxExtArea matches 0.. if score @s bp_nbExtArea >= @s bp_maxExtArea run tag @s add bp_errNbExt
# if error
execute if entity @s[tag=bp_errNbExt] run function block_protec:message/error/nb_ext
# if ok
execute if entity @s[tag=!bp_errNbExt] run function block_protec:placed_bp/ext_ok
# reset
tag @s[tag=bp_errNbExt] remove bp_errNbExt