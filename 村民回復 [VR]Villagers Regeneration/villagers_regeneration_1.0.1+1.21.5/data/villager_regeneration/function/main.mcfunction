execute as @e[type=villager] store success score @s is_sleeping run data get entity @s sleeping_pos
execute as @e[type=minecraft:villager] store result score @s health run data get entity @s Health
execute as @e[type=minecraft:villager] store result score @s lost_health run attribute @s minecraft:max_health get
execute as @e[type=minecraft:villager] run scoreboard players operation @s lost_health -= @s health
execute as @e[type=minecraft:villager,scores={is_sleeping=1,lost_health=1..}] unless predicate {condition:"entity_properties",entity:"this",predicate:{effects:{regeneration:{}}}} run effect give @s minecraft:regeneration 1 2 true