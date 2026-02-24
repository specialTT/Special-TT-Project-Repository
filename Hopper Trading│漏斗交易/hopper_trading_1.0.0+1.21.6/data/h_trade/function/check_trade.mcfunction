$data modify storage h_trade:main TradeA.id set from entity @s Offers.Recipes[$(temp_idx)].buy.id
data modify storage h_trade:main TradeA.count set value 1
$data modify storage h_trade:main TradeA.count set from entity @s Offers.Recipes[$(temp_idx)].buy.count
data remove storage h_trade:main TradeB
$data modify storage h_trade:main TradeB.id set from entity @s Offers.Recipes[$(temp_idx)].buyB.id
execute if data storage h_trade:main TradeB.id run data modify storage h_trade:main TradeB.count set value 1
$data modify storage h_trade:main TradeB.count set from entity @s Offers.Recipes[$(temp_idx)].buyB.count
scoreboard players set trade_match h_temp 1
$execute store result score uses h_temp run data get entity @s Offers.Recipes[$(temp_idx)].uses
$execute store result score max_u h_temp run data get entity @s Offers.Recipes[$(temp_idx)].maxUses
execute if score uses h_temp >= max_u h_temp run scoreboard players set trade_match h_temp 0
execute if score trade_match h_temp matches 1 run function h_trade:verify_deduct_a with storage h_trade:main TradeA