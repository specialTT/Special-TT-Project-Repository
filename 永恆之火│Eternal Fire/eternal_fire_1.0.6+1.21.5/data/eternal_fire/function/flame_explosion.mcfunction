$execute at @s positioned ~-2 ~-2 ~-2 as @e[dx=3,dy=3,dz=3,type=!blaze] run damage @s 6 explosion by @n[type=marker] from @n[nbt={UUID:$(Owner)}]
particle minecraft:flame ~ ~ ~ 0 0 0 0.05 100
playsound block.fire.extinguish block @r ~ ~ ~ 1 2
kill @s