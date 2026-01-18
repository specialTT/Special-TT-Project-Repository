$execute if block ~ ~ ~ beacon{primary_effect:"$(secondary_effect)"} run effect give @s $(secondary_effect) 13 1
$execute unless block ~ ~ ~ beacon{primary_effect:"$(secondary_effect)"} run effect give @s $(primary_effect) 13 0
$execute unless block ~ ~ ~ beacon{primary_effect:"$(secondary_effect)"} run effect give @s $(secondary_effect) 13 0
$data modify entity @s active_effects[{id:"$(secondary_effect)"}].ambient set value 1b
$data modify entity @s active_effects[{id:"$(primary_effect)"}].ambient set value 1b