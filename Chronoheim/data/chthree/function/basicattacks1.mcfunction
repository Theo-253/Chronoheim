#basic attack functions
clear @a[tag=p6]
#slot 5
execute if score slot21isatk booleans matches 1 run scoreboard players operation atk3 saves = atk slot21
execute if score slot21isatk booleans matches 1 run scoreboard players operation atk3 saves += slot21 atkmodifiers
execute if score slot21isatk booleans matches 1 run scoreboard players operation atk3 saves += marks slot17
execute if score slot21isatk booleans matches 1 run scoreboard players operation atk3 saves /= atkmultiplier slot17
execute if score slot21isatk booleans matches 1 run scoreboard players operation shield slot17 -= atk3 saves
#slot 6
execute if score slot23isatk booleans matches 1 run scoreboard players operation atk3 saves = atk slot23
execute if score slot23isatk booleans matches 1 run scoreboard players operation atk3 saves += slot23 atkmodifiers
execute if score slot23isatk booleans matches 1 run scoreboard players operation atk3 saves += marks slot17
execute if score slot23isatk booleans matches 1 run scoreboard players operation atk3 saves /= atkmultiplier slot17
execute if score slot23isatk booleans matches 1 run scoreboard players operation shield slot17 -= atk3 saves
#slot 7
execute if score slot23isatk booleans matches 1 run scoreboard players operation atk3 saves = atk slot23
execute if score slot23isatk booleans matches 1 run scoreboard players operation atk3 saves += marks slot17
execute if score slot23isatk booleans matches 1 run scoreboard players operation atk3 saves += slot23 atkmodifiers
execute if score slot23isatk booleans matches 1 run scoreboard players operation atk3 saves /= atkmultiplier slot17
execute if score slot23isatk booleans matches 1 run scoreboard players operation shield slot17 -= atk3 saves
#slot 8
execute if score slot24isatk booleans matches 1 run scoreboard players operation atk3 saves = atk slot24
execute if score slot24isatk booleans matches 1 run scoreboard players operation atk3 saves += marks slot17
execute if score slot24isatk booleans matches 1 run scoreboard players operation atk3 saves += slot24 atkmodifiers
execute if score slot24isatk booleans matches 1 run scoreboard players operation atk3 saves /= atkmultiplier slot17
execute if score slot24isatk booleans matches 1 run scoreboard players operation shield slot17 -= atk3 saves
#damage + shield reset (all)
execute if score shield slot17 matches ..0 if score ward slot17 matches 0 run scoreboard players operation slot17 hp += shield slot17
execute if score ward slot17 matches 1.. run function ch:wardslot17
execute if score shield slot17 matches ..0 run scoreboard players set shield slot17 0
execute at @e[name=slot17,type=armor_stand] run particle minecraft:crit ~ ~1 ~ 0.9 0.9 0.9 0.5 100

#splash
#slot21
execute if score splash slot21 matches 1.. run execute if score slot21isatk booleans matches 1 run scoreboard players operation splashdamage3 saves = atk slot21
execute if score splash slot21 matches 1.. run execute if score slot21isatk booleans matches 1 run scoreboard players operation splashdamage3 saves += slot21 atkmodifiers
execute if score splash slot21 matches 1.. run execute if score slot21isatk booleans matches 1 run scoreboard players operation splashdamage3 saves /= splash slot21
execute if score splash slot21 matches 1.. run execute if score slot21isatk booleans matches 1 run scoreboard players operation splashdamage3 saves += marks slot18
execute if score splash slot21 matches 1.. run execute if score slot21isatk booleans matches 1 run scoreboard players operation splashdamage3 saves /= atkmultiplier slot18
execute if score ward slot18 matches 0 run execute if score splash slot21 matches 1.. run execute if score slot21isatk booleans matches 1 run scoreboard players operation shield slot18 -= splashdamage3 saves
execute if score ward slot18 matches 1.. run execute if score splash slot21 matches 1.. run execute if score slot21isatk booleans matches 1 run function ch:wardslot18
execute if score splash slot21 matches 1.. if score slot21isatk booleans matches 1 at @e[name=slot18,type=armor_stand] run particle minecraft:crit ~ ~1 ~ 0.9 0.9 0.9 0.5 50

#slot23
execute if score splash slot23 matches 1.. run execute if score slot23isatk booleans matches 1 run scoreboard players operation splashdamage3 saves = atk slot23
execute if score splash slot23 matches 1.. run execute if score slot23isatk booleans matches 1 run scoreboard players operation splashdamage3 saves += slot23 atkmodifiers
execute if score splash slot23 matches 1.. run execute if score slot23isatk booleans matches 1 run scoreboard players operation splashdamage3 saves /= splash slot23
execute if score splash slot23 matches 1.. run execute if score slot23isatk booleans matches 1 run scoreboard players operation splashdamage3 saves += marks slot18
execute if score splash slot23 matches 1.. run execute if score slot23isatk booleans matches 1 run scoreboard players operation splashdamage3 saves /= atkmultiplier slot18
execute if score ward slot18 matches 0 run execute if score splash slot23 matches 1.. run execute if score slot23isatk booleans matches 1 run scoreboard players operation shield slot18 -= splashdamage3 saves
execute if score ward slot18 matches 1.. run execute if score splash slot23 matches 1.. run execute if score slot23isatk booleans matches 1 run function ch:wardslot18
execute if score splash slot23 matches 1.. if score slot23isatk booleans matches 1 at @e[name=slot18,type=armor_stand] run particle minecraft:crit ~ ~1 ~ 0.9 0.9 0.9 0.5 50
#slot23
execute if score splash slot23 matches 1.. run execute if score slot23isatk booleans matches 1 run scoreboard players operation splashdamage3 saves = atk slot23
execute if score splash slot23 matches 1.. run execute if score slot23isatk booleans matches 1 run scoreboard players operation splashdamage3 saves += slot23 atkmodifiers
execute if score splash slot23 matches 1.. run execute if score slot23isatk booleans matches 1 run scoreboard players operation splashdamage3 saves /= splash slot23
execute if score splash slot23 matches 1.. run execute if score slot23isatk booleans matches 1 run scoreboard players operation splashdamage3 saves += marks slot18
execute if score splash slot23 matches 1.. run execute if score slot23isatk booleans matches 1 run scoreboard players operation splashdamage3 saves /= atkmultiplier slot18
execute if score ward slot18 matches 0 run execute if score splash slot23 matches 1.. run execute if score slot23isatk booleans matches 1 run scoreboard players operation shield slot18 -= splashdamage3 saves
execute if score ward slot18 matches 1.. run execute if score splash slot23 matches 1.. run execute if score slot23isatk booleans matches 1 run function ch:wardslot18
execute if score splash slot23 matches 1.. if score slot23isatk booleans matches 1 at @e[name=slot18,type=armor_stand] run particle minecraft:crit ~ ~1 ~ 0.9 0.9 0.9 0.5 50
#slot24
execute if score splash slot24 matches 1.. run execute if score slot24isatk booleans matches 1 run scoreboard players operation splashdamage3 saves = atk slot24
execute if score splash slot24 matches 1.. run execute if score slot24isatk booleans matches 1 run scoreboard players operation splashdamage3 saves += slot24 atkmodifiers
execute if score splash slot24 matches 1.. run execute if score slot24isatk booleans matches 1 run scoreboard players operation splashdamage3 saves /= splash slot24
execute if score splash slot24 matches 1.. run execute if score slot24isatk booleans matches 1 run scoreboard players operation splashdamage3 saves += marks slot18
execute if score splash slot24 matches 1.. run execute if score slot24isatk booleans matches 1 run scoreboard players operation splashdamage3 saves /= atkmultiplier slot18
execute if score ward slot18 matches 0 run execute if score splash slot24 matches 1.. run execute if score slot24isatk booleans matches 1 run scoreboard players operation shield slot18 -= splashdamage3 saves
execute if score ward slot18 matches 1.. run execute if score splash slot24 matches 1.. run execute if score slot24isatk booleans matches 1 run function ch:wardslot18
execute if score splash slot24 matches 1.. if score slot24isatk booleans matches 1 at @e[name=slot18,type=armor_stand] run particle minecraft:crit ~ ~1 ~ 0.9 0.9 0.9 0.5 50
#damage + shield reset (all)
execute if score shield slot18 matches ..0 if score ward slot18 matches 0 run scoreboard players operation slot18 hp += shield slot18
execute if score ward slot18 matches 1.. run function ch:wardslot18
execute if score shield slot18 matches ..0 run scoreboard players set shield slot18 0


#lifesteal
#slot 5
execute if score lifesteal slot21 matches 1.. run execute if score slot21isatk booleans matches 1 run scoreboard players operation lifesteal3 saves = atk slot21
execute if score lifesteal slot21 matches 1.. run execute if score slot21isatk booleans matches 1 run scoreboard players operation lifesteal3 saves += slot21 atkmodifiers
execute if score lifesteal slot21 matches 1.. run execute if score slot21isatk booleans matches 1 run scoreboard players operation lifesteal3 saves += marks slot17
execute if score lifesteal slot21 matches 1.. run execute if score slot21isatk booleans matches 1 run scoreboard players operation lifesteal3 saves /= atkmultiplier slot17
execute if score lifesteal slot21 matches 1.. run execute if score slot21isatk booleans matches 1 run scoreboard players operation lifesteal3 saves /= lifesteal slot21
execute if score ward slot17 matches 0 if score slot21bleeding booleaneffects matches 0 run execute if score lifesteal slot21 matches 1.. run execute if score slot21isatk booleans matches 1 run scoreboard players operation slot21 hp += lifesteal3 saves
execute if score ward slot17 matches 0 if score lifesteal slot21 matches 1.. if score slot21isatk booleans matches 1 at @e[name=slot21,type=armor_stand] run particle minecraft:composter ~ ~1 ~ 0.9 0.9 0.9 0.5 50

#slot 6
execute if score lifesteal slot23 matches 1.. run execute if score slot23isatk booleans matches 1 run scoreboard players operation lifesteal3 saves = atk slot23
execute if score lifesteal slot23 matches 1.. run execute if score slot23isatk booleans matches 1 run scoreboard players operation lifesteal3 saves += slot23 atkmodifiers
execute if score lifesteal slot23 matches 1.. run execute if score slot23isatk booleans matches 1 run scoreboard players operation lifesteal3 saves += marks slot17
execute if score lifesteal slot23 matches 1.. run execute if score slot23isatk booleans matches 1 run scoreboard players operation lifesteal3 saves /= atkmultiplier slot17
execute if score lifesteal slot23 matches 1.. run execute if score slot23isatk booleans matches 1 run scoreboard players operation lifesteal3 saves /= lifesteal slot23
execute if score ward slot17 matches 0 if score slot23bleeding booleaneffects matches 0 run execute if score lifesteal slot23 matches 1.. run execute if score slot23isatk booleans matches 1 run scoreboard players operation slot23 hp += lifesteal3 saves
execute if score ward slot17 matches 0 if score lifesteal slot23 matches 1.. if score slot23isatk booleans matches 1 at @e[name=slot23,type=armor_stand] run particle minecraft:composter ~ ~1 ~ 0.9 0.9 0.9 0.5 50
#slot 7
execute if score lifesteal slot23 matches 1.. run execute if score slot23isatk booleans matches 1 run scoreboard players operation lifesteal3 saves = atk slot23
execute if score lifesteal slot23 matches 1.. run execute if score slot23isatk booleans matches 1 run scoreboard players operation lifesteal3 saves += slot23 atkmodifiers
execute if score lifesteal slot23 matches 1.. run execute if score slot23isatk booleans matches 1 run scoreboard players operation lifesteal3 saves += marks slot17
execute if score lifesteal slot23 matches 1.. run execute if score slot23isatk booleans matches 1 run scoreboard players operation lifesteal3 saves /= atkmultiplier slot17
execute if score lifesteal slot23 matches 1.. run execute if score slot23isatk booleans matches 1 run scoreboard players operation lifesteal3 saves /= lifesteal slot23
execute if score ward slot17 matches 0 if score slot23bleeding booleaneffects matches 0 run execute if score lifesteal slot23 matches 1.. run execute if score slot23isatk booleans matches 1 run scoreboard players operation slot23 hp += lifesteal3 saves
execute if score ward slot17 matches 0 if score lifesteal slot23 matches 1.. if score slot23isatk booleans matches 1 at @e[name=slot23,type=armor_stand] run particle minecraft:composter ~ ~1 ~ 0.9 0.9 0.9 0.5 50
#slot 8
execute if score lifesteal slot24 matches 1.. run execute if score slot24isatk booleans matches 1 run scoreboard players operation lifesteal3 saves = atk slot24
execute if score lifesteal slot24 matches 1.. run execute if score slot24isatk booleans matches 1 run scoreboard players operation lifesteal3 saves += slot24 atkmodifiers
execute if score lifesteal slot24 matches 1.. run execute if score slot24isatk booleans matches 1 run scoreboard players operation lifesteal3 saves += marks slot17
execute if score lifesteal slot24 matches 1.. run execute if score slot24isatk booleans matches 1 run scoreboard players operation lifesteal3 saves /= atkmultiplier slot17
execute if score lifesteal slot24 matches 1.. run execute if score slot24isatk booleans matches 1 run scoreboard players operation lifesteal3 saves /= lifesteal slot24
execute if score ward slot17 matches 0 if score slot24bleeding booleaneffects matches 0 run execute if score lifesteal slot24 matches 1.. run execute if score slot24isatk booleans matches 1 run scoreboard players operation slot24 hp += lifesteal3 saves
execute if score ward slot17 matches 0 if score lifesteal slot24 matches 1.. if score slot24isatk booleans matches 1 at @e[name=slot24,type=armor_stand] run particle minecraft:composter ~ ~1 ~ 0.9 0.9 0.9 0.5 50

#lifesteal + splash
#slot 5
execute if score lifesteal slot21 matches 1.. run execute if score splash slot21 matches 1.. run execute if score slot21isatk booleans matches 1 run scoreboard players operation lifestealsplash3 saves = atk slot21
execute if score lifesteal slot21 matches 1.. run execute if score splash slot21 matches 1.. run execute if score slot21isatk booleans matches 1 run scoreboard players operation lifestealsplash3 saves += slot21 atkmodifiers
execute if score lifesteal slot21 matches 1.. run execute if score splash slot21 matches 1.. run execute if score slot21isatk booleans matches 1 run scoreboard players operation lifestealsplash3 saves /= splash slot21
execute if score lifesteal slot21 matches 1.. run execute if score splash slot21 matches 1.. run execute if score slot21isatk booleans matches 1 run scoreboard players operation lifestealsplash3 saves += marks slot18
execute if score lifesteal slot21 matches 1.. run execute if score splash slot21 matches 1.. run execute if score slot21isatk booleans matches 1 run scoreboard players operation lifestealsplash3 saves /= atkmultiplier slot18
execute if score lifesteal slot21 matches 1.. run execute if score splash slot21 matches 1.. run execute if score slot21isatk booleans matches 1 run scoreboard players operation lifestealsplash3 saves /= lifesteal slot21
execute if score slot18 hp matches 1.. run execute if score ward slot18 matches 0 run execute if score slot21bleeding booleaneffects matches 0 run execute if score lifesteal slot21 matches 1.. run execute if score splash slot21 matches 1.. run execute if score slot21isatk booleans matches 1 run scoreboard players operation slot21 hp += lifestealsplash3 saves
#slot 6
execute if score lifesteal slot23 matches 1.. run execute if score splash slot23 matches 1.. run execute if score slot23isatk booleans matches 1 run scoreboard players operation lifestealsplash3 saves = atk slot23
execute if score lifesteal slot23 matches 1.. run execute if score splash slot23 matches 1.. run execute if score slot23isatk booleans matches 1 run scoreboard players operation lifestealsplash3 saves += slot23 atkmodifiers
execute if score lifesteal slot23 matches 1.. run execute if score splash slot23 matches 1.. run execute if score slot23isatk booleans matches 1 run scoreboard players operation lifestealsplash3 saves /= splash slot23
execute if score lifesteal slot23 matches 1.. run execute if score splash slot23 matches 1.. run execute if score slot23isatk booleans matches 1 run scoreboard players operation lifestealsplash3 saves += marks slot18
execute if score lifesteal slot23 matches 1.. run execute if score splash slot23 matches 1.. run execute if score slot23isatk booleans matches 1 run scoreboard players operation lifestealsplash3 saves /= atkmultiplier slot18
execute if score lifesteal slot23 matches 1.. run execute if score splash slot23 matches 1.. run execute if score slot23isatk booleans matches 1 run scoreboard players operation lifestealsplash3 saves /= lifesteal slot23
execute if score slot18 hp matches 1.. run execute if score ward slot18 matches 0 run execute if score slot23bleeding booleaneffects matches 0 run execute if score lifesteal slot23 matches 1.. run execute if score splash slot23 matches 1.. run execute if score slot23isatk booleans matches 1 run scoreboard players operation slot23 hp += lifestealsplash3 saves
#slot 7
execute if score lifesteal slot23 matches 1.. run execute if score splash slot23 matches 1.. run execute if score slot23isatk booleans matches 1 run scoreboard players operation lifestealsplash3 saves = atk slot23
execute if score lifesteal slot23 matches 1.. run execute if score splash slot23 matches 1.. run execute if score slot23isatk booleans matches 1 run scoreboard players operation lifestealsplash3 saves += slot23 atkmodifiers
execute if score lifesteal slot23 matches 1.. run execute if score splash slot23 matches 1.. run execute if score slot23isatk booleans matches 1 run scoreboard players operation lifestealsplash3 saves /= splash slot23
execute if score lifesteal slot23 matches 1.. run execute if score splash slot23 matches 1.. run execute if score slot23isatk booleans matches 1 run scoreboard players operation lifestealsplash3 saves += marks slot18
execute if score lifesteal slot23 matches 1.. run execute if score splash slot23 matches 1.. run execute if score slot23isatk booleans matches 1 run scoreboard players operation lifestealsplash3 saves /= atkmultiplier slot18
execute if score lifesteal slot23 matches 1.. run execute if score splash slot23 matches 1.. run execute if score slot23isatk booleans matches 1 run scoreboard players operation lifestealsplash3 saves /= lifesteal slot23
execute if score slot18 hp matches 1.. run execute if score ward slot18 matches 0 run execute if score slot23bleeding booleaneffects matches 0 run execute if score lifesteal slot23 matches 1.. run execute if score splash slot23 matches 1.. run execute if score slot23isatk booleans matches 1 run scoreboard players operation slot23 hp += lifestealsplash3 saves
#slot 8
execute if score lifesteal slot24 matches 1.. run execute if score splash slot24 matches 1.. run execute if score slot24isatk booleans matches 1 run scoreboard players operation lifestealsplash3 saves = atk slot24
execute if score lifesteal slot24 matches 1.. run execute if score splash slot24 matches 1.. run execute if score slot24isatk booleans matches 1 run scoreboard players operation lifestealsplash3 saves += slot24 atkmodifiers
execute if score lifesteal slot24 matches 1.. run execute if score splash slot24 matches 1.. run execute if score slot24isatk booleans matches 1 run scoreboard players operation lifestealsplash3 saves /= splash slot24
execute if score lifesteal slot24 matches 1.. run execute if score splash slot24 matches 1.. run execute if score slot24isatk booleans matches 1 run scoreboard players operation lifestealsplash3 saves += marks slot18
execute if score lifesteal slot24 matches 1.. run execute if score splash slot24 matches 1.. run execute if score slot24isatk booleans matches 1 run scoreboard players operation lifestealsplash3 saves /= atkmultiplier slot18
execute if score lifesteal slot24 matches 1.. run execute if score splash slot24 matches 1.. run execute if score slot24isatk booleans matches 1 run scoreboard players operation lifestealsplash3 saves /= lifesteal slot24
execute if score slot18 hp matches 1.. run execute if score ward slot18 matches 0 run execute if score slot24bleeding booleaneffects matches 0 run execute if score lifesteal slot24 matches 1.. run execute if score splash slot24 matches 1.. run execute if score slot24isatk booleans matches 1 run scoreboard players operation slot24 hp += lifestealsplash3 saves

#Special Cases
execute if score slot21isatk booleans matches 1 if score character# slot21 matches 29 run scoreboard players operation slot17bleeding booleaneffects = ripperBleed abilityStats
execute if score slot23isatk booleans matches 1 if score character# slot23 matches 29 run scoreboard players operation slot17bleeding booleaneffects = ripperBleed abilityStats
execute if score slot23isatk booleans matches 1 if score character# slot23 matches 29 run scoreboard players operation slot17bleeding booleaneffects = ripperBleed abilityStats


#double target + turn end trigger
#regular attack
execute if score slot21isatk booleans matches 1 run execute if score doubleatk slot21 matches 0 run function ch:turnend
execute if score slot23isatk booleans matches 1 run execute if score doubleatk slot23 matches 0 run function ch:turnend
execute if score slot23isatk booleans matches 1 run execute if score doubleatk slot23 matches 0 run function ch:turnend
execute if score slot24isatk booleans matches 1 run execute if score doubleatk slot24 matches 0 run function ch:turnend
#double target (2nd hit)
execute if score slot21isatk booleans matches 1 run execute if score doubleatk slot21 matches 1 run execute if score useddoubleatk slot21 matches 1 run function ch:turnend
execute if score slot23isatk booleans matches 1 run execute if score doubleatk slot23 matches 1 run execute if score useddoubleatk slot23 matches 1 run function ch:turnend
execute if score slot23isatk booleans matches 1 run execute if score doubleatk slot23 matches 1 run execute if score useddoubleatk slot23 matches 1 run function ch:turnend
execute if score slot24isatk booleans matches 1 run execute if score doubleatk slot24 matches 1 run execute if score useddoubleatk slot24 matches 1 run function ch:turnend
#double target (1st hit)
execute if score slot21isatk booleans matches 1 run execute if score doubleatk slot21 matches 1 run execute if score useddoubleatk slot21 matches 0 run function ch:basicattackstartp6
execute if score slot21isatk booleans matches 1 run execute if score doubleatk slot21 matches 1 run execute if score useddoubleatk slot21 matches 0 run scoreboard players set useddoubleatk slot21 1
execute if score slot23isatk booleans matches 1 run execute if score doubleatk slot23 matches 1 run execute if score useddoubleatk slot23 matches 0 run function ch:basicattackstartp6
execute if score slot23isatk booleans matches 1 run execute if score doubleatk slot23 matches 1 run execute if score useddoubleatk slot23 matches 0 run scoreboard players set useddoubleatk slot23 1
execute if score slot23isatk booleans matches 1 run execute if score doubleatk slot23 matches 1 run execute if score useddoubleatk slot23 matches 0 run function ch:basicattackstartp6
execute if score slot23isatk booleans matches 1 run execute if score doubleatk slot23 matches 1 run execute if score useddoubleatk slot23 matches 0 run scoreboard players set useddoubleatk slot23 1
execute if score slot24isatk booleans matches 1 run execute if score doubleatk slot24 matches 1 run execute if score useddoubleatk slot24 matches 0 run function ch:basicattackstartp6
execute if score slot24isatk booleans matches 1 run execute if score doubleatk slot24 matches 1 run execute if score useddoubleatk slot24 matches 0 run scoreboard players set useddoubleatk slot24 1
