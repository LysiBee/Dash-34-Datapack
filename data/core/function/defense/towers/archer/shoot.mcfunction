$scoreboard players set @s defense.towers $(cooldown)
$execute at @s positioned ~ -59 ~ if entity @n[distance=..$(range),tag=defense-monster] anchored eyes at @s positioned ^ ^ ^ facing entity @n[tag=defense-monster] feet run function core:defense/towers/archer/raycast/start_ray {"damage":"$(damage)"}
