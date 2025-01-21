execute store result score @s defense.intersection run random value 1..100
execute if score @s defense.intersection matches 1..17 run function core:defense/intersection/orange
execute if score @s defense.intersection matches 18..100 run function core:defense/intersection/gray