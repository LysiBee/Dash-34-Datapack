clone -143 -45 -36 -143 -48 -32 -138 -53 -36
execute positioned -138 -51 -31 run playsound minecraft:block.piston.contract master @a ~ ~ ~ 1000000000000000000 0.5
schedule function core:parkour/door/door_hiss 8t
scoreboard players set $parkour-started progress 1
scoreboard players set $memory-started progress 0