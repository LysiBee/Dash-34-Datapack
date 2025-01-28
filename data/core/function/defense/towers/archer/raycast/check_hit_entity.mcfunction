#Checks if an entity is found, and if so, runs the corresponding function.
scoreboard players set #hit archercasttemp 1
#Running custom commands since the entity was found.
$damage @s $(damage) arrow by @p
# Remove the multishot tag (will only happen if it's a multishot hit)
tag @s remove defense.archer.multishot-target