###################
#  Global things  #
###################
effect give @p[gamemode=adventure,tag=!taking-damage] minecraft:saturation infinite 255 true
effect give @p[gamemode=adventure,tag=!taking-damage] minecraft:resistance infinite 5 true
execute as @e[tag=chair] if data entity @s interaction run function core:chair/mount_chair
execute as @e[tag=chair] at @s if block ~ ~ ~ air run tp @s ~ ~-1 ~
execute as @e[type=item] at @s on origin run data modify entity @n[type=item,tag=!Text_Display] Owner set from entity @s UUID
execute as @e[type=item,tag=!Text_Display] run data modify entity @s PickupDelay set value 0s
execute as @e[type=item] at @s on origin run tp @n[type=item,tag=!Text_Display] @s
stopsound @a * ui.toast.challenge_complete



###############
#    Music    #
###############
execute if score $1stmusic music matches 0 run function core:escape/music_reset
execute if score $2ndmusic music matches 0 run function core:memory/music_reset
execute if score $3rdmusic music matches 0 run function core:parkour/music_reset
execute as @p[tag=escape-started,tag=!escape-done] if score $1stmusic music matches 1.. run scoreboard players remove $1stmusic music 1
execute as @p[tag=memory-started,tag=!memory-done] if score $2ndmusic music matches 1.. run scoreboard players remove $2ndmusic music 1
execute as @p[tag=parkour-started,tag=!parkour-done] if score $3rdmusic music matches 1.. run scoreboard players remove $3rdmusic music 1

execute if score #timerticks2 timer matches 20 run function core:timer/second2
execute if score #timerseconds2 timer matches 60 run function core:timer/minute2



##################
#  Escape Stuff  #
##################
# Detect end
execute as @p[gamemode=adventure,tag=escape-started,tag=!escape-done] at @s if block ~ ~-0.1 ~ polished_tuff run function core:escape/finish
# Detect start
execute as @p[gamemode=adventure,tag=!escape-start] at @s if block ~1 ~ ~ black_concrete run function core:escape/start
# Detect rail placement
execute as @p[gamemode=adventure,tag=!escape-done,tag=escape-start] if block 8 -60 9 rail if block 9 -60 9 rail if block 10 -60 9 rail unless block 14 -62 10 air run function core:escape/minecart_found
# Particles for crafting table and minecart barrel
execute as @n[tag=minecart-indicator,tag=on] unless data block 13 -60 9 Items[0] run tag @s remove on
execute as @e[tag=minecart-indicator,tag=on] at @s run particle minecraft:scrape ~ ~ ~ .3 .3 .3 0 1
execute as @n[tag=crafting-indicator,tag=on] at @s if entity @p[gamemode=adventure,distance=..2] run tag @s remove on
execute as @e[tag=crafting-indicator,tag=on] at @s run particle minecraft:scrape ~ ~ ~ .3 .3 .3 0 1
# Set minecart data
execute as @e[tag=!escape-minecart,type=minecart] run data merge entity @s {Invulnerable:true,Tags:["escape-minecart"]}
# Minecart Cheese failsafe
execute as @e[tag=escape-minecart,type=minecart] at @s unless block ~ ~-0.9 ~ minecraft:chiseled_tuff_bricks run function core:escape/minecart_reset
# Display timer
title @a[tag=escape-started,tag=!escape-done] actionbar ["",{"text":"<<","bold":true,"color":"green"},{"score":{"name":"#timerminutes","objective":"timer"},"bold":true,"color":"green"},{"text":":","bold":true,"color":"green"},{"score":{"name":"#timerseconds","objective":"timer"},"bold":true,"color":"green"},{"text":">>","bold":true,"color":"green"}]
# Timer
execute if score #timerticks timer matches 20 run function core:timer/second
execute if score #timerseconds timer matches 60 run function core:timer/minute



##################
#  Memory Stuff  #
##################
# Door open
execute unless block 0 -58 -23 air as @p[gamemode=adventure,tag=!memory-started] positioned 0 -59 -22 if entity @s[distance=..1] run setblock 0 -55 -26 minecraft:redstone_block
# Detect start
execute as @p[gamemode=adventure,tag=!memory-started] positioned 0 -60 -25 if entity @s[distance=..1.2] run function core:memory/start
# Display score
title @a[tag=memory-started,tag=!memory-done,gamemode=adventure] actionbar ["",{"text":"Points: ","color":"green"},{"score":{"name":"#score","objective":"memory"},"bold":true,"color":"green"}]
# Open secret door
execute if data block -6 -60 -25 item run function core:memory/secret_detect



###################
#  Parkour Stuff  #
###################
# Fan loop
execute if score $fan-timer parkour matches 1..2 run scoreboard players add $fan-timer parkour 1
execute if score $fan-timer parkour matches 3 as @e[tag=fan,tag=!dead-fan] at @s if entity @p[distance=..40] run function core:parkour/fan/fan_loop
execute if score $fan-timer parkour matches 3 run scoreboard players set $fan-timer parkour 1
function core:parkour/fan/play_sound
# Block abilities detection
execute as @p[gamemode=adventure] at @s if predicate {"condition":"minecraft:entity_properties","entity":"this","predicate":{"stepping_on":{"block":{"blocks":"minecraft:black_terracotta"}}}} run function core:parkour/blocks/gravity_up
execute as @p[gamemode=adventure] at @s if predicate {"condition":"minecraft:entity_properties","entity":"this","predicate":{"stepping_on":{"block":{"blocks":"minecraft:light_gray_terracotta"}}}} run function core:parkour/blocks/gravity_down
execute as @p[gamemode=adventure] at @s if predicate {"condition":"minecraft:entity_properties","entity":"this","predicate":{"stepping_on":{"block":{"blocks":"minecraft:gray_terracotta"}}}} run function core:parkour/blocks/gravity_normal
execute as @p[gamemode=adventure] at @s if predicate {"condition":"minecraft:entity_properties","entity":"this","predicate":{"stepping_on":{"block":{"blocks":"minecraft:pink_terracotta"}}}} run effect give @s minecraft:speed 1 4 false
execute as @p[gamemode=adventure] at @s if predicate {"condition":"minecraft:entity_properties","entity":"this","predicate":{"stepping_on":{"block":{"blocks":"minecraft:lime_terracotta"}}}} run effect give @s minecraft:jump_boost 1 4 false
# Windcharge fanagling
execute as @a[tag=!has-wind-charge,gamemode=adventure] at @s unless entity @e[type=minecraft:wind_charge] unless items entity @s container.* minecraft:wind_charge unless items entity @s player.cursor minecraft:wind_charge if block ~ ~-.01 ~ minecraft:white_terracotta run function core:parkour/wind_charge/give
execute as @a[gamemode=adventure] if items entity @s container.* minecraft:wind_charge[minecraft:count~{min:2}] run function core:parkour/wind_charge/clear_extra
execute as @e[type=minecraft:wind_charge] run schedule function core:parkour/wind_charge/cooldown_end 2t replace
# Checkpoint detect
execute as @p[gamemode=adventure] at @s if block ~ ~ ~ polished_blackstone_pressure_plate run function core:parkour/checkpoint
# Fail detect
execute as @p[gamemode=adventure] at @s if block ~ ~-1.1 ~ minecraft:orange_stained_glass run function core:parkour/fail
#title @a[tag=parkour-started,tag=!parkour-done] actionbar ["",{"text":"<<","bold":true,"color":"green"},{"score":{"name":"#timerminutes2","objective":"timer"},"bold":true,"color":"green"},{"text":":","bold":true,"color":"green"},{"score":{"name":"#timerseconds2","objective":"timer"},"bold":true,"color":"green"},{"text":">>","bold":true,"color":"green"}]
# execute at @a run kill @e[type=minecraft:wind_charge,distance=50..]
# Give night vision after first checkpoint
effect give @a[tag=parkour-started,tag=!parkour-done] night_vision 1 0 true
# Smoke particles around the pipes
execute as @e[tag=pipe-marker] at @s run particle minecraft:smoke ~ ~ ~ 0.4 1 0.4 0 10 force



#########################
#  Tower Defense Stuff  #
#########################
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


#################
#  Fight Stuff  #
#################
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
execute as @a[nbt={Inventory:[{id:"minecraft:golden_helmet",Slot:103b,components:{"minecraft:custom_data":{titan_helmet:1b}}},{id:"minecraft:golden_chestplate",Slot:102b,components:{"minecraft:custom_data":{titan_chestplate:1b}}},{id:"minecraft:golden_leggings",Slot:101b,components:{"minecraft:custom_data":{titan_leggings:1b}}},{id:"minecraft:golden_boots",Slot:100b,components:{"minecraft:custom_data":{titan_boots:1b}}}]}] run attribute @s knockback_resistance modifier add titan_knockback_res 40 add_multiplied_total
execute as @a[nbt=!{Inventory:[{id:"minecraft:golden_helmet",Slot:103b,components:{"minecraft:custom_data":{titan_helmet:1b}}},{id:"minecraft:golden_chestplate",Slot:102b,components:{"minecraft:custom_data":{titan_chestplate:1b}}},{id:"minecraft:golden_leggings",Slot:101b,components:{"minecraft:custom_data":{titan_leggings:1b}}},{id:"minecraft:golden_boots",Slot:100b,components:{"minecraft:custom_data":{titan_boots:1b}}}]}] run attribute @s knockback_resistance modifier remove titan_knockback_res