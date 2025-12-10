$data modify storage pfse:storage entity_data set from entity @s $(path).components."minecraft:entity_data"
data modify storage pfse:storage nbt set from storage pfse:storage entity_data
data modify storage pfse:storage id set from storage pfse:storage entity_data.id
data remove storage pfse:storage nbt.id
data modify storage pfse:storage entity_data.nbt set from storage pfse:storage nbt
data modify storage pfse:storage entity_data.id set from storage pfse:storage id
$data modify storage pfse:storage slot set value "$(slot)"
function pfse:modify with storage pfse:storage