execute in overworld as @e[type=trident] if predicate {condition:"entity_properties",entity:"this",predicate:{location:{dimension:"minecraft:overworld",position:{y:{max:-96}}}}} run data modify entity @s DealtDamage set value 1b
execute in the_nether as @e[type=trident] if predicate {condition:"entity_properties",entity:"this",predicate:{location:{dimension:"minecraft:the_nether",position:{y:{max:-32}}}}} run data modify entity @s DealtDamage set value 1b
execute in the_end as @e[type=trident] if predicate {condition:"entity_properties",entity:"this",predicate:{location:{dimension:"minecraft:the_end",position:{y:{max:-32}}}}} run data modify entity @s DealtDamage set value 1b