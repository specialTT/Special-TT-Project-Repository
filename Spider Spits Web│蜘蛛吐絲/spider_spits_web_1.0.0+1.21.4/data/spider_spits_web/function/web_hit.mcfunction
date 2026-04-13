$execute positioned ~-1 ~-1 ~-1 as @n[dx=1,nbt={last_hurt_by_mob:$(Owner),ticks_since_last_hurt_by_mob:0}] run effect give @s weaving 60 0
$execute positioned ~-1 ~-1 ~-1 as @n[dx=1,nbt={last_hurt_by_mob:$(Owner),ticks_since_last_hurt_by_mob:0}] at @s if block ~ ~ ~ #replaceable run return run setblock ~ ~ ~ cobweb
execute if block ~ ~ ~ #replaceable run return run setblock ~ ~ ~ cobweb