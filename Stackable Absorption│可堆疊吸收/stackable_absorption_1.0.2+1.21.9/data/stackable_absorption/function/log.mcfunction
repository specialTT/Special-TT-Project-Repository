execute store result score @s amplifier run data get entity @s active_effects[{id:"minecraft:absorption"}].amplifier
execute if score @s amplifier matches ..-1 run scoreboard players add @s amplifier 256
execute store result score @s duration run data get entity @s active_effects[{id:"minecraft:absorption"}].duration
scoreboard players remove @s duration 1
execute store result score @s absorption run attribute @s minecraft:max_absorption modifier value get minecraft:effect.absorption 1000000
execute store result score temp absorption run data get entity @s AbsorptionAmount 1000000
scoreboard players operation @s absorption -= temp absorption