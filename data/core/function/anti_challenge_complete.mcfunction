scoreboard players set #AntiChallengeComplete delay 0
execute if score #AntiChallengeComplete delay matches 0 run playsound minecraft:block.vault.close_shutter master @s ~ ~ ~ 10000 0.75
execute if score #AntiChallengeComplete delay matches 0 run playsound minecraft:entity.warden.death master @s ~ ~ ~ 10000 0.5
execute if score #AntiChallengeComplete delay matches 0 run playsound minecraft:entity.warden.death master @s ~ ~ ~ 10000 2
execute if score #AntiChallengeComplete delay matches 2 run playsound minecraft:block.beacon.deactivate master @s ~ ~ ~ 10000 0.85
execute if score #AntiChallengeComplete delay matches 4 run playsound minecraft:block.vault.reject_rewarded_player master @s ~ ~ ~ 10000 0.5
scoreboard players add #AntiChallengeComplete delay 1
execute if score #AntiChallengeComplete delay matches 1..4 run schedule function core:anti_challenge_complete 1t