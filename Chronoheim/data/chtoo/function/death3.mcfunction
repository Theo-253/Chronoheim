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
 
 execute if score character# slot13 matches 37 if score character# slot11 matches 1.. run scoreboard players operation atk slot13 += boogalooDeath abilityStats
execute if score character# slot14 matches 37 if score character# slot11 matches 1.. run scoreboard players operation atk slot14 += boogalooDeath abilityStats
execute if score character# slot15 matches 37 if score character# slot11 matches 1.. run scoreboard players operation atk slot15 += boogalooDeath abilityStats
execute if score character# slot13 matches 37 if score character# slot11 matches 1.. run execute at @n[type=armor_stand,name=slot13] run particle minecraft:raid_omen ~ ~1 ~ 0.3 0.3 0.3 2 100
execute if score character# slot14 matches 37 if score character# slot11 matches 1.. run execute at @n[type=armor_stand,name=slot14] run particle minecraft:raid_omen ~ ~1 ~ 0.3 0.3 0.3 2 100
execute if score character# slot15 matches 37 if score character# slot11 matches 1.. run execute at @n[type=armor_stand,name=slot15] run particle minecraft:raid_omen ~ ~1 ~ 0.3 0.3 0.3 2 100

execute if score character# slot13 matches 43 if score slot13 hp matches 1.. run scoreboard players set zombies2 booleans 1
execute if score character# slot14 matches 43 if score slot14 hp matches 1.. run scoreboard players set zombies2 booleans 1
execute if score character# slot15 matches 43 if score slot15 hp matches 1.. run scoreboard players set zombies2 booleans 1


execute if score zombies2 booleans matches 1 run execute if score slot13 hp matches 1.. if score slot14 hp matches 1.. if score slot15 hp matches 1.. if score slot16 hp matches ..0 run scoreboard players set character# slot16 -8
execute if score zombies2 booleans matches 1 run execute if score slot13 hp matches 1.. if score slot14 hp matches 1.. if score slot15 hp matches 1.. if score slot16 hp matches ..0 run scoreboard players operation maxspeed slot16 = zombie herospeed
execute if score zombies2 booleans matches 1 run execute if score slot13 hp matches 1.. if score slot14 hp matches 1.. if score slot15 hp matches 1.. if score slot16 hp matches ..0 run scoreboard players operation speed slot16 = zombie herospeed
execute if score zombies2 booleans matches 1 run execute if score slot13 hp matches 1.. if score slot14 hp matches 1.. if score slot15 hp matches 1.. if score slot16 hp matches ..0 run scoreboard players operation atk slot16 = zombie heroattack
execute if score zombies2 booleans matches 1 run execute if score slot13 hp matches 1.. if score slot14 hp matches 1.. if score slot15 hp matches 1.. if score slot16 hp matches ..0 run scoreboard players set slot16 stun 0
execute if score zombies2 booleans matches 1 run execute if score slot13 hp matches 1.. if score slot14 hp matches 1.. if score slot15 hp matches 1.. if score slot16 hp matches ..0 run scoreboard players set nobasicatk slot16 0
execute if score zombies2 booleans matches 1 run execute if score slot13 hp matches 1.. if score slot14 hp matches 1.. if score slot15 hp matches 1.. if score slot16 hp matches ..0 run scoreboard players set disarmedslot16 booleaneffects 0
execute if score zombies2 booleans matches 1 run execute if score slot13 hp matches 1.. if score slot14 hp matches 1.. if score slot15 hp matches 1.. if score slot16 hp matches ..0 run scoreboard players add alivep2 deaths 1
execute if score zombies2 booleans matches 1 run execute if score slot13 hp matches 1.. if score slot14 hp matches 1.. if score slot15 hp matches 1.. if score slot16 hp matches ..0 at @e[name=slot16] run place template minecraft:zombie ~ ~1 ~ counterclockwise_90
execute if score zombies2 booleans matches 1 run execute if score slot13 hp matches 1.. if score slot14 hp matches 1.. if score slot15 hp matches 1.. if score slot16 hp matches ..0 run function chtoo:cleanseslot16
execute if score zombies2 booleans matches 1 run execute if score slot13 hp matches 1.. if score slot14 hp matches 1.. if score slot15 hp matches 1.. if score slot16 hp matches ..0 run scoreboard players operation maxhp slot16 = zombie herohealth
execute if score zombies2 booleans matches 1 run execute if score slot13 hp matches 1.. if score slot14 hp matches 1.. if score slot15 hp matches 1.. if score slot16 hp matches ..0 run scoreboard players operation slot16 hp = zombie herohealth
execute if score zombies2 booleans matches 1 run execute if score slot13 hp matches 1.. if score slot14 hp matches 1.. if score slot15 hp matches ..0 run scoreboard players set character# slot15 -8
execute if score zombies2 booleans matches 1 run execute if score slot13 hp matches 1.. if score slot14 hp matches 1.. if score slot15 hp matches ..0 run scoreboard players operation maxspeed slot15 = zombie herospeed
execute if score zombies2 booleans matches 1 run execute if score slot13 hp matches 1.. if score slot14 hp matches 1.. if score slot15 hp matches ..0 run scoreboard players operation speed slot15 = zombie herospeed
execute if score zombies2 booleans matches 1 run execute if score slot13 hp matches 1.. if score slot14 hp matches 1.. if score slot15 hp matches ..0 run scoreboard players operation atk slot15 = zombie heroattack
execute if score zombies2 booleans matches 1 run execute if score slot13 hp matches 1.. if score slot14 hp matches 1.. if score slot15 hp matches ..0 run scoreboard players set slot15 stun 0
execute if score zombies2 booleans matches 1 run execute if score slot13 hp matches 1.. if score slot14 hp matches 1.. if score slot15 hp matches ..0 run scoreboard players set nobasicatk slot15 0
execute if score zombies2 booleans matches 1 run execute if score slot13 hp matches 1.. if score slot14 hp matches 1.. if score slot15 hp matches ..0 run scoreboard players set disarmedslot15 booleaneffects 0
execute if score zombies2 booleans matches 1 run execute if score slot13 hp matches 1.. if score slot14 hp matches 1.. if score slot15 hp matches ..0 run scoreboard players add alivep2 deaths 1
execute if score zombies2 booleans matches 1 run execute if score slot13 hp matches 1.. if score slot14 hp matches 1.. if score slot15 hp matches ..0 at @e[name=slot15] run place template minecraft:zombie ~ ~1 ~ counterclockwise_90
execute if score zombies2 booleans matches 1 run execute if score slot13 hp matches 1.. if score slot14 hp matches 1.. if score slot15 hp matches ..0 run function chtoo:cleanseslot15
execute if score zombies2 booleans matches 1 run execute if score slot13 hp matches 1.. if score slot14 hp matches 1.. if score slot15 hp matches ..0 run scoreboard players operation maxhp slot15 = zombie herohealth
execute if score zombies2 booleans matches 1 run execute if score slot13 hp matches 1.. if score slot14 hp matches 1.. if score slot15 hp matches ..0 run scoreboard players operation slot15 hp = zombie herohealth
execute if score zombies2 booleans matches 1 run execute if score slot13 hp matches 1.. if score slot14 hp matches ..0 run scoreboard players set character# slot14 -8
execute if score zombies2 booleans matches 1 run execute if score slot13 hp matches 1.. if score slot14 hp matches ..0 run scoreboard players operation maxspeed slot14 = zombie herospeed
execute if score zombies2 booleans matches 1 run execute if score slot13 hp matches 1.. if score slot14 hp matches ..0 run scoreboard players operation speed slot14 = zombie herospeed
execute if score zombies2 booleans matches 1 run execute if score slot13 hp matches 1.. if score slot14 hp matches ..0 run scoreboard players operation atk slot14 = zombie heroattack
execute if score zombies2 booleans matches 1 run execute if score slot13 hp matches 1.. if score slot14 hp matches ..0 run scoreboard players set slot14 stun 0
execute if score zombies2 booleans matches 1 run execute if score slot13 hp matches 1.. if score slot14 hp matches ..0 run scoreboard players set nobasicatk slot14 0
execute if score zombies2 booleans matches 1 run execute if score slot13 hp matches 1.. if score slot14 hp matches ..0 run scoreboard players set disarmedslot14 booleaneffects 0
execute if score zombies2 booleans matches 1 run execute if score slot13 hp matches 1.. if score slot14 hp matches ..0 run scoreboard players add alivep2 deaths 1
execute if score zombies2 booleans matches 1 run execute if score slot13 hp matches 1.. if score slot14 hp matches ..0 at @e[name=slot14] run place template minecraft:zombie ~ ~1 ~ counterclockwise_90
execute if score zombies2 booleans matches 1 run execute if score slot13 hp matches 1.. if score slot14 hp matches ..0 run function chtoo:cleanseslot14
execute if score zombies2 booleans matches 1 run execute if score slot13 hp matches 1.. if score slot14 hp matches ..0 run scoreboard players operation maxhp slot14 = zombie herohealth
execute if score zombies2 booleans matches 1 run execute if score slot13 hp matches 1.. if score slot14 hp matches ..0 run scoreboard players operation slot14 hp = zombie herohealth
execute if score zombies2 booleans matches 1 run execute if score slot13 hp matches ..0 run scoreboard players set character# slot13 -8
execute if score zombies2 booleans matches 1 run execute if score slot13 hp matches ..0 run scoreboard players operation maxspeed slot13 = zombie herospeed
execute if score zombies2 booleans matches 1 run execute if score slot13 hp matches ..0 run scoreboard players operation speed slot13 = zombie herospeed
execute if score zombies2 booleans matches 1 run execute if score slot13 hp matches ..0 run scoreboard players operation atk slot13 = zombie heroattack
execute if score zombies2 booleans matches 1 run execute if score slot13 hp matches ..0 run scoreboard players set slot13 stun 0
execute if score zombies2 booleans matches 1 run execute if score slot13 hp matches ..0 run scoreboard players set nobasicatk slot13 0
execute if score zombies2 booleans matches 1 run execute if score slot13 hp matches ..0 run scoreboard players set disarmedslot13 booleaneffects 0
execute if score zombies2 booleans matches 1 run execute if score slot13 hp matches ..0 run scoreboard players add alivep2 deaths 1
execute if score zombies2 booleans matches 1 run execute if score slot13 hp matches ..0 at @e[name=slot13] run place template minecraft:zombie ~ ~1 ~ counterclockwise_90
execute if score zombies2 booleans matches 1 run execute if score slot13 hp matches ..0 run function chtoo:cleanseslot13
execute if score zombies2 booleans matches 1 run execute if score slot13 hp matches ..0 run scoreboard players operation maxhp slot13 = zombie herohealth
execute if score zombies2 booleans matches 1 run execute if score slot13 hp matches ..0 run scoreboard players operation slot13 hp = zombie herohealth

scoreboard players set zombies2 booleans 0

execute if score curse slot11 matches 6 run execute if score slot13 hp matches 1.. if score slot14 hp matches 1.. if score slot15 hp matches 1.. if score slot16 hp matches ..0 run scoreboard players set character# slot16 -7
execute if score curse slot11 matches 6 run execute if score slot13 hp matches 1.. if score slot14 hp matches 1.. if score slot15 hp matches 1.. if score slot16 hp matches ..0 run scoreboard players operation maxspeed slot16 = bat herospeed
execute if score curse slot11 matches 6 run execute if score slot13 hp matches 1.. if score slot14 hp matches 1.. if score slot15 hp matches 1.. if score slot16 hp matches ..0 run scoreboard players operation speed slot16 = bat herospeed
execute if score curse slot11 matches 6 run execute if score slot13 hp matches 1.. if score slot14 hp matches 1.. if score slot15 hp matches 1.. if score slot16 hp matches ..0 run scoreboard players operation atk slot16 = bat heroattack
execute if score curse slot11 matches 6 run execute if score slot13 hp matches 1.. if score slot14 hp matches 1.. if score slot15 hp matches 1.. if score slot16 hp matches ..0 run scoreboard players operation atk slot16 *= curseStacks slot11
execute if score curse slot11 matches 6 run execute if score slot13 hp matches 1.. if score slot14 hp matches 1.. if score slot15 hp matches 1.. if score slot16 hp matches ..0 run scoreboard players set slot16 stun 0
execute if score curse slot11 matches 6 run execute if score slot13 hp matches 1.. if score slot14 hp matches 1.. if score slot15 hp matches 1.. if score slot16 hp matches ..0 run scoreboard players set nobasicatk slot16 0
execute if score curse slot11 matches 6 run execute if score slot13 hp matches 1.. if score slot14 hp matches 1.. if score slot15 hp matches 1.. if score slot16 hp matches ..0 run scoreboard players set disarmedslot16 booleaneffects 0
execute if score curse slot11 matches 6 run execute if score slot13 hp matches 1.. if score slot14 hp matches 1.. if score slot15 hp matches 1.. if score slot16 hp matches ..0 run scoreboard players add alivep2 deaths 1
execute if score curse slot11 matches 6 run execute if score slot13 hp matches 1.. if score slot14 hp matches 1.. if score slot15 hp matches 1.. if score slot16 hp matches ..0 at @e[name=slot16] run place template minecraft:bat ~ ~1 ~ counterclockwise_90
execute if score curse slot11 matches 6 run execute if score slot13 hp matches 1.. if score slot14 hp matches 1.. if score slot15 hp matches 1.. if score slot16 hp matches ..0 run function chtoo:cleanseslot16
execute if score curse slot11 matches 6 run execute if score slot13 hp matches 1.. if score slot14 hp matches 1.. if score slot15 hp matches 1.. if score slot16 hp matches ..0 run scoreboard players operation maxhp slot16 = curseofbatsHPScale spellStats
execute if score curse slot11 matches 6 run execute if score slot13 hp matches 1.. if score slot14 hp matches 1.. if score slot15 hp matches 1.. if score slot16 hp matches ..0 run scoreboard players operation maxhp slot16 *= curseStacks slot11
execute if score curse slot11 matches 6 run execute if score slot13 hp matches 1.. if score slot14 hp matches 1.. if score slot15 hp matches 1.. if score slot16 hp matches ..0 run scoreboard players operation maxhp slot16 -= curseofbatsHPScale spellStats
execute if score curse slot11 matches 6 run execute if score slot13 hp matches 1.. if score slot14 hp matches 1.. if score slot15 hp matches 1.. if score slot16 hp matches ..0 run scoreboard players operation maxhp slot16 += bat herohealth
execute if score curse slot11 matches 6 run execute if score slot13 hp matches 1.. if score slot14 hp matches 1.. if score slot15 hp matches 1.. if score slot16 hp matches ..0 run scoreboard players operation slot16 hp = maxhp slot16
execute if score curse slot11 matches 6 run execute if score slot13 hp matches 1.. if score slot14 hp matches 1.. if score slot15 hp matches ..0 run scoreboard players set character# slot15 -7
execute if score curse slot11 matches 6 run execute if score slot13 hp matches 1.. if score slot14 hp matches 1.. if score slot15 hp matches ..0 run scoreboard players operation maxspeed slot15 = bat herospeed
execute if score curse slot11 matches 6 run execute if score slot13 hp matches 1.. if score slot14 hp matches 1.. if score slot15 hp matches ..0 run scoreboard players operation speed slot15 = bat herospeed
execute if score curse slot11 matches 6 run execute if score slot13 hp matches 1.. if score slot14 hp matches 1.. if score slot15 hp matches ..0 run scoreboard players operation atk slot15 = bat heroattack
execute if score curse slot11 matches 6 run execute if score slot13 hp matches 1.. if score slot14 hp matches 1.. if score slot15 hp matches ..0 run scoreboard players operation atk slot15 *= curseStacks slot11
execute if score curse slot11 matches 6 run execute if score slot13 hp matches 1.. if score slot14 hp matches 1.. if score slot15 hp matches ..0 run scoreboard players set slot15 stun 0
execute if score curse slot11 matches 6 run execute if score slot13 hp matches 1.. if score slot14 hp matches 1.. if score slot15 hp matches ..0 run scoreboard players set nobasicatk slot15 0
execute if score curse slot11 matches 6 run execute if score slot13 hp matches 1.. if score slot14 hp matches 1.. if score slot15 hp matches ..0 run scoreboard players set disarmedslot15 booleaneffects 0
execute if score curse slot11 matches 6 run execute if score slot13 hp matches 1.. if score slot14 hp matches 1.. if score slot15 hp matches ..0 run scoreboard players add alivep2 deaths 1
execute if score curse slot11 matches 6 run execute if score slot13 hp matches 1.. if score slot14 hp matches 1.. if score slot15 hp matches ..0 at @e[name=slot15] run place template minecraft:bat ~ ~1 ~ counterclockwise_90
execute if score curse slot11 matches 6 run execute if score slot13 hp matches 1.. if score slot14 hp matches 1.. if score slot15 hp matches ..0 run function chtoo:cleanseslot15
execute if score curse slot11 matches 6 run execute if score slot13 hp matches 1.. if score slot14 hp matches 1.. if score slot15 hp matches ..0 run scoreboard players operation maxhp slot15 = curseofbatsHPScale spellStats
execute if score curse slot11 matches 6 run execute if score slot13 hp matches 1.. if score slot14 hp matches 1.. if score slot15 hp matches ..0 run scoreboard players operation maxhp slot15 *= curseStacks slot11
execute if score curse slot11 matches 6 run execute if score slot13 hp matches 1.. if score slot14 hp matches 1.. if score slot15 hp matches ..0 run scoreboard players operation maxhp slot15 -= curseofbatsHPScale spellStats
execute if score curse slot11 matches 6 run execute if score slot13 hp matches 1.. if score slot14 hp matches 1.. if score slot15 hp matches ..0 run scoreboard players operation maxhp slot15 += bat herohealth
execute if score curse slot11 matches 6 run execute if score slot13 hp matches 1.. if score slot14 hp matches 1.. if score slot15 hp matches ..0 run scoreboard players operation slot15 hp = maxhp slot15
execute if score curse slot11 matches 6 run execute if score slot13 hp matches 1.. if score slot14 hp matches ..0 run scoreboard players set character# slot14 -7
execute if score curse slot11 matches 6 run execute if score slot13 hp matches 1.. if score slot14 hp matches ..0 run scoreboard players operation maxspeed slot14 = bat herospeed
execute if score curse slot11 matches 6 run execute if score slot13 hp matches 1.. if score slot14 hp matches ..0 run scoreboard players operation speed slot14 = bat herospeed
execute if score curse slot11 matches 6 run execute if score slot13 hp matches 1.. if score slot14 hp matches ..0 run scoreboard players operation atk slot14 = bat heroattack
execute if score curse slot11 matches 6 run execute if score slot13 hp matches 1.. if score slot14 hp matches ..0 run scoreboard players operation atk slot14 *= curseStacks slot11
execute if score curse slot11 matches 6 run execute if score slot13 hp matches 1.. if score slot14 hp matches ..0 run scoreboard players set slot14 stun 0
execute if score curse slot11 matches 6 run execute if score slot13 hp matches 1.. if score slot14 hp matches ..0 run scoreboard players set nobasicatk slot14 0
execute if score curse slot11 matches 6 run execute if score slot13 hp matches 1.. if score slot14 hp matches ..0 run scoreboard players set disarmedslot14 booleaneffects 0
execute if score curse slot11 matches 6 run execute if score slot13 hp matches 1.. if score slot14 hp matches ..0 run scoreboard players add alivep2 deaths 1
execute if score curse slot11 matches 6 run execute if score slot13 hp matches 1.. if score slot14 hp matches ..0 at @e[name=slot14] run place template minecraft:bat ~ ~1 ~ counterclockwise_90
execute if score curse slot11 matches 6 run execute if score slot13 hp matches 1.. if score slot14 hp matches ..0 run function chtoo:cleanseslot14
execute if score curse slot11 matches 6 run execute if score slot13 hp matches 1.. if score slot14 hp matches ..0 run scoreboard players operation maxhp slot14 = curseofbatsHPScale spellStats
execute if score curse slot11 matches 6 run execute if score slot13 hp matches 1.. if score slot14 hp matches ..0 run scoreboard players operation maxhp slot14 *= curseStacks slot11
execute if score curse slot11 matches 6 run execute if score slot13 hp matches 1.. if score slot14 hp matches ..0 run scoreboard players operation maxhp slot14 -= curseofbatsHPScale spellStats
execute if score curse slot11 matches 6 run execute if score slot13 hp matches 1.. if score slot14 hp matches ..0 run scoreboard players operation maxhp slot14 += bat herohealth
execute if score curse slot11 matches 6 run execute if score slot13 hp matches 1.. if score slot14 hp matches ..0 run scoreboard players operation slot14 hp = maxhp slot14
execute if score curse slot11 matches 6 run execute if score slot13 hp matches ..0 run scoreboard players set character# slot13 -7
execute if score curse slot11 matches 6 run execute if score slot13 hp matches ..0 run scoreboard players operation maxspeed slot13 = bat herospeed
execute if score curse slot11 matches 6 run execute if score slot13 hp matches ..0 run scoreboard players operation speed slot13 = bat herospeed
execute if score curse slot11 matches 6 run execute if score slot13 hp matches ..0 run scoreboard players operation atk slot13 = bat heroattack
execute if score curse slot11 matches 6 run execute if score slot13 hp matches ..0 run scoreboard players operation atk slot13 *= curseStacks slot11
execute if score curse slot11 matches 6 run execute if score slot13 hp matches ..0 run scoreboard players set slot13 stun 0
execute if score curse slot11 matches 6 run execute if score slot13 hp matches ..0 run scoreboard players set nobasicatk slot13 0
execute if score curse slot11 matches 6 run execute if score slot13 hp matches ..0 run scoreboard players set disarmedslot13 booleaneffects 0
execute if score curse slot11 matches 6 run execute if score slot13 hp matches ..0 run scoreboard players add alivep2 deaths 1
execute if score curse slot11 matches 6 run execute if score slot13 hp matches ..0 at @e[name=slot13] run place template minecraft:bat ~ ~1 ~ counterclockwise_90
execute if score curse slot11 matches 6 run execute if score slot13 hp matches ..0 run function chtoo:cleanseslot13
execute if score curse slot11 matches 6 run execute if score slot13 hp matches ..0 run scoreboard players operation maxhp slot13 = curseofbatsHPScale spellStats
execute if score curse slot11 matches 6 run execute if score slot13 hp matches ..0 run scoreboard players operation maxhp slot13 *= curseStacks slot11
execute if score curse slot11 matches 6 run execute if score slot13 hp matches ..0 run scoreboard players operation maxhp slot13 -= curseofbatsHPScale spellStats
execute if score curse slot11 matches 6 run execute if score slot13 hp matches ..0 run scoreboard players operation maxhp slot13 += bat herohealth
execute if score curse slot11 matches 6 run execute if score slot13 hp matches ..0 run scoreboard players operation slot13 hp = maxhp slot13
 
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