execute store result score temp amplifier run data get entity @s active_effects[{id:"minecraft:absorption"}].amplifier
execute if score temp amplifier matches ..-1 run scoreboard players add temp amplifier 256
execute store result score temp duration run data get entity @s active_effects[{id:"minecraft:absorption"}].duration
execute if score @s duration = temp duration if score @s amplifier = temp amplifier run return fail
scoreboard players add temp amplifier 1
scoreboard players operation @s amplifier += temp amplifier
scoreboard players operation @s duration > temp duration
execute store result storage stackable_absorption:storage amplifier int 1 run scoreboard players get @s amplifier
execute store result storage stackable_absorption:storage duration int 0.05 run scoreboard players get @s duration
execute store result storage stackable_absorption:storage absorption double 0.000001 run scoreboard players get @s absorption
execute if predicate {condition:"entity_properties",entity:"this",predicate:{effects:{absorption:{visible:true}}}} run function stackable_absorption:effect with storage stackable_absorption:storage
execute if predicate {condition:"entity_properties",entity:"this",predicate:{effects:{absorption:{visible:false}}}} run function stackable_absorption:hidden_effect with storage stackable_absorption:storage