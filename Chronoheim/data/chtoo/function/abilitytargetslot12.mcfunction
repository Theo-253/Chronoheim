effect clear @a[tag=game2] strength
clear @p[tag=game2]
#Arthur Ability
execute if score abilitynumber2 abilities matches 2 run function chtoo:cleanseslot12
#Deuce ability
execute if score abilitynumber2 abilities matches 3 run scoreboard players operation abilityDmg2 saves = deuce heroattack
execute if score abilitynumber2 abilities matches 3 if score slot13isatk booleans matches 1 run scoreboard players operation abilityDmg2 saves += slot13 atkmodifiers
execute if score abilitynumber2 abilities matches 3 if score slot14isatk booleans matches 1 run scoreboard players operation abilityDmg2 saves += slot14 atkmodifiers
execute if score abilitynumber2 abilities matches 3 if score slot15isatk booleans matches 1 run scoreboard players operation abilityDmg2 saves += slot15 atkmodifiers
execute if score abilitynumber2 abilities matches 3 run scoreboard players operation abilityDmg2 saves += marks slot12
execute if score abilitynumber2 abilities matches 3 if score slot14isatk booleans matches 1 run scoreboard players operation abilityDmg2 saves *= deuceMultLeader abilityStats
execute if score abilitynumber2 abilities matches 3 if score slot14isatk booleans matches 0 run scoreboard players operation abilityDmg2 saves *= deuceMult abilityStats
execute if score abilitynumber2 abilities matches 3 run scoreboard players operation abilityDmg2 saves /= atkmultiplier slot12
execute if score abilitynumber2 abilities matches 3 run execute if score ward slot12 matches 0 run scoreboard players operation shield slot12 -= abilityDmg2 saves
execute if score abilitynumber2 abilities matches 3 run execute if score ward slot12 matches 0 if score shield slot12 matches ..0 run scoreboard players operation slot12 hp += shield slot12
execute if score abilitynumber2 abilities matches 3 run execute if score ward slot12 matches 1.. run function chtoo:wardslot12
execute if score abilitynumber2 abilities matches 3 run execute at @e[name=slot12,type=armor_stand] run particle crit ~ ~1 ~ 0.3 0.3 0.3 2 100

execute if score abilitynumber2 abilities matches 3 run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p4]"}," used Double Punch on Slot 4!"]

#Garabaldi Ability
execute if score abilitynumber2 abilities matches 24 if score slot12 hp matches 1.. if score slot12bleeding booleaneffects matches 0 run scoreboard players operation slot12 hp += garabaldiHeal abilityStats
execute if score abilitynumber2 abilities matches 24 if score slot12 hp matches 1.. if score slot12bleeding booleaneffects matches 0 if score character# slot10 matches 24 run scoreboard players operation slot12 hp += garabaldiLeader abilityStats
execute if score abilitynumber2 abilities matches 24 if score slot12 hp matches 1.. run scoreboard players set ward slot12 2
execute if score abilitynumber2 abilities matches 24 run execute at @n[type=armor_stand,name=slot12] run particle minecraft:composter ~ ~1 ~ 0.9 0.9 0.9 0.5 100

execute if score abilitynumber2 abilities matches 24 run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p3]"}," used Bubble Shield on Slot 4!"]

#Juniper Ability
execute if score abilitynumber2 abilities matches 27 run scoreboard players operation abilityDmg2 saves = juniper abilityStats
execute if score abilitynumber2 abilities matches 27 if score slot13isatk booleans matches 1 run scoreboard players operation abilityDmg2 saves += slot13 atkmodifiers
execute if score abilitynumber2 abilities matches 27 if score slot14isatk booleans matches 1 run scoreboard players operation abilityDmg2 saves += slot14 atkmodifiers
execute if score abilitynumber2 abilities matches 27 if score slot15isatk booleans matches 1 run scoreboard players operation abilityDmg2 saves += slot15 atkmodifiers
execute if score abilitynumber2 abilities matches 27 run scoreboard players operation abilityDmg2 saves += marks slot12
execute if score abilitynumber2 abilities matches 27 run scoreboard players operation abilityDmg2 saves /= atkmultiplier slot12
execute if score abilitynumber2 abilities matches 27 run execute if score ward slot12 matches 0 run scoreboard players operation shield slot12 -= abilityDmg2 saves
execute if score abilitynumber2 abilities matches 27 run execute if score ward slot12 matches 0 run scoreboard players operation slot12 stun = juniperStun abilityStats
execute if score abilitynumber2 abilities matches 27 run execute if score ward slot12 matches 0 if score shield slot12 matches ..0 run scoreboard players operation slot12 hp += shield slot12
execute if score abilitynumber2 abilities matches 27 run execute if score ward slot12 matches 1.. run function chtoo:wardslot12
execute if score abilitynumber2 abilities matches 27 run execute at @e[name=slot12,type=armor_stand] run particle firefly ~ ~1 ~ 0.3 0.3 0.3 1 100

execute if score abilitynumber2 abilities matches 27 run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p4]"}," used Pixie Dust on Slot 4!"]

#Juniper Basic
execute if score abilitynumber2 abilities matches -2 run execute if score slot12bleeding booleaneffects matches 0 run scoreboard players operation slot12 hp += juniper heroattack
execute if score abilitynumber2 abilities matches -2 run execute at @n[type=armor_stand,name=slot12] run particle minecraft:composter ~ ~1 ~ 0.9 0.9 0.9 0.5 100
execute if score abilitynumber2 abilities matches -2 run execute if score slot12bleeding booleaneffects matches 0 if score slot10isatk booleans matches 1 run scoreboard players operation slot12 hp += juniperLeader heroattack

#K.O.N.G ability
execute if score abilitynumber2 abilities matches 7 run scoreboard players operation abilityDmg2 saves = kong abilityStats
execute if score abilitynumber2 abilities matches 7 if score slot13isatk booleans matches 1 run scoreboard players operation abilityDmg2 saves += slot13 atkmodifiers
execute if score abilitynumber2 abilities matches 7 if score slot14isatk booleans matches 1 run scoreboard players operation abilityDmg2 saves += slot14 atkmodifiers
execute if score abilitynumber2 abilities matches 7 if score slot15isatk booleans matches 1 run scoreboard players operation abilityDmg2 saves += slot15 atkmodifiers
execute if score abilitynumber2 abilities matches 7 run scoreboard players operation abilityDmg2 saves += marks slot12
execute if score abilitynumber2 abilities matches 7 run scoreboard players operation abilityDmg2 saves /= atkmultiplier slot12
execute if score abilitynumber2 abilities matches 7 run execute if score ward slot12 matches 0 run scoreboard players operation shield slot12 -= abilityDmg2 saves
execute if score abilitynumber2 abilities matches 7 run execute if score ward slot12 matches 0 if score kongSpDebuffDuration abilityStats > durationSlot12 speedDebuffs run scoreboard players operation durationSlot12 speedDebuffs = kongSpDebuffDuration abilityStats
execute if score abilitynumber2 abilities matches 7 run execute if score ward slot12 matches 0 if score kongDmgDebuffDuration abilityStats > debuffDurationSlot12 atkmodifiers run scoreboard players operation debuffDurationSlot12 atkmodifiers = kongDmgDebuffDuration abilityStats
execute if score abilitynumber2 abilities matches 7 run execute if score ward slot12 matches 0 run scoreboard players operation speedDebuffSlot12 speedDebuffs += kongSpDebuff abilityStats
execute if score abilitynumber2 abilities matches 7 run execute if score ward slot12 matches 0 run scoreboard players operation attackDebuffSlot12 atkmodifiers += kongDmgDebuff abilityStats
execute if score abilitynumber2 abilities matches 7 run execute if score ward slot12 matches 0 run execute if score slot14isatk booleans matches 1 run scoreboard players operation attackDebuffSlot12 atkmodifiers += kongLeaderDmgDebuff abilityStats
execute if score abilitynumber2 abilities matches 7 run execute if score ward slot12 matches 0 run execute if score slot14isatk booleans matches 1 run scoreboard players operation speedDebuffSlot12 speedDebuffs += kongLeaderSpDebuff abilityStats
execute if score abilitynumber2 abilities matches 7 run execute if score ward slot12 matches 0 run execute if score slot14isatk booleans matches 1 run scoreboard players operation speed slot12 -= kongLeaderSpDebuff abilityStats
execute if score abilitynumber2 abilities matches 7 run execute if score ward slot12 matches 0 run scoreboard players operation speed slot12 -= kongSpDebuff abilityStats
execute if score abilitynumber2 abilities matches 7 run execute if score ward slot12 matches 0 if score shield slot12 matches ..0 run scoreboard players operation slot12 hp += shield slot12
execute if score abilitynumber2 abilities matches 7 run execute if score ward slot12 matches 1.. run function chtoo:wardslot12
execute if score abilitynumber2 abilities matches 7 run execute at @n[type=armor_stand,name=slot12] run particle minecraft:explosion_emitter ~ ~1 ~
execute if score abilitynumber2 abilities matches 9 run execute at @n[type=armor_stand,name=slot12] run particle minecraft:angry_villager ~ ~1 ~ 0.9 0.9 0.9 1 50
execute if score abilitynumber2 abilities matches 7 run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p4]"}," used B.A.N.A.N.A S.L.A.M.M.A! on Slot 4!"]

#Robyn Ability
execute if score abilitynumber2 abilities matches 9 if score ward slot12 matches 0 if score durationSlot12 mark < robynDuration abilityStats run scoreboard players operation durationSlot12 mark = robynDuration abilityStats
execute if score abilitynumber2 abilities matches 9 if score ward slot12 matches 0 run scoreboard players operation marks slot12 += robyn abilityStats
execute if score abilitynumber2 abilities matches 9 if score ward slot12 matches 1 run function chtoo:wardslot12
execute if score abilitynumber2 abilities matches 9 run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p4]"}," used Most Wanted on Slot 4!"]
#Robo
execute if score abilitynumber2 abilities matches 5 if score durationSlot12 shield < roboDuration abilityStats run scoreboard players operation durationSlot12 shield = roboDuration abilityStats
execute if score abilitynumber2 abilities matches 5 run scoreboard players operation shield slot12 += robo abilityStats
execute if score abilitynumber2 abilities matches 5 if score slot10isatk booleans matches 1 run scoreboard players operation shield slot12 += roboLeader abilityStats
execute if score abilitynumber2 abilities matches 5 run execute at @n[name=slot12,type=armor_stand] run particle minecraft:wax_off ~ ~1 ~ 0.6 0.6 0.6 0.0001 400
execute if score abilitynumber2 abilities matches 5 run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p3]"}," used Force Field on Slot 4!"]

#Kirin
execute if score abilitynumber2 abilities matches 8 if score buffDurationSlot12 atkmodifiers < kirinDuration abilityStats run scoreboard players operation buffDurationSlot12 atkmodifiers = kirinDuration abilityStats
execute if score abilitynumber2 abilities matches 8 run scoreboard players operation attackBuffSlot12 atkmodifiers += kirin abilityStats
execute if score abilitynumber2 abilities matches 8 if score slot10isatk booleans matches 1 if score slot12bleeding booleaneffects matches 0 run scoreboard players operation slot12 hp += kirinLeader abilityStats
execute if score abilitynumber2 abilities matches 8 run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p3]"}," used Mythical Empowerment on Slot 4!"]
execute if score abilitynumber2 abilities matches 8 at @e[name=slot12] run particle minecraft:trial_spawner_detection ~ ~1 ~ 0.9 0.9 0.9 0.1 100

#Ace
execute if score abilitynumber2 abilities matches 12 if score ward slot12 matches 0 run scoreboard players operation cooldown slot12 = aceSetCooldown abilityStats
execute if score abilitynumber2 abilities matches 12 run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p4]"}," used Ace of Spades on Slot 4!"]
execute if score abilitynumber2 abilities matches 12 if score ward slot12 matches 1.. run function chtoo:wardslot12
execute if score abilitynumber2 abilities matches 12 at @e[name=slot12] run particle minecraft:enchanted_hit ~ ~1 ~ 0.9 0.9 0.9 0.5 100
execute if score abilitynumber2 abilities matches 12 run execute if score character# slot14 matches 12 run scoreboard players operation durationSlot12 speedDebuffs = aceLeaderDuration abilityStats
execute if score abilitynumber2 abilities matches 12 run execute if score character# slot14 matches 12 run scoreboard players operation speedDebuffSlot12 speedDebuffs = aceLeader abilityStats
execute if score abilitynumber2 abilities matches 12 run execute if score character# slot14 matches 12 run scoreboard players operation speed slot12 -= aceLeader abilityStats
#Gabriel
execute if score abilitynumber2 abilities matches 22 run scoreboard players operation abilityDmg2 saves = gabriel abilityStats
execute if score abilitynumber2 abilities matches 22 if score slot13isatk booleans matches 1 run scoreboard players operation abilityDmg2 saves += slot13 atkmodifiers
execute if score abilitynumber2 abilities matches 22 if score slot14isatk booleans matches 1 run scoreboard players operation abilityDmg2 saves += slot14 atkmodifiers
execute if score abilitynumber2 abilities matches 22 if score slot15isatk booleans matches 1 run scoreboard players operation abilityDmg2 saves += slot15 atkmodifiers
execute if score abilitynumber2 abilities matches 22 if score slot13 hp matches ..0 run scoreboard players operation abilityDmg2 saves += gabrielDeath abilityStats
execute if score abilitynumber2 abilities matches 22 if score slot14 hp matches ..0 run scoreboard players operation abilityDmg2 saves += gabrielDeath abilityStats
execute if score abilitynumber2 abilities matches 22 if score slot15 hp matches ..0 run scoreboard players operation abilityDmg2 saves += gabrielDeath abilityStats
execute if score abilitynumber2 abilities matches 22 run scoreboard players operation abilityDmg2 saves += marks slot12
execute if score abilitynumber2 abilities matches 22 run scoreboard players operation abilityDmg2 saves /= atkmultiplier slot12
execute if score abilitynumber2 abilities matches 22 run execute if score ward slot12 matches 0 run scoreboard players operation shield slot12 -= abilityDmg2 saves
execute if score abilitynumber2 abilities matches 22 run execute if score ward slot12 matches 0 if score shield slot12 matches ..0 run scoreboard players operation slot12 hp += shield slot12
execute if score abilitynumber2 abilities matches 22 if score slot14isatk booleans matches 1 if score ward slot12 matches 0 run scoreboard players operation abilityDmg2 saves /= gabrielLeader abilityStats
execute if score abilitynumber2 abilities matches 22 if score slot14isatk booleans matches 1 if score ward slot12 matches 0 run scoreboard players operation slot14 hp += abilityDmg2 saves
execute if score abilitynumber2 abilities matches 22 at @e[name=slot12] run particle minecraft:flash{color:[1.000,1.000,1.000,1.00]} ~ ~1 ~ 0.9 0.9 0.9 0.5 100
execute if score abilitynumber2 abilities matches 22 run execute if score ward slot12 matches 1.. run function chtoo:wardslot12
#Gatsby
execute if score abilitynumber2 abilities matches 23 if score ward slot12 matches 0 run scoreboard players operation slot12 stun = gatsbyDuration abilityStats
execute if score abilitynumber2 abilities matches 23 if score ward slot12 matches 0 run scoreboard players operation savehp12 saves = slot12 hp
execute if score abilitynumber2 abilities matches 23 if score ward slot12 matches 0 run scoreboard players operation invincibleSlot12 booleaneffects = gatsbyDuration abilityStats
execute if score abilitynumber2 abilities matches 23 if score ward slot12 matches 0 run scoreboard players operation slot12EatenDuration abilities = gatsbyDuration abilityStats
execute if score abilitynumber2 abilities matches 23 if score ward slot12 matches 0 at @e[name=slot12] run execute at @e[distance=..4,type=!player] run tp @n[type=!minecraft:player,distance=..4] ~ ~-20 ~
execute if score abilitynumber2 abilities matches 23 run execute if score ward slot12 matches 1.. run function chtoo:wardslot12
execute if score abilitynumber2 abilities matches 23 if score durationSlot12-13 fear < gatsbyDuration abilityStats run scoreboard players operation durationSlot12-13 fear = gatsbyDuration abilityStats
execute if score abilitynumber2 abilities matches 23 if score durationSlot12-14 fear < gatsbyDuration abilityStats run scoreboard players operation durationSlot12-14 fear = gatsbyDuration abilityStats
execute if score abilitynumber2 abilities matches 23 if score durationSlot12-15 fear < gatsbyDuration abilityStats run scoreboard players operation durationSlot12-15 fear = gatsbyDuration abilityStats
execute if score abilitynumber2 abilities matches 23 if score durationSlot12-16 fear < gatsbyDuration abilityStats run scoreboard players operation durationSlot12-16 fear = gatsbyDuration abilityStats
execute if score abilitynumber2 abilities matches 23 if score ward slot10 matches 0 if score slot14isatk booleans matches 1 if score debuffDurationSlot10 atkmodifiers < gatsbyDuration abilityStats run scoreboard players operation debuffDurationSlot10 atkmodifiers = gatsbyDuration abilityStats
execute if score abilitynumber2 abilities matches 23 if score ward slot11 matches 0 if score slot14isatk booleans matches 1 if score debuffDurationSlot11 atkmodifiers < gatsbyDuration abilityStats run scoreboard players operation debuffDurationSlot11 atkmodifiers = gatsbyDuration abilityStats
execute if score abilitynumber2 abilities matches 23 if score ward slot9 matches 0 if score slot14isatk booleans matches 1 if score debuffDurationSlot9 atkmodifiers < gatsbyDuration abilityStats run scoreboard players operation debuffDurationSlot9 atkmodifiers = gatsbyDuration abilityStats
execute if score abilitynumber2 abilities matches 23 if score ward slot10 matches 0 if score slot14isatk booleans matches 1 run scoreboard players operation attackDebuffSlot10 atkmodifiers = gatsbyLeader abilityStats
execute if score abilitynumber2 abilities matches 23 if score ward slot11 matches 0 if score slot14isatk booleans matches 1 run scoreboard players operation attackDebuffSlot11 atkmodifiers = gatsbyLeader abilityStats
execute if score abilitynumber2 abilities matches 23 if score ward slot9 matches 0 if score slot14isatk booleans matches 1 run scoreboard players operation attackDebuffSlot9 atkmodifiers = gatsbyLeader abilityStats
execute if score abilitynumber2 abilities matches 23 if score ward slot10 matches 1.. if score slot14isatk booleans matches 1 run function chtoo:wardslot10
execute if score abilitynumber2 abilities matches 23 if score ward slot11 matches 1.. if score slot14isatk booleans matches 1 run function chtoo:wardslot11
execute if score abilitynumber2 abilities matches 23 if score ward slot9 matches 1.. if score slot14isatk booleans matches 1 run function chtoo:wardslot9
execute if score abilitynumber2 abilities matches 23 run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p4]"}," used Consume on Slot 4!"]
execute if score abilitynumber2 abilities matches 23 at @e[name=slot12] run particle minecraft:falling_nectar ~ ~1 ~ 0.9 0.9 0.9 0.1 100
execute if score abilitynumber2 abilities matches 23 if score slot14isatk booleans matches 1 at @e[name=slot10] run particle minecraft:falling_nectar ~ ~1 ~ 0.9 0.9 0.9 0.1 50
execute if score abilitynumber2 abilities matches 23 if score slot14isatk booleans matches 1 at @e[name=slot11] run particle minecraft:falling_nectar ~ ~1 ~ 0.9 0.9 0.9 0.1 50
execute if score abilitynumber2 abilities matches 23 if score slot14isatk booleans matches 1 at @e[name=slot9] run particle minecraft:falling_nectar ~ ~1 ~ 0.9 0.9 0.9 0.1 50
#Old Boomer
execute if score abilitynumber2 abilities matches 25 run scoreboard players operation abilityDmg2 saves = boomer abilityStats
execute if score abilitynumber2 abilities matches 25 if score slot13isatk booleans matches 1 run scoreboard players operation abilityDmg2 saves += slot13 atkmodifiers
execute if score abilitynumber2 abilities matches 25 if score slot14isatk booleans matches 1 run scoreboard players operation abilityDmg2 saves += slot14 atkmodifiers
execute if score abilitynumber2 abilities matches 25 if score slot15isatk booleans matches 1 run scoreboard players operation abilityDmg2 saves += slot15 atkmodifiers
execute if score abilitynumber2 abilities matches 25 run scoreboard players operation abilityDmg2 saves += marks slot12
execute if score abilitynumber2 abilities matches 25 run scoreboard players operation abilityDmg2 saves /= atkmultiplier slot12
execute if score abilitynumber2 abilities matches 25 run execute if score ward slot12 matches 0 run scoreboard players operation shield slot12 -= abilityDmg2 saves
execute if score abilitynumber2 abilities matches 25 run execute if score ward slot12 matches 0 if score shield slot12 matches ..0 run scoreboard players operation slot12 hp += shield slot12
execute if score abilitynumber2 abilities matches 25 run execute if score ward slot12 matches 1.. run function chtoo:wardslot12
execute if score abilitynumber2 abilities matches 25 at @e[name=slot12] run particle minecraft:explosion ~ ~1 ~ 0.9 0.9 0.9 0.1 100
execute if score abilitynumber2 abilities matches 25 if score slot14isatk booleans matches 1 at @e[name=slot11] run particle minecraft:explosion ~ ~1 ~ 0.9 0.9 0.9 0.1 50
execute if score abilitynumber2 abilities matches 25 run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p4]"}," used KABOOM! on Slot 4!"]
execute if score abilitynumber2 abilities matches 25 if score slot14isatk booleans matches 1 run scoreboard players operation abilityDmg2 saves = boomer abilityStats
execute if score abilitynumber2 abilities matches 25 if score slot14isatk booleans matches 1 run scoreboard players operation abilityDmg2 saves += slot14 atkmodifiers
execute if score abilitynumber2 abilities matches 25 if score slot14isatk booleans matches 1 run scoreboard players operation abilityDmg2 saves /= boomerLeader abilityStats
execute if score abilitynumber2 abilities matches 25 if score slot14isatk booleans matches 1 run scoreboard players operation abilityDmg2 saves += marks slot11
execute if score abilitynumber2 abilities matches 25 if score slot14isatk booleans matches 1 run scoreboard players operation abilityDmg2 saves /= atkmultiplier slot11
execute if score abilitynumber2 abilities matches 25 if score slot14isatk booleans matches 1 run execute if score ward slot11 matches 0 run scoreboard players operation shield slot11 -= abilityDmg2 saves
execute if score abilitynumber2 abilities matches 25 if score slot14isatk booleans matches 1 run execute if score ward slot11 matches 0 if score shield slot11 matches ..0 run scoreboard players operation slot11 hp += shield slot11
execute if score abilitynumber2 abilities matches 25 if score slot14isatk booleans matches 1 run execute if score ward slot11 matches 1.. run function chtoo:wardslot11

#Ripper
execute if score abilitynumber2 abilities matches 29 if score slot12 hp <= ripper abilityStats if score ward slot12 matches 0 if score invincibleSlot12 booleaneffects matches 0 run scoreboard players set slot12 hp 0
execute if score abilitynumber2 abilities matches 29 if score slot12 hp <= ripper abilityStats if score invincibleSlot12 booleaneffects matches 0 if score ward slot12 matches 1.. run function chtoo:wardslot12
execute if score abilitynumber2 abilities matches 29 run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p4]"}," used Execute on Slot 4!"]
execute if score abilitynumber2 abilities matches 29 at @e[name=slot12] run particle minecraft:raid_omen ~ ~1 ~ 0.9 0.9 0.9 0.1 100


#Domino
execute if score abilitynumber2 abilities matches 30 run scoreboard players operation abilityDmg2 saves = domino abilityStats
execute if score abilitynumber2 abilities matches 30 if score slot13isatk booleans matches 1 run scoreboard players operation abilityDmg2 saves += slot13 atkmodifiers
execute if score abilitynumber2 abilities matches 30 if score slot14isatk booleans matches 1 run scoreboard players operation abilityDmg2 saves += slot14 atkmodifiers
execute if score abilitynumber2 abilities matches 30 if score slot15isatk booleans matches 1 run scoreboard players operation abilityDmg2 saves += slot15 atkmodifiers
execute if score abilitynumber2 abilities matches 30 run scoreboard players operation abilityDmg2 saves += marks slot12
execute if score abilitynumber2 abilities matches 30 run scoreboard players operation abilityDmg2 saves /= atkmultiplier slot12
execute if score abilitynumber2 abilities matches 30 run execute if score ward slot12 matches 0 run scoreboard players operation shield slot12 -= abilityDmg2 saves
execute if score abilitynumber2 abilities matches 30 run execute if score ward slot12 matches 0 if score shield slot12 matches ..0 run scoreboard players operation slot12 hp += shield slot12
execute if score abilitynumber2 abilities matches 30 if score ward slot12 matches 0 if score durationSlot12 poison < dominoDuration abilityStats run scoreboard players operation durationSlot12 poison = dominoDuration abilityStats
execute if score abilitynumber2 abilities matches 30 if score ward slot12 matches 0 run scoreboard players operation slot12Poison poison += dominoPoison abilityStats
execute if score abilitynumber2 abilities matches 30 run execute if score ward slot12 matches 1.. run function chtoo:wardslot12
execute if score abilitynumber2 abilities matches 30 at @e[name=slot12] run particle minecraft:trial_omen ~ ~1 ~ 0.9 0.9 0.9 0.1 100
execute if score abilitynumber2 abilities matches 30 run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p4]"}," used Poison Dart on Slot 4!"]

#Scythe
execute if score abilitynumber2 abilities matches 32 if score ward slot12 matches 0 run scoreboard players operation slot12 hp /= scytheDivide abilityStats
execute if score abilitynumber2 abilities matches 32 if score ward slot12 matches 0 run scoreboard players operation slot12 hp *= scytheMult abilityStats
execute if score abilitynumber2 abilities matches 32 if score ward slot12 matches 0 if score slot14isatk booleans matches 1 if score durationSlot12 mark < scytheDuration abilityStats run scoreboard players operation durationSlot12 mark = scytheDuration abilityStats
execute if score abilitynumber2 abilities matches 32 if score ward slot12 matches 0 if score slot14isatk booleans matches 1 run scoreboard players operation marks slot12 += scytheLeader abilityStats
execute if score abilitynumber2 abilities matches 32 if score ward slot12 matches 1.. run function chtoo:wardslot12
execute if score abilitynumber2 abilities matches 32 at @e[name=slot12] run particle minecraft:sculk_soul ~ ~1 ~ 0.9 0.9 0.9 0.1 100
execute if score abilitynumber2 abilities matches 32 run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p4]"}," used Cull the Weak on Slot 4!"]

#Doc Basic Attack
execute if score abilitynumber2 abilities matches -1 if score ward slot12 matches 0 run scoreboard players operation slot12Disease disease += doc heroattack
execute if score abilitynumber2 abilities matches -1 if score ward slot12 matches 0 if score slot14isatk booleans matches 1 run scoreboard players operation slot12Disease disease += docLeader heroattack
execute if score abilitynumber2 abilities matches -1 run execute if score ward slot12 matches 1.. run function chtoo:wardslot12
execute if score abilitynumber2 abilities matches -1 at @e[name=slot12] run particle minecraft:trial_omen ~ ~1 ~ 0.9 0.9 0.9 0.1 50

#Subject ability
execute if score abilitynumber2 abilities matches 4 if score ward slot12 matches 0 if score durationSlot12 poison < subjectDuration abilityStats run scoreboard players operation durationSlot12 poison = subjectDuration abilityStats
execute if score abilitynumber2 abilities matches 4 if score ward slot12 matches 0 run scoreboard players operation slot12Poison poison += subject abilityStats
execute if score abilitynumber2 abilities matches 4 if score ward slot12 matches 0 if score slot14isatk booleans matches 1 run scoreboard players operation slot12Poison poison += subjectLeader abilityStats
execute if score abilitynumber2 abilities matches 4 at @e[name=slot12] run particle minecraft:trial_omen ~ ~1 ~ 0.9 0.9 0.9 0.1 50
execute if score abilitynumber2 abilities matches 4 run execute if score ward slot12 matches 1.. run function chtoo:wardslot12
execute if score abilitynumber2 abilities matches 4 run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p4]"}," used Contagion on Slot 4!"]

#Healing Totem
execute if score abilitynumber2 abilities matches -3 run execute if score slot12bleeding booleaneffects matches 0 run scoreboard players operation slot12 hp += healingTotemHeal spellStats
execute if score abilitynumber2 abilities matches -3 at @e[name=slot12] run particle minecraft:composter ~ ~1 ~ 0.9 0.9 0.9 0.1 50

#Eidolon Basic Attack
execute if score abilitynumber2 abilities matches -4 run execute if score ward slot12 matches 0 if score durationSlot13-12 fear <= eidolonFearDuration abilityStats if score slot13isatk booleans matches 1 run scoreboard players operation durationSlot13-12 fear = eidolonFearDuration abilityStats
execute if score abilitynumber2 abilities matches -4 run execute if score ward slot12 matches 0 if score durationSlot14-12 fear <= eidolonFearDuration abilityStats if score slot14isatk booleans matches 1 run scoreboard players operation durationSlot14-12 fear = eidolonFearDuration abilityStats
execute if score abilitynumber2 abilities matches -4 run execute if score ward slot12 matches 0 if score durationSlot15-12 fear <= eidolonFearDuration abilityStats if score slot15isatk booleans matches 1 run scoreboard players operation durationSlot15-12 fear = eidolonFearDuration abilityStats
execute if score abilitynumber2 abilities matches -4 run scoreboard players operation abilityDmg2 saves = eidolon heroattack
execute if score abilitynumber2 abilities matches -4 if score slot13isatk booleans matches 1 run scoreboard players operation abilityDmg2 saves += slot13 atkmodifiers
execute if score abilitynumber2 abilities matches -4 if score slot14isatk booleans matches 1 run scoreboard players operation abilityDmg2 saves += slot14 atkmodifiers
execute if score abilitynumber2 abilities matches -4 if score slot15isatk booleans matches 1 run scoreboard players operation abilityDmg2 saves += slot15 atkmodifiers
execute if score abilitynumber2 abilities matches -4 run scoreboard players operation abilityDmg2 saves += marks slot12
execute if score abilitynumber2 abilities matches -4 run scoreboard players operation abilityDmg2 saves /= atkmultiplier slot12
execute if score abilitynumber2 abilities matches -4 run execute if score ward slot12 matches 0 run scoreboard players operation shield slot12 -= abilityDmg2 saves
execute if score abilitynumber2 abilities matches -4 run execute if score ward slot12 matches 0 if score shield slot12 matches ..0 run scoreboard players operation slot12 hp += shield slot12
execute if score abilitynumber2 abilities matches -4 run execute if score ward slot12 matches 1.. run function chtoo:wardslot12
execute if score abilitynumber2 abilities matches -4 run execute at @e[name=slot12,type=armor_stand] run particle minecraft:crit ~ ~1 ~ 0.9 0.9 0.9 0.5 100

#Jones Ability
execute if score abilitynumber2 abilities matches 31 run scoreboard players operation abilityDmg2 saves = jonesDmg abilityStats
execute if score abilitynumber2 abilities matches 31 if score slot13isatk booleans matches 1 run scoreboard players operation abilityDmg2 saves += slot13 atkmodifiers
execute if score abilitynumber2 abilities matches 31 if score slot14isatk booleans matches 1 run scoreboard players operation abilityDmg2 saves += slot14 atkmodifiers
execute if score abilitynumber2 abilities matches 31 if score slot15isatk booleans matches 1 run scoreboard players operation abilityDmg2 saves += slot15 atkmodifiers
execute if score abilitynumber2 abilities matches 31 run scoreboard players operation abilityDmg2 saves += marks slot12
execute if score abilitynumber2 abilities matches 31 run scoreboard players operation abilityDmg2 saves /= atkmultiplier slot12
execute if score abilitynumber2 abilities matches 31 run execute if score ward slot12 matches 0 run scoreboard players operation shield slot12 -= abilityDmg2 saves
execute if score abilitynumber2 abilities matches 31 run execute if score ward slot12 matches 0 if score shield slot12 matches ..0 run scoreboard players operation slot12 hp += shield slot12
execute if score abilitynumber2 abilities matches 31 run execute if score ward slot12 matches 0 run scoreboard players operation disarmedslot12 booleaneffects = jones abilityStats
execute if score abilitynumber2 abilities matches 31 run execute if score ward slot12 matches 1 run function chtoo:wardslot12
execute if score abilitynumber2 abilities matches 31 run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p4]"}," used Lasso on Slot 4!"]
execute if score abilitynumber2 abilities matches 31 at @e[name=slot12] run particle minecraft:crit ~ ~1 ~ 0.9 0.9 0.9 0.1 100

#Sherman Basic
execute if score abilitynumber2 abilities matches -5 run execute unless score slot12bleeding booleaneffects matches 1.. run scoreboard players operation slot12 hp += sherman heroattack
execute if score abilitynumber2 abilities matches -5 run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p3]"}," healed Slot 4!"]
execute if score abilitynumber2 abilities matches -5 run execute at @n[type=armor_stand,name=slot12] run particle minecraft:composter ~ ~1 ~ 0.9 0.9 0.9 0.5 80

#Sherman Ability
execute if score abilitynumber2 abilities matches 33 run execute if score ward slot12 matches 0 if score debuffDurationSlot12 atkmodifiers < shermanDuration abilityStats run scoreboard players operation debuffDurationSlot12 atkmodifiers = shermanDuration abilityStats
execute if score abilitynumber2 abilities matches 33 run execute if score ward slot12 matches 0 run scoreboard players operation attackDebuffSlot12 atkmodifiers += shermanDebuff abilityStats
execute if score abilitynumber2 abilities matches 33 run scoreboard players operation abilityDmg saves = sherman abilityStats
execute if score abilitynumber2 abilities matches 33 if score slot13isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot13 atkmodifiers
execute if score abilitynumber2 abilities matches 33 if score slot14isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot14 atkmodifiers
execute if score abilitynumber2 abilities matches 33 if score slot15isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot15 atkmodifiers
execute if score abilitynumber2 abilities matches 33 run scoreboard players operation abilityDmg saves += marks slot12
execute if score abilitynumber2 abilities matches 33 run scoreboard players operation abilityDmg saves /= atkmultiplier slot12
execute if score abilitynumber2 abilities matches 33 run execute if score ward slot12 matches 0 run scoreboard players operation shield slot12 -= abilityDmg saves
execute if score abilitynumber2 abilities matches 33 run execute if score ward slot12 matches 0 if score shield slot12 matches ..0 run scoreboard players operation slot12 hp += shield slot12
execute if score abilitynumber2 abilities matches 33 run execute if score ward slot12 matches 1.. run function chtoo:wardslot12
execute if score abilitynumber2 abilities matches 33 at @e[name=slot12] run particle minecraft:pale_oak_leaves ~ ~1 ~ 0.9 0.9 0.9 0.1 100
execute if score abilitynumber2 abilities matches 33 at @e[name=slot12] run particle minecraft:explosion ~ ~1 ~ 0.9 0.9 0.9 0.1 10
execute if score abilitynumber2 abilities matches 33 at @e[name=slot11] run particle minecraft:pale_oak_leaves ~ ~1 ~ 0.9 0.9 0.9 0.1 50
execute if score abilitynumber2 abilities matches 33 run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p4]"}," used Grasping Roots on Slot 4!"]
execute if score abilitynumber2 abilities matches 33 run scoreboard players operation abilityDmg saves = sherman abilityStats
execute if score abilitynumber2 abilities matches 33 if score slot13isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot13 atkmodifiers
execute if score abilitynumber2 abilities matches 33 if score slot14isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot14 atkmodifiers
execute if score abilitynumber2 abilities matches 33 if score slot15isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot15 atkmodifiers
execute if score abilitynumber2 abilities matches 33 run scoreboard players operation abilityDmg saves /= shermanSplash abilityStats
execute if score abilitynumber2 abilities matches 33 run scoreboard players operation abilityDmg saves += marks slot11
execute if score abilitynumber2 abilities matches 33 run scoreboard players operation abilityDmg saves /= atkmultiplier slot11
execute if score abilitynumber2 abilities matches 33 run execute if score ward slot11 matches 0 run scoreboard players operation shield slot11 -= abilityDmg saves
execute if score abilitynumber2 abilities matches 33 run execute if score ward slot11 matches 0 if score shield slot11 matches ..0 run scoreboard players operation slot11 hp += shield slot11
execute if score abilitynumber2 abilities matches 33 run execute if score ward slot11 matches 1.. run function chtoo:wardslot11

#Eidolon Ability
execute if score abilitynumber2 abilities matches 28 run scoreboard players operation abilityDmg2 saves = eidolon abilityStats
execute if score abilitynumber2 abilities matches 28 if score slot13isatk booleans matches 1 run scoreboard players operation abilityDmg2 saves += slot13 atkmodifiers
execute if score abilitynumber2 abilities matches 28 if score slot14isatk booleans matches 1 run scoreboard players operation abilityDmg2 saves += slot14 atkmodifiers
execute if score abilitynumber2 abilities matches 28 if score slot15isatk booleans matches 1 run scoreboard players operation abilityDmg2 saves += slot15 atkmodifiers
execute if score abilitynumber2 abilities matches 28 run scoreboard players operation abilityDmg2 saves += marks slot12
execute if score abilitynumber2 abilities matches 28 run scoreboard players operation abilityDmg2 saves /= atkmultiplier slot12
execute if score abilitynumber2 abilities matches 28 run execute if score ward slot12 matches 0 run scoreboard players operation shield slot12 -= abilityDmg2 saves
execute if score abilitynumber2 abilities matches 28 run execute if score ward slot12 matches 0 if score slot14isatk booleans matches 1 if score durationSlot14-12 fear <= eidolonLeaderFearDuration abilityStats run scoreboard players operation durationSlot14-12 fear = eidolonLeaderFearDuration abilityStats
execute if score abilitynumber2 abilities matches 28 run execute if score ward slot12 matches 0 if score shield slot12 matches ..0 run scoreboard players operation slot12 hp += shield slot12
execute if score abilitynumber2 abilities matches 28 run execute if score ward slot12 matches 1.. run function chtoo:wardslot12
execute if score abilitynumber2 abilities matches 28 run execute at @e[name=slot12,type=armor_stand] run particle raid_omen ~ ~1 ~ 0.3 0.3 0.3 2 100

#Barley
execute if score abilitynumber2 abilities matches -36 if score barleyPart1 abilities matches 5 if score ward slot12 matches ..0 run scoreboard players operation durationSlot13-12 fear = barleyDuration abilityStats 
execute if score abilitynumber2 abilities matches -36 if score barleyPart1 abilities matches 6 if score ward slot12 matches ..0 run scoreboard players operation durationSlot14-12 fear = barleyDuration abilityStats 
execute if score abilitynumber2 abilities matches -36 if score barleyPart1 abilities matches 7 if score ward slot12 matches ..0 run scoreboard players operation durationSlot15-12 fear = barleyDuration abilityStats 
execute if score abilitynumber2 abilities matches -36 if score barleyPart1 abilities matches 8 if score ward slot12 matches ..0 run scoreboard players operation durationSlot16-12 fear = barleyDuration abilityStats 
execute if score abilitynumber2 abilities matches -36 if score ward slot12 matches ..0 if score debuffDurationSlot12 atkmodifiers < barleyDuration abilityStats run scoreboard players operation debuffDurationSlot12 atkmodifiers = barleyDuration abilityStats
execute if score abilitynumber2 abilities matches -36 if score ward slot12 matches ..0 run scoreboard players operation attackDebuffSlot12 atkmodifiers += barley abilityStats
execute if score abilitynumber2 abilities matches -36 if score ward slot12 matches 1.. run function chtoo:wardslot12
execute if score abilitynumber2 abilities matches -36 run execute at @n[type=armor_stand,name=slot12] run particle trial_omen ~ ~1 ~ 0.9 0.9 0.9 0.1 400
execute if score abilitynumber2 abilities matches -36 run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p4]"}," used Spookcrow to fear Slot 4!"]

execute if score abilitynumber2 abilities matches 36 run scoreboard players set barleyPart1 abilities 4
execute if score abilitynumber2 abilities matches 36 if score buffDurationSlot12 atkmodifiers < barleyDuration abilityStats run scoreboard players operation buffDurationSlot12 atkmodifiers = barleyDuration abilityStats
execute if score abilitynumber2 abilities matches 36 run scoreboard players operation attackBuffSlot12 atkmodifiers += barley abilityStats
execute if score abilitynumber2 abilities matches 36 run function chtoo:abilitygivetargetsp3
execute if score abilitynumber2 abilities matches 36 run execute at @n[type=armor_stand,name=slot12] run particle raid_omen ~ ~1 ~ 0.9 0.9 0.9 0.1 400
execute if score abilitynumber2 abilities matches 36 run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p3]"}," used Spookcrow to make Slot 4 scary!"]

#Igor
execute if score abilitynumber2 abilities matches 38 if score cooldown slot12 matches 1.. run scoreboard players operation cooldown slot12 -= igor abilityStats
execute if score abilitynumber2 abilities matches 38 run execute at @e[type=armor_stand,name=slot12] run particle witch ~ ~1 ~ 0.5 0.8 0.5 0.1 100
execute if score abilitynumber2 abilities matches 38 run execute if score durationSlot12 speedBuffs < igorDuration abilityStats run scoreboard players operation durationSlot12 speedBuffs = igorDuration abilityStats
execute if score abilitynumber2 abilities matches 38 run scoreboard players operation speed slot12 += igorSpBuff abilityStats
execute if score abilitynumber2 abilities matches 38 run scoreboard players operation speedBuffSlot12 speedBuffs += igorSpBuff abilityStats
execute if score abilitynumber2 abilities matches 38 run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p3]"}," used Black Lagoon Brew on Slot 4!"]
execute if score abilitynumber2 abilities matches 38 if score slot10isatk booleans matches 1 run execute if score invincibleSlot12 booleaneffects < igorDuration abilityStats run scoreboard players operation invincibleSlot12 booleaneffects = igorDuration abilityStats
execute if score abilitynumber2 abilities matches 38 if score slot10isatk booleans matches 1 run scoreboard players operation savehp12 saves = slot12 hp

#Zeebo
execute if score abilitynumber2 abilities matches 40 if score ward slot12 matches ..0 unless score curse slot12 matches 5 unless score curse slot12 matches 2 run scoreboard players set curseStacks slot12 0
execute if score abilitynumber2 abilities matches 40 if score ward slot12 matches ..0 unless score curse slot12 matches 5 unless score curse slot12 matches 2 run scoreboard players set curseDuration slot12 -1
execute if score abilitynumber2 abilities matches 40 if score ward slot12 matches ..0 unless score curse slot12 matches 5 run scoreboard players set curse slot12 2
execute if score abilitynumber2 abilities matches 40 if score ward slot12 matches ..0 unless score curse slot12 matches 5 if score curse slot12 matches 2 run scoreboard players add curseStacks slot12 1
execute if score abilitynumber2 abilities matches 40 if score ward slot12 matches ..0 run execute if score durationSlot12 burn < zeeboDuration abilityStats run scoreboard players operation durationSlot12 burn = zeeboDuration abilityStats
execute if score abilitynumber2 abilities matches 40 if score ward slot12 matches ..0 run scoreboard players operation slot12Burn burn += zeeboBurn abilityStats
execute if score abilitynumber2 abilities matches 40 run execute at @e[type=armor_stand,name=slot12] run summon firework_rocket ~ ~2 ~ {LifeTime:1,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"burst",has_twinkle:true,has_trail:true,colors:[I;13894251,16746496,16770560],fade_colors:[I;10224278]}]}}}}
execute if score abilitynumber2 abilities matches 40 run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p4]"}," used Last Laugh on Slot 4!"]
execute if score abilitynumber2 abilities matches 40 run execute at @e[type=armor_stand,name=slot12] run summon firework_rocket ~ ~2 ~ {LifeTime:1,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"burst",has_twinkle:true,has_trail:true,colors:[I;13894251,16746496,16770560],fade_colors:[I;10224278]}]}}}}
execute if score abilitynumber2 abilities matches 40 if score ward slot12 matches 1.. run function chtoo:wardslot12

#Fenrir
execute if score abilitynumber2 abilities matches 41 if score ward slot12 matches ..0 unless score curse slot12 matches 5 unless score curse slot12 matches 3 run scoreboard players set curseStacks slot12 0
execute if score abilitynumber2 abilities matches 41 if score ward slot12 matches ..0 unless score curse slot12 matches 5 unless score curse slot12 matches 3 run scoreboard players set curseDuration slot12 -1
execute if score abilitynumber2 abilities matches 41 if score ward slot12 matches ..0 unless score character# slot12 matches 41 unless score curse slot12 matches 5 run scoreboard players set curse slot12 3
execute if score abilitynumber2 abilities matches 41 run scoreboard players operation abilityDmg2 saves = fenrir abilityStats
execute if score abilitynumber2 abilities matches 41 if score slot13isatk booleans matches 1 run scoreboard players operation abilityDmg2 saves += slot13 atkmodifiers
execute if score abilitynumber2 abilities matches 41 if score slot14isatk booleans matches 1 run scoreboard players operation abilityDmg2 saves += slot14 atkmodifiers
execute if score abilitynumber2 abilities matches 41 if score slot15isatk booleans matches 1 run scoreboard players operation abilityDmg2 saves += slot15 atkmodifiers
execute if score abilitynumber2 abilities matches 41 run scoreboard players operation abilityDmg2 saves += marks slot12
execute if score abilitynumber2 abilities matches 41 run scoreboard players operation abilityDmg2 saves /= atkmultiplier slot12
execute if score abilitynumber2 abilities matches 41 run execute if score ward slot12 matches ..0 run scoreboard players operation shield slot12 -= abilityDmg2 saves
execute if score abilitynumber2 abilities matches 41 run execute at @n[type=armor_stand,name=slot12] run particle enchanted_hit ~ ~1 ~ 0.9 0.9 0.9 0.1 400
execute if score abilitynumber2 abilities matches 41 run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p4]"}," used Mark of the Wolf on Slot 4!"]
execute if score abilitynumber2 abilities matches 41 run execute if score ward slot12 matches 0 if score shield slot12 matches ..0 run scoreboard players operation slot12 hp += shield slot12

execute if score abilitynumber2 abilities matches 41 if score ward slot12 matches 1.. run function chtoo:wardslot12

#Grendel
execute if score abilitynumber2 abilities matches 43 run scoreboard players operation abilityDmg2 saves = grendel abilityStats
execute if score abilitynumber2 abilities matches 43 if score slot13isatk booleans matches 1 run scoreboard players operation abilityDmg2 saves += slot13 atkmodifiers
execute if score abilitynumber2 abilities matches 43 if score slot14isatk booleans matches 1 run scoreboard players operation abilityDmg2 saves += slot14 atkmodifiers
execute if score abilitynumber2 abilities matches 43 if score slot15isatk booleans matches 1 run scoreboard players operation abilityDmg2 saves += slot15 atkmodifiers
execute if score abilitynumber2 abilities matches 43 run scoreboard players operation abilityDmg2 saves += marks slot12
execute if score abilitynumber2 abilities matches 43 run scoreboard players operation abilityDmg2 saves /= atkmultiplier slot12
execute if score abilitynumber2 abilities matches 43 run execute if score ward slot12 matches ..0 run scoreboard players operation shield slot12 -= abilityDmg2 saves
execute if score abilitynumber2 abilities matches 43 run execute if score ward slot12 matches ..0 run scoreboard players operation slot12Disease disease += grendelDisease abilityStats
execute if score abilitynumber2 abilities matches 43 run execute at @e[type=armor_stand,name=slot12] run particle minecraft:noxious_gas ~ ~1 ~ 0.7 0.7 0.7 0.05 200
execute if score abilitynumber2 abilities matches 43 if score ward slot12 matches 1.. run function chtoo:wardslot12
execute if score abilitynumber2 abilities matches 43 run function chtoo:abilitygivetargetsp4
execute if score abilitynumber2 abilities matches -43 run scoreboard players operation abilityDmg2 saves = grendel abilityStats
execute if score abilitynumber2 abilities matches -43 if score slot13isatk booleans matches 1 run scoreboard players operation abilityDmg2 saves += slot13 atkmodifiers
execute if score abilitynumber2 abilities matches -43 if score slot14isatk booleans matches 1 run scoreboard players operation abilityDmg2 saves += slot14 atkmodifiers
execute if score abilitynumber2 abilities matches -43 if score slot15isatk booleans matches 1 run scoreboard players operation abilityDmg2 saves += slot15 atkmodifiers
execute if score abilitynumber2 abilities matches -43 run scoreboard players operation abilityDmg2 saves += marks slot12
execute if score abilitynumber2 abilities matches -43 run scoreboard players operation abilityDmg2 saves /= atkmultiplier slot12
execute if score abilitynumber2 abilities matches -43 run execute if score ward slot12 matches ..0 run scoreboard players operation shield slot12 -= abilityDmg2 saves
execute if score abilitynumber2 abilities matches -43 run execute if score ward slot12 matches ..0 run scoreboard players operation slot12Disease disease += grendelDisease abilityStats
execute if score abilitynumber2 abilities matches -43 run execute at @e[type=armor_stand,name=slot12] run particle minecraft:noxious_gas ~ ~1 ~ 0.7 0.7 0.7 0.05 200
execute if score abilitynumber2 abilities matches -43 if score ward slot12 matches 1.. run function chtoo:wardslot12
execute if score abilitynumber2 abilities matches -43 run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p4]"}," used Piercing Pestilence on Slot 4!"]
execute if score abilitynumber2 abilities matches 43 run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p4]"}," used Piercing Pestilence on Slot 4!"]
#Frank
execute if score abilitynumber2 abilities matches 34 run scoreboard players operation abilityDmg2 saves = frank abilityStats
execute if score abilitynumber2 abilities matches 34 run scoreboard players operation shield slot12 -= abilityDmg2 saves
execute if score abilitynumber2 abilities matches 34 run scoreboard players operation slot12 hp += shield slot12
execute if score abilitynumber2 abilities matches 34 run execute at @e[name=slot12,type=armor_stand] run particle minecraft:angry_villager ~ ~1 ~ 0.9 0.9 0.9 0.5 15
execute if score abilitynumber2 abilities matches 34 run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p3]"}," used IT'S ALIVE! to damage Slot 4!"]
execute if score abilitynumber2 abilities matches 34 run function chtoo:abilitygivetargetsp3

execute if score abilitynumber2 abilities matches -34 run execute if score ward slot12 matches 0 run scoreboard players operation slot12 stun = frankDuration abilityStats
execute if score abilitynumber2 abilities matches -34 run execute if score ward slot12 matches 1.. run function chtoo:wardslot12
execute if score abilitynumber2 abilities matches -34 run execute at @e[name=slot12,type=armor_stand] run particle minecraft:flash{color:[1.000,1.000,1.000,1.00]} ~ ~1 ~ 0.9 0.9 0.9 0.5 100
execute if score abilitynumber2 abilities matches -34 run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p4]"}," used IT'S ALIVE! to stun Slot 4!"]

#Stein
execute if score abilitynumber2 abilities matches 35 run scoreboard players operation abilityDmg2 saves = stein abilityStats
execute if score abilitynumber2 abilities matches 35 if score slot13isatk booleans matches 1 run scoreboard players operation abilityDmg2 saves += slot13 atkmodifiers
execute if score abilitynumber2 abilities matches 35 if score slot14isatk booleans matches 1 run scoreboard players operation abilityDmg2 saves += slot14 atkmodifiers
execute if score abilitynumber2 abilities matches 35 if score slot15isatk booleans matches 1 run scoreboard players operation abilityDmg2 saves += slot15 atkmodifiers
execute if score abilitynumber2 abilities matches 35 run scoreboard players operation abilityDmg2 saves += marks slot12
execute if score abilitynumber2 abilities matches 35 run scoreboard players operation abilityDmg2 saves /= atkmultiplier slot12
execute if score abilitynumber2 abilities matches 35 run execute if score ward slot12 matches 0 run scoreboard players operation shield slot12 -= abilityDmg2 saves
execute if score abilitynumber2 abilities matches 35 run execute if score ward slot12 matches 0 if score shield slot12 matches ..0 run scoreboard players operation slot12 hp += shield slot12
execute if score abilitynumber2 abilities matches 35 run execute if score ward slot12 matches 1.. run function chtoo:wardslot12
execute if score abilitynumber2 abilities matches 35 run execute at @e[name=slot12,type=armor_stand] run particle raid_omen ~ ~1 ~ 0.9 0.9 0.9 2 100
execute if score abilitynumber2 abilities matches 35 run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p4]"}," used Reanimation Beam to damage Slot 4!"]
execute if score abilitynumber2 abilities matches 35 run function chtoo:abilitygivetargetsp3reverse

execute if score abilitynumber2 abilities matches -35 if score slot12bleeding booleaneffects matches 0 run scoreboard players operation slot12 hp += abilityDmg2 saves
execute if score abilitynumber2 abilities matches -35 if score character# slot10 matches 35 run function chtoo:cleanseslot12
execute if score abilitynumber2 abilities matches -35 if score character# slot10 matches 34 run function chtoo:cleanseslot12
execute if score abilitynumber2 abilities matches -35 run execute at @e[name=slot12,type=armor_stand] run particle trial_omen ~ ~1 ~ 0.9 0.9 0.9 2 100
execute if score abilitynumber2 abilities matches -35 run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p3]"}," used Reanimation Beam to heal Slot 4!"]

#Boogaloo
execute if score abilitynumber2 abilities matches 37 unless score curse slot12 matches 5 run scoreboard players set curseDuration slot12 0
execute if score abilitynumber2 abilities matches 37 if score curseStacks slot12 matches 1.. unless score curse slot12 matches 5 run scoreboard players set curseStacks slot12 -1
execute if score abilitynumber2 abilities matches 37 unless score curse slot12 matches 5 run scoreboard players set curse slot12 1
execute if score abilitynumber2 abilities matches 37 run execute at @e[name=slot12,type=armor_stand] run particle minecraft:sculk_soul ~ ~1 ~ 0.9 0.9 0.9 0.15 30
execute if score abilitynumber2 abilities matches 37 run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p4]"}," used Devour Soul on Slot 4!"]

#Anubis
execute if score abilitynumber2 abilities matches 42 if score ward slot12 matches 0 run scoreboard players operation abilityDmg2 saves = anubis abilityStats
execute if score abilitynumber2 abilities matches 42 if score ward slot12 matches 0 run scoreboard players operation abilityDmg2 saves *= anubisUnusedP2 saves
execute if score abilitynumber2 abilities matches 42 run execute at @e[name=slot12,type=armor_stand] run particle minecraft:sonic_boom ~ ~2 ~ 0.03 0.03 0.03 0.01 100
execute if score abilitynumber2 abilities matches 42 run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p4]"}," used Wrath of the Desert on Slot 4!"]
execute if score abilitynumber2 abilities matches 42 if score slot13isatk booleans matches 1 run scoreboard players operation abilityDmg2 saves += slot13 atkmodifiers
execute if score abilitynumber2 abilities matches 42 if score slot14isatk booleans matches 1 run scoreboard players operation abilityDmg2 saves += slot14 atkmodifiers
execute if score abilitynumber2 abilities matches 42 if score slot15isatk booleans matches 1 run scoreboard players operation abilityDmg2 saves += slot15 atkmodifiers
execute if score abilitynumber2 abilities matches 42 run scoreboard players operation abilityDmg2 saves += marks slot12
execute if score abilitynumber2 abilities matches 42 run scoreboard players operation abilityDmg2 saves /= atkmultiplier slot12
execute if score abilitynumber2 abilities matches 42 run execute if score ward slot12 matches 0 run scoreboard players operation shield slot12 -= abilityDmg2 saves
execute if score abilitynumber2 abilities matches 42 run execute if score ward slot12 matches 0 if score shield slot12 matches ..0 run scoreboard players operation slot12 hp += shield slot12
execute if score abilitynumber2 abilities matches 42 if score ward slot12 matches 1.. run function chtoo:wardslot12

#This goes at the bottom
execute if score shield slot9 matches ..0 run scoreboard players set shield slot9 0
execute if score shield slot10 matches ..0 run scoreboard players set shield slot10 0
execute if score shield slot11 matches ..0 run scoreboard players set shield slot11 0
execute if score shield slot12 matches ..0 run scoreboard players set shield slot12 0
execute unless score abilitynumber2 abilities matches 34 unless score abilitynumber2 abilities matches 35 unless score abilitynumber2 abilities matches 36 unless score abilitynumber2 abilities matches 43 run function chtoo:turnend
#Make sure to add burn to your abilities

#Token Abilities
execute if score abilitynumber2 abilities matches 34 run scoreboard players set abilitynumber2 abilities -34
execute if score abilitynumber2 abilities matches 35 run scoreboard players set abilitynumber2 abilities -35
execute if score abilitynumber2 abilities matches 36 run scoreboard players set abilitynumber2 abilities -36
execute if score abilitynumber2 abilities matches 43 run scoreboard players set abilitynumber2 abilities -43
