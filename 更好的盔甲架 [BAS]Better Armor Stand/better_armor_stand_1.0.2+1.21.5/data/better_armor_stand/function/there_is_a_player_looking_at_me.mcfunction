$execute as @a if predicate {condition:"entity_properties",entity:"this",predicate:{flags:{is_sneaking:true},type_specific:{type:"player",looking_at:{nbt:"{UUID:$(UUID)}"}}}} run tag @n[type=interaction,tag=armor_stand_interaction] add there_is_a_player_looking_at_me
$execute if entity @a[distance=..$(width)] run tag @s add there_is_a_player_looking_at_me
kill @s[tag=!there_is_a_player_looking_at_me]
tag @s remove there_is_a_player_looking_at_me