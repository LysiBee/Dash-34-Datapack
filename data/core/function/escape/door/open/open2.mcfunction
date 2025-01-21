fill -10 -59 17 -10 -59 19 minecraft:air
execute positioned -10 -59 18 run playsound minecraft:block.piston.contract master @a ~ ~ ~ 100000000000000
schedule function core:escape/door/open/open3 8t