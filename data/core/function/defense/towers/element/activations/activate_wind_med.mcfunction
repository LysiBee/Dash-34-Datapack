$scoreboard players set @s defense.towers $(cooldown)
$execute unless entity @n[distance=..$(range),tag=defense-monster] run return 0
execute store result score @s defense.element_random run random value 1..100
$execute if score @s defense.element_random matches 71..80 as @n[tag=defense-monster] at @s run function core:defense/towers/element/fire/ignite {"damage":"$(fire_damage)","ignite_time":"$(ignite_time)"}
$execute if score @s defense.element_random matches 81..90 as @n[tag=defense-monster] at @s run function core:defense/towers/element/ice/freeze {"damage":"$(ice_damage)","freeze_time":"$(freeze_time)","freeze_power":"$(freeze_power)"}
$execute if score @s defense.element_random matches 91..100 as @n[tag=defense-monster] at @s run function core:defense/towers/element/wind/blow_back {"damage":"$(wind_damage)","ignite_time":"$(ignite_time)"}
$execute if score @s defense.element_random matches 1..70 as @n[tag=defense-monster] at @s run function core:defense/towers/element/earth/stab {"damage":"$(earth_damage)"}