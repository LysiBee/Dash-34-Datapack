tag @s add this.moving.entity
$execute positioned ^ ^ ^$(speed) run summon marker ~ ~ ~ {Tags:["this.moving.target"]}
execute at @e[type=marker,tag=this.moving.target] rotated as @s run tp @e[type=marker,tag=this.moving.target] ~ ~ ~ ~ ~
# movement check + movement itself
# // CHANGE Y TO BE A PLATFORM HEIGHT                                   VVV
execute as @e[type=marker,tag=this.moving.target] at @s if block ~ 60 ~ grass_block run function core:defense/monsters/movement/move_fallback
tp @s @e[type=marker,tag=this.moving.target,limit=1]
# kill a marker and cleanup
kill @e[type=marker,tag=this.moving.target,limit=1]
tag @s remove this.moving.entity