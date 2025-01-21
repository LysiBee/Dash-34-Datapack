give @s shield[custom_name='{ \
    "text":"INSERT NAME HERE Sword" \
}', \
item_model="minecraft:netherite_sword", \
attribute_modifiers={ \
    modifiers:[{ \
        type:attack_damage, \
        amount:10, \
        slot:mainhand, \
        id:"minecraft:base_attack_damage", \
        operation:add_value \
    }, \
    { \
        type:attack_speed, \
        amount:-2.4, \
        slot:mainhand, \
        id:"minecraft:base_attack_speed", \
        operation:add_value \
    }] \
}, \
enchantments={ \
    levels:{ \
        "core:technical/shield_damage":1 \
    } \
}, \
rarity="rare"]