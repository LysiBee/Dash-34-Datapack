# Detect end
execute as @p[gamemode=adventure,tag=escape-started,tag=!escape-done] at @s if block ~ ~-0.1 ~ polished_tuff run function core:escape/finish
# Detect rail placement
execute as @p[gamemode=adventure,tag=!escape-done,tag=escape-start] if block 8 -60 9 rail if block 9 -60 9 rail if block 10 -60 9 rail unless block 14 -62 10 air run function core:escape/minecart_found
# Particles for crafting table and minecart barrel
execute as @n[tag=minecart-indicator,tag=on] unless data block 13 -60 9 Items[0] run tag @s remove on
execute as @e[tag=minecart-indicator,tag=on] at @s run particle minecraft:scrape ~ ~ ~ .3 .3 .3 0 1
execute as @n[tag=crafting-indicator,tag=on] at @s if entity @p[gamemode=adventure,distance=..2] run tag @s remove on
execute as @e[tag=crafting-indicator,tag=on] at @s run particle minecraft:scrape ~ ~ ~ .3 .3 .3 0 1
# Set minecart data
execute as @e[tag=!escape-minecart,type=minecart] run data merge entity @s {Invulnerable:true,Tags:["escape-minecart"]}
# Minecart Cheese failsafe
execute as @e[tag=escape-minecart,type=minecart] at @s unless block ~ ~-0.9 ~ minecraft:chiseled_tuff_bricks run function core:escape/minecart_reset
# Display timer
title @a[tag=escape-started,tag=!escape-done] actionbar ["",{"text":"<<","bold":true,"color":"green"},{"score":{"name":"#timerminutes","objective":"timer"},"bold":true,"color":"green"},{"text":":","bold":true,"color":"green"},{"score":{"name":"#timerseconds","objective":"timer"},"bold":true,"color":"green"},{"text":">>","bold":true,"color":"green"}]
# Timer
execute if score #timerticks timer matches 20 run function core:timer/second
execute if score #timerseconds timer matches 60 run function core:timer/minute