scoreboard players remove alivep2 deaths 1
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
execute if score slot6 hp matches ..0 run scoreboard players set speed slot6 -1000000
scoreboard players set durationSlot6 taunt 0
tellraw @a[tag=game1] ["Slot 6 has died"]
execute at @e[name=slot6,type=armor_stand] run kill @e[name=!slot6,type=!player,distance=..4]
#Character Specific Crap
execute if score character# slot2 matches 30 if score slot1 hp matches 1.. if score slot1bleeding booleaneffects matches 0 run scoreboard players operation slot1 hp += dominoLeader abilityStats
execute if score character# slot2 matches 30 if score slot2 hp matches 1.. if score slot2bleeding booleaneffects matches 0 run scoreboard players operation slot2 hp += dominoLeader abilityStats
execute if score character# slot2 matches 30 if score slot3 hp matches 1.. if score slot3bleeding booleaneffects matches 0 run scoreboard players operation slot3 hp += dominoLeader abilityStats
execute if score character# slot2 matches 30 if score slot4 hp matches 1.. if score slot4bleeding booleaneffects matches 0 run scoreboard players operation slot4 hp += dominoLeader abilityStats
execute if score character# slot6 matches 15 run execute if score slot6 hp matches ..0 if score slot8 hp matches 1.. if score slot7 hp matches 1.. if score slot5 hp matches ..0 run scoreboard players operation speed slot5 = golemite herospeed
execute if score character# slot6 matches 15 run execute if score slot6 hp matches ..0 if score slot8 hp matches 1.. if score slot7 hp matches 1.. if score slot5 hp matches ..0 run scoreboard players operation atk slot5 = golemite heroattack
execute if score character# slot6 matches 15 run execute if score slot6 hp matches ..0 if score slot8 hp matches 1.. if score slot7 hp matches 1.. if score slot5 hp matches ..0 run scoreboard players operation durationSlot5 taunt = golemTaunt abilityStats
execute if score character# slot6 matches 15 run execute if score slot6 hp matches ..0 if score slot8 hp matches 1.. if score slot7 hp matches 1.. if score slot5 hp matches ..0 run scoreboard players set slot5 stun 0
execute if score character# slot6 matches 15 run execute if score slot6 hp matches ..0 if score slot8 hp matches 1.. if score slot7 hp matches 1.. if score slot5 hp matches ..0 run scoreboard players set nobasicatk slot5 0
execute if score character# slot6 matches 15 run execute if score slot6 hp matches ..0 if score slot8 hp matches 1.. if score slot7 hp matches 1.. if score slot5 hp matches ..0 run scoreboard players set disarmedslot5 booleaneffects 0
execute if score character# slot6 matches 15 run execute if score slot6 hp matches ..0 if score slot8 hp matches 1.. if score slot7 hp matches 1.. if score slot5 hp matches ..0 run function ch:cleanseslot5
execute if score character# slot6 matches 15 run execute if score slot6 hp matches ..0 if score slot8 hp matches 1.. if score slot7 hp matches 1.. if score slot5 hp matches ..0 run scoreboard players add alivep2 deaths 1
execute if score character# slot6 matches 15 run execute if score slot6 hp matches ..0 if score slot8 hp matches 1.. if score slot7 hp matches 1.. if score slot5 hp matches ..0 run scoreboard players operation slot5 hp = golemite herohealth
execute if score character# slot6 matches 15 run execute if score slot6 hp matches ..0 if score slot8 hp matches 1.. if score slot7 hp matches 1.. if score slot5 hp = golemite herohealth if score atk slot5 = golemite heroattack run scoreboard players set character# slot5 -4


execute if score character# slot6 matches 15 run execute if score slot6 hp matches ..0 if score slot8 hp matches 1.. if score slot7 hp matches ..0 run scoreboard players operation speed slot7 = golemite herospeed
execute if score character# slot6 matches 15 run execute if score slot6 hp matches ..0 if score slot8 hp matches 1.. if score slot7 hp matches ..0 run scoreboard players operation atk slot7 = golemite heroattack
execute if score character# slot6 matches 15 run execute if score slot6 hp matches ..0 if score slot8 hp matches 1.. if score slot7 hp matches ..0 run scoreboard players operation durationSlot7 taunt = golemTaunt abilityStats
execute if score character# slot6 matches 15 run execute if score slot6 hp matches ..0 if score slot8 hp matches 1.. if score slot7 hp matches ..0 run scoreboard players set slot7 stun 0
execute if score character# slot6 matches 15 run execute if score slot6 hp matches ..0 if score slot8 hp matches 1.. if score slot7 hp matches ..0 run scoreboard players set nobasicatk slot7 0
execute if score character# slot6 matches 15 run execute if score slot6 hp matches ..0 if score slot8 hp matches 1.. if score slot7 hp matches ..0 run scoreboard players set disarmedslot7 booleaneffects 0
execute if score character# slot6 matches 15 run execute if score slot6 hp matches ..0 if score slot8 hp matches 1.. if score slot7 hp matches ..0 run function ch:cleanseslot7
execute if score character# slot6 matches 15 run execute if score slot6 hp matches ..0 if score slot8 hp matches 1.. if score slot7 hp matches ..0 run scoreboard players add alivep2 deaths 1
execute if score character# slot6 matches 15 run execute if score slot6 hp matches ..0 if score slot8 hp matches 1.. if score slot7 hp matches ..0 run scoreboard players operation slot7 hp = golemite herohealth
execute if score character# slot6 matches 15 run execute if score slot6 hp matches ..0 if score slot8 hp matches 1.. if score slot7 hp = golemite herohealth if score atk slot7 = golemite heroattack run scoreboard players set character# slot7 -4

execute if score character# slot6 matches 15 run execute if score slot6 hp matches ..0 if score slot8 hp matches ..0 run scoreboard players operation speed slot8 = golemite herospeed
execute if score character# slot6 matches 15 run execute if score slot6 hp matches ..0 if score slot8 hp matches ..0 run scoreboard players operation atk slot8 = golemite heroattack
execute if score character# slot6 matches 15 run execute if score slot6 hp matches ..0 if score slot8 hp matches ..0 run scoreboard players operation durationSlot8 taunt = golemTaunt abilityStats
execute if score character# slot6 matches 15 run execute if score slot6 hp matches ..0 if score slot8 hp matches ..0 run scoreboard players set slot8 stun 0
execute if score character# slot6 matches 15 run execute if score slot6 hp matches ..0 if score slot8 hp matches ..0 run scoreboard players set nobasicatk slot8 0
execute if score character# slot6 matches 15 run execute if score slot6 hp matches ..0 if score slot8 hp matches ..0 run scoreboard players set disarmedslot8 booleaneffects 0
execute if score character# slot6 matches 15 run execute if score slot6 hp matches ..0 if score slot8 hp matches ..0 run function ch:cleanseslot8
execute if score character# slot6 matches 15 run execute if score slot6 hp matches ..0 if score slot8 hp matches ..0 run scoreboard players add alivep2 deaths 1
execute if score character# slot6 matches 15 run execute if score slot6 hp matches ..0 if score slot8 hp matches ..0 run scoreboard players operation slot8 hp = golemite herohealth
execute if score character# slot6 matches 15 run execute if score slot6 hp matches ..0 if score slot8 hp = golemite herohealth if score atk slot8 = golemite heroattack run scoreboard players set character# slot8 -4

execute if score character# slot6 matches 15 run execute if score slot6 hp matches ..0 run scoreboard players operation speed slot6 = golemite herospeed
execute if score character# slot6 matches 15 run execute if score slot6 hp matches ..0 run scoreboard players operation atk slot6 = golemite heroattack
execute if score character# slot6 matches 15 run execute if score slot6 hp matches ..0 run scoreboard players operation durationSlot6 taunt = golemTaunt abilityStats
execute if score character# slot6 matches 15 run execute if score slot6 hp matches ..0 run function ch:cleanseslot6
execute if score character# slot6 matches 15 run execute if score slot6 hp matches ..0 run scoreboard players set slot6 stun 0
execute if score character# slot6 matches 15 run execute if score slot6 hp matches ..0 run scoreboard players set nobasicatk slot6 0
execute if score character# slot6 matches 15 run execute if score slot6 hp matches ..0 run scoreboard players set disarmedslot6 booleaneffects 0
execute if score character# slot6 matches 15 run execute if score slot6 hp matches ..0 run scoreboard players add alivep2 deaths 1
execute if score character# slot6 matches 15 run execute if score slot6 hp matches ..0 run scoreboard players operation slot6 hp = golemite herohealth
execute if score character# slot6 matches 15 run execute if score slot6 hp = golemite herohealth if score atk slot6 = golemite heroattack run scoreboard players set character# slot6 -4
