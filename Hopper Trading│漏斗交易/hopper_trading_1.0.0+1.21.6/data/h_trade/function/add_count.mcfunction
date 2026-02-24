$execute store result score #old h_temp run data get storage h_trade:main Summary[{id:"$(id)"}].total
$scoreboard players set #add h_temp $(add)
scoreboard players operation #old h_temp += #add h_temp
$execute store result storage h_trade:main Summary[{id:"$(id)"}].total int 1 run scoreboard players get #old h_temp