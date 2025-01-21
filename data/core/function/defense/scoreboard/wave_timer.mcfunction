schedule function core:defense/scoreboard/wave_timer 1s
execute if score $wave_timer defense.wave matches 10..20 as @a at @s run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 5
execute if score $wave_timer defense.wave matches 1.. run scoreboard players remove $wave_timer defense.wave 5
scoreboard players operation $wave_timer defense.wave /= $wave_timer5 defense.wave
execute if score $wave_timer defense.wave matches 1 run schedule function core:defense/monsters/waves/get_wave 1s
execute store result storage core:wave_timer wave_timer float 1 run scoreboard players get $wave_timer defense.wave
function core:defense/scoreboard/update_wave_timer with storage core:wave_timer
scoreboard players operation $wave_timer defense.wave *= $wave_timer5 defense.wave