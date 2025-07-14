#basic attack functions
clear @a[tag=p5]
#slot 5
execute if score slot17isatk booleans matches 1 run scoreboard players operation atk1 saves = atk slot17
execute if score slot17isatk booleans matches 1 run scoreboard players operation atk1 saves += slot17 atkmodifiers
execute if score slot17isatk booleans matches 1 run scoreboard players operation atk1 saves += marks slot23
execute if score slot17isatk booleans matches 1 run scoreboard players operation atk1 saves /= atkmultiplier slot23
execute if score slot17isatk booleans matches 1 run scoreboard players operation shield slot23 -= atk1 saves
#slot 6
execute if score slot18isatk booleans matches 1 run scoreboard players operation atk1 saves = atk slot18
execute if score slot18isatk booleans matches 1 run scoreboard players operation atk1 saves += slot18 atkmodifiers
execute if score slot18isatk booleans matches 1 run scoreboard players operation atk1 saves += marks slot23
execute if score slot18isatk booleans matches 1 run scoreboard players operation atk1 saves /= atkmultiplier slot23
execute if score slot18isatk booleans matches 1 run scoreboard players operation shield slot23 -= atk1 saves
#slot 7
execute if score slot19isatk booleans matches 1 run scoreboard players operation atk1 saves = atk slot19
execute if score slot19isatk booleans matches 1 run scoreboard players operation atk1 saves += marks slot23
execute if score slot19isatk booleans matches 1 run scoreboard players operation atk1 saves += slot19 atkmodifiers
execute if score slot19isatk booleans matches 1 run scoreboard players operation atk1 saves /= atkmultiplier slot23
execute if score slot19isatk booleans matches 1 run scoreboard players operation shield slot23 -= atk1 saves
#slot 8
execute if score slot20isatk booleans matches 1 run scoreboard players operation atk1 saves = atk slot20
execute if score slot20isatk booleans matches 1 run scoreboard players operation atk1 saves += marks slot23
execute if score slot20isatk booleans matches 1 run scoreboard players operation atk1 saves += slot20 atkmodifiers
execute if score slot20isatk booleans matches 1 run scoreboard players operation atk1 saves /= atkmultiplier slot23
execute if score slot20isatk booleans matches 1 run scoreboard players operation shield slot23 -= atk1 saves
#damage + shield reset (all)
execute if score shield slot23 matches ..0 if score ward slot23 matches 0 run scoreboard players operation slot23 hp += shield slot23
execute if score ward slot23 matches 1.. run function ch:wardslot23
execute if score shield slot23 matches ..0 run scoreboard players set shield slot23 0
execute at @e[name=slot23,type=armor_stand] run particle minecraft:crit ~ ~1 ~ 0.9 0.9 0.9 0.5 100


#splash
#slot17
execute if score splash slot17 matches 1.. run execute if score slot17isatk booleans matches 1 run scoreboard players operation splashdamage2 saves = atk slot17
execute if score splash slot17 matches 1.. run execute if score slot17isatk booleans matches 1 run scoreboard players operation splashdamage2 saves += slot17 atkmodifiers
execute if score splash slot17 matches 1.. run execute if score slot17isatk booleans matches 1 run scoreboard players operation splashdamage2 saves /= splash slot17
execute if score splash slot17 matches 1.. run execute if score slot17isatk booleans matches 1 run scoreboard players operation splashdamage2 saves += marks slot23
execute if score splash slot17 matches 1.. run execute if score slot17isatk booleans matches 1 run scoreboard players operation splashdamage2 saves /= atkmultiplier slot23
execute if score ward slot23 matches 0 run execute if score splash slot17 matches 1.. run execute if score slot17isatk booleans matches 1 run scoreboard players operation shield slot23 -= splashdamage2 saves
execute if score ward slot23 matches 1.. run execute if score splash slot17 matches 1.. run execute if score slot17isatk booleans matches 1 run function ch:wardslot23
execute if score splash slot17 matches 1.. if score slot17isatk booleans matches 1 at @e[name=slot23,type=armor_stand] run particle minecraft:crit ~ ~1 ~ 0.9 0.9 0.9 0.5 50
execute if score splash slot17 matches 1.. run execute if score slot17isatk booleans matches 1 run scoreboard players operation splashdamage2 saves = atk slot17
execute if score splash slot17 matches 1.. run execute if score slot17isatk booleans matches 1 run scoreboard players operation splashdamage2 saves += slot17 atkmodifiers
execute if score splash slot17 matches 1.. run execute if score slot17isatk booleans matches 1 run scoreboard players operation splashdamage2 saves /= splash slot17
execute if score splash slot17 matches 1.. run execute if score slot17isatk booleans matches 1 run scoreboard players operation splashdamage2 saves += marks slot24
execute if score splash slot17 matches 1.. run execute if score slot17isatk booleans matches 1 run scoreboard players operation splashdamage2 saves /= atkmultiplier slot24
execute if score ward slot24 matches 0 run execute if score splash slot17 matches 1.. run execute if score slot17isatk booleans matches 1 run scoreboard players operation shield slot24 -= splashdamage2 saves
execute if score ward slot24 matches 1.. run execute if score splash slot17 matches 1.. run execute if score slot17isatk booleans matches 1 run function ch:wardslot24
execute if score splash slot17 matches 1.. if score slot17isatk booleans matches 1 at @e[name=slot24,type=armor_stand] run particle minecraft:crit ~ ~1 ~ 0.9 0.9 0.9 0.5 50

#slot18
execute if score splash slot18 matches 1.. run execute if score slot18isatk booleans matches 1 run scoreboard players operation splashdamage2 saves = atk slot18
execute if score splash slot18 matches 1.. run execute if score slot18isatk booleans matches 1 run scoreboard players operation splashdamage2 saves += slot18 atkmodifiers
execute if score splash slot18 matches 1.. run execute if score slot18isatk booleans matches 1 run scoreboard players operation splashdamage2 saves /= splash slot18
execute if score splash slot18 matches 1.. run execute if score slot18isatk booleans matches 1 run scoreboard players operation splashdamage2 saves += marks slot23
execute if score splash slot18 matches 1.. run execute if score slot18isatk booleans matches 1 run scoreboard players operation splashdamage2 saves /= atkmultiplier slot23
execute if score ward slot23 matches 0 run execute if score splash slot18 matches 1.. run execute if score slot18isatk booleans matches 1 run scoreboard players operation shield slot23 -= splashdamage2 saves
execute if score ward slot23 matches 1.. run execute if score splash slot18 matches 1.. run execute if score slot18isatk booleans matches 1 run function ch:wardslot23
execute if score splash slot18 matches 1.. if score slot18isatk booleans matches 1 at @e[name=slot23,type=armor_stand] run particle minecraft:crit ~ ~1 ~ 0.9 0.9 0.9 0.5 50
execute if score splash slot18 matches 1.. run execute if score slot18isatk booleans matches 1 run scoreboard players operation splashdamage2 saves = atk slot18
execute if score splash slot18 matches 1.. run execute if score slot18isatk booleans matches 1 run scoreboard players operation splashdamage2 saves += slot18 atkmodifiers
execute if score splash slot18 matches 1.. run execute if score slot18isatk booleans matches 1 run scoreboard players operation splashdamage2 saves /= splash slot18
execute if score splash slot18 matches 1.. run execute if score slot18isatk booleans matches 1 run scoreboard players operation splashdamage2 saves += marks slot24
execute if score splash slot18 matches 1.. run execute if score slot18isatk booleans matches 1 run scoreboard players operation splashdamage2 saves /= atkmultiplier slot24
execute if score ward slot24 matches 0 run execute if score splash slot18 matches 1.. run execute if score slot18isatk booleans matches 1 run scoreboard players operation shield slot24 -= splashdamage2 saves
execute if score ward slot24 matches 1.. run execute if score splash slot18 matches 1.. run execute if score slot18isatk booleans matches 1 run function ch:wardslot24
execute if score splash slot18 matches 1.. if score slot18isatk booleans matches 1 at @e[name=slot24,type=armor_stand] run particle minecraft:crit ~ ~1 ~ 0.9 0.9 0.9 0.5 50

#slot19
execute if score splash slot19 matches 1.. run execute if score slot19isatk booleans matches 1 run scoreboard players operation splashdamage2 saves = atk slot19
execute if score splash slot19 matches 1.. run execute if score slot19isatk booleans matches 1 run scoreboard players operation splashdamage2 saves += slot19 atkmodifiers
execute if score splash slot19 matches 1.. run execute if score slot19isatk booleans matches 1 run scoreboard players operation splashdamage2 saves /= splash slot19
execute if score splash slot19 matches 1.. run execute if score slot19isatk booleans matches 1 run scoreboard players operation splashdamage2 saves += marks slot23
execute if score splash slot19 matches 1.. run execute if score slot19isatk booleans matches 1 run scoreboard players operation splashdamage2 saves /= atkmultiplier slot23
execute if score ward slot23 matches 0 run execute if score splash slot19 matches 1.. run execute if score slot19isatk booleans matches 1 run scoreboard players operation shield slot23 -= splashdamage2 saves
execute if score ward slot23 matches 1.. run execute if score splash slot19 matches 1.. run execute if score slot19isatk booleans matches 1 run function ch:wardslot23
execute if score splash slot19 matches 1.. if score slot19isatk booleans matches 1 at @e[name=slot23,type=armor_stand] run particle minecraft:crit ~ ~1 ~ 0.9 0.9 0.9 0.5 50
execute if score splash slot19 matches 1.. run execute if score slot19isatk booleans matches 1 run scoreboard players operation splashdamage2 saves = atk slot19
execute if score splash slot19 matches 1.. run execute if score slot19isatk booleans matches 1 run scoreboard players operation splashdamage2 saves += slot19 atkmodifiers
execute if score splash slot19 matches 1.. run execute if score slot19isatk booleans matches 1 run scoreboard players operation splashdamage2 saves /= splash slot19
execute if score splash slot19 matches 1.. run execute if score slot19isatk booleans matches 1 run scoreboard players operation splashdamage2 saves += marks slot24
execute if score splash slot19 matches 1.. run execute if score slot19isatk booleans matches 1 run scoreboard players operation splashdamage2 saves /= atkmultiplier slot24
execute if score ward slot24 matches 0 run execute if score splash slot19 matches 1.. run execute if score slot19isatk booleans matches 1 run scoreboard players operation shield slot24 -= splashdamage2 saves
execute if score ward slot24 matches 1.. run execute if score splash slot19 matches 1.. run execute if score slot19isatk booleans matches 1 run function ch:wardslot24
execute if score splash slot19 matches 1.. if score slot19isatk booleans matches 1 at @e[name=slot24,type=armor_stand] run particle minecraft:crit ~ ~1 ~ 0.9 0.9 0.9 0.5 50

#slot20
execute if score splash slot20 matches 1.. run execute if score slot20isatk booleans matches 1 run scoreboard players operation splashdamage2 saves = atk slot20
execute if score splash slot20 matches 1.. run execute if score slot20isatk booleans matches 1 run scoreboard players operation splashdamage2 saves += slot20 atkmodifiers
execute if score splash slot20 matches 1.. run execute if score slot20isatk booleans matches 1 run scoreboard players operation splashdamage2 saves /= splash slot20
execute if score splash slot20 matches 1.. run execute if score slot20isatk booleans matches 1 run scoreboard players operation splashdamage2 saves += marks slot23
execute if score splash slot20 matches 1.. run execute if score slot20isatk booleans matches 1 run scoreboard players operation splashdamage2 saves /= atkmultiplier slot23
execute if score ward slot23 matches 0 run execute if score splash slot20 matches 1.. run execute if score slot20isatk booleans matches 1 run scoreboard players operation shield slot23 -= splashdamage2 saves
execute if score ward slot23 matches 1.. run execute if score splash slot20 matches 1.. run execute if score slot20isatk booleans matches 1 run function ch:wardslot23
execute if score splash slot20 matches 1.. if score slot20isatk booleans matches 1 at @e[name=slot23,type=armor_stand] run particle minecraft:crit ~ ~1 ~ 0.9 0.9 0.9 0.5 50
execute if score splash slot20 matches 1.. run execute if score slot20isatk booleans matches 1 run scoreboard players operation splashdamage2 saves = atk slot20
execute if score splash slot20 matches 1.. run execute if score slot20isatk booleans matches 1 run scoreboard players operation splashdamage2 saves += slot20 atkmodifiers
execute if score splash slot20 matches 1.. run execute if score slot20isatk booleans matches 1 run scoreboard players operation splashdamage2 saves /= splash slot20
execute if score splash slot20 matches 1.. run execute if score slot20isatk booleans matches 1 run scoreboard players operation splashdamage2 saves += marks slot24
execute if score splash slot20 matches 1.. run execute if score slot20isatk booleans matches 1 run scoreboard players operation splashdamage2 saves /= atkmultiplier slot24
execute if score ward slot24 matches 0 run execute if score splash slot20 matches 1.. run execute if score slot20isatk booleans matches 1 run scoreboard players operation shield slot24 -= splashdamage2 saves
execute if score ward slot24 matches 1.. run execute if score splash slot20 matches 1.. run execute if score slot20isatk booleans matches 1 run function ch:wardslot24
execute if score splash slot20 matches 1.. if score slot20isatk booleans matches 1 at @e[name=slot24,type=armor_stand] run particle minecraft:crit ~ ~1 ~ 0.9 0.9 0.9 0.5 50

#damage + shield reset (all)
execute if score shield slot23 matches ..0 if score ward slot23 matches 0 run scoreboard players operation slot23 hp += shield slot23
execute if score ward slot23 matches 1.. run function ch:wardslot23
execute if score shield slot23 matches ..0 run scoreboard players set shield slot23 0
execute if score shield slot24 matches ..0 if score ward slot24 matches 0 run scoreboard players operation slot24 hp += shield slot24
execute if score ward slot24 matches 1.. run function ch:wardslot24
execute if score shield slot24 matches ..0 run scoreboard players set shield slot24 0


#lifesteal
#slot 5
execute if score lifesteal slot17 matches 1.. run execute if score slot17isatk booleans matches 1 run scoreboard players operation lifesteal2 saves = atk slot17
execute if score lifesteal slot17 matches 1.. run execute if score slot17isatk booleans matches 1 run scoreboard players operation lifesteal2 saves += slot17 atkmodifiers
execute if score lifesteal slot17 matches 1.. run execute if score slot17isatk booleans matches 1 run scoreboard players operation lifesteal2 saves += marks slot23
execute if score lifesteal slot17 matches 1.. run execute if score slot17isatk booleans matches 1 run scoreboard players operation lifesteal2 saves /= atkmultiplier slot23
execute if score lifesteal slot17 matches 1.. run execute if score slot17isatk booleans matches 1 run scoreboard players operation lifesteal2 saves /= lifesteal slot17
execute if score ward slot23 matches 0 if score slot17bleeding booleaneffects matches 0 run execute if score lifesteal slot17 matches 1.. run execute if score slot17isatk booleans matches 1 run scoreboard players operation slot17 hp += lifesteal2 saves
execute if score ward slot23 matches 0 if score lifesteal slot17 matches 1.. if score slot17isatk booleans matches 1 at @e[name=slot17,type=armor_stand] run particle minecraft:composter ~ ~1 ~ 0.9 0.9 0.9 0.5 50
#slot 6
execute if score lifesteal slot18 matches 1.. run execute if score slot18isatk booleans matches 1 run scoreboard players operation lifesteal2 saves = atk slot18
execute if score lifesteal slot18 matches 1.. run execute if score slot18isatk booleans matches 1 run scoreboard players operation lifesteal2 saves += slot18 atkmodifiers
execute if score lifesteal slot18 matches 1.. run execute if score slot18isatk booleans matches 1 run scoreboard players operation lifesteal2 saves += marks slot23
execute if score lifesteal slot18 matches 1.. run execute if score slot18isatk booleans matches 1 run scoreboard players operation lifesteal2 saves /= atkmultiplier slot23
execute if score lifesteal slot18 matches 1.. run execute if score slot18isatk booleans matches 1 run scoreboard players operation lifesteal2 saves /= lifesteal slot18
execute if score ward slot23 matches 0 if score slot18bleeding booleaneffects matches 0 run execute if score lifesteal slot18 matches 1.. run execute if score slot18isatk booleans matches 1 run scoreboard players operation slot18 hp += lifesteal2 saves
execute if score ward slot23 matches 0 if score lifesteal slot18 matches 1.. if score slot18isatk booleans matches 1 at @e[name=slot18,type=armor_stand] run particle minecraft:composter ~ ~1 ~ 0.9 0.9 0.9 0.5 50
#slot 7
execute if score lifesteal slot19 matches 1.. run execute if score slot19isatk booleans matches 1 run scoreboard players operation lifesteal2 saves = atk slot19
execute if score lifesteal slot19 matches 1.. run execute if score slot19isatk booleans matches 1 run scoreboard players operation lifesteal2 saves += slot19 atkmodifiers
execute if score lifesteal slot19 matches 1.. run execute if score slot19isatk booleans matches 1 run scoreboard players operation lifesteal2 saves += marks slot23
execute if score lifesteal slot19 matches 1.. run execute if score slot19isatk booleans matches 1 run scoreboard players operation lifesteal2 saves /= atkmultiplier slot23
execute if score lifesteal slot19 matches 1.. run execute if score slot19isatk booleans matches 1 run scoreboard players operation lifesteal2 saves /= lifesteal slot19
execute if score ward slot23 matches 0 if score slot19bleeding booleaneffects matches 0 run execute if score lifesteal slot19 matches 1.. run execute if score slot19isatk booleans matches 1 run scoreboard players operation slot19 hp += lifesteal2 saves
execute if score ward slot23 matches 0 if score lifesteal slot19 matches 1.. if score slot19isatk booleans matches 1 at @e[name=slot19,type=armor_stand] run particle minecraft:composter ~ ~1 ~ 0.9 0.9 0.9 0.5 50
#slot 8
execute if score lifesteal slot20 matches 1.. run execute if score slot20isatk booleans matches 1 run scoreboard players operation lifesteal2 saves = atk slot20
execute if score lifesteal slot20 matches 1.. run execute if score slot20isatk booleans matches 1 run scoreboard players operation lifesteal2 saves += slot20 atkmodifiers
execute if score lifesteal slot20 matches 1.. run execute if score slot20isatk booleans matches 1 run scoreboard players operation lifesteal2 saves += marks slot23
execute if score lifesteal slot20 matches 1.. run execute if score slot20isatk booleans matches 1 run scoreboard players operation lifesteal2 saves /= atkmultiplier slot23
execute if score lifesteal slot20 matches 1.. run execute if score slot20isatk booleans matches 1 run scoreboard players operation lifesteal2 saves /= lifesteal slot20
execute if score ward slot23 matches 0 if score slot20bleeding booleaneffects matches 0 run execute if score lifesteal slot20 matches 1.. run execute if score slot20isatk booleans matches 1 run scoreboard players operation slot20 hp += lifesteal2 saves
execute if score ward slot23 matches 0 if score lifesteal slot20 matches 1.. if score slot20isatk booleans matches 1 at @e[name=slot20,type=armor_stand] run particle minecraft:composter ~ ~1 ~ 0.9 0.9 0.9 0.5 50


#lifesteal + splash
#slot 5
execute if score lifesteal slot17 matches 1.. run execute if score splash slot17 matches 1.. run execute if score slot17isatk booleans matches 1 run scoreboard players operation lifestealsplash2 saves = atk slot17
execute if score lifesteal slot17 matches 1.. run execute if score splash slot17 matches 1.. run execute if score slot17isatk booleans matches 1 run scoreboard players operation lifestealsplash2 saves += slot17 atkmodifiers
execute if score lifesteal slot17 matches 1.. run execute if score splash slot17 matches 1.. run execute if score slot17isatk booleans matches 1 run scoreboard players operation lifestealsplash2 saves /= splash slot17
execute if score lifesteal slot17 matches 1.. run execute if score splash slot17 matches 1.. run execute if score slot17isatk booleans matches 1 run scoreboard players operation lifestealsplash2 saves += marks slot23
execute if score lifesteal slot17 matches 1.. run execute if score splash slot17 matches 1.. run execute if score slot17isatk booleans matches 1 run scoreboard players operation lifestealsplash2 saves /= atkmultiplier slot23
execute if score lifesteal slot17 matches 1.. run execute if score splash slot17 matches 1.. run execute if score slot17isatk booleans matches 1 run scoreboard players operation lifestealsplash2 saves /= lifesteal slot17
execute if score slot23 hp matches 1.. run execute if score ward slot23 matches 0 run execute if score slot17bleeding booleaneffects matches 0 run execute if score lifesteal slot17 matches 1.. run execute if score splash slot17 matches 1.. run execute if score slot17isatk booleans matches 1 run scoreboard players operation slot17 hp += lifestealsplash2 saves
execute if score lifesteal slot17 matches 1.. run execute if score splash slot17 matches 1.. run execute if score slot17isatk booleans matches 1 run scoreboard players operation lifestealsplash2 saves = atk slot17
execute if score lifesteal slot17 matches 1.. run execute if score splash slot17 matches 1.. run execute if score slot17isatk booleans matches 1 run scoreboard players operation lifestealsplash2 saves += slot17 atkmodifiers
execute if score lifesteal slot17 matches 1.. run execute if score splash slot17 matches 1.. run execute if score slot17isatk booleans matches 1 run scoreboard players operation lifestealsplash2 saves /= splash slot17
execute if score lifesteal slot17 matches 1.. run execute if score splash slot17 matches 1.. run execute if score slot17isatk booleans matches 1 run scoreboard players operation lifestealsplash2 saves += marks slot24
execute if score lifesteal slot17 matches 1.. run execute if score splash slot17 matches 1.. run execute if score slot17isatk booleans matches 1 run scoreboard players operation lifestealsplash2 saves /= atkmultiplier slot24
execute if score lifesteal slot17 matches 1.. run execute if score splash slot17 matches 1.. run execute if score slot17isatk booleans matches 1 run scoreboard players operation lifestealsplash2 saves /= lifesteal slot17
execute if score slot24 hp matches 1.. run execute if score ward slot24 matches 0 run execute if score slot17bleeding booleaneffects matches 0 run execute if score lifesteal slot17 matches 1.. run execute if score splash slot17 matches 1.. run execute if score slot17isatk booleans matches 1 run scoreboard players operation slot17 hp += lifestealsplash2 saves
#slot 6
execute if score lifesteal slot18 matches 1.. run execute if score splash slot18 matches 1.. run execute if score slot18isatk booleans matches 1 run scoreboard players operation lifestealsplash2 saves = atk slot18
execute if score lifesteal slot18 matches 1.. run execute if score splash slot18 matches 1.. run execute if score slot18isatk booleans matches 1 run scoreboard players operation lifestealsplash2 saves += slot18 atkmodifiers
execute if score lifesteal slot18 matches 1.. run execute if score splash slot18 matches 1.. run execute if score slot18isatk booleans matches 1 run scoreboard players operation lifestealsplash2 saves /= splash slot18
execute if score lifesteal slot18 matches 1.. run execute if score splash slot18 matches 1.. run execute if score slot18isatk booleans matches 1 run scoreboard players operation lifestealsplash2 saves += marks slot23
execute if score lifesteal slot18 matches 1.. run execute if score splash slot18 matches 1.. run execute if score slot18isatk booleans matches 1 run scoreboard players operation lifestealsplash2 saves /= atkmultiplier slot23
execute if score lifesteal slot18 matches 1.. run execute if score splash slot18 matches 1.. run execute if score slot18isatk booleans matches 1 run scoreboard players operation lifestealsplash2 saves /= lifesteal slot18
execute if score slot23 hp matches 1.. run execute if score ward slot23 matches 0 run execute if score slot18bleeding booleaneffects matches 0 run execute if score lifesteal slot18 matches 1.. run execute if score splash slot18 matches 1.. run execute if score slot18isatk booleans matches 1 run scoreboard players operation slot18 hp += lifestealsplash2 saves
execute if score lifesteal slot18 matches 1.. run execute if score splash slot18 matches 1.. run execute if score slot18isatk booleans matches 1 run scoreboard players operation lifestealsplash2 saves = atk slot18
execute if score lifesteal slot18 matches 1.. run execute if score splash slot18 matches 1.. run execute if score slot18isatk booleans matches 1 run scoreboard players operation lifestealsplash2 saves += slot18 atkmodifiers
execute if score lifesteal slot18 matches 1.. run execute if score splash slot18 matches 1.. run execute if score slot18isatk booleans matches 1 run scoreboard players operation lifestealsplash2 saves /= splash slot18
execute if score lifesteal slot18 matches 1.. run execute if score splash slot18 matches 1.. run execute if score slot18isatk booleans matches 1 run scoreboard players operation lifestealsplash2 saves += marks slot24
execute if score lifesteal slot18 matches 1.. run execute if score splash slot18 matches 1.. run execute if score slot18isatk booleans matches 1 run scoreboard players operation lifestealsplash2 saves /= atkmultiplier slot24
execute if score lifesteal slot18 matches 1.. run execute if score splash slot18 matches 1.. run execute if score slot18isatk booleans matches 1 run scoreboard players operation lifestealsplash2 saves /= lifesteal slot18
execute if score slot24 hp matches 1.. run execute if score ward slot24 matches 0 run execute if score slot18bleeding booleaneffects matches 0 run execute if score lifesteal slot18 matches 1.. run execute if score splash slot18 matches 1.. run execute if score slot18isatk booleans matches 1 run scoreboard players operation slot18 hp += lifestealsplash2 saves
#slot 7
execute if score lifesteal slot19 matches 1.. run execute if score splash slot19 matches 1.. run execute if score slot19isatk booleans matches 1 run scoreboard players operation lifestealsplash2 saves = atk slot19
execute if score lifesteal slot19 matches 1.. run execute if score splash slot19 matches 1.. run execute if score slot19isatk booleans matches 1 run scoreboard players operation lifestealsplash2 saves += slot19 atkmodifiers
execute if score lifesteal slot19 matches 1.. run execute if score splash slot19 matches 1.. run execute if score slot19isatk booleans matches 1 run scoreboard players operation lifestealsplash2 saves /= splash slot19
execute if score lifesteal slot19 matches 1.. run execute if score splash slot19 matches 1.. run execute if score slot19isatk booleans matches 1 run scoreboard players operation lifestealsplash2 saves += marks slot23
execute if score lifesteal slot19 matches 1.. run execute if score splash slot19 matches 1.. run execute if score slot19isatk booleans matches 1 run scoreboard players operation lifestealsplash2 saves /= atkmultiplier slot23
execute if score lifesteal slot19 matches 1.. run execute if score splash slot19 matches 1.. run execute if score slot19isatk booleans matches 1 run scoreboard players operation lifestealsplash2 saves /= lifesteal slot19
execute if score slot23 hp matches 1.. run execute if score ward slot23 matches 0 run execute if score slot19bleeding booleaneffects matches 0 run execute if score lifesteal slot19 matches 1.. run execute if score splash slot19 matches 1.. run execute if score slot19isatk booleans matches 1 run scoreboard players operation slot19 hp += lifestealsplash2 saves
execute if score lifesteal slot19 matches 1.. run execute if score splash slot19 matches 1.. run execute if score slot19isatk booleans matches 1 run scoreboard players operation lifestealsplash2 saves = atk slot19
execute if score lifesteal slot19 matches 1.. run execute if score splash slot19 matches 1.. run execute if score slot19isatk booleans matches 1 run scoreboard players operation lifestealsplash2 saves += slot19 atkmodifiers
execute if score lifesteal slot19 matches 1.. run execute if score splash slot19 matches 1.. run execute if score slot19isatk booleans matches 1 run scoreboard players operation lifestealsplash2 saves /= splash slot19
execute if score lifesteal slot19 matches 1.. run execute if score splash slot19 matches 1.. run execute if score slot19isatk booleans matches 1 run scoreboard players operation lifestealsplash2 saves += marks slot24
execute if score lifesteal slot19 matches 1.. run execute if score splash slot19 matches 1.. run execute if score slot19isatk booleans matches 1 run scoreboard players operation lifestealsplash2 saves /= atkmultiplier slot24
execute if score lifesteal slot19 matches 1.. run execute if score splash slot19 matches 1.. run execute if score slot19isatk booleans matches 1 run scoreboard players operation lifestealsplash2 saves /= lifesteal slot19
execute if score slot24 hp matches 1.. run execute if score ward slot24 matches 0 run execute if score slot19bleeding booleaneffects matches 0 run execute if score lifesteal slot19 matches 1.. run execute if score splash slot19 matches 1.. run execute if score slot19isatk booleans matches 1 run scoreboard players operation slot19 hp += lifestealsplash2 saves
#slot 8
execute if score lifesteal slot20 matches 1.. run execute if score splash slot20 matches 1.. run execute if score slot20isatk booleans matches 1 run scoreboard players operation lifestealsplash2 saves = atk slot20
execute if score lifesteal slot20 matches 1.. run execute if score splash slot20 matches 1.. run execute if score slot20isatk booleans matches 1 run scoreboard players operation lifestealsplash2 saves += slot20 atkmodifiers
execute if score lifesteal slot20 matches 1.. run execute if score splash slot20 matches 1.. run execute if score slot20isatk booleans matches 1 run scoreboard players operation lifestealsplash2 saves /= splash slot20
execute if score lifesteal slot20 matches 1.. run execute if score splash slot20 matches 1.. run execute if score slot20isatk booleans matches 1 run scoreboard players operation lifestealsplash2 saves += marks slot23
execute if score lifesteal slot20 matches 1.. run execute if score splash slot20 matches 1.. run execute if score slot20isatk booleans matches 1 run scoreboard players operation lifestealsplash2 saves /= atkmultiplier slot23
execute if score lifesteal slot20 matches 1.. run execute if score splash slot20 matches 1.. run execute if score slot20isatk booleans matches 1 run scoreboard players operation lifestealsplash2 saves /= lifesteal slot20
execute if score slot23 hp matches 1.. run execute if score ward slot23 matches 0 run execute if score slot20bleeding booleaneffects matches 0 run execute if score lifesteal slot20 matches 1.. run execute if score splash slot20 matches 1.. run execute if score slot20isatk booleans matches 1 run scoreboard players operation slot20 hp += lifestealsplash2 saves
execute if score lifesteal slot20 matches 1.. run execute if score splash slot20 matches 1.. run execute if score slot20isatk booleans matches 1 run scoreboard players operation lifestealsplash2 saves = atk slot20
execute if score lifesteal slot20 matches 1.. run execute if score splash slot20 matches 1.. run execute if score slot20isatk booleans matches 1 run scoreboard players operation lifestealsplash2 saves += slot20 atkmodifiers
execute if score lifesteal slot20 matches 1.. run execute if score splash slot20 matches 1.. run execute if score slot20isatk booleans matches 1 run scoreboard players operation lifestealsplash2 saves /= splash slot20
execute if score lifesteal slot20 matches 1.. run execute if score splash slot20 matches 1.. run execute if score slot20isatk booleans matches 1 run scoreboard players operation lifestealsplash2 saves += marks slot24
execute if score lifesteal slot20 matches 1.. run execute if score splash slot20 matches 1.. run execute if score slot20isatk booleans matches 1 run scoreboard players operation lifestealsplash2 saves /= atkmultiplier slot24
execute if score lifesteal slot20 matches 1.. run execute if score splash slot20 matches 1.. run execute if score slot20isatk booleans matches 1 run scoreboard players operation lifestealsplash2 saves /= lifesteal slot20
execute if score slot24 hp matches 1.. run execute if score ward slot24 matches 0 run execute if score slot20bleeding booleaneffects matches 0 run execute if score lifesteal slot20 matches 1.. run execute if score splash slot20 matches 1.. run execute if score slot20isatk booleans matches 1 run scoreboard players operation slot20 hp += lifestealsplash2 saves

#Special Cases
execute if score slot17isatk booleans matches 1 if score character# slot17 matches 29 run scoreboard players operation slot23bleeding booleaneffects = ripperBleed abilityStats
execute if score slot18isatk booleans matches 1 if score character# slot18 matches 29 run scoreboard players operation slot23bleeding booleaneffects = ripperBleed abilityStats
execute if score slot19isatk booleans matches 1 if score character# slot19 matches 29 run scoreboard players operation slot23bleeding booleaneffects = ripperBleed abilityStats

#double target + turn end trigger
#regular attack
execute if score slot17isatk booleans matches 1 run execute if score doubleatk slot17 matches 0 run function ch:turnend
execute if score slot18isatk booleans matches 1 run execute if score doubleatk slot18 matches 0 run function ch:turnend
execute if score slot19isatk booleans matches 1 run execute if score doubleatk slot19 matches 0 run function ch:turnend
execute if score slot20isatk booleans matches 1 run execute if score doubleatk slot20 matches 0 run function ch:turnend
#double target (2nd hit)
execute if score slot17isatk booleans matches 1 run execute if score doubleatk slot17 matches 1 run execute if score useddoubleatk slot17 matches 1 run function ch:turnend
execute if score slot18isatk booleans matches 1 run execute if score doubleatk slot18 matches 1 run execute if score useddoubleatk slot18 matches 1 run function ch:turnend
execute if score slot19isatk booleans matches 1 run execute if score doubleatk slot19 matches 1 run execute if score useddoubleatk slot19 matches 1 run function ch:turnend
execute if score slot20isatk booleans matches 1 run execute if score doubleatk slot20 matches 1 run execute if score useddoubleatk slot20 matches 1 run function ch:turnend
#double target (1st hit)
execute if score slot17isatk booleans matches 1 run execute if score doubleatk slot17 matches 1 run execute if score useddoubleatk slot17 matches 0 run function ch:basicattackstartp5
execute if score slot17isatk booleans matches 1 run execute if score doubleatk slot17 matches 1 run execute if score useddoubleatk slot17 matches 0 run scoreboard players set useddoubleatk slot17 1
execute if score slot18isatk booleans matches 1 run execute if score doubleatk slot18 matches 1 run execute if score useddoubleatk slot18 matches 0 run function ch:basicattackstartp5
execute if score slot18isatk booleans matches 1 run execute if score doubleatk slot18 matches 1 run execute if score useddoubleatk slot18 matches 0 run scoreboard players set useddoubleatk slot18 1
execute if score slot19isatk booleans matches 1 run execute if score doubleatk slot19 matches 1 run execute if score useddoubleatk slot19 matches 0 run function ch:basicattackstartp5
execute if score slot19isatk booleans matches 1 run execute if score doubleatk slot19 matches 1 run execute if score useddoubleatk slot19 matches 0 run scoreboard players set useddoubleatk slot19 1
execute if score slot20isatk booleans matches 1 run execute if score doubleatk slot20 matches 1 run execute if score useddoubleatk slot20 matches 0 run function ch:basicattackstartp5
execute if score slot20isatk booleans matches 1 run execute if score doubleatk slot20 matches 1 run execute if score useddoubleatk slot20 matches 0 run scoreboard players set useddoubleatk slot20 1
