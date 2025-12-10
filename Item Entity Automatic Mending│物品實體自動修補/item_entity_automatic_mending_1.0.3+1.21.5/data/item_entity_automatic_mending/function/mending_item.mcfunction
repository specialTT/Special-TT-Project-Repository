execute at @n[type=experience_orb] run particle minecraft:smoke
execute at @n[type=experience_orb] run particle minecraft:smoke
execute at @n[type=experience_orb] run particle minecraft:smoke
execute at @n[type=experience_orb] run particle minecraft:smoke
execute at @n[type=experience_orb] run particle minecraft:smoke
execute at @n[type=experience_orb] run particle minecraft:smoke
execute as @n[type=experience_orb] if entity @s[nbt={Count:1}] run kill @n[type=experience_orb,nbt={Count:1}]
execute as @n[type=experience_orb] unless entity @s[nbt={Count:1}] run function item_entity_automatic_mending:count_remove_one
execute store result score @s item_damage run data get entity @s Item.components."minecraft:damage"
execute store result score @s item_damage run data get entity @s Item.components."minecraft:damage"
$execute if predicate {condition:"entity_properties",entity:"this",predicate:{slots:{container.0:{predicates:{"minecraft:enchantments":[{enchantments:"minecraft:mending",levels:{min:1,max:255}}]}}}}} run scoreboard players remove @s item_damage $(Value)
$execute if predicate {condition:"entity_properties",entity:"this",predicate:{slots:{container.0:{predicates:{"minecraft:enchantments":[{enchantments:"minecraft:mending",levels:{min:1,max:255}}]}}}}} run scoreboard players remove @s item_damage $(Value)
$execute if predicate {condition:"entity_properties",entity:"this",predicate:{slots:{container.0:{predicates:{"minecraft:enchantments":[{enchantments:"minecraft:mending",levels:{min:2,max:255}}]}}}}} run scoreboard players remove @s item_damage $(Value)
$execute if predicate {condition:"entity_properties",entity:"this",predicate:{slots:{container.0:{predicates:{"minecraft:enchantments":[{enchantments:"minecraft:mending",levels:{min:2,max:255}}]}}}}} run scoreboard players remove @s item_damage $(Value)
$execute if predicate {condition:"entity_properties",entity:"this",predicate:{slots:{container.0:{predicates:{"minecraft:enchantments":[{enchantments:"minecraft:mending",levels:{min:3,max:255}}]}}}}} run scoreboard players remove @s item_damage $(Value)
$execute if predicate {condition:"entity_properties",entity:"this",predicate:{slots:{container.0:{predicates:{"minecraft:enchantments":[{enchantments:"minecraft:mending",levels:{min:3,max:255}}]}}}}} run scoreboard players remove @s item_damage $(Value)
$execute if predicate {condition:"entity_properties",entity:"this",predicate:{slots:{container.0:{predicates:{"minecraft:enchantments":[{enchantments:"minecraft:mending",levels:{min:4,max:255}}]}}}}} run scoreboard players remove @s item_damage $(Value)
$execute if predicate {condition:"entity_properties",entity:"this",predicate:{slots:{container.0:{predicates:{"minecraft:enchantments":[{enchantments:"minecraft:mending",levels:{min:4,max:255}}]}}}}} run scoreboard players remove @s item_damage $(Value)
$execute if predicate {condition:"entity_properties",entity:"this",predicate:{slots:{container.0:{predicates:{"minecraft:enchantments":[{enchantments:"minecraft:mending",levels:{min:5,max:255}}]}}}}} run scoreboard players remove @s item_damage $(Value)
$execute if predicate {condition:"entity_properties",entity:"this",predicate:{slots:{container.0:{predicates:{"minecraft:enchantments":[{enchantments:"minecraft:mending",levels:{min:5,max:255}}]}}}}} run scoreboard players remove @s item_damage $(Value)
$execute if predicate {condition:"entity_properties",entity:"this",predicate:{slots:{container.0:{predicates:{"minecraft:enchantments":[{enchantments:"minecraft:mending",levels:{min:6,max:255}}]}}}}} run scoreboard players remove @s item_damage $(Value)
$execute if predicate {condition:"entity_properties",entity:"this",predicate:{slots:{container.0:{predicates:{"minecraft:enchantments":[{enchantments:"minecraft:mending",levels:{min:6,max:255}}]}}}}} run scoreboard players remove @s item_damage $(Value)
scoreboard players set @s[scores={item_damage=..0}] item_damage 0
execute store result entity @s Item.components."minecraft:damage" int 1 run scoreboard players get @s item_damage
scoreboard players set @s mending_cooldown 2
playsound entity.villager.work_mason player @a ~ ~ ~ 1 2
particle minecraft:happy_villager
particle minecraft:happy_villager
particle minecraft:happy_villager
particle minecraft:happy_villager
particle minecraft:happy_villager