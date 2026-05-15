$data modify entity @s Rotation set value $(Rotation)
$data modify entity @s Owner set value $(breeze_UUID)
$execute at @s run tp @s ~ ~ ~ ~$(r1) ~$(r2)
function projectile_motion:launch {speed:"1.5"}