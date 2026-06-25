 scoreboard players remove alivep3 deaths 1
 function chtoo:cleanseslot11
 execute if score character# slot9 matches 28 run scoreboard players set cooldown slot9 0
 execute if score character# slot10 matches 28 run scoreboard players set cooldown slot10 0
 execute if score character# slot11 matches 28 run scoreboard players set cooldown slot11 0
 execute if score character# slot13 matches 28 run scoreboard players set cooldown slot13 0
 execute if score character# slot14 matches 28 run scoreboard players set cooldown slot14 0
 execute if score character# slot15 matches 28 run scoreboard players set cooldown slot15 0
 execute if score character# slot9 matches 28 run execute at @n[type=armor_stand,name=slot9] run particle minecraft:trial_omen ~ ~1 ~ 0.3 0.3 0.3 2 100
execute if score character# slot10 matches 28 run execute at @n[type=armor_stand,name=slot10] run particle minecraft:trial_omen ~ ~1 ~ 0.3 0.3 0.3 2 100
execute if score character# slot11 matches 28 run execute at @n[type=armor_stand,name=slot11] run particle minecraft:trial_omen ~ ~1 ~ 0.3 0.3 0.3 2 100
execute if score character# slot13 matches 28 run execute at @n[type=armor_stand,name=slot13] run particle minecraft:trial_omen ~ ~1 ~ 0.3 0.3 0.3 2 100
execute if score character# slot14 matches 28 run execute at @n[type=armor_stand,name=slot14] run particle minecraft:trial_omen ~ ~1 ~ 0.3 0.3 0.3 2 100
execute if score character# slot15 matches 28 run execute at @n[type=armor_stand,name=slot15] run particle minecraft:trial_omen ~ ~1 ~ 0.3 0.3 0.3 2 100
 scoreboard players set durationSlot11 taunt 0
 scoreboard players set buffDurationSlot11 atkmodifiers 0
scoreboard players set durationSlot11 regen 0
scoreboard players set durationSlot11 speedBuffs 0
execute if score slot11 hp matches ..0 run scoreboard players set speed slot11 -1000000
tellraw @a[tag=game2] ["Slot 3 has died"]
execute at @e[name=slot11,type=armor_stand] run kill @e[name=!slot11,type=!player,distance=..4]
scoreboard players set curse slot11 0
scoreboard players set curseStacks slot11 0
scoreboard players set curseDuration slot11 0