playsound minecraft:item.trident.throw master @a ~ ~ ~ 2 0.8
playsound minecraft:entity.breeze.shoot master @a ~ ~ ~ 2 2
execute store result score @s mobs.axethrow run random value 80..100
execute positioned 0.0 0 0.0 run summon marker ^ ^ ^1 {Tags:["direction"]}
execute anchored eyes at @s run summon trident ^ ^ ^1 {Tags:["projectile","axe-trident"],Passengers:[{id:item_display,item: {count: 1, id: "minecraft:stone_axe"},item: {count: 1, id: "minecraft:stone_axe"},transformation: {left_rotation: [0.74394584f, -0.03412136f, -0.66094136f, 0.09239585f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [0.99999934f, 0.9999999f, 0.99999994f], translation: [0.0f, 0.0f, 0.0f]},Tags:["axe-display"]}]}
execute as @n[type=minecraft:item_display,tag=axe-display] at @s run data modify entity @s Rotation[0] set from entity @n[tag=axe-thrower] Rotation[0]
data modify entity @e[tag=projectile,limit=1] Motion set from entity @e[type=marker,tag=direction,limit=1] Pos
data modify entity @e[tag=projectile,limit=1] Owner set from entity @s UUID

tag @e[tag=projectile] remove projectile
kill @e[tag=direction]