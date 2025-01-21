kill @n[tag=tower-barrel-marker,tag=open]
$execute at @n[tag=tower-center-marker] run place template core:defense/towers/tent/upgrade$(building) ~-3 ~ ~-3
kill @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{tower_upgrade:1b}}}}]
execute at @n[tag=tower-center-marker] run playsound block.anvil.use master @a ~ ~ ~2 10 0.7
execute at @n[tag=tower-center-marker] run particle minecraft:end_rod ~ ~2 ~ .2 .1 .2 0.5 50
$clear @a *[custom_data~{tent_upgrade$(building):1b}]
kill @n[tag=tower-center-marker]