execute store result score $sell.cost defense.money run data get entity @s data.sell_cost 0.5
execute at @s run playsound entity.wither.break_block master @a ~ ~ ~ 1 0.8
execute store result storage core:tower_sell sell_cost int 1 run scoreboard players get $sell.cost defense.money
function core:defense/towers/element/sell_macro with storage core:tower_sell
scoreboard players reset $sell.cost defense.money
fill ~-3 ~ ~-3 ~3 ~14 ~3 air destroy
kill @s
kill @n[tag=element-center-marker]
clear @a *[custom_data~{tower_upgrade:1b}]
kill @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{tower_upgrade:1b}}}}]