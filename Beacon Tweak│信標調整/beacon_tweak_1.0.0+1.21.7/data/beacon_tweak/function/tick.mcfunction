execute as @e[type=marker,tag=beacon_marker] at @s unless block ~ ~ ~ beacon run kill @s
execute store result score result cycle_4s run time query gametime
scoreboard players set 80 cycle_4s 80
scoreboard players operation result cycle_4s %= 80 cycle_4s
execute if score result cycle_4s matches 70 run tag @e[type=marker,tag=beacon_marker] remove close
execute if score result cycle_4s matches 70 as @e[type=marker,tag=beacon_marker] at @s if data block ~ ~ ~ primary_effect run function beacon_tweak:open_detection
execute if score result cycle_4s matches 70 at @e[type=marker,tag=beacon_marker,tag=!close] run function beacon_tweak:particle
execute if score result cycle_4s matches 0 at @e[type=marker,tag=beacon_marker,tag=!close] run function beacon_tweak:apply_effect