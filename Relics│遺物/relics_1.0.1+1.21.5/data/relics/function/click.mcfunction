$execute unless entity @s[nbt={attack:{player:$(UUID)}}] at @s run playsound block.chain.place block @a ~ ~ ~
$execute if entity @s[nbt={attack:{player:$(UUID)}}] at @s run playsound block.beacon.deactivate block @a ~ ~ ~
$execute if entity @s[nbt={attack:{player:$(UUID)}}] at @s if data entity @s data.Inventory[0] run function relics:give
$execute if entity @s[nbt={attack:{player:$(UUID)}}] run experience add @n[type=player,nbt={UUID:$(UUID)}] $(Xp)
$execute if entity @s[nbt={attack:{player:$(UUID)}}] at @n[nbt={UUID:$(UUID)}] run particle totem_of_undying ~ ~1 ~ 0.3 0.3 0.3 0.3 100
$execute if entity @s[nbt={attack:{player:$(UUID)}}] at @s run kill @s
data remove entity @s attack