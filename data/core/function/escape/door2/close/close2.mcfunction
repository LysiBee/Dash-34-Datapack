fill -1 -58 5 1 -59 5 minecraft:iron_block
execute positioned 0 -59 5 run playsound minecraft:block.piston.extend master @a ~ ~ ~ 100000000000000
schedule function core:escape/door2/close/close3 8t