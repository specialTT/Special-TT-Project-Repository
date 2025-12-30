$execute as @e[type=wandering_trader,nbt={data:{player_UUID:$(UUID)}}] at @s run say goodbye
$execute as @e[type=wandering_trader,nbt={data:{player_UUID:$(UUID)}}] at @s run playsound entity.villager.yes neutral @a ~ ~ ~
$execute as @e[type=wandering_trader,nbt={data:{player_UUID:$(UUID)}}] at @s run data modify entity @s DespawnDelay set value 100
$execute as @e[type=wandering_trader,nbt={data:{player_UUID:$(UUID)}}] at @s run function sgwt:trader_llama with entity @s