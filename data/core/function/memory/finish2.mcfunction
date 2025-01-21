tellraw @p[gamemode=adventure] ["",{"text":"Congratulations, you passed all of the memory tests! Logging your results now...","color":"green"}]
playsound minecraft:sound.custom.2ndpuzzle_ending voice @p[gamemode=adventure] ~ ~ ~ 100000000000000
tag @p[gamemode=adventure] add memory-done
schedule clear core:memory/reset
setblock 7 -55 -33 minecraft:redstone_block