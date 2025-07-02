item replace entity @e[type=snow_golem] armor.head with minecraft:stick[minecraft:enchantments={"frozen:frozen_armor":1}]
execute as @e[type=minecraft:snow_golem] run data modify entity @s ArmorDropChances set value [0.085f,0.085f,0.085f,0.0f]
execute as @e at @s on attacker if entity @s[type=snow_golem] run scoreboard players set @n frozen 60
scoreboard players remove @e[scores={frozen=1..}] frozen 1
execute as @e[scores={frozen=1..}] run data modify entity @s TicksFrozen set value 142
execute as @e at @s if entity @s[scores={frozen=1..}] unless entity @s[nbt={TicksFrozen:140}] run particle minecraft:block{block_state:"minecraft:ice"}
execute as @e at @s unless entity @s[scores={frozen=1..}] if entity @s[nbt={TicksFrozen:140}] run particle minecraft:block{block_state:"minecraft:ice"}
execute as @e at @s if entity @s[scores={frozen=1..}] if entity @s[nbt={TicksFrozen:140}] run particle minecraft:block{block_state:"minecraft:ice"}
execute at @e[type=minecraft:snow_golem] if block ~ ~-1 ~ water if biome ~ ~ ~ #minecraft:snow_golem_melts run setblock ~ ~-1 ~ minecraft:ice