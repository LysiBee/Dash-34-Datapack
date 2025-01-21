execute if score $fan-sound parkour matches 1..49 run scoreboard players add $fan-sound parkour 1
execute as @e[tag=fan,tag=!dead-fan] at @s if entity @p[distance=..40] if score $fan-sound parkour matches 50 run stopsound @a * item.elytra.flying
execute as @e[tag=fan,tag=!dead-fan] at @s if entity @p[distance=..40] if score $fan-sound parkour matches 50 run playsound item.elytra.flying master @a ~ ~ ~ 0.8 2
execute if score $fan-sound parkour matches 50 run scoreboard players set $fan-sound parkour 1