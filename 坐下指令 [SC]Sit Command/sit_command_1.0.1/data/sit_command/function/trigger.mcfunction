execute as @a[scores={sit=1}] at @s run function sit_command:sit
execute as @e[type=interaction,tag=sit] at @s unless entity @a[distance=..0.7] run kill @s
execute as @e[type=player,tag=sit] at @s unless entity @e[type=interaction,distance=..0.7] run tag @s remove sit
execute as @e[type=player,tag=sit] at @s run execute if block ~ ~ ~ air run function sit_command:dismount