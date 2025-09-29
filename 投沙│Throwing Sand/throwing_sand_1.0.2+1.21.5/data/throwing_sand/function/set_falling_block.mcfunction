$data modify entity @s block_state.Name set value "minecraft:$(type_of_sand_to_throw)"
$data modify entity @s data.arrow_UUID set value $(arrow_UUID)
tag @s add throwing_sand
data modify entity @s transformation.translation set value [-0.5f,-0.5f,-0.5f]