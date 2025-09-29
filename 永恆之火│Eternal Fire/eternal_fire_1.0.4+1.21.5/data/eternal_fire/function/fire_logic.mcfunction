execute if entity @s[scores={in_fire=1}] run scoreboard players add @s fire_logic 1
execute if entity @s[scores={fire_logic=..0}] run scoreboard players add @s fire_logic 1
execute if entity @s[scores={fire_logic=1..,fire_cycle=20}] run scoreboard players add @s fire_logic 1
scoreboard players add @s fire_cycle 1
execute if entity @s[scores={fire_cycle=21}] run scoreboard players set @s fire_cycle 0
execute unless predicate {condition:"all_of",terms:[{condition:"entity_properties",entity:"this",predicate:{movement:{x:{min:-0.00000000001,max:0.00000000001}}}},{condition:"entity_properties",entity:"this",predicate:{movement:{y:{min:-0.00000000001,max:0.00000000001}}}},{condition:"entity_properties",entity:"this",predicate:{movement:{z:{min:-0.00000000001,max:0.00000000001}}}}]} run scoreboard players add @s fire_logic 1
execute if entity @s[scores={fire_logic=0..159}] run scoreboard players set @s fire_logic 160
scoreboard players set @s in_fire 2