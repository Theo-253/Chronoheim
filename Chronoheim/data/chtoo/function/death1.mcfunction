scoreboard players remove alivep3 deaths 1
function chtoo:cleanseslot9
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
scoreboard players set durationSlot9 taunt 0
scoreboard players set buffDurationSlot9 atkmodifiers 0
scoreboard players set durationSlot9 regen 0
scoreboard players set durationSlot9 speedBuffs 0
execute if score slot9 hp matches ..0 run scoreboard players set speed slot9 -1000000
tellraw @a[tag=game2] ["Slot 1 has died"]
execute at @e[name=slot9,type=armor_stand] run kill @e[name=!slot9,type=!player,distance=..4]
scoreboard players set curse slot9 0
scoreboard players set curseStacks slot9 0
scoreboard players set curseDuration slot9 0

