data modify entity @s Rotation set from storage projectile_motion:storage Rotation
data modify entity @s Owner set from storage projectile_motion:storage Owner
$data merge entity @s $(nbt)
$function projectile_motion:launch {speed:"$(speed)"}