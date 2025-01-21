setblock -6 -60 -25 air destroy
setblock -6 -60 -25 minecraft:decorated_pot{sherds:["minecraft:explorer_pottery_sherd","minecraft:brick","minecraft:explorer_pottery_sherd","minecraft:brick"]}
execute unless entity @p[tag=memory.discovered-door] run setblock -20 -56 -35 minecraft:redstone_block
tag @p add memory.discovered-door