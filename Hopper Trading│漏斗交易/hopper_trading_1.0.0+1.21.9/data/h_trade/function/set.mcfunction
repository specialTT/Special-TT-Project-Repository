$execute unless score @n[nbt={UUID:$(setter)}] h_set_trigger matches 1.. run return fail
$scoreboard players remove @n[nbt={UUID:$(setter)}] h_set_trigger 1
$execute store result entity @s data.index int 1 run scoreboard players get @n[nbt={UUID:$(setter)}] h_set_trigger
data remove entity @s data.setter
$scoreboard players reset @n[nbt={UUID:$(setter)}] h_set_trigger