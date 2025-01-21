clone -8 -54 -33 -8 -56 -31 -7 -60 -33
fill -8 -58 -33 -8 -60 -31 air
scoreboard players set #memory memory 1
fill -6 -60 -33 6 -58 -35 air
scoreboard players set #score memory 0
advancement revoke @p[gamemode=adventure] only core:memory/photographic_memory
advancement revoke @p[gamemode=adventure] only core:memory/short_term_memory_loss
advancement revoke @p[gamemode=adventure] only core:memory/door
advancement grant @p[gamemode=adventure] only core:memory/root