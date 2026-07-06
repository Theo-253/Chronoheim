scoreboard players remove alivep5 deaths 1
function chthree:cleanseslot17
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

execute if score character# slot21 matches 37 if score character# slot17 matches 1.. run scoreboard players operation atk slot21 += boogalooDeath abilityStats
execute if score character# slot22 matches 37 if score character# slot17 matches 1.. run scoreboard players operation atk slot22 += boogalooDeath abilityStats
execute if score character# slot23 matches 37 if score character# slot17 matches 1.. run scoreboard players operation atk slot23 += boogalooDeath abilityStats
execute if score character# slot21 matches 37 if score character# slot17 matches 1.. run execute at @n[type=armor_stand,name=slot21] run particle minecraft:raid_omen ~ ~1 ~ 0.3 0.3 0.3 2 100
execute if score character# slot22 matches 37 if score character# slot17 matches 1.. run execute at @n[type=armor_stand,name=slot22] run particle minecraft:raid_omen ~ ~1 ~ 0.3 0.3 0.3 2 100
execute if score character# slot23 matches 37 if score character# slot17 matches 1.. run execute at @n[type=armor_stand,name=slot23] run particle minecraft:raid_omen ~ ~1 ~ 0.3 0.3 0.3 2 100

execute if score character# slot21 matches 43 run scoreboard players set zombies3 booleans 1
execute if score character# slot22 matches 43 run scoreboard players set zombies3 booleans 1
execute if score character# slot23 matches 43 run scoreboard players set zombies3 booleans 1


execute if score zombies3 booleans matches 1 run execute if score slot21 hp matches 1.. if score slot22 hp matches 1.. if score slot23 hp matches 1.. if score slot24 hp matches ..0 run scoreboard players set character# slot24 -8
execute if score zombies3 booleans matches 1 run execute if score slot21 hp matches 1.. if score slot22 hp matches 1.. if score slot23 hp matches 1.. if score slot24 hp matches ..0 run scoreboard players operation maxspeed slot24 = zombie herospeed
execute if score zombies3 booleans matches 1 run execute if score slot21 hp matches 1.. if score slot22 hp matches 1.. if score slot23 hp matches 1.. if score slot24 hp matches ..0 run scoreboard players operation speed slot24 = zombie herospeed
execute if score zombies3 booleans matches 1 run execute if score slot21 hp matches 1.. if score slot22 hp matches 1.. if score slot23 hp matches 1.. if score slot24 hp matches ..0 run scoreboard players operation atk slot24 = zombie heroattack
execute if score zombies3 booleans matches 1 run execute if score slot21 hp matches 1.. if score slot22 hp matches 1.. if score slot23 hp matches 1.. if score slot24 hp matches ..0 run scoreboard players set slot24 stun 0
execute if score zombies3 booleans matches 1 run execute if score slot21 hp matches 1.. if score slot22 hp matches 1.. if score slot23 hp matches 1.. if score slot24 hp matches ..0 run scoreboard players set nobasicatk slot24 0
execute if score zombies3 booleans matches 1 run execute if score slot21 hp matches 1.. if score slot22 hp matches 1.. if score slot23 hp matches 1.. if score slot24 hp matches ..0 run scoreboard players set disarmedslot24 booleaneffects 0
execute if score zombies3 booleans matches 1 run execute if score slot21 hp matches 1.. if score slot22 hp matches 1.. if score slot23 hp matches 1.. if score slot24 hp matches ..0 run scoreboard players add alivep2 deaths 1
execute if score zombies3 booleans matches 1 run execute if score slot21 hp matches 1.. if score slot22 hp matches 1.. if score slot23 hp matches 1.. if score slot24 hp matches ..0 at @e[name=slot24] run place template minecraft:zombie ~ ~1 ~ counterclockwise_90
execute if score zombies3 booleans matches 1 run execute if score slot21 hp matches 1.. if score slot22 hp matches 1.. if score slot23 hp matches 1.. if score slot24 hp matches ..0 run function chthree:cleanseslot24
execute if score zombies3 booleans matches 1 run execute if score slot21 hp matches 1.. if score slot22 hp matches 1.. if score slot23 hp matches 1.. if score slot24 hp matches ..0 run scoreboard players operation maxhp slot24 = zombie herohealth
execute if score zombies3 booleans matches 1 run execute if score slot21 hp matches 1.. if score slot22 hp matches 1.. if score slot23 hp matches 1.. if score slot24 hp matches ..0 run scoreboard players operation slot24 hp = zombie herohealth
execute if score zombies3 booleans matches 1 run execute if score slot21 hp matches 1.. if score slot22 hp matches 1.. if score slot23 hp matches ..0 run scoreboard players set character# slot23 -8
execute if score zombies3 booleans matches 1 run execute if score slot21 hp matches 1.. if score slot22 hp matches 1.. if score slot23 hp matches ..0 run scoreboard players operation maxspeed slot23 = zombie herospeed
execute if score zombies3 booleans matches 1 run execute if score slot21 hp matches 1.. if score slot22 hp matches 1.. if score slot23 hp matches ..0 run scoreboard players operation speed slot23 = zombie herospeed
execute if score zombies3 booleans matches 1 run execute if score slot21 hp matches 1.. if score slot22 hp matches 1.. if score slot23 hp matches ..0 run scoreboard players operation atk slot23 = zombie heroattack
execute if score zombies3 booleans matches 1 run execute if score slot21 hp matches 1.. if score slot22 hp matches 1.. if score slot23 hp matches ..0 run scoreboard players set slot23 stun 0
execute if score zombies3 booleans matches 1 run execute if score slot21 hp matches 1.. if score slot22 hp matches 1.. if score slot23 hp matches ..0 run scoreboard players set nobasicatk slot23 0
execute if score zombies3 booleans matches 1 run execute if score slot21 hp matches 1.. if score slot22 hp matches 1.. if score slot23 hp matches ..0 run scoreboard players set disarmedslot23 booleaneffects 0
execute if score zombies3 booleans matches 1 run execute if score slot21 hp matches 1.. if score slot22 hp matches 1.. if score slot23 hp matches ..0 run scoreboard players add alivep2 deaths 1
execute if score zombies3 booleans matches 1 run execute if score slot21 hp matches 1.. if score slot22 hp matches 1.. if score slot23 hp matches ..0 at @e[name=slot23] run place template minecraft:zombie ~ ~1 ~ counterclockwise_90
execute if score zombies3 booleans matches 1 run execute if score slot21 hp matches 1.. if score slot22 hp matches 1.. if score slot23 hp matches ..0 run function chthree:cleanseslot23
execute if score zombies3 booleans matches 1 run execute if score slot21 hp matches 1.. if score slot22 hp matches 1.. if score slot23 hp matches ..0 run scoreboard players operation maxhp slot23 = zombie herohealth
execute if score zombies3 booleans matches 1 run execute if score slot21 hp matches 1.. if score slot22 hp matches 1.. if score slot23 hp matches ..0 run scoreboard players operation slot23 hp = zombie herohealth
execute if score zombies3 booleans matches 1 run execute if score slot21 hp matches 1.. if score slot22 hp matches ..0 run scoreboard players set character# slot22 -8
execute if score zombies3 booleans matches 1 run execute if score slot21 hp matches 1.. if score slot22 hp matches ..0 run scoreboard players operation maxspeed slot22 = zombie herospeed
execute if score zombies3 booleans matches 1 run execute if score slot21 hp matches 1.. if score slot22 hp matches ..0 run scoreboard players operation speed slot22 = zombie herospeed
execute if score zombies3 booleans matches 1 run execute if score slot21 hp matches 1.. if score slot22 hp matches ..0 run scoreboard players operation atk slot22 = zombie heroattack
execute if score zombies3 booleans matches 1 run execute if score slot21 hp matches 1.. if score slot22 hp matches ..0 run scoreboard players set slot22 stun 0
execute if score zombies3 booleans matches 1 run execute if score slot21 hp matches 1.. if score slot22 hp matches ..0 run scoreboard players set nobasicatk slot22 0
execute if score zombies3 booleans matches 1 run execute if score slot21 hp matches 1.. if score slot22 hp matches ..0 run scoreboard players set disarmedslot22 booleaneffects 0
execute if score zombies3 booleans matches 1 run execute if score slot21 hp matches 1.. if score slot22 hp matches ..0 run scoreboard players add alivep2 deaths 1
execute if score zombies3 booleans matches 1 run execute if score slot21 hp matches 1.. if score slot22 hp matches ..0 at @e[name=slot22] run place template minecraft:zombie ~ ~1 ~ counterclockwise_90
execute if score zombies3 booleans matches 1 run execute if score slot21 hp matches 1.. if score slot22 hp matches ..0 run function chthree:cleanseslot22
execute if score zombies3 booleans matches 1 run execute if score slot21 hp matches 1.. if score slot22 hp matches ..0 run scoreboard players operation maxhp slot22 = zombie herohealth
execute if score zombies3 booleans matches 1 run execute if score slot21 hp matches 1.. if score slot22 hp matches ..0 run scoreboard players operation slot22 hp = zombie herohealth
execute if score zombies3 booleans matches 1 run execute if score slot21 hp matches ..0 run scoreboard players set character# slot21 -8
execute if score zombies3 booleans matches 1 run execute if score slot21 hp matches ..0 run scoreboard players operation maxspeed slot21 = zombie herospeed
execute if score zombies3 booleans matches 1 run execute if score slot21 hp matches ..0 run scoreboard players operation speed slot21 = zombie herospeed
execute if score zombies3 booleans matches 1 run execute if score slot21 hp matches ..0 run scoreboard players operation atk slot21 = zombie heroattack
execute if score zombies3 booleans matches 1 run execute if score slot21 hp matches ..0 run scoreboard players set slot21 stun 0
execute if score zombies3 booleans matches 1 run execute if score slot21 hp matches ..0 run scoreboard players set nobasicatk slot21 0
execute if score zombies3 booleans matches 1 run execute if score slot21 hp matches ..0 run scoreboard players set disarmedslot21 booleaneffects 0
execute if score zombies3 booleans matches 1 run execute if score slot21 hp matches ..0 run scoreboard players add alivep2 deaths 1
execute if score zombies3 booleans matches 1 run execute if score slot21 hp matches ..0 at @e[name=slot21] run place template minecraft:zombie ~ ~1 ~ counterclockwise_90
execute if score zombies3 booleans matches 1 run execute if score slot21 hp matches ..0 run function chthree:cleanseslot21
execute if score zombies3 booleans matches 1 run execute if score slot21 hp matches ..0 run scoreboard players operation maxhp slot21 = zombie herohealth
execute if score zombies3 booleans matches 1 run execute if score slot21 hp matches ..0 run scoreboard players operation slot21 hp = zombie herohealth

scoreboard players set zombies3 booleans 0

execute if score curse slot17 matches 6 run execute if score slot21 hp matches 1.. if score slot22 hp matches 1.. if score slot23 hp matches 1.. if score slot24 hp matches ..0 run scoreboard players set character# slot24 -7
execute if score curse slot17 matches 6 run execute if score slot21 hp matches 1.. if score slot22 hp matches 1.. if score slot23 hp matches 1.. if score slot24 hp matches ..0 run scoreboard players operation maxspeed slot24 = bat herospeed
execute if score curse slot17 matches 6 run execute if score slot21 hp matches 1.. if score slot22 hp matches 1.. if score slot23 hp matches 1.. if score slot24 hp matches ..0 run scoreboard players operation speed slot24 = bat herospeed
execute if score curse slot17 matches 6 run execute if score slot21 hp matches 1.. if score slot22 hp matches 1.. if score slot23 hp matches 1.. if score slot24 hp matches ..0 run scoreboard players operation atk slot24 = bat heroattack
execute if score curse slot17 matches 6 run execute if score slot21 hp matches 1.. if score slot22 hp matches 1.. if score slot23 hp matches 1.. if score slot24 hp matches ..0 run scoreboard players operation atk slot24 *= curseStacks slot17
execute if score curse slot17 matches 6 run execute if score slot21 hp matches 1.. if score slot22 hp matches 1.. if score slot23 hp matches 1.. if score slot24 hp matches ..0 run scoreboard players set slot24 stun 0
execute if score curse slot17 matches 6 run execute if score slot21 hp matches 1.. if score slot22 hp matches 1.. if score slot23 hp matches 1.. if score slot24 hp matches ..0 run scoreboard players set nobasicatk slot24 0
execute if score curse slot17 matches 6 run execute if score slot21 hp matches 1.. if score slot22 hp matches 1.. if score slot23 hp matches 1.. if score slot24 hp matches ..0 run scoreboard players set disarmedslot24 booleaneffects 0
execute if score curse slot17 matches 6 run execute if score slot21 hp matches 1.. if score slot22 hp matches 1.. if score slot23 hp matches 1.. if score slot24 hp matches ..0 run scoreboard players add alivep2 deaths 1
execute if score curse slot17 matches 6 run execute if score slot21 hp matches 1.. if score slot22 hp matches 1.. if score slot23 hp matches 1.. if score slot24 hp matches ..0 at @e[name=slot24] run place template minecraft:bat ~ ~1 ~ counterclockwise_90
execute if score curse slot17 matches 6 run execute if score slot21 hp matches 1.. if score slot22 hp matches 1.. if score slot23 hp matches 1.. if score slot24 hp matches ..0 run function chthree:cleanseslot24
execute if score curse slot17 matches 6 run execute if score slot21 hp matches 1.. if score slot22 hp matches 1.. if score slot23 hp matches 1.. if score slot24 hp matches ..0 run scoreboard players operation maxhp slot24 = curseofbatsHPScale spellStats
execute if score curse slot17 matches 6 run execute if score slot21 hp matches 1.. if score slot22 hp matches 1.. if score slot23 hp matches 1.. if score slot24 hp matches ..0 run scoreboard players operation maxhp slot24 *= curseStacks slot17
execute if score curse slot17 matches 6 run execute if score slot21 hp matches 1.. if score slot22 hp matches 1.. if score slot23 hp matches 1.. if score slot24 hp matches ..0 run scoreboard players operation maxhp slot24 -= curseofbatsHPScale spellStats
execute if score curse slot17 matches 6 run execute if score slot21 hp matches 1.. if score slot22 hp matches 1.. if score slot23 hp matches 1.. if score slot24 hp matches ..0 run scoreboard players operation maxhp slot24 += bat herohealth
execute if score curse slot17 matches 6 run execute if score slot21 hp matches 1.. if score slot22 hp matches 1.. if score slot23 hp matches 1.. if score slot24 hp matches ..0 run scoreboard players operation slot24 hp = maxhp slot24
execute if score curse slot17 matches 6 run execute if score slot21 hp matches 1.. if score slot22 hp matches 1.. if score slot23 hp matches ..0 run scoreboard players set character# slot23 -7
execute if score curse slot17 matches 6 run execute if score slot21 hp matches 1.. if score slot22 hp matches 1.. if score slot23 hp matches ..0 run scoreboard players operation maxspeed slot23 = bat herospeed
execute if score curse slot17 matches 6 run execute if score slot21 hp matches 1.. if score slot22 hp matches 1.. if score slot23 hp matches ..0 run scoreboard players operation speed slot23 = bat herospeed
execute if score curse slot17 matches 6 run execute if score slot21 hp matches 1.. if score slot22 hp matches 1.. if score slot23 hp matches ..0 run scoreboard players operation atk slot23 = bat heroattack
execute if score curse slot17 matches 6 run execute if score slot21 hp matches 1.. if score slot22 hp matches 1.. if score slot23 hp matches ..0 run scoreboard players operation atk slot23 *= curseStacks slot17
execute if score curse slot17 matches 6 run execute if score slot21 hp matches 1.. if score slot22 hp matches 1.. if score slot23 hp matches ..0 run scoreboard players set slot23 stun 0
execute if score curse slot17 matches 6 run execute if score slot21 hp matches 1.. if score slot22 hp matches 1.. if score slot23 hp matches ..0 run scoreboard players set nobasicatk slot23 0
execute if score curse slot17 matches 6 run execute if score slot21 hp matches 1.. if score slot22 hp matches 1.. if score slot23 hp matches ..0 run scoreboard players set disarmedslot23 booleaneffects 0
execute if score curse slot17 matches 6 run execute if score slot21 hp matches 1.. if score slot22 hp matches 1.. if score slot23 hp matches ..0 run scoreboard players add alivep2 deaths 1
execute if score curse slot17 matches 6 run execute if score slot21 hp matches 1.. if score slot22 hp matches 1.. if score slot23 hp matches ..0 at @e[name=slot23] run place template minecraft:bat ~ ~1 ~ counterclockwise_90
execute if score curse slot17 matches 6 run execute if score slot21 hp matches 1.. if score slot22 hp matches 1.. if score slot23 hp matches ..0 run function chthree:cleanseslot23
execute if score curse slot17 matches 6 run execute if score slot21 hp matches 1.. if score slot22 hp matches 1.. if score slot23 hp matches ..0 run scoreboard players operation maxhp slot23 = curseofbatsHPScale spellStats
execute if score curse slot17 matches 6 run execute if score slot21 hp matches 1.. if score slot22 hp matches 1.. if score slot23 hp matches ..0 run scoreboard players operation maxhp slot23 *= curseStacks slot17
execute if score curse slot17 matches 6 run execute if score slot21 hp matches 1.. if score slot22 hp matches 1.. if score slot23 hp matches ..0 run scoreboard players operation maxhp slot23 -= curseofbatsHPScale spellStats
execute if score curse slot17 matches 6 run execute if score slot21 hp matches 1.. if score slot22 hp matches 1.. if score slot23 hp matches ..0 run scoreboard players operation maxhp slot23 += bat herohealth
execute if score curse slot17 matches 6 run execute if score slot21 hp matches 1.. if score slot22 hp matches 1.. if score slot23 hp matches ..0 run scoreboard players operation slot23 hp = maxhp slot23
execute if score curse slot17 matches 6 run execute if score slot21 hp matches 1.. if score slot22 hp matches ..0 run scoreboard players set character# slot22 -7
execute if score curse slot17 matches 6 run execute if score slot21 hp matches 1.. if score slot22 hp matches ..0 run scoreboard players operation maxspeed slot22 = bat herospeed
execute if score curse slot17 matches 6 run execute if score slot21 hp matches 1.. if score slot22 hp matches ..0 run scoreboard players operation speed slot22 = bat herospeed
execute if score curse slot17 matches 6 run execute if score slot21 hp matches 1.. if score slot22 hp matches ..0 run scoreboard players operation atk slot22 = bat heroattack
execute if score curse slot17 matches 6 run execute if score slot21 hp matches 1.. if score slot22 hp matches ..0 run scoreboard players operation atk slot22 *= curseStacks slot17
execute if score curse slot17 matches 6 run execute if score slot21 hp matches 1.. if score slot22 hp matches ..0 run scoreboard players set slot22 stun 0
execute if score curse slot17 matches 6 run execute if score slot21 hp matches 1.. if score slot22 hp matches ..0 run scoreboard players set nobasicatk slot22 0
execute if score curse slot17 matches 6 run execute if score slot21 hp matches 1.. if score slot22 hp matches ..0 run scoreboard players set disarmedslot22 booleaneffects 0
execute if score curse slot17 matches 6 run execute if score slot21 hp matches 1.. if score slot22 hp matches ..0 run scoreboard players add alivep2 deaths 1
execute if score curse slot17 matches 6 run execute if score slot21 hp matches 1.. if score slot22 hp matches ..0 at @e[name=slot22] run place template minecraft:bat ~ ~1 ~ counterclockwise_90
execute if score curse slot17 matches 6 run execute if score slot21 hp matches 1.. if score slot22 hp matches ..0 run function chthree:cleanseslot22
execute if score curse slot17 matches 6 run execute if score slot21 hp matches 1.. if score slot22 hp matches ..0 run scoreboard players operation maxhp slot22 = curseofbatsHPScale spellStats
execute if score curse slot17 matches 6 run execute if score slot21 hp matches 1.. if score slot22 hp matches ..0 run scoreboard players operation maxhp slot22 *= curseStacks slot17
execute if score curse slot17 matches 6 run execute if score slot21 hp matches 1.. if score slot22 hp matches ..0 run scoreboard players operation maxhp slot22 -= curseofbatsHPScale spellStats
execute if score curse slot17 matches 6 run execute if score slot21 hp matches 1.. if score slot22 hp matches ..0 run scoreboard players operation maxhp slot22 += bat herohealth
execute if score curse slot17 matches 6 run execute if score slot21 hp matches 1.. if score slot22 hp matches ..0 run scoreboard players operation slot22 hp = maxhp slot22
execute if score curse slot17 matches 6 run execute if score slot21 hp matches ..0 run scoreboard players set character# slot21 -7
execute if score curse slot17 matches 6 run execute if score slot21 hp matches ..0 run scoreboard players operation maxspeed slot21 = bat herospeed
execute if score curse slot17 matches 6 run execute if score slot21 hp matches ..0 run scoreboard players operation speed slot21 = bat herospeed
execute if score curse slot17 matches 6 run execute if score slot21 hp matches ..0 run scoreboard players operation atk slot21 = bat heroattack
execute if score curse slot17 matches 6 run execute if score slot21 hp matches ..0 run scoreboard players operation atk slot21 *= curseStacks slot17
execute if score curse slot17 matches 6 run execute if score slot21 hp matches ..0 run scoreboard players set slot21 stun 0
execute if score curse slot17 matches 6 run execute if score slot21 hp matches ..0 run scoreboard players set nobasicatk slot21 0
execute if score curse slot17 matches 6 run execute if score slot21 hp matches ..0 run scoreboard players set disarmedslot21 booleaneffects 0
execute if score curse slot17 matches 6 run execute if score slot21 hp matches ..0 run scoreboard players add alivep2 deaths 1
execute if score curse slot17 matches 6 run execute if score slot21 hp matches ..0 at @e[name=slot21] run place template minecraft:bat ~ ~1 ~ counterclockwise_90
execute if score curse slot17 matches 6 run execute if score slot21 hp matches ..0 run function chthree:cleanseslot21
execute if score curse slot17 matches 6 run execute if score slot21 hp matches ..0 run scoreboard players operation maxhp slot21 = curseofbatsHPScale spellStats
execute if score curse slot17 matches 6 run execute if score slot21 hp matches ..0 run scoreboard players operation maxhp slot21 *= curseStacks slot17
execute if score curse slot17 matches 6 run execute if score slot21 hp matches ..0 run scoreboard players operation maxhp slot21 -= curseofbatsHPScale spellStats
execute if score curse slot17 matches 6 run execute if score slot21 hp matches ..0 run scoreboard players operation maxhp slot21 += bat herohealth
execute if score curse slot17 matches 6 run execute if score slot21 hp matches ..0 run scoreboard players operation slot21 hp = maxhp slot21


scoreboard players set durationSlot17 taunt 0
scoreboard players set buffDurationSlot17 atkmodifiers 0
scoreboard players set durationSlot17 regen 0
scoreboard players set durationSlot17 speedBuffs 0
execute if score slot17 hp matches ..0 run scoreboard players set speed slot17 -1000000
tellraw @a[tag=game3] ["Slot 1 has died"]
execute at @e[name=slot17,type=armor_stand] run kill @e[name=!slot17,type=!player,distance=..4]
scoreboard players set curse slot17 0
scoreboard players set curseStacks slot17 0
scoreboard players set curseDuration slot17 0
