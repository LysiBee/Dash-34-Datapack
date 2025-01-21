give @s music_disc_11[consumable={ \
    animation:"bow", \
    consume_seconds:0.4f, \
    has_consume_particles:0b, \
    on_consume_effects:[{ \
        sound:"minecraft:entity.breeze.inhale", \
        type:"minecraft:play_sound" \
    }], \
    sound:"minecraft:entity.breeze.shoot" \
}, \
custom_name='{ \
    "text":"Breezy Pickaxe" \
}', \
item_model="minecraft:diamond_pickaxe", \
use_cooldown={ \
    cooldown_group:"core:items/breeze", \
    seconds:4.0f \
}, \
custom_data={ \
    "right_click":"true", \
    name:"breeze", \
    weapon_id:3 \
}, \
lore=[\
'["A fast and breezy weapon"]', \
'["that can shoot wind."]', \
'[""]', \
'["", \
{ \
    "text":"Left Click: Deals low", \
    "italic":false, \
    "color":"white" \
}]', \
'["", \
{ \
    "text":"knockback damage.", \
    "italic":false, \
    "color":"white" \
}]', \
'["", \
{ \
    "text":"Right Click: Shoots a", \
    "italic":false, \
    "color":"white" \
}]', \
'["", \
{ \
    "text":"wind charge.", \
    "italic":false, \
    "color":"white" \
}]', \
'["", \
{ \
    "text":"Cooldown Time: 4 Seconds", \
    "italic":false, \
    "color":"white" \
}]'], \
enchantments={ \
    levels:{ \
        knockback:2, \
    } \
}, \
attribute_modifiers={ \
    modifiers:[{ \
        type:"attack_damage", \
        amount:3, \
        slot:mainhand, \
        id:"minecraft:base_attack_damage", \
        operation:add_value \
    }, \
    { \
        type:"attack_speed", \
        amount:-2.4, \
        slot:mainhand, \
        id:"minecraft:base_attack_speed", \
        operation:add_value \
    }], \
    show_in_tooltip:true \
}, \
!jukebox_playable, \
rarity="common"]