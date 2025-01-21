fill -1 -60 5 1 -60 5 air
execute positioned 0 -59 5 run playsound minecraft:block.piston.contract master @a ~ ~ ~ 100000000000000
schedule function core:escape/door2/open/open2 8t