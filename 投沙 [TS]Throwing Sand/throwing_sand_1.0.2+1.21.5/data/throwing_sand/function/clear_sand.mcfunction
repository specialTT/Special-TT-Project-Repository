scoreboard players set @s find_the_sand 1
execute if block ~ ~ ~ sand run data modify entity @s data.type_of_sand_to_throw set value "sand"
execute if block ~ ~ ~ red_sand run data modify entity @s data.type_of_sand_to_throw set value "red_sand"
setblock ~ ~ ~ air
function throwing_sand:holding_sand with entity @s data