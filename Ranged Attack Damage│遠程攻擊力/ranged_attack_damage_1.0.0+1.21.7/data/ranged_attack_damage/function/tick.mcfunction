scoreboard players set @e[type=#ranged_attack_damage:mobs,tag=!ranged_attack_damage] ranged_attack_damage 2
scoreboard players set @e[type=#ranged_attack_damage:mobs,tag=!ranged_attack_damage] ranged_attack_damage_decimal_part 0
tag @e[type=#ranged_attack_damage:mobs,tag=!ranged_attack_damage] add ranged_attack_damage
execute as @e[type=arrow,nbt={weapon:{id:"minecraft:bow"}},tag=!ranged_attack_damage] if data entity @s Owner at @s run function ranged_attack_damage:set_damage
execute as @e[type=arrow,nbt={weapon:{id:"minecraft:crossbow"}},tag=!ranged_attack_damage] if data entity @s Owner at @s run function ranged_attack_damage:set_damage
#execute as @e[type=trident,tag=!ranged_attack_damage] if data entity @s Owner at @s run function ranged_attack_damage:set_damage