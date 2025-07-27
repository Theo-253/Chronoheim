#Teams
tp @a[tag=game3] 200 1 276
#Scoreboard Uis
scoreboard objectives add Health_Game_3 dummy
scoreboard objectives add Speed_Game_3 dummy
scoreboard objectives add Cooldown_Game_3 dummy
scoreboard objectives add Spell_Cooldown_Game_3 dummy
scoreboard objectives setdisplay sidebar.team.blue Health_Game_3
scoreboard objectives setdisplay sidebar.team.dark_blue Health_Game_3
execute positioned 200 1 276 run kill @e[name=mapstand,distance=..30]
execute at @p[tag=p5,tag=colosseum] run place template map.colosseum 200 -1 262
execute at @p[tag=p6,tag=colosseum] run place template map.colosseum 199 -1 292 180
execute at @p[tag=p5,tag=lab] run place template map.lab 200 -1 262
execute at @p[tag=p6,tag=lab] run place template map.lab 199 -1 292 180
execute at @p[tag=p5,tag=!lab,tag=!colosseum] run place template map.scenic 200 0 262
execute at @p[tag=p6,tag=!lab,tag=!colosseum] run place template map.scenic 199 0 292 180
scoreboard players set speed slot20 -1000000
scoreboard players set speed slot24 -1000000
scoreboard players set slot20 hp 0
scoreboard players set slot24 hp 0
kill @e[type=item]
#Slot 1 Speed Reset
execute if score slot17 hp matches 1.. run execute if score character# slot17 matches 1 run scoreboard players operation speed slot17 = bones herospeed
execute if score slot17 hp matches 1.. run execute if score character# slot17 matches 2 run scoreboard players operation speed slot17 = arthur herospeed
execute if score slot17 hp matches 1.. run execute if score character# slot17 matches 3 run scoreboard players operation speed slot17 = deuce herospeed
execute if score slot17 hp matches 1.. run execute if score character# slot17 matches 4 run scoreboard players operation speed slot17 = subject herospeed
execute if score slot17 hp matches 1.. run execute if score character# slot17 matches 5 run scoreboard players operation speed slot17 = robo herospeed
execute if score slot17 hp matches 1.. run execute if score character# slot17 matches 6 run scoreboard players operation speed slot17 = thorn herospeed
execute if score slot17 hp matches 1.. run execute if score character# slot17 matches 7 run scoreboard players operation speed slot17 = kong herospeed
execute if score slot17 hp matches 1.. run execute if score character# slot17 matches 8 run scoreboard players operation speed slot17 = kirin herospeed
execute if score slot17 hp matches 1.. run execute if score character# slot17 matches 9 run scoreboard players operation speed slot17 = robyn herospeed
execute if score slot17 hp matches 1.. run execute if score character# slot17 matches 10 run scoreboard players operation speed slot17 = dillo herospeed
execute if score slot17 hp matches 1.. run execute if score character# slot17 matches 11 run scoreboard players operation speed slot17 = flint herospeed
execute if score slot17 hp matches 1.. run execute if score character# slot17 matches 12 run scoreboard players operation speed slot17 = ace herospeed
execute if score slot17 hp matches 1.. run execute if score character# slot17 matches 13 run scoreboard players operation speed slot17 = london herospeed
execute if score slot17 hp matches 1.. run execute if score character# slot17 matches 14 run scoreboard players operation speed slot17 = hydra herospeed
execute if score slot17 hp matches 1.. run execute if score character# slot17 matches 15 run scoreboard players operation speed slot17 = golem herospeed
execute if score slot17 hp matches 1.. run execute if score character# slot17 matches 16 run scoreboard players operation speed slot17 = blackbeard herospeed
execute if score slot17 hp matches 1.. run execute if score character# slot17 matches 17 run scoreboard players operation speed slot17 = grimoire herospeed
execute if score slot17 hp matches 1.. run execute if score character# slot17 matches 18 run scoreboard players operation speed slot17 = grangor herospeed
execute if score slot17 hp matches 1.. run execute if score character# slot17 matches 19 run scoreboard players operation speed slot17 = astro herospeed
execute if score slot17 hp matches 1.. run execute if score character# slot17 matches 20 run scoreboard players operation speed slot17 = doc herospeed
execute if score slot17 hp matches 1.. run execute if score character# slot17 matches 21 run scoreboard players operation speed slot17 = lillith herospeed
execute if score slot17 hp matches 1.. run execute if score character# slot17 matches 22 run scoreboard players operation speed slot17 = gabriel herospeed
execute if score slot17 hp matches 1.. run execute if score character# slot17 matches 23 run scoreboard players operation speed slot17 = gatsby herospeed
execute if score slot17 hp matches 1.. run execute if score character# slot17 matches 24 run scoreboard players operation speed slot17 = garabaldi herospeed
execute if score slot17 hp matches 1.. run execute if score character# slot17 matches 25 run scoreboard players operation speed slot17 = boomer herospeed
execute if score slot17 hp matches 1.. run execute if score character# slot17 matches 26 run scoreboard players operation speed slot17 = osiris herospeed
execute if score slot17 hp matches 1.. run execute if score character# slot17 matches 27 run scoreboard players operation speed slot17 = juniper herospeed
execute if score slot17 hp matches 1.. run execute if score character# slot17 matches 28 run scoreboard players operation speed slot17 = eidolon herospeed
execute if score slot17 hp matches 1.. run execute if score character# slot17 matches 29 run scoreboard players operation speed slot17 = ripper herospeed
execute if score slot17 hp matches 1.. run execute if score character# slot17 matches 30 run scoreboard players operation speed slot17 = domino herospeed
execute if score slot17 hp matches 1.. run execute if score character# slot17 matches 31 run scoreboard players operation speed slot17 = jones herospeed
execute if score slot17 hp matches 1.. run execute if score character# slot17 matches 32 run scoreboard players operation speed slot17 = scythe herospeed
execute if score slot17 hp matches 1.. run execute if score character# slot17 matches 33 run scoreboard players operation speed slot17 = sherman herospeed
execute if score slot17 hp matches 1.. run execute if score character# slot17 matches -1 run scoreboard players operation speed slot17 = skeleton herospeed
execute if score slot17 hp matches 1.. run execute if score character# slot17 matches -2 run scoreboard players operation speed slot17 = demon herospeed
execute if score slot17 hp matches 1.. run execute if score character# slot17 matches -3 run scoreboard players operation speed slot17 = healingTotemSpeed spellStats
execute if score slot17 hp matches 1.. run execute if score character# slot17 matches -4 run scoreboard players operation speed slot17 = golemite herospeed
execute if score slot17 hp matches 1.. run execute if score character# slot17 matches -5 run scoreboard players operation speed slot17 = skeletonplus herospeed

scoreboard players operation speed slot17 -= speedDebuffSlot17 speedDebuffs
scoreboard players operation speed slot17 += speedBuffSlot17 speedBuffs


#Slot 2 Speed Resets
execute if score slot18 hp matches 1.. run execute if score character# slot18 matches 1 run scoreboard players operation speed slot18 = bones herospeed
execute if score slot18 hp matches 1.. run execute if score character# slot18 matches 2 run scoreboard players operation speed slot18 = arthur herospeed
execute if score slot18 hp matches 1.. run execute if score character# slot18 matches 3 run scoreboard players operation speed slot18 = deuce herospeed
execute if score slot18 hp matches 1.. run execute if score character# slot18 matches 4 run scoreboard players operation speed slot18 = subject herospeed
execute if score slot18 hp matches 1.. run execute if score character# slot18 matches 5 run scoreboard players operation speed slot18 = robo herospeed
execute if score slot18 hp matches 1.. run execute if score character# slot18 matches 6 run scoreboard players operation speed slot18 = thorn herospeed
execute if score slot18 hp matches 1.. run execute if score character# slot18 matches 7 run scoreboard players operation speed slot18 = kong herospeed
execute if score slot18 hp matches 1.. run execute if score character# slot18 matches 8 run scoreboard players operation speed slot18 = kirin herospeed
execute if score slot18 hp matches 1.. run execute if score character# slot18 matches 9 run scoreboard players operation speed slot18 = robyn herospeed
execute if score slot18 hp matches 1.. run execute if score character# slot18 matches 10 run scoreboard players operation speed slot18 = dilloLeader herospeed
execute if score slot18 hp matches 1.. run execute if score character# slot18 matches 11 run scoreboard players operation speed slot18 = flint herospeed
execute if score slot18 hp matches 1.. run execute if score character# slot18 matches 12 run scoreboard players operation speed slot18 = ace herospeed
execute if score slot18 hp matches 1.. run execute if score character# slot18 matches 13 run scoreboard players operation speed slot18 = london herospeed
execute if score slot18 hp matches 1.. run execute if score character# slot18 matches 14 run scoreboard players operation speed slot18 = hydra herospeed
execute if score slot18 hp matches 1.. run execute if score character# slot18 matches 15 run scoreboard players operation speed slot18 = golem herospeed
execute if score slot18 hp matches 1.. run execute if score character# slot18 matches 16 run scoreboard players operation speed slot18 = blackbeard herospeed
execute if score slot18 hp matches 1.. run execute if score character# slot18 matches 17 run scoreboard players operation speed slot18 = grimoire herospeed
execute if score slot18 hp matches 1.. run execute if score character# slot18 matches 18 run scoreboard players operation speed slot18 = grangor herospeed
execute if score slot18 hp matches 1.. run execute if score character# slot18 matches 19 run scoreboard players operation speed slot18 = astro herospeed
execute if score slot18 hp matches 1.. run execute if score character# slot18 matches 20 run scoreboard players operation speed slot18 = doc herospeed
execute if score slot18 hp matches 1.. run execute if score character# slot18 matches 21 run scoreboard players operation speed slot18 = lillith herospeed
execute if score slot18 hp matches 1.. run execute if score character# slot18 matches 22 run scoreboard players operation speed slot18 = gabriel herospeed
execute if score slot18 hp matches 1.. run execute if score character# slot18 matches 23 run scoreboard players operation speed slot18 = gatsby herospeed
execute if score slot18 hp matches 1.. run execute if score character# slot18 matches 24 run scoreboard players operation speed slot18 = garabaldi herospeed
execute if score slot18 hp matches 1.. run execute if score character# slot18 matches 25 run scoreboard players operation speed slot18 = boomer herospeed
execute if score slot18 hp matches 1.. run execute if score character# slot18 matches 26 run scoreboard players operation speed slot18 = osiris herospeed
execute if score slot18 hp matches 1.. run execute if score character# slot18 matches 27 run scoreboard players operation speed slot18 = juniper herospeed
execute if score slot18 hp matches 1.. run execute if score character# slot18 matches 28 run scoreboard players operation speed slot18 = eidolon herospeed
execute if score slot18 hp matches 1.. run execute if score character# slot18 matches 29 run scoreboard players operation speed slot18 = ripper herospeed
execute if score slot18 hp matches 1.. run execute if score character# slot18 matches 30 run scoreboard players operation speed slot18 = domino herospeed
execute if score slot18 hp matches 1.. run execute if score character# slot18 matches 31 run scoreboard players operation speed slot18 = jones herospeed
execute if score slot18 hp matches 1.. run execute if score character# slot18 matches 32 run scoreboard players operation speed slot18 = scythe herospeed
execute if score slot18 hp matches 1.. run execute if score character# slot18 matches 33 run scoreboard players operation speed slot18 = sherman herospeed
execute if score slot18 hp matches 1.. run execute if score character# slot18 matches -1 run scoreboard players operation speed slot18 = skeleton herospeed
execute if score slot18 hp matches 1.. run execute if score character# slot18 matches -2 run scoreboard players operation speed slot18 = demon herospeed
execute if score slot18 hp matches 1.. run execute if score character# slot18 matches -3 run scoreboard players operation speed slot18 = healingTotemSpeed spellStats
execute if score slot18 hp matches 1.. run execute if score character# slot18 matches -4 run scoreboard players operation speed slot18 = golemite herospeed
execute if score slot18 hp matches 1.. run execute if score character# slot18 matches -5 run scoreboard players operation speed slot18 = skeletonplus herospeed

scoreboard players operation speed slot18 -= speedDebuffSlot18 speedDebuffs
scoreboard players operation speed slot18 += speedBuffSlot18 speedBuffs


#Slot 3 Speed Resets
execute if score slot19 hp matches 1.. run execute if score character# slot19 matches 1 run scoreboard players operation speed slot19 = bones herospeed
execute if score slot19 hp matches 1.. run execute if score character# slot19 matches 2 run scoreboard players operation speed slot19 = arthur herospeed
execute if score slot19 hp matches 1.. run execute if score character# slot19 matches 3 run scoreboard players operation speed slot19 = deuce herospeed
execute if score slot19 hp matches 1.. run execute if score character# slot19 matches 4 run scoreboard players operation speed slot19 = subject herospeed
execute if score slot19 hp matches 1.. run execute if score character# slot19 matches 5 run scoreboard players operation speed slot19 = robo herospeed
execute if score slot19 hp matches 1.. run execute if score character# slot19 matches 6 run scoreboard players operation speed slot19 = thorn herospeed
execute if score slot19 hp matches 1.. run execute if score character# slot19 matches 7 run scoreboard players operation speed slot19 = kong herospeed
execute if score slot19 hp matches 1.. run execute if score character# slot19 matches 8 run scoreboard players operation speed slot19 = kirin herospeed
execute if score slot19 hp matches 1.. run execute if score character# slot19 matches 9 run scoreboard players operation speed slot19 = robyn herospeed
execute if score slot19 hp matches 1.. run execute if score character# slot19 matches 10 run scoreboard players operation speed slot19 = dillo herospeed
execute if score slot19 hp matches 1.. run execute if score character# slot19 matches 11 run scoreboard players operation speed slot19 = flint herospeed
execute if score slot19 hp matches 1.. run execute if score character# slot19 matches 12 run scoreboard players operation speed slot19 = ace herospeed
execute if score slot19 hp matches 1.. run execute if score character# slot19 matches 13 run scoreboard players operation speed slot19 = london herospeed
execute if score slot19 hp matches 1.. run execute if score character# slot19 matches 14 run scoreboard players operation speed slot19 = hydra herospeed
execute if score slot19 hp matches 1.. run execute if score character# slot19 matches 15 run scoreboard players operation speed slot19 = golem herospeed
execute if score slot19 hp matches 1.. run execute if score character# slot19 matches 16 run scoreboard players operation speed slot19 = blackbeard herospeed
execute if score slot19 hp matches 1.. run execute if score character# slot19 matches 17 run scoreboard players operation speed slot19 = grimoire herospeed
execute if score slot19 hp matches 1.. run execute if score character# slot19 matches 18 run scoreboard players operation speed slot19 = grangor herospeed
execute if score slot19 hp matches 1.. run execute if score character# slot19 matches 19 run scoreboard players operation speed slot19 = astro herospeed
execute if score slot19 hp matches 1.. run execute if score character# slot19 matches 20 run scoreboard players operation speed slot19 = doc herospeed
execute if score slot19 hp matches 1.. run execute if score character# slot19 matches 21 run scoreboard players operation speed slot19 = lillith herospeed
execute if score slot19 hp matches 1.. run execute if score character# slot19 matches 22 run scoreboard players operation speed slot19 = gabriel herospeed
execute if score slot19 hp matches 1.. run execute if score character# slot19 matches 23 run scoreboard players operation speed slot19 = gatsby herospeed
execute if score slot19 hp matches 1.. run execute if score character# slot19 matches 24 run scoreboard players operation speed slot19 = garabaldi herospeed
execute if score slot19 hp matches 1.. run execute if score character# slot19 matches 25 run scoreboard players operation speed slot19 = boomer herospeed
execute if score slot19 hp matches 1.. run execute if score character# slot19 matches 26 run scoreboard players operation speed slot19 = osiris herospeed
execute if score slot19 hp matches 1.. run execute if score character# slot19 matches 27 run scoreboard players operation speed slot19 = juniper herospeed
execute if score slot19 hp matches 1.. run execute if score character# slot19 matches 28 run scoreboard players operation speed slot19 = eidolon herospeed
execute if score slot19 hp matches 1.. run execute if score character# slot19 matches 29 run scoreboard players operation speed slot19 = ripper herospeed
execute if score slot19 hp matches 1.. run execute if score character# slot19 matches 30 run scoreboard players operation speed slot19 = domino herospeed
execute if score slot19 hp matches 1.. run execute if score character# slot19 matches 31 run scoreboard players operation speed slot19 = jones herospeed
execute if score slot19 hp matches 1.. run execute if score character# slot19 matches 32 run scoreboard players operation speed slot19 = scythe herospeed
execute if score slot19 hp matches 1.. run execute if score character# slot19 matches 33 run scoreboard players operation speed slot19 = sherman herospeed
execute if score slot19 hp matches 1.. run execute if score character# slot19 matches -1 run scoreboard players operation speed slot19 = skeleton herospeed
execute if score slot19 hp matches 1.. run execute if score character# slot19 matches -2 run scoreboard players operation speed slot19 = demon herospeed
execute if score slot19 hp matches 1.. run execute if score character# slot19 matches -3 run scoreboard players operation speed slot19 = healingTotemSpeed spellStats
execute if score slot19 hp matches 1.. run execute if score character# slot19 matches -4 run scoreboard players operation speed slot19 = golemite herospeed
execute if score slot19 hp matches 1.. run execute if score character# slot19 matches -5 run scoreboard players operation speed slot19 = skeletonplus herospeed

scoreboard players operation speed slot19 -= speedDebuffSlot19 speedDebuffs
scoreboard players operation speed slot19 += speedBuffSlot19 speedBuffs



#Slot 5 Speed Resets
execute if score slot21 hp matches 1.. run execute if score character# slot21 matches 1 run scoreboard players operation speed slot21 = bones herospeed
execute if score slot21 hp matches 1.. run execute if score character# slot21 matches 2 run scoreboard players operation speed slot21 = arthur herospeed
execute if score slot21 hp matches 1.. run execute if score character# slot21 matches 3 run scoreboard players operation speed slot21 = deuce herospeed
execute if score slot21 hp matches 1.. run execute if score character# slot21 matches 4 run scoreboard players operation speed slot21 = subject herospeed
execute if score slot21 hp matches 1.. run execute if score character# slot21 matches 5 run scoreboard players operation speed slot21 = robo herospeed
execute if score slot21 hp matches 1.. run execute if score character# slot21 matches 6 run scoreboard players operation speed slot21 = thorn herospeed
execute if score slot21 hp matches 1.. run execute if score character# slot21 matches 7 run scoreboard players operation speed slot21 = kong herospeed
execute if score slot21 hp matches 1.. run execute if score character# slot21 matches 8 run scoreboard players operation speed slot21 = kirin herospeed
execute if score slot21 hp matches 1.. run execute if score character# slot21 matches 9 run scoreboard players operation speed slot21 = robyn herospeed
execute if score slot21 hp matches 1.. run execute if score character# slot21 matches 10 run scoreboard players operation speed slot21 = dillo herospeed
execute if score slot21 hp matches 1.. run execute if score character# slot21 matches 11 run scoreboard players operation speed slot21 = flint herospeed
execute if score slot21 hp matches 1.. run execute if score character# slot21 matches 12 run scoreboard players operation speed slot21 = ace herospeed
execute if score slot21 hp matches 1.. run execute if score character# slot21 matches 13 run scoreboard players operation speed slot21 = london herospeed
execute if score slot21 hp matches 1.. run execute if score character# slot21 matches 14 run scoreboard players operation speed slot21 = hydra herospeed
execute if score slot21 hp matches 1.. run execute if score character# slot21 matches 15 run scoreboard players operation speed slot21 = golem herospeed
execute if score slot21 hp matches 1.. run execute if score character# slot21 matches 16 run scoreboard players operation speed slot21 = blackbeard herospeed
execute if score slot21 hp matches 1.. run execute if score character# slot21 matches 17 run scoreboard players operation speed slot21 = grimoire herospeed
execute if score slot21 hp matches 1.. run execute if score character# slot21 matches 18 run scoreboard players operation speed slot21 = grangor herospeed
execute if score slot21 hp matches 1.. run execute if score character# slot21 matches 19 run scoreboard players operation speed slot21 = astro herospeed
execute if score slot21 hp matches 1.. run execute if score character# slot21 matches 20 run scoreboard players operation speed slot21 = doc herospeed
execute if score slot21 hp matches 1.. run execute if score character# slot21 matches 21 run scoreboard players operation speed slot21 = lillith herospeed
execute if score slot21 hp matches 1.. run execute if score character# slot21 matches 22 run scoreboard players operation speed slot21 = gabriel herospeed
execute if score slot21 hp matches 1.. run execute if score character# slot21 matches 23 run scoreboard players operation speed slot21 = gatsby herospeed
execute if score slot21 hp matches 1.. run execute if score character# slot21 matches 24 run scoreboard players operation speed slot21 = garabaldi herospeed
execute if score slot21 hp matches 1.. run execute if score character# slot21 matches 25 run scoreboard players operation speed slot21 = boomer herospeed
execute if score slot21 hp matches 1.. run execute if score character# slot21 matches 26 run scoreboard players operation speed slot21 = osiris herospeed
execute if score slot21 hp matches 1.. run execute if score character# slot21 matches 27 run scoreboard players operation speed slot21 = juniper herospeed
execute if score slot21 hp matches 1.. run execute if score character# slot21 matches 28 run scoreboard players operation speed slot21 = eidolon herospeed
execute if score slot21 hp matches 1.. run execute if score character# slot21 matches 29 run scoreboard players operation speed slot21 = ripper herospeed
execute if score slot21 hp matches 1.. run execute if score character# slot21 matches 30 run scoreboard players operation speed slot21 = domino herospeed
execute if score slot21 hp matches 1.. run execute if score character# slot21 matches 31 run scoreboard players operation speed slot21 = jones herospeed
execute if score slot21 hp matches 1.. run execute if score character# slot21 matches 32 run scoreboard players operation speed slot21 = scythe herospeed
execute if score slot21 hp matches 1.. run execute if score character# slot21 matches 33 run scoreboard players operation speed slot21 = sherman herospeed
execute if score slot21 hp matches 1.. run execute if score character# slot21 matches -1 run scoreboard players operation speed slot21 = skeleton herospeed
execute if score slot21 hp matches 1.. run execute if score character# slot21 matches -2 run scoreboard players operation speed slot21 = demon herospeed
execute if score slot21 hp matches 1.. run execute if score character# slot21 matches -3 run scoreboard players operation speed slot21 = healingTotemSpeed spellStats
execute if score slot21 hp matches 1.. run execute if score character# slot21 matches -4 run scoreboard players operation speed slot21 = golemite herospeed
execute if score slot21 hp matches 1.. run execute if score character# slot21 matches -5 run scoreboard players operation speed slot21 = skeletonplus herospeed

scoreboard players operation speed slot21 -= speedDebuffSlot21 speedDebuffs
scoreboard players operation speed slot21 += speedBuffSlot21 speedBuffs



#Slot 6 Speed Resets
execute if score slot22 hp matches 1.. run execute if score character# slot22 matches 1 run scoreboard players operation speed slot22 = bones herospeed
execute if score slot22 hp matches 1.. run execute if score character# slot22 matches 2 run scoreboard players operation speed slot22 = arthur herospeed
execute if score slot22 hp matches 1.. run execute if score character# slot22 matches 3 run scoreboard players operation speed slot22 = deuce herospeed
execute if score slot22 hp matches 1.. run execute if score character# slot22 matches 4 run scoreboard players operation speed slot22 = subject herospeed
execute if score slot22 hp matches 1.. run execute if score character# slot22 matches 5 run scoreboard players operation speed slot22 = robo herospeed
execute if score slot22 hp matches 1.. run execute if score character# slot22 matches 6 run scoreboard players operation speed slot22 = thorn herospeed
execute if score slot22 hp matches 1.. run execute if score character# slot22 matches 7 run scoreboard players operation speed slot22 = kong herospeed
execute if score slot22 hp matches 1.. run execute if score character# slot22 matches 8 run scoreboard players operation speed slot22 = kirin herospeed
execute if score slot22 hp matches 1.. run execute if score character# slot22 matches 9 run scoreboard players operation speed slot22 = robyn herospeed
execute if score slot22 hp matches 1.. run execute if score character# slot22 matches 10 run scoreboard players operation speed slot22 = dilloLeader herospeed
execute if score slot22 hp matches 1.. run execute if score character# slot22 matches 11 run scoreboard players operation speed slot22 = flint herospeed
execute if score slot22 hp matches 1.. run execute if score character# slot22 matches 12 run scoreboard players operation speed slot22 = ace herospeed
execute if score slot22 hp matches 1.. run execute if score character# slot22 matches 13 run scoreboard players operation speed slot22 = london herospeed
execute if score slot22 hp matches 1.. run execute if score character# slot22 matches 14 run scoreboard players operation speed slot22 = hydra herospeed
execute if score slot22 hp matches 1.. run execute if score character# slot22 matches 15 run scoreboard players operation speed slot22 = golem herospeed
execute if score slot22 hp matches 1.. run execute if score character# slot22 matches 16 run scoreboard players operation speed slot22 = blackbeard herospeed
execute if score slot22 hp matches 1.. run execute if score character# slot22 matches 17 run scoreboard players operation speed slot22 = grimoire herospeed
execute if score slot22 hp matches 1.. run execute if score character# slot22 matches 18 run scoreboard players operation speed slot22 = grangor herospeed
execute if score slot22 hp matches 1.. run execute if score character# slot22 matches 19 run scoreboard players operation speed slot22 = astro herospeed
execute if score slot22 hp matches 1.. run execute if score character# slot22 matches 20 run scoreboard players operation speed slot22 = doc herospeed
execute if score slot22 hp matches 1.. run execute if score character# slot22 matches 21 run scoreboard players operation speed slot22 = lillith herospeed
execute if score slot22 hp matches 1.. run execute if score character# slot22 matches 22 run scoreboard players operation speed slot22 = gabriel herospeed
execute if score slot22 hp matches 1.. run execute if score character# slot22 matches 23 run scoreboard players operation speed slot22 = gatsby herospeed
execute if score slot22 hp matches 1.. run execute if score character# slot22 matches 24 run scoreboard players operation speed slot22 = garabaldi herospeed
execute if score slot22 hp matches 1.. run execute if score character# slot22 matches 25 run scoreboard players operation speed slot22 = boomer herospeed
execute if score slot22 hp matches 1.. run execute if score character# slot22 matches 26 run scoreboard players operation speed slot22 = osiris herospeed
execute if score slot22 hp matches 1.. run execute if score character# slot22 matches 27 run scoreboard players operation speed slot22 = juniper herospeed
execute if score slot22 hp matches 1.. run execute if score character# slot22 matches 28 run scoreboard players operation speed slot22 = eidolon herospeed
execute if score slot22 hp matches 1.. run execute if score character# slot22 matches 29 run scoreboard players operation speed slot22 = ripper herospeed
execute if score slot22 hp matches 1.. run execute if score character# slot22 matches 30 run scoreboard players operation speed slot22 = domino herospeed
execute if score slot22 hp matches 1.. run execute if score character# slot22 matches 31 run scoreboard players operation speed slot22 = jones herospeed
execute if score slot22 hp matches 1.. run execute if score character# slot22 matches 32 run scoreboard players operation speed slot22 = scythe herospeed
execute if score slot22 hp matches 1.. run execute if score character# slot22 matches 33 run scoreboard players operation speed slot22 = sherman herospeed
execute if score slot22 hp matches 1.. run execute if score character# slot22 matches -1 run scoreboard players operation speed slot22 = skeleton herospeed
execute if score slot22 hp matches 1.. run execute if score character# slot22 matches -2 run scoreboard players operation speed slot22 = demon herospeed
execute if score slot22 hp matches 1.. run execute if score character# slot22 matches -3 run scoreboard players operation speed slot22 = healingTotemSpeed spellStats
execute if score slot22 hp matches 1.. run execute if score character# slot22 matches -4 run scoreboard players operation speed slot22 = golemite herospeed
execute if score slot22 hp matches 1.. run execute if score character# slot22 matches -5 run scoreboard players operation speed slot22 = skeletonplus herospeed

scoreboard players operation speed slot22 -= speedDebuffSlot22 speedDebuffs
scoreboard players operation speed slot22 += speedBuffSlot22 speedBuffs


#Slot 7 Speed Resets
execute if score slot23 hp matches 1.. run execute if score character# slot23 matches 1 run scoreboard players operation speed slot23 = bones herospeed
execute if score slot23 hp matches 1.. run execute if score character# slot23 matches 2 run scoreboard players operation speed slot23 = arthur herospeed
execute if score slot23 hp matches 1.. run execute if score character# slot23 matches 3 run scoreboard players operation speed slot23 = deuce herospeed
execute if score slot23 hp matches 1.. run execute if score character# slot23 matches 4 run scoreboard players operation speed slot23 = subject herospeed
execute if score slot23 hp matches 1.. run execute if score character# slot23 matches 5 run scoreboard players operation speed slot23 = robo herospeed
execute if score slot23 hp matches 1.. run execute if score character# slot23 matches 6 run scoreboard players operation speed slot23 = thorn herospeed
execute if score slot23 hp matches 1.. run execute if score character# slot23 matches 7 run scoreboard players operation speed slot23 = kong herospeed
execute if score slot23 hp matches 1.. run execute if score character# slot23 matches 8 run scoreboard players operation speed slot23 = kirin herospeed
execute if score slot23 hp matches 1.. run execute if score character# slot23 matches 9 run scoreboard players operation speed slot23 = robyn herospeed
execute if score slot23 hp matches 1.. run execute if score character# slot23 matches 10 run scoreboard players operation speed slot23 = dillo herospeed
execute if score slot23 hp matches 1.. run execute if score character# slot23 matches 11 run scoreboard players operation speed slot23 = flint herospeed
execute if score slot23 hp matches 1.. run execute if score character# slot23 matches 12 run scoreboard players operation speed slot23 = ace herospeed
execute if score slot23 hp matches 1.. run execute if score character# slot23 matches 13 run scoreboard players operation speed slot23 = london herospeed
execute if score slot23 hp matches 1.. run execute if score character# slot23 matches 14 run scoreboard players operation speed slot23 = hydra herospeed
execute if score slot23 hp matches 1.. run execute if score character# slot23 matches 15 run scoreboard players operation speed slot23 = golem herospeed
execute if score slot23 hp matches 1.. run execute if score character# slot23 matches 16 run scoreboard players operation speed slot23 = blackbeard herospeed
execute if score slot23 hp matches 1.. run execute if score character# slot23 matches 17 run scoreboard players operation speed slot23 = grimoire herospeed
execute if score slot23 hp matches 1.. run execute if score character# slot23 matches 18 run scoreboard players operation speed slot23 = grangor herospeed
execute if score slot23 hp matches 1.. run execute if score character# slot23 matches 19 run scoreboard players operation speed slot23 = astro herospeed
execute if score slot23 hp matches 1.. run execute if score character# slot23 matches 20 run scoreboard players operation speed slot23 = doc herospeed
execute if score slot23 hp matches 1.. run execute if score character# slot23 matches 21 run scoreboard players operation speed slot23 = lillith herospeed
execute if score slot23 hp matches 1.. run execute if score character# slot23 matches 22 run scoreboard players operation speed slot23 = gabriel herospeed
execute if score slot23 hp matches 1.. run execute if score character# slot23 matches 23 run scoreboard players operation speed slot23 = gatsby herospeed
execute if score slot23 hp matches 1.. run execute if score character# slot23 matches 24 run scoreboard players operation speed slot23 = garabaldi herospeed
execute if score slot23 hp matches 1.. run execute if score character# slot23 matches 25 run scoreboard players operation speed slot23 = boomer herospeed
execute if score slot23 hp matches 1.. run execute if score character# slot23 matches 26 run scoreboard players operation speed slot23 = osiris herospeed
execute if score slot23 hp matches 1.. run execute if score character# slot23 matches 27 run scoreboard players operation speed slot23 = juniper herospeed
execute if score slot23 hp matches 1.. run execute if score character# slot23 matches 28 run scoreboard players operation speed slot23 = eidolon herospeed
execute if score slot23 hp matches 1.. run execute if score character# slot23 matches 29 run scoreboard players operation speed slot23 = ripper herospeed
execute if score slot23 hp matches 1.. run execute if score character# slot23 matches 30 run scoreboard players operation speed slot23 = domino herospeed
execute if score slot23 hp matches 1.. run execute if score character# slot23 matches 31 run scoreboard players operation speed slot23 = jones herospeed
execute if score slot23 hp matches 1.. run execute if score character# slot23 matches 32 run scoreboard players operation speed slot23 = scythe herospeed
execute if score slot23 hp matches 1.. run execute if score character# slot23 matches 33 run scoreboard players operation speed slot23 = sherman herospeed
execute if score slot23 hp matches 1.. run execute if score character# slot23 matches -1 run scoreboard players operation speed slot23 = skeleton herospeed
execute if score slot23 hp matches 1.. run execute if score character# slot23 matches -2 run scoreboard players operation speed slot23 = demon herospeed
execute if score slot23 hp matches 1.. run execute if score character# slot23 matches -3 run scoreboard players operation speed slot23 = healingTotemSpeed spellStats
execute if score slot23 hp matches 1.. run execute if score character# slot23 matches -4 run scoreboard players operation speed slot23 = golemite herospeed
execute if score slot23 hp matches 1.. run execute if score character# slot23 matches -5 run scoreboard players operation speed slot23 = skeletonplus herospeed

scoreboard players operation speed slot23 -= speedDebuffSlot23 speedDebuffs
scoreboard players operation speed slot23 += speedBuffSlot23 speedBuffs



#Slot 4 Speed Resets
scoreboard players set speed slot20 -1000000
execute if score slot20 hp matches 1.. run execute if score character# slot20 matches -1 run scoreboard players operation speed slot20 = skeleton herospeed
execute if score slot20 hp matches 1.. run execute if score character# slot20 matches -2 run scoreboard players operation speed slot20 = demon herospeed
execute if score slot20 hp matches 1.. run execute if score character# slot20 matches -3 run scoreboard players operation speed slot20 = healingtotem herospeed
execute if score slot20 hp matches 1.. run execute if score character# slot20 matches -4 run scoreboard players operation speed slot20 = golemite herospeed
scoreboard players operation speed slot20 -= speedDebuffSlot20 speedDebuffs
scoreboard players operation speed slot20 += speedBuffSlot20 speedBuffs


#Slot 8 Speed Resets
scoreboard players set speed slot24 -1000000
execute if score slot24 hp matches 1.. run execute if score character# slot24 matches -1 run scoreboard players operation speed slot24 = skeleton herospeed
execute if score slot24 hp matches 1.. run execute if score character# slot24 matches -2 run scoreboard players operation speed slot24 = demon herospeed
execute if score slot24 hp matches 1.. run execute if score character# slot24 matches -3 run scoreboard players operation speed slot24 = healingtotem herospeed
execute if score slot24 hp matches 1.. run execute if score character# slot24 matches -4 run scoreboard players operation speed slot24 = golemite herospeed
scoreboard players operation speed slot24 -= speedDebuffSlot16 speedDebuffs
scoreboard players operation speed slot24 += speedBuffSlot16 speedBuffs


#Game Start Leader bonuses
execute if score character# slot18 matches 2 run scoreboard players operation buffDurationSlot17 atkmodifiers = arthurBuffDuration abilityStats
execute if score character# slot18 matches 2 run scoreboard players operation buffDurationSlot18 atkmodifiers = arthurBuffDuration abilityStats
execute if score character# slot18 matches 2 run scoreboard players operation buffDurationSlot19 atkmodifiers = arthurBuffDuration abilityStats
execute if score character# slot18 matches 2 run scoreboard players operation buffDurationSlot20 atkmodifiers = arthurBuffDuration abilityStats
execute if score character# slot18 matches 2 run scoreboard players operation attackBuffSlot17 atkmodifiers = arthurBuff abilityStats
execute if score character# slot18 matches 2 run scoreboard players operation attackBuffSlot18 atkmodifiers = arthurBuff abilityStats
execute if score character# slot18 matches 2 run scoreboard players operation attackBuffSlot19 atkmodifiers = arthurBuff abilityStats
execute if score character# slot18 matches 2 run scoreboard players operation attackBuffSlot20 atkmodifiers = arthurBuff abilityStats

execute if score character# slot22 matches 2 run scoreboard players operation buffDurationSlot21 atkmodifiers = arthurBuffDuration abilityStats
execute if score character# slot22 matches 2 run scoreboard players operation buffDurationSlot22 atkmodifiers = arthurBuffDuration abilityStats
execute if score character# slot22 matches 2 run scoreboard players operation buffDurationSlot23 atkmodifiers = arthurBuffDuration abilityStats
execute if score character# slot22 matches 2 run scoreboard players operation buffDurationSlot16 atkmodifiers = arthurBuffDuration abilityStats
execute if score character# slot22 matches 2 run scoreboard players operation attackBuffSlot21 atkmodifiers = arthurBuff abilityStats
execute if score character# slot22 matches 2 run scoreboard players operation attackBuffSlot22 atkmodifiers = arthurBuff abilityStats
execute if score character# slot22 matches 2 run scoreboard players operation attackBuffSlot23 atkmodifiers = arthurBuff abilityStats
execute if score character# slot22 matches 2 run scoreboard players operation attackBuffSlot16 atkmodifiers = arthurBuff abilityStats

execute if score character# slot18 matches 14 run scoreboard players operation atk slot18 += hydraLeader heroattack
execute if score character# slot22 matches 14 run scoreboard players operation atk slot22 += hydraLeader heroattack

execute if score character# slot17 matches 21 run scoreboard players operation slot17 hp -= lillithLeechDmg abilityStats
execute if score character# slot17 matches 21 run scoreboard players operation slot18 hp -= lillithLeechDmg abilityStats
execute if score character# slot17 matches 21 run scoreboard players operation slot19 hp -= lillithLeechDmg abilityStats

execute if score character# slot19 matches 21 run scoreboard players operation slot17 hp -= lillithLeechDmg abilityStats
execute if score character# slot19 matches 21 run scoreboard players operation slot18 hp -= lillithLeechDmg abilityStats
execute if score character# slot19 matches 21 run scoreboard players operation slot19 hp -= lillithLeechDmg abilityStats

execute if score character# slot21 matches 21 run scoreboard players operation slot21 hp -= lillithLeechDmg abilityStats
execute if score character# slot21 matches 21 run scoreboard players operation slot22 hp -= lillithLeechDmg abilityStats
execute if score character# slot21 matches 21 run scoreboard players operation slot23 hp -= lillithLeechDmg abilityStats

execute if score character# slot23 matches 21 run scoreboard players operation slot21 hp -= lillithLeechDmg abilityStats
execute if score character# slot23 matches 21 run scoreboard players operation slot22 hp -= lillithLeechDmg abilityStats
execute if score character# slot23 matches 21 run scoreboard players operation slot23 hp -= lillithLeechDmg abilityStats

execute if score character# slot18 matches 21 run scoreboard players operation slot17 hp -= lillithLeaderLeechDmg abilityStats
execute if score character# slot18 matches 21 run scoreboard players operation slot18 hp -= lillithLeaderLeechDmg abilityStats
execute if score character# slot18 matches 21 run scoreboard players operation slot19 hp -= lillithLeaderLeechDmg abilityStats

execute if score character# slot22 matches 21 run scoreboard players operation slot21 hp -= lillithLeaderLeechDmg abilityStats
execute if score character# slot22 matches 21 run scoreboard players operation slot22 hp -= lillithLeaderLeechDmg abilityStats
execute if score character# slot22 matches 21 run scoreboard players operation slot23 hp -= lillithLeaderLeechDmg abilityStats

execute if score character# slot18 matches 29 run scoreboard players operation atk slot18 += ripperLeader heroattack
execute if score character# slot18 matches 29 if score durationSlot18 shield < ripperLeaderDuration abilityStats run scoreboard players operation durationSlot18 shield = ripperLeaderDuration abilityStats
execute if score character# slot18 matches 29 run scoreboard players operation shield slot18 += ripperShield abilityStats

execute if score character# slot22 matches 29 run scoreboard players operation atk slot22 += ripperLeader heroattack
execute if score character# slot22 matches 29 if score durationSlot22 shield < ripperLeaderDuration abilityStats run scoreboard players operation durationSlot22 shield = ripperLeaderDuration abilityStats
execute if score character# slot22 matches 29 run scoreboard players operation shield slot22 += ripperShield abilityStats

execute if score character# slot18 matches 24 run scoreboard players set ward slot18 2
execute if score character# slot22 matches 24 run scoreboard players set ward slot22 2

execute if score character# slot18 matches 9 run execute if score ward slot22 matches 0 run scoreboard players operation marks slot22 = robyn abilityStats
execute if score character# slot18 matches 9 run execute if score ward slot22 matches 1 run function chthree:wardslot22

execute if score character# slot22 matches 9 run execute if score ward slot22 matches 0 run scoreboard players operation marks slot18 = robyn abilityStats
execute if score character# slot22 matches 9 run execute if score ward slot22 matches 1 run function chthree:wardslot18


scoreboard players set game3Ongoing ongoinggames 1
scoreboard players set attackIsOngoingGame3 booleans 0