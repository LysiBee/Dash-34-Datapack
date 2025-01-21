fill -7 -58 17 -7 -58 19 minecraft:reinforced_deepslate
execute positioned -7 -59 18 run playsound minecraft:block.piston.extend master @a ~ ~ ~ 100000000000000 0.1
schedule function core:escape/door/close/close2 8t