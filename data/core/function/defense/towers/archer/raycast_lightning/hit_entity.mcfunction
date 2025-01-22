#Mark the ray has having found an entity.

scoreboard players set #hit archercasttemp 1

#Running custom commands since the entity was found.

execute positioned ~ ~-10 ~ run summon lightning_bolt ~ ~ ~
$damage @s $(damage) minecraft:lightning_bolt by @p