data modify storage projectile_motion:storage Rotation set from entity @s Rotation
data modify storage projectile_motion:storage Owner set from entity @s UUID
$execute at @s anchored eyes positioned ^ ^ ^ summon $(entity_type) run function projectile_motion:rotate {speed:"$(speed)",nbt:"$(nbt)"}