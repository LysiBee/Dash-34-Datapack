# ARCHER TOWER UPGRADES
$execute if items entity @s $(slot) *[custom_data~{archer_upgrade1:1b}] as @n[tag=tower-barrel-marker] at @n[tag=tower-center-marker] run function core:defense/towers/archer/placement/get_rotation {"building":"1"}
$execute if items entity @s $(slot) *[custom_data~{archer_upgrade_lightning:1b}] as @n[tag=tower-barrel-marker] at @n[tag=tower-center-marker] run function core:defense/towers/archer/placement/get_rotation {"building":"_lightning"}
$execute if items entity @s $(slot) *[custom_data~{archer_upgrade_castle:1b}] as @n[tag=tower-barrel-marker] at @n[tag=tower-center-marker] run function core:defense/towers/archer/placement/get_rotation {"building":"_castle"}
$execute if items entity @s $(slot) *[custom_data~{archer_upgrade_lightning2:1b}] as @n[tag=tower-barrel-marker] at @n[tag=tower-center-marker] run function core:defense/towers/archer/placement/get_rotation {"building":"_lightning2"}
$execute if items entity @s $(slot) *[custom_data~{archer_upgrade_castle2:1b}] as @n[tag=tower-barrel-marker] at @n[tag=tower-center-marker] run function core:defense/towers/archer/placement/get_rotation {"building":"_castle2"}
$execute if items entity @s $(slot) *[custom_data~{archer_sell:1b}] as @n[tag=tower-barrel-marker] at @n[tag=tower-center-marker] run function core:defense/towers/archer/sell

# TENT UPGRADES
$execute if items entity @s $(slot) *[custom_data~{tent_upgrade1:1b}] run function core:defense/towers/tent/placement/upgrade {"building":"1"}
$execute if items entity @s $(slot) *[custom_data~{tent_upgrade_camp:1b}] run function core:defense/towers/tent/placement/upgrade {"building":"_camp"}
$execute if items entity @s $(slot) *[custom_data~{tent_upgrade_barracks:1b}] run function core:defense/towers/tent/placement/upgrade {"building":"_barracks"}
$execute if items entity @s $(slot) *[custom_data~{tent_upgrade_camp2:1b}] run function core:defense/towers/tent/placement/upgrade {"building":"_camp2"}
$execute if items entity @s $(slot) *[custom_data~{tent_upgrade_barracks2:1b}] run function core:defense/towers/tent/placement/upgrade {"building":"_barracks2"}