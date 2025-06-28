scoreboard players remove alivep1 deaths 1
execute if score character# slot1 matches 28 run scoreboard players set cooldown slot1 0
execute if score character# slot2 matches 28 run scoreboard players set cooldown slot2 0
execute if score character# slot3 matches 28 run scoreboard players set cooldown slot3 0
execute if score character# slot5 matches 28 run scoreboard players set cooldown slot5 0
execute if score character# slot6 matches 28 run scoreboard players set cooldown slot6 0
execute if score character# slot7 matches 28 run scoreboard players set cooldown slot7 0
execute if score slot2 hp matches ..0 run scoreboard players set speed slot2 -1000000

#Character Specific Crap
execute if score character# slot6 matches 30 if score slot5 hp matches 1.. if score slot5bleeding booleaneffects matches 0 run scoreboard players operation slot5 hp += dominoLeader abilityStats
execute if score character# slot6 matches 30 if score slot6 hp matches 1.. if score slot6bleeding booleaneffects matches 0 run scoreboard players operation slot6 hp += dominoLeader abilityStats
execute if score character# slot6 matches 30 if score slot7 hp matches 1.. if score slot7bleeding booleaneffects matches 0 run scoreboard players operation slot7 hp += dominoLeader abilityStats
execute if score character# slot6 matches 30 if score slot8 hp matches 1.. if score slot8bleeding booleaneffects matches 0 run scoreboard players operation slot8 hp += dominoLeader abilityStats
execute if score character# slot2 matches 15 run execute if score slot2 hp matches ..0 if score slot4 hp matches 1.. if score slot3 hp matches 1.. if score slot1 hp matches ..0 run scoreboard players operation speed slot1 = golemite herospeed
execute if score character# slot2 matches 15 run execute if score slot2 hp matches ..0 if score slot4 hp matches 1.. if score slot3 hp matches 1.. if score slot1 hp matches ..0 run scoreboard players operation atk slot1 = golemite heroattack
execute if score character# slot2 matches 15 run execute if score slot2 hp matches ..0 if score slot4 hp matches 1.. if score slot3 hp matches 1.. if score slot1 hp matches ..0 run scoreboard players operation durationSlot1 taunt = golemTaunt abilityStats
execute if score character# slot2 matches 15 run execute if score slot2 hp matches ..0 if score slot4 hp matches 1.. if score slot3 hp matches 1.. if score slot1 hp matches ..0 run scoreboard players set slot1 stun 0
execute if score character# slot2 matches 15 run execute if score slot2 hp matches ..0 if score slot4 hp matches 1.. if score slot3 hp matches 1.. if score slot1 hp matches ..0 run scoreboard players set nobasicatk slot1 0
execute if score character# slot2 matches 15 run execute if score slot2 hp matches ..0 if score slot4 hp matches 1.. if score slot3 hp matches 1.. if score slot1 hp matches ..0 run scoreboard players set disarmedslot1 booleaneffects 0
execute if score character# slot2 matches 15 run execute if score slot2 hp matches ..0 if score slot4 hp matches 1.. if score slot3 hp matches 1.. if score slot1 hp matches ..0 run function ch:cleanseslot1
execute if score character# slot2 matches 15 run execute if score slot2 hp matches ..0 if score slot4 hp matches 1.. if score slot3 hp matches 1.. if score slot1 hp matches ..0 run scoreboard players add alivep1 deaths 1
execute if score character# slot2 matches 15 run execute if score slot2 hp matches ..0 if score slot4 hp matches 1.. if score slot3 hp matches 1.. if score slot1 hp matches ..0 run scoreboard players operation slot1 hp = golemite herohealth
execute if score character# slot2 matches 15 run execute if score slot2 hp matches ..0 if score slot4 hp matches 1.. if score slot3 hp matches 1.. if score slot1 hp = golemite herohealth if score atk slot1 = golemite heroattack run scoreboard players set character# slot1 -4


execute if score character# slot2 matches 15 run execute if score slot2 hp matches ..0 if score slot4 hp matches 1.. if score slot3 hp matches ..0 run scoreboard players operation speed slot3 = golemite herospeed
execute if score character# slot2 matches 15 run execute if score slot2 hp matches ..0 if score slot4 hp matches 1.. if score slot3 hp matches ..0 run scoreboard players operation atk slot3 = golemite heroattack
execute if score character# slot2 matches 15 run execute if score slot2 hp matches ..0 if score slot4 hp matches 1.. if score slot3 hp matches ..0 run scoreboard players operation durationSlot3 taunt = golemTaunt abilityStats
execute if score character# slot2 matches 15 run execute if score slot2 hp matches ..0 if score slot4 hp matches 1.. if score slot3 hp matches ..0 run scoreboard players set slot3 stun 0
execute if score character# slot2 matches 15 run execute if score slot2 hp matches ..0 if score slot4 hp matches 1.. if score slot3 hp matches ..0 run scoreboard players set nobasicatk slot3 0
execute if score character# slot2 matches 15 run execute if score slot2 hp matches ..0 if score slot4 hp matches 1.. if score slot3 hp matches ..0 run scoreboard players set disarmedslot3 booleaneffects 0
execute if score character# slot2 matches 15 run execute if score slot2 hp matches ..0 if score slot4 hp matches 1.. if score slot3 hp matches ..0 run function ch:cleanseslot3
execute if score character# slot2 matches 15 run execute if score slot2 hp matches ..0 if score slot4 hp matches 1.. if score slot3 hp matches ..0 run scoreboard players add alivep1 deaths 1
execute if score character# slot2 matches 15 run execute if score slot2 hp matches ..0 if score slot4 hp matches 1.. if score slot3 hp matches ..0 run scoreboard players operation slot3 hp = golemite herohealth
execute if score character# slot2 matches 15 run execute if score slot2 hp matches ..0 if score slot4 hp matches 1.. if score slot3 hp = golemite herohealth if score atk slot3 = golemite heroattack run scoreboard players set character# slot3 -4

execute if score character# slot2 matches 15 run execute if score slot2 hp matches ..0 if score slot4 hp matches ..0 run scoreboard players operation speed slot4 = golemite herospeed
execute if score character# slot2 matches 15 run execute if score slot2 hp matches ..0 if score slot4 hp matches ..0 run scoreboard players operation atk slot4 = golemite heroattack
execute if score character# slot2 matches 15 run execute if score slot2 hp matches ..0 if score slot4 hp matches ..0 run scoreboard players operation durationSlot4 taunt = golemTaunt abilityStats
execute if score character# slot2 matches 15 run execute if score slot2 hp matches ..0 if score slot4 hp matches ..0 run scoreboard players set slot4 stun 0
execute if score character# slot2 matches 15 run execute if score slot2 hp matches ..0 if score slot4 hp matches ..0 run scoreboard players set nobasicatk slot4 0
execute if score character# slot2 matches 15 run execute if score slot2 hp matches ..0 if score slot4 hp matches ..0 run scoreboard players set disarmedslot4 booleaneffects 0
execute if score character# slot2 matches 15 run execute if score slot2 hp matches ..0 if score slot4 hp matches ..0 run function ch:cleanseslot4
execute if score character# slot2 matches 15 run execute if score slot2 hp matches ..0 if score slot4 hp matches ..0 run scoreboard players add alivep1 deaths 1
execute if score character# slot2 matches 15 run execute if score slot2 hp matches ..0 if score slot4 hp matches ..0 run scoreboard players operation slot4 hp = golemite herohealth
execute if score character# slot2 matches 15 run execute if score slot2 hp matches ..0 if score slot4 hp = golemite herohealth if score atk slot4 = golemite heroattack run scoreboard players set character# slot4 -4

execute if score character# slot2 matches 15 run execute if score slot2 hp matches ..0 run scoreboard players operation speed slot2 = golemite herospeed
execute if score character# slot2 matches 15 run execute if score slot2 hp matches ..0 run scoreboard players operation atk slot2 = golemite heroattack
execute if score character# slot2 matches 15 run execute if score slot2 hp matches ..0 run scoreboard players operation durationSlot2 taunt = golemTaunt abilityStats
execute if score character# slot2 matches 15 run execute if score slot2 hp matches ..0 run function ch:cleanseslot2
execute if score character# slot2 matches 15 run execute if score slot2 hp matches ..0 run scoreboard players set slot2 stun 0
execute if score character# slot2 matches 15 run execute if score slot2 hp matches ..0 run scoreboard players set nobasicatk slot2 0
execute if score character# slot2 matches 15 run execute if score slot2 hp matches ..0 run scoreboard players set disarmedslot2 booleaneffects 0
execute if score character# slot2 matches 15 run execute if score slot2 hp matches ..0 run scoreboard players add alivep1 deaths 1
execute if score character# slot2 matches 15 run execute if score slot2 hp matches ..0 run scoreboard players operation slot2 hp = golemite herohealth
execute if score character# slot2 matches 15 run execute if score slot2 hp = golemite herohealth if score atk slot2 = golemite heroattack run scoreboard players set character# slot2 -4


w @p[tag=p1] Slot 2 has died!
w @p[tag=p2] Slot 2 has died!
