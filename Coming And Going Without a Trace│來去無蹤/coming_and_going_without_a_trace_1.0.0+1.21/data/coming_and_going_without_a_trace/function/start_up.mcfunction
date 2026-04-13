scoreboard players set detection health 0
execute on attacker if entity @s[scores={health=0}] run scoreboard players set detection health 1
execute on attacker unless score @s health matches -2147483648..2147483647 run scoreboard players set detection health 1
execute if score detection health matches 0 run return fail
execute store result score max health run attribute @s max_health get 1000000
execute store result score current health run data get entity @s Health 1000000
scoreboard players operation max health /= current health
execute unless score max health matches 2.. run return fail
execute on attacker at @s run function coming_and_going_without_a_trace:apply
particle enchanted_hit ~ ~ ~ 1 0 1 1 100
clear @s totem_of_undying[custom_data={id:"eye_of_disturbance"}] 1
execute if entity @s[type=!player] if predicate {condition:"entity_properties",entity:"this",predicate:{equipment:{mainhand:{items:"totem_of_undying",predicates:{custom_data:{id:"eye_of_disturbance"}}}}}} run item replace entity @s weapon.mainhand with air
execute if entity @s[type=!player] unless predicate {condition:"entity_properties",entity:"this",predicate:{equipment:{mainhand:{items:"totem_of_undying",predicates:{custom_data:{id:"eye_of_disturbance"}}}}}} run item replace entity @s weapon.offhand with air