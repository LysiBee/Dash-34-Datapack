execute unless score $money defense.money matches 10.. run playsound minecraft:block.note_block.didgeridoo master @a ~ ~ ~ 2 1
execute unless score $money defense.money matches 10.. run return run tellraw @a {"text": "Not enough gold!","color": "gold"}

scoreboard players remove $money defense.money 10
execute store result storage core:wave_number gold float 1 run scoreboard players get $money defense.money
function core:defense/scoreboard/update_gold with storage core:wave_number
execute as @p if score @s defense.rotation matches -45..45 run function core:defense/towers/archer/placement/init_placement {"rotation":"none","x_offset":"-3","z_offset":"-3"}
execute as @p if score @s defense.rotation matches 46..135 run function core:defense/towers/archer/placement/init_placement {"rotation":"clockwise_90","x_offset":"3","z_offset":"-3"}
execute as @p if score @s defense.rotation matches 136..180 run function core:defense/towers/archer/placement/init_placement {"rotation":"180","x_offset":"3","z_offset":"3"}
execute as @p if score @s defense.rotation matches -180..-135 run function core:defense/towers/archer/placement/init_placement {"rotation":"180","x_offset":"3","z_offset":"3"}
execute as @p if score @s defense.rotation matches -136..-44 run function core:defense/towers/archer/placement/init_placement {"rotation":"counterclockwise_90","x_offset":"-3","z_offset":"3"}