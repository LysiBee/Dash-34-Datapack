tag @s add this.moving.entity
$execute positioned ^ ^ ^$(speed) run summon marker ~ ~ ~ {Tags:["this.moving.target"]}
execute at @e[type=marker,tag=this.moving.target] rotated as @s run tp @e[type=marker,tag=this.moving.target] ~ ~ ~ ~ ~
# movement check + movement itself
execute as @e[type=marker,tag=this.moving.target] at @s run function core:defense/monsters/movement/move_fallback with storage core:mob_speed
tp @s @e[type=marker,tag=this.moving.target,limit=1]
# kill a marker and cleanup
kill @e[type=marker,tag=this.moving.target,limit=1]
tag @s remove this.moving.entity