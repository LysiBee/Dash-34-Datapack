advancement revoke @s only core:defense/internal/detect_firework_click
execute as @n[type=firework_rocket] unless data entity @s FireworksItem.components."minecraft:custom_data" run return fail
data modify storage core:tower_place temp.func set from entity @n[type=firework_rocket] FireworksItem.components."minecraft:custom_data".func
execute as @n[type=firework_rocket] at @s run function core:defense/towers/macro with storage core:tower_place temp
data remove storage core:tower_place temp.func