execute store result storage minecraft:item_command boat_interaction_distance double 0.001 run scoreboard players get @s boat_interaction_distance
execute store result storage minecraft:item_command minecart_interaction_distance double 0.001 run scoreboard players get @s minecart_interaction_distance
function u_b_o_t:passed_predicate_detection with storage minecraft:item_command
execute as @s[scores={use_block_on_transportation=1..}] run function u_b_o_t:start with storage minecraft:item_command