scoreboard players reset #wand weapons
summon marker ~ ~1 ~ {Tags:["wand-marker"]}
execute as @n[tag=wand-marker] at @s anchored eyes facing entity @n[tag=monster] eyes positioned ^ ^ ^2 rotated as @s positioned ^ ^ ^0.01 facing entity @s eyes facing ^ ^ ^-1 positioned as @s run tp @s ~ ~ ~ ~ ~
playsound minecraft:entity.allay.item_given master @s