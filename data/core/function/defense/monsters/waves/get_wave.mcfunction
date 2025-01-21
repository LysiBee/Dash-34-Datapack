scoreboard players add $wave_level defense.wave 1
execute store result storage core:wave_number wave float 1 run scoreboard players get $wave_level defense.wave
function core:defense/monsters/waves/next_wave with storage core:wave_number
function core:defense/scoreboard/update_wave with storage core:wave_number