tellraw @a[tag=game2] ["",{"selector":"@p[tag=p4]"},"'s Fenrir attacked Slot 1"]
#slot 5
execute if score character# slot13 matches 41 run scoreboard players operation atk1 saves = atk slot13
execute if score character# slot13 matches 41 run scoreboard players operation atk1 saves += slot13 atkmodifiers
execute if score character# slot13 matches 41 run scoreboard players operation atk1 saves += marks slot9
execute if score character# slot13 matches 41 run scoreboard players operation atk1 saves /= atkmultiplier slot9
execute if score character# slot13 matches 41 run scoreboard players operation shield slot9 -= atk1 saves
#slot 6
execute if score character# slot14 matches 41 run scoreboard players operation atk1 saves = atk slot14
execute if score character# slot14 matches 41 run scoreboard players operation atk1 saves += slot14 atkmodifiers
execute if score character# slot14 matches 41 run scoreboard players operation atk1 saves += marks slot9
execute if score character# slot14 matches 41 if score character# slot14 matches 36 unless score durationSlot13-1 fear matches 1.. unless score durationSlot14-1 fear matches 1.. unless score durationSlot15-1 fear matches 1.. unless score durationSlot16-1 fear matches 1.. run scoreboard players operation atk1 saves -= barleyLeader abilityStats
execute if score character# slot14 matches 41 run scoreboard players operation atk1 saves /= atkmultiplier slot9
execute if score character# slot14 matches 41 run scoreboard players operation shield slot9 -= atk1 saves
#slot 7
execute if score character# slot15 matches 41 run scoreboard players operation atk1 saves = atk slot15
execute if score character# slot15 matches 41 run scoreboard players operation atk1 saves += marks slot9
execute if score character# slot15 matches 41 run scoreboard players operation atk1 saves += slot15 atkmodifiers
execute if score character# slot15 matches 41 run scoreboard players operation atk1 saves /= atkmultiplier slot9
execute if score character# slot15 matches 41 run scoreboard players operation shield slot9 -= atk1 saves
#slot 8
execute if score character# slot16 matches 41 run scoreboard players operation atk1 saves = atk slot16
execute if score character# slot16 matches 41 run scoreboard players operation atk1 saves += marks slot9
execute if score character# slot16 matches 41 run scoreboard players operation atk1 saves += slot16 atkmodifiers
execute if score character# slot16 matches 41 run scoreboard players operation atk1 saves /= atkmultiplier slot9
execute if score character# slot16 matches 41 run scoreboard players operation shield slot9 -= atk1 saves

execute if score character# slot9 matches 41 run scoreboard players operation fenrirhpsave saves -= atk1 saves
execute if score character# slot10 matches 41 run scoreboard players operation fenrirhpsave saves -= atk1 saves
execute if score character# slot11 matches 41 run scoreboard players operation fenrirhpsave saves -= atk1 saves


#splash
#slot13
execute if score splash slot13 matches 1.. run execute if score character# slot13 matches 41 run scoreboard players operation splashdamage saves = atk slot13
execute if score splash slot13 matches 1.. run execute if score character# slot13 matches 41 run scoreboard players operation splashdamage saves += slot13 atkmodifiers
execute if score splash slot13 matches 1.. run execute if score character# slot13 matches 41 run scoreboard players operation splashdamage saves /= splash slot13
execute if score splash slot13 matches 1.. run execute if score character# slot13 matches 41 run scoreboard players operation splashdamage saves += marks slot10
execute if score splash slot13 matches 1.. run execute if score character# slot13 matches 41 run scoreboard players operation splashdamage saves /= atkmultiplier slot10
execute if score ward slot10 matches 0 run execute if score splash slot13 matches 1.. run execute if score character# slot13 matches 41 run scoreboard players operation shield slot10 -= splashdamage saves
execute if score ward slot10 matches 1.. run execute if score splash slot13 matches 1.. run execute if score character# slot13 matches 41 run function chtoo:wardslot10
execute if score splash slot13 matches 1.. if score character# slot13 matches 41 at @e[name=slot10,type=armor_stand] run particle minecraft:crit ~ ~1 ~ 0.9 0.9 0.9 0.5 50

#slot14
execute if score splash slot14 matches 1.. run execute if score character# slot14 matches 41 run scoreboard players operation splashdamage saves = atk slot14
execute if score splash slot14 matches 1.. run execute if score character# slot14 matches 41 run scoreboard players operation splashdamage saves += slot14 atkmodifiers
execute if score splash slot14 matches 1.. run execute if score character# slot14 matches 41 run scoreboard players operation splashdamage saves /= splash slot14
execute if score splash slot14 matches 1.. run execute if score character# slot14 matches 41 run scoreboard players operation splashdamage saves += marks slot10
execute if score splash slot14 matches 1.. run execute if score character# slot14 matches 41 run scoreboard players operation splashdamage saves /= atkmultiplier slot10
execute if score ward slot10 matches 0 run execute if score splash slot14 matches 1.. run execute if score character# slot14 matches 41 run scoreboard players operation shield slot10 -= splashdamage saves
execute if score ward slot10 matches 1.. run execute if score splash slot14 matches 1.. run execute if score character# slot14 matches 41 run function chtoo:wardslot10
execute if score splash slot14 matches 1.. if score character# slot14 matches 41 at @e[name=slot10,type=armor_stand] run particle minecraft:crit ~ ~1 ~ 0.9 0.9 0.9 0.5 50
#slot15
execute if score splash slot15 matches 1.. run execute if score character# slot15 matches 41 run scoreboard players operation splashdamage saves = atk slot15
execute if score splash slot15 matches 1.. run execute if score character# slot15 matches 41 run scoreboard players operation splashdamage saves += slot15 atkmodifiers
execute if score splash slot15 matches 1.. run execute if score character# slot15 matches 41 run scoreboard players operation splashdamage saves /= splash slot15
execute if score splash slot15 matches 1.. run execute if score character# slot15 matches 41 run scoreboard players operation splashdamage saves += marks slot10
execute if score splash slot15 matches 1.. run execute if score character# slot15 matches 41 run scoreboard players operation splashdamage saves /= atkmultiplier slot10
execute if score ward slot10 matches 0 run execute if score splash slot15 matches 1.. run execute if score character# slot15 matches 41 run scoreboard players operation shield slot10 -= splashdamage saves
execute if score ward slot10 matches 1.. run execute if score splash slot15 matches 1.. run execute if score character# slot15 matches 41 run function chtoo:wardslot10
execute if score splash slot15 matches 1.. if score character# slot15 matches 41 at @e[name=slot10,type=armor_stand] run particle minecraft:crit ~ ~1 ~ 0.9 0.9 0.9 0.5 50
#slot16
execute if score splash slot16 matches 1.. run execute if score character# slot16 matches 41 run scoreboard players operation splashdamage saves = atk slot16
execute if score splash slot16 matches 1.. run execute if score character# slot16 matches 41 run scoreboard players operation splashdamage saves += slot16 atkmodifiers
execute if score splash slot16 matches 1.. run execute if score character# slot16 matches 41 run scoreboard players operation splashdamage saves /= splash slot16
execute if score splash slot16 matches 1.. run execute if score character# slot16 matches 41 run scoreboard players operation splashdamage saves += marks slot10
execute if score splash slot16 matches 1.. run execute if score character# slot16 matches 41 run scoreboard players operation splashdamage saves /= atkmultiplier slot10
execute if score ward slot10 matches 0 run execute if score splash slot16 matches 1.. run execute if score character# slot16 matches 41 run scoreboard players operation shield slot10 -= splashdamage saves
execute if score ward slot10 matches 1.. run execute if score splash slot16 matches 1.. run execute if score character# slot16 matches 41 run function chtoo:wardslot10
execute if score splash slot16 matches 1.. if score character# slot16 matches 41 at @e[name=slot10,type=armor_stand] run particle minecraft:crit ~ ~1 ~ 0.9 0.9 0.9 0.5 50
#damage + shield reset (all)
execute if score shield slot10 matches ..0 if score ward slot10 matches 0 run scoreboard players operation slot10 hp += shield slot10
execute if score shield slot10 matches ..0 run scoreboard players set shield slot10 0


#lifesteal
#slot 5
execute if score lifesteal slot13 matches 1.. run execute if score character# slot13 matches 41 run scoreboard players operation lifesteal saves = atk slot13
execute if score lifesteal slot13 matches 1.. run execute if score character# slot13 matches 41 run scoreboard players operation lifesteal saves += slot13 atkmodifiers
execute if score lifesteal slot13 matches 1.. run execute if score character# slot13 matches 41 run scoreboard players operation lifesteal saves += marks slot9
execute if score lifesteal slot13 matches 1.. run execute if score character# slot13 matches 41 run scoreboard players operation lifesteal saves /= atkmultiplier slot9
execute if score lifesteal slot13 matches 1.. run execute if score character# slot13 matches 41 run scoreboard players operation lifesteal saves /= lifesteal slot13
execute if score ward slot9 matches 0 if score slot13bleeding booleaneffects matches 0 run execute if score lifesteal slot13 matches 1.. run execute if score character# slot13 matches 41 run scoreboard players operation slot13 hp += lifesteal saves
execute if score ward slot9 matches 0 if score lifesteal slot13 matches 1.. if score character# slot13 matches 41 at @e[name=slot13,type=armor_stand] run particle minecraft:composter ~ ~1 ~ 0.9 0.9 0.9 0.5 50

#slot 6
execute if score lifesteal slot14 matches 1.. run execute if score character# slot14 matches 41 run scoreboard players operation lifesteal saves = atk slot14
execute if score lifesteal slot14 matches 1.. run execute if score character# slot14 matches 41 run scoreboard players operation lifesteal saves += slot14 atkmodifiers
execute if score lifesteal slot14 matches 1.. run execute if score character# slot14 matches 41 run scoreboard players operation lifesteal saves += marks slot9
execute if score lifesteal slot14 matches 1.. run execute if score character# slot14 matches 41 run scoreboard players operation lifesteal saves /= atkmultiplier slot9
execute if score lifesteal slot14 matches 1.. run execute if score character# slot14 matches 41 run scoreboard players operation lifesteal saves /= lifesteal slot14
execute if score ward slot9 matches 0 if score slot14bleeding booleaneffects matches 0 run execute if score lifesteal slot14 matches 1.. run execute if score character# slot14 matches 41 run scoreboard players operation slot14 hp += lifesteal saves
execute if score ward slot9 matches 0 if score lifesteal slot14 matches 1.. if score character# slot14 matches 41 at @e[name=slot14,type=armor_stand] run particle minecraft:composter ~ ~1 ~ 0.9 0.9 0.9 0.5 50
#slot 7
execute if score lifesteal slot15 matches 1.. run execute if score character# slot15 matches 41 run scoreboard players operation lifesteal saves = atk slot15
execute if score lifesteal slot15 matches 1.. run execute if score character# slot15 matches 41 run scoreboard players operation lifesteal saves += slot15 atkmodifiers
execute if score lifesteal slot15 matches 1.. run execute if score character# slot15 matches 41 run scoreboard players operation lifesteal saves += marks slot9
execute if score lifesteal slot15 matches 1.. run execute if score character# slot15 matches 41 run scoreboard players operation lifesteal saves /= atkmultiplier slot9
execute if score lifesteal slot15 matches 1.. run execute if score character# slot15 matches 41 run scoreboard players operation lifesteal saves /= lifesteal slot15
execute if score ward slot9 matches 0 if score slot15bleeding booleaneffects matches 0 run execute if score lifesteal slot15 matches 1.. run execute if score character# slot15 matches 41 run scoreboard players operation slot15 hp += lifesteal saves
execute if score ward slot9 matches 0 if score lifesteal slot15 matches 1.. if score character# slot15 matches 41 at @e[name=slot15,type=armor_stand] run particle minecraft:composter ~ ~1 ~ 0.9 0.9 0.9 0.5 50
#slot 8
execute if score lifesteal slot16 matches 1.. run execute if score character# slot16 matches 41 run scoreboard players operation lifesteal saves = atk slot16
execute if score lifesteal slot16 matches 1.. run execute if score character# slot16 matches 41 run scoreboard players operation lifesteal saves += slot16 atkmodifiers
execute if score lifesteal slot16 matches 1.. run execute if score character# slot16 matches 41 run scoreboard players operation lifesteal saves += marks slot9
execute if score lifesteal slot16 matches 1.. run execute if score character# slot16 matches 41 run scoreboard players operation lifesteal saves /= atkmultiplier slot9
execute if score lifesteal slot16 matches 1.. run execute if score character# slot16 matches 41 run scoreboard players operation lifesteal saves /= lifesteal slot16
execute if score ward slot9 matches 0 if score slot16bleeding booleaneffects matches 0 run execute if score lifesteal slot16 matches 1.. run execute if score character# slot16 matches 41 run scoreboard players operation slot16 hp += lifesteal saves
execute if score ward slot9 matches 0 if score lifesteal slot16 matches 1.. if score character# slot16 matches 41 at @e[name=slot16,type=armor_stand] run particle minecraft:composter ~ ~1 ~ 0.9 0.9 0.9 0.5 50

#lifesteal + splash
#slot 5
execute if score lifesteal slot13 matches 1.. run execute if score splash slot13 matches 1.. run execute if score character# slot13 matches 41 run scoreboard players operation lifestealsplash saves = atk slot13
execute if score lifesteal slot13 matches 1.. run execute if score splash slot13 matches 1.. run execute if score character# slot13 matches 41 run scoreboard players operation lifestealsplash saves += slot13 atkmodifiers
execute if score lifesteal slot13 matches 1.. run execute if score splash slot13 matches 1.. run execute if score character# slot13 matches 41 run scoreboard players operation lifestealsplash saves /= splash slot13
execute if score lifesteal slot13 matches 1.. run execute if score splash slot13 matches 1.. run execute if score character# slot13 matches 41 run scoreboard players operation lifestealsplash saves += marks slot10
execute if score lifesteal slot13 matches 1.. run execute if score splash slot13 matches 1.. run execute if score character# slot13 matches 41 run scoreboard players operation lifestealsplash saves /= atkmultiplier slot10
execute if score lifesteal slot13 matches 1.. run execute if score splash slot13 matches 1.. run execute if score character# slot13 matches 41 run scoreboard players operation lifestealsplash saves /= lifesteal slot13
execute if score slot10 hp matches 1.. run execute if score ward slot10 matches 0 run execute if score slot13bleeding booleaneffects matches 0 run execute if score lifesteal slot13 matches 1.. run execute if score splash slot13 matches 1.. run execute if score character# slot13 matches 41 run scoreboard players operation slot13 hp += lifestealsplash saves
#slot 6
execute if score lifesteal slot14 matches 1.. run execute if score splash slot14 matches 1.. run execute if score character# slot14 matches 41 run scoreboard players operation lifestealsplash saves = atk slot14
execute if score lifesteal slot14 matches 1.. run execute if score splash slot14 matches 1.. run execute if score character# slot14 matches 41 run scoreboard players operation lifestealsplash saves += slot14 atkmodifiers
execute if score lifesteal slot14 matches 1.. run execute if score splash slot14 matches 1.. run execute if score character# slot14 matches 41 run scoreboard players operation lifestealsplash saves /= splash slot14
execute if score lifesteal slot14 matches 1.. run execute if score splash slot14 matches 1.. run execute if score character# slot14 matches 41 run scoreboard players operation lifestealsplash saves += marks slot10
execute if score lifesteal slot14 matches 1.. run execute if score splash slot14 matches 1.. run execute if score character# slot14 matches 41 run scoreboard players operation lifestealsplash saves /= atkmultiplier slot10
execute if score lifesteal slot14 matches 1.. run execute if score splash slot14 matches 1.. run execute if score character# slot14 matches 41 run scoreboard players operation lifestealsplash saves /= lifesteal slot14
execute if score slot10 hp matches 1.. run execute if score ward slot10 matches 0 run execute if score slot14bleeding booleaneffects matches 0 run execute if score lifesteal slot14 matches 1.. run execute if score splash slot14 matches 1.. run execute if score character# slot14 matches 41 run scoreboard players operation slot14 hp += lifestealsplash saves
#slot 7
execute if score lifesteal slot15 matches 1.. run execute if score splash slot15 matches 1.. run execute if score character# slot15 matches 41 run scoreboard players operation lifestealsplash saves = atk slot15
execute if score lifesteal slot15 matches 1.. run execute if score splash slot15 matches 1.. run execute if score character# slot15 matches 41 run scoreboard players operation lifestealsplash saves += slot15 atkmodifiers
execute if score lifesteal slot15 matches 1.. run execute if score splash slot15 matches 1.. run execute if score character# slot15 matches 41 run scoreboard players operation lifestealsplash saves /= splash slot15
execute if score lifesteal slot15 matches 1.. run execute if score splash slot15 matches 1.. run execute if score character# slot15 matches 41 run scoreboard players operation lifestealsplash saves += marks slot10
execute if score lifesteal slot15 matches 1.. run execute if score splash slot15 matches 1.. run execute if score character# slot15 matches 41 run scoreboard players operation lifestealsplash saves /= atkmultiplier slot10
execute if score lifesteal slot15 matches 1.. run execute if score splash slot15 matches 1.. run execute if score character# slot15 matches 41 run scoreboard players operation lifestealsplash saves /= lifesteal slot15
execute if score slot10 hp matches 1.. run execute if score ward slot10 matches 0 run execute if score slot15bleeding booleaneffects matches 0 run execute if score lifesteal slot15 matches 1.. run execute if score splash slot15 matches 1.. run execute if score character# slot15 matches 41 run scoreboard players operation slot15 hp += lifestealsplash saves
#slot 8
execute if score lifesteal slot16 matches 1.. run execute if score splash slot16 matches 1.. run execute if score character# slot16 matches 41 run scoreboard players operation lifestealsplash saves = atk slot16
execute if score lifesteal slot16 matches 1.. run execute if score splash slot16 matches 1.. run execute if score character# slot16 matches 41 run scoreboard players operation lifestealsplash saves += slot16 atkmodifiers
execute if score lifesteal slot16 matches 1.. run execute if score splash slot16 matches 1.. run execute if score character# slot16 matches 41 run scoreboard players operation lifestealsplash saves /= splash slot16
execute if score lifesteal slot16 matches 1.. run execute if score splash slot16 matches 1.. run execute if score character# slot16 matches 41 run scoreboard players operation lifestealsplash saves += marks slot10
execute if score lifesteal slot16 matches 1.. run execute if score splash slot16 matches 1.. run execute if score character# slot16 matches 41 run scoreboard players operation lifestealsplash saves /= atkmultiplier slot10
execute if score lifesteal slot16 matches 1.. run execute if score splash slot16 matches 1.. run execute if score character# slot16 matches 41 run scoreboard players operation lifestealsplash saves /= lifesteal slot16
execute if score slot10 hp matches 1.. run execute if score ward slot10 matches 0 run execute if score slot16bleeding booleaneffects matches 0 run execute if score lifesteal slot16 matches 1.. run execute if score splash slot16 matches 1.. run execute if score character# slot16 matches 41 run scoreboard players operation slot16 hp += lifestealsplash saves

#Special Cases
execute if score ward slot9 matches ..0 run execute if score character# slot13 matches 41 if score character# slot13 matches 29 if score slot9 hp <= ripperHpBleed abilityStats run scoreboard players operation slot9bleeding booleaneffects = ripperBleed abilityStats
execute if score ward slot9 matches ..0 run execute if score character# slot14 matches 41 if score character# slot14 matches 29 if score slot9 hp <= ripperHpBleed abilityStats run scoreboard players operation slot9bleeding booleaneffects = ripperBleed abilityStats
execute if score ward slot9 matches ..0 run execute if score character# slot15 matches 41 if score character# slot15 matches 29 if score slot9 hp <= ripperHpBleed abilityStats run scoreboard players operation slot9bleeding booleaneffects = ripperBleed abilityStats
execute if score ward slot9 matches ..0 run execute if score character# slot13 matches 41 if score character# slot13 matches -8 run scoreboard players operation slot9Disease disease += zombieDisease abilityStats
execute if score ward slot9 matches ..0 run execute if score character# slot14 matches 41 if score character# slot14 matches -8 run scoreboard players operation slot9Disease disease += zombieDisease abilityStats
execute if score ward slot9 matches ..0 run execute if score character# slot15 matches 41 if score character# slot15 matches -8 run scoreboard players operation slot9Disease disease += zombieDisease abilityStats
execute if score ward slot9 matches ..0 run execute if score character# slot16 matches 41 if score character# slot16 matches -8 run scoreboard players operation slot9Disease disease += zombieDisease abilityStats


#damage + shield reset (all)
execute if score shield slot9 matches ..0 if score ward slot9 matches 0 run scoreboard players operation slot9 hp += shield slot9
execute if score ward slot9 matches 1.. run function chtoo:wardslot9
execute if score shield slot9 matches ..0 run scoreboard players set shield slot9 0
execute at @e[name=slot9,type=armor_stand] run particle minecraft:crit ~ ~1 ~ 0.9 0.9 0.9 0.5 100



