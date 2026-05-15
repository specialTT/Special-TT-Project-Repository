execute store result score @s hurricane.health run data get entity @s Health
scoreboard players add @s hurricane.health 1
execute store result entity @s Health float 1 run scoreboard players get @s hurricane.health