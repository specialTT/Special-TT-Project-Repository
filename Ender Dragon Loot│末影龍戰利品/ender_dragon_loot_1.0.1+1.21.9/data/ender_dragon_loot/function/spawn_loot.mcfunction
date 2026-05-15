function ender_dragon_loot:spawn_loot_one with storage ender_dragon_loot temporary_list[0]
data remove storage ender_dragon_loot temporary_list[0]
execute if data storage ender_dragon_loot temporary_list[0] run function ender_dragon_loot:spawn_loot
execute unless data storage ender_dragon_loot temporary_list[0] run data remove storage ender_dragon_loot temporary_list