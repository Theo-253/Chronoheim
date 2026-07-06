#basic attack functions
tellraw @a[tag=game3] ["",{"selector":"@p[tag=p6]"},"'s Fenrir attacked Slot 3"]
#slot 5
execute if score character# slot21 matches 41 run scoreboard players operation atk1 saves = atk slot21
execute if score character# slot21 matches 41 run scoreboard players operation atk1 saves += slot21 atkmodifiers
execute if score character# slot21 matches 41 run scoreboard players operation atk1 saves += marks slot19
execute if score character# slot21 matches 41 run scoreboard players operation atk1 saves /= atkmultiplier slot19
execute if score character# slot21 matches 41 run scoreboard players operation shield slot19 -= atk1 saves
#slot 6
execute if score character# slot22 matches 41 run scoreboard players operation atk1 saves = atk slot22
execute if score character# slot22 matches 41 run scoreboard players operation atk1 saves += slot22 atkmodifiers
execute if score character# slot22 matches 41 run scoreboard players operation atk1 saves += marks slot19
execute if score character# slot22 matches 41 if score character# slot22 matches 36 run execute unless score durationSlot21-3 fear matches 1.. unless score durationSlot22-3 fear matches 1.. unless score durationSlot23-3 fear matches 1.. unless score durationSlot24-3 fear matches 1.. run scoreboard players operation atk1 saves -= barleyLeader abilityStats
execute if score character# slot22 matches 41 run scoreboard players operation atk1 saves /= atkmultiplier slot19
execute if score character# slot22 matches 41 run scoreboard players operation shield slot19 -= atk1 saves
#slot 7
execute if score character# slot23 matches 41 run scoreboard players operation atk1 saves = atk slot23
execute if score character# slot23 matches 41 run scoreboard players operation atk1 saves += marks slot19
execute if score character# slot23 matches 41 run scoreboard players operation atk1 saves += slot23 atkmodifiers
execute if score character# slot23 matches 41 run scoreboard players operation atk1 saves /= atkmultiplier slot19
execute if score character# slot23 matches 41 run scoreboard players operation shield slot19 -= atk1 saves
#slot 8
execute if score character# slot24 matches 41 run scoreboard players operation atk1 saves = atk slot24
execute if score character# slot24 matches 41 run scoreboard players operation atk1 saves += marks slot19
execute if score character# slot24 matches 41 run scoreboard players operation atk1 saves += slot24 atkmodifiers
execute if score character# slot24 matches 41 run scoreboard players operation atk1 saves /= atkmultiplier slot19
execute if score character# slot24 matches 41 run scoreboard players operation shield slot19 -= atk1 saves

execute if score character# slot17 matches 41 run scoreboard players operation fenrirhpsave saves -= atk1 saves
execute if score character# slot18 matches 41 run scoreboard players operation fenrirhpsave saves -= atk1 saves
execute if score character# slot19 matches 41 run scoreboard players operation fenrirhpsave saves -= atk1 saves


#splash
#slot21
execute if score splash slot21 matches 1.. run execute if score character# slot21 matches 41 run scoreboard players operation splashdamage saves = atk slot21
execute if score splash slot21 matches 1.. run execute if score character# slot21 matches 41 run scoreboard players operation splashdamage saves += slot21 atkmodifiers
execute if score splash slot21 matches 1.. run execute if score character# slot21 matches 41 run scoreboard players operation splashdamage saves /= splash slot21
execute if score splash slot21 matches 1.. run execute if score character# slot21 matches 41 run scoreboard players operation splashdamage saves += marks slot18
execute if score splash slot21 matches 1.. run execute if score character# slot21 matches 41 run scoreboard players operation splashdamage saves /= atkmultiplier slot18
execute if score ward slot18 matches 0 run execute if score splash slot21 matches 1.. run execute if score character# slot21 matches 41 run scoreboard players operation shield slot18 -= splashdamage saves
execute if score ward slot18 matches 1.. run execute if score splash slot21 matches 1.. run execute if score character# slot21 matches 41 run function chthree:wardslot18
execute if score splash slot21 matches 1.. if score character# slot21 matches 41 at @e[name=slot18,type=armor_stand] run particle minecraft:crit ~ ~1 ~ 0.9 0.9 0.9 0.5 50
execute if score splash slot21 matches 1.. run execute if score character# slot21 matches 41 run scoreboard players operation splashdamage saves = atk slot21
execute if score splash slot21 matches 1.. run execute if score character# slot21 matches 41 run scoreboard players operation splashdamage saves += slot21 atkmodifiers
execute if score splash slot21 matches 1.. run execute if score character# slot21 matches 41 run scoreboard players operation splashdamage saves /= splash slot21
execute if score splash slot21 matches 1.. run execute if score character# slot21 matches 41 run scoreboard players operation splashdamage saves += marks slot20
execute if score splash slot21 matches 1.. run execute if score character# slot21 matches 41 run scoreboard players operation splashdamage saves /= atkmultiplier slot20
execute if score ward slot20 matches 0 run execute if score splash slot21 matches 1.. run execute if score character# slot21 matches 41 run scoreboard players operation shield slot20 -= splashdamage saves
execute if score ward slot20 matches 1.. run execute if score splash slot21 matches 1.. run execute if score character# slot21 matches 41 run function chthree:wardslot20
execute if score splash slot21 matches 1.. if score character# slot21 matches 41 at @e[name=slot20,type=armor_stand] run particle minecraft:crit ~ ~1 ~ 0.9 0.9 0.9 0.5 50
#slot22
execute if score splash slot22 matches 1.. run execute if score character# slot22 matches 41 run scoreboard players operation splashdamage saves = atk slot22
execute if score splash slot22 matches 1.. run execute if score character# slot22 matches 41 run scoreboard players operation splashdamage saves += slot22 atkmodifiers
execute if score splash slot22 matches 1.. run execute if score character# slot22 matches 41 run scoreboard players operation splashdamage saves /= splash slot22
execute if score splash slot22 matches 1.. run execute if score character# slot22 matches 41 run scoreboard players operation splashdamage saves += marks slot18
execute if score splash slot22 matches 1.. run execute if score character# slot22 matches 41 run scoreboard players operation splashdamage saves /= atkmultiplier slot18
execute if score ward slot18 matches 0 run execute if score splash slot22 matches 1.. run execute if score character# slot22 matches 41 run scoreboard players operation shield slot18 -= splashdamage saves
execute if score ward slot18 matches 1.. run execute if score splash slot22 matches 1.. run execute if score character# slot22 matches 41 run function chthree:wardslot18
execute if score splash slot22 matches 1.. if score character# slot22 matches 41 at @e[name=slot18,type=armor_stand] run particle minecraft:crit ~ ~1 ~ 0.9 0.9 0.9 0.5 50
execute if score splash slot22 matches 1.. run execute if score character# slot22 matches 41 run scoreboard players operation splashdamage saves = atk slot22
execute if score splash slot22 matches 1.. run execute if score character# slot22 matches 41 run scoreboard players operation splashdamage saves += slot22 atkmodifiers
execute if score splash slot22 matches 1.. run execute if score character# slot22 matches 41 run scoreboard players operation splashdamage saves /= splash slot22
execute if score splash slot22 matches 1.. run execute if score character# slot22 matches 41 run scoreboard players operation splashdamage saves += marks slot20
execute if score splash slot22 matches 1.. run execute if score character# slot22 matches 41 run scoreboard players operation splashdamage saves /= atkmultiplier slot20
execute if score ward slot20 matches 0 run execute if score splash slot22 matches 1.. run execute if score character# slot22 matches 41 run scoreboard players operation shield slot20 -= splashdamage saves
execute if score ward slot20 matches 1.. run execute if score splash slot22 matches 1.. run execute if score character# slot22 matches 41 run function chthree:wardslot20
execute if score splash slot22 matches 1.. if score character# slot22 matches 41 at @e[name=slot20,type=armor_stand] run particle minecraft:crit ~ ~1 ~ 0.9 0.9 0.9 0.5 50
#slot23
execute if score splash slot23 matches 1.. run execute if score character# slot23 matches 41 run scoreboard players operation splashdamage saves = atk slot23
execute if score splash slot23 matches 1.. run execute if score character# slot23 matches 41 run scoreboard players operation splashdamage saves += slot23 atkmodifiers
execute if score splash slot23 matches 1.. run execute if score character# slot23 matches 41 run scoreboard players operation splashdamage saves /= splash slot23
execute if score splash slot23 matches 1.. run execute if score character# slot23 matches 41 run scoreboard players operation splashdamage saves += marks slot18
execute if score splash slot23 matches 1.. run execute if score character# slot23 matches 41 run scoreboard players operation splashdamage saves /= atkmultiplier slot18
execute if score ward slot18 matches 0 run execute if score splash slot23 matches 1.. run execute if score character# slot23 matches 41 run scoreboard players operation shield slot18 -= splashdamage saves
execute if score ward slot18 matches 1.. run execute if score splash slot23 matches 1.. run execute if score character# slot23 matches 41 run function chthree:wardslot18
execute if score splash slot23 matches 1.. if score character# slot23 matches 41 at @e[name=slot18,type=armor_stand] run particle minecraft:crit ~ ~1 ~ 0.9 0.9 0.9 0.5 50
execute if score splash slot23 matches 1.. run execute if score character# slot23 matches 41 run scoreboard players operation splashdamage saves = atk slot23
execute if score splash slot23 matches 1.. run execute if score character# slot23 matches 41 run scoreboard players operation splashdamage saves += slot23 atkmodifiers
execute if score splash slot23 matches 1.. run execute if score character# slot23 matches 41 run scoreboard players operation splashdamage saves /= splash slot23
execute if score splash slot23 matches 1.. run execute if score character# slot23 matches 41 run scoreboard players operation splashdamage saves += marks slot20
execute if score splash slot23 matches 1.. run execute if score character# slot23 matches 41 run scoreboard players operation splashdamage saves /= atkmultiplier slot20
execute if score ward slot20 matches 0 run execute if score splash slot23 matches 1.. run execute if score character# slot23 matches 41 run scoreboard players operation shield slot20 -= splashdamage saves
execute if score ward slot20 matches 1.. run execute if score splash slot23 matches 1.. run execute if score character# slot23 matches 41 run function chthree:wardslot20
execute if score splash slot23 matches 1.. if score character# slot23 matches 41 at @e[name=slot20,type=armor_stand] run particle minecraft:crit ~ ~1 ~ 0.9 0.9 0.9 0.5 50
#slot24
execute if score splash slot24 matches 1.. run execute if score character# slot24 matches 41 run scoreboard players operation splashdamage saves = atk slot24
execute if score splash slot24 matches 1.. run execute if score character# slot24 matches 41 run scoreboard players operation splashdamage saves += slot24 atkmodifiers
execute if score splash slot24 matches 1.. run execute if score character# slot24 matches 41 run scoreboard players operation splashdamage saves /= splash slot24
execute if score splash slot24 matches 1.. run execute if score character# slot24 matches 41 run scoreboard players operation splashdamage saves += marks slot18
execute if score splash slot24 matches 1.. run execute if score character# slot24 matches 41 run scoreboard players operation splashdamage saves /= atkmultiplier slot18
execute if score ward slot18 matches 0 run execute if score splash slot24 matches 1.. run execute if score character# slot24 matches 41 run scoreboard players operation shield slot18 -= splashdamage saves
execute if score ward slot18 matches 1.. run execute if score splash slot24 matches 1.. run execute if score character# slot24 matches 41 run function chthree:wardslot18
execute if score splash slot24 matches 1.. if score character# slot24 matches 41 at @e[name=slot18,type=armor_stand] run particle minecraft:crit ~ ~1 ~ 0.9 0.9 0.9 0.5 50
execute if score splash slot24 matches 1.. run execute if score character# slot24 matches 41 run scoreboard players operation splashdamage saves = atk slot24
execute if score splash slot24 matches 1.. run execute if score character# slot24 matches 41 run scoreboard players operation splashdamage saves += slot24 atkmodifiers
execute if score splash slot24 matches 1.. run execute if score character# slot24 matches 41 run scoreboard players operation splashdamage saves /= splash slot24
execute if score splash slot24 matches 1.. run execute if score character# slot24 matches 41 run scoreboard players operation splashdamage saves += marks slot20
execute if score splash slot24 matches 1.. run execute if score character# slot24 matches 41 run scoreboard players operation splashdamage saves /= atkmultiplier slot20
execute if score ward slot20 matches 0 run execute if score splash slot24 matches 1.. run execute if score character# slot24 matches 41 run scoreboard players operation shield slot20 -= splashdamage saves
execute if score ward slot20 matches 1.. run execute if score splash slot24 matches 1.. run execute if score character# slot24 matches 41 run function chthree:wardslot20
execute if score splash slot24 matches 1.. if score character# slot24 matches 41 at @e[name=slot20,type=armor_stand] run particle minecraft:crit ~ ~1 ~ 0.9 0.9 0.9 0.5 50
#damage + shield reset (all)
execute if score shield slot18 matches ..0 if score ward slot18 matches 0 run scoreboard players operation slot18 hp += shield slot18
execute if score shield slot18 matches ..0 run scoreboard players set shield slot18 0
execute if score shield slot20 matches ..0 if score ward slot20 matches 0 run scoreboard players operation slot20 hp += shield slot20
execute if score shield slot20 matches ..0 run scoreboard players set shield slot20 0


#lifesteal
#slot 5
execute if score lifesteal slot21 matches 1.. run execute if score character# slot21 matches 41 run scoreboard players operation lifesteal saves = atk slot21
execute if score lifesteal slot21 matches 1.. run execute if score character# slot21 matches 41 run scoreboard players operation lifesteal saves += slot21 atkmodifiers
execute if score lifesteal slot21 matches 1.. run execute if score character# slot21 matches 41 run scoreboard players operation lifesteal saves += marks slot19
execute if score lifesteal slot21 matches 1.. run execute if score character# slot21 matches 41 run scoreboard players operation lifesteal saves /= atkmultiplier slot19
execute if score lifesteal slot21 matches 1.. run execute if score character# slot21 matches 41 run scoreboard players operation lifesteal saves /= lifesteal slot21
execute if score ward slot19 matches 0 if score slot21bleeding booleaneffects matches 0 run execute if score lifesteal slot21 matches 1.. run execute if score character# slot21 matches 41 run scoreboard players operation slot21 hp += lifesteal saves
execute if score ward slot19 matches 0 if score lifesteal slot21 matches 1.. if score character# slot21 matches 41 at @e[name=slot21,type=armor_stand] run particle minecraft:composter ~ ~1 ~ 0.9 0.9 0.9 0.5 50
#slot 6
execute if score lifesteal slot22 matches 1.. run execute if score character# slot22 matches 41 run scoreboard players operation lifesteal saves = atk slot22
execute if score lifesteal slot22 matches 1.. run execute if score character# slot22 matches 41 run scoreboard players operation lifesteal saves += slot22 atkmodifiers
execute if score lifesteal slot22 matches 1.. run execute if score character# slot22 matches 41 run scoreboard players operation lifesteal saves += marks slot19
execute if score lifesteal slot22 matches 1.. run execute if score character# slot22 matches 41 run scoreboard players operation lifesteal saves /= atkmultiplier slot19
execute if score lifesteal slot22 matches 1.. run execute if score character# slot22 matches 41 run scoreboard players operation lifesteal saves /= lifesteal slot22
execute if score ward slot19 matches 0 if score slot22bleeding booleaneffects matches 0 run execute if score lifesteal slot22 matches 1.. run execute if score character# slot22 matches 41 run scoreboard players operation slot22 hp += lifesteal saves
execute if score ward slot19 matches 0 if score lifesteal slot22 matches 1.. if score character# slot22 matches 41 at @e[name=slot22,type=armor_stand] run particle minecraft:composter ~ ~1 ~ 0.9 0.9 0.9 0.5 50
#slot 7
execute if score lifesteal slot23 matches 1.. run execute if score character# slot23 matches 41 run scoreboard players operation lifesteal saves = atk slot23
execute if score lifesteal slot23 matches 1.. run execute if score character# slot23 matches 41 run scoreboard players operation lifesteal saves += slot23 atkmodifiers
execute if score lifesteal slot23 matches 1.. run execute if score character# slot23 matches 41 run scoreboard players operation lifesteal saves += marks slot19
execute if score lifesteal slot23 matches 1.. run execute if score character# slot23 matches 41 run scoreboard players operation lifesteal saves /= atkmultiplier slot19
execute if score lifesteal slot23 matches 1.. run execute if score character# slot23 matches 41 run scoreboard players operation lifesteal saves /= lifesteal slot23
execute if score ward slot19 matches 0 if score slot23bleeding booleaneffects matches 0 run execute if score lifesteal slot23 matches 1.. run execute if score character# slot23 matches 41 run scoreboard players operation slot23 hp += lifesteal saves
execute if score ward slot19 matches 0 if score lifesteal slot23 matches 1.. if score character# slot23 matches 41 at @e[name=slot23,type=armor_stand] run particle minecraft:composter ~ ~1 ~ 0.9 0.9 0.9 0.5 50

#slot 8
execute if score lifesteal slot24 matches 1.. run execute if score character# slot24 matches 41 run scoreboard players operation lifesteal saves = atk slot24
execute if score lifesteal slot24 matches 1.. run execute if score character# slot24 matches 41 run scoreboard players operation lifesteal saves += slot24 atkmodifiers
execute if score lifesteal slot24 matches 1.. run execute if score character# slot24 matches 41 run scoreboard players operation lifesteal saves += marks slot19
execute if score lifesteal slot24 matches 1.. run execute if score character# slot24 matches 41 run scoreboard players operation lifesteal saves /= atkmultiplier slot19
execute if score lifesteal slot24 matches 1.. run execute if score character# slot24 matches 41 run scoreboard players operation lifesteal saves /= lifesteal slot24
execute if score ward slot19 matches 0 if score slot24bleeding booleaneffects matches 0 run execute if score lifesteal slot24 matches 1.. run execute if score character# slot24 matches 41 run scoreboard players operation slot24 hp += lifesteal saves
execute if score ward slot19 matches 0 if score lifesteal slot24 matches 1.. if score character# slot24 matches 41 at @e[name=slot24,type=armor_stand] run particle minecraft:composter ~ ~1 ~ 0.9 0.9 0.9 0.5 50


#lifesteal + splash
#slot 5
execute if score lifesteal slot21 matches 1.. run execute if score splash slot21 matches 1.. run execute if score character# slot21 matches 41 run scoreboard players operation lifestealsplash saves = atk slot21
execute if score lifesteal slot21 matches 1.. run execute if score splash slot21 matches 1.. run execute if score character# slot21 matches 41 run scoreboard players operation lifestealsplash saves += slot21 atkmodifiers
execute if score lifesteal slot21 matches 1.. run execute if score splash slot21 matches 1.. run execute if score character# slot21 matches 41 run scoreboard players operation lifestealsplash saves /= splash slot21
execute if score lifesteal slot21 matches 1.. run execute if score splash slot21 matches 1.. run execute if score character# slot21 matches 41 run scoreboard players operation lifestealsplash saves += marks slot18
execute if score lifesteal slot21 matches 1.. run execute if score splash slot21 matches 1.. run execute if score character# slot21 matches 41 run scoreboard players operation lifestealsplash saves /= atkmultiplier slot18
execute if score lifesteal slot21 matches 1.. run execute if score splash slot21 matches 1.. run execute if score character# slot21 matches 41 run scoreboard players operation lifestealsplash saves /= lifesteal slot21
execute if score slot18 hp matches 1.. run execute if score ward slot18 matches 0 run execute if score slot21bleeding booleaneffects matches 0 run execute if score lifesteal slot21 matches 1.. run execute if score splash slot21 matches 1.. run execute if score character# slot21 matches 41 run scoreboard players operation slot21 hp += lifestealsplash saves
execute if score lifesteal slot21 matches 1.. run execute if score splash slot21 matches 1.. run execute if score character# slot21 matches 41 run scoreboard players operation lifestealsplash saves = atk slot21
execute if score lifesteal slot21 matches 1.. run execute if score splash slot21 matches 1.. run execute if score character# slot21 matches 41 run scoreboard players operation lifestealsplash saves += slot21 atkmodifiers
execute if score lifesteal slot21 matches 1.. run execute if score splash slot21 matches 1.. run execute if score character# slot21 matches 41 run scoreboard players operation lifestealsplash saves /= splash slot21
execute if score lifesteal slot21 matches 1.. run execute if score splash slot21 matches 1.. run execute if score character# slot21 matches 41 run scoreboard players operation lifestealsplash saves += marks slot20
execute if score lifesteal slot21 matches 1.. run execute if score splash slot21 matches 1.. run execute if score character# slot21 matches 41 run scoreboard players operation lifestealsplash saves /= atkmultiplier slot20
execute if score lifesteal slot21 matches 1.. run execute if score splash slot21 matches 1.. run execute if score character# slot21 matches 41 run scoreboard players operation lifestealsplash saves /= lifesteal slot21
execute if score slot20 hp matches 1.. run execute if score ward slot20 matches 0 run execute if score slot21bleeding booleaneffects matches 0 run execute if score lifesteal slot21 matches 1.. run execute if score splash slot21 matches 1.. run execute if score character# slot21 matches 41 run scoreboard players operation slot21 hp += lifestealsplash saves
#slot 6
execute if score lifesteal slot22 matches 1.. run execute if score splash slot22 matches 1.. run execute if score character# slot22 matches 41 run scoreboard players operation lifestealsplash saves = atk slot22
execute if score lifesteal slot22 matches 1.. run execute if score splash slot22 matches 1.. run execute if score character# slot22 matches 41 run scoreboard players operation lifestealsplash saves += slot22 atkmodifiers
execute if score lifesteal slot22 matches 1.. run execute if score splash slot22 matches 1.. run execute if score character# slot22 matches 41 run scoreboard players operation lifestealsplash saves /= splash slot22
execute if score lifesteal slot22 matches 1.. run execute if score splash slot22 matches 1.. run execute if score character# slot22 matches 41 run scoreboard players operation lifestealsplash saves += marks slot18
execute if score lifesteal slot22 matches 1.. run execute if score splash slot22 matches 1.. run execute if score character# slot22 matches 41 run scoreboard players operation lifestealsplash saves /= atkmultiplier slot18
execute if score lifesteal slot22 matches 1.. run execute if score splash slot22 matches 1.. run execute if score character# slot22 matches 41 run scoreboard players operation lifestealsplash saves /= lifesteal slot22
execute if score slot18 hp matches 1.. run execute if score ward slot18 matches 0 run execute if score slot22bleeding booleaneffects matches 0 run execute if score lifesteal slot22 matches 1.. run execute if score splash slot22 matches 1.. run execute if score character# slot22 matches 41 run scoreboard players operation slot22 hp += lifestealsplash saves
execute if score lifesteal slot22 matches 1.. run execute if score splash slot22 matches 1.. run execute if score character# slot22 matches 41 run scoreboard players operation lifestealsplash saves = atk slot22
execute if score lifesteal slot22 matches 1.. run execute if score splash slot22 matches 1.. run execute if score character# slot22 matches 41 run scoreboard players operation lifestealsplash saves += slot22 atkmodifiers
execute if score lifesteal slot22 matches 1.. run execute if score splash slot22 matches 1.. run execute if score character# slot22 matches 41 run scoreboard players operation lifestealsplash saves /= splash slot22
execute if score lifesteal slot22 matches 1.. run execute if score splash slot22 matches 1.. run execute if score character# slot22 matches 41 run scoreboard players operation lifestealsplash saves += marks slot20
execute if score lifesteal slot22 matches 1.. run execute if score splash slot22 matches 1.. run execute if score character# slot22 matches 41 run scoreboard players operation lifestealsplash saves /= atkmultiplier slot20
execute if score lifesteal slot22 matches 1.. run execute if score splash slot22 matches 1.. run execute if score character# slot22 matches 41 run scoreboard players operation lifestealsplash saves /= lifesteal slot22
execute if score slot20 hp matches 1.. run execute if score ward slot20 matches 0 run execute if score slot22bleeding booleaneffects matches 0 run execute if score lifesteal slot22 matches 1.. run execute if score splash slot22 matches 1.. run execute if score character# slot22 matches 41 run scoreboard players operation slot22 hp += lifestealsplash saves
#slot 7
execute if score lifesteal slot23 matches 1.. run execute if score splash slot23 matches 1.. run execute if score character# slot23 matches 41 run scoreboard players operation lifestealsplash saves = atk slot23
execute if score lifesteal slot23 matches 1.. run execute if score splash slot23 matches 1.. run execute if score character# slot23 matches 41 run scoreboard players operation lifestealsplash saves += slot23 atkmodifiers
execute if score lifesteal slot23 matches 1.. run execute if score splash slot23 matches 1.. run execute if score character# slot23 matches 41 run scoreboard players operation lifestealsplash saves /= splash slot23
execute if score lifesteal slot23 matches 1.. run execute if score splash slot23 matches 1.. run execute if score character# slot23 matches 41 run scoreboard players operation lifestealsplash saves += marks slot18
execute if score lifesteal slot23 matches 1.. run execute if score splash slot23 matches 1.. run execute if score character# slot23 matches 41 run scoreboard players operation lifestealsplash saves /= atkmultiplier slot18
execute if score lifesteal slot23 matches 1.. run execute if score splash slot23 matches 1.. run execute if score character# slot23 matches 41 run scoreboard players operation lifestealsplash saves /= lifesteal slot23
execute if score slot18 hp matches 1.. run execute if score ward slot18 matches 0 run execute if score slot23bleeding booleaneffects matches 0 run execute if score lifesteal slot23 matches 1.. run execute if score splash slot23 matches 1.. run execute if score character# slot23 matches 41 run scoreboard players operation slot23 hp += lifestealsplash saves
execute if score lifesteal slot23 matches 1.. run execute if score splash slot23 matches 1.. run execute if score character# slot23 matches 41 run scoreboard players operation lifestealsplash saves = atk slot23
execute if score lifesteal slot23 matches 1.. run execute if score splash slot23 matches 1.. run execute if score character# slot23 matches 41 run scoreboard players operation lifestealsplash saves += slot23 atkmodifiers
execute if score lifesteal slot23 matches 1.. run execute if score splash slot23 matches 1.. run execute if score character# slot23 matches 41 run scoreboard players operation lifestealsplash saves /= splash slot23
execute if score lifesteal slot23 matches 1.. run execute if score splash slot23 matches 1.. run execute if score character# slot23 matches 41 run scoreboard players operation lifestealsplash saves += marks slot20
execute if score lifesteal slot23 matches 1.. run execute if score splash slot23 matches 1.. run execute if score character# slot23 matches 41 run scoreboard players operation lifestealsplash saves /= atkmultiplier slot20
execute if score lifesteal slot23 matches 1.. run execute if score splash slot23 matches 1.. run execute if score character# slot23 matches 41 run scoreboard players operation lifestealsplash saves /= lifesteal slot23
execute if score slot20 hp matches 1.. run execute if score ward slot20 matches 0 run execute if score slot23bleeding booleaneffects matches 0 run execute if score lifesteal slot23 matches 1.. run execute if score splash slot23 matches 1.. run execute if score character# slot23 matches 41 run scoreboard players operation slot23 hp += lifestealsplash saves
#slot 8
execute if score lifesteal slot24 matches 1.. run execute if score splash slot24 matches 1.. run execute if score character# slot24 matches 41 run scoreboard players operation lifestealsplash saves = atk slot24
execute if score lifesteal slot24 matches 1.. run execute if score splash slot24 matches 1.. run execute if score character# slot24 matches 41 run scoreboard players operation lifestealsplash saves += slot24 atkmodifiers
execute if score lifesteal slot24 matches 1.. run execute if score splash slot24 matches 1.. run execute if score character# slot24 matches 41 run scoreboard players operation lifestealsplash saves /= splash slot24
execute if score lifesteal slot24 matches 1.. run execute if score splash slot24 matches 1.. run execute if score character# slot24 matches 41 run scoreboard players operation lifestealsplash saves += marks slot18
execute if score lifesteal slot24 matches 1.. run execute if score splash slot24 matches 1.. run execute if score character# slot24 matches 41 run scoreboard players operation lifestealsplash saves /= atkmultiplier slot18
execute if score lifesteal slot24 matches 1.. run execute if score splash slot24 matches 1.. run execute if score character# slot24 matches 41 run scoreboard players operation lifestealsplash saves /= lifesteal slot24
execute if score slot18 hp matches 1.. run execute if score ward slot18 matches 0 run execute if score slot24bleeding booleaneffects matches 0 run execute if score lifesteal slot24 matches 1.. run execute if score splash slot24 matches 1.. run execute if score character# slot24 matches 41 run scoreboard players operation slot24 hp += lifestealsplash saves
execute if score lifesteal slot24 matches 1.. run execute if score splash slot24 matches 1.. run execute if score character# slot24 matches 41 run scoreboard players operation lifestealsplash saves = atk slot24
execute if score lifesteal slot24 matches 1.. run execute if score splash slot24 matches 1.. run execute if score character# slot24 matches 41 run scoreboard players operation lifestealsplash saves += slot24 atkmodifiers
execute if score lifesteal slot24 matches 1.. run execute if score splash slot24 matches 1.. run execute if score character# slot24 matches 41 run scoreboard players operation lifestealsplash saves /= splash slot24
execute if score lifesteal slot24 matches 1.. run execute if score splash slot24 matches 1.. run execute if score character# slot24 matches 41 run scoreboard players operation lifestealsplash saves += marks slot20
execute if score lifesteal slot24 matches 1.. run execute if score splash slot24 matches 1.. run execute if score character# slot24 matches 41 run scoreboard players operation lifestealsplash saves /= atkmultiplier slot20
execute if score lifesteal slot24 matches 1.. run execute if score splash slot24 matches 1.. run execute if score character# slot24 matches 41 run scoreboard players operation lifestealsplash saves /= lifesteal slot24
execute if score slot20 hp matches 1.. run execute if score ward slot20 matches 0 run execute if score slot24bleeding booleaneffects matches 0 run execute if score lifesteal slot24 matches 1.. run execute if score splash slot24 matches 1.. run execute if score character# slot24 matches 41 run scoreboard players operation slot24 hp += lifestealsplash saves

#Special Cases
execute if score ward slot19 matches ..0 run execute if score character# slot21 matches 41 if score character# slot21 matches 29 if score slot19 hp <= ripperHpBleed abilityStats run scoreboard players operation slot19bleeding booleaneffects = ripperBleed abilityStats
execute if score ward slot19 matches ..0 run execute if score character# slot22 matches 41 if score character# slot22 matches 29 if score slot19 hp <= ripperHpBleed abilityStats run scoreboard players operation slot19bleeding booleaneffects = ripperBleed abilityStats
execute if score ward slot19 matches ..0 run execute if score character# slot23 matches 41 if score character# slot23 matches 29 if score slot19 hp <= ripperHpBleed abilityStats run scoreboard players operation slot19bleeding booleaneffects = ripperBleed abilityStats
execute if score ward slot19 matches ..0 run execute if score character# slot21 matches 41 if score character# slot21 matches -8 run scoreboard players operation slot19Disease disease += zombieDisease abilityStats
execute if score ward slot19 matches ..0 run execute if score character# slot22 matches 41 if score character# slot22 matches -8 run scoreboard players operation slot19Disease disease += zombieDisease abilityStats
execute if score ward slot19 matches ..0 run execute if score character# slot23 matches 41 if score character# slot23 matches -8 run scoreboard players operation slot19Disease disease += zombieDisease abilityStats
execute if score ward slot19 matches ..0 run execute if score character# slot24 matches 41 if score character# slot24 matches -8 run scoreboard players operation slot19Disease disease += zombieDisease abilityStats


#damage + shield reset (all)
execute if score shield slot19 matches ..0 if score ward slot19 matches 0 run scoreboard players operation slot19 hp += shield slot19
execute if score ward slot19 matches 1.. run function chthree:wardslot19
execute if score shield slot19 matches ..0 run scoreboard players set shield slot19 0
execute at @e[name=slot19,type=armor_stand] run particle minecraft:crit ~ ~1 ~ 0.9 0.9 0.9 0.5 100

