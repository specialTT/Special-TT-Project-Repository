execute as @a[scores={sit=1}] at @s run function sit_command:sit
execute as @e[type=interaction,tag=sit] at @s unless entity @a[distance=..0.7] run kill @s