$scoreboard players set @s defense.towers $(cooldown)
$execute at @s positioned ~ -59 ~ if entity @n[distance=..$(range),tag=defense-monster] at @s anchored eyes rotated as @s run function core:defense/towers/archer/raycast/start_ray {"damage":"$(damage)"}
