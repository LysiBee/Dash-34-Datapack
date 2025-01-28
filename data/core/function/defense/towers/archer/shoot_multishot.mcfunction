$scoreboard players set @s defense.towers $(cooldown)
$execute at @s positioned ~ -59 ~ as @n[distance=..$(range),tag=defense-monster,tag=!defense.archer.multishot-target] run tag @s add defense.archer.multishot-target
$execute at @s positioned ~ -59 ~ as @n[distance=..$(range),tag=defense-monster,tag=!defense.archer.multishot-target] run tag @s add defense.archer.multishot-target
$execute at @s positioned ~ -59 ~ as @n[distance=..$(range),tag=defense-monster,tag=!defense.archer.multishot-target] run tag @s add defense.archer.multishot-target

$execute at @s anchored eyes positioned ^ ^ ^ facing entity @n[tag=defense-monster,tag=defense.archer.multishot-target] feet run function core:defense/towers/archer/raycast/start_ray {"damage":"$(damage)"}
$execute at @s anchored eyes positioned ^ ^ ^ facing entity @n[tag=defense-monster,tag=defense.archer.multishot-target] feet run function core:defense/towers/archer/raycast/start_ray {"damage":"$(damage)"}
$execute at @s anchored eyes positioned ^ ^ ^ facing entity @n[tag=defense-monster,tag=defense.archer.multishot-target] feet run function core:defense/towers/archer/raycast/start_ray {"damage":"$(damage)"}

$execute at @s positioned ~ -59 ~ if entity @n[distance=..$(range),tag=defense-monster] run playsound minecraft:item.crossbow.shoot master @a ~ ~ ~ 2