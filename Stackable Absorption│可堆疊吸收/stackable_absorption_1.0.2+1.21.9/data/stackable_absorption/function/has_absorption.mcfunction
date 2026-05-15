execute if score @s amplifier matches -2147483648..2147483647 if score @s duration matches -2147483648..2147483647 run function stackable_absorption:absorption
execute if data entity @s active_effects[{id:"minecraft:absorption"}].hidden_effect run function stackable_absorption:absorption_hidden_effect
function stackable_absorption:log
tag @s add stackable_absorption