
scoreboard players set actual h_temp 0
$execute store result score actual h_temp run data get storage h_trade:main Summary[{id:"$(id)"}].total
$scoreboard players set need h_temp $(count)
execute if score actual h_temp < need h_temp run scoreboard players set trade_match h_temp 0
execute if score trade_match h_temp matches 1 run scoreboard players operation actual h_temp -= need h_temp
$execute if score trade_match h_temp matches 1 store result storage h_trade:main Summary[{id:"$(id)"}].total int 1 run scoreboard players get actual h_temp
execute if score trade_match h_temp matches 1 if data storage h_trade:main TradeB.id run function h_trade:verify_deduct_b with storage h_trade:main TradeB
execute if score trade_match h_temp matches 1 unless data storage h_trade:main TradeB.id run data modify storage h_trade:main TargetVillagerUUID set from entity @s UUID