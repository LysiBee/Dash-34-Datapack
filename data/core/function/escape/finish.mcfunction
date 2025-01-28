tag @p[gamemode=adventure] add escape-done
stopsound @a ambient minecraft:sound.custom.stal
scoreboard players reset $1stmusic music
schedule function core:escape/finish2 8t
setblock 15 -60 -1 minecraft:air