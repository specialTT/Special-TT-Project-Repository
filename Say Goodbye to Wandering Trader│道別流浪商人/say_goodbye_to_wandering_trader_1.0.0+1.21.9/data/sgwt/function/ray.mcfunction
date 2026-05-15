execute as @e[type=wandering_trader,dx=0] positioned ~-1 ~-1 ~-1 if entity @s[dx=0] run tag @s add say_goodbye
execute unless entity @e[type=wandering_trader,tag=say_goodbye] positioned ^ ^ ^0.1 if entity @s[distance=..65] run function sgwt:ray with entity @s
$execute as @e[type=wandering_trader,tag=say_goodbye] at @s run data modify entity @s data.player_UUID set value $(UUID)