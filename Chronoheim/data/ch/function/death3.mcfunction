 scoreboard players remove alivep1 deaths 1
 function ch:cleanseslot3
 execute if score character# slot1 matches 28 run scoreboard players set cooldown slot1 0
 execute if score character# slot2 matches 28 run scoreboard players set cooldown slot2 0
 execute if score character# slot3 matches 28 run scoreboard players set cooldown slot3 0
 execute if score character# slot5 matches 28 run scoreboard players set cooldown slot5 0
 execute if score character# slot6 matches 28 run scoreboard players set cooldown slot6 0
 execute if score character# slot7 matches 28 run scoreboard players set cooldown slot7 0
 execute if score character# slot1 matches 28 run execute at @n[type=armor_stand,name=slot1] run particle minecraft:trial_omen ~ ~1 ~ 0.3 0.3 0.3 2 100
execute if score character# slot2 matches 28 run execute at @n[type=armor_stand,name=slot2] run particle minecraft:trial_omen ~ ~1 ~ 0.3 0.3 0.3 2 100
execute if score character# slot3 matches 28 run execute at @n[type=armor_stand,name=slot3] run particle minecraft:trial_omen ~ ~1 ~ 0.3 0.3 0.3 2 100
execute if score character# slot5 matches 28 run execute at @n[type=armor_stand,name=slot5] run particle minecraft:trial_omen ~ ~1 ~ 0.3 0.3 0.3 2 100
execute if score character# slot6 matches 28 run execute at @n[type=armor_stand,name=slot6] run particle minecraft:trial_omen ~ ~1 ~ 0.3 0.3 0.3 2 100
execute if score character# slot7 matches 28 run execute at @n[type=armor_stand,name=slot7] run particle minecraft:trial_omen ~ ~1 ~ 0.3 0.3 0.3 2 100
 scoreboard players set durationSlot3 taunt 0
scoreboard players set buffDurationSlot3 atkmodifiers 0
scoreboard players set durationSlot3 regen 0
scoreboard players set durationSlot3 speedBuffs 0
execute if score slot3 hp matches ..0 run scoreboard players set speed slot3 -1000000
tellraw @a[tag=game1] ["Slot 3 has died"]
execute at @e[name=slot3,type=armor_stand] run kill @e[name=!slot3,type=!player,distance=..4]
scoreboard players set curse slot3 0
scoreboard players set curseStacks slot3 0
scoreboard players set curseDuration slot3 0