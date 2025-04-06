$execute as @e[tag=!$(effect)] at @s if predicate {condition:"entity_properties",entity:"this",predicate:{effects:{$(effect):{}}}} run function effect_sound:get_effect {volume:"$(volume)",pitch:"$(pitch)",sound:"$(sound)",effect:"$(effect)"}
$execute as @e[tag=$(effect)] unless predicate {condition:"entity_properties",entity:"this",predicate:{effects:{$(effect):{}}}} run tag @s remove $(effect)