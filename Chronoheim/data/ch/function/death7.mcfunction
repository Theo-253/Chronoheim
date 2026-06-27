scoreboard players remove alivep2 deaths 1
function ch:cleanseslot7
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
execute if score character# slot1 matches 37 if score character# slot7 matches 1.. run scoreboard players operation atk slot1 += boogalooDeath abilityStats
execute if score character# slot2 matches 37 if score character# slot7 matches 1.. run scoreboard players operation atk slot2 += boogalooDeath abilityStats
execute if score character# slot3 matches 37 if score character# slot7 matches 1.. run scoreboard players operation atk slot3 += boogalooDeath abilityStats
execute if score character# slot1 matches 37 if score character# slot7 matches 1.. run execute at @n[type=armor_stand,name=slot1] run particle minecraft:raid_omen ~ ~1 ~ 0.3 0.3 0.3 2 100
execute if score character# slot2 matches 37 if score character# slot7 matches 1.. run execute at @n[type=armor_stand,name=slot2] run particle minecraft:raid_omen ~ ~1 ~ 0.3 0.3 0.3 2 100
execute if score character# slot3 matches 37 if score character# slot7 matches 1.. run execute at @n[type=armor_stand,name=slot3] run particle minecraft:raid_omen ~ ~1 ~ 0.3 0.3 0.3 2 100


execute if score slot7 hp matches ..0 run scoreboard players set speed slot7 -1000000
scoreboard players set durationSlot7 taunt 0
scoreboard players set buffDurationSlot7 atkmodifiers 0
scoreboard players set durationSlot7 regen 0
scoreboard players set durationSlot7 speedBuffs 0
tellraw @a[tag=game1] ["Slot 7 has died"]
execute at @e[name=slot7,type=armor_stand] run kill @e[name=!slot7,type=!player,distance=..4]
scoreboard players set curse slot7 0
scoreboard players set curseStacks slot7 0
scoreboard players set curseDuration slot7 0