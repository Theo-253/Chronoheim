#basic attack functions
tellraw @a[tag=game2] ["",{"selector":"@p[tag=p4]"}," attacked Slot 4"]
clear @a[tag=p4]
#slot 5
execute if score slot13isatk booleans matches 1 run scoreboard players operation atk1 saves = atk slot13
execute if score slot13isatk booleans matches 1 run scoreboard players operation atk1 saves += slot13 atkmodifiers
execute if score slot13isatk booleans matches 1 run scoreboard players operation atk1 saves += marks slot12
execute if score slot13isatk booleans matches 1 run scoreboard players operation atk1 saves /= atkmultiplier slot12
execute if score slot13isatk booleans matches 1 run scoreboard players operation shield slot12 -= atk1 saves
#slot 6
execute if score slot14isatk booleans matches 1 run scoreboard players operation atk1 saves = atk slot14
execute if score slot14isatk booleans matches 1 run scoreboard players operation atk1 saves += slot14 atkmodifiers
execute if score slot14isatk booleans matches 1 run scoreboard players operation atk1 saves += marks slot12
execute if score slot14isatk booleans matches 1 run scoreboard players operation atk1 saves /= atkmultiplier slot12
execute if score slot14isatk booleans matches 1 run scoreboard players operation shield slot12 -= atk1 saves
#slot 7
execute if score slot15isatk booleans matches 1 run scoreboard players operation atk1 saves = atk slot15
execute if score slot15isatk booleans matches 1 run scoreboard players operation atk1 saves += marks slot12
execute if score slot15isatk booleans matches 1 run scoreboard players operation atk1 saves += slot15 atkmodifiers
execute if score slot15isatk booleans matches 1 run scoreboard players operation atk1 saves /= atkmultiplier slot12
execute if score slot15isatk booleans matches 1 run scoreboard players operation shield slot12 -= atk1 saves
#slot 8
execute if score slot16isatk booleans matches 1 run scoreboard players operation atk1 saves = atk slot16
execute if score slot16isatk booleans matches 1 run scoreboard players operation atk1 saves += marks slot12
execute if score slot16isatk booleans matches 1 run scoreboard players operation atk1 saves += slot16 atkmodifiers
execute if score slot16isatk booleans matches 1 run scoreboard players operation atk1 saves /= atkmultiplier slot12
execute if score slot16isatk booleans matches 1 run scoreboard players operation shield slot12 -= atk1 saves
#damage + shield reset (all)
execute if score shield slot12 matches ..0 if score ward slot12 matches 0 run scoreboard players operation slot12 hp += shield slot12
execute if score ward slot12 matches 1.. run function chtoo:wardslot12
execute if score shield slot12 matches ..0 run scoreboard players set shield slot12 0
execute at @e[name=slot12,type=armor_stand] run particle minecraft:crit ~ ~1 ~ 0.9 0.9 0.9 0.5 100


#splash
#slot13
execute if score splash slot13 matches 1.. run execute if score slot13isatk booleans matches 1 run scoreboard players operation splashdamage2 saves = atk slot13
execute if score splash slot13 matches 1.. run execute if score slot13isatk booleans matches 1 run scoreboard players operation splashdamage2 saves += slot13 atkmodifiers
execute if score splash slot13 matches 1.. run execute if score slot13isatk booleans matches 1 run scoreboard players operation splashdamage2 saves /= splash slot13
execute if score splash slot13 matches 1.. run execute if score slot13isatk booleans matches 1 run scoreboard players operation splashdamage2 saves += marks slot11
execute if score splash slot13 matches 1.. run execute if score slot13isatk booleans matches 1 run scoreboard players operation splashdamage2 saves /= atkmultiplier slot11
execute if score ward slot11 matches 0 run execute if score splash slot13 matches 1.. run execute if score slot13isatk booleans matches 1 run scoreboard players operation shield slot11 -= splashdamage2 saves
execute if score ward slot11 matches 1.. run execute if score splash slot13 matches 1.. run execute if score slot13isatk booleans matches 1 run function chtoo:wardslot11
execute if score splash slot13 matches 1.. if score slot13isatk booleans matches 1 at @e[name=slot11,type=armor_stand] run particle minecraft:crit ~ ~1 ~ 0.9 0.9 0.9 0.5 50
#slot14
execute if score splash slot14 matches 1.. run execute if score slot14isatk booleans matches 1 run scoreboard players operation splashdamage2 saves = atk slot14
execute if score splash slot14 matches 1.. run execute if score slot14isatk booleans matches 1 run scoreboard players operation splashdamage2 saves += slot14 atkmodifiers
execute if score splash slot14 matches 1.. run execute if score slot14isatk booleans matches 1 run scoreboard players operation splashdamage2 saves /= splash slot14
execute if score splash slot14 matches 1.. run execute if score slot14isatk booleans matches 1 run scoreboard players operation splashdamage2 saves += marks slot11
execute if score splash slot14 matches 1.. run execute if score slot14isatk booleans matches 1 run scoreboard players operation splashdamage2 saves /= atkmultiplier slot11
execute if score ward slot11 matches 0 run execute if score splash slot14 matches 1.. run execute if score slot14isatk booleans matches 1 run scoreboard players operation shield slot11 -= splashdamage2 saves
execute if score ward slot11 matches 1.. run execute if score splash slot14 matches 1.. run execute if score slot14isatk booleans matches 1 run function chtoo:wardslot11
execute if score splash slot14 matches 1.. if score slot14isatk booleans matches 1 at @e[name=slot11,type=armor_stand] run particle minecraft:crit ~ ~1 ~ 0.9 0.9 0.9 0.5 50
#slot15
execute if score splash slot15 matches 1.. run execute if score slot15isatk booleans matches 1 run scoreboard players operation splashdamage2 saves = atk slot15
execute if score splash slot15 matches 1.. run execute if score slot15isatk booleans matches 1 run scoreboard players operation splashdamage2 saves += slot15 atkmodifiers
execute if score splash slot15 matches 1.. run execute if score slot15isatk booleans matches 1 run scoreboard players operation splashdamage2 saves /= splash slot15
execute if score splash slot15 matches 1.. run execute if score slot15isatk booleans matches 1 run scoreboard players operation splashdamage2 saves += marks slot11
execute if score splash slot15 matches 1.. run execute if score slot15isatk booleans matches 1 run scoreboard players operation splashdamage2 saves /= atkmultiplier slot11
execute if score ward slot11 matches 0 run execute if score splash slot15 matches 1.. run execute if score slot15isatk booleans matches 1 run scoreboard players operation shield slot11 -= splashdamage2 saves
execute if score ward slot11 matches 1.. run execute if score splash slot15 matches 1.. run execute if score slot15isatk booleans matches 1 run function chtoo:wardslot11
execute if score splash slot15 matches 1.. if score slot15isatk booleans matches 1 at @e[name=slot11,type=armor_stand] run particle minecraft:crit ~ ~1 ~ 0.9 0.9 0.9 0.5 50
#slot16
execute if score splash slot16 matches 1.. run execute if score slot16isatk booleans matches 1 run scoreboard players operation splashdamage2 saves = atk slot16
execute if score splash slot16 matches 1.. run execute if score slot16isatk booleans matches 1 run scoreboard players operation splashdamage2 saves += slot16 atkmodifiers
execute if score splash slot16 matches 1.. run execute if score slot16isatk booleans matches 1 run scoreboard players operation splashdamage2 saves /= splash slot16
execute if score splash slot16 matches 1.. run execute if score slot16isatk booleans matches 1 run scoreboard players operation splashdamage2 saves += marks slot11
execute if score splash slot16 matches 1.. run execute if score slot16isatk booleans matches 1 run scoreboard players operation splashdamage2 saves /= atkmultiplier slot11
execute if score ward slot11 matches 0 run execute if score splash slot16 matches 1.. run execute if score slot16isatk booleans matches 1 run scoreboard players operation shield slot11 -= splashdamage2 saves
execute if score ward slot11 matches 1.. run execute if score splash slot16 matches 1.. run execute if score slot16isatk booleans matches 1 run function chtoo:wardslot11
execute if score splash slot16 matches 1.. if score slot16isatk booleans matches 1 at @e[name=slot11,type=armor_stand] run particle minecraft:crit ~ ~1 ~ 0.9 0.9 0.9 0.5 50
#damage + shield reset (all)
execute if score shield slot11 matches ..0 if score ward slot11 matches 0 run scoreboard players operation slot11 hp += shield slot11
execute if score shield slot11 matches ..0 run scoreboard players set shield slot11 0


#lifesteal
#slot 5
execute if score lifesteal slot13 matches 1.. run execute if score slot13isatk booleans matches 1 run scoreboard players operation lifesteal2 saves = atk slot13
execute if score lifesteal slot13 matches 1.. run execute if score slot13isatk booleans matches 1 run scoreboard players operation lifesteal2 saves += slot13 atkmodifiers
execute if score lifesteal slot13 matches 1.. run execute if score slot13isatk booleans matches 1 run scoreboard players operation lifesteal2 saves += marks slot12
execute if score lifesteal slot13 matches 1.. run execute if score slot13isatk booleans matches 1 run scoreboard players operation lifesteal2 saves /= atkmultiplier slot12
execute if score lifesteal slot13 matches 1.. run execute if score slot13isatk booleans matches 1 run scoreboard players operation lifesteal2 saves /= lifesteal slot13
execute if score ward slot12 matches 0 if score slot13bleeding booleaneffects matches 0 run execute if score lifesteal slot13 matches 1.. run execute if score slot13isatk booleans matches 1 run scoreboard players operation slot13 hp += lifesteal2 saves
execute if score ward slot12 matches 0 if score lifesteal slot13 matches 1.. if score slot13isatk booleans matches 1 at @e[name=slot13,type=armor_stand] run particle minecraft:composter ~ ~1 ~ 0.9 0.9 0.9 0.5 50
#slot 6
execute if score lifesteal slot14 matches 1.. run execute if score slot14isatk booleans matches 1 run scoreboard players operation lifesteal2 saves = atk slot14
execute if score lifesteal slot14 matches 1.. run execute if score slot14isatk booleans matches 1 run scoreboard players operation lifesteal2 saves += slot14 atkmodifiers
execute if score lifesteal slot14 matches 1.. run execute if score slot14isatk booleans matches 1 run scoreboard players operation lifesteal2 saves += marks slot12
execute if score lifesteal slot14 matches 1.. run execute if score slot14isatk booleans matches 1 run scoreboard players operation lifesteal2 saves /= atkmultiplier slot12
execute if score lifesteal slot14 matches 1.. run execute if score slot14isatk booleans matches 1 run scoreboard players operation lifesteal2 saves /= lifesteal slot14
execute if score ward slot12 matches 0 if score slot14bleeding booleaneffects matches 0 run execute if score lifesteal slot14 matches 1.. run execute if score slot14isatk booleans matches 1 run scoreboard players operation slot14 hp += lifesteal2 saves
execute if score ward slot12 matches 0 if score lifesteal slot14 matches 1.. if score slot14isatk booleans matches 1 at @e[name=slot14,type=armor_stand] run particle minecraft:composter ~ ~1 ~ 0.9 0.9 0.9 0.5 50
#slot 7
execute if score lifesteal slot15 matches 1.. run execute if score slot15isatk booleans matches 1 run scoreboard players operation lifesteal2 saves = atk slot15
execute if score lifesteal slot15 matches 1.. run execute if score slot15isatk booleans matches 1 run scoreboard players operation lifesteal2 saves += slot15 atkmodifiers
execute if score lifesteal slot15 matches 1.. run execute if score slot15isatk booleans matches 1 run scoreboard players operation lifesteal2 saves += marks slot12
execute if score lifesteal slot15 matches 1.. run execute if score slot15isatk booleans matches 1 run scoreboard players operation lifesteal2 saves /= atkmultiplier slot12
execute if score lifesteal slot15 matches 1.. run execute if score slot15isatk booleans matches 1 run scoreboard players operation lifesteal2 saves /= lifesteal slot15
execute if score ward slot12 matches 0 if score slot15bleeding booleaneffects matches 0 run execute if score lifesteal slot15 matches 1.. run execute if score slot15isatk booleans matches 1 run scoreboard players operation slot15 hp += lifesteal2 saves
execute if score ward slot12 matches 0 if score lifesteal slot15 matches 1.. if score slot15isatk booleans matches 1 at @e[name=slot15,type=armor_stand] run particle minecraft:composter ~ ~1 ~ 0.9 0.9 0.9 0.5 50
#slot 8
execute if score lifesteal slot16 matches 1.. run execute if score slot16isatk booleans matches 1 run scoreboard players operation lifesteal2 saves = atk slot16
execute if score lifesteal slot16 matches 1.. run execute if score slot16isatk booleans matches 1 run scoreboard players operation lifesteal2 saves += slot16 atkmodifiers
execute if score lifesteal slot16 matches 1.. run execute if score slot16isatk booleans matches 1 run scoreboard players operation lifesteal2 saves += marks slot12
execute if score lifesteal slot16 matches 1.. run execute if score slot16isatk booleans matches 1 run scoreboard players operation lifesteal2 saves /= atkmultiplier slot12
execute if score lifesteal slot16 matches 1.. run execute if score slot16isatk booleans matches 1 run scoreboard players operation lifesteal2 saves /= lifesteal slot16
execute if score ward slot12 matches 0 if score slot16bleeding booleaneffects matches 0 run execute if score lifesteal slot16 matches 1.. run execute if score slot16isatk booleans matches 1 run scoreboard players operation slot16 hp += lifesteal2 saves
execute if score ward slot12 matches 0 if score lifesteal slot16 matches 1.. if score slot16isatk booleans matches 1 at @e[name=slot16,type=armor_stand] run particle minecraft:composter ~ ~1 ~ 0.9 0.9 0.9 0.5 50

#Special Cases
execute if score slot13isatk booleans matches 1 if score character# slot13 matches 29 if score slot12 hp <= ripperHpBleed abilityStats run scoreboard players operation slot12bleeding booleaneffects = ripperBleed abilityStats
execute if score slot14isatk booleans matches 1 if score character# slot14 matches 29 if score slot12 hp <= ripperHpBleed abilityStats run scoreboard players operation slot12bleeding booleaneffects = ripperBleed abilityStats
execute if score slot15isatk booleans matches 1 if score character# slot15 matches 29 if score slot12 hp <= ripperHpBleed abilityStats run scoreboard players operation slot12bleeding booleaneffects = ripperBleed abilityStats

#lifesteal + splash
#slot 5
execute if score lifesteal slot13 matches 1.. run execute if score splash slot13 matches 1.. run execute if score slot13isatk booleans matches 1 run scoreboard players operation lifestealsplash2 saves = atk slot13
execute if score lifesteal slot13 matches 1.. run execute if score splash slot13 matches 1.. run execute if score slot13isatk booleans matches 1 run scoreboard players operation lifestealsplash2 saves += slot13 atkmodifiers
execute if score lifesteal slot13 matches 1.. run execute if score splash slot13 matches 1.. run execute if score slot13isatk booleans matches 1 run scoreboard players operation lifestealsplash2 saves /= splash slot13
execute if score lifesteal slot13 matches 1.. run execute if score splash slot13 matches 1.. run execute if score slot13isatk booleans matches 1 run scoreboard players operation lifestealsplash2 saves += marks slot11
execute if score lifesteal slot13 matches 1.. run execute if score splash slot13 matches 1.. run execute if score slot13isatk booleans matches 1 run scoreboard players operation lifestealsplash2 saves /= atkmultiplier slot11
execute if score lifesteal slot13 matches 1.. run execute if score splash slot13 matches 1.. run execute if score slot13isatk booleans matches 1 run scoreboard players operation lifestealsplash2 saves /= lifesteal slot13
execute if score slot11 hp matches 1.. run execute if score ward slot11 matches 0 run execute if score slot13bleeding booleaneffects matches 0 run execute if score lifesteal slot13 matches 1.. run execute if score splash slot13 matches 1.. run execute if score slot13isatk booleans matches 1 run scoreboard players operation slot13 hp += lifestealsplash2 saves
#slot 6
execute if score lifesteal slot14 matches 1.. run execute if score splash slot14 matches 1.. run execute if score slot14isatk booleans matches 1 run scoreboard players operation lifestealsplash2 saves = atk slot14
execute if score lifesteal slot14 matches 1.. run execute if score splash slot14 matches 1.. run execute if score slot14isatk booleans matches 1 run scoreboard players operation lifestealsplash2 saves += slot14 atkmodifiers
execute if score lifesteal slot14 matches 1.. run execute if score splash slot14 matches 1.. run execute if score slot14isatk booleans matches 1 run scoreboard players operation lifestealsplash2 saves /= splash slot14
execute if score lifesteal slot14 matches 1.. run execute if score splash slot14 matches 1.. run execute if score slot14isatk booleans matches 1 run scoreboard players operation lifestealsplash2 saves += marks slot11
execute if score lifesteal slot14 matches 1.. run execute if score splash slot14 matches 1.. run execute if score slot14isatk booleans matches 1 run scoreboard players operation lifestealsplash2 saves /= atkmultiplier slot11
execute if score lifesteal slot14 matches 1.. run execute if score splash slot14 matches 1.. run execute if score slot14isatk booleans matches 1 run scoreboard players operation lifestealsplash2 saves /= lifesteal slot14
execute if score slot11 hp matches 1.. run execute if score ward slot11 matches 0 run execute if score slot14bleeding booleaneffects matches 0 run execute if score lifesteal slot14 matches 1.. run execute if score splash slot14 matches 1.. run execute if score slot14isatk booleans matches 1 run scoreboard players operation slot14 hp += lifestealsplash2 saves
#slot 7
execute if score lifesteal slot15 matches 1.. run execute if score splash slot15 matches 1.. run execute if score slot15isatk booleans matches 1 run scoreboard players operation lifestealsplash2 saves = atk slot15
execute if score lifesteal slot15 matches 1.. run execute if score splash slot15 matches 1.. run execute if score slot15isatk booleans matches 1 run scoreboard players operation lifestealsplash2 saves += slot15 atkmodifiers
execute if score lifesteal slot15 matches 1.. run execute if score splash slot15 matches 1.. run execute if score slot15isatk booleans matches 1 run scoreboard players operation lifestealsplash2 saves /= splash slot15
execute if score lifesteal slot15 matches 1.. run execute if score splash slot15 matches 1.. run execute if score slot15isatk booleans matches 1 run scoreboard players operation lifestealsplash2 saves += marks slot11
execute if score lifesteal slot15 matches 1.. run execute if score splash slot15 matches 1.. run execute if score slot15isatk booleans matches 1 run scoreboard players operation lifestealsplash2 saves /= atkmultiplier slot11
execute if score lifesteal slot15 matches 1.. run execute if score splash slot15 matches 1.. run execute if score slot15isatk booleans matches 1 run scoreboard players operation lifestealsplash2 saves /= lifesteal slot15
execute if score slot11 hp matches 1.. run execute if score ward slot11 matches 0 run execute if score slot15bleeding booleaneffects matches 0 run execute if score lifesteal slot15 matches 1.. run execute if score splash slot15 matches 1.. run execute if score slot15isatk booleans matches 1 run scoreboard players operation slot15 hp += lifestealsplash2 saves
#slot 8
execute if score lifesteal slot16 matches 1.. run execute if score splash slot16 matches 1.. run execute if score slot16isatk booleans matches 1 run scoreboard players operation lifestealsplash2 saves = atk slot16
execute if score lifesteal slot16 matches 1.. run execute if score splash slot16 matches 1.. run execute if score slot16isatk booleans matches 1 run scoreboard players operation lifestealsplash2 saves += slot16 atkmodifiers
execute if score lifesteal slot16 matches 1.. run execute if score splash slot16 matches 1.. run execute if score slot16isatk booleans matches 1 run scoreboard players operation lifestealsplash2 saves /= splash slot16
execute if score lifesteal slot16 matches 1.. run execute if score splash slot16 matches 1.. run execute if score slot16isatk booleans matches 1 run scoreboard players operation lifestealsplash2 saves += marks slot11
execute if score lifesteal slot16 matches 1.. run execute if score splash slot16 matches 1.. run execute if score slot16isatk booleans matches 1 run scoreboard players operation lifestealsplash2 saves /= atkmultiplier slot11
execute if score lifesteal slot16 matches 1.. run execute if score splash slot16 matches 1.. run execute if score slot16isatk booleans matches 1 run scoreboard players operation lifestealsplash2 saves /= lifesteal slot16
execute if score slot11 hp matches 1.. run execute if score ward slot11 matches 0 run execute if score slot16bleeding booleaneffects matches 0 run execute if score lifesteal slot16 matches 1.. run execute if score splash slot16 matches 1.. run execute if score slot16isatk booleans matches 1 run scoreboard players operation slot16 hp += lifestealsplash2 saves


#double target + turn end trigger
#regular attack
execute if score slot13isatk booleans matches 1 run execute if score doubleatk slot13 matches 0 run function chtoo:turnend
execute if score slot14isatk booleans matches 1 run execute if score doubleatk slot14 matches 0 run function chtoo:turnend
execute if score slot15isatk booleans matches 1 run execute if score doubleatk slot15 matches 0 run function chtoo:turnend
execute if score slot16isatk booleans matches 1 run execute if score doubleatk slot16 matches 0 run function chtoo:turnend
#double target (2nd hit)
execute if score slot13isatk booleans matches 1 run execute if score doubleatk slot13 matches 1 run execute if score useddoubleatk slot13 matches 1 run function chtoo:turnend
execute if score slot14isatk booleans matches 1 run execute if score doubleatk slot14 matches 1 run execute if score useddoubleatk slot14 matches 1 run function chtoo:turnend
execute if score slot15isatk booleans matches 1 run execute if score doubleatk slot15 matches 1 run execute if score useddoubleatk slot15 matches 1 run function chtoo:turnend
execute if score slot16isatk booleans matches 1 run execute if score doubleatk slot16 matches 1 run execute if score useddoubleatk slot16 matches 1 run function chtoo:turnend
#double target (1st hit)
execute if score slot13isatk booleans matches 1 run execute if score doubleatk slot13 matches 1 run execute if score useddoubleatk slot13 matches 0 run function chtoo:basicattackstartp4
execute if score slot13isatk booleans matches 1 run execute if score doubleatk slot13 matches 1 run execute if score useddoubleatk slot13 matches 0 run scoreboard players set useddoubleatk slot13 1
execute if score slot14isatk booleans matches 1 run execute if score doubleatk slot14 matches 1 run execute if score useddoubleatk slot14 matches 0 run function chtoo:basicattackstartp4
execute if score slot14isatk booleans matches 1 run execute if score doubleatk slot14 matches 1 run execute if score useddoubleatk slot14 matches 0 run scoreboard players set useddoubleatk slot14 1
execute if score slot15isatk booleans matches 1 run execute if score doubleatk slot15 matches 1 run execute if score useddoubleatk slot15 matches 0 run function chtoo:basicattackstartp4
execute if score slot15isatk booleans matches 1 run execute if score doubleatk slot15 matches 1 run execute if score useddoubleatk slot15 matches 0 run scoreboard players set useddoubleatk slot15 1
execute if score slot16isatk booleans matches 1 run execute if score doubleatk slot16 matches 1 run execute if score useddoubleatk slot16 matches 0 run function chtoo:basicattackstartp4
execute if score slot16isatk booleans matches 1 run execute if score doubleatk slot16 matches 1 run execute if score useddoubleatk slot16 matches 0 run scoreboard players set useddoubleatk slot16 1
