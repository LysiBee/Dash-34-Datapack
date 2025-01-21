fill -10 -58 19 -10 -60 17 minecraft:iron_block
tellraw @a {"text": "Welcome to Mental Cognitive Processing Incorporated. Here at MCP Inc., we're dedicated to pushing the boundaries of human cognition and problem-solving abilities.","color": "green"}
execute at @a run playsound minecraft:sound.custom.start voice @a ~ ~ ~ 100000000000000000000
schedule function core:escape/door/open/open1 70s
schedule function core:start/dialouge/start2 12s