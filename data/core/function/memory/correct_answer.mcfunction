schedule function core:memory/begin_test 10t
playsound entity.firework_rocket.launch master @a 0 -60 -36 10
summon firework_rocket 0 -60 -36 {Life:1,LifeTime:20,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"large_ball",has_twinkle:true,colors:[I;16777215],fade_colors:[I;5721681]}]}}}}
playsound minecraft:entity.player.levelup master @p[gamemode=adventure] ~ ~ ~ 1000000000000000 2
tellraw @p[gamemode=adventure] ["",{"text":"Correct Answer!","color":"green"}]