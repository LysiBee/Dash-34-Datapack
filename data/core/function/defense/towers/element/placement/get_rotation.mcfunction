data modify storage core:tower_rotation x_offset set from entity @s data.x_offset
data modify storage core:tower_rotation z_offset set from entity @s data.z_offset
data modify storage core:tower_rotation rotation set from entity @s data.rotation
$data modify storage core:tower_rotation building set value $(building)

function core:defense/towers/archer/placement/upgrade with storage core:tower_rotation