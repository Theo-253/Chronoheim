#basic attack functions
tellraw @a[tag=game3] ["",{"selector":"@p[tag=p6]"}," attacked Slot 3"]
clear @a[tag=p6]
#slot 5
execute if score slot21isatk booleans matches 1 run scoreboard players operation atk1 saves = atk slot21
execute if score slot21isatk booleans matches 1 run scoreboard players operation atk1 saves += slot21 atkmodifiers
execute if score slot21isatk booleans matches 1 run scoreboard players operation atk1 saves += marks slot19
execute if score slot21isatk booleans matches 1 run scoreboard players operation atk1 saves /= atkmultiplier slot19
execute if score slot21isatk booleans matches 1 run scoreboard players operation shield slot19 -= atk1 saves
#slot 6
execute if score slot22isatk booleans matches 1 run scoreboard players operation atk1 saves = atk slot22
execute if score slot22isatk booleans matches 1 run scoreboard players operation atk1 saves += slot22 atkmodifiers
execute if score slot22isatk booleans matches 1 run scoreboard players operation atk1 saves += marks slot19
execute if score slot22isatk booleans matches 1 run scoreboard players operation atk1 saves /= atkmultiplier slot19
execute if score slot22isatk booleans matches 1 run scoreboard players operation shield slot19 -= atk1 saves
#slot 7
execute if score slot23isatk booleans matches 1 run scoreboard players operation atk1 saves = atk slot23
execute if score slot23isatk booleans matches 1 run scoreboard players operation atk1 saves += marks slot19
execute if score slot23isatk booleans matches 1 run scoreboard players operation atk1 saves += slot23 atkmodifiers
execute if score slot23isatk booleans matches 1 run scoreboard players operation atk1 saves /= atkmultiplier slot19
execute if score slot23isatk booleans matches 1 run scoreboard players operation shield slot19 -= atk1 saves
#slot 8
execute if score slot24isatk booleans matches 1 run scoreboard players operation atk1 saves = atk slot24
execute if score slot24isatk booleans matches 1 run scoreboard players operation atk1 saves += marks slot19
execute if score slot24isatk booleans matches 1 run scoreboard players operation atk1 saves += slot24 atkmodifiers
execute if score slot24isatk booleans matches 1 run scoreboard players operation atk1 saves /= atkmultiplier slot19
execute if score slot24isatk booleans matches 1 run scoreboard players operation shield slot19 -= atk1 saves
#damage + shield reset (all)
execute if score shield slot19 matches ..0 if score ward slot19 matches 0 run scoreboard players operation slot19 hp += shield slot19
execute if score ward slot19 matches 1.. run function chthree:wardslot19
execute if score shield slot19 matches ..0 run scoreboard players set shield slot19 0
execute at @e[name=slot19,type=armor_stand] run particle minecraft:crit ~ ~1 ~ 0.9 0.9 0.9 0.5 100


#splash
#slot21
execute if score splash slot21 matches 1.. run execute if score slot21isatk booleans matches 1 run scoreboard players operation splashdamage2 saves = atk slot21
execute if score splash slot21 matches 1.. run execute if score slot21isatk booleans matches 1 run scoreboard players operation splashdamage2 saves += slot21 atkmodifiers
execute if score splash slot21 matches 1.. run execute if score slot21isatk booleans matches 1 run scoreboard players operation splashdamage2 saves /= splash slot21
execute if score splash slot21 matches 1.. run execute if score slot21isatk booleans matches 1 run scoreboard players operation splashdamage2 saves += marks slot18
execute if score splash slot21 matches 1.. run execute if score slot21isatk booleans matches 1 run scoreboard players operation splashdamage2 saves /= atkmultiplier slot18
execute if score ward slot18 matches 0 run execute if score splash slot21 matches 1.. run execute if score slot21isatk booleans matches 1 run scoreboard players operation shield slot18 -= splashdamage2 saves
execute if score ward slot18 matches 1.. run execute if score splash slot21 matches 1.. run execute if score slot21isatk booleans matches 1 run function chthree:wardslot18
execute if score splash slot21 matches 1.. if score slot21isatk booleans matches 1 at @e[name=slot18,type=armor_stand] run particle minecraft:crit ~ ~1 ~ 0.9 0.9 0.9 0.5 50
execute if score splash slot21 matches 1.. run execute if score slot21isatk booleans matches 1 run scoreboard players operation splashdamage2 saves = atk slot21
execute if score splash slot21 matches 1.. run execute if score slot21isatk booleans matches 1 run scoreboard players operation splashdamage2 saves += slot21 atkmodifiers
execute if score splash slot21 matches 1.. run execute if score slot21isatk booleans matches 1 run scoreboard players operation splashdamage2 saves /= splash slot21
execute if score splash slot21 matches 1.. run execute if score slot21isatk booleans matches 1 run scoreboard players operation splashdamage2 saves += marks slot20
execute if score splash slot21 matches 1.. run execute if score slot21isatk booleans matches 1 run scoreboard players operation splashdamage2 saves /= atkmultiplier slot20
execute if score ward slot20 matches 0 run execute if score splash slot21 matches 1.. run execute if score slot21isatk booleans matches 1 run scoreboard players operation shield slot20 -= splashdamage2 saves
execute if score ward slot20 matches 1.. run execute if score splash slot21 matches 1.. run execute if score slot21isatk booleans matches 1 run function chthree:wardslot20
execute if score splash slot21 matches 1.. if score slot21isatk booleans matches 1 at @e[name=slot20,type=armor_stand] run particle minecraft:crit ~ ~1 ~ 0.9 0.9 0.9 0.5 50
#slot22
execute if score splash slot22 matches 1.. run execute if score slot22isatk booleans matches 1 run scoreboard players operation splashdamage2 saves = atk slot22
execute if score splash slot22 matches 1.. run execute if score slot22isatk booleans matches 1 run scoreboard players operation splashdamage2 saves += slot22 atkmodifiers
execute if score splash slot22 matches 1.. run execute if score slot22isatk booleans matches 1 run scoreboard players operation splashdamage2 saves /= splash slot22
execute if score splash slot22 matches 1.. run execute if score slot22isatk booleans matches 1 run scoreboard players operation splashdamage2 saves += marks slot18
execute if score splash slot22 matches 1.. run execute if score slot22isatk booleans matches 1 run scoreboard players operation splashdamage2 saves /= atkmultiplier slot18
execute if score ward slot18 matches 0 run execute if score splash slot22 matches 1.. run execute if score slot22isatk booleans matches 1 run scoreboard players operation shield slot18 -= splashdamage2 saves
execute if score ward slot18 matches 1.. run execute if score splash slot22 matches 1.. run execute if score slot22isatk booleans matches 1 run function chthree:wardslot18
execute if score splash slot22 matches 1.. if score slot22isatk booleans matches 1 at @e[name=slot18,type=armor_stand] run particle minecraft:crit ~ ~1 ~ 0.9 0.9 0.9 0.5 50
execute if score splash slot22 matches 1.. run execute if score slot22isatk booleans matches 1 run scoreboard players operation splashdamage2 saves = atk slot22
execute if score splash slot22 matches 1.. run execute if score slot22isatk booleans matches 1 run scoreboard players operation splashdamage2 saves += slot22 atkmodifiers
execute if score splash slot22 matches 1.. run execute if score slot22isatk booleans matches 1 run scoreboard players operation splashdamage2 saves /= splash slot22
execute if score splash slot22 matches 1.. run execute if score slot22isatk booleans matches 1 run scoreboard players operation splashdamage2 saves += marks slot20
execute if score splash slot22 matches 1.. run execute if score slot22isatk booleans matches 1 run scoreboard players operation splashdamage2 saves /= atkmultiplier slot20
execute if score ward slot20 matches 0 run execute if score splash slot22 matches 1.. run execute if score slot22isatk booleans matches 1 run scoreboard players operation shield slot20 -= splashdamage2 saves
execute if score ward slot20 matches 1.. run execute if score splash slot22 matches 1.. run execute if score slot22isatk booleans matches 1 run function chthree:wardslot20
execute if score splash slot22 matches 1.. if score slot22isatk booleans matches 1 at @e[name=slot20,type=armor_stand] run particle minecraft:crit ~ ~1 ~ 0.9 0.9 0.9 0.5 50
#slot23
execute if score splash slot23 matches 1.. run execute if score slot23isatk booleans matches 1 run scoreboard players operation splashdamage2 saves = atk slot23
execute if score splash slot23 matches 1.. run execute if score slot23isatk booleans matches 1 run scoreboard players operation splashdamage2 saves += slot23 atkmodifiers
execute if score splash slot23 matches 1.. run execute if score slot23isatk booleans matches 1 run scoreboard players operation splashdamage2 saves /= splash slot23
execute if score splash slot23 matches 1.. run execute if score slot23isatk booleans matches 1 run scoreboard players operation splashdamage2 saves += marks slot18
execute if score splash slot23 matches 1.. run execute if score slot23isatk booleans matches 1 run scoreboard players operation splashdamage2 saves /= atkmultiplier slot18
execute if score ward slot18 matches 0 run execute if score splash slot23 matches 1.. run execute if score slot23isatk booleans matches 1 run scoreboard players operation shield slot18 -= splashdamage2 saves
execute if score ward slot18 matches 1.. run execute if score splash slot23 matches 1.. run execute if score slot23isatk booleans matches 1 run function chthree:wardslot18
execute if score splash slot23 matches 1.. if score slot23isatk booleans matches 1 at @e[name=slot18,type=armor_stand] run particle minecraft:crit ~ ~1 ~ 0.9 0.9 0.9 0.5 50
execute if score splash slot23 matches 1.. run execute if score slot23isatk booleans matches 1 run scoreboard players operation splashdamage2 saves = atk slot23
execute if score splash slot23 matches 1.. run execute if score slot23isatk booleans matches 1 run scoreboard players operation splashdamage2 saves += slot23 atkmodifiers
execute if score splash slot23 matches 1.. run execute if score slot23isatk booleans matches 1 run scoreboard players operation splashdamage2 saves /= splash slot23
execute if score splash slot23 matches 1.. run execute if score slot23isatk booleans matches 1 run scoreboard players operation splashdamage2 saves += marks slot20
execute if score splash slot23 matches 1.. run execute if score slot23isatk booleans matches 1 run scoreboard players operation splashdamage2 saves /= atkmultiplier slot20
execute if score ward slot20 matches 0 run execute if score splash slot23 matches 1.. run execute if score slot23isatk booleans matches 1 run scoreboard players operation shield slot20 -= splashdamage2 saves
execute if score ward slot20 matches 1.. run execute if score splash slot23 matches 1.. run execute if score slot23isatk booleans matches 1 run function chthree:wardslot20
execute if score splash slot23 matches 1.. if score slot23isatk booleans matches 1 at @e[name=slot20,type=armor_stand] run particle minecraft:crit ~ ~1 ~ 0.9 0.9 0.9 0.5 50
#slot24
execute if score splash slot24 matches 1.. run execute if score slot24isatk booleans matches 1 run scoreboard players operation splashdamage2 saves = atk slot24
execute if score splash slot24 matches 1.. run execute if score slot24isatk booleans matches 1 run scoreboard players operation splashdamage2 saves += slot24 atkmodifiers
execute if score splash slot24 matches 1.. run execute if score slot24isatk booleans matches 1 run scoreboard players operation splashdamage2 saves /= splash slot24
execute if score splash slot24 matches 1.. run execute if score slot24isatk booleans matches 1 run scoreboard players operation splashdamage2 saves += marks slot18
execute if score splash slot24 matches 1.. run execute if score slot24isatk booleans matches 1 run scoreboard players operation splashdamage2 saves /= atkmultiplier slot18
execute if score ward slot18 matches 0 run execute if score splash slot24 matches 1.. run execute if score slot24isatk booleans matches 1 run scoreboard players operation shield slot18 -= splashdamage2 saves
execute if score ward slot18 matches 1.. run execute if score splash slot24 matches 1.. run execute if score slot24isatk booleans matches 1 run function chthree:wardslot18
execute if score splash slot24 matches 1.. if score slot24isatk booleans matches 1 at @e[name=slot18,type=armor_stand] run particle minecraft:crit ~ ~1 ~ 0.9 0.9 0.9 0.5 50
execute if score splash slot24 matches 1.. run execute if score slot24isatk booleans matches 1 run scoreboard players operation splashdamage2 saves = atk slot24
execute if score splash slot24 matches 1.. run execute if score slot24isatk booleans matches 1 run scoreboard players operation splashdamage2 saves += slot24 atkmodifiers
execute if score splash slot24 matches 1.. run execute if score slot24isatk booleans matches 1 run scoreboard players operation splashdamage2 saves /= splash slot24
execute if score splash slot24 matches 1.. run execute if score slot24isatk booleans matches 1 run scoreboard players operation splashdamage2 saves += marks slot20
execute if score splash slot24 matches 1.. run execute if score slot24isatk booleans matches 1 run scoreboard players operation splashdamage2 saves /= atkmultiplier slot20
execute if score ward slot20 matches 0 run execute if score splash slot24 matches 1.. run execute if score slot24isatk booleans matches 1 run scoreboard players operation shield slot20 -= splashdamage2 saves
execute if score ward slot20 matches 1.. run execute if score splash slot24 matches 1.. run execute if score slot24isatk booleans matches 1 run function chthree:wardslot20
execute if score splash slot24 matches 1.. if score slot24isatk booleans matches 1 at @e[name=slot20,type=armor_stand] run particle minecraft:crit ~ ~1 ~ 0.9 0.9 0.9 0.5 50
#damage + shield reset (all)
execute if score shield slot18 matches ..0 if score ward slot18 matches 0 run scoreboard players operation slot18 hp += shield slot18
execute if score shield slot18 matches ..0 run scoreboard players set shield slot18 0
execute if score shield slot20 matches ..0 if score ward slot20 matches 0 run scoreboard players operation slot20 hp += shield slot20
execute if score shield slot20 matches ..0 run scoreboard players set shield slot20 0


#lifesteal
#slot 5
execute if score lifesteal slot21 matches 1.. run execute if score slot21isatk booleans matches 1 run scoreboard players operation lifesteal2 saves = atk slot21
execute if score lifesteal slot21 matches 1.. run execute if score slot21isatk booleans matches 1 run scoreboard players operation lifesteal2 saves += slot21 atkmodifiers
execute if score lifesteal slot21 matches 1.. run execute if score slot21isatk booleans matches 1 run scoreboard players operation lifesteal2 saves += marks slot19
execute if score lifesteal slot21 matches 1.. run execute if score slot21isatk booleans matches 1 run scoreboard players operation lifesteal2 saves /= atkmultiplier slot19
execute if score lifesteal slot21 matches 1.. run execute if score slot21isatk booleans matches 1 run scoreboard players operation lifesteal2 saves /= lifesteal slot21
execute if score ward slot19 matches 0 if score slot21bleeding booleaneffects matches 0 run execute if score lifesteal slot21 matches 1.. run execute if score slot21isatk booleans matches 1 run scoreboard players operation slot21 hp += lifesteal2 saves
execute if score ward slot19 matches 0 if score lifesteal slot21 matches 1.. if score slot21isatk booleans matches 1 at @e[name=slot21,type=armor_stand] run particle minecraft:composter ~ ~1 ~ 0.9 0.9 0.9 0.5 50
#slot 6
execute if score lifesteal slot22 matches 1.. run execute if score slot22isatk booleans matches 1 run scoreboard players operation lifesteal2 saves = atk slot22
execute if score lifesteal slot22 matches 1.. run execute if score slot22isatk booleans matches 1 run scoreboard players operation lifesteal2 saves += slot22 atkmodifiers
execute if score lifesteal slot22 matches 1.. run execute if score slot22isatk booleans matches 1 run scoreboard players operation lifesteal2 saves += marks slot19
execute if score lifesteal slot22 matches 1.. run execute if score slot22isatk booleans matches 1 run scoreboard players operation lifesteal2 saves /= atkmultiplier slot19
execute if score lifesteal slot22 matches 1.. run execute if score slot22isatk booleans matches 1 run scoreboard players operation lifesteal2 saves /= lifesteal slot22
execute if score ward slot19 matches 0 if score slot22bleeding booleaneffects matches 0 run execute if score lifesteal slot22 matches 1.. run execute if score slot22isatk booleans matches 1 run scoreboard players operation slot22 hp += lifesteal2 saves
execute if score ward slot19 matches 0 if score lifesteal slot22 matches 1.. if score slot22isatk booleans matches 1 at @e[name=slot22,type=armor_stand] run particle minecraft:composter ~ ~1 ~ 0.9 0.9 0.9 0.5 50
#slot 7
execute if score lifesteal slot23 matches 1.. run execute if score slot23isatk booleans matches 1 run scoreboard players operation lifesteal2 saves = atk slot23
execute if score lifesteal slot23 matches 1.. run execute if score slot23isatk booleans matches 1 run scoreboard players operation lifesteal2 saves += slot23 atkmodifiers
execute if score lifesteal slot23 matches 1.. run execute if score slot23isatk booleans matches 1 run scoreboard players operation lifesteal2 saves += marks slot19
execute if score lifesteal slot23 matches 1.. run execute if score slot23isatk booleans matches 1 run scoreboard players operation lifesteal2 saves /= atkmultiplier slot19
execute if score lifesteal slot23 matches 1.. run execute if score slot23isatk booleans matches 1 run scoreboard players operation lifesteal2 saves /= lifesteal slot23
execute if score ward slot19 matches 0 if score slot23bleeding booleaneffects matches 0 run execute if score lifesteal slot23 matches 1.. run execute if score slot23isatk booleans matches 1 run scoreboard players operation slot23 hp += lifesteal2 saves
execute if score ward slot19 matches 0 if score lifesteal slot23 matches 1.. if score slot23isatk booleans matches 1 at @e[name=slot23,type=armor_stand] run particle minecraft:composter ~ ~1 ~ 0.9 0.9 0.9 0.5 50

#slot 8
execute if score lifesteal slot24 matches 1.. run execute if score slot24isatk booleans matches 1 run scoreboard players operation lifesteal2 saves = atk slot24
execute if score lifesteal slot24 matches 1.. run execute if score slot24isatk booleans matches 1 run scoreboard players operation lifesteal2 saves += slot24 atkmodifiers
execute if score lifesteal slot24 matches 1.. run execute if score slot24isatk booleans matches 1 run scoreboard players operation lifesteal2 saves += marks slot19
execute if score lifesteal slot24 matches 1.. run execute if score slot24isatk booleans matches 1 run scoreboard players operation lifesteal2 saves /= atkmultiplier slot19
execute if score lifesteal slot24 matches 1.. run execute if score slot24isatk booleans matches 1 run scoreboard players operation lifesteal2 saves /= lifesteal slot24
execute if score ward slot19 matches 0 if score slot24bleeding booleaneffects matches 0 run execute if score lifesteal slot24 matches 1.. run execute if score slot24isatk booleans matches 1 run scoreboard players operation slot24 hp += lifesteal2 saves
execute if score ward slot19 matches 0 if score lifesteal slot24 matches 1.. if score slot24isatk booleans matches 1 at @e[name=slot24,type=armor_stand] run particle minecraft:composter ~ ~1 ~ 0.9 0.9 0.9 0.5 50


#lifesteal + splash
#slot 5
execute if score lifesteal slot21 matches 1.. run execute if score splash slot21 matches 1.. run execute if score slot21isatk booleans matches 1 run scoreboard players operation lifestealsplash2 saves = atk slot21
execute if score lifesteal slot21 matches 1.. run execute if score splash slot21 matches 1.. run execute if score slot21isatk booleans matches 1 run scoreboard players operation lifestealsplash2 saves += slot21 atkmodifiers
execute if score lifesteal slot21 matches 1.. run execute if score splash slot21 matches 1.. run execute if score slot21isatk booleans matches 1 run scoreboard players operation lifestealsplash2 saves /= splash slot21
execute if score lifesteal slot21 matches 1.. run execute if score splash slot21 matches 1.. run execute if score slot21isatk booleans matches 1 run scoreboard players operation lifestealsplash2 saves += marks slot18
execute if score lifesteal slot21 matches 1.. run execute if score splash slot21 matches 1.. run execute if score slot21isatk booleans matches 1 run scoreboard players operation lifestealsplash2 saves /= atkmultiplier slot18
execute if score lifesteal slot21 matches 1.. run execute if score splash slot21 matches 1.. run execute if score slot21isatk booleans matches 1 run scoreboard players operation lifestealsplash2 saves /= lifesteal slot21
execute if score slot18 hp matches 1.. run execute if score ward slot18 matches 0 run execute if score slot21bleeding booleaneffects matches 0 run execute if score lifesteal slot21 matches 1.. run execute if score splash slot21 matches 1.. run execute if score slot21isatk booleans matches 1 run scoreboard players operation slot21 hp += lifestealsplash2 saves
execute if score lifesteal slot21 matches 1.. run execute if score splash slot21 matches 1.. run execute if score slot21isatk booleans matches 1 run scoreboard players operation lifestealsplash2 saves = atk slot21
execute if score lifesteal slot21 matches 1.. run execute if score splash slot21 matches 1.. run execute if score slot21isatk booleans matches 1 run scoreboard players operation lifestealsplash2 saves += slot21 atkmodifiers
execute if score lifesteal slot21 matches 1.. run execute if score splash slot21 matches 1.. run execute if score slot21isatk booleans matches 1 run scoreboard players operation lifestealsplash2 saves /= splash slot21
execute if score lifesteal slot21 matches 1.. run execute if score splash slot21 matches 1.. run execute if score slot21isatk booleans matches 1 run scoreboard players operation lifestealsplash2 saves += marks slot20
execute if score lifesteal slot21 matches 1.. run execute if score splash slot21 matches 1.. run execute if score slot21isatk booleans matches 1 run scoreboard players operation lifestealsplash2 saves /= atkmultiplier slot20
execute if score lifesteal slot21 matches 1.. run execute if score splash slot21 matches 1.. run execute if score slot21isatk booleans matches 1 run scoreboard players operation lifestealsplash2 saves /= lifesteal slot21
execute if score slot20 hp matches 1.. run execute if score ward slot20 matches 0 run execute if score slot21bleeding booleaneffects matches 0 run execute if score lifesteal slot21 matches 1.. run execute if score splash slot21 matches 1.. run execute if score slot21isatk booleans matches 1 run scoreboard players operation slot21 hp += lifestealsplash2 saves
#slot 6
execute if score lifesteal slot22 matches 1.. run execute if score splash slot22 matches 1.. run execute if score slot22isatk booleans matches 1 run scoreboard players operation lifestealsplash2 saves = atk slot22
execute if score lifesteal slot22 matches 1.. run execute if score splash slot22 matches 1.. run execute if score slot22isatk booleans matches 1 run scoreboard players operation lifestealsplash2 saves += slot22 atkmodifiers
execute if score lifesteal slot22 matches 1.. run execute if score splash slot22 matches 1.. run execute if score slot22isatk booleans matches 1 run scoreboard players operation lifestealsplash2 saves /= splash slot22
execute if score lifesteal slot22 matches 1.. run execute if score splash slot22 matches 1.. run execute if score slot22isatk booleans matches 1 run scoreboard players operation lifestealsplash2 saves += marks slot18
execute if score lifesteal slot22 matches 1.. run execute if score splash slot22 matches 1.. run execute if score slot22isatk booleans matches 1 run scoreboard players operation lifestealsplash2 saves /= atkmultiplier slot18
execute if score lifesteal slot22 matches 1.. run execute if score splash slot22 matches 1.. run execute if score slot22isatk booleans matches 1 run scoreboard players operation lifestealsplash2 saves /= lifesteal slot22
execute if score slot18 hp matches 1.. run execute if score ward slot18 matches 0 run execute if score slot22bleeding booleaneffects matches 0 run execute if score lifesteal slot22 matches 1.. run execute if score splash slot22 matches 1.. run execute if score slot22isatk booleans matches 1 run scoreboard players operation slot22 hp += lifestealsplash2 saves
execute if score lifesteal slot22 matches 1.. run execute if score splash slot22 matches 1.. run execute if score slot22isatk booleans matches 1 run scoreboard players operation lifestealsplash2 saves = atk slot22
execute if score lifesteal slot22 matches 1.. run execute if score splash slot22 matches 1.. run execute if score slot22isatk booleans matches 1 run scoreboard players operation lifestealsplash2 saves += slot22 atkmodifiers
execute if score lifesteal slot22 matches 1.. run execute if score splash slot22 matches 1.. run execute if score slot22isatk booleans matches 1 run scoreboard players operation lifestealsplash2 saves /= splash slot22
execute if score lifesteal slot22 matches 1.. run execute if score splash slot22 matches 1.. run execute if score slot22isatk booleans matches 1 run scoreboard players operation lifestealsplash2 saves += marks slot20
execute if score lifesteal slot22 matches 1.. run execute if score splash slot22 matches 1.. run execute if score slot22isatk booleans matches 1 run scoreboard players operation lifestealsplash2 saves /= atkmultiplier slot20
execute if score lifesteal slot22 matches 1.. run execute if score splash slot22 matches 1.. run execute if score slot22isatk booleans matches 1 run scoreboard players operation lifestealsplash2 saves /= lifesteal slot22
execute if score slot20 hp matches 1.. run execute if score ward slot20 matches 0 run execute if score slot22bleeding booleaneffects matches 0 run execute if score lifesteal slot22 matches 1.. run execute if score splash slot22 matches 1.. run execute if score slot22isatk booleans matches 1 run scoreboard players operation slot22 hp += lifestealsplash2 saves
#slot 7
execute if score lifesteal slot23 matches 1.. run execute if score splash slot23 matches 1.. run execute if score slot23isatk booleans matches 1 run scoreboard players operation lifestealsplash2 saves = atk slot23
execute if score lifesteal slot23 matches 1.. run execute if score splash slot23 matches 1.. run execute if score slot23isatk booleans matches 1 run scoreboard players operation lifestealsplash2 saves += slot23 atkmodifiers
execute if score lifesteal slot23 matches 1.. run execute if score splash slot23 matches 1.. run execute if score slot23isatk booleans matches 1 run scoreboard players operation lifestealsplash2 saves /= splash slot23
execute if score lifesteal slot23 matches 1.. run execute if score splash slot23 matches 1.. run execute if score slot23isatk booleans matches 1 run scoreboard players operation lifestealsplash2 saves += marks slot18
execute if score lifesteal slot23 matches 1.. run execute if score splash slot23 matches 1.. run execute if score slot23isatk booleans matches 1 run scoreboard players operation lifestealsplash2 saves /= atkmultiplier slot18
execute if score lifesteal slot23 matches 1.. run execute if score splash slot23 matches 1.. run execute if score slot23isatk booleans matches 1 run scoreboard players operation lifestealsplash2 saves /= lifesteal slot23
execute if score slot18 hp matches 1.. run execute if score ward slot18 matches 0 run execute if score slot23bleeding booleaneffects matches 0 run execute if score lifesteal slot23 matches 1.. run execute if score splash slot23 matches 1.. run execute if score slot23isatk booleans matches 1 run scoreboard players operation slot23 hp += lifestealsplash2 saves
execute if score lifesteal slot23 matches 1.. run execute if score splash slot23 matches 1.. run execute if score slot23isatk booleans matches 1 run scoreboard players operation lifestealsplash2 saves = atk slot23
execute if score lifesteal slot23 matches 1.. run execute if score splash slot23 matches 1.. run execute if score slot23isatk booleans matches 1 run scoreboard players operation lifestealsplash2 saves += slot23 atkmodifiers
execute if score lifesteal slot23 matches 1.. run execute if score splash slot23 matches 1.. run execute if score slot23isatk booleans matches 1 run scoreboard players operation lifestealsplash2 saves /= splash slot23
execute if score lifesteal slot23 matches 1.. run execute if score splash slot23 matches 1.. run execute if score slot23isatk booleans matches 1 run scoreboard players operation lifestealsplash2 saves += marks slot20
execute if score lifesteal slot23 matches 1.. run execute if score splash slot23 matches 1.. run execute if score slot23isatk booleans matches 1 run scoreboard players operation lifestealsplash2 saves /= atkmultiplier slot20
execute if score lifesteal slot23 matches 1.. run execute if score splash slot23 matches 1.. run execute if score slot23isatk booleans matches 1 run scoreboard players operation lifestealsplash2 saves /= lifesteal slot23
execute if score slot20 hp matches 1.. run execute if score ward slot20 matches 0 run execute if score slot23bleeding booleaneffects matches 0 run execute if score lifesteal slot23 matches 1.. run execute if score splash slot23 matches 1.. run execute if score slot23isatk booleans matches 1 run scoreboard players operation slot23 hp += lifestealsplash2 saves
#slot 8
execute if score lifesteal slot24 matches 1.. run execute if score splash slot24 matches 1.. run execute if score slot24isatk booleans matches 1 run scoreboard players operation lifestealsplash2 saves = atk slot24
execute if score lifesteal slot24 matches 1.. run execute if score splash slot24 matches 1.. run execute if score slot24isatk booleans matches 1 run scoreboard players operation lifestealsplash2 saves += slot24 atkmodifiers
execute if score lifesteal slot24 matches 1.. run execute if score splash slot24 matches 1.. run execute if score slot24isatk booleans matches 1 run scoreboard players operation lifestealsplash2 saves /= splash slot24
execute if score lifesteal slot24 matches 1.. run execute if score splash slot24 matches 1.. run execute if score slot24isatk booleans matches 1 run scoreboard players operation lifestealsplash2 saves += marks slot18
execute if score lifesteal slot24 matches 1.. run execute if score splash slot24 matches 1.. run execute if score slot24isatk booleans matches 1 run scoreboard players operation lifestealsplash2 saves /= atkmultiplier slot18
execute if score lifesteal slot24 matches 1.. run execute if score splash slot24 matches 1.. run execute if score slot24isatk booleans matches 1 run scoreboard players operation lifestealsplash2 saves /= lifesteal slot24
execute if score slot18 hp matches 1.. run execute if score ward slot18 matches 0 run execute if score slot24bleeding booleaneffects matches 0 run execute if score lifesteal slot24 matches 1.. run execute if score splash slot24 matches 1.. run execute if score slot24isatk booleans matches 1 run scoreboard players operation slot24 hp += lifestealsplash2 saves
execute if score lifesteal slot24 matches 1.. run execute if score splash slot24 matches 1.. run execute if score slot24isatk booleans matches 1 run scoreboard players operation lifestealsplash2 saves = atk slot24
execute if score lifesteal slot24 matches 1.. run execute if score splash slot24 matches 1.. run execute if score slot24isatk booleans matches 1 run scoreboard players operation lifestealsplash2 saves += slot24 atkmodifiers
execute if score lifesteal slot24 matches 1.. run execute if score splash slot24 matches 1.. run execute if score slot24isatk booleans matches 1 run scoreboard players operation lifestealsplash2 saves /= splash slot24
execute if score lifesteal slot24 matches 1.. run execute if score splash slot24 matches 1.. run execute if score slot24isatk booleans matches 1 run scoreboard players operation lifestealsplash2 saves += marks slot20
execute if score lifesteal slot24 matches 1.. run execute if score splash slot24 matches 1.. run execute if score slot24isatk booleans matches 1 run scoreboard players operation lifestealsplash2 saves /= atkmultiplier slot20
execute if score lifesteal slot24 matches 1.. run execute if score splash slot24 matches 1.. run execute if score slot24isatk booleans matches 1 run scoreboard players operation lifestealsplash2 saves /= lifesteal slot24
execute if score slot20 hp matches 1.. run execute if score ward slot20 matches 0 run execute if score slot24bleeding booleaneffects matches 0 run execute if score lifesteal slot24 matches 1.. run execute if score splash slot24 matches 1.. run execute if score slot24isatk booleans matches 1 run scoreboard players operation slot24 hp += lifestealsplash2 saves

#Special Cases
execute if score slot21isatk booleans matches 1 if score character# slot21 matches 29 if score hp slot19 <= ripperHpBleed abilityStats run scoreboard players operation slot19bleeding booleaneffects = ripperBleed abilityStats
execute if score slot22isatk booleans matches 1 if score character# slot22 matches 29 if score hp slot19 <= ripperHpBleed abilityStats run scoreboard players operation slot19bleeding booleaneffects = ripperBleed abilityStats
execute if score slot23isatk booleans matches 1 if score character# slot23 matches 29 if score hp slot19 <= ripperHpBleed abilityStats run scoreboard players operation slot19bleeding booleaneffects = ripperBleed abilityStats

#double target + turn end trigger
#regular attack
execute if score slot21isatk booleans matches 1 run execute if score doubleatk slot21 matches 0 run function chthree:turnend
execute if score slot22isatk booleans matches 1 run execute if score doubleatk slot22 matches 0 run function chthree:turnend
execute if score slot23isatk booleans matches 1 run execute if score doubleatk slot23 matches 0 run function chthree:turnend
execute if score slot24isatk booleans matches 1 run execute if score doubleatk slot24 matches 0 run function chthree:turnend
#double target (2nd hit)
execute if score slot21isatk booleans matches 1 run execute if score doubleatk slot21 matches 1 run execute if score useddoubleatk slot21 matches 1 run function chthree:turnend
execute if score slot22isatk booleans matches 1 run execute if score doubleatk slot22 matches 1 run execute if score useddoubleatk slot22 matches 1 run function chthree:turnend
execute if score slot23isatk booleans matches 1 run execute if score doubleatk slot23 matches 1 run execute if score useddoubleatk slot23 matches 1 run function chthree:turnend
execute if score slot24isatk booleans matches 1 run execute if score doubleatk slot24 matches 1 run execute if score useddoubleatk slot24 matches 1 run function chthree:turnend
#double target (1st hit)
execute if score slot21isatk booleans matches 1 run execute if score doubleatk slot21 matches 1 run execute if score useddoubleatk slot21 matches 0 run function chthree:basicattackstartp6
execute if score slot21isatk booleans matches 1 run execute if score doubleatk slot21 matches 1 run execute if score useddoubleatk slot21 matches 0 run scoreboard players set useddoubleatk slot21 1
execute if score slot22isatk booleans matches 1 run execute if score doubleatk slot22 matches 1 run execute if score useddoubleatk slot22 matches 0 run function chthree:basicattackstartp6
execute if score slot22isatk booleans matches 1 run execute if score doubleatk slot22 matches 1 run execute if score useddoubleatk slot22 matches 0 run scoreboard players set useddoubleatk slot22 1
execute if score slot23isatk booleans matches 1 run execute if score doubleatk slot23 matches 1 run execute if score useddoubleatk slot23 matches 0 run function chthree:basicattackstartp6
execute if score slot23isatk booleans matches 1 run execute if score doubleatk slot23 matches 1 run execute if score useddoubleatk slot23 matches 0 run scoreboard players set useddoubleatk slot23 1
execute if score slot24isatk booleans matches 1 run execute if score doubleatk slot24 matches 1 run execute if score useddoubleatk slot24 matches 0 run function chthree:basicattackstartp6
execute if score slot24isatk booleans matches 1 run execute if score doubleatk slot24 matches 1 run execute if score useddoubleatk slot24 matches 0 run scoreboard players set useddoubleatk slot24 1

