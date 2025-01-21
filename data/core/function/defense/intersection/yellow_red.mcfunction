execute store result score @s defense.intersection run random value 1..40
execute if score @s defense.intersection matches 1..10 run function core:defense/intersection/red
execute if score @s defense.intersection matches 11..40 run function core:defense/intersection/yellow