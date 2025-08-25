item replace entity @e[type=snow_golem] armor.head with minecraft:stick[minecraft:enchantments={"frozen:frozen_armor":1}]
execute as @e[type=minecraft:snow_golem] run data modify entity @s drop_chances set value {head:0f}
execute as @e[type=#frozen:mobs,nbt={ticks_since_last_hurt_by_mob:1}] at @s on attacker if entity @s[type=snow_golem] run data modify entity @n TicksFrozen set value 340
execute as @e[type=minecraft:snow_golem] if data entity @s TicksFrozen run tag @s add frozen
execute as @e[type=minecraft:snow_golem] unless data entity @s TicksFrozen run tag @s remove frozen
execute at @e[type=minecraft:snow_golem] if block ~ ~-1 ~ water unless biome ~ ~ ~ #minecraft:snow_golem_melts run setblock ~ ~-1 ~ minecraft:ice
execute at @e[type=minecraft:snow_golem] if block ~ ~ ~ water unless biome ~ ~ ~ #minecraft:snow_golem_melts run setblock ~ ~ ~ minecraft:ice
execute as @e[type=minecraft:snow_golem,tag=frozen] run attribute @s movement_speed modifier add frozen -1 add_multiplied_total
execute as @e[type=minecraft:snow_golem,tag=frozen] run attribute @s jump_strength modifier add frozen -1 add_multiplied_total
execute as @e[type=minecraft:snow_golem,tag=!frozen] run attribute @s movement_speed modifier remove frozen
execute as @e[type=minecraft:snow_golem,tag=!frozen] run attribute @s jump_strength modifier remove frozen