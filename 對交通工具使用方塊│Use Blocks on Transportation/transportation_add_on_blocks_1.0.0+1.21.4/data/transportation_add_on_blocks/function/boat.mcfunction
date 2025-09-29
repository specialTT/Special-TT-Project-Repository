execute on vehicle if entity @s[type=oak_boat] summon oak_chest_boat run tp @s @n[type=oak_boat]
execute on vehicle if entity @s[type=spruce_boat] summon spruce_chest_boat run tp @s @n[type=spruce_boat]
execute on vehicle if entity @s[type=birch_boat] summon birch_chest_boat run tp @s @n[type=birch_boat]
execute on vehicle if entity @s[type=jungle_boat] summon jungle_chest_boat run tp @s @n[type=jungle_boat]
execute on vehicle if entity @s[type=acacia_boat] summon acacia_chest_boat run tp @s @n[type=acacia_boat]
execute on vehicle if entity @s[type=dark_oak_boat] summon dark_oak_chest_boat run tp @s @n[type=dark_oak_boat]
execute on vehicle if entity @s[type=mangrove_boat] summon mangrove_chest_boat run tp @s @n[type=mangrove_boat]
execute on vehicle if entity @s[type=cherry_boat] summon cherry_chest_boat run tp @s @n[type=cherry_boat]
execute on vehicle if entity @s[type=bamboo_raft] summon bamboo_chest_raft run tp @s @n[type=bamboo_raft]
execute on vehicle if entity @s[type=pale_oak_boat] summon pale_oak_chest_boat run tp @s @n[type=pale_oak_boat]
execute on vehicle run kill @s
execute store result storage player_pos x float 0.0001 run scoreboard players get @s player_last_pos_x
execute store result storage player_pos y float 0.0001 run scoreboard players get @s player_last_pos_y
execute store result storage player_pos z float 0.0001 run scoreboard players get @s player_last_pos_z
execute store result storage player_pos x_rotation float 0.0001 run scoreboard players get @s player_last_pos_x_rotation
execute store result storage player_pos y_rotation float 0.0001 run scoreboard players get @s player_last_pos_y_rotation
function transportation_add_on_blocks:home with storage player_pos
item modify entity @s[gamemode=!creative] weapon.mainhand transportation_add_on_blocks:count_remove_one