execute as @e[type=breeze] at @s if predicate {condition:"entity_properties",entity:"this",predicate:{targeted_entity:{distance:{absolute:{min:0,max:1.5}}}}} run data remove entity @s Brain.memories."minecraft:breeze_shoot_charging"
execute as @e[type=breeze,nbt={Brain:{memories:{"minecraft:breeze_shoot_charging":{ttl:0L,value:{}}}}}] run function hurricane:breeze_shoot
execute as @e[type=breeze,scores={wind_net=..2}] run function hurricane:wind_net with entity @s
execute as @e[type=breeze,scores={wind_net=1..}] at @s run particle gust ~ ~ ~ 0.3 0.3 0.3 0 1
execute as @e[type=breeze,scores={wind_net=1..}] run effect give @s resistance 1 3 true
execute at @e[type=breeze,scores={wind_net=1..},nbt={HurtTime:10s}] run particle gust ~ ~ ~ 1 1 1 0.5 100
execute as @e[type=breeze,scores={wind_net=1..},nbt={HurtTime:10s}] run effect give @s regeneration 1 2 false
execute as @e[type=breeze,scores={wind_net=1..},nbt={HurtTime:10s}] run scoreboard players remove @s wind_net 1
execute as @e[type=breeze,scores={wind_net=..0}] run effect clear @s resistance
execute as @e[type=breeze] unless score @s breeze_attack_cooldown matches -2147483648..2147483647 run scoreboard players set @s breeze_attack_cooldown 0
execute as @e[type=breeze,scores={breeze_attack_cooldown=0}] at @s if predicate {condition:"entity_properties",entity:"this",predicate:{targeted_entity:{distance:{absolute:{min:0,max:1.5}}}}} run function hurricane:attack with entity @s
scoreboard players remove @e[type=breeze,scores={breeze_attack_cooldown=1..}] breeze_attack_cooldown 1