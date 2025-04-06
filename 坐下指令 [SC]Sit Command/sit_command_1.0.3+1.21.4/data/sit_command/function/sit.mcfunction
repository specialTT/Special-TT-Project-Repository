execute if predicate {condition:"entity_properties",entity:"this",predicate:{flags:{is_on_ground:true}}} unless block ~ ~-1 ~ air run summon minecraft:interaction ~ ~ ~ {height:0,width:0,Tags:["sit"]}
execute if predicate {condition:"entity_properties",entity:"this",predicate:{flags:{is_on_ground:true}}} unless block ~ ~-1 ~ air run ride @s mount @n[type=minecraft:interaction,tag=sit]
tag @s add sit
scoreboard players enable @a sit
scoreboard players set @s sit 0