advancement revoke @s only sgwt:player_interacted_with_wandering_trader
function sgwt:remove_nbt with entity @s
execute at @s anchored eyes run function sgwt:ray with entity @s
execute if entity @e[type=wandering_trader,tag=say_goodbye] run scoreboard players enable @s say_goodbye
execute if entity @e[type=wandering_trader,tag=say_goodbye] run dialog show @s sgwt:say_goodbye_check
execute as @e[type=wandering_trader,tag=say_goodbye] run tag @s remove say_goodbye