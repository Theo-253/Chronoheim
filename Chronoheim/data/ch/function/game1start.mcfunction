#Teams
tp @a[tag=game1] 200 1 214
#Scoreboard Uis
scoreboard objectives add Health_Game_1 dummy
scoreboard objectives add Speed_Game_1 dummy
scoreboard objectives add Cooldown_Game_1 dummy
scoreboard objectives add Spell_Cooldown_Game_1 dummy
scoreboard objectives setdisplay sidebar.team.red Health_Game_1
scoreboard objectives setdisplay sidebar.team.dark_red Health_Game_1
execute positioned 200 1 214 run kill @e[name=mapstand,distance=..30]
execute at @p[tag=p1,tag=colosseum] run place template map.colosseum 200 -1 200
execute at @p[tag=p2,tag=colosseum] run place template map.colosseum 199 -1 230 180
execute at @p[tag=p1,tag=lab] run place template map.lab 200 -1 200
execute at @p[tag=p2,tag=lab] run place template map.lab 199 -1 230 180
execute at @p[tag=p1,tag=!lab,tag=!colosseum] run place template map.scenic 200 0 200
execute at @p[tag=p2,tag=!lab,tag=!colosseum] run place template map.scenic 199 0 230 180
kill @e[type=item]
execute if score character# slot4 matches 0 run scoreboard players set speed slot4 -1000000
execute if score character# slot8 matches 0 run scoreboard players set speed slot8 -1000000
execute if score character# slot4 matches 0 run scoreboard players set slot4 hp 0
execute if score character# slot8 matches 0 run scoreboard players set slot8 hp 0
execute if score slot1 hp matches 1.. run execute if score character# slot1 matches 1 run scoreboard players operation maxspeed slot1 = bones herospeed
execute if score slot1 hp matches 1.. run execute if score character# slot1 matches 2 run scoreboard players operation maxspeed slot1 = arthur herospeed
execute if score slot1 hp matches 1.. run execute if score character# slot1 matches 3 run scoreboard players operation maxspeed slot1 = deuce herospeed
execute if score slot1 hp matches 1.. run execute if score character# slot1 matches 4 run scoreboard players operation maxspeed slot1 = subject herospeed
execute if score slot1 hp matches 1.. run execute if score character# slot1 matches 5 run scoreboard players operation maxspeed slot1 = robo herospeed
execute if score slot1 hp matches 1.. run execute if score character# slot1 matches 6 run scoreboard players operation maxspeed slot1 = thorn herospeed
execute if score slot1 hp matches 1.. run execute if score character# slot1 matches 7 run scoreboard players operation maxspeed slot1 = kong herospeed
execute if score slot1 hp matches 1.. run execute if score character# slot1 matches 8 run scoreboard players operation maxspeed slot1 = kirin herospeed
execute if score slot1 hp matches 1.. run execute if score character# slot1 matches 9 run scoreboard players operation maxspeed slot1 = robyn herospeed
execute if score slot1 hp matches 1.. run execute if score character# slot1 matches 10 run scoreboard players operation maxspeed slot1 = dillo herospeed
execute if score slot1 hp matches 1.. run execute if score character# slot1 matches 11 run scoreboard players operation maxspeed slot1 = flint herospeed
execute if score slot1 hp matches 1.. run execute if score character# slot1 matches 12 run scoreboard players operation maxspeed slot1 = ace herospeed
execute if score slot1 hp matches 1.. run execute if score character# slot1 matches 13 run scoreboard players operation maxspeed slot1 = london herospeed
execute if score slot1 hp matches 1.. run execute if score character# slot1 matches 14 run scoreboard players operation maxspeed slot1 = hydra herospeed
execute if score slot1 hp matches 1.. run execute if score character# slot1 matches 15 run scoreboard players operation maxspeed slot1 = golem herospeed
execute if score slot1 hp matches 1.. run execute if score character# slot1 matches 16 run scoreboard players operation maxspeed slot1 = blackbeard herospeed
execute if score slot1 hp matches 1.. run execute if score character# slot1 matches 17 run scoreboard players operation maxspeed slot1 = grimoire herospeed
execute if score slot1 hp matches 1.. run execute if score character# slot1 matches 18 run scoreboard players operation maxspeed slot1 = grangor herospeed
execute if score slot1 hp matches 1.. run execute if score character# slot1 matches 19 run scoreboard players operation maxspeed slot1 = astro herospeed
execute if score slot1 hp matches 1.. run execute if score character# slot1 matches 20 run scoreboard players operation maxspeed slot1 = doc herospeed
execute if score slot1 hp matches 1.. run execute if score character# slot1 matches 21 run scoreboard players operation maxspeed slot1 = lillith herospeed
execute if score slot1 hp matches 1.. run execute if score character# slot1 matches 22 run scoreboard players operation maxspeed slot1 = gabriel herospeed
execute if score slot1 hp matches 1.. run execute if score character# slot1 matches 23 run scoreboard players operation maxspeed slot1 = gatsby herospeed
execute if score slot1 hp matches 1.. run execute if score character# slot1 matches 24 run scoreboard players operation maxspeed slot1 = garabaldi herospeed
execute if score slot1 hp matches 1.. run execute if score character# slot1 matches 25 run scoreboard players operation maxspeed slot1 = boomer herospeed
execute if score slot1 hp matches 1.. run execute if score character# slot1 matches 26 run scoreboard players operation maxspeed slot1 = osiris herospeed
execute if score slot1 hp matches 1.. run execute if score character# slot1 matches 27 run scoreboard players operation maxspeed slot1 = juniper herospeed
execute if score slot1 hp matches 1.. run execute if score character# slot1 matches 28 run scoreboard players operation maxspeed slot1 = eidolon herospeed
execute if score slot1 hp matches 1.. run execute if score character# slot1 matches 29 run scoreboard players operation maxspeed slot1 = ripper herospeed
execute if score slot1 hp matches 1.. run execute if score character# slot1 matches 30 run scoreboard players operation maxspeed slot1 = domino herospeed
execute if score slot1 hp matches 1.. run execute if score character# slot1 matches 31 run scoreboard players operation maxspeed slot1 = jones herospeed
execute if score slot1 hp matches 1.. run execute if score character# slot1 matches 32 run scoreboard players operation maxspeed slot1 = scythe herospeed
execute if score slot1 hp matches 1.. run execute if score character# slot1 matches 33 run scoreboard players operation maxspeed slot1 = sherman herospeed
execute if score slot1 hp matches 1.. run execute if score character# slot1 matches -1 run scoreboard players operation maxspeed slot1 = skeleton herospeed
execute if score slot1 hp matches 1.. run execute if score character# slot1 matches -2 run scoreboard players operation maxspeed slot1 = demon herospeed
execute if score slot1 hp matches 1.. run execute if score character# slot1 matches -3 run scoreboard players operation maxspeed slot1 = healingTotemSpeed spellStats
execute if score slot1 hp matches 1.. run execute if score character# slot1 matches -4 run scoreboard players operation maxspeed slot1 = golemite herospeed
execute if score slot1 hp matches 1.. run execute if score character# slot1 matches -5 run scoreboard players operation maxspeed slot1 = skeletonplus herospeed
execute if score slot1 hp matches 1.. run execute if score character# slot1 matches 34 run scoreboard players operation maxspeed slot1 = frank herospeed
execute if score slot1 hp matches 1.. run execute if score character# slot1 matches 35 run scoreboard players operation maxspeed slot1 = stein herospeed
execute if score slot1 hp matches 1.. run execute if score character# slot1 matches 36 run scoreboard players operation maxspeed slot1 = barley herospeed
execute if score slot1 hp matches 1.. run execute if score character# slot1 matches 37 run scoreboard players operation maxspeed slot1 = boogaloo herospeed
execute if score slot1 hp matches 1.. run execute if score character# slot1 matches 38 run scoreboard players operation maxspeed slot1 = igor herospeed
execute if score slot1 hp matches 1.. run execute if score character# slot1 matches 39 run scoreboard players operation maxspeed slot1 = blinky herospeed
execute if score slot1 hp matches 1.. run execute if score character# slot1 matches 40 run scoreboard players operation maxspeed slot1 = zeebo herospeed
execute if score slot1 hp matches 1.. run execute if score character# slot1 matches 41 run scoreboard players operation maxspeed slot1 = fenrir herospeed
execute if score slot1 hp matches 1.. run execute if score character# slot1 matches 42 run scoreboard players operation maxspeed slot1 = anubis herospeed
execute if score slot1 hp matches 1.. run execute if score character# slot1 matches 43 run scoreboard players operation maxspeed slot1 = grendel herospeed


#Slot 2 Speed Resets
execute if score slot2 hp matches 1.. run execute if score character# slot2 matches 1 run scoreboard players operation maxspeed slot2 = bones herospeed
execute if score slot2 hp matches 1.. run execute if score character# slot2 matches 2 run scoreboard players operation maxspeed slot2 = arthur herospeed
execute if score slot2 hp matches 1.. run execute if score character# slot2 matches 3 run scoreboard players operation maxspeed slot2 = deuce herospeed
execute if score slot2 hp matches 1.. run execute if score character# slot2 matches 4 run scoreboard players operation maxspeed slot2 = subject herospeed
execute if score slot2 hp matches 1.. run execute if score character# slot2 matches 5 run scoreboard players operation maxspeed slot2 = robo herospeed
execute if score slot2 hp matches 1.. run execute if score character# slot2 matches 6 run scoreboard players operation maxspeed slot2 = thorn herospeed
execute if score slot2 hp matches 1.. run execute if score character# slot2 matches 7 run scoreboard players operation maxspeed slot2 = kong herospeed
execute if score slot2 hp matches 1.. run execute if score character# slot2 matches 8 run scoreboard players operation maxspeed slot2 = kirin herospeed
execute if score slot2 hp matches 1.. run execute if score character# slot2 matches 9 run scoreboard players operation maxspeed slot2 = robyn herospeed
execute if score slot2 hp matches 1.. run execute if score character# slot2 matches 10 run scoreboard players operation maxspeed slot2 = dilloLeader herospeed
execute if score slot2 hp matches 1.. run execute if score character# slot2 matches 11 run scoreboard players operation maxspeed slot2 = flint herospeed
execute if score slot2 hp matches 1.. run execute if score character# slot2 matches 12 run scoreboard players operation maxspeed slot2 = ace herospeed
execute if score slot2 hp matches 1.. run execute if score character# slot2 matches 13 run scoreboard players operation maxspeed slot2 = london herospeed
execute if score slot2 hp matches 1.. run execute if score character# slot2 matches 14 run scoreboard players operation maxspeed slot2 = hydra herospeed
execute if score slot2 hp matches 1.. run execute if score character# slot2 matches 15 run scoreboard players operation maxspeed slot2 = golem herospeed
execute if score slot2 hp matches 1.. run execute if score character# slot2 matches 16 run scoreboard players operation maxspeed slot2 = blackbeard herospeed
execute if score slot2 hp matches 1.. run execute if score character# slot2 matches 17 run scoreboard players operation maxspeed slot2 = grimoire herospeed
execute if score slot2 hp matches 1.. run execute if score character# slot2 matches 18 run scoreboard players operation maxspeed slot2 = grangor herospeed
execute if score slot2 hp matches 1.. run execute if score character# slot2 matches 19 run scoreboard players operation maxspeed slot2 = astro herospeed
execute if score slot2 hp matches 1.. run execute if score character# slot2 matches 20 run scoreboard players operation maxspeed slot2 = doc herospeed
execute if score slot2 hp matches 1.. run execute if score character# slot2 matches 21 run scoreboard players operation maxspeed slot2 = lillith herospeed
execute if score slot2 hp matches 1.. run execute if score character# slot2 matches 22 run scoreboard players operation maxspeed slot2 = gabriel herospeed
execute if score slot2 hp matches 1.. run execute if score character# slot2 matches 23 run scoreboard players operation maxspeed slot2 = gatsby herospeed
execute if score slot2 hp matches 1.. run execute if score character# slot2 matches 24 run scoreboard players operation maxspeed slot2 = garabaldi herospeed
execute if score slot2 hp matches 1.. run execute if score character# slot2 matches 25 run scoreboard players operation maxspeed slot2 = boomer herospeed
execute if score slot2 hp matches 1.. run execute if score character# slot2 matches 26 run scoreboard players operation maxspeed slot2 = osiris herospeed
execute if score slot2 hp matches 1.. run execute if score character# slot2 matches 27 run scoreboard players operation maxspeed slot2 = juniper herospeed
execute if score slot2 hp matches 1.. run execute if score character# slot2 matches 28 run scoreboard players operation maxspeed slot2 = eidolon herospeed
execute if score slot2 hp matches 1.. run execute if score character# slot2 matches 29 run scoreboard players operation maxspeed slot2 = ripper herospeed
execute if score slot2 hp matches 1.. run execute if score character# slot2 matches 30 run scoreboard players operation maxspeed slot2 = domino herospeed
execute if score slot2 hp matches 1.. run execute if score character# slot2 matches 31 run scoreboard players operation maxspeed slot2 = jones herospeed
execute if score slot2 hp matches 1.. run execute if score character# slot2 matches 32 run scoreboard players operation maxspeed slot2 = scythe herospeed
execute if score slot2 hp matches 1.. run execute if score character# slot2 matches 33 run scoreboard players operation maxspeed slot2 = sherman herospeed
execute if score slot2 hp matches 1.. run execute if score character# slot2 matches -1 run scoreboard players operation maxspeed slot2 = skeleton herospeed
execute if score slot2 hp matches 1.. run execute if score character# slot2 matches -2 run scoreboard players operation maxspeed slot2 = demon herospeed
execute if score slot2 hp matches 1.. run execute if score character# slot2 matches -3 run scoreboard players operation maxspeed slot2 = healingTotemSpeed spellStats
execute if score slot2 hp matches 1.. run execute if score character# slot2 matches -4 run scoreboard players operation maxspeed slot2 = golemite herospeed
execute if score slot2 hp matches 1.. run execute if score character# slot2 matches -5 run scoreboard players operation maxspeed slot2 = skeletonplus herospeed
execute if score slot2 hp matches 1.. run execute if score character# slot2 matches 34 run scoreboard players operation maxspeed slot2 = frank herospeed
execute if score slot2 hp matches 1.. run execute if score character# slot2 matches 35 run scoreboard players operation maxspeed slot2 = stein herospeed
execute if score slot2 hp matches 1.. run execute if score character# slot2 matches 36 run scoreboard players operation maxspeed slot2 = barley herospeed
execute if score slot2 hp matches 1.. run execute if score character# slot2 matches 37 run scoreboard players operation maxspeed slot2 = boogaloo herospeed
execute if score slot2 hp matches 1.. run execute if score character# slot2 matches 38 run scoreboard players operation maxspeed slot2 = igor herospeed
execute if score slot2 hp matches 1.. run execute if score character# slot2 matches 39 run scoreboard players operation maxspeed slot2 = blinky herospeed
execute if score slot2 hp matches 1.. run execute if score character# slot2 matches 40 run scoreboard players operation maxspeed slot2 = zeebo herospeed
execute if score slot2 hp matches 1.. run execute if score character# slot2 matches 41 run scoreboard players operation maxspeed slot2 = fenrir herospeed
execute if score slot2 hp matches 1.. run execute if score character# slot2 matches 42 run scoreboard players operation maxspeed slot2 = anubis herospeed
execute if score slot2 hp matches 1.. run execute if score character# slot2 matches 43 run scoreboard players operation maxspeed slot2 = grendel herospeed



#Slot 3 Speed Resets
execute if score slot3 hp matches 1.. run execute if score character# slot3 matches 1 run scoreboard players operation maxspeed slot3 = bones herospeed
execute if score slot3 hp matches 1.. run execute if score character# slot3 matches 2 run scoreboard players operation maxspeed slot3 = arthur herospeed
execute if score slot3 hp matches 1.. run execute if score character# slot3 matches 3 run scoreboard players operation maxspeed slot3 = deuce herospeed
execute if score slot3 hp matches 1.. run execute if score character# slot3 matches 4 run scoreboard players operation maxspeed slot3 = subject herospeed
execute if score slot3 hp matches 1.. run execute if score character# slot3 matches 5 run scoreboard players operation maxspeed slot3 = robo herospeed
execute if score slot3 hp matches 1.. run execute if score character# slot3 matches 6 run scoreboard players operation maxspeed slot3 = thorn herospeed
execute if score slot3 hp matches 1.. run execute if score character# slot3 matches 7 run scoreboard players operation maxspeed slot3 = kong herospeed
execute if score slot3 hp matches 1.. run execute if score character# slot3 matches 8 run scoreboard players operation maxspeed slot3 = kirin herospeed
execute if score slot3 hp matches 1.. run execute if score character# slot3 matches 9 run scoreboard players operation maxspeed slot3 = robyn herospeed
execute if score slot3 hp matches 1.. run execute if score character# slot3 matches 10 run scoreboard players operation maxspeed slot3 = dillo herospeed
execute if score slot3 hp matches 1.. run execute if score character# slot3 matches 11 run scoreboard players operation maxspeed slot3 = flint herospeed
execute if score slot3 hp matches 1.. run execute if score character# slot3 matches 12 run scoreboard players operation maxspeed slot3 = ace herospeed
execute if score slot3 hp matches 1.. run execute if score character# slot3 matches 13 run scoreboard players operation maxspeed slot3 = london herospeed
execute if score slot3 hp matches 1.. run execute if score character# slot3 matches 14 run scoreboard players operation maxspeed slot3 = hydra herospeed
execute if score slot3 hp matches 1.. run execute if score character# slot3 matches 15 run scoreboard players operation maxspeed slot3 = golem herospeed
execute if score slot3 hp matches 1.. run execute if score character# slot3 matches 16 run scoreboard players operation maxspeed slot3 = blackbeard herospeed
execute if score slot3 hp matches 1.. run execute if score character# slot3 matches 17 run scoreboard players operation maxspeed slot3 = grimoire herospeed
execute if score slot3 hp matches 1.. run execute if score character# slot3 matches 18 run scoreboard players operation maxspeed slot3 = grangor herospeed
execute if score slot3 hp matches 1.. run execute if score character# slot3 matches 19 run scoreboard players operation maxspeed slot3 = astro herospeed
execute if score slot3 hp matches 1.. run execute if score character# slot3 matches 20 run scoreboard players operation maxspeed slot3 = doc herospeed
execute if score slot3 hp matches 1.. run execute if score character# slot3 matches 21 run scoreboard players operation maxspeed slot3 = lillith herospeed
execute if score slot3 hp matches 1.. run execute if score character# slot3 matches 22 run scoreboard players operation maxspeed slot3 = gabriel herospeed
execute if score slot3 hp matches 1.. run execute if score character# slot3 matches 23 run scoreboard players operation maxspeed slot3 = gatsby herospeed
execute if score slot3 hp matches 1.. run execute if score character# slot3 matches 24 run scoreboard players operation maxspeed slot3 = garabaldi herospeed
execute if score slot3 hp matches 1.. run execute if score character# slot3 matches 25 run scoreboard players operation maxspeed slot3 = boomer herospeed
execute if score slot3 hp matches 1.. run execute if score character# slot3 matches 26 run scoreboard players operation maxspeed slot3 = osiris herospeed
execute if score slot3 hp matches 1.. run execute if score character# slot3 matches 27 run scoreboard players operation maxspeed slot3 = juniper herospeed
execute if score slot3 hp matches 1.. run execute if score character# slot3 matches 28 run scoreboard players operation maxspeed slot3 = eidolon herospeed
execute if score slot3 hp matches 1.. run execute if score character# slot3 matches 29 run scoreboard players operation maxspeed slot3 = ripper herospeed
execute if score slot3 hp matches 1.. run execute if score character# slot3 matches 30 run scoreboard players operation maxspeed slot3 = domino herospeed
execute if score slot3 hp matches 1.. run execute if score character# slot3 matches 31 run scoreboard players operation maxspeed slot3 = jones herospeed
execute if score slot3 hp matches 1.. run execute if score character# slot3 matches 32 run scoreboard players operation maxspeed slot3 = scythe herospeed
execute if score slot3 hp matches 1.. run execute if score character# slot3 matches 33 run scoreboard players operation maxspeed slot3 = sherman herospeed
execute if score slot3 hp matches 1.. run execute if score character# slot3 matches -1 run scoreboard players operation maxspeed slot3 = skeleton herospeed
execute if score slot3 hp matches 1.. run execute if score character# slot3 matches -2 run scoreboard players operation maxspeed slot3 = demon herospeed
execute if score slot3 hp matches 1.. run execute if score character# slot3 matches -3 run scoreboard players operation maxspeed slot3 = healingTotemSpeed spellStats
execute if score slot3 hp matches 1.. run execute if score character# slot3 matches -4 run scoreboard players operation maxspeed slot3 = golemite herospeed
execute if score slot3 hp matches 1.. run execute if score character# slot3 matches -5 run scoreboard players operation maxspeed slot3 = skeletonplus herospeed
execute if score slot3 hp matches 1.. run execute if score character# slot3 matches 34 run scoreboard players operation maxspeed slot3 = frank herospeed
execute if score slot3 hp matches 1.. run execute if score character# slot3 matches 35 run scoreboard players operation maxspeed slot3 = stein herospeed
execute if score slot3 hp matches 1.. run execute if score character# slot3 matches 36 run scoreboard players operation maxspeed slot3 = barley herospeed
execute if score slot3 hp matches 1.. run execute if score character# slot3 matches 37 run scoreboard players operation maxspeed slot3 = boogaloo herospeed
execute if score slot3 hp matches 1.. run execute if score character# slot3 matches 38 run scoreboard players operation maxspeed slot3 = igor herospeed
execute if score slot3 hp matches 1.. run execute if score character# slot3 matches 39 run scoreboard players operation maxspeed slot3 = blinky herospeed
execute if score slot3 hp matches 1.. run execute if score character# slot3 matches 40 run scoreboard players operation maxspeed slot3 = zeebo herospeed
execute if score slot3 hp matches 1.. run execute if score character# slot3 matches 41 run scoreboard players operation maxspeed slot3 = fenrir herospeed
execute if score slot3 hp matches 1.. run execute if score character# slot3 matches 42 run scoreboard players operation maxspeed slot3 = anubis herospeed
execute if score slot3 hp matches 1.. run execute if score character# slot3 matches 43 run scoreboard players operation maxspeed slot3 = grendel herospeed




#Slot 5 Speed Resets
execute if score slot5 hp matches 1.. run execute if score character# slot5 matches 1 run scoreboard players operation maxspeed slot5 = bones herospeed
execute if score slot5 hp matches 1.. run execute if score character# slot5 matches 2 run scoreboard players operation maxspeed slot5 = arthur herospeed
execute if score slot5 hp matches 1.. run execute if score character# slot5 matches 3 run scoreboard players operation maxspeed slot5 = deuce herospeed
execute if score slot5 hp matches 1.. run execute if score character# slot5 matches 4 run scoreboard players operation maxspeed slot5 = subject herospeed
execute if score slot5 hp matches 1.. run execute if score character# slot5 matches 5 run scoreboard players operation maxspeed slot5 = robo herospeed
execute if score slot5 hp matches 1.. run execute if score character# slot5 matches 6 run scoreboard players operation maxspeed slot5 = thorn herospeed
execute if score slot5 hp matches 1.. run execute if score character# slot5 matches 7 run scoreboard players operation maxspeed slot5 = kong herospeed
execute if score slot5 hp matches 1.. run execute if score character# slot5 matches 8 run scoreboard players operation maxspeed slot5 = kirin herospeed
execute if score slot5 hp matches 1.. run execute if score character# slot5 matches 9 run scoreboard players operation maxspeed slot5 = robyn herospeed
execute if score slot5 hp matches 1.. run execute if score character# slot5 matches 10 run scoreboard players operation maxspeed slot5 = dillo herospeed
execute if score slot5 hp matches 1.. run execute if score character# slot5 matches 11 run scoreboard players operation maxspeed slot5 = flint herospeed
execute if score slot5 hp matches 1.. run execute if score character# slot5 matches 12 run scoreboard players operation maxspeed slot5 = ace herospeed
execute if score slot5 hp matches 1.. run execute if score character# slot5 matches 13 run scoreboard players operation maxspeed slot5 = london herospeed
execute if score slot5 hp matches 1.. run execute if score character# slot5 matches 14 run scoreboard players operation maxspeed slot5 = hydra herospeed
execute if score slot5 hp matches 1.. run execute if score character# slot5 matches 15 run scoreboard players operation maxspeed slot5 = golem herospeed
execute if score slot5 hp matches 1.. run execute if score character# slot5 matches 16 run scoreboard players operation maxspeed slot5 = blackbeard herospeed
execute if score slot5 hp matches 1.. run execute if score character# slot5 matches 17 run scoreboard players operation maxspeed slot5 = grimoire herospeed
execute if score slot5 hp matches 1.. run execute if score character# slot5 matches 18 run scoreboard players operation maxspeed slot5 = grangor herospeed
execute if score slot5 hp matches 1.. run execute if score character# slot5 matches 19 run scoreboard players operation maxspeed slot5 = astro herospeed
execute if score slot5 hp matches 1.. run execute if score character# slot5 matches 20 run scoreboard players operation maxspeed slot5 = doc herospeed
execute if score slot5 hp matches 1.. run execute if score character# slot5 matches 21 run scoreboard players operation maxspeed slot5 = lillith herospeed
execute if score slot5 hp matches 1.. run execute if score character# slot5 matches 22 run scoreboard players operation maxspeed slot5 = gabriel herospeed
execute if score slot5 hp matches 1.. run execute if score character# slot5 matches 23 run scoreboard players operation maxspeed slot5 = gatsby herospeed
execute if score slot5 hp matches 1.. run execute if score character# slot5 matches 24 run scoreboard players operation maxspeed slot5 = garabaldi herospeed
execute if score slot5 hp matches 1.. run execute if score character# slot5 matches 25 run scoreboard players operation maxspeed slot5 = boomer herospeed
execute if score slot5 hp matches 1.. run execute if score character# slot5 matches 26 run scoreboard players operation maxspeed slot5 = osiris herospeed
execute if score slot5 hp matches 1.. run execute if score character# slot5 matches 27 run scoreboard players operation maxspeed slot5 = juniper herospeed
execute if score slot5 hp matches 1.. run execute if score character# slot5 matches 28 run scoreboard players operation maxspeed slot5 = eidolon herospeed
execute if score slot5 hp matches 1.. run execute if score character# slot5 matches 29 run scoreboard players operation maxspeed slot5 = ripper herospeed
execute if score slot5 hp matches 1.. run execute if score character# slot5 matches 30 run scoreboard players operation maxspeed slot5 = domino herospeed
execute if score slot5 hp matches 1.. run execute if score character# slot5 matches 31 run scoreboard players operation maxspeed slot5 = jones herospeed
execute if score slot5 hp matches 1.. run execute if score character# slot5 matches 32 run scoreboard players operation maxspeed slot5 = scythe herospeed
execute if score slot5 hp matches 1.. run execute if score character# slot5 matches 33 run scoreboard players operation maxspeed slot5 = sherman herospeed
execute if score slot5 hp matches 1.. run execute if score character# slot5 matches -1 run scoreboard players operation maxspeed slot5 = skeleton herospeed
execute if score slot5 hp matches 1.. run execute if score character# slot5 matches -2 run scoreboard players operation maxspeed slot5 = demon herospeed
execute if score slot5 hp matches 1.. run execute if score character# slot5 matches -3 run scoreboard players operation maxspeed slot5 = healingTotemSpeed spellStats
execute if score slot5 hp matches 1.. run execute if score character# slot5 matches -4 run scoreboard players operation maxspeed slot5 = golemite herospeed
execute if score slot5 hp matches 1.. run execute if score character# slot5 matches -5 run scoreboard players operation maxspeed slot5 = skeletonplus herospeed
execute if score slot5 hp matches 1.. run execute if score character# slot5 matches 34 run scoreboard players operation maxspeed slot5 = frank herospeed
execute if score slot5 hp matches 1.. run execute if score character# slot5 matches 35 run scoreboard players operation maxspeed slot5 = stein herospeed
execute if score slot5 hp matches 1.. run execute if score character# slot5 matches 36 run scoreboard players operation maxspeed slot5 = barley herospeed
execute if score slot5 hp matches 1.. run execute if score character# slot5 matches 37 run scoreboard players operation maxspeed slot5 = boogaloo herospeed
execute if score slot5 hp matches 1.. run execute if score character# slot5 matches 38 run scoreboard players operation maxspeed slot5 = igor herospeed
execute if score slot5 hp matches 1.. run execute if score character# slot5 matches 39 run scoreboard players operation maxspeed slot5 = blinky herospeed
execute if score slot5 hp matches 1.. run execute if score character# slot5 matches 40 run scoreboard players operation maxspeed slot5 = zeebo herospeed
execute if score slot5 hp matches 1.. run execute if score character# slot5 matches 41 run scoreboard players operation maxspeed slot5 = fenrir herospeed
execute if score slot5 hp matches 1.. run execute if score character# slot5 matches 42 run scoreboard players operation maxspeed slot5 = anubis herospeed
execute if score slot5 hp matches 1.. run execute if score character# slot5 matches 43 run scoreboard players operation maxspeed slot5 = grendel herospeed




#Slot 6 Speed Resets
execute if score slot6 hp matches 1.. run execute if score character# slot6 matches 1 run scoreboard players operation maxspeed slot6 = bones herospeed
execute if score slot6 hp matches 1.. run execute if score character# slot6 matches 2 run scoreboard players operation maxspeed slot6 = arthur herospeed
execute if score slot6 hp matches 1.. run execute if score character# slot6 matches 3 run scoreboard players operation maxspeed slot6 = deuce herospeed
execute if score slot6 hp matches 1.. run execute if score character# slot6 matches 4 run scoreboard players operation maxspeed slot6 = subject herospeed
execute if score slot6 hp matches 1.. run execute if score character# slot6 matches 5 run scoreboard players operation maxspeed slot6 = robo herospeed
execute if score slot6 hp matches 1.. run execute if score character# slot6 matches 6 run scoreboard players operation maxspeed slot6 = thorn herospeed
execute if score slot6 hp matches 1.. run execute if score character# slot6 matches 7 run scoreboard players operation maxspeed slot6 = kong herospeed
execute if score slot6 hp matches 1.. run execute if score character# slot6 matches 8 run scoreboard players operation maxspeed slot6 = kirin herospeed
execute if score slot6 hp matches 1.. run execute if score character# slot6 matches 9 run scoreboard players operation maxspeed slot6 = robyn herospeed
execute if score slot6 hp matches 1.. run execute if score character# slot6 matches 10 run scoreboard players operation maxspeed slot6 = dilloLeader herospeed
execute if score slot6 hp matches 1.. run execute if score character# slot6 matches 11 run scoreboard players operation maxspeed slot6 = flint herospeed
execute if score slot6 hp matches 1.. run execute if score character# slot6 matches 12 run scoreboard players operation maxspeed slot6 = ace herospeed
execute if score slot6 hp matches 1.. run execute if score character# slot6 matches 13 run scoreboard players operation maxspeed slot6 = london herospeed
execute if score slot6 hp matches 1.. run execute if score character# slot6 matches 14 run scoreboard players operation maxspeed slot6 = hydra herospeed
execute if score slot6 hp matches 1.. run execute if score character# slot6 matches 15 run scoreboard players operation maxspeed slot6 = golem herospeed
execute if score slot6 hp matches 1.. run execute if score character# slot6 matches 16 run scoreboard players operation maxspeed slot6 = blackbeard herospeed
execute if score slot6 hp matches 1.. run execute if score character# slot6 matches 17 run scoreboard players operation maxspeed slot6 = grimoire herospeed
execute if score slot6 hp matches 1.. run execute if score character# slot6 matches 18 run scoreboard players operation maxspeed slot6 = grangor herospeed
execute if score slot6 hp matches 1.. run execute if score character# slot6 matches 19 run scoreboard players operation maxspeed slot6 = astro herospeed
execute if score slot6 hp matches 1.. run execute if score character# slot6 matches 20 run scoreboard players operation maxspeed slot6 = doc herospeed
execute if score slot6 hp matches 1.. run execute if score character# slot6 matches 21 run scoreboard players operation maxspeed slot6 = lillith herospeed
execute if score slot6 hp matches 1.. run execute if score character# slot6 matches 22 run scoreboard players operation maxspeed slot6 = gabriel herospeed
execute if score slot6 hp matches 1.. run execute if score character# slot6 matches 23 run scoreboard players operation maxspeed slot6 = gatsby herospeed
execute if score slot6 hp matches 1.. run execute if score character# slot6 matches 24 run scoreboard players operation maxspeed slot6 = garabaldi herospeed
execute if score slot6 hp matches 1.. run execute if score character# slot6 matches 25 run scoreboard players operation maxspeed slot6 = boomer herospeed
execute if score slot6 hp matches 1.. run execute if score character# slot6 matches 26 run scoreboard players operation maxspeed slot6 = osiris herospeed
execute if score slot6 hp matches 1.. run execute if score character# slot6 matches 27 run scoreboard players operation maxspeed slot6 = juniper herospeed
execute if score slot6 hp matches 1.. run execute if score character# slot6 matches 28 run scoreboard players operation maxspeed slot6 = eidolon herospeed
execute if score slot6 hp matches 1.. run execute if score character# slot6 matches 29 run scoreboard players operation maxspeed slot6 = ripper herospeed
execute if score slot6 hp matches 1.. run execute if score character# slot6 matches 30 run scoreboard players operation maxspeed slot6 = domino herospeed
execute if score slot6 hp matches 1.. run execute if score character# slot6 matches 31 run scoreboard players operation maxspeed slot6 = jones herospeed
execute if score slot6 hp matches 1.. run execute if score character# slot6 matches 32 run scoreboard players operation maxspeed slot6 = scythe herospeed
execute if score slot6 hp matches 1.. run execute if score character# slot6 matches 33 run scoreboard players operation maxspeed slot6 = sherman herospeed
execute if score slot6 hp matches 1.. run execute if score character# slot6 matches -1 run scoreboard players operation maxspeed slot6 = skeleton herospeed
execute if score slot6 hp matches 1.. run execute if score character# slot6 matches -2 run scoreboard players operation maxspeed slot6 = demon herospeed
execute if score slot6 hp matches 1.. run execute if score character# slot6 matches -3 run scoreboard players operation maxspeed slot6 = healingTotemSpeed spellStats
execute if score slot6 hp matches 1.. run execute if score character# slot6 matches -4 run scoreboard players operation maxspeed slot6 = golemite herospeed
execute if score slot6 hp matches 1.. run execute if score character# slot6 matches -5 run scoreboard players operation maxspeed slot6 = skeletonplus herospeed
execute if score slot6 hp matches 1.. run execute if score character# slot6 matches 34 run scoreboard players operation maxspeed slot6 = frank herospeed
execute if score slot6 hp matches 1.. run execute if score character# slot6 matches 35 run scoreboard players operation maxspeed slot6 = stein herospeed
execute if score slot6 hp matches 1.. run execute if score character# slot6 matches 36 run scoreboard players operation maxspeed slot6 = barley herospeed
execute if score slot6 hp matches 1.. run execute if score character# slot6 matches 37 run scoreboard players operation maxspeed slot6 = boogaloo herospeed
execute if score slot6 hp matches 1.. run execute if score character# slot6 matches 38 run scoreboard players operation maxspeed slot6 = igor herospeed
execute if score slot6 hp matches 1.. run execute if score character# slot6 matches 39 run scoreboard players operation maxspeed slot6 = blinky herospeed
execute if score slot6 hp matches 1.. run execute if score character# slot6 matches 40 run scoreboard players operation maxspeed slot6 = zeebo herospeed
execute if score slot6 hp matches 1.. run execute if score character# slot6 matches 41 run scoreboard players operation maxspeed slot6 = fenrir herospeed
execute if score slot6 hp matches 1.. run execute if score character# slot6 matches 42 run scoreboard players operation maxspeed slot6 = anubis herospeed
execute if score slot6 hp matches 1.. run execute if score character# slot6 matches 43 run scoreboard players operation maxspeed slot6 = grendel herospeed


#Slot 7 Speed Resets
execute if score slot7 hp matches 1.. run execute if score character# slot7 matches 1 run scoreboard players operation maxspeed slot7 = bones herospeed
execute if score slot7 hp matches 1.. run execute if score character# slot7 matches 2 run scoreboard players operation maxspeed slot7 = arthur herospeed
execute if score slot7 hp matches 1.. run execute if score character# slot7 matches 3 run scoreboard players operation maxspeed slot7 = deuce herospeed
execute if score slot7 hp matches 1.. run execute if score character# slot7 matches 4 run scoreboard players operation maxspeed slot7 = subject herospeed
execute if score slot7 hp matches 1.. run execute if score character# slot7 matches 5 run scoreboard players operation maxspeed slot7 = robo herospeed
execute if score slot7 hp matches 1.. run execute if score character# slot7 matches 6 run scoreboard players operation maxspeed slot7 = thorn herospeed
execute if score slot7 hp matches 1.. run execute if score character# slot7 matches 7 run scoreboard players operation maxspeed slot7 = kong herospeed
execute if score slot7 hp matches 1.. run execute if score character# slot7 matches 8 run scoreboard players operation maxspeed slot7 = kirin herospeed
execute if score slot7 hp matches 1.. run execute if score character# slot7 matches 9 run scoreboard players operation maxspeed slot7 = robyn herospeed
execute if score slot7 hp matches 1.. run execute if score character# slot7 matches 10 run scoreboard players operation maxspeed slot7 = dillo herospeed
execute if score slot7 hp matches 1.. run execute if score character# slot7 matches 11 run scoreboard players operation maxspeed slot7 = flint herospeed
execute if score slot7 hp matches 1.. run execute if score character# slot7 matches 12 run scoreboard players operation maxspeed slot7 = ace herospeed
execute if score slot7 hp matches 1.. run execute if score character# slot7 matches 13 run scoreboard players operation maxspeed slot7 = london herospeed
execute if score slot7 hp matches 1.. run execute if score character# slot7 matches 14 run scoreboard players operation maxspeed slot7 = hydra herospeed
execute if score slot7 hp matches 1.. run execute if score character# slot7 matches 15 run scoreboard players operation maxspeed slot7 = golem herospeed
execute if score slot7 hp matches 1.. run execute if score character# slot7 matches 16 run scoreboard players operation maxspeed slot7 = blackbeard herospeed
execute if score slot7 hp matches 1.. run execute if score character# slot7 matches 17 run scoreboard players operation maxspeed slot7 = grimoire herospeed
execute if score slot7 hp matches 1.. run execute if score character# slot7 matches 18 run scoreboard players operation maxspeed slot7 = grangor herospeed
execute if score slot7 hp matches 1.. run execute if score character# slot7 matches 19 run scoreboard players operation maxspeed slot7 = astro herospeed
execute if score slot7 hp matches 1.. run execute if score character# slot7 matches 20 run scoreboard players operation maxspeed slot7 = doc herospeed
execute if score slot7 hp matches 1.. run execute if score character# slot7 matches 21 run scoreboard players operation maxspeed slot7 = lillith herospeed
execute if score slot7 hp matches 1.. run execute if score character# slot7 matches 22 run scoreboard players operation maxspeed slot7 = gabriel herospeed
execute if score slot7 hp matches 1.. run execute if score character# slot7 matches 23 run scoreboard players operation maxspeed slot7 = gatsby herospeed
execute if score slot7 hp matches 1.. run execute if score character# slot7 matches 24 run scoreboard players operation maxspeed slot7 = garabaldi herospeed
execute if score slot7 hp matches 1.. run execute if score character# slot7 matches 25 run scoreboard players operation maxspeed slot7 = boomer herospeed
execute if score slot7 hp matches 1.. run execute if score character# slot7 matches 26 run scoreboard players operation maxspeed slot7 = osiris herospeed
execute if score slot7 hp matches 1.. run execute if score character# slot7 matches 27 run scoreboard players operation maxspeed slot7 = juniper herospeed
execute if score slot7 hp matches 1.. run execute if score character# slot7 matches 28 run scoreboard players operation maxspeed slot7 = eidolon herospeed
execute if score slot7 hp matches 1.. run execute if score character# slot7 matches 29 run scoreboard players operation maxspeed slot7 = ripper herospeed
execute if score slot7 hp matches 1.. run execute if score character# slot7 matches 30 run scoreboard players operation maxspeed slot7 = domino herospeed
execute if score slot7 hp matches 1.. run execute if score character# slot7 matches 31 run scoreboard players operation maxspeed slot7 = jones herospeed
execute if score slot7 hp matches 1.. run execute if score character# slot7 matches 32 run scoreboard players operation maxspeed slot7 = scythe herospeed
execute if score slot7 hp matches 1.. run execute if score character# slot7 matches 33 run scoreboard players operation maxspeed slot7 = sherman herospeed
execute if score slot7 hp matches 1.. run execute if score character# slot7 matches -1 run scoreboard players operation maxspeed slot7 = skeleton herospeed
execute if score slot7 hp matches 1.. run execute if score character# slot7 matches -2 run scoreboard players operation maxspeed slot7 = demon herospeed
execute if score slot7 hp matches 1.. run execute if score character# slot7 matches -3 run scoreboard players operation maxspeed slot7 = healingTotemSpeed spellStats
execute if score slot7 hp matches 1.. run execute if score character# slot7 matches -4 run scoreboard players operation maxspeed slot7 = golemite herospeed
execute if score slot7 hp matches 1.. run execute if score character# slot7 matches -5 run scoreboard players operation maxspeed slot7 = skeletonplus herospeed
execute if score slot7 hp matches 1.. run execute if score character# slot7 matches 34 run scoreboard players operation maxspeed slot7 = frank herospeed
execute if score slot7 hp matches 1.. run execute if score character# slot7 matches 35 run scoreboard players operation maxspeed slot7 = stein herospeed
execute if score slot7 hp matches 1.. run execute if score character# slot7 matches 36 run scoreboard players operation maxspeed slot7 = barley herospeed
execute if score slot7 hp matches 1.. run execute if score character# slot7 matches 37 run scoreboard players operation maxspeed slot7 = boogaloo herospeed
execute if score slot7 hp matches 1.. run execute if score character# slot7 matches 38 run scoreboard players operation maxspeed slot7 = igor herospeed
execute if score slot7 hp matches 1.. run execute if score character# slot7 matches 39 run scoreboard players operation maxspeed slot7 = blinky herospeed
execute if score slot7 hp matches 1.. run execute if score character# slot7 matches 40 run scoreboard players operation maxspeed slot7 = zeebo herospeed
execute if score slot7 hp matches 1.. run execute if score character# slot7 matches 41 run scoreboard players operation maxspeed slot7 = fenrir herospeed
execute if score slot7 hp matches 1.. run execute if score character# slot7 matches 42 run scoreboard players operation maxspeed slot7 = anubis herospeed
execute if score slot7 hp matches 1.. run execute if score character# slot7 matches 43 run scoreboard players operation maxspeed slot7 = grendel herospeed




#Slot 4 Speed Resets
scoreboard players set maxspeed slot4 -1000000
execute if score slot4 hp matches 1.. run execute if score character# slot4 matches -1 run scoreboard players operation maxspeed slot4 = skeleton herospeed
execute if score slot4 hp matches 1.. run execute if score character# slot4 matches -2 run scoreboard players operation maxspeed slot4 = demon herospeed
execute if score slot4 hp matches 1.. run execute if score character# slot4 matches -3 run scoreboard players operation maxspeed slot4 = healingtotem herospeed
execute if score slot4 hp matches 1.. run execute if score character# slot4 matches -4 run scoreboard players operation maxspeed slot4 = golemite herospeed



#Slot 8 Speed Resets
scoreboard players set maxspeed slot8 -1000000
execute if score slot8 hp matches 1.. run execute if score character# slot8 matches -1 run scoreboard players operation maxspeed slot8 = skeleton herospeed
execute if score slot8 hp matches 1.. run execute if score character# slot8 matches -2 run scoreboard players operation maxspeed slot8 = demon herospeed
execute if score slot8 hp matches 1.. run execute if score character# slot8 matches -3 run scoreboard players operation maxspeed slot8 = healingtotem herospeed
execute if score slot8 hp matches 1.. run execute if score character# slot8 matches -4 run scoreboard players operation maxspeed slot8 = golemite herospeed

execute if score character# slot2 matches 31 run scoreboard players operation maxspeed slot2 += jonesLeader abilityStats
execute if score character# slot2 matches 31 run scoreboard players operation maxspeed slot3 += jonesLeader abilityStats
execute if score character# slot2 matches 31 run scoreboard players operation maxspeed slot4 += jonesLeader abilityStats
execute if score character# slot2 matches 31 run scoreboard players operation maxspeed slot1 += jonesLeader abilityStats
execute if score character# slot6 matches 31 run scoreboard players operation maxspeed slot5 += jonesLeader abilityStats
execute if score character# slot6 matches 31 run scoreboard players operation maxspeed slot6 += jonesLeader abilityStats
execute if score character# slot6 matches 31 run scoreboard players operation maxspeed slot7 += jonesLeader abilityStats
execute if score character# slot6 matches 31 run scoreboard players operation maxspeed slot8 += jonesLeader abilityStats

#Game Start Leader bonuses
execute if score character# slot2 matches 2 run scoreboard players operation buffDurationSlot1 atkmodifiers = arthurBuffDuration abilityStats
execute if score character# slot2 matches 2 run scoreboard players operation buffDurationSlot2 atkmodifiers = arthurBuffDuration abilityStats
execute if score character# slot2 matches 2 run scoreboard players operation buffDurationSlot3 atkmodifiers = arthurBuffDuration abilityStats
execute if score character# slot2 matches 2 run scoreboard players operation buffDurationSlot4 atkmodifiers = arthurBuffDuration abilityStats
execute if score character# slot2 matches 2 run scoreboard players operation attackBuffSlot1 atkmodifiers = arthurBuff abilityStats
execute if score character# slot2 matches 2 run scoreboard players operation attackBuffSlot2 atkmodifiers = arthurBuff abilityStats
execute if score character# slot2 matches 2 run scoreboard players operation attackBuffSlot3 atkmodifiers = arthurBuff abilityStats
execute if score character# slot2 matches 2 run scoreboard players operation attackBuffSlot4 atkmodifiers = arthurBuff abilityStats

execute if score character# slot6 matches 2 run scoreboard players operation buffDurationSlot5 atkmodifiers = arthurBuffDuration abilityStats
execute if score character# slot6 matches 2 run scoreboard players operation buffDurationSlot6 atkmodifiers = arthurBuffDuration abilityStats
execute if score character# slot6 matches 2 run scoreboard players operation buffDurationSlot7 atkmodifiers = arthurBuffDuration abilityStats
execute if score character# slot6 matches 2 run scoreboard players operation buffDurationSlot8 atkmodifiers = arthurBuffDuration abilityStats
execute if score character# slot6 matches 2 run scoreboard players operation attackBuffSlot5 atkmodifiers = arthurBuff abilityStats
execute if score character# slot6 matches 2 run scoreboard players operation attackBuffSlot6 atkmodifiers = arthurBuff abilityStats
execute if score character# slot6 matches 2 run scoreboard players operation attackBuffSlot7 atkmodifiers = arthurBuff abilityStats
execute if score character# slot6 matches 2 run scoreboard players operation attackBuffSlot8 atkmodifiers = arthurBuff abilityStats

execute if score character# slot2 matches 14 run scoreboard players operation atk slot2 += hydraLeader heroattack
execute if score character# slot6 matches 14 run scoreboard players operation atk slot6 += hydraLeader heroattack

execute if score character# slot2 matches 36 run scoreboard players operation atk slot2 += barleyLeader abilityStats
execute if score character# slot6 matches 36 run scoreboard players operation atk slot6 += barleyLeader abilityStats

execute if score character# slot2 matches 34 if score character# slot1 matches 35 run scoreboard players operation atk slot1 += steinLeader heroattack
execute if score character# slot2 matches 34 if score character# slot3 matches 35 run scoreboard players operation atk slot3 += steinLeader heroattack
execute if score character# slot6 matches 34 if score character# slot5 matches 35 run scoreboard players operation atk slot5 += steinLeader heroattack
execute if score character# slot6 matches 34 if score character# slot7 matches 35 run scoreboard players operation atk slot7 += steinLeader heroattack
execute if score character# slot2 matches 35 run scoreboard players operation atk slot2 += steinLeader heroattack
execute if score character# slot6 matches 35 run scoreboard players operation atk slot6 += steinLeader heroattack

execute if score character# slot2 matches 35 if score character# slot1 matches 34 run scoreboard players operation slot1 hp += frankLeader herohealth
execute if score character# slot2 matches 35 if score character# slot1 matches 34 run scoreboard players operation durationSlot1 taunt = frankLeaderTaunt abilityStats
execute if score character# slot2 matches 35 if score character# slot3 matches 34 run scoreboard players operation slot3 hp += frankLeader herohealth
execute if score character# slot2 matches 35 if score character# slot3 matches 34 run scoreboard players operation durationSlot3 taunt = frankLeaderTaunt abilityStats
execute if score character# slot6 matches 35 if score character# slot5 matches 34 run scoreboard players operation slot5 hp += frankLeader herohealth
execute if score character# slot6 matches 35 if score character# slot5 matches 34 run scoreboard players operation durationSlot5 taunt = frankLeaderTaunt abilityStats
execute if score character# slot6 matches 35 if score character# slot7 matches 34 run scoreboard players operation slot7 hp += frankLeader herohealth
execute if score character# slot6 matches 35 if score character# slot7 matches 34 run scoreboard players operation durationSlot7 taunt = frankLeaderTaunt abilityStats
execute if score character# slot2 matches 34 run scoreboard players operation slot2 hp += frankLeader herohealth
execute if score character# slot2 matches 34 run scoreboard players operation durationSlot2 taunt = frankLeaderTaunt abilityStats
execute if score character# slot6 matches 34 run scoreboard players operation slot6 hp += frankLeader herohealth
execute if score character# slot6 matches 34 run scoreboard players operation durationSlot6 taunt = frankLeaderTaunt abilityStats





execute if score character# slot1 matches 21 run scoreboard players operation slot1 hp -= lillithLeechDmg abilityStats
execute if score character# slot1 matches 21 run scoreboard players operation slot2 hp -= lillithLeechDmg abilityStats
execute if score character# slot1 matches 21 run scoreboard players operation slot3 hp -= lillithLeechDmg abilityStats

execute if score character# slot3 matches 21 run scoreboard players operation slot1 hp -= lillithLeechDmg abilityStats
execute if score character# slot3 matches 21 run scoreboard players operation slot2 hp -= lillithLeechDmg abilityStats
execute if score character# slot3 matches 21 run scoreboard players operation slot3 hp -= lillithLeechDmg abilityStats

execute if score character# slot5 matches 21 run scoreboard players operation slot5 hp -= lillithLeechDmg abilityStats
execute if score character# slot5 matches 21 run scoreboard players operation slot6 hp -= lillithLeechDmg abilityStats
execute if score character# slot5 matches 21 run scoreboard players operation slot7 hp -= lillithLeechDmg abilityStats

execute if score character# slot7 matches 21 run scoreboard players operation slot5 hp -= lillithLeechDmg abilityStats
execute if score character# slot7 matches 21 run scoreboard players operation slot6 hp -= lillithLeechDmg abilityStats
execute if score character# slot7 matches 21 run scoreboard players operation slot7 hp -= lillithLeechDmg abilityStats

execute if score character# slot2 matches 21 run scoreboard players operation slot1 hp -= lillithLeaderLeechDmg abilityStats
execute if score character# slot2 matches 21 run scoreboard players operation slot2 hp -= lillithLeaderLeechDmg abilityStats
execute if score character# slot2 matches 21 run scoreboard players operation slot3 hp -= lillithLeaderLeechDmg abilityStats

execute if score character# slot6 matches 21 run scoreboard players operation slot5 hp -= lillithLeaderLeechDmg abilityStats
execute if score character# slot6 matches 21 run scoreboard players operation slot6 hp -= lillithLeaderLeechDmg abilityStats
execute if score character# slot6 matches 21 run scoreboard players operation slot7 hp -= lillithLeaderLeechDmg abilityStats

execute if score character# slot1 matches 41 run scoreboard players operation fenrirhpsave saves = slot1 hp
execute if score character# slot2 matches 41 run scoreboard players operation fenrirhpsave saves = slot2 hp
execute if score character# slot3 matches 41 run scoreboard players operation fenrirhpsave saves = slot3 hp
execute if score character# slot5 matches 41 run scoreboard players operation fenrirhpsave2 saves = slot5 hp
execute if score character# slot6 matches 41 run scoreboard players operation fenrirhpsave2 saves = slot6 hp
execute if score character# slot7 matches 41 run scoreboard players operation fenrirhpsave2 saves = slot7 hp

execute if score character# slot2 matches 29 run scoreboard players operation atk slot2 += ripperLeader heroattack
execute if score character# slot2 matches 29 if score durationSlot2 shield < ripperLeaderDuration abilityStats run scoreboard players operation durationSlot2 shield = ripperLeaderDuration abilityStats
execute if score character# slot2 matches 29 run scoreboard players operation shield slot2 += ripperShield abilityStats

execute if score character# slot6 matches 29 run scoreboard players operation atk slot6 += ripperLeader heroattack
execute if score character# slot6 matches 29 if score durationSlot6 shield < ripperLeaderDuration abilityStats run scoreboard players operation durationSlot6 shield = ripperLeaderDuration abilityStats
execute if score character# slot6 matches 29 run scoreboard players operation shield slot6 += ripperShield abilityStats

execute if score character# slot2 matches 24 run scoreboard players set ward slot2 2
execute if score character# slot6 matches 24 run scoreboard players set ward slot6 2

execute if score character# slot2 matches 9 run execute if score ward slot6 matches 0 run scoreboard players operation durationSlot6 mark = robynDuration abilityStats
execute if score character# slot2 matches 9 run execute if score ward slot6 matches 0 run scoreboard players operation marks slot6 = robyn abilityStats
execute if score character# slot2 matches 9 run execute if score ward slot6 matches 1 run function ch:wardslot6

execute if score character# slot6 matches 9 run execute if score ward slot6 matches 0 run scoreboard players operation durationSlot2 mark = robynDuration abilityStats
execute if score character# slot6 matches 9 run execute if score ward slot6 matches 0 run scoreboard players operation marks slot2 = robyn abilityStats
execute if score character# slot6 matches 9 run execute if score ward slot6 matches 1 run function ch:wardslot2

execute if score character# slot2 matches 42 run scoreboard players operation anubisHP saves = anubisLeader abilityStats
execute if score character# slot2 matches 42 run scoreboard players operation anubisHP saves *= anubisUnusedP1 saves
execute if score character# slot2 matches 42 run scoreboard players operation slot2 hp += anubisHP saves

execute if score character# slot6 matches 42 run scoreboard players operation anubisHP saves = anubisLeader abilityStats
execute if score character# slot6 matches 42 run scoreboard players operation anubisHP saves *= anubisUnusedP2 saves
execute if score character# slot6 matches 42 run scoreboard players operation slot6 hp += anubisHP saves

scoreboard players set anubisUsedP1 saves 9
execute unless score character# slot1 matches 17 unless score character# slot2 matches 17 unless score character# slot3 matches 17 run scoreboard players remove anubisUsedP1 saves 1
execute unless score character# slot2 matches 17 run scoreboard players remove anubisUsedP1 saves 1
scoreboard players operation anubisUsedP1 saves -= anubisUnusedP1 saves

scoreboard players set anubisUsedP2 saves 9
execute unless score character# slot5 matches 17 unless score character# slot6 matches 17 unless score character# slot7 matches 17 run scoreboard players remove anubisUsedP2 saves 1
execute unless score character# slot6 matches 17 run scoreboard players remove anubisUsedP2 saves 1
scoreboard players operation anubisUsedP2 saves -= anubisUnusedP2 saves

scoreboard players operation maxhp slot1 = slot1 hp
scoreboard players operation maxhp slot2 = slot2 hp
scoreboard players operation maxhp slot3 = slot3 hp
scoreboard players operation maxhp slot5 = slot5 hp
scoreboard players operation maxhp slot6 = slot6 hp
scoreboard players operation maxhp slot7 = slot7 hp

execute if score slot4 hp matches 1.. run scoreboard players operation maxhp slot4 = slot4 hp
execute if score slot8 hp matches 1.. run scoreboard players operation maxhp slot8 = slot8 hp

scoreboard players operation speed slot1 = maxspeed slot1
scoreboard players operation speed slot2 = maxspeed slot2
scoreboard players operation speed slot3 = maxspeed slot3
scoreboard players operation speed slot4 = maxspeed slot4
scoreboard players operation speed slot5 = maxspeed slot5
scoreboard players operation speed slot6 = maxspeed slot6
scoreboard players operation speed slot7 = maxspeed slot7
scoreboard players operation speed slot8 = maxspeed slot8

execute if score character# slot2 matches 37 run scoreboard players operation buffDurationSlot2 atkmodifiers = boogalooLeaderDuration abilityStats
execute if score character# slot2 matches 37 run scoreboard players operation attackBuffSlot2 atkmodifiers = boogalooLeader abilityStats
execute if score character# slot2 matches 37 run scoreboard players operation durationSlot2 speedBuffs = boogalooLeaderDuration abilityStats
execute if score character# slot2 matches 37 run scoreboard players operation speedBuffSlot2 speedBuffs = boogalooLeaderSpeed abilityStats
execute if score character# slot2 matches 37 run scoreboard players operation speed slot2 += boogalooLeaderSpeed abilityStats
execute if score character# slot6 matches 37 run scoreboard players operation buffDurationSlot6 atkmodifiers = boogalooLeaderDuration abilityStats
execute if score character# slot6 matches 37 run scoreboard players operation attackBuffSlot6 atkmodifiers = boogalooLeader abilityStats
execute if score character# slot6 matches 37 run scoreboard players operation durationSlot6 speedBuffs = boogalooLeaderDuration abilityStats
execute if score character# slot6 matches 37 run scoreboard players operation speedBuffSlot6 speedBuffs = boogalooLeaderSpeed abilityStats
execute if score character# slot6 matches 37 run scoreboard players operation speed slot6 += boogalooLeaderSpeed abilityStats

execute if score character# slot2 matches 18 run scoreboard players operation maxhp slot2 += grangorSelfHealthBonus herohealth
execute if score character# slot2 matches 18 run scoreboard players operation maxhp slot1 += grangorTeamHealthBonus herohealth
execute if score character# slot2 matches 18 run scoreboard players operation maxhp slot3 += grangorTeamHealthBonus herohealth
execute if score character# slot6 matches 18 run scoreboard players operation maxhp slot6 += grangorSelfHealthBonus herohealth
execute if score character# slot6 matches 18 run scoreboard players operation maxhp slot5 += grangorTeamHealthBonus herohealth
execute if score character# slot6 matches 18 run scoreboard players operation maxhp slot7 += grangorTeamHealthBonus herohealth



scoreboard players set game1Ongoing ongoinggames 1
scoreboard players set attackIsOngoingGame1 booleans 0