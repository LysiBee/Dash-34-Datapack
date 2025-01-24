# tp backwards
tp @s ^ ^ ^-0.1
# if entity is close, tp marker back to the speed position
$execute at @s if entity @e[limit=1,tag=this.moving.entity,distance=..0.15] positioned as @e[limit=1,tag=this.moving.entity,distance=..0.15] return run tp @s ^ ^ ^$(speed)
# if block is ochre_froglight, tp marker in center of it and stop the function
execute at @s if block ~ -59 ~ ochre_froglight align xz positioned ~0.5 ~ ~0.5 run return run tp @s ~ ~ ~
# if didnt hit an entity and didnt find a block, continue the function
<<<<<<< HEAD
execute at @s unless block ~ -59 ~ ochre_froglight run function core:defense/monsters/movement/move_fallback with storage core:mob_speed
=======
execute at @s unless block ~ -59 ~ ochre_froglight run function core:defense/monsters/movement/move_fallback with storage core:mob_speed
#
>>>>>>> 526826cd1d01da57cc8850c34ed201a2c0b41563
