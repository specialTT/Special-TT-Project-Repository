execute unless entity @s[type=player] run return fail
data remove storage player_healing:storage modifiers
data modify storage player_healing:storage modifiers set from entity @s attributes[{id:"minecraft:max_health"}].modifiers
scoreboard players set result player_healing 100
scoreboard players set multiplied_base player_healing 100
execute if data storage player_healing:storage modifiers[0] run function player_healing:modifiers
scoreboard players operation result player_healing *= multiplied_base player_healing
scoreboard players set 100 player_healing 100
execute if data storage player_healing:storage {temp_modifier:{operation:"add_multiplied_total"}} run scoreboard players operation result player_healing /= 100 player_healing
$data modify storage player_healing:storage healing_amount set value $(healing_amount)
execute store result score healing_amount player_healing run data get storage player_healing:storage healing_amount 10000
execute store result score health player_healing run data get entity @s Health 10000
execute store result score max_health player_healing run attribute @s max_health get 10000
scoreboard players operation health player_healing -= max_health player_healing
scoreboard players operation health player_healing += healing_amount player_healing
scoreboard players operation health player_healing /= result player_healing
execute if score health player_healing matches 0.. run scoreboard players set health player_healing 0
execute store result storage player_healing:storage healing_amount double 1 run scoreboard players get health player_healing
function player_healing:max_health with storage player_healing:storage
effect give @s instant_health 1 28 true
tag @s add player_healing