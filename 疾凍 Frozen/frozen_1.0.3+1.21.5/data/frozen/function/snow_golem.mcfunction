item replace entity @e[type=snow_golem] armor.head with minecraft:stick[minecraft:enchantments={"frozen:frozen_armor":1}]
execute as @e[type=minecraft:snow_golem] run data modify entity @s drop_chances set value {head:0f}
execute as @e[nbt={ticks_since_last_hurt_by_mob:1}] at @s on attacker if entity @s[type=snow_golem] run data modify entity @n TicksFrozen set value 340
execute at @e[type=minecraft:snow_golem] if block ~ ~-1 ~ water unless biome ~ ~ ~ #minecraft:snow_golem_melts run setblock ~ ~-1 ~ minecraft:ice
execute at @e[type=minecraft:snow_golem] if block ~ ~ ~ water unless biome ~ ~ ~ #minecraft:snow_golem_melts run setblock ~ ~ ~ minecraft:ice