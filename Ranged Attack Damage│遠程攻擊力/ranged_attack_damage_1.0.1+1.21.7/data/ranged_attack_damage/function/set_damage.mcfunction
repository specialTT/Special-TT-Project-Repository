data modify entity @s data.Pos set from entity @s Pos
data modify entity @s data.Rotation set from entity @s Rotation
data modify entity @s data.Motion set from entity @s Motion
execute on origin store result storage ranged_attack_damage:storage ranged_attack_damage double 1 run scoreboard players get @s ranged_attack_damage
execute on origin store result storage ranged_attack_damage:storage ranged_attack_damage_decimal_part double 0.000000001 run scoreboard players get @s ranged_attack_damage_decimal_part
execute on origin store result storage ranged_attack_damage:storage strength double 0.25 run data get entity @s attributes[{id:"minecraft:attack_damage"}].modifiers[{id:"minecraft:effect.strength"}].amount
execute on origin store result storage ranged_attack_damage:storage weakness double 0.25 run data get entity @s attributes[{id:"minecraft:attack_damage"}].modifiers[{id:"minecraft:effect.weakness"}].amount
function ranged_attack_damage:tp with storage ranged_attack_damage:storage
data modify entity @s damage set from entity @s Pos[1]
data modify entity @s Pos set from entity @s data.Pos
data modify entity @s Rotation set from entity @s data.Rotation
data modify entity @s Motion set from entity @s data.Motion
tag @s add ranged_attack_damage