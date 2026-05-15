execute store result score temp amplifier run data get entity @s active_effects[{id:"minecraft:absorption"}].amplifier
execute if score temp amplifier matches ..-1 run scoreboard players add temp amplifier 256
execute store result score temp duration run data get entity @s active_effects[{id:"minecraft:absorption"}].duration
execute if score @s duration = temp duration if score @s amplifier = temp amplifier run return fail
scoreboard players add temp amplifier 1
scoreboard players operation @s amplifier += temp amplifier
scoreboard players operation remove amplifier = @s amplifier
execute if score @s amplifier matches 10.. run scoreboard players remove remove amplifier 9
scoreboard players set 1000000 amplifier 4000000
execute if score @s amplifier matches 10.. run scoreboard players operation remove amplifier *= 1000000 amplifier
execute if score @s amplifier matches 10.. run scoreboard players operation @s absorption -= remove amplifier
execute if score @s amplifier matches 10.. if score @s absorption matches ..0 run scoreboard players set @s absorption 0
execute if score @s amplifier matches 10.. run scoreboard players set @s amplifier 9
scoreboard players operation @s duration > temp duration
execute store result storage stackable_absorption:storage amplifier int 1 run scoreboard players get @s amplifier
execute store result storage stackable_absorption:storage duration int 0.05 run scoreboard players get @s duration
execute store result storage stackable_absorption:storage absorption double 0.000001 run scoreboard players get @s absorption
execute if predicate {condition:"entity_properties",entity:"this",predicate:{effects:{absorption:{visible:true}}}} run function stackable_absorption:effect with storage stackable_absorption:storage
execute if predicate {condition:"entity_properties",entity:"this",predicate:{effects:{absorption:{visible:false}}}} run function stackable_absorption:hidden_effect with storage stackable_absorption:storage