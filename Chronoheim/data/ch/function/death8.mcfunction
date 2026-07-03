scoreboard players remove alivep2 deaths 1
function ch:cleanseslot8
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

execute if score character# slot1 matches 43 run scoreboard players set zombies booleans 1
execute if score character# slot2 matches 43 run scoreboard players set zombies booleans 1
execute if score character# slot3 matches 43 run scoreboard players set zombies booleans 1


execute if score zombies booleans matches 1 run execute if score slot1 hp matches 1.. if score slot2 hp matches 1.. if score slot3 hp matches 1.. if score slot4 hp matches ..0 run scoreboard players set character# slot4 -8
execute if score zombies booleans matches 1 run execute if score slot1 hp matches 1.. if score slot2 hp matches 1.. if score slot3 hp matches 1.. if score slot4 hp matches ..0 run scoreboard players operation maxspeed slot4 = zombie herospeed
execute if score zombies booleans matches 1 run execute if score slot1 hp matches 1.. if score slot2 hp matches 1.. if score slot3 hp matches 1.. if score slot4 hp matches ..0 run scoreboard players operation speed slot4 = zombie herospeed
execute if score zombies booleans matches 1 run execute if score slot1 hp matches 1.. if score slot2 hp matches 1.. if score slot3 hp matches 1.. if score slot4 hp matches ..0 run scoreboard players operation atk slot4 = zombie heroattack
execute if score zombies booleans matches 1 run execute if score slot1 hp matches 1.. if score slot2 hp matches 1.. if score slot3 hp matches 1.. if score slot4 hp matches ..0 run scoreboard players set slot4 stun 0
execute if score zombies booleans matches 1 run execute if score slot1 hp matches 1.. if score slot2 hp matches 1.. if score slot3 hp matches 1.. if score slot4 hp matches ..0 run scoreboard players set nobasicatk slot4 1
execute if score zombies booleans matches 1 run execute if score slot1 hp matches 1.. if score slot2 hp matches 1.. if score slot3 hp matches 1.. if score slot4 hp matches ..0 run scoreboard players set disarmedslot4 booleaneffects 0
execute if score zombies booleans matches 1 run execute if score slot1 hp matches 1.. if score slot2 hp matches 1.. if score slot3 hp matches 1.. if score slot4 hp matches ..0 run scoreboard players add alivep2 deaths 1
execute if score zombies booleans matches 1 run execute if score slot1 hp matches 1.. if score slot2 hp matches 1.. if score slot3 hp matches 1.. if score slot4 hp matches ..0 at @e[name=slot4] run place template minecraft:zombie ~ ~1 ~ clockwise_90
execute if score zombies booleans matches 1 run execute if score slot1 hp matches 1.. if score slot2 hp matches 1.. if score slot3 hp matches 1.. if score slot4 hp matches ..0 run function ch:cleanseslot4
execute if score zombies booleans matches 1 run execute if score slot1 hp matches 1.. if score slot2 hp matches 1.. if score slot3 hp matches 1.. if score slot4 hp matches ..0 run scoreboard players operation maxhp slot4 = zombie herohealth
execute if score zombies booleans matches 1 run execute if score slot1 hp matches 1.. if score slot2 hp matches 1.. if score slot3 hp matches 1.. if score slot4 hp matches ..0 run scoreboard players operation slot4 hp = zombie herohealth
execute if score zombies booleans matches 1 run execute if score slot1 hp matches 1.. if score slot2 hp matches 1.. if score slot3 hp matches ..0 run scoreboard players set character# slot3 -8
execute if score zombies booleans matches 1 run execute if score slot1 hp matches 1.. if score slot2 hp matches 1.. if score slot3 hp matches ..0 run scoreboard players operation maxspeed slot3 = zombie herospeed
execute if score zombies booleans matches 1 run execute if score slot1 hp matches 1.. if score slot2 hp matches 1.. if score slot3 hp matches ..0 run scoreboard players operation speed slot3 = zombie herospeed
execute if score zombies booleans matches 1 run execute if score slot1 hp matches 1.. if score slot2 hp matches 1.. if score slot3 hp matches ..0 run scoreboard players operation atk slot3 = zombie heroattack
execute if score zombies booleans matches 1 run execute if score slot1 hp matches 1.. if score slot2 hp matches 1.. if score slot3 hp matches ..0 run scoreboard players set slot3 stun 0
execute if score zombies booleans matches 1 run execute if score slot1 hp matches 1.. if score slot2 hp matches 1.. if score slot3 hp matches ..0 run scoreboard players set nobasicatk slot3 1
execute if score zombies booleans matches 1 run execute if score slot1 hp matches 1.. if score slot2 hp matches 1.. if score slot3 hp matches ..0 run scoreboard players set disarmedslot3 booleaneffects 0
execute if score zombies booleans matches 1 run execute if score slot1 hp matches 1.. if score slot2 hp matches 1.. if score slot3 hp matches ..0 run scoreboard players add alivep2 deaths 1
execute if score zombies booleans matches 1 run execute if score slot1 hp matches 1.. if score slot2 hp matches 1.. if score slot3 hp matches ..0 at @e[name=slot3] run place template minecraft:zombie ~ ~1 ~ clockwise_90
execute if score zombies booleans matches 1 run execute if score slot1 hp matches 1.. if score slot2 hp matches 1.. if score slot3 hp matches ..0 run function ch:cleanseslot3
execute if score zombies booleans matches 1 run execute if score slot1 hp matches 1.. if score slot2 hp matches 1.. if score slot3 hp matches ..0 run scoreboard players operation maxhp slot3 = zombie herohealth
execute if score zombies booleans matches 1 run execute if score slot1 hp matches 1.. if score slot2 hp matches 1.. if score slot3 hp matches ..0 run scoreboard players operation slot3 hp = zombie herohealth
execute if score zombies booleans matches 1 run execute if score slot1 hp matches 1.. if score slot2 hp matches ..0 run scoreboard players set character# slot2 -8
execute if score zombies booleans matches 1 run execute if score slot1 hp matches 1.. if score slot2 hp matches ..0 run scoreboard players operation maxspeed slot2 = zombie herospeed
execute if score zombies booleans matches 1 run execute if score slot1 hp matches 1.. if score slot2 hp matches ..0 run scoreboard players operation speed slot2 = zombie herospeed
execute if score zombies booleans matches 1 run execute if score slot1 hp matches 1.. if score slot2 hp matches ..0 run scoreboard players operation atk slot2 = zombie heroattack
execute if score zombies booleans matches 1 run execute if score slot1 hp matches 1.. if score slot2 hp matches ..0 run scoreboard players set slot2 stun 0
execute if score zombies booleans matches 1 run execute if score slot1 hp matches 1.. if score slot2 hp matches ..0 run scoreboard players set nobasicatk slot2 1
execute if score zombies booleans matches 1 run execute if score slot1 hp matches 1.. if score slot2 hp matches ..0 run scoreboard players set disarmedslot2 booleaneffects 0
execute if score zombies booleans matches 1 run execute if score slot1 hp matches 1.. if score slot2 hp matches ..0 run scoreboard players add alivep2 deaths 1
execute if score zombies booleans matches 1 run execute if score slot1 hp matches 1.. if score slot2 hp matches ..0 at @e[name=slot2] run place template minecraft:zombie ~ ~1 ~ clockwise_90
execute if score zombies booleans matches 1 run execute if score slot1 hp matches 1.. if score slot2 hp matches ..0 run function ch:cleanseslot2
execute if score zombies booleans matches 1 run execute if score slot1 hp matches 1.. if score slot2 hp matches ..0 run scoreboard players operation maxhp slot2 = zombie herohealth
execute if score zombies booleans matches 1 run execute if score slot1 hp matches 1.. if score slot2 hp matches ..0 run scoreboard players operation slot2 hp = zombie herohealth
execute if score zombies booleans matches 1 run execute if score slot1 hp matches ..0 run scoreboard players set character# slot1 -8
execute if score zombies booleans matches 1 run execute if score slot1 hp matches ..0 run scoreboard players operation maxspeed slot1 = zombie herospeed
execute if score zombies booleans matches 1 run execute if score slot1 hp matches ..0 run scoreboard players operation speed slot1 = zombie herospeed
execute if score zombies booleans matches 1 run execute if score slot1 hp matches ..0 run scoreboard players operation atk slot1 = zombie heroattack
execute if score zombies booleans matches 1 run execute if score slot1 hp matches ..0 run scoreboard players set slot1 stun 0
execute if score zombies booleans matches 1 run execute if score slot1 hp matches ..0 run scoreboard players set nobasicatk slot1 1
execute if score zombies booleans matches 1 run execute if score slot1 hp matches ..0 run scoreboard players set disarmedslot1 booleaneffects 0
execute if score zombies booleans matches 1 run execute if score slot1 hp matches ..0 run scoreboard players add alivep2 deaths 1
execute if score zombies booleans matches 1 run execute if score slot1 hp matches ..0 at @e[name=slot1] run place template minecraft:zombie ~ ~1 ~ clockwise_90
execute if score zombies booleans matches 1 run execute if score slot1 hp matches ..0 run function ch:cleanseslot1
execute if score zombies booleans matches 1 run execute if score slot1 hp matches ..0 run scoreboard players operation maxhp slot1 = zombie herohealth
execute if score zombies booleans matches 1 run execute if score slot1 hp matches ..0 run scoreboard players operation slot1 hp = zombie herohealth

scoreboard players set zombies booleans 0

execute unless score character# slot8 matches 0 if score slot8 hp matches ..0 run scoreboard players set speed slot8 -1000000
scoreboard players set durationSlot8 taunt 0
scoreboard players set buffDurationSlot8 atkmodifiers 0
scoreboard players set durationSlot8 regen 0
scoreboard players set durationSlot8 speedBuffs 0
execute unless score character# slot8 matches 0 run tellraw @a[tag=game1] ["Slot 8 has died"]
execute at @e[name=slot8,type=armor_stand] run kill @e[name=!slot8,type=!player,distance=..4]
scoreboard players set curse slot8 0
scoreboard players set curseStacks slot8 0
scoreboard players set curseDuration slot8 0