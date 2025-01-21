give @s stone_sword[consumable={ \
    animation:"brush", \
    consume_seconds:0.4f, \
    has_consume_particles:0b, \
    on_consume_effects:[{ \
        sound:"minecraft:block.trial_spawner.ominous_activate", \
        type:"minecraft:play_sound" \
    }], \
    sound:"minecraft:entity.player.attack.sweep" \
}, \
custom_name='{ \
    "text":"Swooping Pickaxe" \
}', \
enchantments={ \
    levels:{ \
        "minecraft:sweeping_edge":2 \
    } \
}, \
item_model="minecraft:netherite_pickaxe", \
lore=['""', \
'{ \
    "color":"dark_purple", \
    "italic":true, \
    "text":"A large weapon used" \
}', \
'{ \
    "color":"dark_purple", \
    "italic":true, \
    "text":"to hit many enemies at once." \
}', \
'""', \
'{ \
    "color":"gray", \
    "italic":false, \
    "text":"Left-Click: Deals sweeping damage." \
}', \
'{ \
    "color":"gray", \
    "italic":false, \
    "text":"Right-Click: Swoops forward, \
    " \
}', \
'{ \
    "color":"gray", \
    "italic":false, \
    "text":"damaging and slowing enemies." \
}', \
'{ \
    "color":"gray", \
    "italic":false, \
    "text":"More effective the closer the enemy." \
}', \
'{ \
    "color":"gray", \
    "italic":false, \
    "text":"Cooldown Time: 3 Seconds" \
}'], \
use_cooldown={ \
    cooldown_group:"core:items/slash", \
    seconds:3.0f \
}, \
custom_data={ \
    "right_click":"true", \
    name:slash, \
    weapon_id:0 \
}, \
attribute_modifiers={ \
    show_in_tooltip:true, \
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
        amount:-2.4, \
        operation:"add_value", \
        slot:"mainhand" \
    }] \
}, \
rarity="rare",\
unbreakable={}]