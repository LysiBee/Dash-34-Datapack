tp @s ^ ^ ^-0.1
<<<<<<< HEAD
execute at @s unless block ~ -60 ~ ochre_froglight run function core:defense/monsters/movement/move_fallback
execute at @s if block ~ -60 ~ ochre_froglight align xz positioned ~0.5 ~ ~0.5 run tp @s ~ ~ ~
=======
$execute at @s if entity @e[limit=1,tag=this.moving.entity,distance=..0.1] return run tp @s ^ ^ ^$(speed)
execute at @s unless block ~ -59 ~ ochre_froglight run function core:defense/monsters/movement/move_fallback with storage core:mob_speed
execute at @s if block ~ -59 ~ ochre_froglight align xz positioned ~0.5 ~ ~0.5 run tp @s ~ ~ ~
#
>>>>>>> e5890619688f859c8037bf34fc616321f86792aa
