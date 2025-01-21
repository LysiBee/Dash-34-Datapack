$scoreboard players set @s defense.towers $(cooldown)
$execute at @s positioned ~ -59 ~ at @n[distance=..$(range),tag=defense-monster] positioned ~ -70 ~ run summon lightning_bolt ~ ~ ~
$execute at @s positioned ~ -59 ~ as @n[distance=..$(range),tag=defense-monster] run damage @s $(damage) minecraft:lightning_bolt by @p