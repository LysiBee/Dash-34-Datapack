give @s stick[consumable={ \
    animation:"bow", \
    consume_seconds:0.4f, \
    has_consume_particles:0b, \
    on_consume_effects:[{ \
        sound:"minecraft:block.amethyst_block.resonate", \
        type:"minecraft:play_sound" \
    }], \
    sound:"minecraft:item.trident.riptide_1" \
}, \
custom_name='{ \
    "text":"Hypno-Stick" \
}', \
item_model="minecraft:stick", \
use_cooldown={ \
    cooldown_group:"core:items/mind", \
    seconds:60f \
}, \
custom_data={ \
    "right_click":"true", \
    name:"mind", \
    weapon_id:5 \
}, \
lore=['""','["A Magical Stick that can"]', \
'["convert foes to your side."]', \
'[""]', \
'["", \
{ \
    "text":"Right Click: Shoots a beam", \
    "italic":false, \
    "color":"light_purple" \
}]', \
'["", \
{ \
    "text":"in the direction you are facing.", \
    "italic":false, \
    "color":"light_purple" \
}]', \
'["", \
{ \
    "text":"Stops if it hits a block or", \
    "italic":false, \
    "color":"light_purple" \
}]', \
'["", \
{ \
    "text":"entity. Upon entity hit, \
    takes", \
    "italic":false, \
    "color":"light_purple" \
}]', \
'["", \
{ \
    "text":"control of it and starts attacking", \
    "italic":false, \
    "color":"light_purple" \
}]', \
'["", \
{ \
    "text":"the nearest enemy. If it kills the ", \
    "italic":false, \
    "color":"light_purple" \
}]', \
'["", \
{ \
    "text":"enemy, \
    it targets the next closet", \
    "italic":false, \
    "color":"light_purple" \
}]', \
'["", \
{ \
    "text":"enemy until defeat.", \
    "italic":false, \
    "color":"light_purple" \
}]', \
'["", \
{ \
    "text":"Cooldown Time: 1 Minute", \
    "italic":false, \
    "color":"light_purple" \
}]'], \
rarity="epic"]