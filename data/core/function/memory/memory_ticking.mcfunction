# Display score
title @a[tag=memory-started,tag=!memory-done,gamemode=adventure] actionbar ["",{"text":"Points: ","color":"green"},{"score":{"name":"#score","objective":"memory"},"bold":true,"color":"green"}]
# Open secret door
execute if data block -6 -60 -25 item run function core:memory/secret_detect