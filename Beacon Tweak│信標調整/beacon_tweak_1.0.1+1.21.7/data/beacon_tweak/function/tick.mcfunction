execute as @e[type=marker,tag=beacon_marker] at @s unless block ~ ~ ~ beacon positioned ~ ~1 ~ if block ~ ~ ~ beacon unless entity @e[type=marker,tag=beacon_marker,distance=..0.1] run summon marker ~ ~ ~ {Tags:["beacon_marker"]}
execute as @e[type=marker,tag=beacon_marker] at @s unless block ~ ~ ~ beacon positioned ~ ~-1 ~ if block ~ ~ ~ beacon unless entity @e[type=marker,tag=beacon_marker,distance=..0.1] run summon marker ~ ~ ~ {Tags:["beacon_marker"]}
execute as @e[type=marker,tag=beacon_marker] at @s unless block ~ ~ ~ beacon positioned ~1 ~ ~ if block ~ ~ ~ beacon unless entity @e[type=marker,tag=beacon_marker,distance=..0.1] run summon marker ~ ~ ~ {Tags:["beacon_marker"]}
execute as @e[type=marker,tag=beacon_marker] at @s unless block ~ ~ ~ beacon positioned ~-1 ~ ~ if block ~ ~ ~ beacon unless entity @e[type=marker,tag=beacon_marker,distance=..0.1] run summon marker ~ ~ ~ {Tags:["beacon_marker"]}
execute as @e[type=marker,tag=beacon_marker] at @s unless block ~ ~ ~ beacon positioned ~ ~ ~1 if block ~ ~ ~ beacon unless entity @e[type=marker,tag=beacon_marker,distance=..0.1] run summon marker ~ ~ ~ {Tags:["beacon_marker"]}
execute as @e[type=marker,tag=beacon_marker] at @s unless block ~ ~ ~ beacon positioned ~ ~ ~-1 if block ~ ~ ~ beacon unless entity @e[type=marker,tag=beacon_marker,distance=..0.1] run summon marker ~ ~ ~ {Tags:["beacon_marker"]}
execute as @e[type=marker,tag=beacon_marker,tag=kill_2] run kill @s
execute as @e[type=marker,tag=beacon_marker,tag=kill_1] run tag @s add kill_2
execute as @e[type=marker,tag=beacon_marker,tag=kill] run tag @s add kill_1
execute as @e[type=marker,tag=beacon_marker] at @s unless block ~ ~ ~ beacon run tag @s add kill
execute store result score result cycle_4s run time query gametime
scoreboard players set 80 cycle_4s 80
scoreboard players operation result cycle_4s %= 80 cycle_4s
execute if score result cycle_4s matches 0 run tag @e[type=marker,tag=beacon_marker] remove close
execute if score result cycle_4s matches 0 as @e[type=marker,tag=beacon_marker] at @s if data block ~ ~ ~ primary_effect run function beacon_tweak:open_detection
execute if score result cycle_4s matches 0 at @e[type=marker,tag=beacon_marker,tag=!close] unless block ~ ~ ~ beacon{Levels:0} run function beacon_tweak:particle
execute if score result cycle_4s matches 0 at @e[type=marker,tag=beacon_marker,tag=!close] run function beacon_tweak:apply_effect