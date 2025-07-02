scoreboard players add @e[type=minecraft:blaze,predicate=eternal_fire:is_on_fire] fire_time 1
scoreboard players set @e[type=minecraft:blaze,predicate=!eternal_fire:is_on_fire] fire_time -1
execute as @e[type=minecraft:blaze] store result score @s health run data get entity @s Health
execute as @e[type=minecraft:blaze] store result score @s lost_health run attribute @s minecraft:max_health get
execute as @e[type=minecraft:blaze] run scoreboard players operation @s lost_health -= @s health
scoreboard players set @e[type=minecraft:blaze,predicate=eternal_fire:is_on_fire] constant 10
execute as @e[type=minecraft:blaze,predicate=eternal_fire:is_on_fire] run scoreboard players operation @s temporary_storage = @s fire_time
execute as @e[type=minecraft:blaze,predicate=eternal_fire:is_on_fire] run scoreboard players operation @s temporary_storage %= @s constant
execute as @e[type=minecraft:blaze,predicate=eternal_fire:is_on_fire,scores={temporary_storage=0}] run function eternal_fire:add_armor
scoreboard players set @e[type=minecraft:blaze,predicate=eternal_fire:is_on_fire] constant 20
execute as @e[type=minecraft:blaze,predicate=eternal_fire:is_on_fire] run scoreboard players operation @s temporary_storage = @s fire_time
execute as @e[type=minecraft:blaze,predicate=eternal_fire:is_on_fire] run scoreboard players operation @s temporary_storage %= @s constant
execute as @e[type=minecraft:blaze,predicate=eternal_fire:is_on_fire,scores={temporary_storage=0,lost_health=1..}] run effect give @s minecraft:regeneration 1 2 true
execute as @e[type=minecraft:blaze,predicate=!eternal_fire:is_on_fire] run attribute @s minecraft:armor modifier remove minecraft:flame_armor
execute as @e[type=minecraft:blaze,predicate=!eternal_fire:is_on_fire] run attribute @s minecraft:armor_toughness modifier remove minecraft:flame_armor
execute at @e[type=minecraft:blaze] if block ~1 ~1 ~1 air run setblock ~1 ~1 ~1 fire
execute at @e[type=minecraft:blaze] if block ~1 ~1 ~ air run setblock ~1 ~1 ~ fire
execute at @e[type=minecraft:blaze] if block ~1 ~1 ~-1 air run setblock ~1 ~1 ~-1 fire
execute at @e[type=minecraft:blaze] if block ~ ~1 ~1 air run setblock ~ ~1 ~1 fire
execute at @e[type=minecraft:blaze] if block ~ ~1 ~ air run setblock ~ ~1 ~ fire
execute at @e[type=minecraft:blaze] if block ~ ~1 ~-1 air run setblock ~ ~1 ~-1 fire
execute at @e[type=minecraft:blaze] if block ~-1 ~1 ~1 air run setblock ~-1 ~1 ~1 fire
execute at @e[type=minecraft:blaze] if block ~-1 ~1 ~ air run setblock ~-1 ~1 ~ fire
execute at @e[type=minecraft:blaze] if block ~-1 ~1 ~-1 air run setblock ~-1 ~1 ~-1 fire
execute at @e[type=minecraft:blaze] if block ~1 ~-1 ~1 air run setblock ~1 ~-1 ~1 fire
execute at @e[type=minecraft:blaze] if block ~1 ~-1 ~ air run setblock ~1 ~ ~-1 fire
execute at @e[type=minecraft:blaze] if block ~1 ~-1 ~-1 air run setblock ~1 ~-1 ~-1 fire
execute at @e[type=minecraft:blaze] if block ~ ~-1 ~1 air run setblock ~ ~-1 ~1 fire
execute at @e[type=minecraft:blaze] if block ~ ~-1 ~ air run setblock ~ ~-1 ~ fire
execute at @e[type=minecraft:blaze] if block ~ ~-1 ~-1 air run setblock ~ ~-1 ~-1 fire
execute at @e[type=minecraft:blaze] if block ~-1 ~-1 ~1 air run setblock ~-1 ~-1 ~1 fire
execute at @e[type=minecraft:blaze] if block ~-1 ~-1 ~ air run setblock ~-1 ~-1 ~ fire
execute at @e[type=minecraft:blaze] if block ~-1 ~-1 ~-1 air run setblock ~-1 ~-1 ~-1 fire
execute at @e[type=minecraft:blaze] if block ~1 ~ ~1 air run setblock ~1 ~ ~1 fire
execute at @e[type=minecraft:blaze] if block ~1 ~ ~ air run setblock ~1 ~ ~ fire
execute at @e[type=minecraft:blaze] if block ~1 ~ ~-1 air run setblock ~1 ~ ~-1 fire
execute at @e[type=minecraft:blaze] if block ~ ~ ~1 air run setblock ~ ~ ~1 fire
execute at @e[type=minecraft:blaze] if block ~ ~ ~ air run setblock ~ ~ ~ fire
execute at @e[type=minecraft:blaze] if block ~ ~ ~-1 air run setblock ~ ~ ~-1 fire
execute at @e[type=minecraft:blaze] if block ~-1 ~ ~1 air run setblock ~-1 ~ ~1 fire
execute at @e[type=minecraft:blaze] if block ~-1 ~ ~ air run setblock ~-1 ~ ~ fire
execute at @e[type=minecraft:blaze] if block ~-1 ~ ~-1 air run setblock ~-1 ~ ~-1 fire
execute as @e[type=minecraft:small_fireball] at @s unless predicate {condition:"entity_properties",entity:"this",predicate:{passenger:{type:"marker",nbt:"{Tags:[\"flame_explosion\"]}"}}} on origin if entity @s[type=blaze] summon marker run function eternal_fire:set_marker
execute as @e[type=minecraft:marker,tag=flame_explosion] at @s unless predicate {condition:"entity_properties",entity:"this",predicate:{vehicle:{type:"small_fireball"}}} run function eternal_fire:flame_explosion with entity @s data
execute at @e[type=minecraft:blaze] if block ~ ~-0.1 ~ water run setblock ~ ~-0.1 ~ cobblestone