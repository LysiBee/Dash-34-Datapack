execute as @e[tag=conveyer-item] at @s if entity @n[type=minecraft:marker,tag=conveyer-end,distance=..1] run function core:parkour/belt/reached_end
execute as @e[tag=conveyer-item] at @s if entity @n[type=minecraft:marker,tag=conveyer-turn-n,distance=..1] run rotate @s -180 0
execute as @e[tag=conveyer-item] at @s if entity @n[type=minecraft:marker,tag=conveyer-turn-s,distance=..1] run rotate @s 0 0
execute as @e[tag=conveyer-item] at @s if entity @n[type=minecraft:marker,tag=conveyer-turn-w,distance=..1] run rotate @s 90 0
execute as @e[tag=conveyer-item] at @s if entity @n[type=minecraft:marker,tag=conveyer-turn-e,distance=..1] run rotate @s -90 0
execute as @e[tag=conveyer-item] at @s run tp @s ^ ^ ^0.1
execute if score $beltsound parkour matches 1..35 run scoreboard players add $beltsound parkour 1
execute as @a at @s at @n[tag=conveyer-item] if score $beltsound parkour matches 36 run playsound minecraft:entity.minecart.riding master @s ~ ~ ~ 1 0.5
execute if score $beltsound parkour matches 36 run scoreboard players set $beltsound parkour 1
schedule function core:parkour/belt/belt_loop 2t