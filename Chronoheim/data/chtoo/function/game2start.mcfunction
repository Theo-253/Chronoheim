#Teams
tp @a[tag=game2] 200 1 245
#Scoreboard Uis
scoreboard objectives add Health_Game_2 dummy
scoreboard objectives add Speed_Game_2 dummy
scoreboard objectives add Cooldown_Game_2 dummy
scoreboard objectives add Spell_Cooldown_Game_2 dummy
scoreboard objectives setdisplay sidebar.team.yellow Health_Game_2
scoreboard objectives setdisplay sidebar.team.gold Health_Game_2
execute positioned 200 1 245 run kill @e[name=mapstand,distance=..30]
execute at @p[tag=p3,tag=colosseum] run place template map.colosseum 200 -1 231
execute at @p[tag=p4,tag=colosseum] run place template map.colosseum 199 -1 261 180
execute at @p[tag=p3,tag=lab] run place template map.lab 200 -1 231
execute at @p[tag=p4,tag=lab] run place template map.lab 199 -1 261 180
execute at @p[tag=p3,tag=!lab,tag=!colosseum] run place template map.scenic 200 0 231
execute at @p[tag=p4,tag=!lab,tag=!colosseum] run place template map.scenic 199 0 261 180
kill @e[type=item]
execute if score character# slot12 matches 0 run scoreboard players set speed slot12 -1000000
execute if score character# slot16 matches 0 run scoreboard players set speed slot16 -1000000
execute if score character# slot12 matches 0 run scoreboard players set slot12 hp 0
execute if score character# slot16 matches 0 run scoreboard players set slot16 hp 0
#Jones Leader Bonus
execute if score character# slot10 matches 31 run scoreboard players operation durationSlot9 speedBuffs = jonesLeaderDuration abilityStats
execute if score character# slot10 matches 31 run scoreboard players operation speedBuffSlot9 speedBuffs = jonesLeader abilityStats
execute if score character# slot10 matches 31 run scoreboard players operation durationSlot10 speedBuffs = jonesLeaderDuration abilityStats
execute if score character# slot10 matches 31 run scoreboard players operation speedBuffSlot10 speedBuffs = jonesLeader abilityStats
execute if score character# slot10 matches 31 run scoreboard players operation durationSlot11 speedBuffs = jonesLeaderDuration abilityStats
execute if score character# slot10 matches 31 run scoreboard players operation speedBuffSlot11 speedBuffs = jonesLeader abilityStats
execute if score character# slot10 matches 31 run scoreboard players operation durationSlot12 speedBuffs = jonesLeaderDuration abilityStats
execute if score character# slot10 matches 31 run scoreboard players operation speedBuffSlot12 speedBuffs = jonesLeader abilityStats
execute if score character# slot14 matches 31 run scoreboard players operation durationSlot13 speedBuffs = jonesLeaderDuration abilityStats
execute if score character# slot14 matches 31 run scoreboard players operation speedBuffSlot13 speedBuffs = jonesLeader abilityStats
execute if score character# slot14 matches 31 run scoreboard players operation durationSlot14 speedBuffs = jonesLeaderDuration abilityStats
execute if score character# slot14 matches 31 run scoreboard players operation speedBuffSlot14 speedBuffs = jonesLeader abilityStats
execute if score character# slot14 matches 31 run scoreboard players operation durationSlot15 speedBuffs = jonesLeaderDuration abilityStats
execute if score character# slot14 matches 31 run scoreboard players operation speedBuffSlot15 speedBuffs = jonesLeader abilityStats
execute if score character# slot14 matches 31 run scoreboard players operation durationSlot16 speedBuffs = jonesLeaderDuration abilityStats
execute if score character# slot14 matches 31 run scoreboard players operation speedBuffSlot16 speedBuffs = jonesLeader abilityStats
#Slot 1 Speed Reset
execute if score slot9 hp matches 1.. run execute if score character# slot9 matches 1 run scoreboard players operation speed slot9 = bones herospeed
execute if score slot9 hp matches 1.. run execute if score character# slot9 matches 2 run scoreboard players operation speed slot9 = arthur herospeed
execute if score slot9 hp matches 1.. run execute if score character# slot9 matches 3 run scoreboard players operation speed slot9 = deuce herospeed
execute if score slot9 hp matches 1.. run execute if score character# slot9 matches 4 run scoreboard players operation speed slot9 = subject herospeed
execute if score slot9 hp matches 1.. run execute if score character# slot9 matches 5 run scoreboard players operation speed slot9 = robo herospeed
execute if score slot9 hp matches 1.. run execute if score character# slot9 matches 6 run scoreboard players operation speed slot9 = thorn herospeed
execute if score slot9 hp matches 1.. run execute if score character# slot9 matches 7 run scoreboard players operation speed slot9 = kong herospeed
execute if score slot9 hp matches 1.. run execute if score character# slot9 matches 8 run scoreboard players operation speed slot9 = kirin herospeed
execute if score slot9 hp matches 1.. run execute if score character# slot9 matches 9 run scoreboard players operation speed slot9 = robyn herospeed
execute if score slot9 hp matches 1.. run execute if score character# slot9 matches 10 run scoreboard players operation speed slot9 = dillo herospeed
execute if score slot9 hp matches 1.. run execute if score character# slot9 matches 11 run scoreboard players operation speed slot9 = flint herospeed
execute if score slot9 hp matches 1.. run execute if score character# slot9 matches 12 run scoreboard players operation speed slot9 = ace herospeed
execute if score slot9 hp matches 1.. run execute if score character# slot9 matches 13 run scoreboard players operation speed slot9 = london herospeed
execute if score slot9 hp matches 1.. run execute if score character# slot9 matches 14 run scoreboard players operation speed slot9 = hydra herospeed
execute if score slot9 hp matches 1.. run execute if score character# slot9 matches 15 run scoreboard players operation speed slot9 = golem herospeed
execute if score slot9 hp matches 1.. run execute if score character# slot9 matches 16 run scoreboard players operation speed slot9 = blackbeard herospeed
execute if score slot9 hp matches 1.. run execute if score character# slot9 matches 17 run scoreboard players operation speed slot9 = grimoire herospeed
execute if score slot9 hp matches 1.. run execute if score character# slot9 matches 18 run scoreboard players operation speed slot9 = grangor herospeed
execute if score slot9 hp matches 1.. run execute if score character# slot9 matches 19 run scoreboard players operation speed slot9 = astro herospeed
execute if score slot9 hp matches 1.. run execute if score character# slot9 matches 20 run scoreboard players operation speed slot9 = doc herospeed
execute if score slot9 hp matches 1.. run execute if score character# slot9 matches 21 run scoreboard players operation speed slot9 = lillith herospeed
execute if score slot9 hp matches 1.. run execute if score character# slot9 matches 22 run scoreboard players operation speed slot9 = gabriel herospeed
execute if score slot9 hp matches 1.. run execute if score character# slot9 matches 23 run scoreboard players operation speed slot9 = gatsby herospeed
execute if score slot9 hp matches 1.. run execute if score character# slot9 matches 24 run scoreboard players operation speed slot9 = garabaldi herospeed
execute if score slot9 hp matches 1.. run execute if score character# slot9 matches 25 run scoreboard players operation speed slot9 = boomer herospeed
execute if score slot9 hp matches 1.. run execute if score character# slot9 matches 26 run scoreboard players operation speed slot9 = osiris herospeed
execute if score slot9 hp matches 1.. run execute if score character# slot9 matches 27 run scoreboard players operation speed slot9 = juniper herospeed
execute if score slot9 hp matches 1.. run execute if score character# slot9 matches 28 run scoreboard players operation speed slot9 = eidolon herospeed
execute if score slot9 hp matches 1.. run execute if score character# slot9 matches 29 run scoreboard players operation speed slot9 = ripper herospeed
execute if score slot9 hp matches 1.. run execute if score character# slot9 matches 30 run scoreboard players operation speed slot9 = domino herospeed
execute if score slot9 hp matches 1.. run execute if score character# slot9 matches 31 run scoreboard players operation speed slot9 = jones herospeed
execute if score slot9 hp matches 1.. run execute if score character# slot9 matches 32 run scoreboard players operation speed slot9 = scythe herospeed
execute if score slot9 hp matches 1.. run execute if score character# slot9 matches 33 run scoreboard players operation speed slot9 = sherman herospeed
execute if score slot9 hp matches 1.. run execute if score character# slot9 matches -1 run scoreboard players operation speed slot9 = skeleton herospeed
execute if score slot9 hp matches 1.. run execute if score character# slot9 matches -2 run scoreboard players operation speed slot9 = demon herospeed
execute if score slot9 hp matches 1.. run execute if score character# slot9 matches -3 run scoreboard players operation speed slot9 = healingTotemSpeed spellStats
execute if score slot9 hp matches 1.. run execute if score character# slot9 matches -4 run scoreboard players operation speed slot9 = golemite herospeed
execute if score slot9 hp matches 1.. run execute if score character# slot9 matches -5 run scoreboard players operation speed slot9 = skeletonplus herospeed

scoreboard players operation speed slot9 -= speedDebuffSlot9 speedDebuffs
scoreboard players operation speed slot9 += speedBuffSlot9 speedBuffs


#Slot 2 Speed Resets
execute if score slot10 hp matches 1.. run execute if score character# slot10 matches 1 run scoreboard players operation speed slot10 = bones herospeed
execute if score slot10 hp matches 1.. run execute if score character# slot10 matches 2 run scoreboard players operation speed slot10 = arthur herospeed
execute if score slot10 hp matches 1.. run execute if score character# slot10 matches 3 run scoreboard players operation speed slot10 = deuce herospeed
execute if score slot10 hp matches 1.. run execute if score character# slot10 matches 4 run scoreboard players operation speed slot10 = subject herospeed
execute if score slot10 hp matches 1.. run execute if score character# slot10 matches 5 run scoreboard players operation speed slot10 = robo herospeed
execute if score slot10 hp matches 1.. run execute if score character# slot10 matches 6 run scoreboard players operation speed slot10 = thorn herospeed
execute if score slot10 hp matches 1.. run execute if score character# slot10 matches 7 run scoreboard players operation speed slot10 = kong herospeed
execute if score slot10 hp matches 1.. run execute if score character# slot10 matches 8 run scoreboard players operation speed slot10 = kirin herospeed
execute if score slot10 hp matches 1.. run execute if score character# slot10 matches 9 run scoreboard players operation speed slot10 = robyn herospeed
execute if score slot10 hp matches 1.. run execute if score character# slot10 matches 10 run scoreboard players operation speed slot10 = dilloLeader herospeed
execute if score slot10 hp matches 1.. run execute if score character# slot10 matches 11 run scoreboard players operation speed slot10 = flint herospeed
execute if score slot10 hp matches 1.. run execute if score character# slot10 matches 12 run scoreboard players operation speed slot10 = ace herospeed
execute if score slot10 hp matches 1.. run execute if score character# slot10 matches 13 run scoreboard players operation speed slot10 = london herospeed
execute if score slot10 hp matches 1.. run execute if score character# slot10 matches 14 run scoreboard players operation speed slot10 = hydra herospeed
execute if score slot10 hp matches 1.. run execute if score character# slot10 matches 15 run scoreboard players operation speed slot10 = golem herospeed
execute if score slot10 hp matches 1.. run execute if score character# slot10 matches 16 run scoreboard players operation speed slot10 = blackbeard herospeed
execute if score slot10 hp matches 1.. run execute if score character# slot10 matches 17 run scoreboard players operation speed slot10 = grimoire herospeed
execute if score slot10 hp matches 1.. run execute if score character# slot10 matches 18 run scoreboard players operation speed slot10 = grangor herospeed
execute if score slot10 hp matches 1.. run execute if score character# slot10 matches 19 run scoreboard players operation speed slot10 = astro herospeed
execute if score slot10 hp matches 1.. run execute if score character# slot10 matches 20 run scoreboard players operation speed slot10 = doc herospeed
execute if score slot10 hp matches 1.. run execute if score character# slot10 matches 21 run scoreboard players operation speed slot10 = lillith herospeed
execute if score slot10 hp matches 1.. run execute if score character# slot10 matches 22 run scoreboard players operation speed slot10 = gabriel herospeed
execute if score slot10 hp matches 1.. run execute if score character# slot10 matches 23 run scoreboard players operation speed slot10 = gatsby herospeed
execute if score slot10 hp matches 1.. run execute if score character# slot10 matches 24 run scoreboard players operation speed slot10 = garabaldi herospeed
execute if score slot10 hp matches 1.. run execute if score character# slot10 matches 25 run scoreboard players operation speed slot10 = boomer herospeed
execute if score slot10 hp matches 1.. run execute if score character# slot10 matches 26 run scoreboard players operation speed slot10 = osiris herospeed
execute if score slot10 hp matches 1.. run execute if score character# slot10 matches 27 run scoreboard players operation speed slot10 = juniper herospeed
execute if score slot10 hp matches 1.. run execute if score character# slot10 matches 28 run scoreboard players operation speed slot10 = eidolon herospeed
execute if score slot10 hp matches 1.. run execute if score character# slot10 matches 29 run scoreboard players operation speed slot10 = ripper herospeed
execute if score slot10 hp matches 1.. run execute if score character# slot10 matches 30 run scoreboard players operation speed slot10 = domino herospeed
execute if score slot10 hp matches 1.. run execute if score character# slot10 matches 31 run scoreboard players operation speed slot10 = jones herospeed
execute if score slot10 hp matches 1.. run execute if score character# slot10 matches 32 run scoreboard players operation speed slot10 = scythe herospeed
execute if score slot10 hp matches 1.. run execute if score character# slot10 matches 33 run scoreboard players operation speed slot10 = sherman herospeed
execute if score slot10 hp matches 1.. run execute if score character# slot10 matches -1 run scoreboard players operation speed slot10 = skeleton herospeed
execute if score slot10 hp matches 1.. run execute if score character# slot10 matches -2 run scoreboard players operation speed slot10 = demon herospeed
execute if score slot10 hp matches 1.. run execute if score character# slot10 matches -3 run scoreboard players operation speed slot10 = healingTotemSpeed spellStats
execute if score slot10 hp matches 1.. run execute if score character# slot10 matches -4 run scoreboard players operation speed slot10 = golemite herospeed
execute if score slot10 hp matches 1.. run execute if score character# slot10 matches -5 run scoreboard players operation speed slot10 = skeletonplus herospeed

scoreboard players operation speed slot10 -= speedDebuffSlot10 speedDebuffs
scoreboard players operation speed slot10 += speedBuffSlot10 speedBuffs


#Slot 3 Speed Resets
execute if score slot11 hp matches 1.. run execute if score character# slot11 matches 1 run scoreboard players operation speed slot11 = bones herospeed
execute if score slot11 hp matches 1.. run execute if score character# slot11 matches 2 run scoreboard players operation speed slot11 = arthur herospeed
execute if score slot11 hp matches 1.. run execute if score character# slot11 matches 3 run scoreboard players operation speed slot11 = deuce herospeed
execute if score slot11 hp matches 1.. run execute if score character# slot11 matches 4 run scoreboard players operation speed slot11 = subject herospeed
execute if score slot11 hp matches 1.. run execute if score character# slot11 matches 5 run scoreboard players operation speed slot11 = robo herospeed
execute if score slot11 hp matches 1.. run execute if score character# slot11 matches 6 run scoreboard players operation speed slot11 = thorn herospeed
execute if score slot11 hp matches 1.. run execute if score character# slot11 matches 7 run scoreboard players operation speed slot11 = kong herospeed
execute if score slot11 hp matches 1.. run execute if score character# slot11 matches 8 run scoreboard players operation speed slot11 = kirin herospeed
execute if score slot11 hp matches 1.. run execute if score character# slot11 matches 9 run scoreboard players operation speed slot11 = robyn herospeed
execute if score slot11 hp matches 1.. run execute if score character# slot11 matches 10 run scoreboard players operation speed slot11 = dillo herospeed
execute if score slot11 hp matches 1.. run execute if score character# slot11 matches 11 run scoreboard players operation speed slot11 = flint herospeed
execute if score slot11 hp matches 1.. run execute if score character# slot11 matches 12 run scoreboard players operation speed slot11 = ace herospeed
execute if score slot11 hp matches 1.. run execute if score character# slot11 matches 13 run scoreboard players operation speed slot11 = london herospeed
execute if score slot11 hp matches 1.. run execute if score character# slot11 matches 14 run scoreboard players operation speed slot11 = hydra herospeed
execute if score slot11 hp matches 1.. run execute if score character# slot11 matches 15 run scoreboard players operation speed slot11 = golem herospeed
execute if score slot11 hp matches 1.. run execute if score character# slot11 matches 16 run scoreboard players operation speed slot11 = blackbeard herospeed
execute if score slot11 hp matches 1.. run execute if score character# slot11 matches 17 run scoreboard players operation speed slot11 = grimoire herospeed
execute if score slot11 hp matches 1.. run execute if score character# slot11 matches 18 run scoreboard players operation speed slot11 = grangor herospeed
execute if score slot11 hp matches 1.. run execute if score character# slot11 matches 19 run scoreboard players operation speed slot11 = astro herospeed
execute if score slot11 hp matches 1.. run execute if score character# slot11 matches 20 run scoreboard players operation speed slot11 = doc herospeed
execute if score slot11 hp matches 1.. run execute if score character# slot11 matches 21 run scoreboard players operation speed slot11 = lillith herospeed
execute if score slot11 hp matches 1.. run execute if score character# slot11 matches 22 run scoreboard players operation speed slot11 = gabriel herospeed
execute if score slot11 hp matches 1.. run execute if score character# slot11 matches 23 run scoreboard players operation speed slot11 = gatsby herospeed
execute if score slot11 hp matches 1.. run execute if score character# slot11 matches 24 run scoreboard players operation speed slot11 = garabaldi herospeed
execute if score slot11 hp matches 1.. run execute if score character# slot11 matches 25 run scoreboard players operation speed slot11 = boomer herospeed
execute if score slot11 hp matches 1.. run execute if score character# slot11 matches 26 run scoreboard players operation speed slot11 = osiris herospeed
execute if score slot11 hp matches 1.. run execute if score character# slot11 matches 27 run scoreboard players operation speed slot11 = juniper herospeed
execute if score slot11 hp matches 1.. run execute if score character# slot11 matches 28 run scoreboard players operation speed slot11 = eidolon herospeed
execute if score slot11 hp matches 1.. run execute if score character# slot11 matches 29 run scoreboard players operation speed slot11 = ripper herospeed
execute if score slot11 hp matches 1.. run execute if score character# slot11 matches 30 run scoreboard players operation speed slot11 = domino herospeed
execute if score slot11 hp matches 1.. run execute if score character# slot11 matches 31 run scoreboard players operation speed slot11 = jones herospeed
execute if score slot11 hp matches 1.. run execute if score character# slot11 matches 32 run scoreboard players operation speed slot11 = scythe herospeed
execute if score slot11 hp matches 1.. run execute if score character# slot11 matches 33 run scoreboard players operation speed slot11 = sherman herospeed
execute if score slot11 hp matches 1.. run execute if score character# slot11 matches -1 run scoreboard players operation speed slot11 = skeleton herospeed
execute if score slot11 hp matches 1.. run execute if score character# slot11 matches -2 run scoreboard players operation speed slot11 = demon herospeed
execute if score slot11 hp matches 1.. run execute if score character# slot11 matches -3 run scoreboard players operation speed slot11 = healingTotemSpeed spellStats
execute if score slot11 hp matches 1.. run execute if score character# slot11 matches -4 run scoreboard players operation speed slot11 = golemite herospeed
execute if score slot11 hp matches 1.. run execute if score character# slot11 matches -5 run scoreboard players operation speed slot11 = skeletonplus herospeed

scoreboard players operation speed slot11 -= speedDebuffSlot11 speedDebuffs
scoreboard players operation speed slot11 += speedBuffSlot11 speedBuffs



#Slot 5 Speed Resets
execute if score slot13 hp matches 1.. run execute if score character# slot13 matches 1 run scoreboard players operation speed slot13 = bones herospeed
execute if score slot13 hp matches 1.. run execute if score character# slot13 matches 2 run scoreboard players operation speed slot13 = arthur herospeed
execute if score slot13 hp matches 1.. run execute if score character# slot13 matches 3 run scoreboard players operation speed slot13 = deuce herospeed
execute if score slot13 hp matches 1.. run execute if score character# slot13 matches 4 run scoreboard players operation speed slot13 = subject herospeed
execute if score slot13 hp matches 1.. run execute if score character# slot13 matches 5 run scoreboard players operation speed slot13 = robo herospeed
execute if score slot13 hp matches 1.. run execute if score character# slot13 matches 6 run scoreboard players operation speed slot13 = thorn herospeed
execute if score slot13 hp matches 1.. run execute if score character# slot13 matches 7 run scoreboard players operation speed slot13 = kong herospeed
execute if score slot13 hp matches 1.. run execute if score character# slot13 matches 8 run scoreboard players operation speed slot13 = kirin herospeed
execute if score slot13 hp matches 1.. run execute if score character# slot13 matches 9 run scoreboard players operation speed slot13 = robyn herospeed
execute if score slot13 hp matches 1.. run execute if score character# slot13 matches 10 run scoreboard players operation speed slot13 = dillo herospeed
execute if score slot13 hp matches 1.. run execute if score character# slot13 matches 11 run scoreboard players operation speed slot13 = flint herospeed
execute if score slot13 hp matches 1.. run execute if score character# slot13 matches 12 run scoreboard players operation speed slot13 = ace herospeed
execute if score slot13 hp matches 1.. run execute if score character# slot13 matches 13 run scoreboard players operation speed slot13 = london herospeed
execute if score slot13 hp matches 1.. run execute if score character# slot13 matches 14 run scoreboard players operation speed slot13 = hydra herospeed
execute if score slot13 hp matches 1.. run execute if score character# slot13 matches 15 run scoreboard players operation speed slot13 = golem herospeed
execute if score slot13 hp matches 1.. run execute if score character# slot13 matches 16 run scoreboard players operation speed slot13 = blackbeard herospeed
execute if score slot13 hp matches 1.. run execute if score character# slot13 matches 17 run scoreboard players operation speed slot13 = grimoire herospeed
execute if score slot13 hp matches 1.. run execute if score character# slot13 matches 18 run scoreboard players operation speed slot13 = grangor herospeed
execute if score slot13 hp matches 1.. run execute if score character# slot13 matches 19 run scoreboard players operation speed slot13 = astro herospeed
execute if score slot13 hp matches 1.. run execute if score character# slot13 matches 20 run scoreboard players operation speed slot13 = doc herospeed
execute if score slot13 hp matches 1.. run execute if score character# slot13 matches 21 run scoreboard players operation speed slot13 = lillith herospeed
execute if score slot13 hp matches 1.. run execute if score character# slot13 matches 22 run scoreboard players operation speed slot13 = gabriel herospeed
execute if score slot13 hp matches 1.. run execute if score character# slot13 matches 23 run scoreboard players operation speed slot13 = gatsby herospeed
execute if score slot13 hp matches 1.. run execute if score character# slot13 matches 24 run scoreboard players operation speed slot13 = garabaldi herospeed
execute if score slot13 hp matches 1.. run execute if score character# slot13 matches 25 run scoreboard players operation speed slot13 = boomer herospeed
execute if score slot13 hp matches 1.. run execute if score character# slot13 matches 26 run scoreboard players operation speed slot13 = osiris herospeed
execute if score slot13 hp matches 1.. run execute if score character# slot13 matches 27 run scoreboard players operation speed slot13 = juniper herospeed
execute if score slot13 hp matches 1.. run execute if score character# slot13 matches 28 run scoreboard players operation speed slot13 = eidolon herospeed
execute if score slot13 hp matches 1.. run execute if score character# slot13 matches 29 run scoreboard players operation speed slot13 = ripper herospeed
execute if score slot13 hp matches 1.. run execute if score character# slot13 matches 30 run scoreboard players operation speed slot13 = domino herospeed
execute if score slot13 hp matches 1.. run execute if score character# slot13 matches 31 run scoreboard players operation speed slot13 = jones herospeed
execute if score slot13 hp matches 1.. run execute if score character# slot13 matches 32 run scoreboard players operation speed slot13 = scythe herospeed
execute if score slot13 hp matches 1.. run execute if score character# slot13 matches 33 run scoreboard players operation speed slot13 = sherman herospeed
execute if score slot13 hp matches 1.. run execute if score character# slot13 matches -1 run scoreboard players operation speed slot13 = skeleton herospeed
execute if score slot13 hp matches 1.. run execute if score character# slot13 matches -2 run scoreboard players operation speed slot13 = demon herospeed
execute if score slot13 hp matches 1.. run execute if score character# slot13 matches -3 run scoreboard players operation speed slot13 = healingTotemSpeed spellStats
execute if score slot13 hp matches 1.. run execute if score character# slot13 matches -4 run scoreboard players operation speed slot13 = golemite herospeed
execute if score slot13 hp matches 1.. run execute if score character# slot13 matches -5 run scoreboard players operation speed slot13 = skeletonplus herospeed

scoreboard players operation speed slot13 -= speedDebuffSlot13 speedDebuffs
scoreboard players operation speed slot13 += speedBuffSlot13 speedBuffs



#Slot 6 Speed Resets
execute if score slot14 hp matches 1.. run execute if score character# slot14 matches 1 run scoreboard players operation speed slot14 = bones herospeed
execute if score slot14 hp matches 1.. run execute if score character# slot14 matches 2 run scoreboard players operation speed slot14 = arthur herospeed
execute if score slot14 hp matches 1.. run execute if score character# slot14 matches 3 run scoreboard players operation speed slot14 = deuce herospeed
execute if score slot14 hp matches 1.. run execute if score character# slot14 matches 4 run scoreboard players operation speed slot14 = subject herospeed
execute if score slot14 hp matches 1.. run execute if score character# slot14 matches 5 run scoreboard players operation speed slot14 = robo herospeed
execute if score slot14 hp matches 1.. run execute if score character# slot14 matches 6 run scoreboard players operation speed slot14 = thorn herospeed
execute if score slot14 hp matches 1.. run execute if score character# slot14 matches 7 run scoreboard players operation speed slot14 = kong herospeed
execute if score slot14 hp matches 1.. run execute if score character# slot14 matches 8 run scoreboard players operation speed slot14 = kirin herospeed
execute if score slot14 hp matches 1.. run execute if score character# slot14 matches 9 run scoreboard players operation speed slot14 = robyn herospeed
execute if score slot14 hp matches 1.. run execute if score character# slot14 matches 10 run scoreboard players operation speed slot14 = dilloLeader herospeed
execute if score slot14 hp matches 1.. run execute if score character# slot14 matches 11 run scoreboard players operation speed slot14 = flint herospeed
execute if score slot14 hp matches 1.. run execute if score character# slot14 matches 12 run scoreboard players operation speed slot14 = ace herospeed
execute if score slot14 hp matches 1.. run execute if score character# slot14 matches 13 run scoreboard players operation speed slot14 = london herospeed
execute if score slot14 hp matches 1.. run execute if score character# slot14 matches 14 run scoreboard players operation speed slot14 = hydra herospeed
execute if score slot14 hp matches 1.. run execute if score character# slot14 matches 15 run scoreboard players operation speed slot14 = golem herospeed
execute if score slot14 hp matches 1.. run execute if score character# slot14 matches 16 run scoreboard players operation speed slot14 = blackbeard herospeed
execute if score slot14 hp matches 1.. run execute if score character# slot14 matches 17 run scoreboard players operation speed slot14 = grimoire herospeed
execute if score slot14 hp matches 1.. run execute if score character# slot14 matches 18 run scoreboard players operation speed slot14 = grangor herospeed
execute if score slot14 hp matches 1.. run execute if score character# slot14 matches 19 run scoreboard players operation speed slot14 = astro herospeed
execute if score slot14 hp matches 1.. run execute if score character# slot14 matches 20 run scoreboard players operation speed slot14 = doc herospeed
execute if score slot14 hp matches 1.. run execute if score character# slot14 matches 21 run scoreboard players operation speed slot14 = lillith herospeed
execute if score slot14 hp matches 1.. run execute if score character# slot14 matches 22 run scoreboard players operation speed slot14 = gabriel herospeed
execute if score slot14 hp matches 1.. run execute if score character# slot14 matches 23 run scoreboard players operation speed slot14 = gatsby herospeed
execute if score slot14 hp matches 1.. run execute if score character# slot14 matches 24 run scoreboard players operation speed slot14 = garabaldi herospeed
execute if score slot14 hp matches 1.. run execute if score character# slot14 matches 25 run scoreboard players operation speed slot14 = boomer herospeed
execute if score slot14 hp matches 1.. run execute if score character# slot14 matches 26 run scoreboard players operation speed slot14 = osiris herospeed
execute if score slot14 hp matches 1.. run execute if score character# slot14 matches 27 run scoreboard players operation speed slot14 = juniper herospeed
execute if score slot14 hp matches 1.. run execute if score character# slot14 matches 28 run scoreboard players operation speed slot14 = eidolon herospeed
execute if score slot14 hp matches 1.. run execute if score character# slot14 matches 29 run scoreboard players operation speed slot14 = ripper herospeed
execute if score slot14 hp matches 1.. run execute if score character# slot14 matches 30 run scoreboard players operation speed slot14 = domino herospeed
execute if score slot14 hp matches 1.. run execute if score character# slot14 matches 31 run scoreboard players operation speed slot14 = jones herospeed
execute if score slot14 hp matches 1.. run execute if score character# slot14 matches 32 run scoreboard players operation speed slot14 = scythe herospeed
execute if score slot14 hp matches 1.. run execute if score character# slot14 matches 33 run scoreboard players operation speed slot14 = sherman herospeed
execute if score slot14 hp matches 1.. run execute if score character# slot14 matches -1 run scoreboard players operation speed slot14 = skeleton herospeed
execute if score slot14 hp matches 1.. run execute if score character# slot14 matches -2 run scoreboard players operation speed slot14 = demon herospeed
execute if score slot14 hp matches 1.. run execute if score character# slot14 matches -3 run scoreboard players operation speed slot14 = healingTotemSpeed spellStats
execute if score slot14 hp matches 1.. run execute if score character# slot14 matches -4 run scoreboard players operation speed slot14 = golemite herospeed
execute if score slot14 hp matches 1.. run execute if score character# slot14 matches -5 run scoreboard players operation speed slot14 = skeletonplus herospeed

scoreboard players operation speed slot14 -= speedDebuffSlot14 speedDebuffs
scoreboard players operation speed slot14 += speedBuffSlot14 speedBuffs


#Slot 7 Speed Resets
execute if score slot15 hp matches 1.. run execute if score character# slot15 matches 1 run scoreboard players operation speed slot15 = bones herospeed
execute if score slot15 hp matches 1.. run execute if score character# slot15 matches 2 run scoreboard players operation speed slot15 = arthur herospeed
execute if score slot15 hp matches 1.. run execute if score character# slot15 matches 3 run scoreboard players operation speed slot15 = deuce herospeed
execute if score slot15 hp matches 1.. run execute if score character# slot15 matches 4 run scoreboard players operation speed slot15 = subject herospeed
execute if score slot15 hp matches 1.. run execute if score character# slot15 matches 5 run scoreboard players operation speed slot15 = robo herospeed
execute if score slot15 hp matches 1.. run execute if score character# slot15 matches 6 run scoreboard players operation speed slot15 = thorn herospeed
execute if score slot15 hp matches 1.. run execute if score character# slot15 matches 7 run scoreboard players operation speed slot15 = kong herospeed
execute if score slot15 hp matches 1.. run execute if score character# slot15 matches 8 run scoreboard players operation speed slot15 = kirin herospeed
execute if score slot15 hp matches 1.. run execute if score character# slot15 matches 9 run scoreboard players operation speed slot15 = robyn herospeed
execute if score slot15 hp matches 1.. run execute if score character# slot15 matches 10 run scoreboard players operation speed slot15 = dillo herospeed
execute if score slot15 hp matches 1.. run execute if score character# slot15 matches 11 run scoreboard players operation speed slot15 = flint herospeed
execute if score slot15 hp matches 1.. run execute if score character# slot15 matches 12 run scoreboard players operation speed slot15 = ace herospeed
execute if score slot15 hp matches 1.. run execute if score character# slot15 matches 13 run scoreboard players operation speed slot15 = london herospeed
execute if score slot15 hp matches 1.. run execute if score character# slot15 matches 14 run scoreboard players operation speed slot15 = hydra herospeed
execute if score slot15 hp matches 1.. run execute if score character# slot15 matches 15 run scoreboard players operation speed slot15 = golem herospeed
execute if score slot15 hp matches 1.. run execute if score character# slot15 matches 16 run scoreboard players operation speed slot15 = blackbeard herospeed
execute if score slot15 hp matches 1.. run execute if score character# slot15 matches 17 run scoreboard players operation speed slot15 = grimoire herospeed
execute if score slot15 hp matches 1.. run execute if score character# slot15 matches 18 run scoreboard players operation speed slot15 = grangor herospeed
execute if score slot15 hp matches 1.. run execute if score character# slot15 matches 19 run scoreboard players operation speed slot15 = astro herospeed
execute if score slot15 hp matches 1.. run execute if score character# slot15 matches 20 run scoreboard players operation speed slot15 = doc herospeed
execute if score slot15 hp matches 1.. run execute if score character# slot15 matches 21 run scoreboard players operation speed slot15 = lillith herospeed
execute if score slot15 hp matches 1.. run execute if score character# slot15 matches 22 run scoreboard players operation speed slot15 = gabriel herospeed
execute if score slot15 hp matches 1.. run execute if score character# slot15 matches 23 run scoreboard players operation speed slot15 = gatsby herospeed
execute if score slot15 hp matches 1.. run execute if score character# slot15 matches 24 run scoreboard players operation speed slot15 = garabaldi herospeed
execute if score slot15 hp matches 1.. run execute if score character# slot15 matches 25 run scoreboard players operation speed slot15 = boomer herospeed
execute if score slot15 hp matches 1.. run execute if score character# slot15 matches 26 run scoreboard players operation speed slot15 = osiris herospeed
execute if score slot15 hp matches 1.. run execute if score character# slot15 matches 27 run scoreboard players operation speed slot15 = juniper herospeed
execute if score slot15 hp matches 1.. run execute if score character# slot15 matches 28 run scoreboard players operation speed slot15 = eidolon herospeed
execute if score slot15 hp matches 1.. run execute if score character# slot15 matches 29 run scoreboard players operation speed slot15 = ripper herospeed
execute if score slot15 hp matches 1.. run execute if score character# slot15 matches 30 run scoreboard players operation speed slot15 = domino herospeed
execute if score slot15 hp matches 1.. run execute if score character# slot15 matches 31 run scoreboard players operation speed slot15 = jones herospeed
execute if score slot15 hp matches 1.. run execute if score character# slot15 matches 32 run scoreboard players operation speed slot15 = scythe herospeed
execute if score slot15 hp matches 1.. run execute if score character# slot15 matches 33 run scoreboard players operation speed slot15 = sherman herospeed
execute if score slot15 hp matches 1.. run execute if score character# slot15 matches -1 run scoreboard players operation speed slot15 = skeleton herospeed
execute if score slot15 hp matches 1.. run execute if score character# slot15 matches -2 run scoreboard players operation speed slot15 = demon herospeed
execute if score slot15 hp matches 1.. run execute if score character# slot15 matches -3 run scoreboard players operation speed slot15 = healingTotemSpeed spellStats
execute if score slot15 hp matches 1.. run execute if score character# slot15 matches -4 run scoreboard players operation speed slot15 = golemite herospeed
execute if score slot15 hp matches 1.. run execute if score character# slot15 matches -5 run scoreboard players operation speed slot15 = skeletonplus herospeed

scoreboard players operation speed slot15 -= speedDebuffSlot15 speedDebuffs
scoreboard players operation speed slot15 += speedBuffSlot15 speedBuffs

#Slot 8 Speed Resets
scoreboard players set speed slot16 -1000000
execute if score slot16 hp matches 1.. run execute if score character# slot16 matches -1 run scoreboard players operation speed slot16 = skeleton herospeed
execute if score slot16 hp matches 1.. run execute if score character# slot16 matches -2 run scoreboard players operation speed slot16 = demon herospeed
execute if score slot16 hp matches 1.. run execute if score character# slot16 matches -3 run scoreboard players operation speed slot16 = healingtotem herospeed
execute if score slot16 hp matches 1.. run execute if score character# slot16 matches -4 run scoreboard players operation speed slot16 = golemite herospeed
scoreboard players operation speed slot16 -= speedDebuffSlot16 speedDebuffs
scoreboard players operation speed slot16 += speedBuffSlot16 speedBuffs


#Game Start Leader bonuses
execute if score character# slot10 matches 2 run scoreboard players operation buffDurationSlot9 atkmodifiers = arthurBuffDuration abilityStats
execute if score character# slot10 matches 2 run scoreboard players operation buffDurationSlot10 atkmodifiers = arthurBuffDuration abilityStats
execute if score character# slot10 matches 2 run scoreboard players operation buffDurationSlot11 atkmodifiers = arthurBuffDuration abilityStats
execute if score character# slot10 matches 2 run scoreboard players operation buffDurationSlot12 atkmodifiers = arthurBuffDuration abilityStats
execute if score character# slot10 matches 2 run scoreboard players operation attackBuffSlot9 atkmodifiers = arthurBuff abilityStats
execute if score character# slot10 matches 2 run scoreboard players operation attackBuffSlot10 atkmodifiers = arthurBuff abilityStats
execute if score character# slot10 matches 2 run scoreboard players operation attackBuffSlot11 atkmodifiers = arthurBuff abilityStats
execute if score character# slot10 matches 2 run scoreboard players operation attackBuffSlot12 atkmodifiers = arthurBuff abilityStats

execute if score character# slot14 matches 2 run scoreboard players operation buffDurationSlot13 atkmodifiers = arthurBuffDuration abilityStats
execute if score character# slot14 matches 2 run scoreboard players operation buffDurationSlot14 atkmodifiers = arthurBuffDuration abilityStats
execute if score character# slot14 matches 2 run scoreboard players operation buffDurationSlot15 atkmodifiers = arthurBuffDuration abilityStats
execute if score character# slot14 matches 2 run scoreboard players operation buffDurationSlot16 atkmodifiers = arthurBuffDuration abilityStats
execute if score character# slot14 matches 2 run scoreboard players operation attackBuffSlot13 atkmodifiers = arthurBuff abilityStats
execute if score character# slot14 matches 2 run scoreboard players operation attackBuffSlot14 atkmodifiers = arthurBuff abilityStats
execute if score character# slot14 matches 2 run scoreboard players operation attackBuffSlot15 atkmodifiers = arthurBuff abilityStats
execute if score character# slot14 matches 2 run scoreboard players operation attackBuffSlot16 atkmodifiers = arthurBuff abilityStats

execute if score character# slot10 matches 14 run scoreboard players operation atk slot10 += hydraLeader heroattack
execute if score character# slot14 matches 14 run scoreboard players operation atk slot14 += hydraLeader heroattack

execute if score character# slot9 matches 21 run scoreboard players operation slot9 hp -= lillithLeechDmg abilityStats
execute if score character# slot9 matches 21 run scoreboard players operation slot10 hp -= lillithLeechDmg abilityStats
execute if score character# slot9 matches 21 run scoreboard players operation slot11 hp -= lillithLeechDmg abilityStats

execute if score character# slot11 matches 21 run scoreboard players operation slot9 hp -= lillithLeechDmg abilityStats
execute if score character# slot11 matches 21 run scoreboard players operation slot10 hp -= lillithLeechDmg abilityStats
execute if score character# slot11 matches 21 run scoreboard players operation slot11 hp -= lillithLeechDmg abilityStats

execute if score character# slot13 matches 21 run scoreboard players operation slot13 hp -= lillithLeechDmg abilityStats
execute if score character# slot13 matches 21 run scoreboard players operation slot14 hp -= lillithLeechDmg abilityStats
execute if score character# slot13 matches 21 run scoreboard players operation slot15 hp -= lillithLeechDmg abilityStats

execute if score character# slot15 matches 21 run scoreboard players operation slot13 hp -= lillithLeechDmg abilityStats
execute if score character# slot15 matches 21 run scoreboard players operation slot14 hp -= lillithLeechDmg abilityStats
execute if score character# slot15 matches 21 run scoreboard players operation slot15 hp -= lillithLeechDmg abilityStats

execute if score character# slot10 matches 21 run scoreboard players operation slot9 hp -= lillithLeaderLeechDmg abilityStats
execute if score character# slot10 matches 21 run scoreboard players operation slot10 hp -= lillithLeaderLeechDmg abilityStats
execute if score character# slot10 matches 21 run scoreboard players operation slot11 hp -= lillithLeaderLeechDmg abilityStats

execute if score character# slot14 matches 21 run scoreboard players operation slot13 hp -= lillithLeaderLeechDmg abilityStats
execute if score character# slot14 matches 21 run scoreboard players operation slot14 hp -= lillithLeaderLeechDmg abilityStats
execute if score character# slot14 matches 21 run scoreboard players operation slot15 hp -= lillithLeaderLeechDmg abilityStats

execute if score character# slot10 matches 29 run scoreboard players operation atk slot10 += ripperLeader heroattack
execute if score character# slot10 matches 29 if score durationSlot10 shield < ripperLeaderDuration abilityStats run scoreboard players operation durationSlot10 shield = ripperLeaderDuration abilityStats
execute if score character# slot10 matches 29 run scoreboard players operation shield slot10 += ripperShield abilityStats

execute if score character# slot14 matches 29 run scoreboard players operation atk slot14 += ripperLeader heroattack
execute if score character# slot14 matches 29 if score durationSlot14 shield < ripperLeaderDuration abilityStats run scoreboard players operation durationSlot14 shield = ripperLeaderDuration abilityStats
execute if score character# slot14 matches 29 run scoreboard players operation shield slot14 += ripperShield abilityStats

execute if score character# slot10 matches 24 run scoreboard players set ward slot10 2
execute if score character# slot14 matches 24 run scoreboard players set ward slot14 2

execute if score character# slot10 matches 9 run execute if score ward slot14 matches 0 run scoreboard players operation marks slot14 = robyn abilityStats
execute if score character# slot10 matches 9 run execute if score ward slot14 matches 1 run function chtoo:wardslot14

execute if score character# slot14 matches 9 run execute if score ward slot14 matches 0 run scoreboard players operation marks slot10 = robyn abilityStats
execute if score character# slot14 matches 9 run execute if score ward slot14 matches 1 run function chtoo:wardslot10


scoreboard players set game2Ongoing ongoinggames 1
scoreboard players set attackIsOngoingGame2 booleans 0