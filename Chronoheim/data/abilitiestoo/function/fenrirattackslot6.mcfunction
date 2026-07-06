#basic attack functions
tellraw @a[tag=game2] ["",{"selector":"@p[tag=p3]"},"'s Fenrir attacked Slot 14"]
#slot 1
execute if score character# slot9 matches 41 run scoreboard players operation atk1 saves = atk slot9
execute if score character# slot9 matches 41 run scoreboard players operation atk1 saves += slot9 atkmodifiers
execute if score character# slot9 matches 41 run scoreboard players operation atk1 saves += marks slot14
execute if score character# slot9 matches 41 if score character# slot9 matches 30 run scoreboard players operation atk1 saves += dominoLeaderHit heroattack
execute if score character# slot9 matches 41 run scoreboard players operation atk1 saves /= atkmultiplier slot14
execute if score character# slot9 matches 41 run scoreboard players operation shield slot14 -= atk1 saves
#slot 2
execute if score character# slot10 matches 41 run scoreboard players operation atk1 saves = atk slot10
execute if score character# slot10 matches 41 run scoreboard players operation atk1 saves += slot10 atkmodifiers
execute if score character# slot10 matches 41 run scoreboard players operation atk1 saves += marks slot14
execute if score character# slot10 matches 41 if score character# slot10 matches 36 run execute unless score durationSlot9-6 fear matches 1.. unless score durationSlot10-6 fear matches 1.. unless score durationSlot11-6 fear matches 1.. unless score durationSlot12-6 fear matches 1.. run scoreboard players operation atk1 saves -= barleyLeader abilityStats
execute if score character# slot10 matches 41 if score character# slot10 matches 30 run scoreboard players operation atk1 saves += dominoLeaderHit heroattack
execute if score character# slot10 matches 41 run scoreboard players operation atk1 saves /= atkmultiplier slot14
execute if score character# slot10 matches 41 run scoreboard players operation shield slot14 -= atk1 saves
#slot 3
execute if score character# slot11 matches 41 run scoreboard players operation atk1 saves = atk slot11
execute if score character# slot11 matches 41 run scoreboard players operation atk1 saves += marks slot14
execute if score character# slot11 matches 41 run scoreboard players operation atk1 saves += slot11 atkmodifiers
execute if score character# slot11 matches 41 if score character# slot11 matches 30 run scoreboard players operation atk1 saves += dominoLeaderHit heroattack
execute if score character# slot11 matches 41 run scoreboard players operation atk1 saves /= atkmultiplier slot14
execute if score character# slot11 matches 41 run scoreboard players operation shield slot14 -= atk1 saves
#slot 4
execute if score character# slot12 matches 41 run scoreboard players operation atk1 saves = atk slot12
execute if score character# slot12 matches 41 run scoreboard players operation atk1 saves += marks slot14
execute if score character# slot12 matches 41 run scoreboard players operation atk1 saves += slot12 atkmodifiers
execute if score character# slot12 matches 41 run scoreboard players operation atk1 saves /= atkmultiplier slot14
execute if score character# slot12 matches 41 run scoreboard players operation shield slot14 -= atk1 saves

execute if score character# slot13 matches 41 run scoreboard players operation fenrirhpsave2 saves -= atk1 saves
execute if score character# slot14 matches 41 run scoreboard players operation fenrirhpsave2 saves -= atk1 saves
execute if score character# slot15 matches 41 run scoreboard players operation fenrirhpsave2 saves -= atk1 saves


#splash
#slot9
execute if score splash slot9 matches 1.. run execute if score character# slot9 matches 41 run scoreboard players operation splashdamage saves = atk slot9
execute if score splash slot9 matches 1.. run execute if score character# slot9 matches 41 run scoreboard players operation splashdamage saves += slot9 atkmodifiers
execute if score splash slot9 matches 1.. run execute if score character# slot9 matches 41 run scoreboard players operation splashdamage saves /= splash slot9
execute if score splash slot9 matches 1.. run execute if score character# slot9 matches 41 run scoreboard players operation splashdamage saves += marks slot13
execute if score splash slot9 matches 1.. run execute if score character# slot9 matches 41 run scoreboard players operation splashdamage saves /= atkmultiplier slot13
execute if score ward slot13 matches 0 run execute if score splash slot9 matches 1.. run execute if score character# slot9 matches 41 run scoreboard players operation shield slot13 -= splashdamage saves
execute if score ward slot13 matches 1.. run execute if score splash slot9 matches 1.. run execute if score character# slot9 matches 41 run function chtoo:wardslot13
execute if score splash slot9 matches 1.. if score character# slot9 matches 41 at @e[name=slot13,type=armor_stand] run particle minecraft:crit ~ ~1 ~ 0.9 0.9 0.9 0.5 50
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
execute if score splash slot10 matches 1.. run execute if score character# slot10 matches 41 run scoreboard players operation splashdamage saves += marks slot13
execute if score splash slot10 matches 1.. run execute if score character# slot10 matches 41 run scoreboard players operation splashdamage saves /= atkmultiplier slot13
execute if score ward slot13 matches 0 run execute if score splash slot10 matches 1.. run execute if score character# slot10 matches 41 run scoreboard players operation shield slot13 -= splashdamage saves
execute if score ward slot13 matches 1.. run execute if score splash slot10 matches 1.. run execute if score character# slot10 matches 41 run function chtoo:wardslot13
execute if score splash slot10 matches 1.. if score character# slot10 matches 41 at @e[name=slot13,type=armor_stand] run particle minecraft:crit ~ ~1 ~ 0.9 0.9 0.9 0.5 50
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
execute if score splash slot11 matches 1.. run execute if score character# slot11 matches 41 run scoreboard players operation splashdamage saves += marks slot13
execute if score splash slot11 matches 1.. run execute if score character# slot11 matches 41 run scoreboard players operation splashdamage saves /= atkmultiplier slot13
execute if score ward slot13 matches 0 run execute if score splash slot11 matches 1.. run execute if score character# slot11 matches 41 run scoreboard players operation shield slot13 -= splashdamage saves
execute if score ward slot13 matches 1.. run execute if score splash slot11 matches 1.. run execute if score character# slot11 matches 41 run function chtoo:wardslot13
execute if score splash slot11 matches 1.. if score character# slot11 matches 41 at @e[name=slot13,type=armor_stand] run particle minecraft:crit ~ ~1 ~ 0.9 0.9 0.9 0.5 50
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
execute if score splash slot12 matches 1.. run execute if score character# slot12 matches 41 run scoreboard players operation splashdamage saves += marks slot13
execute if score splash slot12 matches 1.. run execute if score character# slot12 matches 41 run scoreboard players operation splashdamage saves /= atkmultiplier slot13
execute if score ward slot13 matches 0 run execute if score splash slot12 matches 1.. run execute if score character# slot12 matches 41 run scoreboard players operation shield slot13 -= splashdamage saves
execute if score ward slot13 matches 1.. run execute if score splash slot12 matches 1.. run execute if score character# slot12 matches 41 run function chtoo:wardslot13
execute if score splash slot12 matches 1.. if score character# slot12 matches 41 at @e[name=slot13,type=armor_stand] run particle minecraft:crit ~ ~1 ~ 0.9 0.9 0.9 0.5 50
execute if score splash slot12 matches 1.. run execute if score character# slot12 matches 41 run scoreboard players operation splashdamage saves = atk slot12
execute if score splash slot12 matches 1.. run execute if score character# slot12 matches 41 run scoreboard players operation splashdamage saves += slot12 atkmodifiers
execute if score splash slot12 matches 1.. run execute if score character# slot12 matches 41 run scoreboard players operation splashdamage saves /= splash slot12
execute if score splash slot12 matches 1.. run execute if score character# slot12 matches 41 run scoreboard players operation splashdamage saves += marks slot15
execute if score splash slot12 matches 1.. run execute if score character# slot12 matches 41 run scoreboard players operation splashdamage saves /= atkmultiplier slot15
execute if score ward slot15 matches 0 run execute if score splash slot12 matches 1.. run execute if score character# slot12 matches 41 run scoreboard players operation shield slot15 -= splashdamage saves
execute if score ward slot15 matches 1.. run execute if score splash slot12 matches 1.. run execute if score character# slot12 matches 41 run function chtoo:wardslot15
execute if score splash slot12 matches 1.. if score character# slot12 matches 41 at @e[name=slot15,type=armor_stand] run particle minecraft:crit ~ ~1 ~ 0.9 0.9 0.9 0.5 50
#damage + shield reset (all)
execute if score shield slot13 matches ..0 if score ward slot13 matches 0 run scoreboard players operation slot13 hp += shield slot13
execute if score shield slot13 matches ..0 run scoreboard players set shield slot13 0
execute if score shield slot15 matches ..0 if score ward slot15 matches 0 run scoreboard players operation slot15 hp += shield slot15
execute if score shield slot15 matches ..0 run scoreboard players set shield slot15 0


#lifesteal
#slot 1
execute if score lifesteal slot9 matches 1.. run execute if score character# slot9 matches 41 run scoreboard players operation lifesteal saves = atk slot9
execute if score lifesteal slot9 matches 1.. run execute if score character# slot9 matches 41 run scoreboard players operation lifesteal saves += slot9 atkmodifiers
execute if score lifesteal slot9 matches 1.. run execute if score character# slot9 matches 41 run scoreboard players operation lifesteal saves += marks slot14
execute if score lifesteal slot9 matches 1.. if score character# slot9 matches 41 if score character# slot9 matches 30 run scoreboard players operation lifesteal1 saves += dominoLeaderHit heroattack
execute if score lifesteal slot9 matches 1.. run execute if score character# slot9 matches 41 run scoreboard players operation lifesteal saves /= atkmultiplier slot14
execute if score lifesteal slot9 matches 1.. run execute if score character# slot9 matches 41 run scoreboard players operation lifesteal saves /= lifesteal slot9
execute if score ward slot14 matches 0 if score slot9bleeding booleaneffects matches 0 run execute if score lifesteal slot9 matches 1.. run execute if score character# slot9 matches 41 run scoreboard players operation slot9 hp += lifesteal saves
execute if score ward slot14 matches 0 if score lifesteal slot9 matches 1.. if score character# slot9 matches 41 at @e[name=slot9,type=armor_stand] run particle minecraft:composter ~ ~1 ~ 0.9 0.9 0.9 0.5 50
#slot 2
execute if score lifesteal slot10 matches 1.. run execute if score character# slot10 matches 41 run scoreboard players operation lifesteal saves = atk slot10
execute if score lifesteal slot10 matches 1.. run execute if score character# slot10 matches 41 run scoreboard players operation lifesteal saves += slot10 atkmodifiers
execute if score lifesteal slot10 matches 1.. run execute if score character# slot10 matches 41 run scoreboard players operation lifesteal saves += marks slot14
execute if score lifesteal slot10 matches 1.. if score character# slot10 matches 41 if score character# slot10 matches 30 run scoreboard players operation lifesteal1 saves += dominoLeaderHit heroattack
execute if score lifesteal slot10 matches 1.. run execute if score character# slot10 matches 41 run scoreboard players operation lifesteal saves /= atkmultiplier slot14
execute if score lifesteal slot10 matches 1.. run execute if score character# slot10 matches 41 run scoreboard players operation lifesteal saves /= lifesteal slot10
execute if score ward slot14 matches 0 if score slot10bleeding booleaneffects matches 0 run execute if score lifesteal slot10 matches 1.. run execute if score character# slot10 matches 41 run scoreboard players operation slot10 hp += lifesteal saves
execute if score ward slot14 matches 0 if score lifesteal slot10 matches 1.. if score character# slot10 matches 41 at @e[name=slot10,type=armor_stand] run particle minecraft:composter ~ ~1 ~ 0.9 0.9 0.9 0.5 50
#slot 3
execute if score lifesteal slot11 matches 1.. run execute if score character# slot11 matches 41 run scoreboard players operation lifesteal saves = atk slot11
execute if score lifesteal slot11 matches 1.. run execute if score character# slot11 matches 41 run scoreboard players operation lifesteal saves += slot11 atkmodifiers
execute if score lifesteal slot11 matches 1.. run execute if score character# slot11 matches 41 run scoreboard players operation lifesteal saves += marks slot14
execute if score lifesteal slot11 matches 1.. if score character# slot11 matches 41 if score character# slot11 matches 30 run scoreboard players operation lifesteal1 saves += dominoLeaderHit heroattack
execute if score lifesteal slot11 matches 1.. run execute if score character# slot11 matches 41 run scoreboard players operation lifesteal saves /= atkmultiplier slot14
execute if score lifesteal slot11 matches 1.. run execute if score character# slot11 matches 41 run scoreboard players operation lifesteal saves /= lifesteal slot11
execute if score ward slot14 matches 0 if score slot11bleeding booleaneffects matches 0 run execute if score lifesteal slot11 matches 1.. run execute if score character# slot11 matches 41 run scoreboard players operation slot11 hp += lifesteal saves
execute if score ward slot14 matches 0 if score lifesteal slot11 matches 1.. if score character# slot11 matches 41 at @e[name=slot11,type=armor_stand] run particle minecraft:composter ~ ~1 ~ 0.9 0.9 0.9 0.5 50
#slot 4
execute if score lifesteal slot12 matches 1.. run execute if score character# slot12 matches 41 run scoreboard players operation lifesteal saves = atk slot12
execute if score lifesteal slot12 matches 1.. run execute if score character# slot12 matches 41 run scoreboard players operation lifesteal saves += slot12 atkmodifiers
execute if score lifesteal slot12 matches 1.. run execute if score character# slot12 matches 41 run scoreboard players operation lifesteal saves += marks slot14
execute if score lifesteal slot12 matches 1.. run execute if score character# slot12 matches 41 run scoreboard players operation lifesteal saves /= atkmultiplier slot14
execute if score lifesteal slot12 matches 1.. run execute if score character# slot12 matches 41 run scoreboard players operation lifesteal saves /= lifesteal slot12
execute if score ward slot14 matches 0 if score slot12bleeding booleaneffects matches 0 run execute if score lifesteal slot12 matches 1.. run execute if score character# slot12 matches 41 run scoreboard players operation slot12 hp += lifesteal saves
execute if score ward slot14 matches 0 if score lifesteal slot12 matches 1.. if score character# slot12 matches 41 at @e[name=slot12,type=armor_stand] run particle minecraft:composter ~ ~1 ~ 0.9 0.9 0.9 0.5 50


#lifesteal + splash
#slot 5
execute if score lifesteal slot9 matches 1.. run execute if score splash slot9 matches 1.. run execute if score character# slot9 matches 41 run scoreboard players operation lifestealsplash saves = atk slot9
execute if score lifesteal slot9 matches 1.. run execute if score splash slot9 matches 1.. run execute if score character# slot9 matches 41 run scoreboard players operation lifestealsplash saves += slot9 atkmodifiers
execute if score lifesteal slot9 matches 1.. run execute if score splash slot9 matches 1.. run execute if score character# slot9 matches 41 run scoreboard players operation lifestealsplash saves /= splash slot9
execute if score lifesteal slot9 matches 1.. run execute if score splash slot9 matches 1.. run execute if score character# slot9 matches 41 run scoreboard players operation lifestealsplash saves += marks slot13
execute if score lifesteal slot9 matches 1.. run execute if score splash slot9 matches 1.. run execute if score character# slot9 matches 41 run scoreboard players operation lifestealsplash saves /= atkmultiplier slot13
execute if score lifesteal slot9 matches 1.. run execute if score splash slot9 matches 1.. run execute if score character# slot9 matches 41 run scoreboard players operation lifestealsplash saves /= lifesteal slot9
execute if score slot13 hp matches 1.. run execute if score ward slot13 matches 0 run execute if score slot9bleeding booleaneffects matches 0 run execute if score lifesteal slot9 matches 1.. run execute if score splash slot9 matches 1.. run execute if score character# slot9 matches 41 run scoreboard players operation slot9 hp += lifestealsplash saves
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
execute if score lifesteal slot10 matches 1.. run execute if score splash slot10 matches 1.. run execute if score character# slot10 matches 41 run scoreboard players operation lifestealsplash saves += marks slot13
execute if score lifesteal slot10 matches 1.. run execute if score splash slot10 matches 1.. run execute if score character# slot10 matches 41 run scoreboard players operation lifestealsplash saves /= atkmultiplier slot13
execute if score lifesteal slot10 matches 1.. run execute if score splash slot10 matches 1.. run execute if score character# slot10 matches 41 run scoreboard players operation lifestealsplash saves /= lifesteal slot10
execute if score slot13 hp matches 1.. run execute if score ward slot13 matches 0 run execute if score slot10bleeding booleaneffects matches 0 run execute if score lifesteal slot10 matches 1.. run execute if score splash slot10 matches 1.. run execute if score character# slot10 matches 41 run scoreboard players operation slot10 hp += lifestealsplash saves
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
execute if score lifesteal slot11 matches 1.. run execute if score splash slot11 matches 1.. run execute if score character# slot11 matches 41 run scoreboard players operation lifestealsplash saves += marks slot13
execute if score lifesteal slot11 matches 1.. run execute if score splash slot11 matches 1.. run execute if score character# slot11 matches 41 run scoreboard players operation lifestealsplash saves /= atkmultiplier slot13
execute if score lifesteal slot11 matches 1.. run execute if score splash slot11 matches 1.. run execute if score character# slot11 matches 41 run scoreboard players operation lifestealsplash saves /= lifesteal slot11
execute if score slot13 hp matches 1.. run execute if score ward slot13 matches 0 run execute if score slot11bleeding booleaneffects matches 0 run execute if score lifesteal slot11 matches 1.. run execute if score splash slot11 matches 1.. run execute if score character# slot11 matches 41 run scoreboard players operation slot11 hp += lifestealsplash saves
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
execute if score lifesteal slot12 matches 1.. run execute if score splash slot12 matches 1.. run execute if score character# slot12 matches 41 run scoreboard players operation lifestealsplash saves += marks slot13
execute if score lifesteal slot12 matches 1.. run execute if score splash slot12 matches 1.. run execute if score character# slot12 matches 41 run scoreboard players operation lifestealsplash saves /= atkmultiplier slot13
execute if score lifesteal slot12 matches 1.. run execute if score splash slot12 matches 1.. run execute if score character# slot12 matches 41 run scoreboard players operation lifestealsplash saves /= lifesteal slot12
execute if score slot13 hp matches 1.. run execute if score ward slot13 matches 0 run execute if score slot12bleeding booleaneffects matches 0 run execute if score lifesteal slot12 matches 1.. run execute if score splash slot12 matches 1.. run execute if score character# slot12 matches 41 run scoreboard players operation slot12 hp += lifestealsplash saves
execute if score lifesteal slot12 matches 1.. run execute if score splash slot12 matches 1.. run execute if score character# slot12 matches 41 run scoreboard players operation lifestealsplash saves = atk slot12
execute if score lifesteal slot12 matches 1.. run execute if score splash slot12 matches 1.. run execute if score character# slot12 matches 41 run scoreboard players operation lifestealsplash saves += slot12 atkmodifiers
execute if score lifesteal slot12 matches 1.. run execute if score splash slot12 matches 1.. run execute if score character# slot12 matches 41 run scoreboard players operation lifestealsplash saves /= splash slot12
execute if score lifesteal slot12 matches 1.. run execute if score splash slot12 matches 1.. run execute if score character# slot12 matches 41 run scoreboard players operation lifestealsplash saves += marks slot15
execute if score lifesteal slot12 matches 1.. run execute if score splash slot12 matches 1.. run execute if score character# slot12 matches 41 run scoreboard players operation lifestealsplash saves /= atkmultiplier slot15
execute if score lifesteal slot12 matches 1.. run execute if score splash slot12 matches 1.. run execute if score character# slot12 matches 41 run scoreboard players operation lifestealsplash saves /= lifesteal slot12
execute if score slot15 hp matches 1.. run execute if score ward slot15 matches 0 run execute if score slot12bleeding booleaneffects matches 0 run execute if score lifesteal slot12 matches 1.. run execute if score splash slot12 matches 1.. run execute if score character# slot12 matches 41 run scoreboard players operation slot12 hp += lifestealsplash saves

#Special Cases
execute if score ward slot14 matches ..0 run execute if score character# slot9 matches 41 if score character# slot9 matches 29 if score slot14 hp <= ripperHpBleed abilityStats run scoreboard players operation slot14bleeding booleaneffects = ripperBleed abilityStats
execute if score ward slot14 matches ..0 run execute if score character# slot10 matches 41 if score character# slot10 matches 29 if score slot14 hp <= ripperHpBleed abilityStats run scoreboard players operation slot14bleeding booleaneffects = ripperBleed abilityStats
execute if score ward slot14 matches ..0 run execute if score character# slot11 matches 41 if score character# slot11 matches 29 if score slot14 hp <= ripperHpBleed abilityStats run scoreboard players operation slot14bleeding booleaneffects = ripperBleed abilityStats
execute if score ward slot14 matches ..0 run execute if score character# slot9 matches 41 if score character# slot9 matches -8 run scoreboard players operation slot14Disease disease += zombieDisease abilityStats
execute if score ward slot14 matches ..0 run execute if score character# slot10 matches 41 if score character# slot10 matches -8 run scoreboard players operation slot14Disease disease += zombieDisease abilityStats
execute if score ward slot14 matches ..0 run execute if score character# slot11 matches 41 if score character# slot11 matches -8 run scoreboard players operation slot14Disease disease += zombieDisease abilityStats
execute if score ward slot14 matches ..0 run execute if score character# slot12 matches 41 if score character# slot12 matches -8 run scoreboard players operation slot14Disease disease += zombieDisease abilityStats

#damage + shield reset (all)
execute if score shield slot14 matches ..0 if score ward slot14 matches 0 run scoreboard players operation slot14 hp += shield slot14
execute if score ward slot14 matches 1.. run function chtoo:wardslot14
execute if score shield slot14 matches ..0 run scoreboard players set shield slot14 0
execute at @e[name=slot14,type=armor_stand] run particle minecraft:crit ~ ~1 ~ 0.9 0.9 0.9 0.5 100

