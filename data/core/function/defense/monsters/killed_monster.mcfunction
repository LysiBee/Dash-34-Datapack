scoreboard players reset @s defense.kill
scoreboard players add $money defense.money 10
# cosmetics
playsound minecraft:entity.experience_orb.pickup master @s
title @s actionbar [{"color":"#9AFF26","text":"+"},{"color":"#9AFF26","score":{"name":"$money","objective":"defense.money"}},{"color":"#9AFF26","shadow_color":-15199719,"text":" gold"}]
# update gold
execute store result storage core:wave_number gold float 1 run scoreboard players get $money defense.money
function core:defense/scoreboard/update_gold with storage core:wave_number