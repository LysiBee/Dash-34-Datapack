#Mark the ray has having found an entity.

scoreboard players set #hit vdvcasttemp 1

#Running custom commands since the entity was found.

tag @s add mind-control
summon text_display ~ ~ ~ {Tags:["mind-control-marker"],alignment: "center", billboard: "center", default_background: 0b, line_width: 200, see_through: 1b, shadow: 0b,text:'{"color":"light_purple","text":"♦\\n"}', text_opacity: 0b} 
team join Players @s
function core:fight/items/abilities/mind_continue
execute if entity @e[tag=mind-control-target] run playsound minecraft:entity.zombie_villager.cure master @a ~ ~ ~ 1000000000 1