scoreboard players remove @s distance 1
execute align xyz if block ~ ~ ~ water_cauldron unless entity @e[distance=..0.01,type=marker,tag=water_cauldron] run summon marker ~ ~ ~ {Tags:["water_cauldron"]}
execute align xyz if block ~ ~ ~ lava_cauldron unless entity @e[distance=..0.01,type=marker,tag=lava_cauldron] run summon marker ~ ~ ~ {Tags:["lava_cauldron"]}
execute align xyz if block ~ ~ ~ powder_snow_cauldron unless entity @e[distance=..0.01,type=marker,tag=powder_snow_cauldron] run summon marker ~ ~ ~ {Tags:["powder_snow_cauldron"]}
execute unless block ~ ~ ~ #cauldrons unless score @s distance matches ..0 positioned ^ ^ ^1 run function cauldron_optimization:find_cauldron