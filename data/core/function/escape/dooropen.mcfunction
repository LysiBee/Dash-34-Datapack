setblock 15 -61 17 minecraft:crafting_table
execute positioned 15 -61 17 run playsound minecraft:block.piston.extend master @p[gamemode=adventure] ~ ~ ~ 10000000000000
tellraw @p[gamemode=adventure] ["",{"text":"You hear the sound of a piston coming from the main room.","color":"green","italic": true}]
tag @n[tag=crafting-indicator] add on