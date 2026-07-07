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
execute if score character# slot20 matches 0 run scoreboard players set speed slot20 -1000000
execute if score character# slot24 matches 0 run scoreboard players set speed slot24 -1000000
execute if score character# slot20 matches 0 run scoreboard players set slot20 hp 0
execute if score character# slot24 matches 0 run scoreboard players set slot24 hp 0
kill @e[type=item]

#Slot 1 Speed Reset
execute if score slot17 hp matches 1.. run execute if score character# slot17 matches 1 run scoreboard players operation maxspeed slot17 = bones herospeed
execute if score slot17 hp matches 1.. run execute if score character# slot17 matches 2 run scoreboard players operation maxspeed slot17 = arthur herospeed
execute if score slot17 hp matches 1.. run execute if score character# slot17 matches 3 run scoreboard players operation maxspeed slot17 = deuce herospeed
execute if score slot17 hp matches 1.. run execute if score character# slot17 matches 4 run scoreboard players operation maxspeed slot17 = subject herospeed
execute if score slot17 hp matches 1.. run execute if score character# slot17 matches 5 run scoreboard players operation maxspeed slot17 = robo herospeed
execute if score slot17 hp matches 1.. run execute if score character# slot17 matches 6 run scoreboard players operation maxspeed slot17 = thorn herospeed
execute if score slot17 hp matches 1.. run execute if score character# slot17 matches 7 run scoreboard players operation maxspeed slot17 = kong herospeed
execute if score slot17 hp matches 1.. run execute if score character# slot17 matches 8 run scoreboard players operation maxspeed slot17 = kirin herospeed
execute if score slot17 hp matches 1.. run execute if score character# slot17 matches 9 run scoreboard players operation maxspeed slot17 = robyn herospeed
execute if score slot17 hp matches 1.. run execute if score character# slot17 matches 10 run scoreboard players operation maxspeed slot17 = dillo herospeed
execute if score slot17 hp matches 1.. run execute if score character# slot17 matches 11 run scoreboard players operation maxspeed slot17 = flint herospeed
execute if score slot17 hp matches 1.. run execute if score character# slot17 matches 12 run scoreboard players operation maxspeed slot17 = ace herospeed
execute if score slot17 hp matches 1.. run execute if score character# slot17 matches 13 run scoreboard players operation maxspeed slot17 = london herospeed
execute if score slot17 hp matches 1.. run execute if score character# slot17 matches 14 run scoreboard players operation maxspeed slot17 = hydra herospeed
execute if score slot17 hp matches 1.. run execute if score character# slot17 matches 15 run scoreboard players operation maxspeed slot17 = golem herospeed
execute if score slot17 hp matches 1.. run execute if score character# slot17 matches 16 run scoreboard players operation maxspeed slot17 = blackbeard herospeed
execute if score slot17 hp matches 1.. run execute if score character# slot17 matches 17 run scoreboard players operation maxspeed slot17 = grimoire herospeed
execute if score slot17 hp matches 1.. run execute if score character# slot17 matches 18 run scoreboard players operation maxspeed slot17 = grangor herospeed
execute if score slot17 hp matches 1.. run execute if score character# slot17 matches 19 run scoreboard players operation maxspeed slot17 = astro herospeed
execute if score slot17 hp matches 1.. run execute if score character# slot17 matches 20 run scoreboard players operation maxspeed slot17 = doc herospeed
execute if score slot17 hp matches 1.. run execute if score character# slot17 matches 21 run scoreboard players operation maxspeed slot17 = lillith herospeed
execute if score slot17 hp matches 1.. run execute if score character# slot17 matches 22 run scoreboard players operation maxspeed slot17 = gabriel herospeed
execute if score slot17 hp matches 1.. run execute if score character# slot17 matches 23 run scoreboard players operation maxspeed slot17 = gatsby herospeed
execute if score slot17 hp matches 1.. run execute if score character# slot17 matches 24 run scoreboard players operation maxspeed slot17 = garabaldi herospeed
execute if score slot17 hp matches 1.. run execute if score character# slot17 matches 25 run scoreboard players operation maxspeed slot17 = boomer herospeed
execute if score slot17 hp matches 1.. run execute if score character# slot17 matches 26 run scoreboard players operation maxspeed slot17 = osiris herospeed
execute if score slot17 hp matches 1.. run execute if score character# slot17 matches 27 run scoreboard players operation maxspeed slot17 = juniper herospeed
execute if score slot17 hp matches 1.. run execute if score character# slot17 matches 28 run scoreboard players operation maxspeed slot17 = eidolon herospeed
execute if score slot17 hp matches 1.. run execute if score character# slot17 matches 29 run scoreboard players operation maxspeed slot17 = ripper herospeed
execute if score slot17 hp matches 1.. run execute if score character# slot17 matches 30 run scoreboard players operation maxspeed slot17 = domino herospeed
execute if score slot17 hp matches 1.. run execute if score character# slot17 matches 31 run scoreboard players operation maxspeed slot17 = jones herospeed
execute if score slot17 hp matches 1.. run execute if score character# slot17 matches 32 run scoreboard players operation maxspeed slot17 = scythe herospeed
execute if score slot17 hp matches 1.. run execute if score character# slot17 matches 33 run scoreboard players operation maxspeed slot17 = sherman herospeed
execute if score slot17 hp matches 1.. run execute if score character# slot17 matches -1 run scoreboard players operation maxspeed slot17 = skeleton herospeed
execute if score slot17 hp matches 1.. run execute if score character# slot17 matches -2 run scoreboard players operation maxspeed slot17 = demon herospeed
execute if score slot17 hp matches 1.. run execute if score character# slot17 matches -3 run scoreboard players operation maxspeed slot17 = healingTotemSpeed spellStats
execute if score slot17 hp matches 1.. run execute if score character# slot17 matches -4 run scoreboard players operation maxspeed slot17 = golemite herospeed
execute if score slot17 hp matches 1.. run execute if score character# slot17 matches -5 run scoreboard players operation maxspeed slot17 = skeletonplus herospeed
execute if score slot17 hp matches 1.. run execute if score character# slot17 matches 34 run scoreboard players operation maxspeed slot17 = frank herospeed
execute if score slot17 hp matches 1.. run execute if score character# slot17 matches 35 run scoreboard players operation maxspeed slot17 = stein herospeed
execute if score slot17 hp matches 1.. run execute if score character# slot17 matches 36 run scoreboard players operation maxspeed slot17 = barley herospeed
execute if score slot17 hp matches 1.. run execute if score character# slot17 matches 37 run scoreboard players operation maxspeed slot17 = boogaloo herospeed
execute if score slot17 hp matches 1.. run execute if score character# slot17 matches 38 run scoreboard players operation maxspeed slot17 = igor herospeed
execute if score slot17 hp matches 1.. run execute if score character# slot17 matches 39 run scoreboard players operation maxspeed slot17 = blinky herospeed
execute if score slot17 hp matches 1.. run execute if score character# slot17 matches 40 run scoreboard players operation maxspeed slot17 = zeebo herospeed
execute if score slot17 hp matches 1.. run execute if score character# slot17 matches 41 run scoreboard players operation maxspeed slot17 = fenrir herospeed
execute if score slot17 hp matches 1.. run execute if score character# slot17 matches 42 run scoreboard players operation maxspeed slot17 = anubis herospeed
execute if score slot17 hp matches 1.. run execute if score character# slot17 matches 43 run scoreboard players operation maxspeed slot17 = grendel herospeed



#Slot 2 Speed Resets
execute if score slot18 hp matches 1.. run execute if score character# slot18 matches 1 run scoreboard players operation maxspeed slot18 = bones herospeed
execute if score slot18 hp matches 1.. run execute if score character# slot18 matches 2 run scoreboard players operation maxspeed slot18 = arthur herospeed
execute if score slot18 hp matches 1.. run execute if score character# slot18 matches 3 run scoreboard players operation maxspeed slot18 = deuce herospeed
execute if score slot18 hp matches 1.. run execute if score character# slot18 matches 4 run scoreboard players operation maxspeed slot18 = subject herospeed
execute if score slot18 hp matches 1.. run execute if score character# slot18 matches 5 run scoreboard players operation maxspeed slot18 = robo herospeed
execute if score slot18 hp matches 1.. run execute if score character# slot18 matches 6 run scoreboard players operation maxspeed slot18 = thorn herospeed
execute if score slot18 hp matches 1.. run execute if score character# slot18 matches 7 run scoreboard players operation maxspeed slot18 = kong herospeed
execute if score slot18 hp matches 1.. run execute if score character# slot18 matches 8 run scoreboard players operation maxspeed slot18 = kirin herospeed
execute if score slot18 hp matches 1.. run execute if score character# slot18 matches 9 run scoreboard players operation maxspeed slot18 = robyn herospeed
execute if score slot18 hp matches 1.. run execute if score character# slot18 matches 10 run scoreboard players operation maxspeed slot18 = dilloLeader herospeed
execute if score slot18 hp matches 1.. run execute if score character# slot18 matches 11 run scoreboard players operation maxspeed slot18 = flint herospeed
execute if score slot18 hp matches 1.. run execute if score character# slot18 matches 12 run scoreboard players operation maxspeed slot18 = ace herospeed
execute if score slot18 hp matches 1.. run execute if score character# slot18 matches 13 run scoreboard players operation maxspeed slot18 = london herospeed
execute if score slot18 hp matches 1.. run execute if score character# slot18 matches 14 run scoreboard players operation maxspeed slot18 = hydra herospeed
execute if score slot18 hp matches 1.. run execute if score character# slot18 matches 15 run scoreboard players operation maxspeed slot18 = golem herospeed
execute if score slot18 hp matches 1.. run execute if score character# slot18 matches 16 run scoreboard players operation maxspeed slot18 = blackbeard herospeed
execute if score slot18 hp matches 1.. run execute if score character# slot18 matches 17 run scoreboard players operation maxspeed slot18 = grimoire herospeed
execute if score slot18 hp matches 1.. run execute if score character# slot18 matches 18 run scoreboard players operation maxspeed slot18 = grangor herospeed
execute if score slot18 hp matches 1.. run execute if score character# slot18 matches 19 run scoreboard players operation maxspeed slot18 = astro herospeed
execute if score slot18 hp matches 1.. run execute if score character# slot18 matches 20 run scoreboard players operation maxspeed slot18 = doc herospeed
execute if score slot18 hp matches 1.. run execute if score character# slot18 matches 21 run scoreboard players operation maxspeed slot18 = lillith herospeed
execute if score slot18 hp matches 1.. run execute if score character# slot18 matches 22 run scoreboard players operation maxspeed slot18 = gabriel herospeed
execute if score slot18 hp matches 1.. run execute if score character# slot18 matches 23 run scoreboard players operation maxspeed slot18 = gatsby herospeed
execute if score slot18 hp matches 1.. run execute if score character# slot18 matches 24 run scoreboard players operation maxspeed slot18 = garabaldi herospeed
execute if score slot18 hp matches 1.. run execute if score character# slot18 matches 25 run scoreboard players operation maxspeed slot18 = boomer herospeed
execute if score slot18 hp matches 1.. run execute if score character# slot18 matches 26 run scoreboard players operation maxspeed slot18 = osiris herospeed
execute if score slot18 hp matches 1.. run execute if score character# slot18 matches 27 run scoreboard players operation maxspeed slot18 = juniper herospeed
execute if score slot18 hp matches 1.. run execute if score character# slot18 matches 28 run scoreboard players operation maxspeed slot18 = eidolon herospeed
execute if score slot18 hp matches 1.. run execute if score character# slot18 matches 29 run scoreboard players operation maxspeed slot18 = ripper herospeed
execute if score slot18 hp matches 1.. run execute if score character# slot18 matches 30 run scoreboard players operation maxspeed slot18 = domino herospeed
execute if score slot18 hp matches 1.. run execute if score character# slot18 matches 31 run scoreboard players operation maxspeed slot18 = jones herospeed
execute if score slot18 hp matches 1.. run execute if score character# slot18 matches 32 run scoreboard players operation maxspeed slot18 = scythe herospeed
execute if score slot18 hp matches 1.. run execute if score character# slot18 matches 33 run scoreboard players operation maxspeed slot18 = sherman herospeed
execute if score slot18 hp matches 1.. run execute if score character# slot18 matches -1 run scoreboard players operation maxspeed slot18 = skeleton herospeed
execute if score slot18 hp matches 1.. run execute if score character# slot18 matches -2 run scoreboard players operation maxspeed slot18 = demon herospeed
execute if score slot18 hp matches 1.. run execute if score character# slot18 matches -3 run scoreboard players operation maxspeed slot18 = healingTotemSpeed spellStats
execute if score slot18 hp matches 1.. run execute if score character# slot18 matches -4 run scoreboard players operation maxspeed slot18 = golemite herospeed
execute if score slot18 hp matches 1.. run execute if score character# slot18 matches -5 run scoreboard players operation maxspeed slot18 = skeletonplus herospeed
execute if score slot18 hp matches 1.. run execute if score character# slot18 matches 34 run scoreboard players operation maxspeed slot18 = frank herospeed
execute if score slot18 hp matches 1.. run execute if score character# slot18 matches 35 run scoreboard players operation maxspeed slot18 = stein herospeed
execute if score slot18 hp matches 1.. run execute if score character# slot18 matches 36 run scoreboard players operation maxspeed slot18 = barley herospeed
execute if score slot18 hp matches 1.. run execute if score character# slot18 matches 37 run scoreboard players operation maxspeed slot18 = boogaloo herospeed
execute if score slot18 hp matches 1.. run execute if score character# slot18 matches 38 run scoreboard players operation maxspeed slot18 = igor herospeed
execute if score slot18 hp matches 1.. run execute if score character# slot18 matches 39 run scoreboard players operation maxspeed slot18 = blinky herospeed
execute if score slot18 hp matches 1.. run execute if score character# slot18 matches 40 run scoreboard players operation maxspeed slot18 = zeebo herospeed
execute if score slot18 hp matches 1.. run execute if score character# slot18 matches 41 run scoreboard players operation maxspeed slot18 = fenrir herospeed
execute if score slot18 hp matches 1.. run execute if score character# slot18 matches 42 run scoreboard players operation maxspeed slot18 = anubis herospeed
execute if score slot18 hp matches 1.. run execute if score character# slot18 matches 43 run scoreboard players operation maxspeed slot18 = grendel herospeed


#Slot 3 Speed Resets
execute if score slot19 hp matches 1.. run execute if score character# slot19 matches 1 run scoreboard players operation maxspeed slot19 = bones herospeed
execute if score slot19 hp matches 1.. run execute if score character# slot19 matches 2 run scoreboard players operation maxspeed slot19 = arthur herospeed
execute if score slot19 hp matches 1.. run execute if score character# slot19 matches 3 run scoreboard players operation maxspeed slot19 = deuce herospeed
execute if score slot19 hp matches 1.. run execute if score character# slot19 matches 4 run scoreboard players operation maxspeed slot19 = subject herospeed
execute if score slot19 hp matches 1.. run execute if score character# slot19 matches 5 run scoreboard players operation maxspeed slot19 = robo herospeed
execute if score slot19 hp matches 1.. run execute if score character# slot19 matches 6 run scoreboard players operation maxspeed slot19 = thorn herospeed
execute if score slot19 hp matches 1.. run execute if score character# slot19 matches 7 run scoreboard players operation maxspeed slot19 = kong herospeed
execute if score slot19 hp matches 1.. run execute if score character# slot19 matches 8 run scoreboard players operation maxspeed slot19 = kirin herospeed
execute if score slot19 hp matches 1.. run execute if score character# slot19 matches 9 run scoreboard players operation maxspeed slot19 = robyn herospeed
execute if score slot19 hp matches 1.. run execute if score character# slot19 matches 10 run scoreboard players operation maxspeed slot19 = dillo herospeed
execute if score slot19 hp matches 1.. run execute if score character# slot19 matches 11 run scoreboard players operation maxspeed slot19 = flint herospeed
execute if score slot19 hp matches 1.. run execute if score character# slot19 matches 12 run scoreboard players operation maxspeed slot19 = ace herospeed
execute if score slot19 hp matches 1.. run execute if score character# slot19 matches 13 run scoreboard players operation maxspeed slot19 = london herospeed
execute if score slot19 hp matches 1.. run execute if score character# slot19 matches 14 run scoreboard players operation maxspeed slot19 = hydra herospeed
execute if score slot19 hp matches 1.. run execute if score character# slot19 matches 15 run scoreboard players operation maxspeed slot19 = golem herospeed
execute if score slot19 hp matches 1.. run execute if score character# slot19 matches 16 run scoreboard players operation maxspeed slot19 = blackbeard herospeed
execute if score slot19 hp matches 1.. run execute if score character# slot19 matches 17 run scoreboard players operation maxspeed slot19 = grimoire herospeed
execute if score slot19 hp matches 1.. run execute if score character# slot19 matches 18 run scoreboard players operation maxspeed slot19 = grangor herospeed
execute if score slot19 hp matches 1.. run execute if score character# slot19 matches 19 run scoreboard players operation maxspeed slot19 = astro herospeed
execute if score slot19 hp matches 1.. run execute if score character# slot19 matches 20 run scoreboard players operation maxspeed slot19 = doc herospeed
execute if score slot19 hp matches 1.. run execute if score character# slot19 matches 21 run scoreboard players operation maxspeed slot19 = lillith herospeed
execute if score slot19 hp matches 1.. run execute if score character# slot19 matches 22 run scoreboard players operation maxspeed slot19 = gabriel herospeed
execute if score slot19 hp matches 1.. run execute if score character# slot19 matches 23 run scoreboard players operation maxspeed slot19 = gatsby herospeed
execute if score slot19 hp matches 1.. run execute if score character# slot19 matches 24 run scoreboard players operation maxspeed slot19 = garabaldi herospeed
execute if score slot19 hp matches 1.. run execute if score character# slot19 matches 25 run scoreboard players operation maxspeed slot19 = boomer herospeed
execute if score slot19 hp matches 1.. run execute if score character# slot19 matches 26 run scoreboard players operation maxspeed slot19 = osiris herospeed
execute if score slot19 hp matches 1.. run execute if score character# slot19 matches 27 run scoreboard players operation maxspeed slot19 = juniper herospeed
execute if score slot19 hp matches 1.. run execute if score character# slot19 matches 28 run scoreboard players operation maxspeed slot19 = eidolon herospeed
execute if score slot19 hp matches 1.. run execute if score character# slot19 matches 29 run scoreboard players operation maxspeed slot19 = ripper herospeed
execute if score slot19 hp matches 1.. run execute if score character# slot19 matches 30 run scoreboard players operation maxspeed slot19 = domino herospeed
execute if score slot19 hp matches 1.. run execute if score character# slot19 matches 31 run scoreboard players operation maxspeed slot19 = jones herospeed
execute if score slot19 hp matches 1.. run execute if score character# slot19 matches 32 run scoreboard players operation maxspeed slot19 = scythe herospeed
execute if score slot19 hp matches 1.. run execute if score character# slot19 matches 33 run scoreboard players operation maxspeed slot19 = sherman herospeed
execute if score slot19 hp matches 1.. run execute if score character# slot19 matches -1 run scoreboard players operation maxspeed slot19 = skeleton herospeed
execute if score slot19 hp matches 1.. run execute if score character# slot19 matches -2 run scoreboard players operation maxspeed slot19 = demon herospeed
execute if score slot19 hp matches 1.. run execute if score character# slot19 matches -3 run scoreboard players operation maxspeed slot19 = healingTotemSpeed spellStats
execute if score slot19 hp matches 1.. run execute if score character# slot19 matches -4 run scoreboard players operation maxspeed slot19 = golemite herospeed
execute if score slot19 hp matches 1.. run execute if score character# slot19 matches -5 run scoreboard players operation maxspeed slot19 = skeletonplus herospeed
execute if score slot19 hp matches 1.. run execute if score character# slot19 matches 34 run scoreboard players operation maxspeed slot19 = frank herospeed
execute if score slot19 hp matches 1.. run execute if score character# slot19 matches 35 run scoreboard players operation maxspeed slot19 = stein herospeed
execute if score slot19 hp matches 1.. run execute if score character# slot19 matches 36 run scoreboard players operation maxspeed slot19 = barley herospeed
execute if score slot19 hp matches 1.. run execute if score character# slot19 matches 37 run scoreboard players operation maxspeed slot19 = boogaloo herospeed
execute if score slot19 hp matches 1.. run execute if score character# slot19 matches 38 run scoreboard players operation maxspeed slot19 = igor herospeed
execute if score slot19 hp matches 1.. run execute if score character# slot19 matches 39 run scoreboard players operation maxspeed slot19 = blinky herospeed
execute if score slot19 hp matches 1.. run execute if score character# slot19 matches 40 run scoreboard players operation maxspeed slot19 = zeebo herospeed
execute if score slot19 hp matches 1.. run execute if score character# slot19 matches 41 run scoreboard players operation maxspeed slot19 = fenrir herospeed
execute if score slot19 hp matches 1.. run execute if score character# slot19 matches 42 run scoreboard players operation maxspeed slot19 = anubis herospeed
execute if score slot19 hp matches 1.. run execute if score character# slot19 matches 43 run scoreboard players operation maxspeed slot19 = grendel herospeed




#Slot 5 Speed Resets
execute if score slot21 hp matches 1.. run execute if score character# slot21 matches 1 run scoreboard players operation maxspeed slot21 = bones herospeed
execute if score slot21 hp matches 1.. run execute if score character# slot21 matches 2 run scoreboard players operation maxspeed slot21 = arthur herospeed
execute if score slot21 hp matches 1.. run execute if score character# slot21 matches 3 run scoreboard players operation maxspeed slot21 = deuce herospeed
execute if score slot21 hp matches 1.. run execute if score character# slot21 matches 4 run scoreboard players operation maxspeed slot21 = subject herospeed
execute if score slot21 hp matches 1.. run execute if score character# slot21 matches 5 run scoreboard players operation maxspeed slot21 = robo herospeed
execute if score slot21 hp matches 1.. run execute if score character# slot21 matches 6 run scoreboard players operation maxspeed slot21 = thorn herospeed
execute if score slot21 hp matches 1.. run execute if score character# slot21 matches 7 run scoreboard players operation maxspeed slot21 = kong herospeed
execute if score slot21 hp matches 1.. run execute if score character# slot21 matches 8 run scoreboard players operation maxspeed slot21 = kirin herospeed
execute if score slot21 hp matches 1.. run execute if score character# slot21 matches 9 run scoreboard players operation maxspeed slot21 = robyn herospeed
execute if score slot21 hp matches 1.. run execute if score character# slot21 matches 10 run scoreboard players operation maxspeed slot21 = dillo herospeed
execute if score slot21 hp matches 1.. run execute if score character# slot21 matches 11 run scoreboard players operation maxspeed slot21 = flint herospeed
execute if score slot21 hp matches 1.. run execute if score character# slot21 matches 12 run scoreboard players operation maxspeed slot21 = ace herospeed
execute if score slot21 hp matches 1.. run execute if score character# slot21 matches 13 run scoreboard players operation maxspeed slot21 = london herospeed
execute if score slot21 hp matches 1.. run execute if score character# slot21 matches 14 run scoreboard players operation maxspeed slot21 = hydra herospeed
execute if score slot21 hp matches 1.. run execute if score character# slot21 matches 15 run scoreboard players operation maxspeed slot21 = golem herospeed
execute if score slot21 hp matches 1.. run execute if score character# slot21 matches 16 run scoreboard players operation maxspeed slot21 = blackbeard herospeed
execute if score slot21 hp matches 1.. run execute if score character# slot21 matches 17 run scoreboard players operation maxspeed slot21 = grimoire herospeed
execute if score slot21 hp matches 1.. run execute if score character# slot21 matches 18 run scoreboard players operation maxspeed slot21 = grangor herospeed
execute if score slot21 hp matches 1.. run execute if score character# slot21 matches 19 run scoreboard players operation maxspeed slot21 = astro herospeed
execute if score slot21 hp matches 1.. run execute if score character# slot21 matches 20 run scoreboard players operation maxspeed slot21 = doc herospeed
execute if score slot21 hp matches 1.. run execute if score character# slot21 matches 21 run scoreboard players operation maxspeed slot21 = lillith herospeed
execute if score slot21 hp matches 1.. run execute if score character# slot21 matches 22 run scoreboard players operation maxspeed slot21 = gabriel herospeed
execute if score slot21 hp matches 1.. run execute if score character# slot21 matches 23 run scoreboard players operation maxspeed slot21 = gatsby herospeed
execute if score slot21 hp matches 1.. run execute if score character# slot21 matches 24 run scoreboard players operation maxspeed slot21 = garabaldi herospeed
execute if score slot21 hp matches 1.. run execute if score character# slot21 matches 25 run scoreboard players operation maxspeed slot21 = boomer herospeed
execute if score slot21 hp matches 1.. run execute if score character# slot21 matches 26 run scoreboard players operation maxspeed slot21 = osiris herospeed
execute if score slot21 hp matches 1.. run execute if score character# slot21 matches 27 run scoreboard players operation maxspeed slot21 = juniper herospeed
execute if score slot21 hp matches 1.. run execute if score character# slot21 matches 28 run scoreboard players operation maxspeed slot21 = eidolon herospeed
execute if score slot21 hp matches 1.. run execute if score character# slot21 matches 29 run scoreboard players operation maxspeed slot21 = ripper herospeed
execute if score slot21 hp matches 1.. run execute if score character# slot21 matches 30 run scoreboard players operation maxspeed slot21 = domino herospeed
execute if score slot21 hp matches 1.. run execute if score character# slot21 matches 31 run scoreboard players operation maxspeed slot21 = jones herospeed
execute if score slot21 hp matches 1.. run execute if score character# slot21 matches 32 run scoreboard players operation maxspeed slot21 = scythe herospeed
execute if score slot21 hp matches 1.. run execute if score character# slot21 matches 33 run scoreboard players operation maxspeed slot21 = sherman herospeed
execute if score slot21 hp matches 1.. run execute if score character# slot21 matches -1 run scoreboard players operation maxspeed slot21 = skeleton herospeed
execute if score slot21 hp matches 1.. run execute if score character# slot21 matches -2 run scoreboard players operation maxspeed slot21 = demon herospeed
execute if score slot21 hp matches 1.. run execute if score character# slot21 matches -3 run scoreboard players operation maxspeed slot21 = healingTotemSpeed spellStats
execute if score slot21 hp matches 1.. run execute if score character# slot21 matches -4 run scoreboard players operation maxspeed slot21 = golemite herospeed
execute if score slot21 hp matches 1.. run execute if score character# slot21 matches -5 run scoreboard players operation maxspeed slot21 = skeletonplus herospeed
execute if score slot21 hp matches 1.. run execute if score character# slot21 matches 34 run scoreboard players operation maxspeed slot21 = frank herospeed
execute if score slot21 hp matches 1.. run execute if score character# slot21 matches 35 run scoreboard players operation maxspeed slot21 = stein herospeed
execute if score slot21 hp matches 1.. run execute if score character# slot21 matches 36 run scoreboard players operation maxspeed slot21 = barley herospeed
execute if score slot21 hp matches 1.. run execute if score character# slot21 matches 37 run scoreboard players operation maxspeed slot21 = boogaloo herospeed
execute if score slot21 hp matches 1.. run execute if score character# slot21 matches 38 run scoreboard players operation maxspeed slot21 = igor herospeed
execute if score slot21 hp matches 1.. run execute if score character# slot21 matches 39 run scoreboard players operation maxspeed slot21 = blinky herospeed
execute if score slot21 hp matches 1.. run execute if score character# slot21 matches 40 run scoreboard players operation maxspeed slot21 = zeebo herospeed
execute if score slot21 hp matches 1.. run execute if score character# slot21 matches 41 run scoreboard players operation maxspeed slot21 = fenrir herospeed
execute if score slot21 hp matches 1.. run execute if score character# slot21 matches 42 run scoreboard players operation maxspeed slot21 = anubis herospeed
execute if score slot21 hp matches 1.. run execute if score character# slot21 matches 43 run scoreboard players operation maxspeed slot21 = grendel herospeed




#Slot 6 Speed Resets
execute if score slot22 hp matches 1.. run execute if score character# slot22 matches 1 run scoreboard players operation maxspeed slot22 = bones herospeed
execute if score slot22 hp matches 1.. run execute if score character# slot22 matches 2 run scoreboard players operation maxspeed slot22 = arthur herospeed
execute if score slot22 hp matches 1.. run execute if score character# slot22 matches 3 run scoreboard players operation maxspeed slot22 = deuce herospeed
execute if score slot22 hp matches 1.. run execute if score character# slot22 matches 4 run scoreboard players operation maxspeed slot22 = subject herospeed
execute if score slot22 hp matches 1.. run execute if score character# slot22 matches 5 run scoreboard players operation maxspeed slot22 = robo herospeed
execute if score slot22 hp matches 1.. run execute if score character# slot22 matches 6 run scoreboard players operation maxspeed slot22 = thorn herospeed
execute if score slot22 hp matches 1.. run execute if score character# slot22 matches 7 run scoreboard players operation maxspeed slot22 = kong herospeed
execute if score slot22 hp matches 1.. run execute if score character# slot22 matches 8 run scoreboard players operation maxspeed slot22 = kirin herospeed
execute if score slot22 hp matches 1.. run execute if score character# slot22 matches 9 run scoreboard players operation maxspeed slot22 = robyn herospeed
execute if score slot22 hp matches 1.. run execute if score character# slot22 matches 10 run scoreboard players operation maxspeed slot22 = dilloLeader herospeed
execute if score slot22 hp matches 1.. run execute if score character# slot22 matches 11 run scoreboard players operation maxspeed slot22 = flint herospeed
execute if score slot22 hp matches 1.. run execute if score character# slot22 matches 12 run scoreboard players operation maxspeed slot22 = ace herospeed
execute if score slot22 hp matches 1.. run execute if score character# slot22 matches 13 run scoreboard players operation maxspeed slot22 = london herospeed
execute if score slot22 hp matches 1.. run execute if score character# slot22 matches 14 run scoreboard players operation maxspeed slot22 = hydra herospeed
execute if score slot22 hp matches 1.. run execute if score character# slot22 matches 15 run scoreboard players operation maxspeed slot22 = golem herospeed
execute if score slot22 hp matches 1.. run execute if score character# slot22 matches 16 run scoreboard players operation maxspeed slot22 = blackbeard herospeed
execute if score slot22 hp matches 1.. run execute if score character# slot22 matches 17 run scoreboard players operation maxspeed slot22 = grimoire herospeed
execute if score slot22 hp matches 1.. run execute if score character# slot22 matches 18 run scoreboard players operation maxspeed slot22 = grangor herospeed
execute if score slot22 hp matches 1.. run execute if score character# slot22 matches 19 run scoreboard players operation maxspeed slot22 = astro herospeed
execute if score slot22 hp matches 1.. run execute if score character# slot22 matches 20 run scoreboard players operation maxspeed slot22 = doc herospeed
execute if score slot22 hp matches 1.. run execute if score character# slot22 matches 21 run scoreboard players operation maxspeed slot22 = lillith herospeed
execute if score slot22 hp matches 1.. run execute if score character# slot22 matches 22 run scoreboard players operation maxspeed slot22 = gabriel herospeed
execute if score slot22 hp matches 1.. run execute if score character# slot22 matches 23 run scoreboard players operation maxspeed slot22 = gatsby herospeed
execute if score slot22 hp matches 1.. run execute if score character# slot22 matches 24 run scoreboard players operation maxspeed slot22 = garabaldi herospeed
execute if score slot22 hp matches 1.. run execute if score character# slot22 matches 25 run scoreboard players operation maxspeed slot22 = boomer herospeed
execute if score slot22 hp matches 1.. run execute if score character# slot22 matches 26 run scoreboard players operation maxspeed slot22 = osiris herospeed
execute if score slot22 hp matches 1.. run execute if score character# slot22 matches 27 run scoreboard players operation maxspeed slot22 = juniper herospeed
execute if score slot22 hp matches 1.. run execute if score character# slot22 matches 28 run scoreboard players operation maxspeed slot22 = eidolon herospeed
execute if score slot22 hp matches 1.. run execute if score character# slot22 matches 29 run scoreboard players operation maxspeed slot22 = ripper herospeed
execute if score slot22 hp matches 1.. run execute if score character# slot22 matches 30 run scoreboard players operation maxspeed slot22 = domino herospeed
execute if score slot22 hp matches 1.. run execute if score character# slot22 matches 31 run scoreboard players operation maxspeed slot22 = jones herospeed
execute if score slot22 hp matches 1.. run execute if score character# slot22 matches 32 run scoreboard players operation maxspeed slot22 = scythe herospeed
execute if score slot22 hp matches 1.. run execute if score character# slot22 matches 33 run scoreboard players operation maxspeed slot22 = sherman herospeed
execute if score slot22 hp matches 1.. run execute if score character# slot22 matches -1 run scoreboard players operation maxspeed slot22 = skeleton herospeed
execute if score slot22 hp matches 1.. run execute if score character# slot22 matches -2 run scoreboard players operation maxspeed slot22 = demon herospeed
execute if score slot22 hp matches 1.. run execute if score character# slot22 matches -3 run scoreboard players operation maxspeed slot22 = healingTotemSpeed spellStats
execute if score slot22 hp matches 1.. run execute if score character# slot22 matches -4 run scoreboard players operation maxspeed slot22 = golemite herospeed
execute if score slot22 hp matches 1.. run execute if score character# slot22 matches -5 run scoreboard players operation maxspeed slot22 = skeletonplus herospeed
execute if score slot22 hp matches 1.. run execute if score character# slot22 matches 34 run scoreboard players operation maxspeed slot22 = frank herospeed
execute if score slot22 hp matches 1.. run execute if score character# slot22 matches 35 run scoreboard players operation maxspeed slot22 = stein herospeed
execute if score slot22 hp matches 1.. run execute if score character# slot22 matches 36 run scoreboard players operation maxspeed slot22 = barley herospeed
execute if score slot22 hp matches 1.. run execute if score character# slot22 matches 37 run scoreboard players operation maxspeed slot22 = boogaloo herospeed
execute if score slot22 hp matches 1.. run execute if score character# slot22 matches 38 run scoreboard players operation maxspeed slot22 = igor herospeed
execute if score slot22 hp matches 1.. run execute if score character# slot22 matches 39 run scoreboard players operation maxspeed slot22 = blinky herospeed
execute if score slot22 hp matches 1.. run execute if score character# slot22 matches 40 run scoreboard players operation maxspeed slot22 = zeebo herospeed
execute if score slot22 hp matches 1.. run execute if score character# slot22 matches 41 run scoreboard players operation maxspeed slot22 = fenrir herospeed
execute if score slot22 hp matches 1.. run execute if score character# slot22 matches 42 run scoreboard players operation maxspeed slot22 = anubis herospeed
execute if score slot22 hp matches 1.. run execute if score character# slot22 matches 43 run scoreboard players operation maxspeed slot22 = grendel herospeed



#Slot 7 Speed Resets
execute if score slot23 hp matches 1.. run execute if score character# slot23 matches 1 run scoreboard players operation maxspeed slot23 = bones herospeed
execute if score slot23 hp matches 1.. run execute if score character# slot23 matches 2 run scoreboard players operation maxspeed slot23 = arthur herospeed
execute if score slot23 hp matches 1.. run execute if score character# slot23 matches 3 run scoreboard players operation maxspeed slot23 = deuce herospeed
execute if score slot23 hp matches 1.. run execute if score character# slot23 matches 4 run scoreboard players operation maxspeed slot23 = subject herospeed
execute if score slot23 hp matches 1.. run execute if score character# slot23 matches 5 run scoreboard players operation maxspeed slot23 = robo herospeed
execute if score slot23 hp matches 1.. run execute if score character# slot23 matches 6 run scoreboard players operation maxspeed slot23 = thorn herospeed
execute if score slot23 hp matches 1.. run execute if score character# slot23 matches 7 run scoreboard players operation maxspeed slot23 = kong herospeed
execute if score slot23 hp matches 1.. run execute if score character# slot23 matches 8 run scoreboard players operation maxspeed slot23 = kirin herospeed
execute if score slot23 hp matches 1.. run execute if score character# slot23 matches 9 run scoreboard players operation maxspeed slot23 = robyn herospeed
execute if score slot23 hp matches 1.. run execute if score character# slot23 matches 10 run scoreboard players operation maxspeed slot23 = dillo herospeed
execute if score slot23 hp matches 1.. run execute if score character# slot23 matches 11 run scoreboard players operation maxspeed slot23 = flint herospeed
execute if score slot23 hp matches 1.. run execute if score character# slot23 matches 12 run scoreboard players operation maxspeed slot23 = ace herospeed
execute if score slot23 hp matches 1.. run execute if score character# slot23 matches 13 run scoreboard players operation maxspeed slot23 = london herospeed
execute if score slot23 hp matches 1.. run execute if score character# slot23 matches 14 run scoreboard players operation maxspeed slot23 = hydra herospeed
execute if score slot23 hp matches 1.. run execute if score character# slot23 matches 15 run scoreboard players operation maxspeed slot23 = golem herospeed
execute if score slot23 hp matches 1.. run execute if score character# slot23 matches 16 run scoreboard players operation maxspeed slot23 = blackbeard herospeed
execute if score slot23 hp matches 1.. run execute if score character# slot23 matches 17 run scoreboard players operation maxspeed slot23 = grimoire herospeed
execute if score slot23 hp matches 1.. run execute if score character# slot23 matches 18 run scoreboard players operation maxspeed slot23 = grangor herospeed
execute if score slot23 hp matches 1.. run execute if score character# slot23 matches 19 run scoreboard players operation maxspeed slot23 = astro herospeed
execute if score slot23 hp matches 1.. run execute if score character# slot23 matches 20 run scoreboard players operation maxspeed slot23 = doc herospeed
execute if score slot23 hp matches 1.. run execute if score character# slot23 matches 21 run scoreboard players operation maxspeed slot23 = lillith herospeed
execute if score slot23 hp matches 1.. run execute if score character# slot23 matches 22 run scoreboard players operation maxspeed slot23 = gabriel herospeed
execute if score slot23 hp matches 1.. run execute if score character# slot23 matches 23 run scoreboard players operation maxspeed slot23 = gatsby herospeed
execute if score slot23 hp matches 1.. run execute if score character# slot23 matches 24 run scoreboard players operation maxspeed slot23 = garabaldi herospeed
execute if score slot23 hp matches 1.. run execute if score character# slot23 matches 25 run scoreboard players operation maxspeed slot23 = boomer herospeed
execute if score slot23 hp matches 1.. run execute if score character# slot23 matches 26 run scoreboard players operation maxspeed slot23 = osiris herospeed
execute if score slot23 hp matches 1.. run execute if score character# slot23 matches 27 run scoreboard players operation maxspeed slot23 = juniper herospeed
execute if score slot23 hp matches 1.. run execute if score character# slot23 matches 28 run scoreboard players operation maxspeed slot23 = eidolon herospeed
execute if score slot23 hp matches 1.. run execute if score character# slot23 matches 29 run scoreboard players operation maxspeed slot23 = ripper herospeed
execute if score slot23 hp matches 1.. run execute if score character# slot23 matches 30 run scoreboard players operation maxspeed slot23 = domino herospeed
execute if score slot23 hp matches 1.. run execute if score character# slot23 matches 31 run scoreboard players operation maxspeed slot23 = jones herospeed
execute if score slot23 hp matches 1.. run execute if score character# slot23 matches 32 run scoreboard players operation maxspeed slot23 = scythe herospeed
execute if score slot23 hp matches 1.. run execute if score character# slot23 matches 33 run scoreboard players operation maxspeed slot23 = sherman herospeed
execute if score slot23 hp matches 1.. run execute if score character# slot23 matches -1 run scoreboard players operation maxspeed slot23 = skeleton herospeed
execute if score slot23 hp matches 1.. run execute if score character# slot23 matches -2 run scoreboard players operation maxspeed slot23 = demon herospeed
execute if score slot23 hp matches 1.. run execute if score character# slot23 matches -3 run scoreboard players operation maxspeed slot23 = healingTotemSpeed spellStats
execute if score slot23 hp matches 1.. run execute if score character# slot23 matches -4 run scoreboard players operation maxspeed slot23 = golemite herospeed
execute if score slot23 hp matches 1.. run execute if score character# slot23 matches -5 run scoreboard players operation maxspeed slot23 = skeletonplus herospeed
execute if score slot23 hp matches 1.. run execute if score character# slot23 matches 34 run scoreboard players operation maxspeed slot23 = frank herospeed
execute if score slot23 hp matches 1.. run execute if score character# slot23 matches 35 run scoreboard players operation maxspeed slot23 = stein herospeed
execute if score slot23 hp matches 1.. run execute if score character# slot23 matches 36 run scoreboard players operation maxspeed slot23 = barley herospeed
execute if score slot23 hp matches 1.. run execute if score character# slot23 matches 37 run scoreboard players operation maxspeed slot23 = boogaloo herospeed
execute if score slot23 hp matches 1.. run execute if score character# slot23 matches 38 run scoreboard players operation maxspeed slot23 = igor herospeed
execute if score slot23 hp matches 1.. run execute if score character# slot23 matches 39 run scoreboard players operation maxspeed slot23 = blinky herospeed
execute if score slot23 hp matches 1.. run execute if score character# slot23 matches 40 run scoreboard players operation maxspeed slot23 = zeebo herospeed
execute if score slot23 hp matches 1.. run execute if score character# slot23 matches 41 run scoreboard players operation maxspeed slot23 = fenrir herospeed
execute if score slot23 hp matches 1.. run execute if score character# slot23 matches 42 run scoreboard players operation maxspeed slot23 = anubis herospeed
execute if score slot23 hp matches 1.. run execute if score character# slot23 matches 43 run scoreboard players operation maxspeed slot23 = grendel herospeed



#Slot 4 Speed Resets
scoreboard players set maxspeed slot20 -1000000
execute if score slot20 hp matches 1.. run execute if score character# slot20 matches -1 run scoreboard players operation maxspeed slot20 = skeleton herospeed
execute if score slot20 hp matches 1.. run execute if score character# slot20 matches -2 run scoreboard players operation maxspeed slot20 = demon herospeed
execute if score slot20 hp matches 1.. run execute if score character# slot20 matches -3 run scoreboard players operation maxspeed slot20 = healingtotem herospeed
execute if score slot20 hp matches 1.. run execute if score character# slot20 matches -4 run scoreboard players operation maxspeed slot20 = golemite herospeed



#Slot 8 Speed Resets
scoreboard players set maxspeed slot24 -1000000
execute if score slot24 hp matches 1.. run execute if score character# slot24 matches -1 run scoreboard players operation maxspeed slot24 = skeleton herospeed
execute if score slot24 hp matches 1.. run execute if score character# slot24 matches -2 run scoreboard players operation maxspeed slot24 = demon herospeed
execute if score slot24 hp matches 1.. run execute if score character# slot24 matches -3 run scoreboard players operation maxspeed slot24 = healingtotem herospeed
execute if score slot24 hp matches 1.. run execute if score character# slot24 matches -4 run scoreboard players operation maxspeed slot24 = golemite herospeed

#Jones Leader Bonus
execute if score character# slot18 matches 31 run scoreboard players operation maxspeed slot17 += jonesLeader abilityStats
execute if score character# slot18 matches 31 run scoreboard players operation maxspeed slot18 += jonesLeader abilityStats
execute if score character# slot18 matches 31 run scoreboard players operation maxspeed slot18 += jonesLeader abilityStats
execute if score character# slot18 matches 31 run scoreboard players operation maxspeed slot20 += jonesLeader abilityStats
execute if score character# slot22 matches 31 run scoreboard players operation maxspeed slot21 += jonesLeader abilityStats
execute if score character# slot22 matches 31 run scoreboard players operation maxspeed slot22 += jonesLeader abilityStats
execute if score character# slot22 matches 31 run scoreboard players operation maxspeed slot23 += jonesLeader abilityStats
execute if score character# slot22 matches 31 run scoreboard players operation maxspeed slot24 += jonesLeader abilityStats


#Game Start Leader bonuses

execute if score character# slot18 matches 36 run scoreboard players operation atk slot18 += barleyLeader abilityStats
execute if score character# slot22 matches 36 run scoreboard players operation atk slot22 += barleyLeader abilityStats

execute if score character# slot18 matches 41 run scoreboard players operation atk slot18 += fenrirLeader heroattack
execute if score character# slot22 matches 41 run scoreboard players operation atk slot22 += fenrirLeader heroattack

execute if score character# slot18 matches 34 if score character# slot17 matches 35 run scoreboard players operation atk slot17 += steinLeader heroattack
execute if score character# slot18 matches 34 if score character# slot19 matches 35 run scoreboard players operation atk slot19 += steinLeader heroattack
execute if score character# slot22 matches 34 if score character# slot21 matches 35 run scoreboard players operation atk slot21 += steinLeader heroattack
execute if score character# slot22 matches 34 if score character# slot23 matches 35 run scoreboard players operation atk slot23 += steinLeader heroattack
execute if score character# slot18 matches 35 run scoreboard players operation atk slot18 += steinLeader heroattack
execute if score character# slot22 matches 35 run scoreboard players operation atk slot22 += steinLeader heroattack

execute if score character# slot18 matches 35 if score character# slot17 matches 34 run scoreboard players operation slot17 hp += frankLeader herohealth
execute if score character# slot18 matches 35 if score character# slot17 matches 34 run scoreboard players operation durationSlot17 taunt = frankLeaderTaunt abilityStats
execute if score character# slot18 matches 35 if score character# slot19 matches 34 run scoreboard players operation slot19 hp += frankLeader herohealth
execute if score character# slot18 matches 35 if score character# slot19 matches 34 run scoreboard players operation durationSlot19 taunt = frankLeaderTaunt abilityStats
execute if score character# slot22 matches 35 if score character# slot21 matches 34 run scoreboard players operation slot21 hp += frankLeader herohealth
execute if score character# slot22 matches 35 if score character# slot21 matches 34 run scoreboard players operation durationSlot21 taunt = frankLeaderTaunt abilityStats
execute if score character# slot22 matches 35 if score character# slot23 matches 34 run scoreboard players operation slot23 hp += frankLeader herohealth
execute if score character# slot22 matches 35 if score character# slot23 matches 34 run scoreboard players operation durationSlot23 taunt = frankLeaderTaunt abilityStats
execute if score character# slot18 matches 34 run scoreboard players operation slot18 hp += frankLeader herohealth
execute if score character# slot18 matches 34 run scoreboard players operation durationSlot18 taunt = frankLeaderTaunt abilityStats
execute if score character# slot22 matches 34 run scoreboard players operation slot22 hp += frankLeader herohealth
execute if score character# slot22 matches 34 run scoreboard players operation durationSlot22 taunt = frankLeaderTaunt abilityStats

execute if score character# slot17 matches 41 run scoreboard players operation fenrirhpsave5 saves = slot17 hp
execute if score character# slot18 matches 41 run scoreboard players operation fenrirhpsave5 saves = slot18 hp
execute if score character# slot19 matches 41 run scoreboard players operation fenrirhpsave5 saves = slot19 hp
execute if score character# slot21 matches 41 run scoreboard players operation fenrirhpsave6 saves = slot21 hp
execute if score character# slot22 matches 41 run scoreboard players operation fenrirhpsave6 saves = slot22 hp
execute if score character# slot23 matches 41 run scoreboard players operation fenrirhpsave6 saves = slot23 hp

execute if score character# slot18 matches 42 run scoreboard players operation anubisHP saves = anubisLeader abilityStats
execute if score character# slot18 matches 42 run scoreboard players operation anubisHP saves *= anubisUnusedP5 saves
execute if score character# slot18 matches 42 run scoreboard players operation slot18 hp += anubisHP saves

execute if score character# slot22 matches 42 run scoreboard players operation anubisHP saves = anubisLeader abilityStats
execute if score character# slot22 matches 42 run scoreboard players operation anubisHP saves *= anubisUnusedP6 saves
execute if score character# slot22 matches 42 run scoreboard players operation slot22 hp += anubisHP saves

scoreboard players set anubisUsedP5 saves 9
execute unless score character# slot17 matches 17 unless score character# slot18 matches 17 unless score character# slot19 matches 17 run scoreboard players remove anubisUsedP5 saves 1
execute unless score character# slot18 matches 17 run scoreboard players remove anubisUsedP5 saves 1
scoreboard players operation anubisUsedP5 saves -= anubisUnusedP5 saves

scoreboard players set anubisUsedP6 saves 9
execute unless score character# slot21 matches 17 unless score character# slot22 matches 17 unless score character# slot23 matches 17 run scoreboard players remove anubisUsedP6 saves 1
execute unless score character# slot22 matches 17 run scoreboard players remove anubisUsedP6 saves 1
scoreboard players operation anubisUsedP6 saves -= anubisUnusedP6 saves



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
execute if score character# slot22 matches 2 run scoreboard players operation buffDurationSlot24 atkmodifiers = arthurBuffDuration abilityStats
execute if score character# slot22 matches 2 run scoreboard players operation attackBuffSlot21 atkmodifiers = arthurBuff abilityStats
execute if score character# slot22 matches 2 run scoreboard players operation attackBuffSlot22 atkmodifiers = arthurBuff abilityStats
execute if score character# slot22 matches 2 run scoreboard players operation attackBuffSlot23 atkmodifiers = arthurBuff abilityStats
execute if score character# slot22 matches 2 run scoreboard players operation attackBuffSlot24 atkmodifiers = arthurBuff abilityStats


execute if score character# slot18 matches 18 run scoreboard players operation maxhp slot18 += grangorTeamHealthBonus herohealth
execute if score character# slot18 matches 18 run scoreboard players operation maxhp slot17 += grangorTeamHealthBonus herohealth
execute if score character# slot18 matches 18 run scoreboard players operation maxhp slot19 += grangorTeamHealthBonus herohealth
execute if score character# slot22 matches 18 run scoreboard players operation maxhp slot22 += grangorTeamHealthBonus herohealth
execute if score character# slot22 matches 18 run scoreboard players operation maxhp slot21 += grangorTeamHealthBonus herohealth
execute if score character# slot22 matches 18 run scoreboard players operation maxhp slot23 += grangorTeamHealthBonus herohealth

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

execute if score character# slot18 matches 9 run execute if score ward slot22 matches 0 run scoreboard players operation durationSlot22 mark = robynDuration abilityStats
execute if score character# slot18 matches 9 run execute if score ward slot22 matches 0 run scoreboard players operation marks slot22 = robyn abilityStats
execute if score character# slot18 matches 9 run execute if score ward slot22 matches 1 run function chthree:wardslot22

execute if score character# slot22 matches 9 run execute if score ward slot22 matches 0 run scoreboard players operation durationSlot18 mark = robynDuration abilityStats
execute if score character# slot22 matches 9 run execute if score ward slot22 matches 0 run scoreboard players operation marks slot18 = robyn abilityStats
execute if score character# slot22 matches 9 run execute if score ward slot22 matches 1 run function chthree:wardslot18

scoreboard players operation maxhp slot17 = slot17 hp
scoreboard players operation maxhp slot18 = slot18 hp
scoreboard players operation maxhp slot19 = slot19 hp
scoreboard players operation maxhp slot21 = slot21 hp
scoreboard players operation maxhp slot22 = slot22 hp
scoreboard players operation maxhp slot23 = slot23 hp

execute if score slot20 hp matches 1.. run scoreboard players operation maxhp slot20 = slot20 hp
execute if score slot24 hp matches 1.. run scoreboard players operation maxhp slot24 = slot24 hp

scoreboard players operation speed slot17 = maxspeed slot17
scoreboard players operation speed slot18 = maxspeed slot18
scoreboard players operation speed slot19 = maxspeed slot19
scoreboard players operation speed slot20 = maxspeed slot20
scoreboard players operation speed slot21 = maxspeed slot21
scoreboard players operation speed slot22 = maxspeed slot22
scoreboard players operation speed slot23 = maxspeed slot23
scoreboard players operation speed slot24 = maxspeed slot24


execute if score character# slot18 matches 37 run scoreboard players operation buffDurationSlot18 atkmodifiers = boogalooLeaderDuration abilityStats
execute if score character# slot18 matches 37 run scoreboard players operation attackBuffSlot18 atkmodifiers = boogalooLeader abilityStats
execute if score character# slot18 matches 37 run scoreboard players operation durationSlot18 speedBuffs = boogalooLeaderDuration abilityStats
execute if score character# slot18 matches 37 run scoreboard players operation speedBuffSlot18 speedBuffs = boogalooLeaderSpeed abilityStats
execute if score character# slot18 matches 37 run scoreboard players operation speed slot18 += boogalooLeaderSpeed abilityStats
execute if score character# slot22 matches 37 run scoreboard players operation buffDurationSlot22 atkmodifiers = boogalooLeaderDuration abilityStats
execute if score character# slot22 matches 37 run scoreboard players operation attackBuffSlot22 atkmodifiers = boogalooLeader abilityStats
execute if score character# slot22 matches 37 run scoreboard players operation durationSlot22 speedBuffs = boogalooLeaderDuration abilityStats
execute if score character# slot22 matches 37 run scoreboard players operation speedBuffSlot22 speedBuffs = boogalooLeaderSpeed abilityStats
execute if score character# slot22 matches 37 run scoreboard players operation speed slot22 += boogalooLeaderSpeed abilityStats

scoreboard players set game3Ongoing ongoinggames 1
scoreboard players set attackIsOngoingGame3 booleans 0