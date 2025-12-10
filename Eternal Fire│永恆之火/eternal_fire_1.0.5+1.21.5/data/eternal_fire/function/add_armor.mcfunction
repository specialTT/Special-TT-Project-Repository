scoreboard players set @s temporary_storage 0
execute store result score @s temporary_storage run data get entity @s attributes.[{id:"minecraft:armor"}].modifiers.[{id:"minecraft:flame_armor"}].amount
scoreboard players add @s temporary_storage 1
attribute @s minecraft:armor modifier remove minecraft:flame_armor
data modify storage attribute_command command set value "attribute @s minecraft:armor modifier add flame_armor"
execute store result storage attribute_command value int 1 run scoreboard players get @s temporary_storage
function eternal_fire:execute_attribute_command with storage minecraft:attribute_command