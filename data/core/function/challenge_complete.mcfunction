scoreboard players set #ChallengeComplete delay 0
execute if score #ChallengeComplete delay matches 0 run playsound minecraft:block.beacon.activate master @s ~ ~ ~ 10000 0.8
execute if score #ChallengeComplete delay matches 0 run playsound minecraft:block.beacon.activate master @s ~ ~ ~ 10000 1.18
execute if score #ChallengeComplete delay matches 0 run playsound minecraft:block.vault.open_shutter master @s ~ ~ ~ 10000 1
execute if score #ChallengeComplete delay matches 8 run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 10000 0.75
execute if score #ChallengeComplete delay matches 8 run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 10000 1.25
scoreboard players add #ChallengeComplete delay 1
execute if score #ChallengeComplete delay matches 1..8 run schedule function core:anti_challenge_complete 1t