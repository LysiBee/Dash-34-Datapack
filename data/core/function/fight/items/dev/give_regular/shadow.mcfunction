give @s music_disc_11[consumable={ \
    animation:"block", \
    consume_seconds:0.4f, \
    has_consume_particles:0b, \
    on_consume_effects:[{ \
        sound:"minecraft:item.ominous_bottle.dispose", \
        type:"minecraft:play_sound" \
    }], \
    sound:"minecraft:event.mob_effect.bad_omen" \
}, \
custom_name='{ \
    "text":"Shadow Blade" \
}', \
item_model="minecraft:wooden_sword", \
use_cooldown={ \
    cooldown_group:"core:items/shadow", \
    seconds:10f \
}, \
custom_data={ \
    "right_click":"true", \
    name:"shadow", \
    weapon_id:6 \
}, \
lore=['["A small and sleek dagger "]', \
'["that helps you run away in"]', \
'["a pinch."]', \
'[""]', \
'["", \
{ \
    "text":"Right Click: Gain regeneration, \
    ", \
    "italic":false, \
    "color":"dark_gray" \
}]', \
'["", \
{ \
    "text":"speed, \
    and weakness for 5 seconds.", \
    "italic":false, \
    "color":"dark_gray" \
}]', \
'["", \
{ \
    "text":"Cooldown Time: 10 Seconds", \
    "italic":false, \
    "color":"dark_gray" \
}]'], \
attribute_modifiers={ \
    modifiers:[{ \
        type:attack_damage, \
        amount:3, \
        slot:mainhand, \
        id:"minecraft:base_attack_damage", \
        operation:add_value \
    }, \
    { \
        type:attack_speed, \
        amount:4, \
        slot:mainhand, \
        id:"minecraft:base_attack_speed", \
        operation:add_value \
    }] \
}, \
!jukebox_playable, \
rarity="rare"]