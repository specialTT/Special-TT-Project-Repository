$execute if predicate {condition:"entity_properties",entity:"this",predicate:{slots:{container.0:{predicates:{custom_data:{chance:1b}}}}}} unless predicate {condition:"random_chance",chance:$(chance)} run kill @s
data remove entity @s Item.components."minecraft:custom_data".chance
tag @s remove check