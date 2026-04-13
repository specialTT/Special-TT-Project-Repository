advancement revoke @s only beacon_tweak:use_beacon
execute if block ~ ~ ~ beacon align xyz positioned ~0.5 ~0.5 ~0.5 unless entity @e[type=marker,tag=beacon_marker,distance=..0.1] run summon marker ~ ~ ~ {Tags:["beacon_marker"]}
execute unless block ~ ~ ~ beacon positioned ^ ^ ^0.1 run function beacon_tweak:mark