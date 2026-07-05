#basic attack functions
tellraw @a[tag=game1] ["",{"selector":"@p[tag=p1]"}," attacked Slot 6"]
clear @a[tag=p1]
#slot 1
execute if score slot1isatk booleans matches 1 run scoreboard players operation atk1 saves = atk slot1
execute if score slot1isatk booleans matches 1 run scoreboard players operation atk1 saves += slot1 atkmodifiers
execute if score slot1isatk booleans matches 1 run scoreboard players operation atk1 saves += marks slot6
execute if score slot1isatk booleans matches 1 if score character# slot1 matches 30 run scoreboard players operation atk1 saves += dominoLeaderHit heroattack
execute if score slot1isatk booleans matches 1 run scoreboard players operation atk1 saves /= atkmultiplier slot6
execute if score slot1isatk booleans matches 1 run scoreboard players operation shield slot6 -= atk1 saves
#slot 2
execute if score slot2isatk booleans matches 1 run scoreboard players operation atk1 saves = atk slot2
execute if score slot2isatk booleans matches 1 run scoreboard players operation atk1 saves += slot2 atkmodifiers
execute if score slot2isatk booleans matches 1 run scoreboard players operation atk1 saves += marks slot6
execute if score slot2isatk booleans matches 1 if score character# slot2 matches 36 run execute unless score durationSlot1-6 fear matches 1.. unless score durationSlot2-6 fear matches 1.. unless score durationSlot3-6 fear matches 1.. unless score durationSlot4-6 fear matches 1.. run scoreboard players operation atk1 saves -= barleyLeader abilityStats
execute if score slot2isatk booleans matches 1 if score character# slot2 matches 30 run scoreboard players operation atk1 saves += dominoLeaderHit heroattack
execute if score slot2isatk booleans matches 1 run scoreboard players operation atk1 saves /= atkmultiplier slot6
execute if score slot2isatk booleans matches 1 run scoreboard players operation shield slot6 -= atk1 saves
#slot 3
execute if score slot3isatk booleans matches 1 run scoreboard players operation atk1 saves = atk slot3
execute if score slot3isatk booleans matches 1 run scoreboard players operation atk1 saves += marks slot6
execute if score slot3isatk booleans matches 1 run scoreboard players operation atk1 saves += slot3 atkmodifiers
execute if score slot3isatk booleans matches 1 if score character# slot3 matches 30 run scoreboard players operation atk1 saves += dominoLeaderHit heroattack
execute if score slot3isatk booleans matches 1 run scoreboard players operation atk1 saves /= atkmultiplier slot6
execute if score slot3isatk booleans matches 1 run scoreboard players operation shield slot6 -= atk1 saves
#slot 4
execute if score slot4isatk booleans matches 1 run scoreboard players operation atk1 saves = atk slot4
execute if score slot4isatk booleans matches 1 run scoreboard players operation atk1 saves += marks slot6
execute if score slot4isatk booleans matches 1 run scoreboard players operation atk1 saves += slot4 atkmodifiers
execute if score slot4isatk booleans matches 1 run scoreboard players operation atk1 saves /= atkmultiplier slot6
execute if score slot4isatk booleans matches 1 run scoreboard players operation shield slot6 -= atk1 saves



#splash
#slot1
execute if score splash slot1 matches 1.. run execute if score slot1isatk booleans matches 1 run scoreboard players operation splashdamage saves = atk slot1
execute if score splash slot1 matches 1.. run execute if score slot1isatk booleans matches 1 run scoreboard players operation splashdamage saves += slot1 atkmodifiers
execute if score splash slot1 matches 1.. run execute if score slot1isatk booleans matches 1 run scoreboard players operation splashdamage saves /= splash slot1
execute if score splash slot1 matches 1.. run execute if score slot1isatk booleans matches 1 run scoreboard players operation splashdamage saves += marks slot5
execute if score splash slot1 matches 1.. run execute if score slot1isatk booleans matches 1 run scoreboard players operation splashdamage saves /= atkmultiplier slot5
execute if score ward slot5 matches 0 run execute if score splash slot1 matches 1.. run execute if score slot1isatk booleans matches 1 run scoreboard players operation shield slot5 -= splashdamage saves
execute if score ward slot5 matches 1.. run execute if score splash slot1 matches 1.. run execute if score slot1isatk booleans matches 1 run function ch:wardslot5
execute if score splash slot1 matches 1.. if score slot1isatk booleans matches 1 at @e[name=slot5,type=armor_stand] run particle minecraft:crit ~ ~1 ~ 0.9 0.9 0.9 0.5 50
execute if score splash slot1 matches 1.. run execute if score slot1isatk booleans matches 1 run scoreboard players operation splashdamage saves = atk slot1
execute if score splash slot1 matches 1.. run execute if score slot1isatk booleans matches 1 run scoreboard players operation splashdamage saves += slot1 atkmodifiers
execute if score splash slot1 matches 1.. run execute if score slot1isatk booleans matches 1 run scoreboard players operation splashdamage saves /= splash slot1
execute if score splash slot1 matches 1.. run execute if score slot1isatk booleans matches 1 run scoreboard players operation splashdamage saves += marks slot7
execute if score splash slot1 matches 1.. run execute if score slot1isatk booleans matches 1 run scoreboard players operation splashdamage saves /= atkmultiplier slot7
execute if score ward slot7 matches 0 run execute if score splash slot1 matches 1.. run execute if score slot1isatk booleans matches 1 run scoreboard players operation shield slot7 -= splashdamage saves
execute if score ward slot7 matches 1.. run execute if score splash slot1 matches 1.. run execute if score slot1isatk booleans matches 1 run function ch:wardslot7
execute if score splash slot1 matches 1.. if score slot1isatk booleans matches 1 at @e[name=slot7,type=armor_stand] run particle minecraft:crit ~ ~1 ~ 0.9 0.9 0.9 0.5 50

#slot2
execute if score splash slot2 matches 1.. run execute if score slot2isatk booleans matches 1 run scoreboard players operation splashdamage saves = atk slot2
execute if score splash slot2 matches 1.. run execute if score slot2isatk booleans matches 1 run scoreboard players operation splashdamage saves += slot2 atkmodifiers
execute if score splash slot2 matches 1.. run execute if score slot2isatk booleans matches 1 run scoreboard players operation splashdamage saves /= splash slot2
execute if score splash slot2 matches 1.. run execute if score slot2isatk booleans matches 1 run scoreboard players operation splashdamage saves += marks slot5
execute if score splash slot2 matches 1.. run execute if score slot2isatk booleans matches 1 run scoreboard players operation splashdamage saves /= atkmultiplier slot5
execute if score ward slot5 matches 0 run execute if score splash slot2 matches 1.. run execute if score slot2isatk booleans matches 1 run scoreboard players operation shield slot5 -= splashdamage saves
execute if score ward slot5 matches 1.. run execute if score splash slot2 matches 1.. run execute if score slot2isatk booleans matches 1 run function ch:wardslot5
execute if score splash slot2 matches 1.. if score slot2isatk booleans matches 1 at @e[name=slot5,type=armor_stand] run particle minecraft:crit ~ ~1 ~ 0.9 0.9 0.9 0.5 50
execute if score splash slot2 matches 1.. run execute if score slot2isatk booleans matches 1 run scoreboard players operation splashdamage saves = atk slot2
execute if score splash slot2 matches 1.. run execute if score slot2isatk booleans matches 1 run scoreboard players operation splashdamage saves += slot2 atkmodifiers
execute if score splash slot2 matches 1.. run execute if score slot2isatk booleans matches 1 run scoreboard players operation splashdamage saves /= splash slot2
execute if score splash slot2 matches 1.. run execute if score slot2isatk booleans matches 1 run scoreboard players operation splashdamage saves += marks slot7
execute if score splash slot2 matches 1.. run execute if score slot2isatk booleans matches 1 run scoreboard players operation splashdamage saves /= atkmultiplier slot7
execute if score ward slot7 matches 0 run execute if score splash slot2 matches 1.. run execute if score slot2isatk booleans matches 1 run scoreboard players operation shield slot7 -= splashdamage saves
execute if score ward slot7 matches 1.. run execute if score splash slot2 matches 1.. run execute if score slot2isatk booleans matches 1 run function ch:wardslot7
execute if score splash slot2 matches 1.. if score slot2isatk booleans matches 1 at @e[name=slot7,type=armor_stand] run particle minecraft:crit ~ ~1 ~ 0.9 0.9 0.9 0.5 50

#slot3
execute if score splash slot3 matches 1.. run execute if score slot3isatk booleans matches 1 run scoreboard players operation splashdamage saves = atk slot3
execute if score splash slot3 matches 1.. run execute if score slot3isatk booleans matches 1 run scoreboard players operation splashdamage saves += slot3 atkmodifiers
execute if score splash slot3 matches 1.. run execute if score slot3isatk booleans matches 1 run scoreboard players operation splashdamage saves /= splash slot3
execute if score splash slot3 matches 1.. run execute if score slot3isatk booleans matches 1 run scoreboard players operation splashdamage saves += marks slot5
execute if score splash slot3 matches 1.. run execute if score slot3isatk booleans matches 1 run scoreboard players operation splashdamage saves /= atkmultiplier slot5
execute if score ward slot5 matches 0 run execute if score splash slot3 matches 1.. run execute if score slot3isatk booleans matches 1 run scoreboard players operation shield slot5 -= splashdamage saves
execute if score ward slot5 matches 1.. run execute if score splash slot3 matches 1.. run execute if score slot3isatk booleans matches 1 run function ch:wardslot5
execute if score splash slot3 matches 1.. if score slot3isatk booleans matches 1 at @e[name=slot5,type=armor_stand] run particle minecraft:crit ~ ~1 ~ 0.9 0.9 0.9 0.5 50
execute if score splash slot3 matches 1.. run execute if score slot3isatk booleans matches 1 run scoreboard players operation splashdamage saves = atk slot3
execute if score splash slot3 matches 1.. run execute if score slot3isatk booleans matches 1 run scoreboard players operation splashdamage saves += slot3 atkmodifiers
execute if score splash slot3 matches 1.. run execute if score slot3isatk booleans matches 1 run scoreboard players operation splashdamage saves /= splash slot3
execute if score splash slot3 matches 1.. run execute if score slot3isatk booleans matches 1 run scoreboard players operation splashdamage saves += marks slot7
execute if score splash slot3 matches 1.. run execute if score slot3isatk booleans matches 1 run scoreboard players operation splashdamage saves /= atkmultiplier slot7
execute if score ward slot7 matches 0 run execute if score splash slot3 matches 1.. run execute if score slot3isatk booleans matches 1 run scoreboard players operation shield slot7 -= splashdamage saves
execute if score ward slot7 matches 1.. run execute if score splash slot3 matches 1.. run execute if score slot3isatk booleans matches 1 run function ch:wardslot7
execute if score splash slot3 matches 1.. if score slot3isatk booleans matches 1 at @e[name=slot7,type=armor_stand] run particle minecraft:crit ~ ~1 ~ 0.9 0.9 0.9 0.5 50
#slot4
execute if score splash slot4 matches 1.. run execute if score slot4isatk booleans matches 1 run scoreboard players operation splashdamage saves = atk slot4
execute if score splash slot4 matches 1.. run execute if score slot4isatk booleans matches 1 run scoreboard players operation splashdamage saves += slot4 atkmodifiers
execute if score splash slot4 matches 1.. run execute if score slot4isatk booleans matches 1 run scoreboard players operation splashdamage saves /= splash slot4
execute if score splash slot4 matches 1.. run execute if score slot4isatk booleans matches 1 run scoreboard players operation splashdamage saves += marks slot5
execute if score splash slot4 matches 1.. run execute if score slot4isatk booleans matches 1 run scoreboard players operation splashdamage saves /= atkmultiplier slot5
execute if score ward slot5 matches 0 run execute if score splash slot4 matches 1.. run execute if score slot4isatk booleans matches 1 run scoreboard players operation shield slot5 -= splashdamage saves
execute if score ward slot5 matches 1.. run execute if score splash slot4 matches 1.. run execute if score slot4isatk booleans matches 1 run function ch:wardslot5
execute if score splash slot4 matches 1.. if score slot4isatk booleans matches 1 at @e[name=slot5,type=armor_stand] run particle minecraft:crit ~ ~1 ~ 0.9 0.9 0.9 0.5 50
execute if score splash slot4 matches 1.. run execute if score slot4isatk booleans matches 1 run scoreboard players operation splashdamage saves = atk slot4
execute if score splash slot4 matches 1.. run execute if score slot4isatk booleans matches 1 run scoreboard players operation splashdamage saves += slot4 atkmodifiers
execute if score splash slot4 matches 1.. run execute if score slot4isatk booleans matches 1 run scoreboard players operation splashdamage saves /= splash slot4
execute if score splash slot4 matches 1.. run execute if score slot4isatk booleans matches 1 run scoreboard players operation splashdamage saves += marks slot7
execute if score splash slot4 matches 1.. run execute if score slot4isatk booleans matches 1 run scoreboard players operation splashdamage saves /= atkmultiplier slot7
execute if score ward slot7 matches 0 run execute if score splash slot4 matches 1.. run execute if score slot4isatk booleans matches 1 run scoreboard players operation shield slot7 -= splashdamage saves
execute if score ward slot7 matches 1.. run execute if score splash slot4 matches 1.. run execute if score slot4isatk booleans matches 1 run function ch:wardslot7
execute if score splash slot4 matches 1.. if score slot4isatk booleans matches 1 at @e[name=slot7,type=armor_stand] run particle minecraft:crit ~ ~1 ~ 0.9 0.9 0.9 0.5 50

#damage + shield reset (all)
execute if score shield slot5 matches ..0 if score ward slot5 matches 0 run scoreboard players operation slot5 hp += shield slot5
execute if score shield slot5 matches ..0 run scoreboard players set shield slot5 0
execute if score shield slot7 matches ..0 if score ward slot7 matches 0 run scoreboard players operation slot7 hp += shield slot7
execute if score shield slot7 matches ..0 run scoreboard players set shield slot7 0


#lifesteal
#slot 1
execute if score lifesteal slot1 matches 1.. run execute if score slot1isatk booleans matches 1 run scoreboard players operation lifesteal saves = atk slot1
execute if score lifesteal slot1 matches 1.. run execute if score slot1isatk booleans matches 1 run scoreboard players operation lifesteal saves += slot1 atkmodifiers
execute if score lifesteal slot1 matches 1.. run execute if score slot1isatk booleans matches 1 run scoreboard players operation lifesteal saves += marks slot6
execute if score lifesteal slot1 matches 1.. if score slot1isatk booleans matches 1 if score character# slot1 matches 30 run scoreboard players operation lifesteal1 saves += dominoLeaderHit heroattack
execute if score lifesteal slot1 matches 1.. run execute if score slot1isatk booleans matches 1 run scoreboard players operation lifesteal saves /= atkmultiplier slot6
execute if score lifesteal slot1 matches 1.. run execute if score slot1isatk booleans matches 1 run scoreboard players operation lifesteal saves /= lifesteal slot1
execute if score ward slot6 matches 0 if score slot1bleeding booleaneffects matches 0 run execute if score lifesteal slot1 matches 1.. run execute if score slot1isatk booleans matches 1 run scoreboard players operation slot1 hp += lifesteal saves
execute if score ward slot6 matches 0 if score lifesteal slot1 matches 1.. if score slot1isatk booleans matches 1 at @e[name=slot1,type=armor_stand] run particle minecraft:composter ~ ~1 ~ 0.9 0.9 0.9 0.5 50
#slot 2
execute if score lifesteal slot2 matches 1.. run execute if score slot2isatk booleans matches 1 run scoreboard players operation lifesteal saves = atk slot2
execute if score lifesteal slot2 matches 1.. run execute if score slot2isatk booleans matches 1 run scoreboard players operation lifesteal saves += slot2 atkmodifiers
execute if score lifesteal slot2 matches 1.. run execute if score slot2isatk booleans matches 1 run scoreboard players operation lifesteal saves += marks slot6
execute if score lifesteal slot2 matches 1.. if score slot2isatk booleans matches 1 if score character# slot2 matches 30 run scoreboard players operation lifesteal1 saves += dominoLeaderHit heroattack
execute if score lifesteal slot2 matches 1.. run execute if score slot2isatk booleans matches 1 run scoreboard players operation lifesteal saves /= atkmultiplier slot6
execute if score lifesteal slot2 matches 1.. run execute if score slot2isatk booleans matches 1 run scoreboard players operation lifesteal saves /= lifesteal slot2
execute if score ward slot6 matches 0 if score slot2bleeding booleaneffects matches 0 run execute if score lifesteal slot2 matches 1.. run execute if score slot2isatk booleans matches 1 run scoreboard players operation slot2 hp += lifesteal saves
execute if score ward slot6 matches 0 if score lifesteal slot2 matches 1.. if score slot2isatk booleans matches 1 at @e[name=slot2,type=armor_stand] run particle minecraft:composter ~ ~1 ~ 0.9 0.9 0.9 0.5 50
#slot 3
execute if score lifesteal slot3 matches 1.. run execute if score slot3isatk booleans matches 1 run scoreboard players operation lifesteal saves = atk slot3
execute if score lifesteal slot3 matches 1.. run execute if score slot3isatk booleans matches 1 run scoreboard players operation lifesteal saves += slot3 atkmodifiers
execute if score lifesteal slot3 matches 1.. run execute if score slot3isatk booleans matches 1 run scoreboard players operation lifesteal saves += marks slot6
execute if score lifesteal slot3 matches 1.. if score slot3isatk booleans matches 1 if score character# slot3 matches 30 run scoreboard players operation lifesteal1 saves += dominoLeaderHit heroattack
execute if score lifesteal slot3 matches 1.. run execute if score slot3isatk booleans matches 1 run scoreboard players operation lifesteal saves /= atkmultiplier slot6
execute if score lifesteal slot3 matches 1.. run execute if score slot3isatk booleans matches 1 run scoreboard players operation lifesteal saves /= lifesteal slot3
execute if score ward slot6 matches 0 if score slot3bleeding booleaneffects matches 0 run execute if score lifesteal slot3 matches 1.. run execute if score slot3isatk booleans matches 1 run scoreboard players operation slot3 hp += lifesteal saves
execute if score ward slot6 matches 0 if score lifesteal slot3 matches 1.. if score slot3isatk booleans matches 1 at @e[name=slot3,type=armor_stand] run particle minecraft:composter ~ ~1 ~ 0.9 0.9 0.9 0.5 50
#slot 4
execute if score lifesteal slot4 matches 1.. run execute if score slot4isatk booleans matches 1 run scoreboard players operation lifesteal saves = atk slot4
execute if score lifesteal slot4 matches 1.. run execute if score slot4isatk booleans matches 1 run scoreboard players operation lifesteal saves += slot4 atkmodifiers
execute if score lifesteal slot4 matches 1.. run execute if score slot4isatk booleans matches 1 run scoreboard players operation lifesteal saves += marks slot6
execute if score lifesteal slot4 matches 1.. run execute if score slot4isatk booleans matches 1 run scoreboard players operation lifesteal saves /= atkmultiplier slot6
execute if score lifesteal slot4 matches 1.. run execute if score slot4isatk booleans matches 1 run scoreboard players operation lifesteal saves /= lifesteal slot4
execute if score ward slot6 matches 0 if score slot4bleeding booleaneffects matches 0 run execute if score lifesteal slot4 matches 1.. run execute if score slot4isatk booleans matches 1 run scoreboard players operation slot4 hp += lifesteal saves
execute if score ward slot6 matches 0 if score lifesteal slot4 matches 1.. if score slot4isatk booleans matches 1 at @e[name=slot4,type=armor_stand] run particle minecraft:composter ~ ~1 ~ 0.9 0.9 0.9 0.5 50


#lifesteal + splash
#slot 5
execute if score lifesteal slot1 matches 1.. run execute if score splash slot1 matches 1.. run execute if score slot1isatk booleans matches 1 run scoreboard players operation lifestealsplash saves = atk slot1
execute if score lifesteal slot1 matches 1.. run execute if score splash slot1 matches 1.. run execute if score slot1isatk booleans matches 1 run scoreboard players operation lifestealsplash saves += slot1 atkmodifiers
execute if score lifesteal slot1 matches 1.. run execute if score splash slot1 matches 1.. run execute if score slot1isatk booleans matches 1 run scoreboard players operation lifestealsplash saves /= splash slot1
execute if score lifesteal slot1 matches 1.. run execute if score splash slot1 matches 1.. run execute if score slot1isatk booleans matches 1 run scoreboard players operation lifestealsplash saves += marks slot5
execute if score lifesteal slot1 matches 1.. run execute if score splash slot1 matches 1.. run execute if score slot1isatk booleans matches 1 run scoreboard players operation lifestealsplash saves /= atkmultiplier slot5
execute if score lifesteal slot1 matches 1.. run execute if score splash slot1 matches 1.. run execute if score slot1isatk booleans matches 1 run scoreboard players operation lifestealsplash saves /= lifesteal slot1
execute if score slot5 hp matches 1.. run execute if score ward slot5 matches 0 run execute if score slot1bleeding booleaneffects matches 0 run execute if score lifesteal slot1 matches 1.. run execute if score splash slot1 matches 1.. run execute if score slot1isatk booleans matches 1 run scoreboard players operation slot1 hp += lifestealsplash saves
execute if score lifesteal slot1 matches 1.. run execute if score splash slot1 matches 1.. run execute if score slot1isatk booleans matches 1 run scoreboard players operation lifestealsplash saves = atk slot1
execute if score lifesteal slot1 matches 1.. run execute if score splash slot1 matches 1.. run execute if score slot1isatk booleans matches 1 run scoreboard players operation lifestealsplash saves += slot1 atkmodifiers
execute if score lifesteal slot1 matches 1.. run execute if score splash slot1 matches 1.. run execute if score slot1isatk booleans matches 1 run scoreboard players operation lifestealsplash saves /= splash slot1
execute if score lifesteal slot1 matches 1.. run execute if score splash slot1 matches 1.. run execute if score slot1isatk booleans matches 1 run scoreboard players operation lifestealsplash saves += marks slot7
execute if score lifesteal slot1 matches 1.. run execute if score splash slot1 matches 1.. run execute if score slot1isatk booleans matches 1 run scoreboard players operation lifestealsplash saves /= atkmultiplier slot7
execute if score lifesteal slot1 matches 1.. run execute if score splash slot1 matches 1.. run execute if score slot1isatk booleans matches 1 run scoreboard players operation lifestealsplash saves /= lifesteal slot1
execute if score slot7 hp matches 1.. run execute if score ward slot7 matches 0 run execute if score slot1bleeding booleaneffects matches 0 run execute if score lifesteal slot1 matches 1.. run execute if score splash slot1 matches 1.. run execute if score slot1isatk booleans matches 1 run scoreboard players operation slot1 hp += lifestealsplash saves
#slot 6
execute if score lifesteal slot2 matches 1.. run execute if score splash slot2 matches 1.. run execute if score slot2isatk booleans matches 1 run scoreboard players operation lifestealsplash saves = atk slot2
execute if score lifesteal slot2 matches 1.. run execute if score splash slot2 matches 1.. run execute if score slot2isatk booleans matches 1 run scoreboard players operation lifestealsplash saves += slot2 atkmodifiers
execute if score lifesteal slot2 matches 1.. run execute if score splash slot2 matches 1.. run execute if score slot2isatk booleans matches 1 run scoreboard players operation lifestealsplash saves /= splash slot2
execute if score lifesteal slot2 matches 1.. run execute if score splash slot2 matches 1.. run execute if score slot2isatk booleans matches 1 run scoreboard players operation lifestealsplash saves += marks slot5
execute if score lifesteal slot2 matches 1.. run execute if score splash slot2 matches 1.. run execute if score slot2isatk booleans matches 1 run scoreboard players operation lifestealsplash saves /= atkmultiplier slot5
execute if score lifesteal slot2 matches 1.. run execute if score splash slot2 matches 1.. run execute if score slot2isatk booleans matches 1 run scoreboard players operation lifestealsplash saves /= lifesteal slot2
execute if score slot5 hp matches 1.. run execute if score ward slot5 matches 0 run execute if score slot2bleeding booleaneffects matches 0 run execute if score lifesteal slot2 matches 1.. run execute if score splash slot2 matches 1.. run execute if score slot2isatk booleans matches 1 run scoreboard players operation slot2 hp += lifestealsplash saves
execute if score lifesteal slot2 matches 1.. run execute if score splash slot2 matches 1.. run execute if score slot2isatk booleans matches 1 run scoreboard players operation lifestealsplash saves = atk slot2
execute if score lifesteal slot2 matches 1.. run execute if score splash slot2 matches 1.. run execute if score slot2isatk booleans matches 1 run scoreboard players operation lifestealsplash saves += slot2 atkmodifiers
execute if score lifesteal slot2 matches 1.. run execute if score splash slot2 matches 1.. run execute if score slot2isatk booleans matches 1 run scoreboard players operation lifestealsplash saves /= splash slot2
execute if score lifesteal slot2 matches 1.. run execute if score splash slot2 matches 1.. run execute if score slot2isatk booleans matches 1 run scoreboard players operation lifestealsplash saves += marks slot7
execute if score lifesteal slot2 matches 1.. run execute if score splash slot2 matches 1.. run execute if score slot2isatk booleans matches 1 run scoreboard players operation lifestealsplash saves /= atkmultiplier slot7
execute if score lifesteal slot2 matches 1.. run execute if score splash slot2 matches 1.. run execute if score slot2isatk booleans matches 1 run scoreboard players operation lifestealsplash saves /= lifesteal slot2
execute if score slot7 hp matches 1.. run execute if score ward slot7 matches 0 run execute if score slot2bleeding booleaneffects matches 0 run execute if score lifesteal slot2 matches 1.. run execute if score splash slot2 matches 1.. run execute if score slot2isatk booleans matches 1 run scoreboard players operation slot2 hp += lifestealsplash saves
#slot 7
execute if score lifesteal slot3 matches 1.. run execute if score splash slot3 matches 1.. run execute if score slot3isatk booleans matches 1 run scoreboard players operation lifestealsplash saves = atk slot3
execute if score lifesteal slot3 matches 1.. run execute if score splash slot3 matches 1.. run execute if score slot3isatk booleans matches 1 run scoreboard players operation lifestealsplash saves += slot3 atkmodifiers
execute if score lifesteal slot3 matches 1.. run execute if score splash slot3 matches 1.. run execute if score slot3isatk booleans matches 1 run scoreboard players operation lifestealsplash saves /= splash slot3
execute if score lifesteal slot3 matches 1.. run execute if score splash slot3 matches 1.. run execute if score slot3isatk booleans matches 1 run scoreboard players operation lifestealsplash saves += marks slot5
execute if score lifesteal slot3 matches 1.. run execute if score splash slot3 matches 1.. run execute if score slot3isatk booleans matches 1 run scoreboard players operation lifestealsplash saves /= atkmultiplier slot5
execute if score lifesteal slot3 matches 1.. run execute if score splash slot3 matches 1.. run execute if score slot3isatk booleans matches 1 run scoreboard players operation lifestealsplash saves /= lifesteal slot3
execute if score slot5 hp matches 1.. run execute if score ward slot5 matches 0 run execute if score slot3bleeding booleaneffects matches 0 run execute if score lifesteal slot3 matches 1.. run execute if score splash slot3 matches 1.. run execute if score slot3isatk booleans matches 1 run scoreboard players operation slot3 hp += lifestealsplash saves
execute if score lifesteal slot3 matches 1.. run execute if score splash slot3 matches 1.. run execute if score slot3isatk booleans matches 1 run scoreboard players operation lifestealsplash saves = atk slot3
execute if score lifesteal slot3 matches 1.. run execute if score splash slot3 matches 1.. run execute if score slot3isatk booleans matches 1 run scoreboard players operation lifestealsplash saves += slot3 atkmodifiers
execute if score lifesteal slot3 matches 1.. run execute if score splash slot3 matches 1.. run execute if score slot3isatk booleans matches 1 run scoreboard players operation lifestealsplash saves /= splash slot3
execute if score lifesteal slot3 matches 1.. run execute if score splash slot3 matches 1.. run execute if score slot3isatk booleans matches 1 run scoreboard players operation lifestealsplash saves += marks slot7
execute if score lifesteal slot3 matches 1.. run execute if score splash slot3 matches 1.. run execute if score slot3isatk booleans matches 1 run scoreboard players operation lifestealsplash saves /= atkmultiplier slot7
execute if score lifesteal slot3 matches 1.. run execute if score splash slot3 matches 1.. run execute if score slot3isatk booleans matches 1 run scoreboard players operation lifestealsplash saves /= lifesteal slot3
execute if score slot7 hp matches 1.. run execute if score ward slot7 matches 0 run execute if score slot3bleeding booleaneffects matches 0 run execute if score lifesteal slot3 matches 1.. run execute if score splash slot3 matches 1.. run execute if score slot3isatk booleans matches 1 run scoreboard players operation slot3 hp += lifestealsplash saves
#slot 8
execute if score lifesteal slot4 matches 1.. run execute if score splash slot4 matches 1.. run execute if score slot4isatk booleans matches 1 run scoreboard players operation lifestealsplash saves = atk slot4
execute if score lifesteal slot4 matches 1.. run execute if score splash slot4 matches 1.. run execute if score slot4isatk booleans matches 1 run scoreboard players operation lifestealsplash saves += slot4 atkmodifiers
execute if score lifesteal slot4 matches 1.. run execute if score splash slot4 matches 1.. run execute if score slot4isatk booleans matches 1 run scoreboard players operation lifestealsplash saves /= splash slot4
execute if score lifesteal slot4 matches 1.. run execute if score splash slot4 matches 1.. run execute if score slot4isatk booleans matches 1 run scoreboard players operation lifestealsplash saves += marks slot5
execute if score lifesteal slot4 matches 1.. run execute if score splash slot4 matches 1.. run execute if score slot4isatk booleans matches 1 run scoreboard players operation lifestealsplash saves /= atkmultiplier slot5
execute if score lifesteal slot4 matches 1.. run execute if score splash slot4 matches 1.. run execute if score slot4isatk booleans matches 1 run scoreboard players operation lifestealsplash saves /= lifesteal slot4
execute if score slot5 hp matches 1.. run execute if score ward slot5 matches 0 run execute if score slot4bleeding booleaneffects matches 0 run execute if score lifesteal slot4 matches 1.. run execute if score splash slot4 matches 1.. run execute if score slot4isatk booleans matches 1 run scoreboard players operation slot4 hp += lifestealsplash saves
execute if score lifesteal slot4 matches 1.. run execute if score splash slot4 matches 1.. run execute if score slot4isatk booleans matches 1 run scoreboard players operation lifestealsplash saves = atk slot4
execute if score lifesteal slot4 matches 1.. run execute if score splash slot4 matches 1.. run execute if score slot4isatk booleans matches 1 run scoreboard players operation lifestealsplash saves += slot4 atkmodifiers
execute if score lifesteal slot4 matches 1.. run execute if score splash slot4 matches 1.. run execute if score slot4isatk booleans matches 1 run scoreboard players operation lifestealsplash saves /= splash slot4
execute if score lifesteal slot4 matches 1.. run execute if score splash slot4 matches 1.. run execute if score slot4isatk booleans matches 1 run scoreboard players operation lifestealsplash saves += marks slot7
execute if score lifesteal slot4 matches 1.. run execute if score splash slot4 matches 1.. run execute if score slot4isatk booleans matches 1 run scoreboard players operation lifestealsplash saves /= atkmultiplier slot7
execute if score lifesteal slot4 matches 1.. run execute if score splash slot4 matches 1.. run execute if score slot4isatk booleans matches 1 run scoreboard players operation lifestealsplash saves /= lifesteal slot4
execute if score slot7 hp matches 1.. run execute if score ward slot7 matches 0 run execute if score slot4bleeding booleaneffects matches 0 run execute if score lifesteal slot4 matches 1.. run execute if score splash slot4 matches 1.. run execute if score slot4isatk booleans matches 1 run scoreboard players operation slot4 hp += lifestealsplash saves

#Special Cases
execute if score ward slot6 matches ..0 run execute if score slot1isatk booleans matches 1 if score character# slot1 matches 29 if score slot6 hp <= ripperHpBleed abilityStats run scoreboard players operation slot6bleeding booleaneffects = ripperBleed abilityStats
execute if score ward slot6 matches ..0 run execute if score slot2isatk booleans matches 1 if score character# slot2 matches 29 if score slot6 hp <= ripperHpBleed abilityStats run scoreboard players operation slot6bleeding booleaneffects = ripperBleed abilityStats
execute if score ward slot6 matches ..0 run execute if score slot3isatk booleans matches 1 if score character# slot3 matches 29 if score slot6 hp <= ripperHpBleed abilityStats run scoreboard players operation slot6bleeding booleaneffects = ripperBleed abilityStats
execute if score ward slot6 matches ..0 run execute if score slot1isatk booleans matches 1 if score character# slot1 matches -8 run scoreboard players operation slot6Disease disease += zombieDisease abilityStats
execute if score ward slot6 matches ..0 run execute if score slot2isatk booleans matches 1 if score character# slot2 matches -8 run scoreboard players operation slot6Disease disease += zombieDisease abilityStats
execute if score ward slot6 matches ..0 run execute if score slot3isatk booleans matches 1 if score character# slot3 matches -8 run scoreboard players operation slot6Disease disease += zombieDisease abilityStats
execute if score ward slot6 matches ..0 run execute if score slot4isatk booleans matches 1 if score character# slot4 matches -8 run scoreboard players operation slot6Disease disease += zombieDisease abilityStats

#damage + shield reset (all)
execute if score shield slot6 matches ..0 if score ward slot6 matches 0 run scoreboard players operation slot6 hp += shield slot6
execute if score ward slot6 matches 1.. run function ch:wardslot6
execute if score shield slot6 matches ..0 run scoreboard players set shield slot6 0
execute at @e[name=slot6,type=armor_stand] run particle minecraft:crit ~ ~1 ~ 0.9 0.9 0.9 0.5 100

#double target + turn end trigger
#regular attack
execute if score slot1isatk booleans matches 1 run execute if score doubleatk slot1 matches 0 run function ch:turnend
execute if score slot2isatk booleans matches 1 run execute if score doubleatk slot2 matches 0 run function ch:turnend
execute if score slot3isatk booleans matches 1 run execute if score doubleatk slot3 matches 0 run function ch:turnend
execute if score slot4isatk booleans matches 1 run execute if score doubleatk slot4 matches 0 run function ch:turnend
#double target (2nd hit)
execute if score slot1isatk booleans matches 1 run execute if score doubleatk slot1 matches 1 run execute if score useddoubleatk slot1 matches 1 run function ch:turnend
execute if score slot2isatk booleans matches 1 run execute if score doubleatk slot2 matches 1 run execute if score useddoubleatk slot2 matches 1 run function ch:turnend
execute if score slot3isatk booleans matches 1 run execute if score doubleatk slot3 matches 1 run execute if score useddoubleatk slot3 matches 1 run function ch:turnend
execute if score slot4isatk booleans matches 1 run execute if score doubleatk slot4 matches 1 run execute if score useddoubleatk slot4 matches 1 run function ch:turnend
#double target (1st hit)
execute if score slot1isatk booleans matches 1 run execute if score doubleatk slot1 matches 1 run execute if score useddoubleatk slot1 matches 0 run function ch:basicattackstartp1
execute if score slot1isatk booleans matches 1 run execute if score doubleatk slot1 matches 1 run execute if score useddoubleatk slot1 matches 0 run scoreboard players set useddoubleatk slot1 1
execute if score slot2isatk booleans matches 1 run execute if score doubleatk slot2 matches 1 run execute if score useddoubleatk slot2 matches 0 run function ch:basicattackstartp1
execute if score slot2isatk booleans matches 1 run execute if score doubleatk slot2 matches 1 run execute if score useddoubleatk slot2 matches 0 run scoreboard players set useddoubleatk slot2 1
execute if score slot3isatk booleans matches 1 run execute if score doubleatk slot3 matches 1 run execute if score useddoubleatk slot3 matches 0 run function ch:basicattackstartp1
execute if score slot3isatk booleans matches 1 run execute if score doubleatk slot3 matches 1 run execute if score useddoubleatk slot3 matches 0 run scoreboard players set useddoubleatk slot3 1
execute if score slot4isatk booleans matches 1 run execute if score doubleatk slot4 matches 1 run execute if score useddoubleatk slot4 matches 0 run function ch:basicattackstartp1
execute if score slot4isatk booleans matches 1 run execute if score doubleatk slot4 matches 1 run execute if score useddoubleatk slot4 matches 0 run scoreboard players set useddoubleatk slot4 1
