give @s music_disc_11[consumable={ \
    animation:"bow", \
    consume_seconds:0.4f, \
    has_consume_particles:0b, \
    on_consume_effects:[{ \
        sound:"minecraft:item.flintandsteel.use", \
        type:"minecraft:play_sound" \
    }], \
    sound:"minecraft:entity.blaze.shoot" \
}, \
custom_name='{ \
    "text":"Flaming Pickaxe" \
}', \
item_model="minecraft:golden_pickaxe", \
use_cooldown={ \
    cooldown_group:"core:items/fireball", \
    seconds:5.0f \
}, \
custom_data={ \
    "right_click":"true", \
    name:"fireball", \
    weapon_id:2 \
}, \
lore=[ \
'["A fast and fiery weapon"]', \
'["that can shoot fireballs."]', \
'[""]', \
'["", \
{ \
    "text":"Left Click: Deals low fire", \
    "italic":false, \
    "color":"gold" \
}]', \
'["", \
{ \
    "text":"damage.", \
    "italic":false, \
    "color":"gold" \
}]', \
'["", \
{ \
    "text":"Right Click: Shoots a fireball.", \
    "italic":false, \
    "color":"gold" \
}]', \
'["", \
{ \
    "text":"Cooldown Time: 5 Seconds", \
    "italic":false, \
    "color":"gold" \
}]'], \
attribute_modifiers={ \
    modifiers:[{ \
        id:"minecraft:base_attack_damage", \
        type:"attack_damage", \
        amount:2, \
        operation:"add_value", \
        slot:"mainhand" \
    }, \
    { \
        id:"minecraft:base_attack_speed", \
        type:"attack_speed", \
        amount:-2.4, \
        operation:"add_value", \
        slot:"mainhand" \
    }], \
    show_in_tooltip:true \
}, \
enchantments={ \
    levels:{ \
        fire_aspect:2, \
    }, \
    show_in_tooltip:true \
}, \
!jukebox_playable, \
rarity="common"]