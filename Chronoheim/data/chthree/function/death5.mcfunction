 scoreboard players remove alivep6 deaths 1
 function chthree:cleanseslot21
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

execute if score character# slot17 matches 37 if score character# slot21 matches 1.. run scoreboard players operation atk slot17 += boogalooDeath abilityStats
execute if score character# slot18 matches 37 if score character# slot21 matches 1.. run scoreboard players operation atk slot18 += boogalooDeath abilityStats
execute if score character# slot19 matches 37 if score character# slot21 matches 1.. run scoreboard players operation atk slot19 += boogalooDeath abilityStats
execute if score character# slot17 matches 37 if score character# slot21 matches 1.. run execute at @n[type=armor_stand,name=slot17] run particle minecraft:raid_omen ~ ~1 ~ 0.3 0.3 0.3 2 100
execute if score character# slot18 matches 37 if score character# slot21 matches 1.. run execute at @n[type=armor_stand,name=slot18] run particle minecraft:raid_omen ~ ~1 ~ 0.3 0.3 0.3 2 100
execute if score character# slot19 matches 37 if score character# slot21 matches 1.. run execute at @n[type=armor_stand,name=slot19] run particle minecraft:raid_omen ~ ~1 ~ 0.3 0.3 0.3 2 100

execute if score character# slot17 matches 43 if score slot17 hp matches 1.. run scoreboard players set zombies3 booleans 1
execute if score character# slot18 matches 43 if score slot18 hp matches 1.. run scoreboard players set zombies3 booleans 1
execute if score character# slot19 matches 43 if score slot19 hp matches 1.. run scoreboard players set zombies3 booleans 1


execute if score zombies3 booleans matches 1 run execute if score slot17 hp matches 1.. if score slot18 hp matches 1.. if score slot19 hp matches 1.. if score slot20 hp matches ..0 run scoreboard players set character# slot20 -8
execute if score zombies3 booleans matches 1 run execute if score slot17 hp matches 1.. if score slot18 hp matches 1.. if score slot19 hp matches 1.. if score slot20 hp matches ..0 run scoreboard players operation maxspeed slot20 = zombie herospeed
execute if score zombies3 booleans matches 1 run execute if score slot17 hp matches 1.. if score slot18 hp matches 1.. if score slot19 hp matches 1.. if score slot20 hp matches ..0 run scoreboard players operation speed slot20 = zombie herospeed
execute if score zombies3 booleans matches 1 run execute if score slot17 hp matches 1.. if score slot18 hp matches 1.. if score slot19 hp matches 1.. if score slot20 hp matches ..0 run scoreboard players operation atk slot20 = zombie heroattack
execute if score zombies3 booleans matches 1 run execute if score slot17 hp matches 1.. if score slot18 hp matches 1.. if score slot19 hp matches 1.. if score slot20 hp matches ..0 run scoreboard players set slot20 stun 0
execute if score zombies3 booleans matches 1 run execute if score slot17 hp matches 1.. if score slot18 hp matches 1.. if score slot19 hp matches 1.. if score slot20 hp matches ..0 run scoreboard players set nobasicatk slot20 0
execute if score zombies3 booleans matches 1 run execute if score slot17 hp matches 1.. if score slot18 hp matches 1.. if score slot19 hp matches 1.. if score slot20 hp matches ..0 run scoreboard players set disarmedslot20 booleaneffects 0
execute if score zombies3 booleans matches 1 run execute if score slot17 hp matches 1.. if score slot18 hp matches 1.. if score slot19 hp matches 1.. if score slot20 hp matches ..0 run scoreboard players add alivep2 deaths 1
execute if score zombies3 booleans matches 1 run execute if score slot17 hp matches 1.. if score slot18 hp matches 1.. if score slot19 hp matches 1.. if score slot20 hp matches ..0 at @e[name=slot20] run place template minecraft:zombie ~ ~1 ~ clockwise_90
execute if score zombies3 booleans matches 1 run execute if score slot17 hp matches 1.. if score slot18 hp matches 1.. if score slot19 hp matches 1.. if score slot20 hp matches ..0 run function chthree:cleanseslot20
execute if score zombies3 booleans matches 1 run execute if score slot17 hp matches 1.. if score slot18 hp matches 1.. if score slot19 hp matches 1.. if score slot20 hp matches ..0 run scoreboard players operation maxhp slot20 = zombie herohealth
execute if score zombies3 booleans matches 1 run execute if score slot17 hp matches 1.. if score slot18 hp matches 1.. if score slot19 hp matches 1.. if score slot20 hp matches ..0 run scoreboard players operation slot20 hp = zombie herohealth
execute if score zombies3 booleans matches 1 run execute if score slot17 hp matches 1.. if score slot18 hp matches 1.. if score slot19 hp matches ..0 run scoreboard players set character# slot19 -8
execute if score zombies3 booleans matches 1 run execute if score slot17 hp matches 1.. if score slot18 hp matches 1.. if score slot19 hp matches ..0 run scoreboard players operation maxspeed slot19 = zombie herospeed
execute if score zombies3 booleans matches 1 run execute if score slot17 hp matches 1.. if score slot18 hp matches 1.. if score slot19 hp matches ..0 run scoreboard players operation speed slot19 = zombie herospeed
execute if score zombies3 booleans matches 1 run execute if score slot17 hp matches 1.. if score slot18 hp matches 1.. if score slot19 hp matches ..0 run scoreboard players operation atk slot19 = zombie heroattack
execute if score zombies3 booleans matches 1 run execute if score slot17 hp matches 1.. if score slot18 hp matches 1.. if score slot19 hp matches ..0 run scoreboard players set slot19 stun 0
execute if score zombies3 booleans matches 1 run execute if score slot17 hp matches 1.. if score slot18 hp matches 1.. if score slot19 hp matches ..0 run scoreboard players set nobasicatk slot19 0
execute if score zombies3 booleans matches 1 run execute if score slot17 hp matches 1.. if score slot18 hp matches 1.. if score slot19 hp matches ..0 run scoreboard players set disarmedslot19 booleaneffects 0
execute if score zombies3 booleans matches 1 run execute if score slot17 hp matches 1.. if score slot18 hp matches 1.. if score slot19 hp matches ..0 run scoreboard players add alivep2 deaths 1
execute if score zombies3 booleans matches 1 run execute if score slot17 hp matches 1.. if score slot18 hp matches 1.. if score slot19 hp matches ..0 at @e[name=slot19] run place template minecraft:zombie ~ ~1 ~ clockwise_90
execute if score zombies3 booleans matches 1 run execute if score slot17 hp matches 1.. if score slot18 hp matches 1.. if score slot19 hp matches ..0 run function chthree:cleanseslot19
execute if score zombies3 booleans matches 1 run execute if score slot17 hp matches 1.. if score slot18 hp matches 1.. if score slot19 hp matches ..0 run scoreboard players operation maxhp slot19 = zombie herohealth
execute if score zombies3 booleans matches 1 run execute if score slot17 hp matches 1.. if score slot18 hp matches 1.. if score slot19 hp matches ..0 run scoreboard players operation slot19 hp = zombie herohealth
execute if score zombies3 booleans matches 1 run execute if score slot17 hp matches 1.. if score slot18 hp matches ..0 run scoreboard players set character# slot18 -8
execute if score zombies3 booleans matches 1 run execute if score slot17 hp matches 1.. if score slot18 hp matches ..0 run scoreboard players operation maxspeed slot18 = zombie herospeed
execute if score zombies3 booleans matches 1 run execute if score slot17 hp matches 1.. if score slot18 hp matches ..0 run scoreboard players operation speed slot18 = zombie herospeed
execute if score zombies3 booleans matches 1 run execute if score slot17 hp matches 1.. if score slot18 hp matches ..0 run scoreboard players operation atk slot18 = zombie heroattack
execute if score zombies3 booleans matches 1 run execute if score slot17 hp matches 1.. if score slot18 hp matches ..0 run scoreboard players set slot18 stun 0
execute if score zombies3 booleans matches 1 run execute if score slot17 hp matches 1.. if score slot18 hp matches ..0 run scoreboard players set nobasicatk slot18 0
execute if score zombies3 booleans matches 1 run execute if score slot17 hp matches 1.. if score slot18 hp matches ..0 run scoreboard players set disarmedslot18 booleaneffects 0
execute if score zombies3 booleans matches 1 run execute if score slot17 hp matches 1.. if score slot18 hp matches ..0 run scoreboard players add alivep2 deaths 1
execute if score zombies3 booleans matches 1 run execute if score slot17 hp matches 1.. if score slot18 hp matches ..0 at @e[name=slot18] run place template minecraft:zombie ~ ~1 ~ clockwise_90
execute if score zombies3 booleans matches 1 run execute if score slot17 hp matches 1.. if score slot18 hp matches ..0 run function chthree:cleanseslot18
execute if score zombies3 booleans matches 1 run execute if score slot17 hp matches 1.. if score slot18 hp matches ..0 run scoreboard players operation maxhp slot18 = zombie herohealth
execute if score zombies3 booleans matches 1 run execute if score slot17 hp matches 1.. if score slot18 hp matches ..0 run scoreboard players operation slot18 hp = zombie herohealth
execute if score zombies3 booleans matches 1 run execute if score slot17 hp matches ..0 run scoreboard players set character# slot17 -8
execute if score zombies3 booleans matches 1 run execute if score slot17 hp matches ..0 run scoreboard players operation maxspeed slot17 = zombie herospeed
execute if score zombies3 booleans matches 1 run execute if score slot17 hp matches ..0 run scoreboard players operation speed slot17 = zombie herospeed
execute if score zombies3 booleans matches 1 run execute if score slot17 hp matches ..0 run scoreboard players operation atk slot17 = zombie heroattack
execute if score zombies3 booleans matches 1 run execute if score slot17 hp matches ..0 run scoreboard players set slot17 stun 0
execute if score zombies3 booleans matches 1 run execute if score slot17 hp matches ..0 run scoreboard players set nobasicatk slot17 0
execute if score zombies3 booleans matches 1 run execute if score slot17 hp matches ..0 run scoreboard players set disarmedslot17 booleaneffects 0
execute if score zombies3 booleans matches 1 run execute if score slot17 hp matches ..0 run scoreboard players add alivep2 deaths 1
execute if score zombies3 booleans matches 1 run execute if score slot17 hp matches ..0 at @e[name=slot17] run place template minecraft:zombie ~ ~1 ~ clockwise_90
execute if score zombies3 booleans matches 1 run execute if score slot17 hp matches ..0 run function chthree:cleanseslot17
execute if score zombies3 booleans matches 1 run execute if score slot17 hp matches ..0 run scoreboard players operation maxhp slot17 = zombie herohealth
execute if score zombies3 booleans matches 1 run execute if score slot17 hp matches ..0 run scoreboard players operation slot17 hp = zombie herohealth

scoreboard players set zombies3 booleans 0

execute if score curse slot21 matches 6 run execute if score slot17 hp matches 1.. if score slot18 hp matches 1.. if score slot19 hp matches 1.. if score slot20 hp matches ..0 run scoreboard players set character# slot20 -7
execute if score curse slot21 matches 6 run execute if score slot17 hp matches 1.. if score slot18 hp matches 1.. if score slot19 hp matches 1.. if score slot20 hp matches ..0 run scoreboard players operation maxspeed slot20 = bat herospeed
execute if score curse slot21 matches 6 run execute if score slot17 hp matches 1.. if score slot18 hp matches 1.. if score slot19 hp matches 1.. if score slot20 hp matches ..0 run scoreboard players operation speed slot20 = bat herospeed
execute if score curse slot21 matches 6 run execute if score slot17 hp matches 1.. if score slot18 hp matches 1.. if score slot19 hp matches 1.. if score slot20 hp matches ..0 run scoreboard players operation atk slot20 = bat heroattack
execute if score curse slot21 matches 6 run execute if score slot17 hp matches 1.. if score slot18 hp matches 1.. if score slot19 hp matches 1.. if score slot20 hp matches ..0 run scoreboard players operation atk slot20 *= curseStacks slot21
execute if score curse slot21 matches 6 run execute if score slot17 hp matches 1.. if score slot18 hp matches 1.. if score slot19 hp matches 1.. if score slot20 hp matches ..0 run scoreboard players set slot20 stun 0
execute if score curse slot21 matches 6 run execute if score slot17 hp matches 1.. if score slot18 hp matches 1.. if score slot19 hp matches 1.. if score slot20 hp matches ..0 run scoreboard players set nobasicatk slot20 0
execute if score curse slot21 matches 6 run execute if score slot17 hp matches 1.. if score slot18 hp matches 1.. if score slot19 hp matches 1.. if score slot20 hp matches ..0 run scoreboard players set disarmedslot20 booleaneffects 0
execute if score curse slot21 matches 6 run execute if score slot17 hp matches 1.. if score slot18 hp matches 1.. if score slot19 hp matches 1.. if score slot20 hp matches ..0 run scoreboard players add alivep2 deaths 1
execute if score curse slot21 matches 6 run execute if score slot17 hp matches 1.. if score slot18 hp matches 1.. if score slot19 hp matches 1.. if score slot20 hp matches ..0 at @e[name=slot20] run place template minecraft:bat ~ ~1 ~ clockwise_90
execute if score curse slot21 matches 6 run execute if score slot17 hp matches 1.. if score slot18 hp matches 1.. if score slot19 hp matches 1.. if score slot20 hp matches ..0 run function chthree:cleanseslot20
execute if score curse slot21 matches 6 run execute if score slot17 hp matches 1.. if score slot18 hp matches 1.. if score slot19 hp matches 1.. if score slot20 hp matches ..0 run scoreboard players operation maxhp slot20 = curseofbatsHPScale spellStats
execute if score curse slot21 matches 6 run execute if score slot17 hp matches 1.. if score slot18 hp matches 1.. if score slot19 hp matches 1.. if score slot20 hp matches ..0 run scoreboard players operation maxhp slot20 *= curseStacks slot21
execute if score curse slot21 matches 6 run execute if score slot17 hp matches 1.. if score slot18 hp matches 1.. if score slot19 hp matches 1.. if score slot20 hp matches ..0 run scoreboard players operation maxhp slot20 -= curseofbatsHPScale spellStats
execute if score curse slot21 matches 6 run execute if score slot17 hp matches 1.. if score slot18 hp matches 1.. if score slot19 hp matches 1.. if score slot20 hp matches ..0 run scoreboard players operation maxhp slot20 += bat herohealth
execute if score curse slot21 matches 6 run execute if score slot17 hp matches 1.. if score slot18 hp matches 1.. if score slot19 hp matches 1.. if score slot20 hp matches ..0 run scoreboard players operation slot20 hp = maxhp slot20
execute if score curse slot21 matches 6 run execute if score slot17 hp matches 1.. if score slot18 hp matches 1.. if score slot19 hp matches ..0 run scoreboard players set character# slot19 -7
execute if score curse slot21 matches 6 run execute if score slot17 hp matches 1.. if score slot18 hp matches 1.. if score slot19 hp matches ..0 run scoreboard players operation maxspeed slot19 = bat herospeed
execute if score curse slot21 matches 6 run execute if score slot17 hp matches 1.. if score slot18 hp matches 1.. if score slot19 hp matches ..0 run scoreboard players operation speed slot19 = bat herospeed
execute if score curse slot21 matches 6 run execute if score slot17 hp matches 1.. if score slot18 hp matches 1.. if score slot19 hp matches ..0 run scoreboard players operation atk slot19 = bat heroattack
execute if score curse slot21 matches 6 run execute if score slot17 hp matches 1.. if score slot18 hp matches 1.. if score slot19 hp matches ..0 run scoreboard players operation atk slot19 *= curseStacks slot21
execute if score curse slot21 matches 6 run execute if score slot17 hp matches 1.. if score slot18 hp matches 1.. if score slot19 hp matches ..0 run scoreboard players set slot19 stun 0
execute if score curse slot21 matches 6 run execute if score slot17 hp matches 1.. if score slot18 hp matches 1.. if score slot19 hp matches ..0 run scoreboard players set nobasicatk slot19 0
execute if score curse slot21 matches 6 run execute if score slot17 hp matches 1.. if score slot18 hp matches 1.. if score slot19 hp matches ..0 run scoreboard players set disarmedslot19 booleaneffects 0
execute if score curse slot21 matches 6 run execute if score slot17 hp matches 1.. if score slot18 hp matches 1.. if score slot19 hp matches ..0 run scoreboard players add alivep2 deaths 1
execute if score curse slot21 matches 6 run execute if score slot17 hp matches 1.. if score slot18 hp matches 1.. if score slot19 hp matches ..0 at @e[name=slot19] run place template minecraft:bat ~ ~1 ~ clockwise_90
execute if score curse slot21 matches 6 run execute if score slot17 hp matches 1.. if score slot18 hp matches 1.. if score slot19 hp matches ..0 run function chthree:cleanseslot19
execute if score curse slot21 matches 6 run execute if score slot17 hp matches 1.. if score slot18 hp matches 1.. if score slot19 hp matches ..0 run scoreboard players operation maxhp slot19 = curseofbatsHPScale spellStats
execute if score curse slot21 matches 6 run execute if score slot17 hp matches 1.. if score slot18 hp matches 1.. if score slot19 hp matches ..0 run scoreboard players operation maxhp slot19 *= curseStacks slot21
execute if score curse slot21 matches 6 run execute if score slot17 hp matches 1.. if score slot18 hp matches 1.. if score slot19 hp matches ..0 run scoreboard players operation maxhp slot19 -= curseofbatsHPScale spellStats
execute if score curse slot21 matches 6 run execute if score slot17 hp matches 1.. if score slot18 hp matches 1.. if score slot19 hp matches ..0 run scoreboard players operation maxhp slot19 += bat herohealth
execute if score curse slot21 matches 6 run execute if score slot17 hp matches 1.. if score slot18 hp matches 1.. if score slot19 hp matches ..0 run scoreboard players operation slot19 hp = maxhp slot19
execute if score curse slot21 matches 6 run execute if score slot17 hp matches 1.. if score slot18 hp matches ..0 run scoreboard players set character# slot18 -7
execute if score curse slot21 matches 6 run execute if score slot17 hp matches 1.. if score slot18 hp matches ..0 run scoreboard players operation maxspeed slot18 = bat herospeed
execute if score curse slot21 matches 6 run execute if score slot17 hp matches 1.. if score slot18 hp matches ..0 run scoreboard players operation speed slot18 = bat herospeed
execute if score curse slot21 matches 6 run execute if score slot17 hp matches 1.. if score slot18 hp matches ..0 run scoreboard players operation atk slot18 = bat heroattack
execute if score curse slot21 matches 6 run execute if score slot17 hp matches 1.. if score slot18 hp matches ..0 run scoreboard players operation atk slot18 *= curseStacks slot21
execute if score curse slot21 matches 6 run execute if score slot17 hp matches 1.. if score slot18 hp matches ..0 run scoreboard players set slot18 stun 0
execute if score curse slot21 matches 6 run execute if score slot17 hp matches 1.. if score slot18 hp matches ..0 run scoreboard players set nobasicatk slot18 0
execute if score curse slot21 matches 6 run execute if score slot17 hp matches 1.. if score slot18 hp matches ..0 run scoreboard players set disarmedslot18 booleaneffects 0
execute if score curse slot21 matches 6 run execute if score slot17 hp matches 1.. if score slot18 hp matches ..0 run scoreboard players add alivep2 deaths 1
execute if score curse slot21 matches 6 run execute if score slot17 hp matches 1.. if score slot18 hp matches ..0 at @e[name=slot18] run place template minecraft:bat ~ ~1 ~ clockwise_90
execute if score curse slot21 matches 6 run execute if score slot17 hp matches 1.. if score slot18 hp matches ..0 run function chthree:cleanseslot18
execute if score curse slot21 matches 6 run execute if score slot17 hp matches 1.. if score slot18 hp matches ..0 run scoreboard players operation maxhp slot18 = curseofbatsHPScale spellStats
execute if score curse slot21 matches 6 run execute if score slot17 hp matches 1.. if score slot18 hp matches ..0 run scoreboard players operation maxhp slot18 *= curseStacks slot21
execute if score curse slot21 matches 6 run execute if score slot17 hp matches 1.. if score slot18 hp matches ..0 run scoreboard players operation maxhp slot18 -= curseofbatsHPScale spellStats
execute if score curse slot21 matches 6 run execute if score slot17 hp matches 1.. if score slot18 hp matches ..0 run scoreboard players operation maxhp slot18 += bat herohealth
execute if score curse slot21 matches 6 run execute if score slot17 hp matches 1.. if score slot18 hp matches ..0 run scoreboard players operation slot18 hp = maxhp slot18
execute if score curse slot21 matches 6 run execute if score slot17 hp matches ..0 run scoreboard players set character# slot17 -7
execute if score curse slot21 matches 6 run execute if score slot17 hp matches ..0 run scoreboard players operation maxspeed slot17 = bat herospeed
execute if score curse slot21 matches 6 run execute if score slot17 hp matches ..0 run scoreboard players operation speed slot17 = bat herospeed
execute if score curse slot21 matches 6 run execute if score slot17 hp matches ..0 run scoreboard players operation atk slot17 = bat heroattack
execute if score curse slot21 matches 6 run execute if score slot17 hp matches ..0 run scoreboard players operation atk slot17 *= curseStacks slot21
execute if score curse slot21 matches 6 run execute if score slot17 hp matches ..0 run scoreboard players set slot17 stun 0
execute if score curse slot21 matches 6 run execute if score slot17 hp matches ..0 run scoreboard players set nobasicatk slot17 0
execute if score curse slot21 matches 6 run execute if score slot17 hp matches ..0 run scoreboard players set disarmedslot17 booleaneffects 0
execute if score curse slot21 matches 6 run execute if score slot17 hp matches ..0 run scoreboard players add alivep2 deaths 1
execute if score curse slot21 matches 6 run execute if score slot17 hp matches ..0 at @e[name=slot17] run place template minecraft:bat ~ ~1 ~ clockwise_90
execute if score curse slot21 matches 6 run execute if score slot17 hp matches ..0 run function chthree:cleanseslot17
execute if score curse slot21 matches 6 run execute if score slot17 hp matches ..0 run scoreboard players operation maxhp slot17 = curseofbatsHPScale spellStats
execute if score curse slot21 matches 6 run execute if score slot17 hp matches ..0 run scoreboard players operation maxhp slot17 *= curseStacks slot21
execute if score curse slot21 matches 6 run execute if score slot17 hp matches ..0 run scoreboard players operation maxhp slot17 -= curseofbatsHPScale spellStats
execute if score curse slot21 matches 6 run execute if score slot17 hp matches ..0 run scoreboard players operation maxhp slot17 += bat herohealth
execute if score curse slot21 matches 6 run execute if score slot17 hp matches ..0 run scoreboard players operation slot17 hp = maxhp slot17


scoreboard players set durationSlot21 taunt 0
scoreboard players set buffDurationSlot21 atkmodifiers 0
scoreboard players set durationSlot21 regen 0
scoreboard players set durationSlot21 speedBuffs 0
execute if score slot21 hp matches ..0 run scoreboard players set speed slot21 -1000000
tellraw @a[tag=game3] ["Slot 5 has died"]
execute at @e[name=slot21,type=armor_stand] run kill @e[name=!slot21,type=!player,distance=..4]
scoreboard players set curse slot21 0
scoreboard players set curseStacks slot21 0
scoreboard players set curseDuration slot21 0

