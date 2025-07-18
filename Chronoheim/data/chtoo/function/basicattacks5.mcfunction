#basic attack functions
clear @a[tag=p3]
#slot 5
execute if score slot9isatk booleans matches 1 run scoreboard players operation atk1 saves = atk slot9
execute if score slot9isatk booleans matches 1 run scoreboard players operation atk1 saves += slot9 atkmodifiers
execute if score slot9isatk booleans matches 1 run scoreboard players operation atk1 saves += marks slot13
execute if score slot9isatk booleans matches 1 run scoreboard players operation atk1 saves /= atkmultiplier slot13
execute if score slot9isatk booleans matches 1 run scoreboard players operation shield slot13 -= atk1 saves
#slot 6
execute if score slot10isatk booleans matches 1 run scoreboard players operation atk1 saves = atk slot10
execute if score slot10isatk booleans matches 1 run scoreboard players operation atk1 saves += slot10 atkmodifiers
execute if score slot10isatk booleans matches 1 run scoreboard players operation atk1 saves += marks slot13
execute if score slot10isatk booleans matches 1 run scoreboard players operation atk1 saves /= atkmultiplier slot13
execute if score slot10isatk booleans matches 1 run scoreboard players operation shield slot13 -= atk1 saves
#slot 7
execute if score slot11isatk booleans matches 1 run scoreboard players operation atk1 saves = atk slot11
execute if score slot11isatk booleans matches 1 run scoreboard players operation atk1 saves += marks slot13
execute if score slot11isatk booleans matches 1 run scoreboard players operation atk1 saves += slot11 atkmodifiers
execute if score slot11isatk booleans matches 1 run scoreboard players operation atk1 saves /= atkmultiplier slot13
execute if score slot11isatk booleans matches 1 run scoreboard players operation shield slot13 -= atk1 saves
#slot 8
execute if score slot12isatk booleans matches 1 run scoreboard players operation atk1 saves = atk slot12
execute if score slot12isatk booleans matches 1 run scoreboard players operation atk1 saves += marks slot13
execute if score slot12isatk booleans matches 1 run scoreboard players operation atk1 saves += slot12 atkmodifiers
execute if score slot12isatk booleans matches 1 run scoreboard players operation atk1 saves /= atkmultiplier slot13
execute if score slot12isatk booleans matches 1 run scoreboard players operation shield slot13 -= atk1 saves
#damage + shield reset (all)
execute if score shield slot13 matches ..0 if score ward slot13 matches 0 run scoreboard players operation slot13 hp += shield slot13
execute if score ward slot13 matches 1.. run function chtoo:wardslot13
execute if score shield slot13 matches ..0 run scoreboard players set shield slot13 0
execute at @e[name=slot13,type=armor_stand] run particle minecraft:crit ~ ~1 ~ 0.9 0.9 0.9 0.5 100


#splash
#slot9
execute if score splash slot9 matches 1.. run execute if score slot9isatk booleans matches 1 run scoreboard players operation splashdamage2 saves = atk slot9
execute if score splash slot9 matches 1.. run execute if score slot9isatk booleans matches 1 run scoreboard players operation splashdamage2 saves += slot9 atkmodifiers
execute if score splash slot9 matches 1.. run execute if score slot9isatk booleans matches 1 run scoreboard players operation splashdamage2 saves /= splash slot9
execute if score splash slot9 matches 1.. run execute if score slot9isatk booleans matches 1 run scoreboard players operation splashdamage2 saves += marks slot14
execute if score splash slot9 matches 1.. run execute if score slot9isatk booleans matches 1 run scoreboard players operation splashdamage2 saves /= atkmultiplier slot14
execute if score ward slot14 matches 0 run execute if score splash slot9 matches 1.. run execute if score slot9isatk booleans matches 1 run scoreboard players operation shield slot14 -= splashdamage2 saves
execute if score ward slot14 matches 1.. run execute if score splash slot9 matches 1.. run execute if score slot9isatk booleans matches 1 run function chtoo:wardslot14
execute if score splash slot9 matches 1.. if score slot9isatk booleans matches 1 at @e[name=slot14,type=armor_stand] run particle minecraft:crit ~ ~1 ~ 0.9 0.9 0.9 0.5 50
#slot10
execute if score splash slot10 matches 1.. run execute if score slot10isatk booleans matches 1 run scoreboard players operation splashdamage2 saves = atk slot10
execute if score splash slot10 matches 1.. run execute if score slot10isatk booleans matches 1 run scoreboard players operation splashdamage2 saves += slot10 atkmodifiers
execute if score splash slot10 matches 1.. run execute if score slot10isatk booleans matches 1 run scoreboard players operation splashdamage2 saves /= splash slot10
execute if score splash slot10 matches 1.. run execute if score slot10isatk booleans matches 1 run scoreboard players operation splashdamage2 saves += marks slot14
execute if score splash slot10 matches 1.. run execute if score slot10isatk booleans matches 1 run scoreboard players operation splashdamage2 saves /= atkmultiplier slot14
execute if score ward slot14 matches 0 run execute if score splash slot10 matches 1.. run execute if score slot10isatk booleans matches 1 run scoreboard players operation shield slot14 -= splashdamage2 saves
execute if score ward slot14 matches 1.. run execute if score splash slot10 matches 1.. run execute if score slot10isatk booleans matches 1 run function chtoo:wardslot14
execute if score splash slot10 matches 1.. if score slot10isatk booleans matches 1 at @e[name=slot14,type=armor_stand] run particle minecraft:crit ~ ~1 ~ 0.9 0.9 0.9 0.5 50

#slot11
execute if score splash slot11 matches 1.. run execute if score slot11isatk booleans matches 1 run scoreboard players operation splashdamage2 saves = atk slot11
execute if score splash slot11 matches 1.. run execute if score slot11isatk booleans matches 1 run scoreboard players operation splashdamage2 saves += slot11 atkmodifiers
execute if score splash slot11 matches 1.. run execute if score slot11isatk booleans matches 1 run scoreboard players operation splashdamage2 saves /= splash slot11
execute if score splash slot11 matches 1.. run execute if score slot11isatk booleans matches 1 run scoreboard players operation splashdamage2 saves += marks slot14
execute if score splash slot11 matches 1.. run execute if score slot11isatk booleans matches 1 run scoreboard players operation splashdamage2 saves /= atkmultiplier slot14
execute if score ward slot14 matches 0 run execute if score splash slot11 matches 1.. run execute if score slot11isatk booleans matches 1 run scoreboard players operation shield slot14 -= splashdamage2 saves
execute if score ward slot14 matches 1.. run execute if score splash slot11 matches 1.. run execute if score slot11isatk booleans matches 1 run function chtoo:wardslot14
execute if score splash slot11 matches 1.. if score slot11isatk booleans matches 1 at @e[name=slot14,type=armor_stand] run particle minecraft:crit ~ ~1 ~ 0.9 0.9 0.9 0.5 50

#slot12
execute if score splash slot12 matches 1.. run execute if score slot12isatk booleans matches 1 run scoreboard players operation splashdamage2 saves = atk slot12
execute if score splash slot12 matches 1.. run execute if score slot12isatk booleans matches 1 run scoreboard players operation splashdamage2 saves += slot12 atkmodifiers
execute if score splash slot12 matches 1.. run execute if score slot12isatk booleans matches 1 run scoreboard players operation splashdamage2 saves /= splash slot12
execute if score splash slot12 matches 1.. run execute if score slot12isatk booleans matches 1 run scoreboard players operation splashdamage2 saves += marks slot14
execute if score splash slot12 matches 1.. run execute if score slot12isatk booleans matches 1 run scoreboard players operation splashdamage2 saves /= atkmultiplier slot14
execute if score ward slot14 matches 0 run execute if score splash slot12 matches 1.. run execute if score slot12isatk booleans matches 1 run scoreboard players operation shield slot14 -= splashdamage2 saves
execute if score ward slot14 matches 1.. run execute if score splash slot12 matches 1.. run execute if score slot12isatk booleans matches 1 run function chtoo:wardslot14
execute if score splash slot12 matches 1.. if score slot12isatk booleans matches 1 at @e[name=slot14,type=armor_stand] run particle minecraft:crit ~ ~1 ~ 0.9 0.9 0.9 0.5 50

#damage + shield reset (all)
execute if score shield slot14 matches ..0 if score ward slot14 matches 0 run scoreboard players operation slot14 hp += shield slot14
execute if score shield slot14 matches ..0 run scoreboard players set shield slot14 0




#lifesteal
#slot 5
execute if score lifesteal slot9 matches 1.. run execute if score slot9isatk booleans matches 1 run scoreboard players operation lifesteal2 saves = atk slot9
execute if score lifesteal slot9 matches 1.. run execute if score slot9isatk booleans matches 1 run scoreboard players operation lifesteal2 saves += slot9 atkmodifiers
execute if score lifesteal slot9 matches 1.. run execute if score slot9isatk booleans matches 1 run scoreboard players operation lifesteal2 saves += marks slot9
execute if score lifesteal slot9 matches 1.. run execute if score slot9isatk booleans matches 1 run scoreboard players operation lifesteal2 saves /= atkmultiplier slot9
execute if score lifesteal slot9 matches 1.. run execute if score slot9isatk booleans matches 1 run scoreboard players operation lifesteal2 saves /= lifesteal slot9
execute if score ward slot13 matches 0 if score slot9bleeding booleaneffects matches 0 run execute if score lifesteal slot9 matches 1.. run execute if score slot9isatk booleans matches 1 run scoreboard players operation slot9 hp += lifesteal2 saves
execute if score ward slot13 matches 0 if score lifesteal slot9 matches 1.. if score slot9isatk booleans matches 1 at @e[name=slot9,type=armor_stand] run particle minecraft:composter ~ ~1 ~ 0.9 0.9 0.9 0.5 50
#slot 6
execute if score lifesteal slot10 matches 1.. run execute if score slot10isatk booleans matches 1 run scoreboard players operation lifesteal2 saves = atk slot10
execute if score lifesteal slot10 matches 1.. run execute if score slot10isatk booleans matches 1 run scoreboard players operation lifesteal2 saves += slot10 atkmodifiers
execute if score lifesteal slot10 matches 1.. run execute if score slot10isatk booleans matches 1 run scoreboard players operation lifesteal2 saves += marks slot9
execute if score lifesteal slot10 matches 1.. run execute if score slot10isatk booleans matches 1 run scoreboard players operation lifesteal2 saves /= atkmultiplier slot9
execute if score lifesteal slot10 matches 1.. run execute if score slot10isatk booleans matches 1 run scoreboard players operation lifesteal2 saves /= lifesteal slot10
execute if score ward slot13 matches 0 if score slot10bleeding booleaneffects matches 0 run execute if score lifesteal slot10 matches 1.. run execute if score slot10isatk booleans matches 1 run scoreboard players operation slot10 hp += lifesteal2 saves
execute if score ward slot13 matches 0 if score lifesteal slot10 matches 1.. if score slot10isatk booleans matches 1 at @e[name=slot10,type=armor_stand] run particle minecraft:composter ~ ~1 ~ 0.9 0.9 0.9 0.5 50
#slot 7
execute if score lifesteal slot11 matches 1.. run execute if score slot11isatk booleans matches 1 run scoreboard players operation lifesteal2 saves = atk slot11
execute if score lifesteal slot11 matches 1.. run execute if score slot11isatk booleans matches 1 run scoreboard players operation lifesteal2 saves += slot11 atkmodifiers
execute if score lifesteal slot11 matches 1.. run execute if score slot11isatk booleans matches 1 run scoreboard players operation lifesteal2 saves += marks slot9
execute if score lifesteal slot11 matches 1.. run execute if score slot11isatk booleans matches 1 run scoreboard players operation lifesteal2 saves /= atkmultiplier slot9
execute if score lifesteal slot11 matches 1.. run execute if score slot11isatk booleans matches 1 run scoreboard players operation lifesteal2 saves /= lifesteal slot11
execute if score ward slot13 matches 0 if score slot11bleeding booleaneffects matches 0 run execute if score lifesteal slot11 matches 1.. run execute if score slot11isatk booleans matches 1 run scoreboard players operation slot11 hp += lifesteal2 saves
execute if score ward slot13 matches 0 if score lifesteal slot11 matches 1.. if score slot11isatk booleans matches 1 at @e[name=slot11,type=armor_stand] run particle minecraft:composter ~ ~1 ~ 0.9 0.9 0.9 0.5 50
#slot 8
execute if score lifesteal slot12 matches 1.. run execute if score slot12isatk booleans matches 1 run scoreboard players operation lifesteal2 saves = atk slot12
execute if score lifesteal slot12 matches 1.. run execute if score slot12isatk booleans matches 1 run scoreboard players operation lifesteal2 saves += slot12 atkmodifiers
execute if score lifesteal slot12 matches 1.. run execute if score slot12isatk booleans matches 1 run scoreboard players operation lifesteal2 saves += marks slot9
execute if score lifesteal slot12 matches 1.. run execute if score slot12isatk booleans matches 1 run scoreboard players operation lifesteal2 saves /= atkmultiplier slot9
execute if score lifesteal slot12 matches 1.. run execute if score slot12isatk booleans matches 1 run scoreboard players operation lifesteal2 saves /= lifesteal slot12
execute if score ward slot13 matches 0 if score slot12bleeding booleaneffects matches 0 run execute if score lifesteal slot12 matches 1.. run execute if score slot12isatk booleans matches 1 run scoreboard players operation slot12 hp += lifesteal2 saves
execute if score ward slot13 matches 0 if score lifesteal slot12 matches 1.. if score slot12isatk booleans matches 1 at @e[name=slot12,type=armor_stand] run particle minecraft:composter ~ ~1 ~ 0.9 0.9 0.9 0.5 50


#lifesteal + splash
#slot 5
execute if score lifesteal slot9 matches 1.. run execute if score splash slot9 matches 1.. run execute if score slot9isatk booleans matches 1 run scoreboard players operation lifestealsplash2 saves = atk slot9
execute if score lifesteal slot9 matches 1.. run execute if score splash slot9 matches 1.. run execute if score slot9isatk booleans matches 1 run scoreboard players operation lifestealsplash2 saves += slot9 atkmodifiers
execute if score lifesteal slot9 matches 1.. run execute if score splash slot9 matches 1.. run execute if score slot9isatk booleans matches 1 run scoreboard players operation lifestealsplash2 saves += marks slot14
execute if score lifesteal slot9 matches 1.. run execute if score splash slot9 matches 1.. run execute if score slot9isatk booleans matches 1 run scoreboard players operation lifestealsplash2 saves /= atkmultiplier slot14
execute if score lifesteal slot9 matches 1.. run execute if score splash slot9 matches 1.. run execute if score slot9isatk booleans matches 1 run scoreboard players operation lifestealsplash2 saves /= lifesteal slot9
execute if score lifesteal slot9 matches 1.. run execute if score splash slot9 matches 1.. run execute if score slot9isatk booleans matches 1 run scoreboard players operation lifestealsplash2 saves /= splash slot9
execute if score slot14 hp matches 1.. run execute if score ward slot14 matches 0 run execute if score slot9bleeding booleaneffects matches 0 run execute if score lifesteal slot9 matches 1.. run execute if score splash slot9 matches 1.. run execute if score slot9isatk booleans matches 1 run scoreboard players operation slot9 hp += lifestealsplash2 saves
#slot 6
execute if score lifesteal slot10 matches 1.. run execute if score splash slot10 matches 1.. run execute if score slot10isatk booleans matches 1 run scoreboard players operation lifestealsplash2 saves = atk slot10
execute if score lifesteal slot10 matches 1.. run execute if score splash slot10 matches 1.. run execute if score slot10isatk booleans matches 1 run scoreboard players operation lifestealsplash2 saves += slot10 atkmodifiers
execute if score lifesteal slot10 matches 1.. run execute if score splash slot10 matches 1.. run execute if score slot10isatk booleans matches 1 run scoreboard players operation lifestealsplash2 saves += marks slot14
execute if score lifesteal slot10 matches 1.. run execute if score splash slot10 matches 1.. run execute if score slot10isatk booleans matches 1 run scoreboard players operation lifestealsplash2 saves /= atkmultiplier slot14
execute if score lifesteal slot10 matches 1.. run execute if score splash slot10 matches 1.. run execute if score slot10isatk booleans matches 1 run scoreboard players operation lifestealsplash2 saves /= lifesteal slot10
execute if score lifesteal slot10 matches 1.. run execute if score splash slot10 matches 1.. run execute if score slot10isatk booleans matches 1 run scoreboard players operation lifestealsplash2 saves /= splash slot10
execute if score slot14 hp matches 1.. run execute if score ward slot14 matches 0 run execute if score slot10bleeding booleaneffects matches 0 run execute if score lifesteal slot10 matches 1.. run execute if score splash slot10 matches 1.. run execute if score slot10isatk booleans matches 1 run scoreboard players operation slot10 hp += lifestealsplash2 saves
#slot 7
execute if score lifesteal slot11 matches 1.. run execute if score splash slot11 matches 1.. run execute if score slot11isatk booleans matches 1 run scoreboard players operation lifestealsplash2 saves = atk slot11
execute if score lifesteal slot11 matches 1.. run execute if score splash slot11 matches 1.. run execute if score slot11isatk booleans matches 1 run scoreboard players operation lifestealsplash2 saves += slot11 atkmodifiers
execute if score lifesteal slot11 matches 1.. run execute if score splash slot11 matches 1.. run execute if score slot11isatk booleans matches 1 run scoreboard players operation lifestealsplash2 saves += marks slot14
execute if score lifesteal slot11 matches 1.. run execute if score splash slot11 matches 1.. run execute if score slot11isatk booleans matches 1 run scoreboard players operation lifestealsplash2 saves /= atkmultiplier slot14
execute if score lifesteal slot11 matches 1.. run execute if score splash slot11 matches 1.. run execute if score slot11isatk booleans matches 1 run scoreboard players operation lifestealsplash2 saves /= lifesteal slot11
execute if score lifesteal slot11 matches 1.. run execute if score splash slot11 matches 1.. run execute if score slot11isatk booleans matches 1 run scoreboard players operation lifestealsplash2 saves /= splash slot11
execute if score slot14 hp matches 1.. run execute if score ward slot14 matches 0 run execute if score slot11bleeding booleaneffects matches 0 run execute if score lifesteal slot11 matches 1.. run execute if score splash slot11 matches 1.. run execute if score slot11isatk booleans matches 1 run scoreboard players operation slot11 hp += lifestealsplash2 saves
#slot 8
execute if score lifesteal slot12 matches 1.. run execute if score splash slot12 matches 1.. run execute if score slot12isatk booleans matches 1 run scoreboard players operation lifestealsplash2 saves = atk slot12
execute if score lifesteal slot12 matches 1.. run execute if score splash slot12 matches 1.. run execute if score slot12isatk booleans matches 1 run scoreboard players operation lifestealsplash2 saves += slot12 atkmodifiers
execute if score lifesteal slot12 matches 1.. run execute if score splash slot12 matches 1.. run execute if score slot12isatk booleans matches 1 run scoreboard players operation lifestealsplash2 saves += marks slot14
execute if score lifesteal slot12 matches 1.. run execute if score splash slot12 matches 1.. run execute if score slot12isatk booleans matches 1 run scoreboard players operation lifestealsplash2 saves /= atkmultiplier slot14
execute if score lifesteal slot12 matches 1.. run execute if score splash slot12 matches 1.. run execute if score slot12isatk booleans matches 1 run scoreboard players operation lifestealsplash2 saves /= lifesteal slot12
execute if score lifesteal slot12 matches 1.. run execute if score splash slot12 matches 1.. run execute if score slot12isatk booleans matches 1 run scoreboard players operation lifestealsplash2 saves /= splash slot12
execute if score slot14 hp matches 1.. run execute if score ward slot14 matches 0 run execute if score slot12bleeding booleaneffects matches 0 run execute if score lifesteal slot12 matches 1.. run execute if score splash slot12 matches 1.. run execute if score slot12isatk booleans matches 1 run scoreboard players operation slot12 hp += lifestealsplash2 saves

#Special Cases
execute if score slot9isatk booleans matches 1 if score character# slot9 matches 29 run scoreboard players operation slot13bleeding booleaneffects = ripperBleed abilityStats
execute if score slot10isatk booleans matches 1 if score character# slot10 matches 29 run scoreboard players operation slot13bleeding booleaneffects = ripperBleed abilityStats
execute if score slot11isatk booleans matches 1 if score character# slot11 matches 29 run scoreboard players operation slot13bleeding booleaneffects = ripperBleed abilityStats

#double target + turn end trigger
#regular attack
execute if score slot9isatk booleans matches 1 run execute if score doubleatk slot9 matches 0 run function chtoo:turnend
execute if score slot10isatk booleans matches 1 run execute if score doubleatk slot10 matches 0 run function chtoo:turnend
execute if score slot11isatk booleans matches 1 run execute if score doubleatk slot11 matches 0 run function chtoo:turnend
execute if score slot12isatk booleans matches 1 run execute if score doubleatk slot12 matches 0 run function chtoo:turnend
#double target (2nd hit)
execute if score slot9isatk booleans matches 1 run execute if score doubleatk slot9 matches 1 run execute if score useddoubleatk slot9 matches 1 run function chtoo:turnend
execute if score slot10isatk booleans matches 1 run execute if score doubleatk slot10 matches 1 run execute if score useddoubleatk slot10 matches 1 run function chtoo:turnend
execute if score slot11isatk booleans matches 1 run execute if score doubleatk slot11 matches 1 run execute if score useddoubleatk slot11 matches 1 run function chtoo:turnend
execute if score slot12isatk booleans matches 1 run execute if score doubleatk slot12 matches 1 run execute if score useddoubleatk slot12 matches 1 run function chtoo:turnend
#double target (1st hit)
execute if score slot9isatk booleans matches 1 run execute if score doubleatk slot9 matches 1 run execute if score useddoubleatk slot9 matches 0 run function chtoo:basicattackstartp3
execute if score slot9isatk booleans matches 1 run execute if score doubleatk slot9 matches 1 run execute if score useddoubleatk slot9 matches 0 run scoreboard players set useddoubleatk slot9 1
execute if score slot10isatk booleans matches 1 run execute if score doubleatk slot10 matches 1 run execute if score useddoubleatk slot10 matches 0 run function chtoo:basicattackstartp3
execute if score slot10isatk booleans matches 1 run execute if score doubleatk slot10 matches 1 run execute if score useddoubleatk slot10 matches 0 run scoreboard players set useddoubleatk slot10 1
execute if score slot11isatk booleans matches 1 run execute if score doubleatk slot11 matches 1 run execute if score useddoubleatk slot11 matches 0 run function chtoo:basicattackstartp3
execute if score slot11isatk booleans matches 1 run execute if score doubleatk slot11 matches 1 run execute if score useddoubleatk slot11 matches 0 run scoreboard players set useddoubleatk slot11 1
execute if score slot12isatk booleans matches 1 run execute if score doubleatk slot12 matches 1 run execute if score useddoubleatk slot12 matches 0 run function chtoo:basicattackstartp3
execute if score slot12isatk booleans matches 1 run execute if score doubleatk slot12 matches 1 run execute if score useddoubleatk slot12 matches 0 run scoreboard players set useddoubleatk slot12 1




