$scoreboard players set @s defense.towers $(cooldown)
$execute unless entity @n[distance=..$(range),tag=defense-monster] run return run tellraw dummy ""
execute store result score @s defense.element_random run random value 1..100
$execute if score @s defense.element_random matches 1..25 as @n[tag=defense-monster] at @s run function core:defense/towers/element/fire/ignite {"damage":"$(fire_damage)","ignite_time":"$(ignite_time)","cooldown":"$(cooldown)"}
$execute if score @s defense.element_random matches 26..50 as @n[tag=defense-monster] at @s run function core:defense/towers/element/ice/freeze {"damage":"$(ice_damage)","freeze_time":"$(freeze_time)","freeze_power":"$(freeze_power)","cooldown":"$(cooldown)"}
$execute if score @s defense.element_random matches 51..75 as @n[tag=defense-monster] at @s run function core:defense/towers/element/wind/blow_back {"damage":"$(wind_damage)","blow_power":"$(blow_power)","cooldown":"$(cooldown)"}
$execute if score @s defense.element_random matches 76..100 as @n[tag=defense-monster] at @s run function core:defense/towers/element/earth/stab {"damage":"$(earth_damage)","cooldown":"$(cooldown)"}