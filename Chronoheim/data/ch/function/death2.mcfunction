execute if score game1Ongoing ongoinggames matches 1 run execute if score character# slot2 matches 1.. run execute if score slot2 hp matches ..0 run execute unless score speed slot2 matches -10000..-9000 run scoreboard players remove alivep1 deaths 1
execute if score slot2 hp matches ..0 run scoreboard players set speed slot2 -10000

#Character Specific Crap

execute if score character# slot2 matches 15 run execute if score slot2 hp matches ..0 if score slot4 hp matches 1.. if score slot3 hp matches 1.. if score slot1 hp matches ..0 run scoreboard players operation speed slot1 = golemite herospeed
execute if score character# slot2 matches 15 run execute if score slot2 hp matches ..0 if score slot4 hp matches 1.. if score slot3 hp matches 1.. if score slot1 hp matches ..0 run scoreboard players operation atk slot1 = golemite heroattack
execute if score character# slot2 matches 15 run execute if score slot2 hp matches ..0 if score slot4 hp matches 1.. if score slot3 hp matches 1.. if score slot1 hp matches ..0 run scoreboard players operation durationSlot1 taunt = golemTaunt abilityStats
execute if score character# slot2 matches 15 run execute if score slot2 hp matches ..0 if score slot4 hp matches 1.. if score slot3 hp matches 1.. if score slot1 hp matches ..0 run scoreboard players set slot1 stun 0
execute if score character# slot2 matches 15 run execute if score slot2 hp matches ..0 if score slot4 hp matches 1.. if score slot3 hp matches 1.. if score slot1 hp matches ..0 run scoreboard players set disarmedslot1 booleaneffects 0
execute if score character# slot2 matches 15 run execute if score slot2 hp matches ..0 if score slot4 hp matches 1.. if score slot3 hp matches 1.. if score slot1 hp matches ..0 run function ch:cleanseslot1
execute if score character# slot2 matches 15 run execute if score slot2 hp matches ..0 if score slot4 hp matches 1.. if score slot3 hp matches 1.. if score slot1 hp matches ..0 run scoreboard players operation slot1 hp = golemite herohealth
execute if score character# slot2 matches 15 run execute if score slot2 hp matches ..0 if score slot4 hp matches 1.. if score slot3 hp matches 1.. if score slot1 hp = golemite herohealth if score atk slot1 = golemite heroattack run scoreboard players set character# slot1 -4


execute if score character# slot2 matches 15 run execute if score slot2 hp matches ..0 if score slot4 hp matches 1.. if score slot3 hp matches ..0 run scoreboard players operation speed slot3 = golemite herospeed
execute if score character# slot2 matches 15 run execute if score slot2 hp matches ..0 if score slot4 hp matches 1.. if score slot3 hp matches ..0 run scoreboard players operation atk slot3 = golemite heroattack
execute if score character# slot2 matches 15 run execute if score slot2 hp matches ..0 if score slot4 hp matches 1.. if score slot3 hp matches ..0 run scoreboard players operation durationSlot3 taunt = golemTaunt abilityStats
execute if score character# slot2 matches 15 run execute if score slot2 hp matches ..0 if score slot4 hp matches 1.. if score slot3 hp matches ..0 run scoreboard players set slot3 stun 0
execute if score character# slot2 matches 15 run execute if score slot2 hp matches ..0 if score slot4 hp matches 1.. if score slot3 hp matches ..0 run scoreboard players set disarmedslot3 booleaneffects 0
execute if score character# slot2 matches 15 run execute if score slot2 hp matches ..0 if score slot4 hp matches 1.. if score slot3 hp matches ..0 run function ch:cleanseslot3
execute if score character# slot2 matches 15 run execute if score slot2 hp matches ..0 if score slot4 hp matches 1.. if score slot3 hp matches ..0 run scoreboard players operation slot3 hp = golemite herohealth
execute if score character# slot2 matches 15 run execute if score slot2 hp matches ..0 if score slot4 hp matches 1.. if score slot3 hp = golemite herohealth if score atk slot3 = golemite heroattack run scoreboard players set character# slot3 -4

execute if score character# slot2 matches 15 run execute if score slot2 hp matches ..0 if score slot4 hp matches ..0 run scoreboard players operation speed slot4 = golemite herospeed
execute if score character# slot2 matches 15 run execute if score slot2 hp matches ..0 if score slot4 hp matches ..0 run scoreboard players operation atk slot4 = golemite heroattack
execute if score character# slot2 matches 15 run execute if score slot2 hp matches ..0 if score slot4 hp matches ..0 run scoreboard players operation durationSlot4 taunt = golemTaunt abilityStats
execute if score character# slot2 matches 15 run execute if score slot2 hp matches ..0 if score slot4 hp matches ..0 run scoreboard players set slot4 stun 0
execute if score character# slot2 matches 15 run execute if score slot2 hp matches ..0 if score slot4 hp matches ..0 run scoreboard players set disarmedslot4 booleaneffects 0
execute if score character# slot2 matches 15 run execute if score slot2 hp matches ..0 if score slot4 hp matches ..0 run function ch:cleanseslot4
execute if score character# slot2 matches 15 run execute if score slot2 hp matches ..0 if score slot4 hp matches ..0 run scoreboard players operation slot4 hp = golemite herohealth
execute if score character# slot2 matches 15 run execute if score slot2 hp matches ..0 if score slot4 hp = golemite herohealth if score atk slot4 = golemite heroattack run scoreboard players set character# slot4 -4

execute if score character# slot2 matches 15 run execute if score slot2 hp matches ..0 run scoreboard players operation speed slot2 = golemite herospeed
execute if score character# slot2 matches 15 run execute if score slot2 hp matches ..0 run scoreboard players operation atk slot2 = golemite heroattack
execute if score character# slot2 matches 15 run execute if score slot2 hp matches ..0 run scoreboard players operation durationSlot2 taunt = golemTaunt abilityStats
execute if score character# slot2 matches 15 run execute if score slot2 hp matches ..0 run function ch:cleanseslot2
execute if score character# slot2 matches 15 run execute if score slot2 hp matches ..0 run scoreboard players set slot2 stun 0
execute if score character# slot2 matches 15 run execute if score slot2 hp matches ..0 run scoreboard players set disarmedslot2 booleaneffects 0
execute if score character# slot2 matches 15 run execute if score slot2 hp matches ..0 run scoreboard players operation slot2 hp = golemite herohealth
execute if score character# slot2 matches 15 run execute if score slot2 hp = golemite herohealth if score atk slot2 = golemite heroattack run scoreboard players set character# slot2 -4


w @p[tag=p1] Slot 2 has died!
w @p[tag=p2] Slot 2 has died!