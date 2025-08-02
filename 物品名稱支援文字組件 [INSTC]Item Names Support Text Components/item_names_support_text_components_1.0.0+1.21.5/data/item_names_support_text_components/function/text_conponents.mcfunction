$data modify storage item_names_support_text_components:storage slot set value container.$(slot)
$data modify storage item_names_support_text_components:storage custom_name set from entity @s Inventory[{Slot:$(slot)b}].components."minecraft:custom_name"
function item_names_support_text_components:custom_name with storage item_names_support_text_components:storage