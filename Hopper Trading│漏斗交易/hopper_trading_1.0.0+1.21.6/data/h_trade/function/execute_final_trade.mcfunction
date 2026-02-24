$data modify storage h_trade:main TradeA.id set from entity @n[type=villager, nbt={UUID:$(TargetVillagerUUID)}] Offers.Recipes[$(temp_idx)].buy.id
data modify storage h_trade:main TradeA.count set value 1
$data modify storage h_trade:main TradeA.count set from entity @n[type=villager, nbt={UUID:$(TargetVillagerUUID)}] Offers.Recipes[$(temp_idx)].buy.count
data remove storage h_trade:main TradeB
$data modify storage h_trade:main TradeB.id set from entity @n[type=villager, nbt={UUID:$(TargetVillagerUUID)}] Offers.Recipes[$(temp_idx)].buyB.id
execute if data storage h_trade:main TradeB.id run data modify storage h_trade:main TradeB.count set value 1
$execute if data storage h_trade:main TradeB.id run data modify storage h_trade:main TradeB.count set from entity @n[type=villager, nbt={UUID:$(TargetVillagerUUID)}] Offers.Recipes[$(temp_idx)].buyB.count
function h_trade:physical_deduct with storage h_trade:main TradeA
execute if data storage h_trade:main TradeB.id run function h_trade:physical_deduct with storage h_trade:main TradeB
$data modify storage h_trade:main Tempsell set from entity @n[type=villager, nbt={UUID:$(TargetVillagerUUID)}] Offers.Recipes[$(temp_idx)].sell
scoreboard players set temp_add_xp h_temp 1
$execute store result score temp_add_xp h_temp run data get entity @n[type=villager, nbt={UUID:$(TargetVillagerUUID)}] Offers.Recipes[$(temp_idx)].xp
scoreboard players set temp_xp h_temp 0
$execute store result score temp_xp h_temp run data get entity @n[type=villager, nbt={UUID:$(TargetVillagerUUID)}] Xp
scoreboard players operation temp_xp h_temp += temp_add_xp h_temp
$execute store result entity @n[type=villager, nbt={UUID:$(TargetVillagerUUID)}] Xp int 1 run scoreboard players get temp_xp h_temp
$execute as @n[type=villager, nbt={UUID:$(TargetVillagerUUID)}] at @s run function h_trade:finalize_village_action with storage h_trade:main