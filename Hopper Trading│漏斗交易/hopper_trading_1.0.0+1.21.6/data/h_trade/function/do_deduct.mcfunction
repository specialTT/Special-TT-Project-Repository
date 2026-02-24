$execute store result score this_slot_c h_temp run data get block ~ ~ ~ Items[{Slot:$(slot)b}].count
scoreboard players operation sub h_temp = to_deduct h_temp
execute if score sub h_temp > this_slot_c h_temp run scoreboard players operation sub h_temp = this_slot_c h_temp

scoreboard players operation this_slot_c h_temp -= sub h_temp
$execute store result block ~ ~ ~ Items[{Slot:$(slot)b}].count int 1 run scoreboard players get this_slot_c h_temp
$execute if score this_slot_c h_temp matches 0 run data remove block ~ ~ ~ Items[{Slot:$(slot)b}]

scoreboard players operation to_deduct h_temp -= sub h_temp