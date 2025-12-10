execute as @e[type=piglin] if predicate {condition:"entity_properties",entity:"this",predicate:{flags:{is_baby:true}}} unless score @s piglin_age matches -2147483648..2147483647 run scoreboard players set @s piglin_age 24000
execute as @e[type=piglin] if predicate {condition:"entity_properties",entity:"this",predicate:{flags:{is_baby:true}}} unless entity @s[nbt={NoAI:1b}] run scoreboard players remove @s piglin_age 1
execute as @e[type=piglin,scores={piglin_age=0}] at @s run function piglin_growth:piglin
execute as @e[type=piglin,scores={piglin_age=0}] if predicate {condition:"random_chance",chance:0.05} at @s run function piglin_growth:brute
execute as @e[type=piglin,scores={piglin_age=0}] run scoreboard players reset @s piglin_age