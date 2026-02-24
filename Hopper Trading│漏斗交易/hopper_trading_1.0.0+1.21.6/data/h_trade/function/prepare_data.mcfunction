data modify storage h_trade:main RawItems set from block ~ ~ ~ Items
data modify storage h_trade:main Summary set value []
data modify storage h_trade:main temp_idx set from entity @s data.index
scoreboard players set @s h_cooldown 20
execute if data storage h_trade:main RawItems[0] run function h_trade:sum_recursion