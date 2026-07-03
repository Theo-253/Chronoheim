scoreboard players remove alivep1 deaths 1
function ch:cleanseslot4
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

execute if score character# slot5 matches 43 run scoreboard players set zombies booleans 1
execute if score character# slot6 matches 43 run scoreboard players set zombies booleans 1
execute if score character# slot7 matches 43 run scoreboard players set zombies booleans 1


execute if score zombies booleans matches 1 run execute if score slot5 hp matches 1.. if score slot6 hp matches 1.. if score slot7 hp matches 1.. if score slot8 hp matches ..0 run scoreboard players set character# slot8 -8
execute if score zombies booleans matches 1 run execute if score slot5 hp matches 1.. if score slot6 hp matches 1.. if score slot7 hp matches 1.. if score slot8 hp matches ..0 run scoreboard players operation maxspeed slot8 = zombie herospeed
execute if score zombies booleans matches 1 run execute if score slot5 hp matches 1.. if score slot6 hp matches 1.. if score slot7 hp matches 1.. if score slot8 hp matches ..0 run scoreboard players operation speed slot8 = zombie herospeed
execute if score zombies booleans matches 1 run execute if score slot5 hp matches 1.. if score slot6 hp matches 1.. if score slot7 hp matches 1.. if score slot8 hp matches ..0 run scoreboard players operation atk slot8 = zombie heroattack
execute if score zombies booleans matches 1 run execute if score slot5 hp matches 1.. if score slot6 hp matches 1.. if score slot7 hp matches 1.. if score slot8 hp matches ..0 run scoreboard players set slot8 stun 0
execute if score zombies booleans matches 1 run execute if score slot5 hp matches 1.. if score slot6 hp matches 1.. if score slot7 hp matches 1.. if score slot8 hp matches ..0 run scoreboard players set nobasicatk slot8 1
execute if score zombies booleans matches 1 run execute if score slot5 hp matches 1.. if score slot6 hp matches 1.. if score slot7 hp matches 1.. if score slot8 hp matches ..0 run scoreboard players set disarmedslot8 booleaneffects 0
execute if score zombies booleans matches 1 run execute if score slot5 hp matches 1.. if score slot6 hp matches 1.. if score slot7 hp matches 1.. if score slot8 hp matches ..0 run scoreboard players add alivep2 deaths 1
execute if score zombies booleans matches 1 run execute if score slot5 hp matches 1.. if score slot6 hp matches 1.. if score slot7 hp matches 1.. if score slot8 hp matches ..0 at @e[name=slot8] run place template minecraft:zombie ~ ~1 ~ counterclockwise_90
execute if score zombies booleans matches 1 run execute if score slot5 hp matches 1.. if score slot6 hp matches 1.. if score slot7 hp matches 1.. if score slot8 hp matches ..0 run function ch:cleanseslot8
execute if score zombies booleans matches 1 run execute if score slot5 hp matches 1.. if score slot6 hp matches 1.. if score slot7 hp matches 1.. if score slot8 hp matches ..0 run scoreboard players operation maxhp slot8 = zombie herohealth
execute if score zombies booleans matches 1 run execute if score slot5 hp matches 1.. if score slot6 hp matches 1.. if score slot7 hp matches 1.. if score slot8 hp matches ..0 run scoreboard players operation slot8 hp = zombie herohealth
execute if score zombies booleans matches 1 run execute if score slot5 hp matches 1.. if score slot6 hp matches 1.. if score slot7 hp matches ..0 run scoreboard players set character# slot7 -8
execute if score zombies booleans matches 1 run execute if score slot5 hp matches 1.. if score slot6 hp matches 1.. if score slot7 hp matches ..0 run scoreboard players operation maxspeed slot7 = zombie herospeed
execute if score zombies booleans matches 1 run execute if score slot5 hp matches 1.. if score slot6 hp matches 1.. if score slot7 hp matches ..0 run scoreboard players operation speed slot7 = zombie herospeed
execute if score zombies booleans matches 1 run execute if score slot5 hp matches 1.. if score slot6 hp matches 1.. if score slot7 hp matches ..0 run scoreboard players operation atk slot7 = zombie heroattack
execute if score zombies booleans matches 1 run execute if score slot5 hp matches 1.. if score slot6 hp matches 1.. if score slot7 hp matches ..0 run scoreboard players set slot7 stun 0
execute if score zombies booleans matches 1 run execute if score slot5 hp matches 1.. if score slot6 hp matches 1.. if score slot7 hp matches ..0 run scoreboard players set nobasicatk slot7 1
execute if score zombies booleans matches 1 run execute if score slot5 hp matches 1.. if score slot6 hp matches 1.. if score slot7 hp matches ..0 run scoreboard players set disarmedslot7 booleaneffects 0
execute if score zombies booleans matches 1 run execute if score slot5 hp matches 1.. if score slot6 hp matches 1.. if score slot7 hp matches ..0 run scoreboard players add alivep2 deaths 1
execute if score zombies booleans matches 1 run execute if score slot5 hp matches 1.. if score slot6 hp matches 1.. if score slot7 hp matches ..0 at @e[name=slot7] run place template minecraft:zombie ~ ~1 ~ counterclockwise_90
execute if score zombies booleans matches 1 run execute if score slot5 hp matches 1.. if score slot6 hp matches 1.. if score slot7 hp matches ..0 run function ch:cleanseslot7
execute if score zombies booleans matches 1 run execute if score slot5 hp matches 1.. if score slot6 hp matches 1.. if score slot7 hp matches ..0 run scoreboard players operation maxhp slot7 = zombie herohealth
execute if score zombies booleans matches 1 run execute if score slot5 hp matches 1.. if score slot6 hp matches 1.. if score slot7 hp matches ..0 run scoreboard players operation slot7 hp = zombie herohealth
execute if score zombies booleans matches 1 run execute if score slot5 hp matches 1.. if score slot6 hp matches ..0 run scoreboard players set character# slot6 -8
execute if score zombies booleans matches 1 run execute if score slot5 hp matches 1.. if score slot6 hp matches ..0 run scoreboard players operation maxspeed slot6 = zombie herospeed
execute if score zombies booleans matches 1 run execute if score slot5 hp matches 1.. if score slot6 hp matches ..0 run scoreboard players operation speed slot6 = zombie herospeed
execute if score zombies booleans matches 1 run execute if score slot5 hp matches 1.. if score slot6 hp matches ..0 run scoreboard players operation atk slot6 = zombie heroattack
execute if score zombies booleans matches 1 run execute if score slot5 hp matches 1.. if score slot6 hp matches ..0 run scoreboard players set slot6 stun 0
execute if score zombies booleans matches 1 run execute if score slot5 hp matches 1.. if score slot6 hp matches ..0 run scoreboard players set nobasicatk slot6 1
execute if score zombies booleans matches 1 run execute if score slot5 hp matches 1.. if score slot6 hp matches ..0 run scoreboard players set disarmedslot6 booleaneffects 0
execute if score zombies booleans matches 1 run execute if score slot5 hp matches 1.. if score slot6 hp matches ..0 run scoreboard players add alivep2 deaths 1
execute if score zombies booleans matches 1 run execute if score slot5 hp matches 1.. if score slot6 hp matches ..0 at @e[name=slot6] run place template minecraft:zombie ~ ~1 ~ counterclockwise_90
execute if score zombies booleans matches 1 run execute if score slot5 hp matches 1.. if score slot6 hp matches ..0 run function ch:cleanseslot6
execute if score zombies booleans matches 1 run execute if score slot5 hp matches 1.. if score slot6 hp matches ..0 run scoreboard players operation maxhp slot6 = zombie herohealth
execute if score zombies booleans matches 1 run execute if score slot5 hp matches 1.. if score slot6 hp matches ..0 run scoreboard players operation slot6 hp = zombie herohealth
execute if score zombies booleans matches 1 run execute if score slot5 hp matches ..0 run scoreboard players set character# slot5 -8
execute if score zombies booleans matches 1 run execute if score slot5 hp matches ..0 run scoreboard players operation maxspeed slot5 = zombie herospeed
execute if score zombies booleans matches 1 run execute if score slot5 hp matches ..0 run scoreboard players operation speed slot5 = zombie herospeed
execute if score zombies booleans matches 1 run execute if score slot5 hp matches ..0 run scoreboard players operation atk slot5 = zombie heroattack
execute if score zombies booleans matches 1 run execute if score slot5 hp matches ..0 run scoreboard players set slot5 stun 0
execute if score zombies booleans matches 1 run execute if score slot5 hp matches ..0 run scoreboard players set nobasicatk slot5 1
execute if score zombies booleans matches 1 run execute if score slot5 hp matches ..0 run scoreboard players set disarmedslot5 booleaneffects 0
execute if score zombies booleans matches 1 run execute if score slot5 hp matches ..0 run scoreboard players add alivep2 deaths 1
execute if score zombies booleans matches 1 run execute if score slot5 hp matches ..0 at @e[name=slot5] run place template minecraft:zombie ~ ~1 ~ counterclockwise_90
execute if score zombies booleans matches 1 run execute if score slot5 hp matches ..0 run function ch:cleanseslot5
execute if score zombies booleans matches 1 run execute if score slot5 hp matches ..0 run scoreboard players operation maxhp slot5 = zombie herohealth
execute if score zombies booleans matches 1 run execute if score slot5 hp matches ..0 run scoreboard players operation slot5 hp = zombie herohealth

scoreboard players set zombies booleans 0

execute if score curse slot4 matches 6 run execute if score slot5 hp matches 1.. if score slot6 hp matches 1.. if score slot7 hp matches 1.. if score slot8 hp matches ..0 run scoreboard players set character# slot8 -7
execute if score curse slot4 matches 6 run execute if score slot5 hp matches 1.. if score slot6 hp matches 1.. if score slot7 hp matches 1.. if score slot8 hp matches ..0 run scoreboard players operation maxspeed slot8 = bat herospeed
execute if score curse slot4 matches 6 run execute if score slot5 hp matches 1.. if score slot6 hp matches 1.. if score slot7 hp matches 1.. if score slot8 hp matches ..0 run scoreboard players operation speed slot8 = bat herospeed
execute if score curse slot4 matches 6 run execute if score slot5 hp matches 1.. if score slot6 hp matches 1.. if score slot7 hp matches 1.. if score slot8 hp matches ..0 run scoreboard players operation atk slot8 = bat heroattack
execute if score curse slot4 matches 6 run execute if score slot5 hp matches 1.. if score slot6 hp matches 1.. if score slot7 hp matches 1.. if score slot8 hp matches ..0 run scoreboard players operation atk slot8 *= curseStacks slot4
execute if score curse slot4 matches 6 run execute if score slot5 hp matches 1.. if score slot6 hp matches 1.. if score slot7 hp matches 1.. if score slot8 hp matches ..0 run scoreboard players set slot8 stun 0
execute if score curse slot4 matches 6 run execute if score slot5 hp matches 1.. if score slot6 hp matches 1.. if score slot7 hp matches 1.. if score slot8 hp matches ..0 run scoreboard players set nobasicatk slot8 1
execute if score curse slot4 matches 6 run execute if score slot5 hp matches 1.. if score slot6 hp matches 1.. if score slot7 hp matches 1.. if score slot8 hp matches ..0 run scoreboard players set disarmedslot8 booleaneffects 0
execute if score curse slot4 matches 6 run execute if score slot5 hp matches 1.. if score slot6 hp matches 1.. if score slot7 hp matches 1.. if score slot8 hp matches ..0 run scoreboard players add alivep2 deaths 1
execute if score curse slot4 matches 6 run execute if score slot5 hp matches 1.. if score slot6 hp matches 1.. if score slot7 hp matches 1.. if score slot8 hp matches ..0 at @e[name=slot8] run place template minecraft:bat ~ ~1 ~ counterclockwise_90
execute if score curse slot4 matches 6 run execute if score slot5 hp matches 1.. if score slot6 hp matches 1.. if score slot7 hp matches 1.. if score slot8 hp matches ..0 run function ch:cleanseslot8
execute if score curse slot4 matches 6 run execute if score slot5 hp matches 1.. if score slot6 hp matches 1.. if score slot7 hp matches 1.. if score slot8 hp matches ..0 run scoreboard players operation maxhp slot8 = curseofbatsHPScale spellStats
execute if score curse slot4 matches 6 run execute if score slot5 hp matches 1.. if score slot6 hp matches 1.. if score slot7 hp matches 1.. if score slot8 hp matches ..0 run scoreboard players operation maxhp slot8 *= curseStacks slot4
execute if score curse slot4 matches 6 run execute if score slot5 hp matches 1.. if score slot6 hp matches 1.. if score slot7 hp matches 1.. if score slot8 hp matches ..0 run scoreboard players operation maxhp slot8 -= curseofbatsHPScale spellStats
execute if score curse slot4 matches 6 run execute if score slot5 hp matches 1.. if score slot6 hp matches 1.. if score slot7 hp matches 1.. if score slot8 hp matches ..0 run scoreboard players operation maxhp slot8 += bat herohealth
execute if score curse slot4 matches 6 run execute if score slot5 hp matches 1.. if score slot6 hp matches 1.. if score slot7 hp matches 1.. if score slot8 hp matches ..0 run scoreboard players operation slot8 hp = maxhp slot6
execute if score curse slot4 matches 6 run execute if score slot5 hp matches 1.. if score slot6 hp matches 1.. if score slot7 hp matches ..0 run scoreboard players set character# slot7 -7
execute if score curse slot4 matches 6 run execute if score slot5 hp matches 1.. if score slot6 hp matches 1.. if score slot7 hp matches ..0 run scoreboard players operation maxspeed slot7 = bat herospeed
execute if score curse slot4 matches 6 run execute if score slot5 hp matches 1.. if score slot6 hp matches 1.. if score slot7 hp matches ..0 run scoreboard players operation speed slot7 = bat herospeed
execute if score curse slot4 matches 6 run execute if score slot5 hp matches 1.. if score slot6 hp matches 1.. if score slot7 hp matches ..0 run scoreboard players operation atk slot7 = bat heroattack
execute if score curse slot4 matches 6 run execute if score slot5 hp matches 1.. if score slot6 hp matches 1.. if score slot7 hp matches ..0 run scoreboard players operation atk slot7 *= curseStacks slot4
execute if score curse slot4 matches 6 run execute if score slot5 hp matches 1.. if score slot6 hp matches 1.. if score slot7 hp matches ..0 run scoreboard players set slot7 stun 0
execute if score curse slot4 matches 6 run execute if score slot5 hp matches 1.. if score slot6 hp matches 1.. if score slot7 hp matches ..0 run scoreboard players set nobasicatk slot7 1
execute if score curse slot4 matches 6 run execute if score slot5 hp matches 1.. if score slot6 hp matches 1.. if score slot7 hp matches ..0 run scoreboard players set disarmedslot7 booleaneffects 0
execute if score curse slot4 matches 6 run execute if score slot5 hp matches 1.. if score slot6 hp matches 1.. if score slot7 hp matches ..0 run scoreboard players add alivep2 deaths 1
execute if score curse slot4 matches 6 run execute if score slot5 hp matches 1.. if score slot6 hp matches 1.. if score slot7 hp matches ..0 at @e[name=slot7] run place template minecraft:bat ~ ~1 ~ counterclockwise_90
execute if score curse slot4 matches 6 run execute if score slot5 hp matches 1.. if score slot6 hp matches 1.. if score slot7 hp matches ..0 run function ch:cleanseslot7
execute if score curse slot4 matches 6 run execute if score slot5 hp matches 1.. if score slot6 hp matches 1.. if score slot7 hp matches ..0 run scoreboard players operation maxhp slot7 = curseofbatsHPScale spellStats
execute if score curse slot4 matches 6 run execute if score slot5 hp matches 1.. if score slot6 hp matches 1.. if score slot7 hp matches ..0 run scoreboard players operation maxhp slot7 *= curseStacks slot4
execute if score curse slot4 matches 6 run execute if score slot5 hp matches 1.. if score slot6 hp matches 1.. if score slot7 hp matches ..0 run scoreboard players operation maxhp slot7 -= curseofbatsHPScale spellStats
execute if score curse slot4 matches 6 run execute if score slot5 hp matches 1.. if score slot6 hp matches 1.. if score slot7 hp matches ..0 run scoreboard players operation maxhp slot7 += bat herohealth
execute if score curse slot4 matches 6 run execute if score slot5 hp matches 1.. if score slot6 hp matches 1.. if score slot7 hp matches ..0 run scoreboard players operation slot7 hp = maxhp slot6
execute if score curse slot4 matches 6 run execute if score slot5 hp matches 1.. if score slot6 hp matches ..0 run scoreboard players set character# slot6 -7
execute if score curse slot4 matches 6 run execute if score slot5 hp matches 1.. if score slot6 hp matches ..0 run scoreboard players operation maxspeed slot6 = bat herospeed
execute if score curse slot4 matches 6 run execute if score slot5 hp matches 1.. if score slot6 hp matches ..0 run scoreboard players operation speed slot6 = bat herospeed
execute if score curse slot4 matches 6 run execute if score slot5 hp matches 1.. if score slot6 hp matches ..0 run scoreboard players operation atk slot6 = bat heroattack
execute if score curse slot4 matches 6 run execute if score slot5 hp matches 1.. if score slot6 hp matches ..0 run scoreboard players operation atk slot6 *= curseStacks slot4
execute if score curse slot4 matches 6 run execute if score slot5 hp matches 1.. if score slot6 hp matches ..0 run scoreboard players set slot6 stun 0
execute if score curse slot4 matches 6 run execute if score slot5 hp matches 1.. if score slot6 hp matches ..0 run scoreboard players set nobasicatk slot6 1
execute if score curse slot4 matches 6 run execute if score slot5 hp matches 1.. if score slot6 hp matches ..0 run scoreboard players set disarmedslot6 booleaneffects 0
execute if score curse slot4 matches 6 run execute if score slot5 hp matches 1.. if score slot6 hp matches ..0 run scoreboard players add alivep2 deaths 1
execute if score curse slot4 matches 6 run execute if score slot5 hp matches 1.. if score slot6 hp matches ..0 at @e[name=slot6] run place template minecraft:bat ~ ~1 ~ counterclockwise_90
execute if score curse slot4 matches 6 run execute if score slot5 hp matches 1.. if score slot6 hp matches ..0 run function ch:cleanseslot6
execute if score curse slot4 matches 6 run execute if score slot5 hp matches 1.. if score slot6 hp matches ..0 run scoreboard players operation maxhp slot6 = curseofbatsHPScale spellStats
execute if score curse slot4 matches 6 run execute if score slot5 hp matches 1.. if score slot6 hp matches ..0 run scoreboard players operation maxhp slot6 *= curseStacks slot4
execute if score curse slot4 matches 6 run execute if score slot5 hp matches 1.. if score slot6 hp matches ..0 run scoreboard players operation maxhp slot6 -= curseofbatsHPScale spellStats
execute if score curse slot4 matches 6 run execute if score slot5 hp matches 1.. if score slot6 hp matches ..0 run scoreboard players operation maxhp slot6 += bat herohealth
execute if score curse slot4 matches 6 run execute if score slot5 hp matches 1.. if score slot6 hp matches ..0 run scoreboard players operation slot6 hp = maxhp slot6
execute if score curse slot4 matches 6 run execute if score slot5 hp matches ..0 run scoreboard players set character# slot5 -7
execute if score curse slot4 matches 6 run execute if score slot5 hp matches ..0 run scoreboard players operation maxspeed slot5 = bat herospeed
execute if score curse slot4 matches 6 run execute if score slot5 hp matches ..0 run scoreboard players operation speed slot5 = bat herospeed
execute if score curse slot4 matches 6 run execute if score slot5 hp matches ..0 run scoreboard players operation atk slot5 = bat heroattack
execute if score curse slot4 matches 6 run execute if score slot5 hp matches ..0 run scoreboard players operation atk slot5 *= curseStacks slot4
execute if score curse slot4 matches 6 run execute if score slot5 hp matches ..0 run scoreboard players set slot5 stun 0
execute if score curse slot4 matches 6 run execute if score slot5 hp matches ..0 run scoreboard players set nobasicatk slot5 1
execute if score curse slot4 matches 6 run execute if score slot5 hp matches ..0 run scoreboard players set disarmedslot5 booleaneffects 0
execute if score curse slot4 matches 6 run execute if score slot5 hp matches ..0 run scoreboard players add alivep2 deaths 1
execute if score curse slot4 matches 6 run execute if score slot5 hp matches ..0 at @e[name=slot5] run place template minecraft:bat ~ ~1 ~ counterclockwise_90
execute if score curse slot4 matches 6 run execute if score slot5 hp matches ..0 run function ch:cleanseslot5
execute if score curse slot4 matches 6 run execute if score slot5 hp matches ..0 run scoreboard players operation maxhp slot5 = curseofbatsHPScale spellStats
execute if score curse slot4 matches 6 run execute if score slot5 hp matches ..0 run scoreboard players operation maxhp slot5 *= curseStacks slot4
execute if score curse slot4 matches 6 run execute if score slot5 hp matches ..0 run scoreboard players operation maxhp slot5 -= curseofbatsHPScale spellStats
execute if score curse slot4 matches 6 run execute if score slot5 hp matches ..0 run scoreboard players operation maxhp slot5 += bat herohealth
execute if score curse slot4 matches 6 run execute if score slot5 hp matches ..0 run scoreboard players operation slot5 hp = maxhp slot5

scoreboard players set durationSlot4 taunt 0
scoreboard players set buffDurationSlot4 atkmodifiers 0
scoreboard players set durationSlot4 regen 0
scoreboard players set durationSlot4 speedBuffs 0
execute unless score character# slot4 matches 0 if score slot4 hp matches ..0 run scoreboard players set speed slot4 -1000000
execute unless score character# slot4 matches 0 run tellraw @a[tag=game1] ["Slot 4 has died"]
execute at @e[name=slot4,type=armor_stand] run kill @e[name=!slot4,type=!player,distance=..4]
scoreboard players set curse slot4 0
scoreboard players set curseStacks slot4 0
scoreboard players set curseDuration slot4 0