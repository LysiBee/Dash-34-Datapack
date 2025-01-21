clear @p[gamemode=adventure]
stopsound @a ambient minecraft:sound.custom.strad
tellraw @a ["",{"text":"You completed the memory puzzle with ","color":"green"},{"score":{"name":"#score","objective":"memory"},"color":"green"},{"text":" Points!","color":"green"}]
execute if score #score memory matches 11..29 run playsound entity.experience_orb.pickup master @p[gamemode=adventure] ~ ~ ~ 10000000000000 2
execute if score #score memory matches ..10 run advancement grant @p[gamemode=adventure] only core:memory/photographic_memory
execute if score #score memory matches 30.. run advancement grant @p[gamemode=adventure] only core:memory/short_term_memory_loss
schedule function core:memory/finish2 40t
schedule clear core:memory/reset
setblock 19 -60 -24 air