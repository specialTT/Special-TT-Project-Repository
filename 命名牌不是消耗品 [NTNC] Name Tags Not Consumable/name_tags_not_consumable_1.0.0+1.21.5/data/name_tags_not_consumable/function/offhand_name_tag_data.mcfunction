$execute unless data storage name_tag_data list.[{UUID:$(UUID)}] run data modify storage name_tag_data list append value {UUID:$(UUID)}
$data modify storage name_tag_data list.[{UUID:$(UUID)}].data set from entity @s equipment.offhand.components
$data modify storage name_tag_data list.[{UUID:$(UUID)}].hand set value "offhand"