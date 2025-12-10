execute unless block ~ ~ ~ #air if block ~ ~1 ~ #air run tp @n[type=marker,nbt={data:{function:"loot_spawner"}}] ~ ~1 ~
execute if predicate ender_dragon_loot:check_y unless block ~ ~ ~ #air run tp @n[type=marker,nbt={data:{function:"loot_spawner"}}] ~ ~1 ~
execute if predicate ender_dragon_loot:check_y run function ender_dragon_loot:loot
execute unless predicate ender_dragon_loot:check_y positioned ~ ~1 ~ run function ender_dragon_loot:find_the_spawn_point