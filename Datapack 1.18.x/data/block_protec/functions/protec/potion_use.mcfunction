kill @e[type=minecraft:potion,distance=..3,nbt={Item:{tag:{Potion:"minecraft:harming"}}}]
kill @e[type=minecraft:potion,distance=..3,nbt={Item:{tag:{Potion:"minecraft:strong_harming"}}}]

kill @e[type=minecraft:potion,distance=..3,nbt={Item:{tag:{Potion:"minecraft:poison"}}}]
kill @e[type=minecraft:potion,distance=..3,nbt={Item:{tag:{Potion:"minecraft:strong_poison"}}}]
kill @e[type=minecraft:potion,distance=..3,nbt={Item:{tag:{Potion:"minecraft:long_poison"}}}]

kill @e[type=minecraft:potion,distance=..3,nbt={Item:{tag:{Potion:"minecraft:weakness"}}}]
kill @e[type=minecraft:potion,distance=..3,nbt={Item:{tag:{Potion:"minecraft:long_weakness"}}}]

kill @e[type=minecraft:potion,distance=..3,nbt={Item:{tag:{Potion:"minecraft:slowness"}}}]
kill @e[type=minecraft:potion,distance=..3,nbt={Item:{tag:{Potion:"minecraft:long_slowness"}}}]
kill @e[type=minecraft:potion,distance=..3,nbt={Item:{tag:{Potion:"minecraft:strong_slowness"}}}]

kill @e[type=minecraft:potion,distance=..3,nbt={Item:{tag:{Potion:"minecraft:turtle_master"}}}]
kill @e[type=minecraft:potion,distance=..3,nbt={Item:{tag:{Potion:"minecraft:long_turtle_master"}}}]
kill @e[type=minecraft:potion,distance=..3,nbt={Item:{tag:{Potion:"minecraft:strong_turtle_master"}}}]
execute unless entity @e[type=minecraft:potion,distance=..3] run function block_protec:message/error/used_potion