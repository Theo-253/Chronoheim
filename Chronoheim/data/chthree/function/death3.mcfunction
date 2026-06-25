 scoreboard players remove alivep5 deaths 1
 function chthree:cleanseslot19
 execute if score character# slot17 matches 28 run scoreboard players set cooldown slot17 0
 execute if score character# slot18 matches 28 run scoreboard players set cooldown slot18 0
 execute if score character# slot19 matches 28 run scoreboard players set cooldown slot19 0
 execute if score character# slot21 matches 28 run scoreboard players set cooldown slot21 0
 execute if score character# slot22 matches 28 run scoreboard players set cooldown slot22 0
 execute if score character# slot23 matches 28 run scoreboard players set cooldown slot23 0
 execute if score character# slot17 matches 28 run execute at @n[type=armor_stand,name=slot17] run particle minecraft:trial_omen ~ ~1 ~ 0.3 0.3 0.3 2 100
execute if score character# slot18 matches 28 run execute at @n[type=armor_stand,name=slot18] run particle minecraft:trial_omen ~ ~1 ~ 0.3 0.3 0.3 2 100
execute if score character# slot19 matches 28 run execute at @n[type=armor_stand,name=slot19] run particle minecraft:trial_omen ~ ~1 ~ 0.3 0.3 0.3 2 100
execute if score character# slot21 matches 28 run execute at @n[type=armor_stand,name=slot21] run particle minecraft:trial_omen ~ ~1 ~ 0.3 0.3 0.3 2 100
execute if score character# slot22 matches 28 run execute at @n[type=armor_stand,name=slot22] run particle minecraft:trial_omen ~ ~1 ~ 0.3 0.3 0.3 2 100
execute if score character# slot23 matches 28 run execute at @n[type=armor_stand,name=slot23] run particle minecraft:trial_omen ~ ~1 ~ 0.3 0.3 0.3 2 100
 scoreboard players set durationSlot19 taunt 0
scoreboard players set buffDurationSlot19 atkmodifiers 0
scoreboard players set durationSlot19 regen 0
scoreboard players set durationSlot19 speedBuffs 0
execute if score slot19 hp matches ..0 run scoreboard players set speed slot19 -1000000
tellraw @a[tag=game3] ["Slot 3 has died"]
execute at @e[name=slot19,type=armor_stand] run kill @e[name=!slot19,type=!player,distance=..4]
scoreboard players set curse slot19 0
scoreboard players set curseStacks slot19 0
scoreboard players set curseDuration slot19 0