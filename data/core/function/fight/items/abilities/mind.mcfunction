execute if entity @e[tag=mind-control] run function core:fight/items/abilities/mind_cancel
execute unless entity @e[tag=mind-control] anchored eyes positioned ^ ^ ^ anchored feet run function core:fight/items/abilities/mind_raycast/start_ray
say hi