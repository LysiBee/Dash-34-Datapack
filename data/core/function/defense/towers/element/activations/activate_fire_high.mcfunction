$scoreboard players set @s defense.towers $(cooldown)
$execute unless entity @n[distance=..$(range),tag=defense-monster] run return run tellraw dummy ""
$execute if score @s defense.element_random matches 1..70 as @n[tag=defense-monster] at @s run function core:defense/towers/element/fire/ignite {"damage":"$(fire_damage)","ignite_time":"$(ignite_time)"}