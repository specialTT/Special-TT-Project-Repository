data modify storage h_trade:main TempItem.id set from storage h_trade:main RawItems[0].id
data modify storage h_trade:main TempItem.count set from storage h_trade:main RawItems[0].count
function h_trade:macro_sum_logic with storage h_trade:main TempItem
data remove storage h_trade:main RawItems[0]
execute if data storage h_trade:main RawItems[0] run function h_trade:sum_recursion
execute unless data storage h_trade:main RawItems[0] run data remove storage h_trade:main TargetVillagerUUID
execute unless data storage h_trade:main RawItems[0] positioned ~ ~-1 ~ as @e[type=villager,dx=0,dy=0,dz=0] positioned ~ ~-1 ~ if entity @s[dx=0,dy=0,dz=0] run function h_trade:check_trade with storage h_trade:main
execute unless data storage h_trade:main RawItems[0] if data storage h_trade:main TargetVillagerUUID run function h_trade:execute_final_trade with storage h_trade:main