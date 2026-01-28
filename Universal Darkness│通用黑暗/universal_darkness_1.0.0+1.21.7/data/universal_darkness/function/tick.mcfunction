execute as @e[type=#universal_darkness:using_visual_perception] at @s if predicate {condition:"entity_properties",entity:"this",predicate:{effects:{darkness:{}}}} run function universal_darkness:add_effects with entity @s attributes.[{id:"minecraft:follow_range"}]
execute as @e[type=#universal_darkness:using_visual_perception] at @s unless predicate {condition:"entity_properties",entity:"this",predicate:{effects:{darkness:{}}}} run function universal_darkness:remove_effects
execute store result score result cycle_6s run time query gametime
scoreboard players set 120 cycle_6s 120
scoreboard players operation result cycle_6s %= 120 cycle_6s
scoreboard players set @e[type=#universal_darkness:using_visual_perception,type=!player] cycle_6s 0
execute as @e[type=#universal_darkness:using_visual_perception,type=!player] store result score @s cycle_6s run data get entity @s active_effects[{id:"minecraft:darkness"}].duration
execute if score result cycle_6s matches 0 at @e[type=warden] run effect give @e[distance=..20,scores={cycle_6s=..200},type=#universal_darkness:using_visual_perception,type=!player] darkness 13 0 true