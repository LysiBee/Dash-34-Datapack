# Trigger weapon ability
execute as @e[scores={items.cooldown=1}] at @s run function core:fight/items/triggers/get_macro
execute as @e[scores={items.cooldown=1..}] run scoreboard players remove @s items.cooldown 1
execute as @a[tag=!warned] if items entity @s weapon.offhand *[minecraft:custom_data~{"right_click":"true"}] run function core:fight/items/warn
execute as @a[tag=warned] unless items entity @s weapon.offhand *[minecraft:custom_data~{"right_click":"true"}] run tag @s remove warned
# Ticking weapon abilities
execute as @e[scores={items.smash.cooldown=1}] run effect clear @s levitation
execute as @e[scores={items.smash.cooldown=1..}] run scoreboard players remove @s items.smash.cooldown 1
execute as @e[tag=mind-control-marker] at @s run rotate @s ~5 ~
execute as @e[tag=mind-control-marker] at @s run particle dust{color:[0.72,0.1,0.8],scale:1} ^ ^ ^0.5 0.01 0.01 0.01 0 1 force
execute as @e[tag=mind-control-marker] unless entity @n[tag=mind-control] run kill @s
execute as @e[tag=mind-control] at @s run particle dust{color:[0.72,0.1,0.8],scale:1} ^ ^ ^0.5 0.01 0.01 0.01 0 1 force
execute as @e[tag=mind-control-marker] run ride @s mount @n[tag=mind-control]
execute as @e[tag=mind-control] at @s unless entity @e[tag=mind-control-target] run function core:fight/items/abilities/mind_continue
execute as @e[tag=mind-control] at @s unless entity @e[tag=mind-control-target] run function core:fight/items/abilities/mind_end
# Full Armor Set Abilities
# execute as @a[nbt={Inventory:[{id:"minecraft:golden_helmet",Slot:103b,components:{"minecraft:custom_data":{titan_helmet:1b}}},{id:"minecraft:golden_chestplate",Slot:102b,components:{"minecraft:custom_data":{titan_chestplate:1b}}},{id:"minecraft:golden_leggings",Slot:101b,components:{"minecraft:custom_data":{titan_leggings:1b}}},{id:"minecraft:golden_boots",Slot:100b,components:{"minecraft:custom_data":{titan_boots:1b}}}]}] run attribute @s knockback_resistance modifier add titan_knockback_res 40 add_multiplied_total
# execute as @a[nbt=!{Inventory:[{id:"minecraft:golden_helmet",Slot:103b,components:{"minecraft:custom_data":{titan_helmet:1b}}},{id:"minecraft:golden_chestplate",Slot:102b,components:{"minecraft:custom_data":{titan_chestplate:1b}}},{id:"minecraft:golden_leggings",Slot:101b,components:{"minecraft:custom_data":{titan_leggings:1b}}},{id:"minecraft:golden_boots",Slot:100b,components:{"minecraft:custom_data":{titan_boots:1b}}}]}] run attribute @s knockback_resistance modifier remove titan_knockback_res