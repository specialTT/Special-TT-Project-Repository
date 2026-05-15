$data modify storage ranged_attack_damage:storage value set value $(value)
execute store result score @s ranged_attack_damage run data get storage ranged_attack_damage:storage value
execute store result storage ranged_attack_damage:storage ranged_attack_damage int 1 run scoreboard players get @s ranged_attack_damage
data modify storage ranged_attack_damage:storage Pos set from entity @s Pos
data modify storage ranged_attack_damage:storage Rotation set from entity @s Rotation
data modify storage ranged_attack_damage:storage Motion set from entity @s Motion
function ranged_attack_damage:set_tp with storage ranged_attack_damage:storage
execute store result score @s ranged_attack_damage_decimal_part run data get entity @s Pos[1] 1000000000
data modify entity @s Pos set from storage ranged_attack_damage:storage Pos
data modify entity @s Rotation set from storage ranged_attack_damage:storage Rotation
data modify entity @s Motion set from storage ranged_attack_damage:storage Motion