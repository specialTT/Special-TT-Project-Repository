execute as @e[type=item] at @s if items entity @s container.0 gunpowder[minecraft:custom_data={explode:1b}] run summon creeper ~ ~ ~ {Fuse:0s,ignited:1b}
execute as @e[type=item] at @s if items entity @s container.0 gunpowder[minecraft:custom_data={powered_explode:1b}] run summon creeper ~ ~ ~ {ExplosionRadius:6b,powered:1b,Fuse:0s,ignited:1b}
execute as @e[type=item] if items entity @s container.0 gunpowder[minecraft:custom_data={explode:1b}] run kill @s
execute as @e[type=item] if items entity @s container.0 gunpowder[minecraft:custom_data={powered_explode:1b}] run kill @s