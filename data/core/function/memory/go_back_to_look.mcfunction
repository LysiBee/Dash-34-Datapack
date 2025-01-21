schedule function core:memory/reset 10s
tp @p[gamemode=adventure] 0 -60 -31 180 0
clear @p[gamemode=adventure]
scoreboard players remove #memory memory 1
fill -6 -60 -33 6 -58 -35 air

execute if score #memory memory matches 1 run clone 20 -60 -36 8 -59 -36 -6 -60 -35
execute if score #memory memory matches 2 run clone 20 -60 -35 8 -59 -35 -6 -60 -35
execute if score #memory memory matches 3 run clone 20 -60 -34 8 -59 -34 -6 -60 -35
execute if score #memory memory matches 4 run clone 20 -60 -33 8 -59 -33 -6 -60 -35
execute if score #memory memory matches 5 run clone 20 -60 -32 8 -59 -32 -6 -60 -35
execute if score #memory memory matches 6 run clone 20 -60 -31 8 -59 -31 -6 -60 -35
execute if score #memory memory matches 7 run clone 20 -60 -30 8 -59 -30 -6 -60 -35
execute if score #memory memory matches 8 run clone 20 -60 -29 8 -59 -29 -6 -60 -35
execute if score #memory memory matches 9 run clone 20 -60 -28 8 -59 -28 -6 -60 -35
execute if score #memory memory matches 10 run clone 20 -60 -27 8 -59 -27 -6 -60 -35

setblock -2 -59 -25 minecraft:air
setblock 0 -59 -25 minecraft:air
setblock 2 -59 -25 minecraft:air
kill @e[tag=memory-button]
tellraw @p[gamemode=adventure] ["",{"text":"You went back to look! (+5 Points)","color":"red"}]
playsound minecraft:entity.wither.hurt master @p[gamemode=adventure] ~ ~ ~ 100000000000000
scoreboard players add #score memory 5
scoreboard players add #memory memory 1