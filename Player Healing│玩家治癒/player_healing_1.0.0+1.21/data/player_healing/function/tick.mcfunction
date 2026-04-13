execute as @a[tag=player_healing_now] run attribute @s max_health modifier remove healing_amount
execute as @a[tag=player_healing_now] run tag @s remove player_healing_now
execute as @a[tag=player_healing] run tag @s add player_healing_now
execute as @a[tag=player_healing] run tag @s remove player_healing