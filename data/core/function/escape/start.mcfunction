tag @p[gamemode=adventure] add escape-start
recipe give @a core:trapdoor
function core:escape/reset
scoreboard players set #timerminutes timer 0
scoreboard players set #timerseconds timer 0
scoreboard players reset #timerticks timer
scoreboard players reset $1stmusic music
advancement revoke @p only core:escape/escapist
advancement revoke @p only core:escape/you_had_one_job
advancement revoke @p only core:escape/bookshelf
title @p[gamemode=adventure] title {"text": "\uE034"}
title @p[gamemode=adventure] times 39 60 20
schedule function core:escape/start2 2s
kill @n[type=minecart,tag=escape-minecart]