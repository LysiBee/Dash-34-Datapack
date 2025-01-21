scoreboard players reset $randombelt parkour
execute store result score $randombelt parkour run random value 1..7
execute if score $randombelt parkour matches 1 run data modify entity @s block_state.Name set value barrel
execute if score $randombelt parkour matches 2 run data modify entity @s block_state.Name set value deepslate_emerald_ore
execute if score $randombelt parkour matches 3 run data modify entity @s block_state.Name set value raw_gold_block
execute if score $randombelt parkour matches 4 run data modify entity @s block_state.Name set value deepslate_diamond_ore
execute if score $randombelt parkour matches 5 run data modify entity @s block_state.Name set value deepslate_iron_ore
execute if score $randombelt parkour matches 6 run data modify entity @s block_state.Name set value deepslate_gold_ore
execute if score $randombelt parkour matches 7 run data modify entity @s block_state.Name set value redstone_block
data modify entity @s Pos[0] set from entity @n[tag=conveyer-end] data.endpos[0]
data modify entity @s Pos[2] set from entity @n[tag=conveyer-end] data.endpos[1]