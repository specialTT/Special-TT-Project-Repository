execute as @e[type=minecraft:item] if items entity @s container.0 minecraft:nether_star run data modify entity @s Age set value 0s
schedule function eternal_nether_star:reset_time 270s