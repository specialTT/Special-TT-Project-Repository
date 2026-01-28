data remove storage eliminate_anvil_penalty:storage components
$data modify storage eliminate_anvil_penalty:storage components set from entity @s Inventory[{Slot:$(slot)b}].components
data remove storage eliminate_anvil_penalty:storage components."minecraft:lore"[{translate:"eliminate_anvil_penalty.lore.repair_cost"}]
data remove storage eliminate_anvil_penalty:storage components."minecraft:lore"[{text:"   ",color:"green"}]
$data modify storage eliminate_anvil_penalty:storage slot set value $(slot)
function eliminate_anvil_penalty:remove_lore with storage eliminate_anvil_penalty:storage
$execute if data entity @s Inventory[{Slot:$(slot)b}].components."minecraft:repair_cost" run item modify entity @s container.$(slot) {function:"set_lore",lore:[{text:"   ",color:"green"},[{translate:"eliminate_anvil_penalty.lore.repair_cost",color:"yellow",italic:false},{nbt:"Inventory[{Slot:$(slot)b}].components.\"minecraft:repair_cost\"",entity:"@s",color:"yellow",italic:false}]],entity:"this",mode:"append"}