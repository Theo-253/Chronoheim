 scoreboard players remove alivep2 deaths 1
 function ch:cleanseslot5
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
execute if score character# slot1 matches 37 if score character# slot5 matches 1.. run scoreboard players operation atk slot1 += boogalooDeath abilityStats
execute if score character# slot2 matches 37 if score character# slot5 matches 1.. run scoreboard players operation atk slot2 += boogalooDeath abilityStats
execute if score character# slot3 matches 37 if score character# slot5 matches 1.. run scoreboard players operation atk slot3 += boogalooDeath abilityStats
execute if score character# slot1 matches 37 if score character# slot5 matches 1.. run execute at @n[type=armor_stand,name=slot1] run particle minecraft:raid_omen ~ ~1 ~ 0.3 0.3 0.3 2 100
execute if score character# slot2 matches 37 if score character# slot5 matches 1.. run execute at @n[type=armor_stand,name=slot2] run particle minecraft:raid_omen ~ ~1 ~ 0.3 0.3 0.3 2 100
execute if score character# slot3 matches 37 if score character# slot5 matches 1.. run execute at @n[type=armor_stand,name=slot3] run particle minecraft:raid_omen ~ ~1 ~ 0.3 0.3 0.3 2 100

 scoreboard players set durationSlot5 taunt 0
 scoreboard players set buffDurationSlot5 atkmodifiers 0
scoreboard players set durationSlot5 regen 0
scoreboard players set durationSlot5 speedBuffs 0
execute if score slot5 hp matches ..0 run scoreboard players set speed slot5 -1000000
tellraw @a[tag=game1] ["Slot 5 has died"]
execute at @e[name=slot5,type=armor_stand] run kill @e[name=!slot5,type=!player,distance=..4]
scoreboard players set curse slot5 0
scoreboard players set curseStacks slot5 0
scoreboard players set curseDuration slot5 0

