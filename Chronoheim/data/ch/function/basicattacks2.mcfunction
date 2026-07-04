#basic attack functions
tellraw @a[tag=game1] ["",{"selector":"@p[tag=p2]"}," attacked Slot 2"]
clear @a[tag=p2]
#slot 5
execute if score slot5isatk booleans matches 1 run scoreboard players operation atk1 saves = atk slot5
execute if score slot5isatk booleans matches 1 run scoreboard players operation atk1 saves += slot5 atkmodifiers
execute if score slot5isatk booleans matches 1 run scoreboard players operation atk1 saves += marks slot2
execute if score slot5isatk booleans matches 1 if score character# slot5 matches 30 run scoreboard players operation atk1 saves += dominoLeaderHit heroattack
execute if score slot5isatk booleans matches 1 run scoreboard players operation atk1 saves /= atkmultiplier slot2
execute if score slot5isatk booleans matches 1 run scoreboard players operation shield slot2 -= atk1 saves
#slot 6
execute if score slot6isatk booleans matches 1 run scoreboard players operation atk1 saves = atk slot6
execute if score slot6isatk booleans matches 1 run scoreboard players operation atk1 saves += slot6 atkmodifiers
execute if score slot6isatk booleans matches 1 run scoreboard players operation atk1 saves += marks slot2
execute if score slot6isatk booleans matches 1 if score character# slot6 matches 36 run execute unless score durationSlot5-2 fear matches 1.. unless score durationSlot6-2 fear matches 1.. unless score durationSlot7-2 fear matches 1.. unless score durationSlot8-2 fear matches 1.. run scoreboard players operation atk1 saves -= barleyLeader abilityStats
execute if score slot6isatk booleans matches 1 if score character# slot6 matches 30 run scoreboard players operation atk1 saves += dominoLeaderHit heroattack
execute if score slot6isatk booleans matches 1 run scoreboard players operation atk1 saves /= atkmultiplier slot2
execute if score slot6isatk booleans matches 1 run scoreboard players operation shield slot2 -= atk1 saves
#slot 7
execute if score slot7isatk booleans matches 1 run scoreboard players operation atk1 saves = atk slot7
execute if score slot7isatk booleans matches 1 run scoreboard players operation atk1 saves += marks slot2
execute if score slot7isatk booleans matches 1 run scoreboard players operation atk1 saves += slot7 atkmodifiers
execute if score slot7isatk booleans matches 1 if score character# slot7 matches 30 run scoreboard players operation atk1 saves += dominoLeaderHit heroattack
execute if score slot7isatk booleans matches 1 run scoreboard players operation atk1 saves /= atkmultiplier slot2
execute if score slot7isatk booleans matches 1 run scoreboard players operation shield slot2 -= atk1 saves
#slot 8
execute if score slot8isatk booleans matches 1 run scoreboard players operation atk1 saves = atk slot8
execute if score slot8isatk booleans matches 1 run scoreboard players operation atk1 saves += marks slot2
execute if score slot8isatk booleans matches 1 run scoreboard players operation atk1 saves += slot8 atkmodifiers
execute if score slot8isatk booleans matches 1 run scoreboard players operation atk1 saves /= atkmultiplier slot2
execute if score slot8isatk booleans matches 1 run scoreboard players operation shield slot2 -= atk1 saves



#splash
#slot5
execute if score splash slot5 matches 1.. run execute if score slot5isatk booleans matches 1 run scoreboard players operation splashdamage1 saves = atk slot5
execute if score splash slot5 matches 1.. run execute if score slot5isatk booleans matches 1 run scoreboard players operation splashdamage1 saves += slot5 atkmodifiers
execute if score splash slot5 matches 1.. run execute if score slot5isatk booleans matches 1 run scoreboard players operation splashdamage1 saves /= splash slot5
execute if score splash slot5 matches 1.. run execute if score slot5isatk booleans matches 1 run scoreboard players operation splashdamage1 saves += marks slot1
execute if score splash slot5 matches 1.. run execute if score slot5isatk booleans matches 1 run scoreboard players operation splashdamage1 saves /= atkmultiplier slot1
execute if score ward slot1 matches 0 run execute if score splash slot5 matches 1.. run execute if score slot5isatk booleans matches 1 run scoreboard players operation shield slot1 -= splashdamage1 saves
execute if score ward slot1 matches 1.. run execute if score splash slot5 matches 1.. run execute if score slot5isatk booleans matches 1 run function ch:wardslot1
execute if score splash slot5 matches 1.. if score slot5isatk booleans matches 1 at @e[name=slot1,type=armor_stand] run particle minecraft:crit ~ ~1 ~ 0.9 0.9 0.9 0.5 50
execute if score splash slot5 matches 1.. run execute if score slot5isatk booleans matches 1 run scoreboard players operation splashdamage1 saves = atk slot5
execute if score splash slot5 matches 1.. run execute if score slot5isatk booleans matches 1 run scoreboard players operation splashdamage1 saves += slot5 atkmodifiers
execute if score splash slot5 matches 1.. run execute if score slot5isatk booleans matches 1 run scoreboard players operation splashdamage1 saves /= splash slot5
execute if score splash slot5 matches 1.. run execute if score slot5isatk booleans matches 1 run scoreboard players operation splashdamage1 saves += marks slot3
execute if score splash slot5 matches 1.. run execute if score slot5isatk booleans matches 1 run scoreboard players operation splashdamage1 saves /= atkmultiplier slot3
execute if score ward slot3 matches 0 run execute if score splash slot5 matches 1.. run execute if score slot5isatk booleans matches 1 run scoreboard players operation shield slot3 -= splashdamage1 saves
execute if score ward slot3 matches 1.. run execute if score splash slot5 matches 1.. run execute if score slot5isatk booleans matches 1 run function ch:wardslot3
execute if score splash slot5 matches 1.. if score slot5isatk booleans matches 1 at @e[name=slot3,type=armor_stand] run particle minecraft:crit ~ ~1 ~ 0.9 0.9 0.9 0.5 50

#slot6
execute if score splash slot6 matches 1.. run execute if score slot6isatk booleans matches 1 run scoreboard players operation splashdamage1 saves = atk slot6
execute if score splash slot6 matches 1.. run execute if score slot6isatk booleans matches 1 run scoreboard players operation splashdamage1 saves += slot6 atkmodifiers
execute if score splash slot6 matches 1.. run execute if score slot6isatk booleans matches 1 run scoreboard players operation splashdamage1 saves /= splash slot6
execute if score splash slot6 matches 1.. run execute if score slot6isatk booleans matches 1 run scoreboard players operation splashdamage1 saves += marks slot1
execute if score splash slot6 matches 1.. run execute if score slot6isatk booleans matches 1 run scoreboard players operation splashdamage1 saves /= atkmultiplier slot1
execute if score ward slot1 matches 0 run execute if score splash slot6 matches 1.. run execute if score slot6isatk booleans matches 1 run scoreboard players operation shield slot1 -= splashdamage1 saves
execute if score ward slot1 matches 1.. run execute if score splash slot6 matches 1.. run execute if score slot6isatk booleans matches 1 run function ch:wardslot1
execute if score splash slot6 matches 1.. if score slot6isatk booleans matches 1 at @e[name=slot1,type=armor_stand] run particle minecraft:crit ~ ~1 ~ 0.9 0.9 0.9 0.5 50
execute if score splash slot6 matches 1.. run execute if score slot6isatk booleans matches 1 run scoreboard players operation splashdamage1 saves = atk slot6
execute if score splash slot6 matches 1.. run execute if score slot6isatk booleans matches 1 run scoreboard players operation splashdamage1 saves += slot6 atkmodifiers
execute if score splash slot6 matches 1.. run execute if score slot6isatk booleans matches 1 run scoreboard players operation splashdamage1 saves /= splash slot6
execute if score splash slot6 matches 1.. run execute if score slot6isatk booleans matches 1 run scoreboard players operation splashdamage1 saves += marks slot3
execute if score splash slot6 matches 1.. run execute if score slot6isatk booleans matches 1 run scoreboard players operation splashdamage1 saves /= atkmultiplier slot3
execute if score ward slot3 matches 0 run execute if score splash slot6 matches 1.. run execute if score slot6isatk booleans matches 1 run scoreboard players operation shield slot3 -= splashdamage1 saves
execute if score ward slot3 matches 1.. run execute if score splash slot6 matches 1.. run execute if score slot6isatk booleans matches 1 run function ch:wardslot3
execute if score splash slot6 matches 1.. if score slot6isatk booleans matches 1 at @e[name=slot3,type=armor_stand] run particle minecraft:crit ~ ~1 ~ 0.9 0.9 0.9 0.5 50
#slot7
execute if score splash slot7 matches 1.. run execute if score slot7isatk booleans matches 1 run scoreboard players operation splashdamage1 saves = atk slot7
execute if score splash slot7 matches 1.. run execute if score slot7isatk booleans matches 1 run scoreboard players operation splashdamage1 saves += slot7 atkmodifiers
execute if score splash slot7 matches 1.. run execute if score slot7isatk booleans matches 1 run scoreboard players operation splashdamage1 saves /= splash slot7
execute if score splash slot7 matches 1.. run execute if score slot7isatk booleans matches 1 run scoreboard players operation splashdamage1 saves += marks slot1
execute if score splash slot7 matches 1.. run execute if score slot7isatk booleans matches 1 run scoreboard players operation splashdamage1 saves /= atkmultiplier slot1
execute if score ward slot1 matches 0 run execute if score splash slot7 matches 1.. run execute if score slot7isatk booleans matches 1 run scoreboard players operation shield slot1 -= splashdamage1 saves
execute if score ward slot1 matches 1.. run execute if score splash slot7 matches 1.. run execute if score slot7isatk booleans matches 1 run function ch:wardslot1
execute if score splash slot7 matches 1.. if score slot7isatk booleans matches 1 at @e[name=slot1,type=armor_stand] run particle minecraft:crit ~ ~1 ~ 0.9 0.9 0.9 0.5 50
execute if score splash slot7 matches 1.. run execute if score slot7isatk booleans matches 1 run scoreboard players operation splashdamage1 saves = atk slot7
execute if score splash slot7 matches 1.. run execute if score slot7isatk booleans matches 1 run scoreboard players operation splashdamage1 saves += slot7 atkmodifiers
execute if score splash slot7 matches 1.. run execute if score slot7isatk booleans matches 1 run scoreboard players operation splashdamage1 saves /= splash slot7
execute if score splash slot7 matches 1.. run execute if score slot7isatk booleans matches 1 run scoreboard players operation splashdamage1 saves += marks slot3
execute if score splash slot7 matches 1.. run execute if score slot7isatk booleans matches 1 run scoreboard players operation splashdamage1 saves /= atkmultiplier slot3
execute if score ward slot3 matches 0 run execute if score splash slot7 matches 1.. run execute if score slot7isatk booleans matches 1 run scoreboard players operation shield slot3 -= splashdamage1 saves
execute if score ward slot3 matches 1.. run execute if score splash slot7 matches 1.. run execute if score slot7isatk booleans matches 1 run function ch:wardslot3
execute if score splash slot7 matches 1.. if score slot7isatk booleans matches 1 at @e[name=slot3,type=armor_stand] run particle minecraft:crit ~ ~1 ~ 0.9 0.9 0.9 0.5 50
#slot8
execute if score splash slot8 matches 1.. run execute if score slot8isatk booleans matches 1 run scoreboard players operation splashdamage1 saves = atk slot8
execute if score splash slot8 matches 1.. run execute if score slot8isatk booleans matches 1 run scoreboard players operation splashdamage1 saves += slot8 atkmodifiers
execute if score splash slot8 matches 1.. run execute if score slot8isatk booleans matches 1 run scoreboard players operation splashdamage1 saves /= splash slot8
execute if score splash slot8 matches 1.. run execute if score slot8isatk booleans matches 1 run scoreboard players operation splashdamage1 saves += marks slot1
execute if score splash slot8 matches 1.. run execute if score slot8isatk booleans matches 1 run scoreboard players operation splashdamage1 saves /= atkmultiplier slot1
execute if score ward slot1 matches 0 run execute if score splash slot8 matches 1.. run execute if score slot8isatk booleans matches 1 run scoreboard players operation shield slot1 -= splashdamage1 saves
execute if score ward slot1 matches 1.. run execute if score splash slot8 matches 1.. run execute if score slot8isatk booleans matches 1 run function ch:wardslot1
execute if score splash slot8 matches 1.. if score slot8isatk booleans matches 1 at @e[name=slot1,type=armor_stand] run particle minecraft:crit ~ ~1 ~ 0.9 0.9 0.9 0.5 50
execute if score splash slot8 matches 1.. run execute if score slot8isatk booleans matches 1 run scoreboard players operation splashdamage1 saves = atk slot8
execute if score splash slot8 matches 1.. run execute if score slot8isatk booleans matches 1 run scoreboard players operation splashdamage1 saves += slot8 atkmodifiers
execute if score splash slot8 matches 1.. run execute if score slot8isatk booleans matches 1 run scoreboard players operation splashdamage1 saves /= splash slot8
execute if score splash slot8 matches 1.. run execute if score slot8isatk booleans matches 1 run scoreboard players operation splashdamage1 saves += marks slot3
execute if score splash slot8 matches 1.. run execute if score slot8isatk booleans matches 1 run scoreboard players operation splashdamage1 saves /= atkmultiplier slot3
execute if score ward slot3 matches 0 run execute if score splash slot8 matches 1.. run execute if score slot8isatk booleans matches 1 run scoreboard players operation shield slot3 -= splashdamage1 saves
execute if score ward slot3 matches 1.. run execute if score splash slot8 matches 1.. run execute if score slot8isatk booleans matches 1 run function ch:wardslot3
execute if score splash slot8 matches 1.. if score slot8isatk booleans matches 1 at @e[name=slot3,type=armor_stand] run particle minecraft:crit ~ ~1 ~ 0.9 0.9 0.9 0.5 50


#lifesteal
#slot 5
execute if score lifesteal slot5 matches 1.. run execute if score slot5isatk booleans matches 1 run scoreboard players operation lifesteal1 saves = atk slot5
execute if score lifesteal slot5 matches 1.. run execute if score slot5isatk booleans matches 1 run scoreboard players operation lifesteal1 saves += slot5 atkmodifiers
execute if score lifesteal slot5 matches 1.. run execute if score slot5isatk booleans matches 1 run scoreboard players operation lifesteal1 saves += marks slot2
execute if score lifesteal slot5 matches 1.. if score slot5isatk booleans matches 1 if score character# slot5 matches 30 run scoreboard players operation lifesteal1 saves += dominoLeaderHit heroattack
execute if score lifesteal slot5 matches 1.. run execute if score slot5isatk booleans matches 1 run scoreboard players operation lifesteal1 saves /= atkmultiplier slot2
execute if score lifesteal slot5 matches 1.. run execute if score slot5isatk booleans matches 1 run scoreboard players operation lifesteal1 saves /= lifesteal slot5
execute if score ward slot2 matches 0 if score slot5bleeding booleaneffects matches 0 run execute if score lifesteal slot5 matches 1.. run execute if score slot5isatk booleans matches 1 run scoreboard players operation slot5 hp += lifesteal1 saves
execute if score ward slot2 matches 0 if score lifesteal slot5 matches 1.. if score slot5isatk booleans matches 1 at @e[name=slot5,type=armor_stand] run particle minecraft:composter ~ ~1 ~ 0.9 0.9 0.9 0.5 50
#slot 6
execute if score lifesteal slot6 matches 1.. run execute if score slot6isatk booleans matches 1 run scoreboard players operation lifesteal1 saves = atk slot6
execute if score lifesteal slot6 matches 1.. run execute if score slot6isatk booleans matches 1 run scoreboard players operation lifesteal1 saves += slot6 atkmodifiers
execute if score lifesteal slot6 matches 1.. run execute if score slot6isatk booleans matches 1 run scoreboard players operation lifesteal1 saves += marks slot2
execute if score lifesteal slot6 matches 1.. if score slot6isatk booleans matches 1 if score character# slot6 matches 30 run scoreboard players operation lifesteal1 saves += dominoLeaderHit heroattack
execute if score lifesteal slot6 matches 1.. run execute if score slot6isatk booleans matches 1 run scoreboard players operation lifesteal1 saves /= atkmultiplier slot2
execute if score lifesteal slot6 matches 1.. run execute if score slot6isatk booleans matches 1 run scoreboard players operation lifesteal1 saves /= lifesteal slot6
execute if score ward slot2 matches 0 if score slot6bleeding booleaneffects matches 0 run execute if score lifesteal slot6 matches 1.. run execute if score slot6isatk booleans matches 1 run scoreboard players operation slot6 hp += lifesteal1 saves
execute if score ward slot2 matches 0 if score lifesteal slot6 matches 1.. if score slot6isatk booleans matches 1 at @e[name=slot6,type=armor_stand] run particle minecraft:composter ~ ~1 ~ 0.9 0.9 0.9 0.5 50
#slot 7
execute if score lifesteal slot7 matches 1.. run execute if score slot7isatk booleans matches 1 run scoreboard players operation lifesteal1 saves = atk slot7
execute if score lifesteal slot7 matches 1.. run execute if score slot7isatk booleans matches 1 run scoreboard players operation lifesteal1 saves += slot7 atkmodifiers
execute if score lifesteal slot7 matches 1.. run execute if score slot7isatk booleans matches 1 run scoreboard players operation lifesteal1 saves += marks slot2
execute if score lifesteal slot7 matches 1.. if score slot7isatk booleans matches 1 if score character# slot7 matches 30 run scoreboard players operation lifesteal1 saves += dominoLeaderHit heroattack
execute if score lifesteal slot7 matches 1.. run execute if score slot7isatk booleans matches 1 run scoreboard players operation lifesteal1 saves /= atkmultiplier slot2
execute if score lifesteal slot7 matches 1.. run execute if score slot7isatk booleans matches 1 run scoreboard players operation lifesteal1 saves /= lifesteal slot7
execute if score ward slot2 matches 0 if score slot7bleeding booleaneffects matches 0 run execute if score lifesteal slot7 matches 1.. run execute if score slot7isatk booleans matches 1 run scoreboard players operation slot7 hp += lifesteal1 saves
execute if score ward slot2 matches 0 if score lifesteal slot7 matches 1.. if score slot7isatk booleans matches 1 at @e[name=slot7,type=armor_stand] run particle minecraft:composter ~ ~1 ~ 0.9 0.9 0.9 0.5 50
#slot 8
execute if score lifesteal slot8 matches 1.. run execute if score slot8isatk booleans matches 1 run scoreboard players operation lifesteal1 saves = atk slot8
execute if score lifesteal slot8 matches 1.. run execute if score slot8isatk booleans matches 1 run scoreboard players operation lifesteal1 saves += slot8 atkmodifiers
execute if score lifesteal slot8 matches 1.. run execute if score slot8isatk booleans matches 1 run scoreboard players operation lifesteal1 saves += marks slot2
execute if score lifesteal slot5 matches 1.. if score slot5isatk booleans matches 1 if score character# slot5 matches 30 run scoreboard players operation lifesteal1 saves += dominoLeaderHit heroattack
execute if score lifesteal slot8 matches 1.. run execute if score slot8isatk booleans matches 1 run scoreboard players operation lifesteal1 saves /= atkmultiplier slot2
execute if score lifesteal slot8 matches 1.. run execute if score slot8isatk booleans matches 1 run scoreboard players operation lifesteal1 saves /= lifesteal slot8
execute if score ward slot2 matches 0 if score slot8bleeding booleaneffects matches 0 run execute if score lifesteal slot8 matches 1.. run execute if score slot8isatk booleans matches 1 run scoreboard players operation slot8 hp += lifesteal1 saves
execute if score ward slot2 matches 0 if score lifesteal slot8 matches 1.. if score slot8isatk booleans matches 1 at @e[name=slot8,type=armor_stand] run particle minecraft:composter ~ ~1 ~ 0.9 0.9 0.9 0.5 50

#lifesteal + splash
#slot 5
execute if score lifesteal slot5 matches 1.. run execute if score splash slot5 matches 1.. run execute if score slot5isatk booleans matches 1 run scoreboard players operation lifestealsplash1 saves = atk slot5
execute if score lifesteal slot5 matches 1.. run execute if score splash slot5 matches 1.. run execute if score slot5isatk booleans matches 1 run scoreboard players operation lifestealsplash1 saves += slot5 atkmodifiers
execute if score lifesteal slot5 matches 1.. run execute if score splash slot5 matches 1.. run execute if score slot5isatk booleans matches 1 run scoreboard players operation lifestealsplash1 saves /= splash slot5
execute if score lifesteal slot5 matches 1.. run execute if score splash slot5 matches 1.. run execute if score slot5isatk booleans matches 1 run scoreboard players operation lifestealsplash1 saves += marks slot1
execute if score lifesteal slot5 matches 1.. run execute if score splash slot5 matches 1.. run execute if score slot5isatk booleans matches 1 run scoreboard players operation lifestealsplash1 saves /= atkmultiplier slot1
execute if score lifesteal slot5 matches 1.. run execute if score splash slot5 matches 1.. run execute if score slot5isatk booleans matches 1 run scoreboard players operation lifestealsplash1 saves /= lifesteal slot5
execute if score slot1 hp matches 1.. run execute if score ward slot1 matches 0 run execute if score slot5bleeding booleaneffects matches 0 run execute if score lifesteal slot5 matches 1.. run execute if score splash slot5 matches 1.. run execute if score slot5isatk booleans matches 1 run scoreboard players operation slot5 hp += lifestealsplash1 saves
execute if score lifesteal slot5 matches 1.. run execute if score splash slot5 matches 1.. run execute if score slot5isatk booleans matches 1 run scoreboard players operation lifestealsplash1 saves = atk slot5
execute if score lifesteal slot5 matches 1.. run execute if score splash slot5 matches 1.. run execute if score slot5isatk booleans matches 1 run scoreboard players operation lifestealsplash1 saves += slot5 atkmodifiers
execute if score lifesteal slot5 matches 1.. run execute if score splash slot5 matches 1.. run execute if score slot5isatk booleans matches 1 run scoreboard players operation lifestealsplash1 saves /= splash slot5
execute if score lifesteal slot5 matches 1.. run execute if score splash slot5 matches 1.. run execute if score slot5isatk booleans matches 1 run scoreboard players operation lifestealsplash1 saves += marks slot3
execute if score lifesteal slot5 matches 1.. run execute if score splash slot5 matches 1.. run execute if score slot5isatk booleans matches 1 run scoreboard players operation lifestealsplash1 saves /= atkmultiplier slot3
execute if score lifesteal slot5 matches 1.. run execute if score splash slot5 matches 1.. run execute if score slot5isatk booleans matches 1 run scoreboard players operation lifestealsplash1 saves /= lifesteal slot5
execute if score slot3 hp matches 1.. run execute if score ward slot3 matches 0 run execute if score slot5bleeding booleaneffects matches 0 run execute if score lifesteal slot5 matches 1.. run execute if score splash slot5 matches 1.. run execute if score slot5isatk booleans matches 1 run scoreboard players operation slot5 hp += lifestealsplash1 saves
#slot 6
execute if score lifesteal slot6 matches 1.. run execute if score splash slot6 matches 1.. run execute if score slot6isatk booleans matches 1 run scoreboard players operation lifestealsplash1 saves = atk slot6
execute if score lifesteal slot6 matches 1.. run execute if score splash slot6 matches 1.. run execute if score slot6isatk booleans matches 1 run scoreboard players operation lifestealsplash1 saves += slot6 atkmodifiers
execute if score lifesteal slot6 matches 1.. run execute if score splash slot6 matches 1.. run execute if score slot6isatk booleans matches 1 run scoreboard players operation lifestealsplash1 saves /= splash slot6
execute if score lifesteal slot6 matches 1.. run execute if score splash slot6 matches 1.. run execute if score slot6isatk booleans matches 1 run scoreboard players operation lifestealsplash1 saves += marks slot1
execute if score lifesteal slot6 matches 1.. run execute if score splash slot6 matches 1.. run execute if score slot6isatk booleans matches 1 run scoreboard players operation lifestealsplash1 saves /= atkmultiplier slot1
execute if score lifesteal slot6 matches 1.. run execute if score splash slot6 matches 1.. run execute if score slot6isatk booleans matches 1 run scoreboard players operation lifestealsplash1 saves /= lifesteal slot6
execute if score slot1 hp matches 1.. run execute if score ward slot1 matches 0 run execute if score slot6bleeding booleaneffects matches 0 run execute if score lifesteal slot6 matches 1.. run execute if score splash slot6 matches 1.. run execute if score slot6isatk booleans matches 1 run scoreboard players operation slot6 hp += lifestealsplash1 saves
execute if score lifesteal slot6 matches 1.. run execute if score splash slot6 matches 1.. run execute if score slot6isatk booleans matches 1 run scoreboard players operation lifestealsplash1 saves = atk slot6
execute if score lifesteal slot6 matches 1.. run execute if score splash slot6 matches 1.. run execute if score slot6isatk booleans matches 1 run scoreboard players operation lifestealsplash1 saves += slot6 atkmodifiers
execute if score lifesteal slot6 matches 1.. run execute if score splash slot6 matches 1.. run execute if score slot6isatk booleans matches 1 run scoreboard players operation lifestealsplash1 saves /= splash slot6
execute if score lifesteal slot6 matches 1.. run execute if score splash slot6 matches 1.. run execute if score slot6isatk booleans matches 1 run scoreboard players operation lifestealsplash1 saves += marks slot3
execute if score lifesteal slot6 matches 1.. run execute if score splash slot6 matches 1.. run execute if score slot6isatk booleans matches 1 run scoreboard players operation lifestealsplash1 saves /= atkmultiplier slot3
execute if score lifesteal slot6 matches 1.. run execute if score splash slot6 matches 1.. run execute if score slot6isatk booleans matches 1 run scoreboard players operation lifestealsplash1 saves /= lifesteal slot6
execute if score slot3 hp matches 1.. run execute if score ward slot3 matches 0 run execute if score slot6bleeding booleaneffects matches 0 run execute if score lifesteal slot6 matches 1.. run execute if score splash slot6 matches 1.. run execute if score slot6isatk booleans matches 1 run scoreboard players operation slot6 hp += lifestealsplash1 saves
#slot 7
execute if score lifesteal slot7 matches 1.. run execute if score splash slot7 matches 1.. run execute if score slot7isatk booleans matches 1 run scoreboard players operation lifestealsplash1 saves = atk slot7
execute if score lifesteal slot7 matches 1.. run execute if score splash slot7 matches 1.. run execute if score slot7isatk booleans matches 1 run scoreboard players operation lifestealsplash1 saves += slot7 atkmodifiers
execute if score lifesteal slot7 matches 1.. run execute if score splash slot7 matches 1.. run execute if score slot7isatk booleans matches 1 run scoreboard players operation lifestealsplash1 saves /= splash slot7
execute if score lifesteal slot7 matches 1.. run execute if score splash slot7 matches 1.. run execute if score slot7isatk booleans matches 1 run scoreboard players operation lifestealsplash1 saves += marks slot1
execute if score lifesteal slot7 matches 1.. run execute if score splash slot7 matches 1.. run execute if score slot7isatk booleans matches 1 run scoreboard players operation lifestealsplash1 saves /= atkmultiplier slot1
execute if score lifesteal slot7 matches 1.. run execute if score splash slot7 matches 1.. run execute if score slot7isatk booleans matches 1 run scoreboard players operation lifestealsplash1 saves /= lifesteal slot7
execute if score slot1 hp matches 1.. run execute if score ward slot1 matches 0 run execute if score slot7bleeding booleaneffects matches 0 run execute if score lifesteal slot7 matches 1.. run execute if score splash slot7 matches 1.. run execute if score slot7isatk booleans matches 1 run scoreboard players operation slot7 hp += lifestealsplash1 saves
execute if score lifesteal slot7 matches 1.. run execute if score splash slot7 matches 1.. run execute if score slot7isatk booleans matches 1 run scoreboard players operation lifestealsplash1 saves = atk slot7
execute if score lifesteal slot7 matches 1.. run execute if score splash slot7 matches 1.. run execute if score slot7isatk booleans matches 1 run scoreboard players operation lifestealsplash1 saves += slot7 atkmodifiers
execute if score lifesteal slot7 matches 1.. run execute if score splash slot7 matches 1.. run execute if score slot7isatk booleans matches 1 run scoreboard players operation lifestealsplash1 saves /= splash slot7
execute if score lifesteal slot7 matches 1.. run execute if score splash slot7 matches 1.. run execute if score slot7isatk booleans matches 1 run scoreboard players operation lifestealsplash1 saves += marks slot3
execute if score lifesteal slot7 matches 1.. run execute if score splash slot7 matches 1.. run execute if score slot7isatk booleans matches 1 run scoreboard players operation lifestealsplash1 saves /= atkmultiplier slot3
execute if score lifesteal slot7 matches 1.. run execute if score splash slot7 matches 1.. run execute if score slot7isatk booleans matches 1 run scoreboard players operation lifestealsplash1 saves /= lifesteal slot7
execute if score slot3 hp matches 1.. run execute if score ward slot3 matches 0 run execute if score slot7bleeding booleaneffects matches 0 run execute if score lifesteal slot7 matches 1.. run execute if score splash slot7 matches 1.. run execute if score slot7isatk booleans matches 1 run scoreboard players operation slot7 hp += lifestealsplash1 saves
#slot 8
execute if score lifesteal slot8 matches 1.. run execute if score splash slot8 matches 1.. run execute if score slot8isatk booleans matches 1 run scoreboard players operation lifestealsplash1 saves = atk slot8
execute if score lifesteal slot8 matches 1.. run execute if score splash slot8 matches 1.. run execute if score slot8isatk booleans matches 1 run scoreboard players operation lifestealsplash1 saves += slot8 atkmodifiers
execute if score lifesteal slot8 matches 1.. run execute if score splash slot8 matches 1.. run execute if score slot8isatk booleans matches 1 run scoreboard players operation lifestealsplash1 saves /= splash slot8
execute if score lifesteal slot8 matches 1.. run execute if score splash slot8 matches 1.. run execute if score slot8isatk booleans matches 1 run scoreboard players operation lifestealsplash1 saves += marks slot1
execute if score lifesteal slot8 matches 1.. run execute if score splash slot8 matches 1.. run execute if score slot8isatk booleans matches 1 run scoreboard players operation lifestealsplash1 saves /= atkmultiplier slot1
execute if score lifesteal slot8 matches 1.. run execute if score splash slot8 matches 1.. run execute if score slot8isatk booleans matches 1 run scoreboard players operation lifestealsplash1 saves /= lifesteal slot8
execute if score slot1 hp matches 1.. run execute if score ward slot1 matches 0 run execute if score slot8bleeding booleaneffects matches 0 run execute if score lifesteal slot8 matches 1.. run execute if score splash slot8 matches 1.. run execute if score slot8isatk booleans matches 1 run scoreboard players operation slot8 hp += lifestealsplash1 saves
execute if score lifesteal slot8 matches 1.. run execute if score splash slot8 matches 1.. run execute if score slot8isatk booleans matches 1 run scoreboard players operation lifestealsplash1 saves = atk slot8
execute if score lifesteal slot8 matches 1.. run execute if score splash slot8 matches 1.. run execute if score slot8isatk booleans matches 1 run scoreboard players operation lifestealsplash1 saves += slot8 atkmodifiers
execute if score lifesteal slot8 matches 1.. run execute if score splash slot8 matches 1.. run execute if score slot8isatk booleans matches 1 run scoreboard players operation lifestealsplash1 saves /= splash slot8
execute if score lifesteal slot8 matches 1.. run execute if score splash slot8 matches 1.. run execute if score slot8isatk booleans matches 1 run scoreboard players operation lifestealsplash1 saves += marks slot3
execute if score lifesteal slot8 matches 1.. run execute if score splash slot8 matches 1.. run execute if score slot8isatk booleans matches 1 run scoreboard players operation lifestealsplash1 saves /= atkmultiplier slot3
execute if score lifesteal slot8 matches 1.. run execute if score splash slot8 matches 1.. run execute if score slot8isatk booleans matches 1 run scoreboard players operation lifestealsplash1 saves /= lifesteal slot8
execute if score slot3 hp matches 1.. run execute if score ward slot3 matches 0 run execute if score slot8bleeding booleaneffects matches 0 run execute if score lifesteal slot8 matches 1.. run execute if score splash slot8 matches 1.. run execute if score slot8isatk booleans matches 1 run scoreboard players operation slot8 hp += lifestealsplash1 saves

#Special Cases
execute if score ward slot2 matches ..0 run execute if score slot5isatk booleans matches 1 if score character# slot5 matches 29 if score slot2 hp <= ripperHpBleed abilityStats run scoreboard players operation slot2bleeding booleaneffects = ripperBleed abilityStats
execute if score ward slot2 matches ..0 run execute if score slot6isatk booleans matches 1 if score character# slot6 matches 29 if score slot2 hp <= ripperHpBleed abilityStats run scoreboard players operation slot2bleeding booleaneffects = ripperBleed abilityStats
execute if score ward slot2 matches ..0 run execute if score slot7isatk booleans matches 1 if score character# slot7 matches 29 if score slot2 hp <= ripperHpBleed abilityStats run scoreboard players operation slot2bleeding booleaneffects = ripperBleed abilityStats
execute if score ward slot2 matches ..0 run execute if score slot5isatk booleans matches 1 if score character# slot5 matches -8 run scoreboard players operation slot2Disease disease += zombieDisease abilityStats
execute if score ward slot2 matches ..0 run execute if score slot6isatk booleans matches 1 if score character# slot6 matches -8 run scoreboard players operation slot2Disease disease += zombieDisease abilityStats
execute if score ward slot2 matches ..0 run execute if score slot7isatk booleans matches 1 if score character# slot7 matches -8 run scoreboard players operation slot2Disease disease += zombieDisease abilityStats
execute if score ward slot2 matches ..0 run execute if score slot8isatk booleans matches 1 if score character# slot8 matches -8 run scoreboard players operation slot2Disease disease += zombieDisease abilityStats


#damage + shield reset (all)
execute if score shield slot2 matches ..0 if score ward slot2 matches 0 run scoreboard players operation slot2 hp += shield slot2
execute if score ward slot2 matches 1.. run function ch:wardslot2
execute if score shield slot2 matches ..0 run scoreboard players set shield slot2 0
execute at @e[name=slot2,type=armor_stand] run particle minecraft:crit ~ ~1 ~ 0.9 0.9 0.9 0.5 100

#double target + turn end trigger
#regular attack
execute if score slot5isatk booleans matches 1 run execute if score doubleatk slot5 matches 0 run function ch:turnend
execute if score slot6isatk booleans matches 1 run execute if score doubleatk slot6 matches 0 run function ch:turnend
execute if score slot7isatk booleans matches 1 run execute if score doubleatk slot7 matches 0 run function ch:turnend
execute if score slot8isatk booleans matches 1 run execute if score doubleatk slot8 matches 0 run function ch:turnend
#double target (2nd hit)
execute if score slot5isatk booleans matches 1 run execute if score doubleatk slot5 matches 1 run execute if score useddoubleatk slot5 matches 1 run function ch:turnend
execute if score slot6isatk booleans matches 1 run execute if score doubleatk slot6 matches 1 run execute if score useddoubleatk slot6 matches 1 run function ch:turnend
execute if score slot7isatk booleans matches 1 run execute if score doubleatk slot7 matches 1 run execute if score useddoubleatk slot7 matches 1 run function ch:turnend
execute if score slot8isatk booleans matches 1 run execute if score doubleatk slot8 matches 1 run execute if score useddoubleatk slot8 matches 1 run function ch:turnend
#double target (1st hit)
execute if score slot5isatk booleans matches 1 run execute if score doubleatk slot5 matches 1 run execute if score useddoubleatk slot5 matches 0 run function ch:basicattackstartp2
execute if score slot5isatk booleans matches 1 run execute if score doubleatk slot5 matches 1 run execute if score useddoubleatk slot5 matches 0 run scoreboard players set useddoubleatk slot5 1
execute if score slot6isatk booleans matches 1 run execute if score doubleatk slot6 matches 1 run execute if score useddoubleatk slot6 matches 0 run function ch:basicattackstartp2
execute if score slot6isatk booleans matches 1 run execute if score doubleatk slot6 matches 1 run execute if score useddoubleatk slot6 matches 0 run scoreboard players set useddoubleatk slot6 1
execute if score slot7isatk booleans matches 1 run execute if score doubleatk slot7 matches 1 run execute if score useddoubleatk slot7 matches 0 run function ch:basicattackstartp2
execute if score slot7isatk booleans matches 1 run execute if score doubleatk slot7 matches 1 run execute if score useddoubleatk slot7 matches 0 run scoreboard players set useddoubleatk slot7 1
execute if score slot8isatk booleans matches 1 run execute if score doubleatk slot8 matches 1 run execute if score useddoubleatk slot8 matches 0 run function ch:basicattackstartp2
execute if score slot8isatk booleans matches 1 run execute if score doubleatk slot8 matches 1 run execute if score useddoubleatk slot8 matches 0 run scoreboard players set useddoubleatk slot8 1
