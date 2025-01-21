give @p mace[custom_data={ \
    "right_click":"true", \
    name:smash, \
    weapon_id:1 \
}, \
item_model="minecraft:stone_pickaxe", \
custom_name='{ \
    "text":"Shockwave Smasher" \
}', \
lore=['""', \
'["", \
{ \
    "text":"A heavy weapon that deals more", \
    "color":"dark_purple" \
}]', \
'["", \
{ \
    "text":"damage while falling.", \
    "color":"dark_purple" \
}]', \
'[""]', \
'["", \
{ \
    "text":"Left Click: deals moderate damage, \
    ", \
    "italic":false, \
    "color":"dark_gray" \
}]', \
'["", \
{ \
    "text":"more while falling", \
    "italic":false, \
    "color":"dark_gray" \
}]', \
'["", \
{ \
    "text":"Right Click: Smashes into the ground, \
    ", \
    "italic":false, \
    "color":"dark_gray" \
}]', \
'["", \
{ \
    "text":"sending a shockwave launching", \
    "italic":false, \
    "color":"dark_gray" \
}, \
{ \
    "text":", \
    ", \
    "color":"dark_gray" \
}]', \
'["", \
{ \
    "text":"you and enemies nearby", \
    "color":"dark_gray", \
    "italic":false \
}]', \
'["", \
{ \
    "text":"into the air.", \
    "color":"dark_gray", \
    "italic":false \
}]', \
'["", \
{ \
    "text":"Cooldown Time: 7.5 Seconds", \
    "color":"dark_gray", \
    "italic":false \
}]'], \
consumable={ \
    consume_seconds:0.4, \
    animation:"spear", \
    sound:"item.mace.smash_air", \
    has_consume_particles:false, \
    on_consume_effects:[{ \
        type:"minecraft:play_sound", \
        sound:"item.mace.smash_ground_heavy" \
    }] \
}, \
use_cooldown={ \
    seconds:7.5f, \
    cooldown_group:"core:items/smash" \
}, \
attribute_modifiers={ \
    modifiers:[{ \
        id:"minecraft:base_attack_damage", \
        type:"attack_damage", \
        amount:5, \
        operation:"add_value", \
        slot:"mainhand" \
    }, \
    { \
        id:"minecraft:base_attack_speed", \
        type:"attack_speed", \
        amount:-3.4, \
        operation:"add_value", \
        slot:"mainhand" \
    }, \
    { \
        id:"core:smash_speed", \
        type:"movement_speed", \
        amount:-0.02, \
        operation:"add_value", \
        slot:"mainhand" \
    }], \
    show_in_tooltip:true \
}, \
rarity="epic"]