scoreboard players enable @a h_set_trigger
execute as @e[type=marker,tag=h_trade_marker] unless score @s h_cooldown matches -2147483648..2147483647 if data entity @s data.index run scoreboard players set @s h_cooldown 0
execute as @e[type=marker,tag=h_trade_marker,scores={h_cooldown=1..}] run scoreboard players remove @s h_cooldown 1
execute as @e[type=marker,tag=h_trade_marker,scores={h_cooldown=..0}] at @s if block ~ ~ ~ minecraft:hopper[facing=down,enabled=true] if block ~ ~-1 ~ air run function h_trade:prepare_data
execute as @e[type=marker,tag=h_trade_marker] if data entity @s data.setter run function h_trade:set with entity @s data
execute as @e[type=marker,tag=h_trade_marker] at @s unless block ~ ~ ~ hopper run kill @s
execute as @a[tag=set_index] run dialog show @s h_trade:set_index
execute as @a[tag=set_index] run tag @s remove set_index
execute as @a[scores={use_hopper=1..}] if predicate {condition:"entity_properties",entity:"this",predicate:{flags:{is_sneaking:true}}} at @s run function h_trade:show_ui
execute as @a[scores={use_hopper=1..}] if predicate {condition:"entity_properties",entity:"this",predicate:{flags:{is_sneaking:true}}} run tag @s add set_index
execute as @a[scores={use_hopper=1..}] run scoreboard players set @s use_hopper 0