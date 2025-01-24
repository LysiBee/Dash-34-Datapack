tp @s ^ ^ ^-0.1
execute at @s unless block ~ -60 ~ ochre_froglight run function core:defense/monsters/movement/move_fallback
execute at @s if block ~ -60 ~ ochre_froglight align xz positioned ~0.5 ~ ~0.5 run tp @s ~ ~ ~