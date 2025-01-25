execute store result score $sell.cost defense.money run data get entity @s data.money
execute at @s run playsound entity.wither.break_block master @a ~ ~ ~ 1 0.8
scoreboard players operation $sell.cost defense.money /= $2 defense.money
execute store result storage core:tower_sell sell_cost int 1 run scoreboard players get $sell.cost defense.money
function core:defense/towers/archer/sell_macro with storage core:tower_sell
scoreboard players reset $sell.cost defense.money
fill ~-3 ~ ~-3 ~3 ~10 ~3 air destroy
kill @s
kill @n[tag=tower-center-marker]
tag @n[tag=archer-skeleton] add dead-skellie
execute as @n[tag=dead-skellie] at @s run tp @s ~ ~-300 ~
execute as @n[tag=dead-skellie] at @s run kill @s
clear @a *[custom_data~{tower_upgrade:1b}]
kill @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{tower_upgrade:1b}}}}]