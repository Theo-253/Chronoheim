scoreboard players remove alivep6 deaths 1
function chthree:cleanseslot24
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
execute unless score character# slot24 matches 0 if score slot24 hp matches ..0 run scoreboard players set speed slot24 -1000000
scoreboard players set durationSlot24 taunt 0
execute unless score character# slot24 matches 0 run tellraw @a[tag=game3] ["Slot 8 has died"]
execute at @e[name=slot24,type=armor_stand] run kill @e[name=!slot24,type=!player,distance=..4]