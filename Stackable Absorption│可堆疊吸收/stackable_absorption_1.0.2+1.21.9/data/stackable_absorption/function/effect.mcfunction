effect clear @s absorption
$attribute @s minecraft:max_absorption modifier add remove_absorption -$(absorption) add_value
$effect give @s absorption $(duration) $(amplifier)
attribute @s minecraft:max_absorption modifier remove remove_absorption