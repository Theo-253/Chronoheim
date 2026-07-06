
#basic attack functions
tellraw @a[tag=game2] ["",{"selector":"@p[tag=p3]"},"'s Fenrir attacked Slot 16"]
#slot 5
execute if score character# slot9 matches 41 run scoreboard players operation atk1 saves = atk slot9
execute if score character# slot9 matches 41 run scoreboard players operation atk1 saves += slot9 atkmodifiers
execute if score character# slot9 matches 41 run scoreboard players operation atk1 saves += marks slot16
execute if score character# slot9 matches 41 run scoreboard players operation atk1 saves /= atkmultiplier slot16
execute if score character# slot9 matches 41 run scoreboard players operation shield slot16 -= atk1 saves
#slot 6
execute if score character# slot10 matches 41 run scoreboard players operation atk1 saves = atk slot10
execute if score character# slot10 matches 41 run scoreboard players operation atk1 saves += slot10 atkmodifiers
execute if score character# slot10 matches 41 run scoreboard players operation atk1 saves += marks slot16
execute if score character# slot10 matches 41 if score character# slot10 matches 36 run execute unless score durationSlot9-8 fear matches 1.. unless score durationSlot10-8 fear matches 1.. unless score durationSlot11-8 fear matches 1.. unless score durationSlot12-8 fear matches 1.. run scoreboard players operation atk1 saves -= barleyLeader abilityStats
execute if score character# slot10 matches 41 run scoreboard players operation atk1 saves /= atkmultiplier slot16
execute if score character# slot10 matches 41 run scoreboard players operation shield slot16 -= atk1 saves
#slot 7
execute if score character# slot11 matches 41 run scoreboard players operation atk1 saves = atk slot11
execute if score character# slot11 matches 41 run scoreboard players operation atk1 saves += marks slot16
execute if score character# slot11 matches 41 run scoreboard players operation atk1 saves += slot11 atkmodifiers
execute if score character# slot11 matches 41 run scoreboard players operation atk1 saves /= atkmultiplier slot16
execute if score character# slot11 matches 41 run scoreboard players operation shield slot16 -= atk1 saves
#slot 8
execute if score character# slot12 matches 41 run scoreboard players operation atk1 saves = atk slot12
execute if score character# slot12 matches 41 run scoreboard players operation atk1 saves += marks slot16
execute if score character# slot12 matches 41 run scoreboard players operation atk1 saves += slot12 atkmodifiers
execute if score character# slot12 matches 41 run scoreboard players operation atk1 saves /= atkmultiplier slot16
execute if score character# slot12 matches 41 run scoreboard players operation shield slot16 -= atk1 saves

execute if score character# slot13 matches 41 run scoreboard players operation fenrirhpsave2 saves -= atk1 saves
execute if score character# slot14 matches 41 run scoreboard players operation fenrirhpsave2 saves -= atk1 saves
execute if score character# slot15 matches 41 run scoreboard players operation fenrirhpsave2 saves -= atk1 saves

#splash
#slot9
execute if score splash slot9 matches 1.. run execute if score character# slot9 matches 41 run scoreboard players operation splashdamage saves = atk slot9
execute if score splash slot9 matches 1.. run execute if score character# slot9 matches 41 run scoreboard players operation splashdamage saves += slot9 atkmodifiers
execute if score splash slot9 matches 1.. run execute if score character# slot9 matches 41 run scoreboard players operation splashdamage saves /= splash slot9
execute if score splash slot9 matches 1.. run execute if score character# slot9 matches 41 run scoreboard players operation splashdamage saves += marks slot15
execute if score splash slot9 matches 1.. run execute if score character# slot9 matches 41 run scoreboard players operation splashdamage saves /= atkmultiplier slot15
execute if score ward slot15 matches 0 run execute if score splash slot9 matches 1.. run execute if score character# slot9 matches 41 run scoreboard players operation shield slot15 -= splashdamage saves
execute if score ward slot15 matches 1.. run execute if score splash slot9 matches 1.. run execute if score character# slot9 matches 41 run function chtoo:wardslot15
execute if score splash slot9 matches 1.. if score character# slot9 matches 41 at @e[name=slot15,type=armor_stand] run particle minecraft:crit ~ ~1 ~ 0.9 0.9 0.9 0.5 50
#slot10
execute if score splash slot10 matches 1.. run execute if score character# slot10 matches 41 run scoreboard players operation splashdamage saves = atk slot10
execute if score splash slot10 matches 1.. run execute if score character# slot10 matches 41 run scoreboard players operation splashdamage saves += slot10 atkmodifiers
execute if score splash slot10 matches 1.. run execute if score character# slot10 matches 41 run scoreboard players operation splashdamage saves /= splash slot10
execute if score splash slot10 matches 1.. run execute if score character# slot10 matches 41 run scoreboard players operation splashdamage saves += marks slot15
execute if score splash slot10 matches 1.. run execute if score character# slot10 matches 41 run scoreboard players operation splashdamage saves /= atkmultiplier slot15
execute if score ward slot15 matches 0 run execute if score splash slot10 matches 1.. run execute if score character# slot10 matches 41 run scoreboard players operation shield slot15 -= splashdamage saves
execute if score ward slot15 matches 1.. run execute if score splash slot10 matches 1.. run execute if score character# slot10 matches 41 run function chtoo:wardslot15
execute if score splash slot10 matches 1.. if score character# slot10 matches 41 at @e[name=slot15,type=armor_stand] run particle minecraft:crit ~ ~1 ~ 0.9 0.9 0.9 0.5 50
#slot11
execute if score splash slot11 matches 1.. run execute if score character# slot11 matches 41 run scoreboard players operation splashdamage saves = atk slot11
execute if score splash slot11 matches 1.. run execute if score character# slot11 matches 41 run scoreboard players operation splashdamage saves += slot11 atkmodifiers
execute if score splash slot11 matches 1.. run execute if score character# slot11 matches 41 run scoreboard players operation splashdamage saves /= splash slot11
execute if score splash slot11 matches 1.. run execute if score character# slot11 matches 41 run scoreboard players operation splashdamage saves += marks slot15
execute if score splash slot11 matches 1.. run execute if score character# slot11 matches 41 run scoreboard players operation splashdamage saves /= atkmultiplier slot15
execute if score ward slot15 matches 0 run execute if score splash slot11 matches 1.. run execute if score character# slot11 matches 41 run scoreboard players operation shield slot15 -= splashdamage saves
execute if score ward slot15 matches 1.. run execute if score splash slot11 matches 1.. run execute if score character# slot11 matches 41 run function chtoo:wardslot15
execute if score splash slot11 matches 1.. if score character# slot11 matches 41 at @e[name=slot15,type=armor_stand] run particle minecraft:crit ~ ~1 ~ 0.9 0.9 0.9 0.5 50
#slot12
execute if score splash slot12 matches 1.. run execute if score character# slot12 matches 41 run scoreboard players operation splashdamage saves = atk slot12
execute if score splash slot12 matches 1.. run execute if score character# slot12 matches 41 run scoreboard players operation splashdamage saves += slot12 atkmodifiers
execute if score splash slot12 matches 1.. run execute if score character# slot12 matches 41 run scoreboard players operation splashdamage saves /= splash slot12
execute if score splash slot12 matches 1.. run execute if score character# slot12 matches 41 run scoreboard players operation splashdamage saves += marks slot15
execute if score splash slot12 matches 1.. run execute if score character# slot12 matches 41 run scoreboard players operation splashdamage saves /= atkmultiplier slot15
execute if score ward slot15 matches 0 run execute if score splash slot12 matches 1.. run execute if score character# slot12 matches 41 run scoreboard players operation shield slot15 -= splashdamage saves
execute if score ward slot15 matches 1.. run execute if score splash slot12 matches 1.. run execute if score character# slot12 matches 41 run function chtoo:wardslot15
execute if score splash slot12 matches 1.. if score character# slot12 matches 41 at @e[name=slot15,type=armor_stand] run particle minecraft:crit ~ ~1 ~ 0.9 0.9 0.9 0.5 50
#damage + shield reset (all)
execute if score shield slot15 matches ..0 if score ward slot15 matches 0 run scoreboard players operation slot15 hp += shield slot15
execute if score shield slot15 matches ..0 run scoreboard players set shield slot15 0


#lifesteal
#slot 5
execute if score lifesteal slot9 matches 1.. run execute if score character# slot9 matches 41 run scoreboard players operation lifesteal saves = atk slot9
execute if score lifesteal slot9 matches 1.. run execute if score character# slot9 matches 41 run scoreboard players operation lifesteal saves += slot9 atkmodifiers
execute if score lifesteal slot9 matches 1.. run execute if score character# slot9 matches 41 run scoreboard players operation lifesteal saves += marks slot16
execute if score lifesteal slot9 matches 1.. run execute if score character# slot9 matches 41 run scoreboard players operation lifesteal saves /= atkmultiplier slot16
execute if score lifesteal slot9 matches 1.. run execute if score character# slot9 matches 41 run scoreboard players operation lifesteal saves /= lifesteal slot9
execute if score ward slot16 matches 0 if score slot9bleeding booleaneffects matches 0 run execute if score lifesteal slot9 matches 1.. run execute if score character# slot9 matches 41 run scoreboard players operation slot9 hp += lifesteal saves
execute if score ward slot16 matches 0 if score lifesteal slot9 matches 1.. if score character# slot9 matches 41 at @e[name=slot9,type=armor_stand] run particle minecraft:composter ~ ~1 ~ 0.9 0.9 0.9 0.5 50
#slot 6
execute if score lifesteal slot10 matches 1.. run execute if score character# slot10 matches 41 run scoreboard players operation lifesteal saves = atk slot10
execute if score lifesteal slot10 matches 1.. run execute if score character# slot10 matches 41 run scoreboard players operation lifesteal saves += slot10 atkmodifiers
execute if score lifesteal slot10 matches 1.. run execute if score character# slot10 matches 41 run scoreboard players operation lifesteal saves += marks slot16
execute if score lifesteal slot10 matches 1.. run execute if score character# slot10 matches 41 run scoreboard players operation lifesteal saves /= atkmultiplier slot16
execute if score lifesteal slot10 matches 1.. run execute if score character# slot10 matches 41 run scoreboard players operation lifesteal saves /= lifesteal slot10
execute if score ward slot16 matches 0 if score slot10bleeding booleaneffects matches 0 run execute if score lifesteal slot10 matches 1.. run execute if score character# slot10 matches 41 run scoreboard players operation slot10 hp += lifesteal saves
execute if score ward slot16 matches 0 if score lifesteal slot10 matches 1.. if score character# slot10 matches 41 at @e[name=slot10,type=armor_stand] run particle minecraft:composter ~ ~1 ~ 0.9 0.9 0.9 0.5 50
#slot 7
execute if score lifesteal slot11 matches 1.. run execute if score character# slot11 matches 41 run scoreboard players operation lifesteal saves = atk slot11
execute if score lifesteal slot11 matches 1.. run execute if score character# slot11 matches 41 run scoreboard players operation lifesteal saves += slot11 atkmodifiers
execute if score lifesteal slot11 matches 1.. run execute if score character# slot11 matches 41 run scoreboard players operation lifesteal saves += marks slot16
execute if score lifesteal slot11 matches 1.. run execute if score character# slot11 matches 41 run scoreboard players operation lifesteal saves /= atkmultiplier slot16
execute if score lifesteal slot11 matches 1.. run execute if score character# slot11 matches 41 run scoreboard players operation lifesteal saves /= lifesteal slot11
execute if score ward slot16 matches 0 if score slot11bleeding booleaneffects matches 0 run execute if score lifesteal slot11 matches 1.. run execute if score character# slot11 matches 41 run scoreboard players operation slot11 hp += lifesteal saves
execute if score ward slot16 matches 0 if score lifesteal slot11 matches 1.. if score character# slot11 matches 41 at @e[name=slot11,type=armor_stand] run particle minecraft:composter ~ ~1 ~ 0.9 0.9 0.9 0.5 50
#slot 8
execute if score lifesteal slot12 matches 1.. run execute if score character# slot12 matches 41 run scoreboard players operation lifesteal saves = atk slot12
execute if score lifesteal slot12 matches 1.. run execute if score character# slot12 matches 41 run scoreboard players operation lifesteal saves += slot12 atkmodifiers
execute if score lifesteal slot12 matches 1.. run execute if score character# slot12 matches 41 run scoreboard players operation lifesteal saves += marks slot16
execute if score lifesteal slot12 matches 1.. run execute if score character# slot12 matches 41 run scoreboard players operation lifesteal saves /= atkmultiplier slot16
execute if score lifesteal slot12 matches 1.. run execute if score character# slot12 matches 41 run scoreboard players operation lifesteal saves /= lifesteal slot12
execute if score ward slot16 matches 0 if score slot12bleeding booleaneffects matches 0 run execute if score lifesteal slot12 matches 1.. run execute if score character# slot12 matches 41 run scoreboard players operation slot12 hp += lifesteal saves
execute if score ward slot16 matches 0 if score lifesteal slot12 matches 1.. if score character# slot12 matches 41 at @e[name=slot12,type=armor_stand] run particle minecraft:composter ~ ~1 ~ 0.9 0.9 0.9 0.5 50


#lifesteal + splash
#slot 5
execute if score lifesteal slot9 matches 1.. run execute if score splash slot9 matches 1.. run execute if score character# slot9 matches 41 run scoreboard players operation lifestealsplash saves = atk slot9
execute if score lifesteal slot9 matches 1.. run execute if score splash slot9 matches 1.. run execute if score character# slot9 matches 41 run scoreboard players operation lifestealsplash saves += slot9 atkmodifiers
execute if score lifesteal slot9 matches 1.. run execute if score splash slot9 matches 1.. run execute if score character# slot9 matches 41 run scoreboard players operation lifestealsplash saves /= splash slot9
execute if score lifesteal slot9 matches 1.. run execute if score splash slot9 matches 1.. run execute if score character# slot9 matches 41 run scoreboard players operation lifestealsplash saves += marks slot15
execute if score lifesteal slot9 matches 1.. run execute if score splash slot9 matches 1.. run execute if score character# slot9 matches 41 run scoreboard players operation lifestealsplash saves /= atkmultiplier slot15
execute if score lifesteal slot9 matches 1.. run execute if score splash slot9 matches 1.. run execute if score character# slot9 matches 41 run scoreboard players operation lifestealsplash saves /= lifesteal slot9
execute if score slot15 hp matches 1.. run execute if score ward slot15 matches 0 run execute if score slot9bleeding booleaneffects matches 0 run execute if score lifesteal slot9 matches 1.. run execute if score splash slot9 matches 1.. run execute if score character# slot9 matches 41 run scoreboard players operation slot9 hp += lifestealsplash saves
#slot 6
execute if score lifesteal slot10 matches 1.. run execute if score splash slot10 matches 1.. run execute if score character# slot10 matches 41 run scoreboard players operation lifestealsplash saves = atk slot10
execute if score lifesteal slot10 matches 1.. run execute if score splash slot10 matches 1.. run execute if score character# slot10 matches 41 run scoreboard players operation lifestealsplash saves += slot10 atkmodifiers
execute if score lifesteal slot10 matches 1.. run execute if score splash slot10 matches 1.. run execute if score character# slot10 matches 41 run scoreboard players operation lifestealsplash saves /= splash slot10
execute if score lifesteal slot10 matches 1.. run execute if score splash slot10 matches 1.. run execute if score character# slot10 matches 41 run scoreboard players operation lifestealsplash saves += marks slot15
execute if score lifesteal slot10 matches 1.. run execute if score splash slot10 matches 1.. run execute if score character# slot10 matches 41 run scoreboard players operation lifestealsplash saves /= atkmultiplier slot15
execute if score lifesteal slot10 matches 1.. run execute if score splash slot10 matches 1.. run execute if score character# slot10 matches 41 run scoreboard players operation lifestealsplash saves /= lifesteal slot10
execute if score slot15 hp matches 1.. run execute if score ward slot15 matches 0 run execute if score slot10bleeding booleaneffects matches 0 run execute if score lifesteal slot10 matches 1.. run execute if score splash slot10 matches 1.. run execute if score character# slot10 matches 41 run scoreboard players operation slot10 hp += lifestealsplash saves
#slot 7
execute if score lifesteal slot11 matches 1.. run execute if score splash slot11 matches 1.. run execute if score character# slot11 matches 41 run scoreboard players operation lifestealsplash saves = atk slot11
execute if score lifesteal slot11 matches 1.. run execute if score splash slot11 matches 1.. run execute if score character# slot11 matches 41 run scoreboard players operation lifestealsplash saves += slot11 atkmodifiers
execute if score lifesteal slot11 matches 1.. run execute if score splash slot11 matches 1.. run execute if score character# slot11 matches 41 run scoreboard players operation lifestealsplash saves /= splash slot11
execute if score lifesteal slot11 matches 1.. run execute if score splash slot11 matches 1.. run execute if score character# slot11 matches 41 run scoreboard players operation lifestealsplash saves += marks slot15
execute if score lifesteal slot11 matches 1.. run execute if score splash slot11 matches 1.. run execute if score character# slot11 matches 41 run scoreboard players operation lifestealsplash saves /= atkmultiplier slot15
execute if score lifesteal slot11 matches 1.. run execute if score splash slot11 matches 1.. run execute if score character# slot11 matches 41 run scoreboard players operation lifestealsplash saves /= lifesteal slot11
execute if score slot15 hp matches 1.. run execute if score ward slot15 matches 0 run execute if score slot11bleeding booleaneffects matches 0 run execute if score lifesteal slot11 matches 1.. run execute if score splash slot11 matches 1.. run execute if score character# slot11 matches 41 run scoreboard players operation slot11 hp += lifestealsplash saves
#slot 8
execute if score lifesteal slot12 matches 1.. run execute if score splash slot12 matches 1.. run execute if score character# slot12 matches 41 run scoreboard players operation lifestealsplash saves = atk slot12
execute if score lifesteal slot12 matches 1.. run execute if score splash slot12 matches 1.. run execute if score character# slot12 matches 41 run scoreboard players operation lifestealsplash saves += slot12 atkmodifiers
execute if score lifesteal slot12 matches 1.. run execute if score splash slot12 matches 1.. run execute if score character# slot12 matches 41 run scoreboard players operation lifestealsplash saves /= splash slot12
execute if score lifesteal slot12 matches 1.. run execute if score splash slot12 matches 1.. run execute if score character# slot12 matches 41 run scoreboard players operation lifestealsplash saves += marks slot15
execute if score lifesteal slot12 matches 1.. run execute if score splash slot12 matches 1.. run execute if score character# slot12 matches 41 run scoreboard players operation lifestealsplash saves /= atkmultiplier slot15
execute if score lifesteal slot12 matches 1.. run execute if score splash slot12 matches 1.. run execute if score character# slot12 matches 41 run scoreboard players operation lifestealsplash saves /= lifesteal slot12
execute if score slot15 hp matches 1.. run execute if score ward slot15 matches 0 run execute if score slot12bleeding booleaneffects matches 0 run execute if score lifesteal slot12 matches 1.. run execute if score splash slot12 matches 1.. run execute if score character# slot12 matches 41 run scoreboard players operation slot12 hp += lifestealsplash saves

#Special Cases
execute if score ward slot16 matches ..0 run execute if score character# slot9 matches 41 if score character# slot9 matches 29 if score slot16 hp <= ripperHpBleed abilityStats run scoreboard players operation slot16bleeding booleaneffects = ripperBleed abilityStats
execute if score ward slot16 matches ..0 run execute if score character# slot10 matches 41 if score character# slot10 matches 29 if score slot16 hp <= ripperHpBleed abilityStats run scoreboard players operation slot16bleeding booleaneffects = ripperBleed abilityStats
execute if score ward slot16 matches ..0 run execute if score character# slot11 matches 41 if score character# slot11 matches 29 if score slot16 hp <= ripperHpBleed abilityStats run scoreboard players operation slot16bleeding booleaneffects = ripperBleed abilityStats
execute if score ward slot16 matches ..0 run execute if score character# slot9 matches 41 if score character# slot9 matches -8 run scoreboard players operation slot16Disease disease += zombieDisease abilityStats
execute if score ward slot16 matches ..0 run execute if score character# slot10 matches 41 if score character# slot10 matches -8 run scoreboard players operation slot16Disease disease += zombieDisease abilityStats
execute if score ward slot16 matches ..0 run execute if score character# slot11 matches 41 if score character# slot11 matches -8 run scoreboard players operation slot16Disease disease += zombieDisease abilityStats
execute if score ward slot16 matches ..0 run execute if score character# slot12 matches 41 if score character# slot12 matches -8 run scoreboard players operation slot16Disease disease += zombieDisease abilityStats

#damage + shield reset (all)
execute if score shield slot16 matches ..0 if score ward slot16 matches 0 run scoreboard players operation slot16 hp += shield slot16
execute if score ward slot16 matches 1.. run function chtoo:wardslot16
execute if score shield slot16 matches ..0 run scoreboard players set shield slot16 0
execute at @e[name=slot16,type=armor_stand] run particle minecraft:crit ~ ~1 ~ 0.9 0.9 0.9 0.5 100
