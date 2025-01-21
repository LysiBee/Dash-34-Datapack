#Running custom per-step commands.

particle dust{color:[0.72,0.1,0.8],scale:1} ~ ~ ~ 0.01 0.01 0.01 0 1 force

#Check if an entity was detected.

execute if score #hit vdvcasttemp matches 0 positioned ~-0.05 ~-0.05 ~-0.05 as @e[tag=!vdvray,dx=0,sort=nearest] run function core:fight/items/abilities/mind_raycast/check_hit_entity

#Run a function if a block was successfully detected.

execute unless block ~ ~ ~ #core:blocks run function core:fight/items/abilities/mind_raycast/hit_block
scoreboard players add #distance vdvcasttemp 1

#Advance forward and run the ray again if no entity and/or block was found.

execute if score #hit vdvcasttemp matches 0 if score #distance vdvcasttemp matches ..250 positioned ^ ^ ^0.1 run function core:fight/items/abilities/mind_raycast/ray