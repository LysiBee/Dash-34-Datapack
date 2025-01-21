execute store result score @s defense.intersection run random value 1..100
execute if score @s defense.intersection matches 1..25 run function core:defense/intersection/orange
execute if score @s defense.intersection matches 26..100 run function core:defense/intersection/yellow