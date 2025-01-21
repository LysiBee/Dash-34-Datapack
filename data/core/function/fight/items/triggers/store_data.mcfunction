advancement revoke @s only core:internal/detect_right_click
data modify storage core:items name set from entity @s SelectedItem.components.minecraft:custom_data.name
data modify storage core:items weapon_id set from entity @s SelectedItem.components.minecraft:custom_data.weapon_id
data modify storage core:items damage set from entity @s SelectedItem.components.minecraft:damage
function core:fight/items/triggers/store_specific_data with storage core:items