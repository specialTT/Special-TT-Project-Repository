execute store result score @s experience_orb_count run data get entity @s Count
scoreboard players remove @s experience_orb_count 1
execute store result entity @s Count int 1 run scoreboard players get @s experience_orb_count