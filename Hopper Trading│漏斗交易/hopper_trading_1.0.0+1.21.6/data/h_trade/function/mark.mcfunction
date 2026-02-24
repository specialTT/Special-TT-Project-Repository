execute if block ~ ~ ~ hopper run data modify storage h_trade:main hopper_nbt set from block ~ ~ ~
execute if block ~ ~ ~ hopper[facing=down] run data modify storage h_trade:main hopper_facing set value "down"
execute if block ~ ~ ~ hopper[facing=east] run data modify storage h_trade:main hopper_facing set value "east"
execute if block ~ ~ ~ hopper[facing=north] run data modify storage h_trade:main hopper_facing set value "north"
execute if block ~ ~ ~ hopper[facing=south] run data modify storage h_trade:main hopper_facing set value "south"
execute if block ~ ~ ~ hopper[facing=west] run data modify storage h_trade:main hopper_facing set value "west"
execute if block ~ ~ ~ hopper run function h_trade:set_hopper with storage h_trade:main
$execute if block ~ ~ ~ hopper as @e[type=marker,tag=h_trade_marker,nbt={data:{setter:$(UUID)}}] run data remove entity @s data.setter
execute if block ~ ~ ~ hopper align xyz if entity @n[type=marker,tag=h_trade_marker,distance=..0.1] run return run data modify entity @n[type=marker,tag=h_trade_marker,distance=..0.1] data.setter set from entity @s UUID
$execute if block ~ ~ ~ hopper align xyz run return run summon marker ~ ~ ~ {Tags:["h_trade_marker"],data:{setter:$(UUID)}}
execute positioned ^ ^ ^1 run function h_trade:mark with entity @s