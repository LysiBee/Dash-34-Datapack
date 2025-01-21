playsound minecraft:block.note_block.didgeridoo master @s
tellraw @s {"text": "You can only hypnotize one entity at a time!","color": "light_purple"}
item modify entity @s weapon.mainhand [{"function":"minecraft:set_components","components":{"minecraft:use_cooldown":{"seconds":60,"cooldown_group":"core:items/mind2"}}}]