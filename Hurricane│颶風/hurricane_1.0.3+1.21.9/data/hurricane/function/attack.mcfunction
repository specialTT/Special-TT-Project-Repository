playsound entity.breeze.hurt hostile @a ~ ~ ~
$execute on target run damage @s 2 mob_attack by @n[nbt={UUID:$(UUID)}]
scoreboard players set @s breeze_attack_cooldown 20