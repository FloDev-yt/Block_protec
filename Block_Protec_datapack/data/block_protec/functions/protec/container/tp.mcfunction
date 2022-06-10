effect give @s minecraft:nausea 6 1 true
summon marker ~ ~ ~ {CustomName:"\"bp_tpBack\""}
tp ~ ~400 ~
function block_protec:message/error/not_open
schedule function block_protec:protec/container/tp_back 1t