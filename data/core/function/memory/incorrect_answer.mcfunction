function core:memory/reset
tellraw @p[gamemode=adventure] ["",{"text":"Incorrect Answer! (+3 Points)","color":"red"}]
playsound minecraft:entity.wither.hurt master @p[gamemode=adventure] ~ ~ ~ 100000000000000
scoreboard players add #score memory 3