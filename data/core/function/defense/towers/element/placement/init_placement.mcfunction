$place template core:defense/towers/element/base ~$(x_offset) ~ ~$(z_offset) $(rotation)
$data modify entity @n[tag=tower-barrel-marker] data.x_offset set value $(x_offset)
$data modify entity @n[tag=tower-barrel-marker] data.z_offset set value $(z_offset)
$data modify entity @n[tag=tower-barrel-marker] data.rotation set value $(rotation)
playsound block.anvil.use master @a ~ ~2 ~ 10 0.7
particle minecraft:end_rod ~ ~2 ~ .2 .1 .2 0.5 50