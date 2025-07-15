scoreboard players remove alivep4 deaths 1
function ch:cleanseslot15
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
execute if score slot15 hp matches ..0 run scoreboard players set speed slot15 -1000000
scoreboard players set durationSlot15 taunt 0
tellraw @a[tag=game2] ["Slot 7 has died"]
execute at @e[name=slot15,type=armor_stand] run kill @e[name=!slot15,type=!player,distance=..4]
