#basic attack functions
tellraw @a[tag=game3] ["",{"selector":"@p[tag=p6]"},"'s Fenrir attacked Slot 2"]
#slot 5
execute if score character# slot21 matches 41 run scoreboard players operation atk1 saves = atk slot21
execute if score character# slot21 matches 41 run scoreboard players operation atk1 saves += slot21 atkmodifiers
execute if score character# slot21 matches 41 run scoreboard players operation atk1 saves += marks slot18
execute if score character# slot21 matches 41 if score character# slot21 matches 30 run scoreboard players operation atk1 saves += dominoLeaderHit heroattack
execute if score character# slot21 matches 41 run scoreboard players operation atk1 saves /= atkmultiplier slot18
execute if score character# slot21 matches 41 run scoreboard players operation shield slot18 -= atk1 saves
#slot 6
execute if score character# slot22 matches 41 run scoreboard players operation atk1 saves = atk slot22
execute if score character# slot22 matches 41 run scoreboard players operation atk1 saves += slot22 atkmodifiers
execute if score character# slot22 matches 41 run scoreboard players operation atk1 saves += marks slot18
execute if score character# slot22 matches 41 if score character# slot22 matches 36 run execute unless score durationSlot21-2 fear matches 1.. unless score durationSlot22-2 fear matches 1.. unless score durationSlot23-2 fear matches 1.. unless score durationSlot24-2 fear matches 1.. run scoreboard players operation atk1 saves -= barleyLeader abilityStats
execute if score character# slot22 matches 41 if score character# slot22 matches 30 run scoreboard players operation atk1 saves += dominoLeaderHit heroattack
execute if score character# slot22 matches 41 run scoreboard players operation atk1 saves /= atkmultiplier slot18
execute if score character# slot22 matches 41 run scoreboard players operation shield slot18 -= atk1 saves
#slot 7
execute if score character# slot23 matches 41 run scoreboard players operation atk1 saves = atk slot23
execute if score character# slot23 matches 41 run scoreboard players operation atk1 saves += marks slot18
execute if score character# slot23 matches 41 run scoreboard players operation atk1 saves += slot23 atkmodifiers
execute if score character# slot23 matches 41 if score character# slot23 matches 30 run scoreboard players operation atk1 saves += dominoLeaderHit heroattack
execute if score character# slot23 matches 41 run scoreboard players operation atk1 saves /= atkmultiplier slot18
execute if score character# slot23 matches 41 run scoreboard players operation shield slot18 -= atk1 saves
#slot 8
execute if score character# slot24 matches 41 run scoreboard players operation atk1 saves = atk slot24
execute if score character# slot24 matches 41 run scoreboard players operation atk1 saves += marks slot18
execute if score character# slot24 matches 41 run scoreboard players operation atk1 saves += slot24 atkmodifiers
execute if score character# slot24 matches 41 run scoreboard players operation atk1 saves /= atkmultiplier slot18
execute if score character# slot24 matches 41 run scoreboard players operation shield slot18 -= atk1 saves

execute if score character# slot17 matches 41 run scoreboard players operation fenrirhpsave saves -= atk1 saves
execute if score character# slot18 matches 41 run scoreboard players operation fenrirhpsave saves -= atk1 saves
execute if score character# slot19 matches 41 run scoreboard players operation fenrirhpsave saves -= atk1 saves



#splash
#slot21
execute if score splash slot21 matches 1.. run execute if score character# slot21 matches 41 run scoreboard players operation splashdamage1 saves = atk slot21
execute if score splash slot21 matches 1.. run execute if score character# slot21 matches 41 run scoreboard players operation splashdamage1 saves += slot21 atkmodifiers
execute if score splash slot21 matches 1.. run execute if score character# slot21 matches 41 run scoreboard players operation splashdamage1 saves /= splash slot21
execute if score splash slot21 matches 1.. run execute if score character# slot21 matches 41 run scoreboard players operation splashdamage1 saves += marks slot17
execute if score splash slot21 matches 1.. run execute if score character# slot21 matches 41 run scoreboard players operation splashdamage1 saves /= atkmultiplier slot17
execute if score ward slot17 matches 0 run execute if score splash slot21 matches 1.. run execute if score character# slot21 matches 41 run scoreboard players operation shield slot17 -= splashdamage1 saves
execute if score ward slot17 matches 1.. run execute if score splash slot21 matches 1.. run execute if score character# slot21 matches 41 run function chthree:wardslot17
execute if score splash slot21 matches 1.. if score character# slot21 matches 41 at @e[name=slot17,type=armor_stand] run particle minecraft:crit ~ ~1 ~ 0.9 0.9 0.9 0.5 50
execute if score splash slot21 matches 1.. run execute if score character# slot21 matches 41 run scoreboard players operation splashdamage1 saves = atk slot21
execute if score splash slot21 matches 1.. run execute if score character# slot21 matches 41 run scoreboard players operation splashdamage1 saves += slot21 atkmodifiers
execute if score splash slot21 matches 1.. run execute if score character# slot21 matches 41 run scoreboard players operation splashdamage1 saves /= splash slot21
execute if score splash slot21 matches 1.. run execute if score character# slot21 matches 41 run scoreboard players operation splashdamage1 saves += marks slot19
execute if score splash slot21 matches 1.. run execute if score character# slot21 matches 41 run scoreboard players operation splashdamage1 saves /= atkmultiplier slot19
execute if score ward slot19 matches 0 run execute if score splash slot21 matches 1.. run execute if score character# slot21 matches 41 run scoreboard players operation shield slot19 -= splashdamage1 saves
execute if score ward slot19 matches 1.. run execute if score splash slot21 matches 1.. run execute if score character# slot21 matches 41 run function chthree:wardslot19
execute if score splash slot21 matches 1.. if score character# slot21 matches 41 at @e[name=slot19,type=armor_stand] run particle minecraft:crit ~ ~1 ~ 0.9 0.9 0.9 0.5 50

#slot22
execute if score splash slot22 matches 1.. run execute if score character# slot22 matches 41 run scoreboard players operation splashdamage1 saves = atk slot22
execute if score splash slot22 matches 1.. run execute if score character# slot22 matches 41 run scoreboard players operation splashdamage1 saves += slot22 atkmodifiers
execute if score splash slot22 matches 1.. run execute if score character# slot22 matches 41 run scoreboard players operation splashdamage1 saves /= splash slot22
execute if score splash slot22 matches 1.. run execute if score character# slot22 matches 41 run scoreboard players operation splashdamage1 saves += marks slot17
execute if score splash slot22 matches 1.. run execute if score character# slot22 matches 41 run scoreboard players operation splashdamage1 saves /= atkmultiplier slot17
execute if score ward slot17 matches 0 run execute if score splash slot22 matches 1.. run execute if score character# slot22 matches 41 run scoreboard players operation shield slot17 -= splashdamage1 saves
execute if score ward slot17 matches 1.. run execute if score splash slot22 matches 1.. run execute if score character# slot22 matches 41 run function chthree:wardslot17
execute if score splash slot22 matches 1.. if score character# slot22 matches 41 at @e[name=slot17,type=armor_stand] run particle minecraft:crit ~ ~1 ~ 0.9 0.9 0.9 0.5 50
execute if score splash slot22 matches 1.. run execute if score character# slot22 matches 41 run scoreboard players operation splashdamage1 saves = atk slot22
execute if score splash slot22 matches 1.. run execute if score character# slot22 matches 41 run scoreboard players operation splashdamage1 saves += slot22 atkmodifiers
execute if score splash slot22 matches 1.. run execute if score character# slot22 matches 41 run scoreboard players operation splashdamage1 saves /= splash slot22
execute if score splash slot22 matches 1.. run execute if score character# slot22 matches 41 run scoreboard players operation splashdamage1 saves += marks slot19
execute if score splash slot22 matches 1.. run execute if score character# slot22 matches 41 run scoreboard players operation splashdamage1 saves /= atkmultiplier slot19
execute if score ward slot19 matches 0 run execute if score splash slot22 matches 1.. run execute if score character# slot22 matches 41 run scoreboard players operation shield slot19 -= splashdamage1 saves
execute if score ward slot19 matches 1.. run execute if score splash slot22 matches 1.. run execute if score character# slot22 matches 41 run function chthree:wardslot19
execute if score splash slot22 matches 1.. if score character# slot22 matches 41 at @e[name=slot19,type=armor_stand] run particle minecraft:crit ~ ~1 ~ 0.9 0.9 0.9 0.5 50
#slot23
execute if score splash slot23 matches 1.. run execute if score character# slot23 matches 41 run scoreboard players operation splashdamage1 saves = atk slot23
execute if score splash slot23 matches 1.. run execute if score character# slot23 matches 41 run scoreboard players operation splashdamage1 saves += slot23 atkmodifiers
execute if score splash slot23 matches 1.. run execute if score character# slot23 matches 41 run scoreboard players operation splashdamage1 saves /= splash slot23
execute if score splash slot23 matches 1.. run execute if score character# slot23 matches 41 run scoreboard players operation splashdamage1 saves += marks slot17
execute if score splash slot23 matches 1.. run execute if score character# slot23 matches 41 run scoreboard players operation splashdamage1 saves /= atkmultiplier slot17
execute if score ward slot17 matches 0 run execute if score splash slot23 matches 1.. run execute if score character# slot23 matches 41 run scoreboard players operation shield slot17 -= splashdamage1 saves
execute if score ward slot17 matches 1.. run execute if score splash slot23 matches 1.. run execute if score character# slot23 matches 41 run function chthree:wardslot17
execute if score splash slot23 matches 1.. if score character# slot23 matches 41 at @e[name=slot17,type=armor_stand] run particle minecraft:crit ~ ~1 ~ 0.9 0.9 0.9 0.5 50
execute if score splash slot23 matches 1.. run execute if score character# slot23 matches 41 run scoreboard players operation splashdamage1 saves = atk slot23
execute if score splash slot23 matches 1.. run execute if score character# slot23 matches 41 run scoreboard players operation splashdamage1 saves += slot23 atkmodifiers
execute if score splash slot23 matches 1.. run execute if score character# slot23 matches 41 run scoreboard players operation splashdamage1 saves /= splash slot23
execute if score splash slot23 matches 1.. run execute if score character# slot23 matches 41 run scoreboard players operation splashdamage1 saves += marks slot19
execute if score splash slot23 matches 1.. run execute if score character# slot23 matches 41 run scoreboard players operation splashdamage1 saves /= atkmultiplier slot19
execute if score ward slot19 matches 0 run execute if score splash slot23 matches 1.. run execute if score character# slot23 matches 41 run scoreboard players operation shield slot19 -= splashdamage1 saves
execute if score ward slot19 matches 1.. run execute if score splash slot23 matches 1.. run execute if score character# slot23 matches 41 run function chthree:wardslot19
execute if score splash slot23 matches 1.. if score character# slot23 matches 41 at @e[name=slot19,type=armor_stand] run particle minecraft:crit ~ ~1 ~ 0.9 0.9 0.9 0.5 50
#slot24
execute if score splash slot24 matches 1.. run execute if score character# slot24 matches 41 run scoreboard players operation splashdamage1 saves = atk slot24
execute if score splash slot24 matches 1.. run execute if score character# slot24 matches 41 run scoreboard players operation splashdamage1 saves += slot24 atkmodifiers
execute if score splash slot24 matches 1.. run execute if score character# slot24 matches 41 run scoreboard players operation splashdamage1 saves /= splash slot24
execute if score splash slot24 matches 1.. run execute if score character# slot24 matches 41 run scoreboard players operation splashdamage1 saves += marks slot17
execute if score splash slot24 matches 1.. run execute if score character# slot24 matches 41 run scoreboard players operation splashdamage1 saves /= atkmultiplier slot17
execute if score ward slot17 matches 0 run execute if score splash slot24 matches 1.. run execute if score character# slot24 matches 41 run scoreboard players operation shield slot17 -= splashdamage1 saves
execute if score ward slot17 matches 1.. run execute if score splash slot24 matches 1.. run execute if score character# slot24 matches 41 run function chthree:wardslot17
execute if score splash slot24 matches 1.. if score character# slot24 matches 41 at @e[name=slot17,type=armor_stand] run particle minecraft:crit ~ ~1 ~ 0.9 0.9 0.9 0.5 50
execute if score splash slot24 matches 1.. run execute if score character# slot24 matches 41 run scoreboard players operation splashdamage1 saves = atk slot24
execute if score splash slot24 matches 1.. run execute if score character# slot24 matches 41 run scoreboard players operation splashdamage1 saves += slot24 atkmodifiers
execute if score splash slot24 matches 1.. run execute if score character# slot24 matches 41 run scoreboard players operation splashdamage1 saves /= splash slot24
execute if score splash slot24 matches 1.. run execute if score character# slot24 matches 41 run scoreboard players operation splashdamage1 saves += marks slot19
execute if score splash slot24 matches 1.. run execute if score character# slot24 matches 41 run scoreboard players operation splashdamage1 saves /= atkmultiplier slot19
execute if score ward slot19 matches 0 run execute if score splash slot24 matches 1.. run execute if score character# slot24 matches 41 run scoreboard players operation shield slot19 -= splashdamage1 saves
execute if score ward slot19 matches 1.. run execute if score splash slot24 matches 1.. run execute if score character# slot24 matches 41 run function chthree:wardslot19
execute if score splash slot24 matches 1.. if score character# slot24 matches 41 at @e[name=slot19,type=armor_stand] run particle minecraft:crit ~ ~1 ~ 0.9 0.9 0.9 0.5 50

#damage + shield reset (all)
execute if score shield slot17 matches ..0 if score ward slot17 matches 0 run scoreboard players operation slot17 hp += shield slot17
execute if score shield slot17 matches ..0 run scoreboard players set shield slot17 0
execute if score shield slot19 matches ..0 if score ward slot19 matches 0 run scoreboard players operation slot19 hp += shield slot19
execute if score shield slot19 matches ..0 run scoreboard players set shield slot19 0

#lifesteal
#slot 5
execute if score lifesteal slot21 matches 1.. run execute if score character# slot21 matches 41 run scoreboard players operation lifesteal1 saves = atk slot21
execute if score lifesteal slot21 matches 1.. run execute if score character# slot21 matches 41 run scoreboard players operation lifesteal1 saves += slot21 atkmodifiers
execute if score lifesteal slot21 matches 1.. run execute if score character# slot21 matches 41 run scoreboard players operation lifesteal1 saves += marks slot18
execute if score lifesteal slot21 matches 1.. if score character# slot21 matches 41 if score character# slot21 matches 30 run scoreboard players operation lifesteal1 saves += dominoLeaderHit heroattack
execute if score lifesteal slot21 matches 1.. run execute if score character# slot21 matches 41 run scoreboard players operation lifesteal1 saves /= atkmultiplier slot18
execute if score lifesteal slot21 matches 1.. run execute if score character# slot21 matches 41 run scoreboard players operation lifesteal1 saves /= lifesteal slot21
execute if score ward slot18 matches 0 if score slot21bleeding booleaneffects matches 0 run execute if score lifesteal slot21 matches 1.. run execute if score character# slot21 matches 41 run scoreboard players operation slot21 hp += lifesteal1 saves
execute if score ward slot18 matches 0 if score lifesteal slot21 matches 1.. if score character# slot21 matches 41 at @e[name=slot21,type=armor_stand] run particle minecraft:composter ~ ~1 ~ 0.9 0.9 0.9 0.5 50
#slot 6
execute if score lifesteal slot22 matches 1.. run execute if score character# slot22 matches 41 run scoreboard players operation lifesteal1 saves = atk slot22
execute if score lifesteal slot22 matches 1.. run execute if score character# slot22 matches 41 run scoreboard players operation lifesteal1 saves += slot22 atkmodifiers
execute if score lifesteal slot22 matches 1.. run execute if score character# slot22 matches 41 run scoreboard players operation lifesteal1 saves += marks slot18
execute if score lifesteal slot22 matches 1.. if score character# slot22 matches 41 if score character# slot22 matches 30 run scoreboard players operation lifesteal1 saves += dominoLeaderHit heroattack
execute if score lifesteal slot22 matches 1.. run execute if score character# slot22 matches 41 run scoreboard players operation lifesteal1 saves /= atkmultiplier slot18
execute if score lifesteal slot22 matches 1.. run execute if score character# slot22 matches 41 run scoreboard players operation lifesteal1 saves /= lifesteal slot22
execute if score ward slot18 matches 0 if score slot22bleeding booleaneffects matches 0 run execute if score lifesteal slot22 matches 1.. run execute if score character# slot22 matches 41 run scoreboard players operation slot22 hp += lifesteal1 saves
execute if score ward slot18 matches 0 if score lifesteal slot22 matches 1.. if score character# slot22 matches 41 at @e[name=slot22,type=armor_stand] run particle minecraft:composter ~ ~1 ~ 0.9 0.9 0.9 0.5 50
#slot 7
execute if score lifesteal slot23 matches 1.. run execute if score character# slot23 matches 41 run scoreboard players operation lifesteal1 saves = atk slot23
execute if score lifesteal slot23 matches 1.. run execute if score character# slot23 matches 41 run scoreboard players operation lifesteal1 saves += slot23 atkmodifiers
execute if score lifesteal slot23 matches 1.. run execute if score character# slot23 matches 41 run scoreboard players operation lifesteal1 saves += marks slot18
execute if score lifesteal slot23 matches 1.. if score character# slot23 matches 41 if score character# slot23 matches 30 run scoreboard players operation lifesteal1 saves += dominoLeaderHit heroattack
execute if score lifesteal slot23 matches 1.. run execute if score character# slot23 matches 41 run scoreboard players operation lifesteal1 saves /= atkmultiplier slot18
execute if score lifesteal slot23 matches 1.. run execute if score character# slot23 matches 41 run scoreboard players operation lifesteal1 saves /= lifesteal slot23
execute if score ward slot18 matches 0 if score slot23bleeding booleaneffects matches 0 run execute if score lifesteal slot23 matches 1.. run execute if score character# slot23 matches 41 run scoreboard players operation slot23 hp += lifesteal1 saves
execute if score ward slot18 matches 0 if score lifesteal slot23 matches 1.. if score character# slot23 matches 41 at @e[name=slot23,type=armor_stand] run particle minecraft:composter ~ ~1 ~ 0.9 0.9 0.9 0.5 50
#slot 8
execute if score lifesteal slot24 matches 1.. run execute if score character# slot24 matches 41 run scoreboard players operation lifesteal1 saves = atk slot24
execute if score lifesteal slot24 matches 1.. run execute if score character# slot24 matches 41 run scoreboard players operation lifesteal1 saves += slot24 atkmodifiers
execute if score lifesteal slot24 matches 1.. run execute if score character# slot24 matches 41 run scoreboard players operation lifesteal1 saves += marks slot18
execute if score lifesteal slot21 matches 1.. if score character# slot21 matches 41 if score character# slot21 matches 30 run scoreboard players operation lifesteal1 saves += dominoLeaderHit heroattack
execute if score lifesteal slot24 matches 1.. run execute if score character# slot24 matches 41 run scoreboard players operation lifesteal1 saves /= atkmultiplier slot18
execute if score lifesteal slot24 matches 1.. run execute if score character# slot24 matches 41 run scoreboard players operation lifesteal1 saves /= lifesteal slot24
execute if score ward slot18 matches 0 if score slot24bleeding booleaneffects matches 0 run execute if score lifesteal slot24 matches 1.. run execute if score character# slot24 matches 41 run scoreboard players operation slot24 hp += lifesteal1 saves
execute if score ward slot18 matches 0 if score lifesteal slot24 matches 1.. if score character# slot24 matches 41 at @e[name=slot24,type=armor_stand] run particle minecraft:composter ~ ~1 ~ 0.9 0.9 0.9 0.5 50

#lifesteal + splash
#slot 5
execute if score lifesteal slot21 matches 1.. run execute if score splash slot21 matches 1.. run execute if score character# slot21 matches 41 run scoreboard players operation lifestealsplash1 saves = atk slot21
execute if score lifesteal slot21 matches 1.. run execute if score splash slot21 matches 1.. run execute if score character# slot21 matches 41 run scoreboard players operation lifestealsplash1 saves += slot21 atkmodifiers
execute if score lifesteal slot21 matches 1.. run execute if score splash slot21 matches 1.. run execute if score character# slot21 matches 41 run scoreboard players operation lifestealsplash1 saves /= splash slot21
execute if score lifesteal slot21 matches 1.. run execute if score splash slot21 matches 1.. run execute if score character# slot21 matches 41 run scoreboard players operation lifestealsplash1 saves += marks slot17
execute if score lifesteal slot21 matches 1.. run execute if score splash slot21 matches 1.. run execute if score character# slot21 matches 41 run scoreboard players operation lifestealsplash1 saves /= atkmultiplier slot17
execute if score lifesteal slot21 matches 1.. run execute if score splash slot21 matches 1.. run execute if score character# slot21 matches 41 run scoreboard players operation lifestealsplash1 saves /= lifesteal slot21
execute if score slot17 hp matches 1.. run execute if score ward slot17 matches 0 run execute if score slot21bleeding booleaneffects matches 0 run execute if score lifesteal slot21 matches 1.. run execute if score splash slot21 matches 1.. run execute if score character# slot21 matches 41 run scoreboard players operation slot21 hp += lifestealsplash1 saves
execute if score lifesteal slot21 matches 1.. run execute if score splash slot21 matches 1.. run execute if score character# slot21 matches 41 run scoreboard players operation lifestealsplash1 saves = atk slot21
execute if score lifesteal slot21 matches 1.. run execute if score splash slot21 matches 1.. run execute if score character# slot21 matches 41 run scoreboard players operation lifestealsplash1 saves += slot21 atkmodifiers
execute if score lifesteal slot21 matches 1.. run execute if score splash slot21 matches 1.. run execute if score character# slot21 matches 41 run scoreboard players operation lifestealsplash1 saves /= splash slot21
execute if score lifesteal slot21 matches 1.. run execute if score splash slot21 matches 1.. run execute if score character# slot21 matches 41 run scoreboard players operation lifestealsplash1 saves += marks slot19
execute if score lifesteal slot21 matches 1.. run execute if score splash slot21 matches 1.. run execute if score character# slot21 matches 41 run scoreboard players operation lifestealsplash1 saves /= atkmultiplier slot19
execute if score lifesteal slot21 matches 1.. run execute if score splash slot21 matches 1.. run execute if score character# slot21 matches 41 run scoreboard players operation lifestealsplash1 saves /= lifesteal slot21
execute if score slot19 hp matches 1.. run execute if score ward slot19 matches 0 run execute if score slot21bleeding booleaneffects matches 0 run execute if score lifesteal slot21 matches 1.. run execute if score splash slot21 matches 1.. run execute if score character# slot21 matches 41 run scoreboard players operation slot21 hp += lifestealsplash1 saves
#slot 6
execute if score lifesteal slot22 matches 1.. run execute if score splash slot22 matches 1.. run execute if score character# slot22 matches 41 run scoreboard players operation lifestealsplash1 saves = atk slot22
execute if score lifesteal slot22 matches 1.. run execute if score splash slot22 matches 1.. run execute if score character# slot22 matches 41 run scoreboard players operation lifestealsplash1 saves += slot22 atkmodifiers
execute if score lifesteal slot22 matches 1.. run execute if score splash slot22 matches 1.. run execute if score character# slot22 matches 41 run scoreboard players operation lifestealsplash1 saves /= splash slot22
execute if score lifesteal slot22 matches 1.. run execute if score splash slot22 matches 1.. run execute if score character# slot22 matches 41 run scoreboard players operation lifestealsplash1 saves += marks slot17
execute if score lifesteal slot22 matches 1.. run execute if score splash slot22 matches 1.. run execute if score character# slot22 matches 41 run scoreboard players operation lifestealsplash1 saves /= atkmultiplier slot17
execute if score lifesteal slot22 matches 1.. run execute if score splash slot22 matches 1.. run execute if score character# slot22 matches 41 run scoreboard players operation lifestealsplash1 saves /= lifesteal slot22
execute if score slot17 hp matches 1.. run execute if score ward slot17 matches 0 run execute if score slot22bleeding booleaneffects matches 0 run execute if score lifesteal slot22 matches 1.. run execute if score splash slot22 matches 1.. run execute if score character# slot22 matches 41 run scoreboard players operation slot22 hp += lifestealsplash1 saves
execute if score lifesteal slot22 matches 1.. run execute if score splash slot22 matches 1.. run execute if score character# slot22 matches 41 run scoreboard players operation lifestealsplash1 saves = atk slot22
execute if score lifesteal slot22 matches 1.. run execute if score splash slot22 matches 1.. run execute if score character# slot22 matches 41 run scoreboard players operation lifestealsplash1 saves += slot22 atkmodifiers
execute if score lifesteal slot22 matches 1.. run execute if score splash slot22 matches 1.. run execute if score character# slot22 matches 41 run scoreboard players operation lifestealsplash1 saves /= splash slot22
execute if score lifesteal slot22 matches 1.. run execute if score splash slot22 matches 1.. run execute if score character# slot22 matches 41 run scoreboard players operation lifestealsplash1 saves += marks slot19
execute if score lifesteal slot22 matches 1.. run execute if score splash slot22 matches 1.. run execute if score character# slot22 matches 41 run scoreboard players operation lifestealsplash1 saves /= atkmultiplier slot19
execute if score lifesteal slot22 matches 1.. run execute if score splash slot22 matches 1.. run execute if score character# slot22 matches 41 run scoreboard players operation lifestealsplash1 saves /= lifesteal slot22
execute if score slot19 hp matches 1.. run execute if score ward slot19 matches 0 run execute if score slot22bleeding booleaneffects matches 0 run execute if score lifesteal slot22 matches 1.. run execute if score splash slot22 matches 1.. run execute if score character# slot22 matches 41 run scoreboard players operation slot22 hp += lifestealsplash1 saves
#slot 7
execute if score lifesteal slot23 matches 1.. run execute if score splash slot23 matches 1.. run execute if score character# slot23 matches 41 run scoreboard players operation lifestealsplash1 saves = atk slot23
execute if score lifesteal slot23 matches 1.. run execute if score splash slot23 matches 1.. run execute if score character# slot23 matches 41 run scoreboard players operation lifestealsplash1 saves += slot23 atkmodifiers
execute if score lifesteal slot23 matches 1.. run execute if score splash slot23 matches 1.. run execute if score character# slot23 matches 41 run scoreboard players operation lifestealsplash1 saves /= splash slot23
execute if score lifesteal slot23 matches 1.. run execute if score splash slot23 matches 1.. run execute if score character# slot23 matches 41 run scoreboard players operation lifestealsplash1 saves += marks slot17
execute if score lifesteal slot23 matches 1.. run execute if score splash slot23 matches 1.. run execute if score character# slot23 matches 41 run scoreboard players operation lifestealsplash1 saves /= atkmultiplier slot17
execute if score lifesteal slot23 matches 1.. run execute if score splash slot23 matches 1.. run execute if score character# slot23 matches 41 run scoreboard players operation lifestealsplash1 saves /= lifesteal slot23
execute if score slot17 hp matches 1.. run execute if score ward slot17 matches 0 run execute if score slot23bleeding booleaneffects matches 0 run execute if score lifesteal slot23 matches 1.. run execute if score splash slot23 matches 1.. run execute if score character# slot23 matches 41 run scoreboard players operation slot23 hp += lifestealsplash1 saves
execute if score lifesteal slot23 matches 1.. run execute if score splash slot23 matches 1.. run execute if score character# slot23 matches 41 run scoreboard players operation lifestealsplash1 saves = atk slot23
execute if score lifesteal slot23 matches 1.. run execute if score splash slot23 matches 1.. run execute if score character# slot23 matches 41 run scoreboard players operation lifestealsplash1 saves += slot23 atkmodifiers
execute if score lifesteal slot23 matches 1.. run execute if score splash slot23 matches 1.. run execute if score character# slot23 matches 41 run scoreboard players operation lifestealsplash1 saves /= splash slot23
execute if score lifesteal slot23 matches 1.. run execute if score splash slot23 matches 1.. run execute if score character# slot23 matches 41 run scoreboard players operation lifestealsplash1 saves += marks slot19
execute if score lifesteal slot23 matches 1.. run execute if score splash slot23 matches 1.. run execute if score character# slot23 matches 41 run scoreboard players operation lifestealsplash1 saves /= atkmultiplier slot19
execute if score lifesteal slot23 matches 1.. run execute if score splash slot23 matches 1.. run execute if score character# slot23 matches 41 run scoreboard players operation lifestealsplash1 saves /= lifesteal slot23
execute if score slot19 hp matches 1.. run execute if score ward slot19 matches 0 run execute if score slot23bleeding booleaneffects matches 0 run execute if score lifesteal slot23 matches 1.. run execute if score splash slot23 matches 1.. run execute if score character# slot23 matches 41 run scoreboard players operation slot23 hp += lifestealsplash1 saves
#slot 8
execute if score lifesteal slot24 matches 1.. run execute if score splash slot24 matches 1.. run execute if score character# slot24 matches 41 run scoreboard players operation lifestealsplash1 saves = atk slot24
execute if score lifesteal slot24 matches 1.. run execute if score splash slot24 matches 1.. run execute if score character# slot24 matches 41 run scoreboard players operation lifestealsplash1 saves += slot24 atkmodifiers
execute if score lifesteal slot24 matches 1.. run execute if score splash slot24 matches 1.. run execute if score character# slot24 matches 41 run scoreboard players operation lifestealsplash1 saves /= splash slot24
execute if score lifesteal slot24 matches 1.. run execute if score splash slot24 matches 1.. run execute if score character# slot24 matches 41 run scoreboard players operation lifestealsplash1 saves += marks slot17
execute if score lifesteal slot24 matches 1.. run execute if score splash slot24 matches 1.. run execute if score character# slot24 matches 41 run scoreboard players operation lifestealsplash1 saves /= atkmultiplier slot17
execute if score lifesteal slot24 matches 1.. run execute if score splash slot24 matches 1.. run execute if score character# slot24 matches 41 run scoreboard players operation lifestealsplash1 saves /= lifesteal slot24
execute if score slot17 hp matches 1.. run execute if score ward slot17 matches 0 run execute if score slot24bleeding booleaneffects matches 0 run execute if score lifesteal slot24 matches 1.. run execute if score splash slot24 matches 1.. run execute if score character# slot24 matches 41 run scoreboard players operation slot24 hp += lifestealsplash1 saves
execute if score lifesteal slot24 matches 1.. run execute if score splash slot24 matches 1.. run execute if score character# slot24 matches 41 run scoreboard players operation lifestealsplash1 saves = atk slot24
execute if score lifesteal slot24 matches 1.. run execute if score splash slot24 matches 1.. run execute if score character# slot24 matches 41 run scoreboard players operation lifestealsplash1 saves += slot24 atkmodifiers
execute if score lifesteal slot24 matches 1.. run execute if score splash slot24 matches 1.. run execute if score character# slot24 matches 41 run scoreboard players operation lifestealsplash1 saves /= splash slot24
execute if score lifesteal slot24 matches 1.. run execute if score splash slot24 matches 1.. run execute if score character# slot24 matches 41 run scoreboard players operation lifestealsplash1 saves += marks slot19
execute if score lifesteal slot24 matches 1.. run execute if score splash slot24 matches 1.. run execute if score character# slot24 matches 41 run scoreboard players operation lifestealsplash1 saves /= atkmultiplier slot19
execute if score lifesteal slot24 matches 1.. run execute if score splash slot24 matches 1.. run execute if score character# slot24 matches 41 run scoreboard players operation lifestealsplash1 saves /= lifesteal slot24
execute if score slot19 hp matches 1.. run execute if score ward slot19 matches 0 run execute if score slot24bleeding booleaneffects matches 0 run execute if score lifesteal slot24 matches 1.. run execute if score splash slot24 matches 1.. run execute if score character# slot24 matches 41 run scoreboard players operation slot24 hp += lifestealsplash1 saves

#Special Cases
execute if score ward slot18 matches ..0 run execute if score character# slot21 matches 41 if score character# slot21 matches 29 if score slot18 hp <= ripperHpBleed abilityStats run scoreboard players operation slot18bleeding booleaneffects = ripperBleed abilityStats
execute if score ward slot18 matches ..0 run execute if score character# slot22 matches 41 if score character# slot22 matches 29 if score slot18 hp <= ripperHpBleed abilityStats run scoreboard players operation slot18bleeding booleaneffects = ripperBleed abilityStats
execute if score ward slot18 matches ..0 run execute if score character# slot23 matches 41 if score character# slot23 matches 29 if score slot18 hp <= ripperHpBleed abilityStats run scoreboard players operation slot18bleeding booleaneffects = ripperBleed abilityStats
execute if score ward slot18 matches ..0 run execute if score character# slot21 matches 41 if score character# slot21 matches -8 run scoreboard players operation slot18Disease disease += zombieDisease abilityStats
execute if score ward slot18 matches ..0 run execute if score character# slot22 matches 41 if score character# slot22 matches -8 run scoreboard players operation slot18Disease disease += zombieDisease abilityStats
execute if score ward slot18 matches ..0 run execute if score character# slot23 matches 41 if score character# slot23 matches -8 run scoreboard players operation slot18Disease disease += zombieDisease abilityStats
execute if score ward slot18 matches ..0 run execute if score character# slot24 matches 41 if score character# slot24 matches -8 run scoreboard players operation slot18Disease disease += zombieDisease abilityStats

#damage + shield reset (all)
execute if score shield slot18 matches ..0 if score ward slot18 matches 0 run scoreboard players operation slot18 hp += shield slot18
execute if score ward slot18 matches 1.. run function chthree:wardslot18
execute if score shield slot18 matches ..0 run scoreboard players set shield slot18 0
execute at @e[name=slot18,type=armor_stand] run particle minecraft:crit ~ ~1 ~ 0.9 0.9 0.9 0.5 100
