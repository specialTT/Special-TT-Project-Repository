data modify storage ender_dragon_loot temporary_list set from storage ender_dragon_loot loot_table_list
execute at @e[type=marker,nbt={data:{function:"loot_spawner"}}] run function ender_dragon_loot:spawn_loot
kill @e[type=marker,nbt={data:{function:"loot_spawner"}}]