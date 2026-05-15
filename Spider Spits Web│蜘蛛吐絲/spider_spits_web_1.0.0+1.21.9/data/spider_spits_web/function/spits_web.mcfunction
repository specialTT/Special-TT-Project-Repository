$execute on target run rotate @n[nbt={UUID:$(UUID)}] facing entity @s
execute at @s run tp @s ~ ~ ~ ~ ~-10
function projectile_motion:projectile {entity_type:"snowball",nbt:"{Item:{id:\"snowball\",components:{\"minecraft:item_model\":\"spider_spits_web:cobweb_block\"}},Tags:[\"web\"],Passengers:[{id:\"minecraft:marker\",Tags:[\"set_Owner\",\"web\"]}]}",speed:"1"}
tag @n[type=marker,tag=set_left_time] remove set_left_time
execute as @n[type=marker,tag=set_Owner] at @s run data modify entity @s data.Owner set from entity @n[type=snowball,nbt={Passengers:[{id:"minecraft:marker",Tags:["set_Owner","web"]}]}] Owner
tag @n[type=marker,tag=set_Owner] remove set_Owner
attribute @s movement_speed modifier remove minecraft:spits_web