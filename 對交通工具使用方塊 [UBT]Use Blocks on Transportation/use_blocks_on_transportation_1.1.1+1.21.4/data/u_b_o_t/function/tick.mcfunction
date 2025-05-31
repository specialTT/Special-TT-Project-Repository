execute as @a store result score @s boat_interaction_distance store result score @s minecart_interaction_distance run attribute @s minecraft:entity_interaction_range get 1000
scoreboard players add @a boat_interaction_distance 687
scoreboard players add @a minecart_interaction_distance 490
execute as @a at @s run function u_b_o_t:convert_fractions_to_storage
execute as @a[nbt=!{SelectedItemSlot:0}] run function u_b_o_t:restore_list {slot:"container.0"}
execute as @a[nbt=!{SelectedItemSlot:1}] run function u_b_o_t:restore_list {slot:"container.1"}
execute as @a[nbt=!{SelectedItemSlot:2}] run function u_b_o_t:restore_list {slot:"container.2"}
execute as @a[nbt=!{SelectedItemSlot:3}] run function u_b_o_t:restore_list {slot:"container.3"}
execute as @a[nbt=!{SelectedItemSlot:4}] run function u_b_o_t:restore_list {slot:"container.4"}
execute as @a[nbt=!{SelectedItemSlot:5}] run function u_b_o_t:restore_list {slot:"container.5"}
execute as @a[nbt=!{SelectedItemSlot:6}] run function u_b_o_t:restore_list {slot:"container.6"}
execute as @a[nbt=!{SelectedItemSlot:7}] run function u_b_o_t:restore_list {slot:"container.7"}
execute as @a[nbt=!{SelectedItemSlot:8}] run function u_b_o_t:restore_list {slot:"container.8"}
execute as @a run function u_b_o_t:restore_list {slot:"container.9"}
execute as @a run function u_b_o_t:restore_list {slot:"container.10"}
execute as @a run function u_b_o_t:restore_list {slot:"container.11"}
execute as @a run function u_b_o_t:restore_list {slot:"container.12"}
execute as @a run function u_b_o_t:restore_list {slot:"container.13"}
execute as @a run function u_b_o_t:restore_list {slot:"container.14"}
execute as @a run function u_b_o_t:restore_list {slot:"container.15"}
execute as @a run function u_b_o_t:restore_list {slot:"container.16"}
execute as @a run function u_b_o_t:restore_list {slot:"container.17"}
execute as @a run function u_b_o_t:restore_list {slot:"container.18"}
execute as @a run function u_b_o_t:restore_list {slot:"container.19"}
execute as @a run function u_b_o_t:restore_list {slot:"container.20"}
execute as @a run function u_b_o_t:restore_list {slot:"container.21"}
execute as @a run function u_b_o_t:restore_list {slot:"container.22"}
execute as @a run function u_b_o_t:restore_list {slot:"container.23"}
execute as @a run function u_b_o_t:restore_list {slot:"container.24"}
execute as @a run function u_b_o_t:restore_list {slot:"container.25"}
execute as @a run function u_b_o_t:restore_list {slot:"container.26"}
execute as @a run function u_b_o_t:restore_list {slot:"container.27"}
execute as @a run function u_b_o_t:restore_list {slot:"container.28"}
execute as @a run function u_b_o_t:restore_list {slot:"container.29"}
execute as @a run function u_b_o_t:restore_list {slot:"container.30"}
execute as @a run function u_b_o_t:restore_list {slot:"container.31"}
execute as @a run function u_b_o_t:restore_list {slot:"container.32"}
execute as @a run function u_b_o_t:restore_list {slot:"container.33"}
execute as @a run function u_b_o_t:restore_list {slot:"container.34"}
execute as @a run function u_b_o_t:restore_list {slot:"container.35"}
execute as @a run function u_b_o_t:restore_list {slot:"player.crafting.0"}
execute as @a run function u_b_o_t:restore_list {slot:"player.crafting.1"}
execute as @a run function u_b_o_t:restore_list {slot:"player.crafting.2"}
execute as @a run function u_b_o_t:restore_list {slot:"player.crafting.3"}
execute as @a run function u_b_o_t:restore_list {slot:"player.cursor"}
execute as @e[type=item] run function u_b_o_t:restore_list {slot:"container.0"}