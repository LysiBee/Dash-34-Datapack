tp @s ~ ~-1 ~
data modify entity @s Invulnerable set value 1b
scoreboard players set @s defense.speed 0
effect give @s regeneration 3 3 false
scoreboard players set @s defense.abilities 200