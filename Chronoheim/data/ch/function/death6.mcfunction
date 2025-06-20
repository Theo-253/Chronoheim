execute if score game1Ongoing ongoinggames matches 1 run execute if score character# slot6 matches 1.. run execute if score slot6 hp matches ..0 run execute unless score speed slot6 matches -10000..-9000 run scoreboard players remove alivep2 deaths 1
execute if score slot6 hp matches ..0 run scoreboard players set speed slot6 -10000
w @p[tag=p1] Slot 6 has died!
w @p[tag=p2] Slot 6 has died!

#Character Specific Crap
execute if score character# slot6 matches 15 run execute if score slot6 hp matches ..0 if score slot8 hp matches 1.. if score slot7 hp matches 1.. if score slot5 hp matches ..0 run scoreboard players operation speed slot5 = golemite herospeed
execute if score character# slot6 matches 15 run execute if score slot6 hp matches ..0 if score slot8 hp matches 1.. if score slot7 hp matches 1.. if score slot5 hp matches ..0 run scoreboard players operation atk slot5 = golemite heroattack
execute if score character# slot6 matches 15 run execute if score slot6 hp matches ..0 if score slot8 hp matches 1.. if score slot7 hp matches 1.. if score slot5 hp matches ..0 run scoreboard players operation durationSlot5 taunt = golemTaunt abilityStats
execute if score character# slot6 matches 15 run execute if score slot6 hp matches ..0 if score slot8 hp matches 1.. if score slot7 hp matches 1.. if score slot5 hp matches ..0 run scoreboard players set slot5 stun 0
execute if score character# slot6 matches 15 run execute if score slot6 hp matches ..0 if score slot8 hp matches 1.. if score slot7 hp matches 1.. if score slot5 hp matches ..0 run scoreboard players set disarmedslot5 booleaneffects 0
execute if score character# slot6 matches 15 run execute if score slot6 hp matches ..0 if score slot8 hp matches 1.. if score slot7 hp matches 1.. if score slot5 hp matches ..0 run function ch:cleanseslot5
execute if score character# slot6 matches 15 run execute if score slot6 hp matches ..0 if score slot8 hp matches 1.. if score slot7 hp matches 1.. if score slot5 hp matches ..0 run scoreboard players operation slot5 hp = golemite herohealth
execute if score character# slot6 matches 15 run execute if score slot6 hp matches ..0 if score slot8 hp matches 1.. if score slot7 hp matches 1.. if score slot5 hp = golemite herohealth if score atk slot5 = golemite heroattack run scoreboard players set character# slot5 -4


execute if score character# slot6 matches 15 run execute if score slot6 hp matches ..0 if score slot8 hp matches 1.. if score slot7 hp matches ..0 run scoreboard players operation speed slot7 = golemite herospeed
execute if score character# slot6 matches 15 run execute if score slot6 hp matches ..0 if score slot8 hp matches 1.. if score slot7 hp matches ..0 run scoreboard players operation atk slot7 = golemite heroattack
execute if score character# slot6 matches 15 run execute if score slot6 hp matches ..0 if score slot8 hp matches 1.. if score slot7 hp matches ..0 run scoreboard players operation durationSlot7 taunt = golemTaunt abilityStats
execute if score character# slot6 matches 15 run execute if score slot6 hp matches ..0 if score slot8 hp matches 1.. if score slot7 hp matches ..0 run scoreboard players set slot7 stun 0
execute if score character# slot6 matches 15 run execute if score slot6 hp matches ..0 if score slot8 hp matches 1.. if score slot7 hp matches ..0 run scoreboard players set disarmedslot7 booleaneffects 0
execute if score character# slot6 matches 15 run execute if score slot6 hp matches ..0 if score slot8 hp matches 1.. if score slot7 hp matches ..0 run function ch:cleanseslot7
execute if score character# slot6 matches 15 run execute if score slot6 hp matches ..0 if score slot8 hp matches 1.. if score slot7 hp matches ..0 run scoreboard players operation slot7 hp = golemite herohealth
execute if score character# slot6 matches 15 run execute if score slot6 hp matches ..0 if score slot8 hp matches 1.. if score slot7 hp = golemite herohealth if score atk slot7 = golemite heroattack run scoreboard players set character# slot7 -4

execute if score character# slot6 matches 15 run execute if score slot6 hp matches ..0 if score slot8 hp matches ..0 run scoreboard players operation speed slot8 = golemite herospeed
execute if score character# slot6 matches 15 run execute if score slot6 hp matches ..0 if score slot8 hp matches ..0 run scoreboard players operation atk slot8 = golemite heroattack
execute if score character# slot6 matches 15 run execute if score slot6 hp matches ..0 if score slot8 hp matches ..0 run scoreboard players operation durationSlot8 taunt = golemTaunt abilityStats
execute if score character# slot6 matches 15 run execute if score slot6 hp matches ..0 if score slot8 hp matches ..0 run scoreboard players set slot8 stun 0
execute if score character# slot6 matches 15 run execute if score slot6 hp matches ..0 if score slot8 hp matches ..0 run scoreboard players set disarmedslot8 booleaneffects 0
execute if score character# slot6 matches 15 run execute if score slot6 hp matches ..0 if score slot8 hp matches ..0 run function ch:cleanseslot8
execute if score character# slot6 matches 15 run execute if score slot6 hp matches ..0 if score slot8 hp matches ..0 run scoreboard players operation slot8 hp = golemite herohealth
execute if score character# slot6 matches 15 run execute if score slot6 hp matches ..0 if score slot8 hp = golemite herohealth if score atk slot8 = golemite heroattack run scoreboard players set character# slot8 -4

execute if score character# slot6 matches 15 run execute if score slot6 hp matches ..0 run scoreboard players operation speed slot6 = golemite herospeed
execute if score character# slot6 matches 15 run execute if score slot6 hp matches ..0 run scoreboard players operation atk slot6 = golemite heroattack
execute if score character# slot6 matches 15 run execute if score slot6 hp matches ..0 run scoreboard players operation durationSlot6 taunt = golemTaunt abilityStats
execute if score character# slot6 matches 15 run execute if score slot6 hp matches ..0 run function ch:cleanseslot6
execute if score character# slot6 matches 15 run execute if score slot6 hp matches ..0 run scoreboard players set slot6 stun 0
execute if score character# slot6 matches 15 run execute if score slot6 hp matches ..0 run scoreboard players set disarmedslot6 booleaneffects 0
execute if score character# slot6 matches 15 run execute if score slot6 hp matches ..0 run scoreboard players operation slot6 hp = golemite herohealth
execute if score character# slot6 matches 15 run execute if score slot6 hp = golemite herohealth if score atk slot6 = golemite heroattack run scoreboard players set character# slot6 -4
