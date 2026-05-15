data modify storage player_healing:storage temp_modifier set from storage player_healing:storage modifiers[0]
execute store result score temp_amount player_healing run data get storage player_healing:storage temp_modifier.amount 100
execute if data storage player_healing:storage {temp_modifier:{operation:"add_multiplied_total"}} run scoreboard players add temp_amount player_healing 100
execute if data storage player_healing:storage {temp_modifier:{operation:"add_multiplied_base"}} run scoreboard players operation multiplied_base player_healing += temp_amount player_healing
execute if data storage player_healing:storage {temp_modifier:{operation:"add_multiplied_total"}} run scoreboard players operation result player_healing *= temp_amount player_healing
scoreboard players set 100 player_healing 100
execute if data storage player_healing:storage {temp_modifier:{operation:"add_multiplied_total"}} run scoreboard players operation result player_healing /= 100 player_healing
data remove storage player_healing:storage modifiers[0]
execute if data storage player_healing:storage modifiers[0] run function player_healing:modifiers