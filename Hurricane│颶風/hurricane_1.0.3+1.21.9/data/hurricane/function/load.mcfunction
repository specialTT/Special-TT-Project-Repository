scoreboard objectives add wind_net dummy
scoreboard objectives add breeze_attack_cooldown dummy
scoreboard objectives add hurricane.health dummy
execute unless data storage hurricane:config wind_net_max_stacking_layers run data modify storage hurricane:config wind_net_max_stacking_layers set value 2