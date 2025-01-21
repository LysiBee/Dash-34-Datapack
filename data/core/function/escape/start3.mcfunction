title @p[gamemode=adventure] times 20 30 40
title @p[gamemode=adventure] subtitle {"text":"escape!", "font":"retitled_titles:regular", "color":"#25FF01"}
title @p[gamemode=adventure] title {"text":"\uF903\u0009section 1\u000A", "font":"retitled_titles:regular", "color":"#26FF01"}
advancement grant @p[gamemode=adventure] only core:escape/root
function core:escape/door/close/close1
tag @p[gamemode=adventure] add escape-started
schedule function core:escape/dialouge1 90t
setblock 15 -60 -1 redstone_block