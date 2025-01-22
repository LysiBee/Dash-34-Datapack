#    Monster Movement    #
# End of path
execute as @e[tag=defense-monster] at @s if block ~ ~-0.1 ~ black_concrete run function core:defense/monsters/reached_end
# Update health display
execute as @e[tag=defense-monster] at @s if entity @n[tag=defense-start,distance=..0.1] run data modify entity @s HurtTime set value 10
# Determine Speed
execute as @e[tag=defense-monster] unless score @s defense.speed matches 1.. store result score @s defense.speed run attribute @s attack_knockback base get
# Move
execute as @e[tag=defense-monster] at @s run function core:defense/monsters/movement/determine_speed
# Intersection
execute as @e[tag=defense-monster,tag=!chosen-path] at @s if block ~ ~-0.1 ~ ochre_froglight if entity @n[type=marker,tag=defense-intersection,distance=..0.1] run function core:defense/intersection/decide_turn
execute as @e[tag=defense-monster,tag=chosen-path] at @s unless block ~ ~-0.1 ~ white_concrete run tag @s remove chosen-path
#   Monster Abilities   #

# Witch
execute as @e[tag=defense-monster,tag=defense-witch] at @s if score @s defense.abilities matches 1.. run scoreboard players remove @s defense.abilities 1
execute as @e[tag=defense-monster,tag=defense-witch] at @s if score @s defense.abilities matches 1 run function core:defense/monsters/abilities/witch
item replace entity @e[type=witch] weapon with air

# Piglin
execute as @a if score @s defense.kill_piglin matches 1.. run scoreboard players add $money defense.money 30
execute as @a if score @s defense.kill_piglin matches 1.. run scoreboard players reset @s defense.kill_piglin

# Silverfish
execute as @e[tag=defense-monster,tag=defense-silverfish] at @s if score @s defense.abilities matches 1.. run scoreboard players remove @s defense.abilities 1
execute as @e[tag=defense-monster,tag=defense-silverfish] at @s if score @s defense.abilities matches 1 run function core:defense/monsters/abilities/silverfish
execute as @e[tag=defense-monster,tag=defense-silverfish] at @s if score @s defense.abilities matches 100 run function core:defense/monsters/abilities/silverfish2


# Kill detection for money
execute as @a if score @s defense.kill matches 1.. at @s run function core:defense/monsters/killed_monster

#   Towers   #
# Tower Placement
execute as @p store result score @s defense.rotation run data get entity @s Rotation[0]
# Tower Upgrade Ticking Commands:
execute as @p[gamemode=adventure] at @s at @n[tag=tower-barrel-marker,tag=open] run function core:defense/towers/global/tick
execute as @e[tag=tower-barrel-marker,type=marker,tag=!open] at @s if block ~ ~ ~ minecraft:barrel[open=true] run tag @s add open
execute as @e[tag=tower-barrel-marker,type=minecraft:marker,tag=open] at @s if block ~ ~ ~ minecraft:barrel[open=false] run tag @s remove open
# Archer Tower
# All of them
execute as @e[tag=archer-skeleton] at @s anchored eyes positioned ~ -59 ~ run rotate @s facing entity @n[tag=defense-monster,distance=..18.5]
execute as @e[tag=archer-skeleton] at @s anchored eyes positioned ~ -59 ~ unless entity @n[tag=defense-monster,distance=..18.5] run rotate @s -180 0
execute as @e[tag=archer-skeleton] unless score @s defense.towers matches 1.. run scoreboard players set @s defense.towers 2
execute as @e[tag=archer-skeleton] if score @s defense.towers matches 1.. run scoreboard players remove @s defense.towers 1

execute as @e[tag=archer-lightning-marker] unless score @s defense.towers matches 1.. run scoreboard players set @s defense.towers 2
execute as @e[tag=archer-lightning-marker] if score @s defense.towers matches 1.. run scoreboard players remove @s defense.towers 1
execute as @e[tag=archer-lightning-marker2] unless score @s defense.towers matches 1.. run scoreboard players set @s defense.towers 2
execute as @e[tag=archer-lightning-marker2] if score @s defense.towers matches 1.. run scoreboard players remove @s defense.towers 1
# Base
execute as @e[tag=archer-skellie1] if score @s defense.towers matches 1 run function core:defense/towers/archer/shoot {"cooldown":"100","damage":"5","range":"9.5"}
# First Upgrade
execute as @e[tag=archer-skellie_castle] if score @s defense.towers matches 1 run function core:defense/towers/archer/shoot {"cooldown":"60","damage":"5","range":"11.5"}
# Castle Upgrade 1
execute as @e[tag=archer-skellie_castle2] if score @s defense.towers matches 1 run function core:defense/towers/archer/shoot {"cooldown":"40","damage":"10","range":"13.5"}
# Castle Upgrade 2
execute as @e[tag=archer-skellie_final] if score @s defense.towers matches 1 run function core:defense/towers/archer/shoot {"cooldown":"20","damage":"20","range":"18.5"}
# Lightning Upgrade 1
execute as @e[tag=archer-lightning-marker] if score @s defense.towers matches 1 run function core:defense/towers/archer/lightning {"cooldown":"50","damage":"7.5","range":"23.5"}
# Lightning Upgrade 2
execute as @e[tag=archer-lightning-marker2] if score @s defense.towers matches 1 run function core:defense/towers/archer/lightning {"cooldown":"35","damage":"15","range":"33.5"}
