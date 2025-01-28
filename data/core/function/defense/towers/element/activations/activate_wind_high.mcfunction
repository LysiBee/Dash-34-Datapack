$scoreboard players set @s defense.towers $(cooldown)
$execute unless entity @n[distance=..$(range),tag=defense-monster] run return 0
$execute as @n[tag=defense-monster] at @s run function core:defense/towers/element/wind/blow_back_but_lightning {"damage":"$(wind_damage)","blow_power":"$(blow_power)"}