execute store result score @s defense.intersection run random value 1..100
execute if score @s defense.intersection matches 1..38 run function core:defense/intersection/yellow
execute if score @s defense.intersection matches 39..100 run function core:defense/intersection/gray