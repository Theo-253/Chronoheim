scoreboard players remove alivep4 deaths 1
function chtoo:cleanseslot16
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
execute unless score character# slot16 matches 0 if score slot16 hp matches ..0 run scoreboard players set speed slot16 -1000000

execute if score character# slot9 matches 37 if score character# slot16 matches 1.. run scoreboard players operation atk slot9 += boogalooDeath abilityStats
execute if score character# slot10 matches 37 if score character# slot16 matches 1.. run scoreboard players operation atk slot10 += boogalooDeath abilityStats
execute if score character# slot11 matches 37 if score character# slot16 matches 1.. run scoreboard players operation atk slot11 += boogalooDeath abilityStats
execute if score character# slot9 matches 37 if score character# slot16 matches 1.. run execute at @n[type=armor_stand,name=slot9] run particle minecraft:raid_omen ~ ~1 ~ 0.3 0.3 0.3 2 100
execute if score character# slot10 matches 37 if score character# slot16 matches 1.. run execute at @n[type=armor_stand,name=slot10] run particle minecraft:raid_omen ~ ~1 ~ 0.3 0.3 0.3 2 100
execute if score character# slot11 matches 37 if score character# slot16 matches 1.. run execute at @n[type=armor_stand,name=slot11] run particle minecraft:raid_omen ~ ~1 ~ 0.3 0.3 0.3 2 100

execute if score character# slot9 matches 43 run scoreboard players set zombies2 booleans 1
execute if score character# slot10 matches 43 run scoreboard players set zombies2 booleans 1
execute if score character# slot11 matches 43 run scoreboard players set zombies2 booleans 1

execute if score character# slot9 matches 43 if score slot9 hp matches 1.. run scoreboard players set zombies2 booleans 1
execute if score character# slot10 matches 43 if score slot10 hp matches 1.. run scoreboard players set zombies2 booleans 1
execute if score character# slot11 matches 43 if score slot11 hp matches 1.. run scoreboard players set zombies2 booleans 1

execute if score zombies2 booleans matches 1 run execute if score slot9 hp matches 1.. if score slot10 hp matches 1.. if score slot11 hp matches 1.. if score slot12 hp matches ..0 run scoreboard players set character# slot12 -8
execute if score zombies2 booleans matches 1 run execute if score slot9 hp matches 1.. if score slot10 hp matches 1.. if score slot11 hp matches 1.. if score slot12 hp matches ..0 run scoreboard players operation maxspeed slot12 = zombie herospeed
execute if score zombies2 booleans matches 1 run execute if score slot9 hp matches 1.. if score slot10 hp matches 1.. if score slot11 hp matches 1.. if score slot12 hp matches ..0 run scoreboard players operation speed slot12 = zombie herospeed
execute if score zombies2 booleans matches 1 run execute if score slot9 hp matches 1.. if score slot10 hp matches 1.. if score slot11 hp matches 1.. if score slot12 hp matches ..0 run scoreboard players operation atk slot12 = zombie heroattack
execute if score zombies2 booleans matches 1 run execute if score slot9 hp matches 1.. if score slot10 hp matches 1.. if score slot11 hp matches 1.. if score slot12 hp matches ..0 run scoreboard players set slot12 stun 0
execute if score zombies2 booleans matches 1 run execute if score slot9 hp matches 1.. if score slot10 hp matches 1.. if score slot11 hp matches 1.. if score slot12 hp matches ..0 run scoreboard players set nobasicatk slot12 0
execute if score zombies2 booleans matches 1 run execute if score slot9 hp matches 1.. if score slot10 hp matches 1.. if score slot11 hp matches 1.. if score slot12 hp matches ..0 run scoreboard players set disarmedslot12 booleaneffects 0
execute if score zombies2 booleans matches 1 run execute if score slot9 hp matches 1.. if score slot10 hp matches 1.. if score slot11 hp matches 1.. if score slot12 hp matches ..0 run scoreboard players add alivep2 deaths 1
execute if score zombies2 booleans matches 1 run execute if score slot9 hp matches 1.. if score slot10 hp matches 1.. if score slot11 hp matches 1.. if score slot12 hp matches ..0 at @e[name=slot12] run place template minecraft:zombie ~ ~1 ~ clockwise_90
execute if score zombies2 booleans matches 1 run execute if score slot9 hp matches 1.. if score slot10 hp matches 1.. if score slot11 hp matches 1.. if score slot12 hp matches ..0 run function chtoo:cleanseslot12
execute if score zombies2 booleans matches 1 run execute if score slot9 hp matches 1.. if score slot10 hp matches 1.. if score slot11 hp matches 1.. if score slot12 hp matches ..0 run scoreboard players operation maxhp slot12 = zombie herohealth
execute if score zombies2 booleans matches 1 run execute if score slot9 hp matches 1.. if score slot10 hp matches 1.. if score slot11 hp matches 1.. if score slot12 hp matches ..0 run scoreboard players operation slot12 hp = zombie herohealth
execute if score zombies2 booleans matches 1 run execute if score slot9 hp matches 1.. if score slot10 hp matches 1.. if score slot11 hp matches ..0 run scoreboard players set character# slot11 -8
execute if score zombies2 booleans matches 1 run execute if score slot9 hp matches 1.. if score slot10 hp matches 1.. if score slot11 hp matches ..0 run scoreboard players operation maxspeed slot11 = zombie herospeed
execute if score zombies2 booleans matches 1 run execute if score slot9 hp matches 1.. if score slot10 hp matches 1.. if score slot11 hp matches ..0 run scoreboard players operation speed slot11 = zombie herospeed
execute if score zombies2 booleans matches 1 run execute if score slot9 hp matches 1.. if score slot10 hp matches 1.. if score slot11 hp matches ..0 run scoreboard players operation atk slot11 = zombie heroattack
execute if score zombies2 booleans matches 1 run execute if score slot9 hp matches 1.. if score slot10 hp matches 1.. if score slot11 hp matches ..0 run scoreboard players set slot11 stun 0
execute if score zombies2 booleans matches 1 run execute if score slot9 hp matches 1.. if score slot10 hp matches 1.. if score slot11 hp matches ..0 run scoreboard players set nobasicatk slot11 0
execute if score zombies2 booleans matches 1 run execute if score slot9 hp matches 1.. if score slot10 hp matches 1.. if score slot11 hp matches ..0 run scoreboard players set disarmedslot11 booleaneffects 0
execute if score zombies2 booleans matches 1 run execute if score slot9 hp matches 1.. if score slot10 hp matches 1.. if score slot11 hp matches ..0 run scoreboard players add alivep2 deaths 1
execute if score zombies2 booleans matches 1 run execute if score slot9 hp matches 1.. if score slot10 hp matches 1.. if score slot11 hp matches ..0 at @e[name=slot11] run place template minecraft:zombie ~ ~1 ~ clockwise_90
execute if score zombies2 booleans matches 1 run execute if score slot9 hp matches 1.. if score slot10 hp matches 1.. if score slot11 hp matches ..0 run function chtoo:cleanseslot11
execute if score zombies2 booleans matches 1 run execute if score slot9 hp matches 1.. if score slot10 hp matches 1.. if score slot11 hp matches ..0 run scoreboard players operation maxhp slot11 = zombie herohealth
execute if score zombies2 booleans matches 1 run execute if score slot9 hp matches 1.. if score slot10 hp matches 1.. if score slot11 hp matches ..0 run scoreboard players operation slot11 hp = zombie herohealth
execute if score zombies2 booleans matches 1 run execute if score slot9 hp matches 1.. if score slot10 hp matches ..0 run scoreboard players set character# slot10 -8
execute if score zombies2 booleans matches 1 run execute if score slot9 hp matches 1.. if score slot10 hp matches ..0 run scoreboard players operation maxspeed slot10 = zombie herospeed
execute if score zombies2 booleans matches 1 run execute if score slot9 hp matches 1.. if score slot10 hp matches ..0 run scoreboard players operation speed slot10 = zombie herospeed
execute if score zombies2 booleans matches 1 run execute if score slot9 hp matches 1.. if score slot10 hp matches ..0 run scoreboard players operation atk slot10 = zombie heroattack
execute if score zombies2 booleans matches 1 run execute if score slot9 hp matches 1.. if score slot10 hp matches ..0 run scoreboard players set slot10 stun 0
execute if score zombies2 booleans matches 1 run execute if score slot9 hp matches 1.. if score slot10 hp matches ..0 run scoreboard players set nobasicatk slot10 0
execute if score zombies2 booleans matches 1 run execute if score slot9 hp matches 1.. if score slot10 hp matches ..0 run scoreboard players set disarmedslot10 booleaneffects 0
execute if score zombies2 booleans matches 1 run execute if score slot9 hp matches 1.. if score slot10 hp matches ..0 run scoreboard players add alivep2 deaths 1
execute if score zombies2 booleans matches 1 run execute if score slot9 hp matches 1.. if score slot10 hp matches ..0 at @e[name=slot10] run place template minecraft:zombie ~ ~1 ~ clockwise_90
execute if score zombies2 booleans matches 1 run execute if score slot9 hp matches 1.. if score slot10 hp matches ..0 run function chtoo:cleanseslot10
execute if score zombies2 booleans matches 1 run execute if score slot9 hp matches 1.. if score slot10 hp matches ..0 run scoreboard players operation maxhp slot10 = zombie herohealth
execute if score zombies2 booleans matches 1 run execute if score slot9 hp matches 1.. if score slot10 hp matches ..0 run scoreboard players operation slot10 hp = zombie herohealth
execute if score zombies2 booleans matches 1 run execute if score slot9 hp matches ..0 run scoreboard players set character# slot9 -8
execute if score zombies2 booleans matches 1 run execute if score slot9 hp matches ..0 run scoreboard players operation maxspeed slot9 = zombie herospeed
execute if score zombies2 booleans matches 1 run execute if score slot9 hp matches ..0 run scoreboard players operation speed slot9 = zombie herospeed
execute if score zombies2 booleans matches 1 run execute if score slot9 hp matches ..0 run scoreboard players operation atk slot9 = zombie heroattack
execute if score zombies2 booleans matches 1 run execute if score slot9 hp matches ..0 run scoreboard players set slot9 stun 0
execute if score zombies2 booleans matches 1 run execute if score slot9 hp matches ..0 run scoreboard players set nobasicatk slot9 0
execute if score zombies2 booleans matches 1 run execute if score slot9 hp matches ..0 run scoreboard players set disarmedslot9 booleaneffects 0
execute if score zombies2 booleans matches 1 run execute if score slot9 hp matches ..0 run scoreboard players add alivep2 deaths 1
execute if score zombies2 booleans matches 1 run execute if score slot9 hp matches ..0 at @e[name=slot9] run place template minecraft:zombie ~ ~1 ~ clockwise_90
execute if score zombies2 booleans matches 1 run execute if score slot9 hp matches ..0 run function chtoo:cleanseslot9
execute if score zombies2 booleans matches 1 run execute if score slot9 hp matches ..0 run scoreboard players operation maxhp slot9 = zombie herohealth
execute if score zombies2 booleans matches 1 run execute if score slot9 hp matches ..0 run scoreboard players operation slot9 hp = zombie herohealth

scoreboard players set zombies2 booleans 0

execute if score curse slot16 matches 6 run execute if score slot9 hp matches 1.. if score slot10 hp matches 1.. if score slot11 hp matches 1.. if score slot12 hp matches ..0 run scoreboard players set character# slot12 -7
execute if score curse slot16 matches 6 run execute if score slot9 hp matches 1.. if score slot10 hp matches 1.. if score slot11 hp matches 1.. if score slot12 hp matches ..0 run scoreboard players operation maxspeed slot12 = bat herospeed
execute if score curse slot16 matches 6 run execute if score slot9 hp matches 1.. if score slot10 hp matches 1.. if score slot11 hp matches 1.. if score slot12 hp matches ..0 run scoreboard players operation speed slot12 = bat herospeed
execute if score curse slot16 matches 6 run execute if score slot9 hp matches 1.. if score slot10 hp matches 1.. if score slot11 hp matches 1.. if score slot12 hp matches ..0 run scoreboard players operation atk slot12 = bat heroattack
execute if score curse slot16 matches 6 run execute if score slot9 hp matches 1.. if score slot10 hp matches 1.. if score slot11 hp matches 1.. if score slot12 hp matches ..0 run scoreboard players operation atk slot12 *= curseStacks slot16
execute if score curse slot16 matches 6 run execute if score slot9 hp matches 1.. if score slot10 hp matches 1.. if score slot11 hp matches 1.. if score slot12 hp matches ..0 run scoreboard players set slot12 stun 0
execute if score curse slot16 matches 6 run execute if score slot9 hp matches 1.. if score slot10 hp matches 1.. if score slot11 hp matches 1.. if score slot12 hp matches ..0 run scoreboard players set nobasicatk slot12 0
execute if score curse slot16 matches 6 run execute if score slot9 hp matches 1.. if score slot10 hp matches 1.. if score slot11 hp matches 1.. if score slot12 hp matches ..0 run scoreboard players set disarmedslot12 booleaneffects 0
execute if score curse slot16 matches 6 run execute if score slot9 hp matches 1.. if score slot10 hp matches 1.. if score slot11 hp matches 1.. if score slot12 hp matches ..0 run scoreboard players add alivep2 deaths 1
execute if score curse slot16 matches 6 run execute if score slot9 hp matches 1.. if score slot10 hp matches 1.. if score slot11 hp matches 1.. if score slot12 hp matches ..0 at @e[name=slot12] run place template minecraft:bat ~ ~1 ~ clockwise_90
execute if score curse slot16 matches 6 run execute if score slot9 hp matches 1.. if score slot10 hp matches 1.. if score slot11 hp matches 1.. if score slot12 hp matches ..0 run function chtoo:cleanseslot12
execute if score curse slot16 matches 6 run execute if score slot9 hp matches 1.. if score slot10 hp matches 1.. if score slot11 hp matches 1.. if score slot12 hp matches ..0 run scoreboard players operation maxhp slot12 = curseofbatsHPScale spellStats
execute if score curse slot16 matches 6 run execute if score slot9 hp matches 1.. if score slot10 hp matches 1.. if score slot11 hp matches 1.. if score slot12 hp matches ..0 run scoreboard players operation maxhp slot12 *= curseStacks slot16
execute if score curse slot16 matches 6 run execute if score slot9 hp matches 1.. if score slot10 hp matches 1.. if score slot11 hp matches 1.. if score slot12 hp matches ..0 run scoreboard players operation maxhp slot12 -= curseofbatsHPScale spellStats
execute if score curse slot16 matches 6 run execute if score slot9 hp matches 1.. if score slot10 hp matches 1.. if score slot11 hp matches 1.. if score slot12 hp matches ..0 run scoreboard players operation maxhp slot12 += bat herohealth
execute if score curse slot16 matches 6 run execute if score slot9 hp matches 1.. if score slot10 hp matches 1.. if score slot11 hp matches 1.. if score slot12 hp matches ..0 run scoreboard players operation slot12 hp = maxhp slot12
execute if score curse slot16 matches 6 run execute if score slot9 hp matches 1.. if score slot10 hp matches 1.. if score slot11 hp matches ..0 run scoreboard players set character# slot11 -7
execute if score curse slot16 matches 6 run execute if score slot9 hp matches 1.. if score slot10 hp matches 1.. if score slot11 hp matches ..0 run scoreboard players operation maxspeed slot11 = bat herospeed
execute if score curse slot16 matches 6 run execute if score slot9 hp matches 1.. if score slot10 hp matches 1.. if score slot11 hp matches ..0 run scoreboard players operation speed slot11 = bat herospeed
execute if score curse slot16 matches 6 run execute if score slot9 hp matches 1.. if score slot10 hp matches 1.. if score slot11 hp matches ..0 run scoreboard players operation atk slot11 = bat heroattack
execute if score curse slot16 matches 6 run execute if score slot9 hp matches 1.. if score slot10 hp matches 1.. if score slot11 hp matches ..0 run scoreboard players operation atk slot11 *= curseStacks slot16
execute if score curse slot16 matches 6 run execute if score slot9 hp matches 1.. if score slot10 hp matches 1.. if score slot11 hp matches ..0 run scoreboard players set slot11 stun 0
execute if score curse slot16 matches 6 run execute if score slot9 hp matches 1.. if score slot10 hp matches 1.. if score slot11 hp matches ..0 run scoreboard players set nobasicatk slot11 0
execute if score curse slot16 matches 6 run execute if score slot9 hp matches 1.. if score slot10 hp matches 1.. if score slot11 hp matches ..0 run scoreboard players set disarmedslot11 booleaneffects 0
execute if score curse slot16 matches 6 run execute if score slot9 hp matches 1.. if score slot10 hp matches 1.. if score slot11 hp matches ..0 run scoreboard players add alivep2 deaths 1
execute if score curse slot16 matches 6 run execute if score slot9 hp matches 1.. if score slot10 hp matches 1.. if score slot11 hp matches ..0 at @e[name=slot11] run place template minecraft:bat ~ ~1 ~ clockwise_90
execute if score curse slot16 matches 6 run execute if score slot9 hp matches 1.. if score slot10 hp matches 1.. if score slot11 hp matches ..0 run function chtoo:cleanseslot11
execute if score curse slot16 matches 6 run execute if score slot9 hp matches 1.. if score slot10 hp matches 1.. if score slot11 hp matches ..0 run scoreboard players operation maxhp slot11 = curseofbatsHPScale spellStats
execute if score curse slot16 matches 6 run execute if score slot9 hp matches 1.. if score slot10 hp matches 1.. if score slot11 hp matches ..0 run scoreboard players operation maxhp slot11 *= curseStacks slot16
execute if score curse slot16 matches 6 run execute if score slot9 hp matches 1.. if score slot10 hp matches 1.. if score slot11 hp matches ..0 run scoreboard players operation maxhp slot11 -= curseofbatsHPScale spellStats
execute if score curse slot16 matches 6 run execute if score slot9 hp matches 1.. if score slot10 hp matches 1.. if score slot11 hp matches ..0 run scoreboard players operation maxhp slot11 += bat herohealth
execute if score curse slot16 matches 6 run execute if score slot9 hp matches 1.. if score slot10 hp matches 1.. if score slot11 hp matches ..0 run scoreboard players operation slot11 hp = maxhp slot11
execute if score curse slot16 matches 6 run execute if score slot9 hp matches 1.. if score slot10 hp matches ..0 run scoreboard players set character# slot10 -7
execute if score curse slot16 matches 6 run execute if score slot9 hp matches 1.. if score slot10 hp matches ..0 run scoreboard players operation maxspeed slot10 = bat herospeed
execute if score curse slot16 matches 6 run execute if score slot9 hp matches 1.. if score slot10 hp matches ..0 run scoreboard players operation speed slot10 = bat herospeed
execute if score curse slot16 matches 6 run execute if score slot9 hp matches 1.. if score slot10 hp matches ..0 run scoreboard players operation atk slot10 = bat heroattack
execute if score curse slot16 matches 6 run execute if score slot9 hp matches 1.. if score slot10 hp matches ..0 run scoreboard players operation atk slot10 *= curseStacks slot16
execute if score curse slot16 matches 6 run execute if score slot9 hp matches 1.. if score slot10 hp matches ..0 run scoreboard players set slot10 stun 0
execute if score curse slot16 matches 6 run execute if score slot9 hp matches 1.. if score slot10 hp matches ..0 run scoreboard players set nobasicatk slot10 0
execute if score curse slot16 matches 6 run execute if score slot9 hp matches 1.. if score slot10 hp matches ..0 run scoreboard players set disarmedslot10 booleaneffects 0
execute if score curse slot16 matches 6 run execute if score slot9 hp matches 1.. if score slot10 hp matches ..0 run scoreboard players add alivep2 deaths 1
execute if score curse slot16 matches 6 run execute if score slot9 hp matches 1.. if score slot10 hp matches ..0 at @e[name=slot10] run place template minecraft:bat ~ ~1 ~ clockwise_90
execute if score curse slot16 matches 6 run execute if score slot9 hp matches 1.. if score slot10 hp matches ..0 run function chtoo:cleanseslot10
execute if score curse slot16 matches 6 run execute if score slot9 hp matches 1.. if score slot10 hp matches ..0 run scoreboard players operation maxhp slot10 = curseofbatsHPScale spellStats
execute if score curse slot16 matches 6 run execute if score slot9 hp matches 1.. if score slot10 hp matches ..0 run scoreboard players operation maxhp slot10 *= curseStacks slot16
execute if score curse slot16 matches 6 run execute if score slot9 hp matches 1.. if score slot10 hp matches ..0 run scoreboard players operation maxhp slot10 -= curseofbatsHPScale spellStats
execute if score curse slot16 matches 6 run execute if score slot9 hp matches 1.. if score slot10 hp matches ..0 run scoreboard players operation maxhp slot10 += bat herohealth
execute if score curse slot16 matches 6 run execute if score slot9 hp matches 1.. if score slot10 hp matches ..0 run scoreboard players operation slot10 hp = maxhp slot10
execute if score curse slot16 matches 6 run execute if score slot9 hp matches ..0 run scoreboard players set character# slot9 -7
execute if score curse slot16 matches 6 run execute if score slot9 hp matches ..0 run scoreboard players operation maxspeed slot9 = bat herospeed
execute if score curse slot16 matches 6 run execute if score slot9 hp matches ..0 run scoreboard players operation speed slot9 = bat herospeed
execute if score curse slot16 matches 6 run execute if score slot9 hp matches ..0 run scoreboard players operation atk slot9 = bat heroattack
execute if score curse slot16 matches 6 run execute if score slot9 hp matches ..0 run scoreboard players operation atk slot9 *= curseStacks slot16
execute if score curse slot16 matches 6 run execute if score slot9 hp matches ..0 run scoreboard players set slot9 stun 0
execute if score curse slot16 matches 6 run execute if score slot9 hp matches ..0 run scoreboard players set nobasicatk slot9 0
execute if score curse slot16 matches 6 run execute if score slot9 hp matches ..0 run scoreboard players set disarmedslot9 booleaneffects 0
execute if score curse slot16 matches 6 run execute if score slot9 hp matches ..0 run scoreboard players add alivep2 deaths 1
execute if score curse slot16 matches 6 run execute if score slot9 hp matches ..0 at @e[name=slot9] run place template minecraft:bat ~ ~1 ~ clockwise_90
execute if score curse slot16 matches 6 run execute if score slot9 hp matches ..0 run function chtoo:cleanseslot9
execute if score curse slot16 matches 6 run execute if score slot9 hp matches ..0 run scoreboard players operation maxhp slot9 = curseofbatsHPScale spellStats
execute if score curse slot16 matches 6 run execute if score slot9 hp matches ..0 run scoreboard players operation maxhp slot9 *= curseStacks slot16
execute if score curse slot16 matches 6 run execute if score slot9 hp matches ..0 run scoreboard players operation maxhp slot9 -= curseofbatsHPScale spellStats
execute if score curse slot16 matches 6 run execute if score slot9 hp matches ..0 run scoreboard players operation maxhp slot9 += bat herohealth
execute if score curse slot16 matches 6 run execute if score slot9 hp matches ..0 run scoreboard players operation slot9 hp = maxhp slot9

scoreboard players set durationSlot16 taunt 0
scoreboard players set buffDurationSlot16 atkmodifiers 0
scoreboard players set durationSlot16 regen 0
scoreboard players set durationSlot16 speedBuffs 0
execute unless score character# slot16 matches 0 run tellraw @a[tag=game2] ["Slot 8 has died"]
execute at @e[name=slot16,type=armor_stand] run kill @e[name=!slot16,type=!player,distance=..4]
scoreboard players set curse slot16 0
scoreboard players set curseStacks slot16 0
scoreboard players set curseDuration slot16 0