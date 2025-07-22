effect clear @a[tag=game2] strength
clear @p[tag=game2]
#Arthur Ability
execute if score abilitynumber2 abilities matches 2 run function chtoo:cleanseslot9
#Deuce ability
execute if score abilitynumber2 abilities matches 3 run scoreboard players operation abilityDmg2 saves = deuce heroattack
execute if score abilitynumber2 abilities matches 3 if score slot13isatk booleans matches 1 run scoreboard players operation abilityDmg2 saves += slot13 atkmodifiers
execute if score abilitynumber2 abilities matches 3 if score slot14isatk booleans matches 1 run scoreboard players operation abilityDmg2 saves += slot14 atkmodifiers
execute if score abilitynumber2 abilities matches 3 if score slot15isatk booleans matches 1 run scoreboard players operation abilityDmg2 saves += slot15 atkmodifiers
execute if score abilitynumber2 abilities matches 3 run scoreboard players operation abilityDmg2 saves += marks slot9
execute if score abilitynumber2 abilities matches 3 if score slot14isatk booleans matches 1 run scoreboard players operation abilityDmg2 saves *= deuceMultLeader abilityStats
execute if score abilitynumber2 abilities matches 3 if score slot14isatk booleans matches 0 run scoreboard players operation abilityDmg2 saves *= deuceMult abilityStats
execute if score abilitynumber2 abilities matches 3 run scoreboard players operation abilityDmg2 saves /= atkmultiplier slot9
execute if score abilitynumber2 abilities matches 3 run execute if score ward slot9 matches 0 run scoreboard players operation shield slot9 -= abilityDmg2 saves
execute if score abilitynumber2 abilities matches 3 run execute if score ward slot9 matches 0 if score shield slot9 matches ..0 run scoreboard players operation slot9 hp += shield slot9
execute if score abilitynumber2 abilities matches 3 run execute if score ward slot9 matches 1.. run function chtoo:wardslot9
execute if score abilitynumber2 abilities matches 3 run execute at @e[name=slot9,type=armor_stand] run particle crit ~ ~1 ~ 0.3 0.3 0.3 2 100
execute if score abilitynumber2 abilities matches 3 run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p4]"}," used Double Punch on Slot 1!"]

#Garabaldi Ability
execute if score abilitynumber2 abilities matches 24 if score slot9 hp matches 1.. if score slot9bleeding booleaneffects matches 0 run scoreboard players operation slot9 hp += garabaldiHeal abilityStats
execute if score abilitynumber2 abilities matches 24 if score slot9 hp matches 1.. if score slot9bleeding booleaneffects matches 0 if score character# slot10 matches 24 run scoreboard players operation slot9 hp += garabaldiLeader abilityStats
execute if score abilitynumber2 abilities matches 24 if score slot9 hp matches 1.. run scoreboard players set ward slot9 2
execute if score abilitynumber2 abilities matches 24 if score slot9 hp matches 1.. run scoreboard players set ward slot9 2
execute if score abilitynumber2 abilities matches 24 run execute at @n[type=armor_stand,name=slot9] run particle minecraft:composter ~ ~1 ~ 0.9 0.9 0.9 0.5 100
execute if score abilitynumber2 abilities matches 24 run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p3]"}," used Bubble Shield on Slot 1!"]

#Juniper Ability
execute if score abilitynumber2 abilities matches 27 run scoreboard players operation abilityDmg2 saves = juniper abilityStats
execute if score abilitynumber2 abilities matches 27 if score slot13isatk booleans matches 1 run scoreboard players operation abilityDmg2 saves += slot13 atkmodifiers
execute if score abilitynumber2 abilities matches 27 if score slot14isatk booleans matches 1 run scoreboard players operation abilityDmg2 saves += slot14 atkmodifiers
execute if score abilitynumber2 abilities matches 27 if score slot15isatk booleans matches 1 run scoreboard players operation abilityDmg2 saves += slot15 atkmodifiers
execute if score abilitynumber2 abilities matches 27 run scoreboard players operation abilityDmg2 saves += marks slot9
execute if score abilitynumber2 abilities matches 27 run scoreboard players operation abilityDmg2 saves /= atkmultiplier slot9
execute if score abilitynumber2 abilities matches 27 run execute if score ward slot9 matches 0 run scoreboard players operation shield slot9 -= abilityDmg2 saves
execute if score abilitynumber2 abilities matches 27 run execute if score ward slot9 matches 0 run scoreboard players operation slot9 stun = juniperStun abilityStats
execute if score abilitynumber2 abilities matches 27 run execute if score ward slot9 matches 0 if score shield slot9 matches ..0 run scoreboard players operation slot9 hp += shield slot9
execute if score abilitynumber2 abilities matches 27 run execute if score ward slot9 matches 1.. run function chtoo:wardslot9
execute if score abilitynumber2 abilities matches 27 run execute at @e[name=slot9,type=armor_stand] run particle firefly ~ ~1 ~ 0.3 0.3 0.3 1 100

execute if score abilitynumber2 abilities matches 27 run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p4]"}," used Pixie Dust on Slot 1!"]

#Juniper Basic
execute if score abilitynumber2 abilities matches -2 run execute if score slot9bleeding booleaneffects matches 0 run scoreboard players operation slot9 hp += juniper heroattack
execute if score abilitynumber2 abilities matches -2 run execute at @n[type=armor_stand,name=slot9] run particle minecraft:composter ~ ~1 ~ 0.9 0.9 0.9 0.5 100
execute if score abilitynumber2 abilities matches -2 run execute if score slot9bleeding booleaneffects matches 0 if score slot10isatk booleans matches 1 run scoreboard players operation slot9 hp += juniperLeader heroattack

#K.O.N.G ability
execute if score abilitynumber2 abilities matches 7 run scoreboard players operation abilityDmg2 saves = kong abilityStats
execute if score abilitynumber2 abilities matches 7 if score slot13isatk booleans matches 1 run scoreboard players operation abilityDmg2 saves += slot13 atkmodifiers
execute if score abilitynumber2 abilities matches 7 if score slot14isatk booleans matches 1 run scoreboard players operation abilityDmg2 saves += slot14 atkmodifiers
execute if score abilitynumber2 abilities matches 7 if score slot15isatk booleans matches 1 run scoreboard players operation abilityDmg2 saves += slot15 atkmodifiers
execute if score abilitynumber2 abilities matches 7 run scoreboard players operation abilityDmg2 saves += marks slot9
execute if score abilitynumber2 abilities matches 7 run scoreboard players operation abilityDmg2 saves /= atkmultiplier slot9
execute if score abilitynumber2 abilities matches 7 run execute if score ward slot9 matches 0 run scoreboard players operation shield slot9 -= abilityDmg2 saves
execute if score abilitynumber2 abilities matches 7 run execute if score ward slot9 matches 0 if score kongSpDebuffDuration abilityStats > durationSlot9 speedDebuffs run scoreboard players operation durationSlot9 speedDebuffs = kongSpDebuffDuration abilityStats
execute if score abilitynumber2 abilities matches 7 run execute if score ward slot9 matches 0 if score kongDmgDebuffDuration abilityStats > debuffDurationSlot9 atkmodifiers run scoreboard players operation debuffDurationSlot9 atkmodifiers = kongDmgDebuffDuration abilityStats
execute if score abilitynumber2 abilities matches 7 run execute if score ward slot9 matches 0 run scoreboard players operation speedDebuffSlot9 speedDebuffs += kongSpDebuff abilityStats
execute if score abilitynumber2 abilities matches 7 run execute if score ward slot9 matches 0 run scoreboard players operation attackDebuffSlot9 atkmodifiers += kongDmgDebuff abilityStats
execute if score abilitynumber2 abilities matches 7 run execute if score ward slot9 matches 0 run execute if score slot14isatk booleans matches 1 run scoreboard players operation attackDebuffSlot9 atkmodifiers += kongLeaderDmgDebuff abilityStats
execute if score abilitynumber2 abilities matches 7 run execute if score ward slot9 matches 0 run execute if score slot14isatk booleans matches 1 run scoreboard players operation speedDebuffSlot9 speedDebuffs += kongLeaderSpDebuff abilityStats
execute if score abilitynumber2 abilities matches 7 run execute if score ward slot9 matches 0 run execute if score slot14isatk booleans matches 1 run scoreboard players operation speed slot9 -= kongLeaderSpDebuff abilityStats
execute if score abilitynumber2 abilities matches 7 run execute if score ward slot9 matches 0 run scoreboard players operation speed slot9 -= kongSpDebuff abilityStats
execute if score abilitynumber2 abilities matches 7 run execute if score ward slot9 matches 0 if score shield slot9 matches ..0 run scoreboard players operation slot9 hp += shield slot9
execute if score abilitynumber2 abilities matches 7 run execute if score ward slot9 matches 1.. run function chtoo:wardslot9
execute if score abilitynumber2 abilities matches 7 run execute at @n[type=armor_stand,name=slot9] run particle minecraft:explosion_emitter ~ ~1 ~
execute if score abilitynumber2 abilities matches 7 run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p4]"}," used B.A.N.A.N.A S.L.A.M.M.A! on Slot 1!"]

#Robyn Ability
execute if score abilitynumber2 abilities matches 9 if score ward slot9 matches 0 run scoreboard players operation marks slot9 += robyn abilityStats
execute if score abilitynumber2 abilities matches 9 if score ward slot9 matches 1 run function chtoo:wardslot9
execute if score abilitynumber2 abilities matches 9 run execute at @n[type=armor_stand,name=slot9] run particle minecraft:angry_villager ~ ~1 ~ 0.9 0.9 0.9 1 50
execute if score abilitynumber2 abilities matches 9 run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p4]"}," used Most Wanted on Slot 1!"]

#Robo
execute if score abilitynumber2 abilities matches 5 if score durationSlot9 shield < roboDuration abilityStats run scoreboard players operation durationSlot9 shield = roboDuration abilityStats
execute if score abilitynumber2 abilities matches 5 run scoreboard players operation shield slot9 += robo abilityStats
execute if score abilitynumber2 abilities matches 5 if score slot10isatk booleans matches 1 run scoreboard players operation shield slot9 += roboLeader abilityStats
execute if score abilitynumber2 abilities matches 5 run execute at @n[name=slot9,type=armor_stand] run particle minecraft:wax_off ~ ~1 ~ 0.6 0.6 0.6 0.0001 400
execute if score abilitynumber2 abilities matches 5 run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p3]"}," used Force Field on Slot 1!"]

#Kirin
execute if score abilitynumber2 abilities matches 8 if score buffDurationSlot9 atkmodifiers < kirinDuration abilityStats run scoreboard players operation buffDurationSlot9 atkmodifiers = kirinDuration abilityStats
execute if score abilitynumber2 abilities matches 8 run scoreboard players operation attackBuffSlot9 atkmodifiers += kirin abilityStats
execute if score abilitynumber2 abilities matches 8 if score slot10isatk booleans matches 1 if score slot9bleeding booleaneffects matches 0 run scoreboard players operation slot9 hp += kirinLeader abilityStats
execute if score abilitynumber2 abilities matches 8 run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p3]"}," used Mythical Empowerment on Slot 1!"]
execute if score abilitynumber2 abilities matches 8 at @e[name=slot9] run particle minecraft:trial_spawner_detection ~ ~1 ~ 0.9 0.9 0.9 0.1 100

#Ace
execute if score abilitynumber2 abilities matches 12 if score ward slot9 matches 0 run scoreboard players operation cooldown slot9 = aceSetCooldown abilityStats
execute if score abilitynumber2 abilities matches 12 if score ward slot9 matches 1.. run function chtoo:wardslot9
execute if score abilitynumber2 abilities matches 12 at @e[name=slot9] run particle minecraft:enchanted_hit ~ ~1 ~ 0.9 0.9 0.9 0.5 100
execute if score abilitynumber2 abilities matches 12 run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p4]"}," used Ace of Spades on Slot 1!"]
execute if score abilitynumber2 abilities matches 12 run execute if score character# slot14 matches 12 run scoreboard players operation durationSlot10 speedDebuffs = aceLeaderDuration abilityStats
execute if score abilitynumber2 abilities matches 12 run execute if score character# slot14 matches 12 run scoreboard players operation speedDebuffSlot10 speedDebuffs = aceLeader abilityStats
execute if score abilitynumber2 abilities matches 12 run execute if score character# slot14 matches 12 run scoreboard players operation speed slot9 -= aceLeader abilityStats
#Gabriel
execute if score abilitynumber2 abilities matches 22 run scoreboard players operation abilityDmg2 saves = gabriel abilityStats
execute if score abilitynumber2 abilities matches 22 if score slot13isatk booleans matches 1 run scoreboard players operation abilityDmg2 saves += slot13 atkmodifiers
execute if score abilitynumber2 abilities matches 22 if score slot14isatk booleans matches 1 run scoreboard players operation abilityDmg2 saves += slot14 atkmodifiers
execute if score abilitynumber2 abilities matches 22 if score slot15isatk booleans matches 1 run scoreboard players operation abilityDmg2 saves += slot15 atkmodifiers
execute if score abilitynumber2 abilities matches 22 if score slot13 hp matches ..0 run scoreboard players operation abilityDmg2 saves += gabrielDeath abilityStats
execute if score abilitynumber2 abilities matches 22 if score slot14 hp matches ..0 run scoreboard players operation abilityDmg2 saves += gabrielDeath abilityStats
execute if score abilitynumber2 abilities matches 22 if score slot15 hp matches ..0 run scoreboard players operation abilityDmg2 saves += gabrielDeath abilityStats
execute if score abilitynumber2 abilities matches 22 run scoreboard players operation abilityDmg2 saves += marks slot9
execute if score abilitynumber2 abilities matches 22 run scoreboard players operation abilityDmg2 saves /= atkmultiplier slot9
execute if score abilitynumber2 abilities matches 22 run execute if score ward slot9 matches 0 run scoreboard players operation shield slot9 -= abilityDmg2 saves
execute if score abilitynumber2 abilities matches 22 run execute if score ward slot9 matches 0 if score shield slot9 matches ..0 run scoreboard players operation slot9 hp += shield slot9
execute if score abilitynumber2 abilities matches 22 if score slot14isatk booleans matches 1 if score ward slot9 matches 0 run scoreboard players operation abilityDmg2 saves /= gabrielLeader abilityStats
execute if score abilitynumber2 abilities matches 22 if score slot14isatk booleans matches 1 if score ward slot9 matches 0 run scoreboard players operation slot14 hp += abilityDmg2 saves
execute if score abilitynumber2 abilities matches 22 at @e[name=slot9] run particle minecraft:flash ~ ~1 ~ 0.9 0.9 0.9 0.5 100
execute if score abilitynumber2 abilities matches 22 run execute if score ward slot9 matches 1.. run function chtoo:wardslot9
#Gatsby
execute if score abilitynumber2 abilities matches 23 if score ward slot9 matches 0 run scoreboard players operation slot9 stun = gatsbyDuration abilityStats
execute if score abilitynumber2 abilities matches 23 if score ward slot9 matches 0 run scoreboard players operation savehp9 saves = slot9 hp 
execute if score abilitynumber2 abilities matches 23 if score ward slot9 matches 0 run scoreboard players operation invincibleSlot9 booleaneffects = gatsbyDuration abilityStats
execute if score abilitynumber2 abilities matches 23 if score ward slot9 matches 0 run scoreboard players operation slot9EatenDuration abilities = gatsbyDuration abilityStats
execute if score abilitynumber2 abilities matches 23 if score ward slot9 matches 0 at @e[name=slot9] run execute at @e[distance=..4,type=!player] run tp @n[type=!minecraft:player,distance=..4] ~ ~-20 ~
execute if score abilitynumber2 abilities matches 23 run execute if score ward slot9 matches 1.. run function chtoo:wardslot9
execute if score abilitynumber2 abilities matches 23 if score durationSlot9-13 fear < gatsbyDuration abilityStats run scoreboard players operation durationSlot9-13 fear = gatsbyDuration abilityStats
execute if score abilitynumber2 abilities matches 23 if score durationSlot9-14 fear < gatsbyDuration abilityStats run scoreboard players operation durationSlot9-14 fear = gatsbyDuration abilityStats
execute if score abilitynumber2 abilities matches 23 if score durationSlot9-15 fear < gatsbyDuration abilityStats run scoreboard players operation durationSlot9-15 fear = gatsbyDuration abilityStats
execute if score abilitynumber2 abilities matches 23 if score durationSlot9-16 fear < gatsbyDuration abilityStats run scoreboard players operation durationSlot9-16 fear = gatsbyDuration abilityStats
execute if score abilitynumber2 abilities matches 23 if score ward slot10 matches 0 if score slot14isatk booleans matches 1 if score debuffDurationSlot10 atkmodifiers < gatsbyDuration abilityStats run scoreboard players operation debuffDurationSlot10 atkmodifiers = gatsbyDuration abilityStats
execute if score abilitynumber2 abilities matches 23 if score ward slot11 matches 0 if score slot14isatk booleans matches 1 if score debuffDurationSlot11 atkmodifiers < gatsbyDuration abilityStats run scoreboard players operation debuffDurationSlot11 atkmodifiers = gatsbyDuration abilityStats
execute if score abilitynumber2 abilities matches 23 if score ward slot12 matches 0 if score slot14isatk booleans matches 1 if score debuffDurationSlot12 atkmodifiers < gatsbyDuration abilityStats run scoreboard players operation debuffDurationSlot12 atkmodifiers = gatsbyDuration abilityStats
execute if score abilitynumber2 abilities matches 23 if score ward slot10 matches 0 if score slot14isatk booleans matches 1 run scoreboard players operation attackDebuffSlot10 atkmodifiers = gatsbyLeader abilityStats
execute if score abilitynumber2 abilities matches 23 if score ward slot11 matches 0 if score slot14isatk booleans matches 1 run scoreboard players operation attackDebuffSlot11 atkmodifiers = gatsbyLeader abilityStats
execute if score abilitynumber2 abilities matches 23 if score ward slot12 matches 0 if score slot14isatk booleans matches 1 run scoreboard players operation attackDebuffSlot12 atkmodifiers = gatsbyLeader abilityStats
execute if score abilitynumber2 abilities matches 23 if score ward slot10 matches 1.. if score slot14isatk booleans matches 1 run function chtoo:wardslot10
execute if score abilitynumber2 abilities matches 23 if score ward slot11 matches 1.. if score slot14isatk booleans matches 1 run function chtoo:wardslot11
execute if score abilitynumber2 abilities matches 23 if score ward slot12 matches 1.. if score slot14isatk booleans matches 1 run function chtoo:wardslot12
execute if score abilitynumber2 abilities matches 23 at @e[name=slot9] run particle minecraft:falling_nectar ~ ~1 ~ 0.9 0.9 0.9 0.1 100
execute if score abilitynumber2 abilities matches 23 if score slot14isatk booleans matches 1 at @e[name=slot10] run particle minecraft:falling_nectar ~ ~1 ~ 0.9 0.9 0.9 0.1 50
execute if score abilitynumber2 abilities matches 23 if score slot14isatk booleans matches 1 at @e[name=slot11] run particle minecraft:falling_nectar ~ ~1 ~ 0.9 0.9 0.9 0.1 50
execute if score abilitynumber2 abilities matches 23 if score slot14isatk booleans matches 1 at @e[name=slot12] run particle minecraft:falling_nectar ~ ~1 ~ 0.9 0.9 0.9 0.1 50
execute if score abilitynumber2 abilities matches 23 run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p4]"}," used Consume on Slot 1!"]
#Boomer
execute if score abilitynumber2 abilities matches 25 run scoreboard players operation abilityDmg2 saves = boomer abilityStats
execute if score abilitynumber2 abilities matches 25 if score slot13isatk booleans matches 1 run scoreboard players operation abilityDmg2 saves += slot13 atkmodifiers
execute if score abilitynumber2 abilities matches 25 if score slot14isatk booleans matches 1 run scoreboard players operation abilityDmg2 saves += slot14 atkmodifiers
execute if score abilitynumber2 abilities matches 25 if score slot15isatk booleans matches 1 run scoreboard players operation abilityDmg2 saves += slot15 atkmodifiers
execute if score abilitynumber2 abilities matches 25 run scoreboard players operation abilityDmg2 saves += marks slot9
execute if score abilitynumber2 abilities matches 25 run scoreboard players operation abilityDmg2 saves /= atkmultiplier slot9
execute if score abilitynumber2 abilities matches 25 run execute if score ward slot9 matches 0 run scoreboard players operation shield slot9 -= abilityDmg2 saves
execute if score abilitynumber2 abilities matches 25 run execute if score ward slot9 matches 0 if score shield slot9 matches ..0 run scoreboard players operation slot9 hp += shield slot9
execute if score abilitynumber2 abilities matches 25 run execute if score ward slot9 matches 1.. run function chtoo:wardslot9
execute if score abilitynumber2 abilities matches 25 at @e[name=slot9] run particle minecraft:explosion ~ ~1 ~ 0.9 0.9 0.9 0.1 100
execute if score abilitynumber2 abilities matches 25 if score slot14isatk booleans matches 1 at @e[name=slot10] run particle minecraft:explosion ~ ~1 ~ 0.9 0.9 0.9 0.1 50
execute if score abilitynumber2 abilities matches 25 run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p4]"}," used KABOOM! on Slot 1!"]
execute if score abilitynumber2 abilities matches 25 if score slot14isatk booleans matches 1 run scoreboard players operation abilityDmg2 saves = boomer abilityStats
execute if score abilitynumber2 abilities matches 25 if score slot14isatk booleans matches 1 run scoreboard players operation abilityDmg2 saves += slot14 atkmodifiers
execute if score abilitynumber2 abilities matches 25 if score slot14isatk booleans matches 1 run scoreboard players operation abilityDmg2 saves /= boomerLeader abilityStats
execute if score abilitynumber2 abilities matches 25 if score slot14isatk booleans matches 1 run scoreboard players operation abilityDmg2 saves += marks slot10
execute if score abilitynumber2 abilities matches 25 if score slot14isatk booleans matches 1 run scoreboard players operation abilityDmg2 saves /= atkmultiplier slot10
execute if score abilitynumber2 abilities matches 25 if score slot14isatk booleans matches 1 run execute if score ward slot10 matches 0 run scoreboard players operation shield slot10 -= abilityDmg2 saves
execute if score abilitynumber2 abilities matches 25 if score slot14isatk booleans matches 1 run execute if score ward slot10 matches 0 if score shield slot10 matches ..0 run scoreboard players operation slot10 hp += shield slot10
execute if score abilitynumber2 abilities matches 25 if score slot14isatk booleans matches 1 run execute if score ward slot10 matches 1.. run function chtoo:wardslot10

#Ripper
execute if score abilitynumber2 abilities matches 29 if score slot9 hp <= ripper abilityStats if score ward slot9 matches 0 if score invincibleSlot10 booleaneffects matches 0 run scoreboard players set slot9 hp 0
execute if score abilitynumber2 abilities matches 29 if score slot9 hp <= ripper abilityStats if score invincibleSlot10 booleaneffects matches 0 if score ward slot9 matches 1.. run function chtoo:wardslot9
execute if score abilitynumber2 abilities matches 29 at @e[name=slot9] run particle minecraft:raid_omen ~ ~1 ~ 0.9 0.9 0.9 0.1 100
execute if score abilitynumber2 abilities matches 29 run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p4]"}," used Execute on Slot 1!"]

#Domino
execute if score abilitynumber2 abilities matches 30 run scoreboard players operation abilityDmg2 saves = domino abilityStats
execute if score abilitynumber2 abilities matches 30 if score slot13isatk booleans matches 1 run scoreboard players operation abilityDmg2 saves += slot13 atkmodifiers
execute if score abilitynumber2 abilities matches 30 if score slot14isatk booleans matches 1 run scoreboard players operation abilityDmg2 saves += slot14 atkmodifiers
execute if score abilitynumber2 abilities matches 30 if score slot15isatk booleans matches 1 run scoreboard players operation abilityDmg2 saves += slot15 atkmodifiers
execute if score abilitynumber2 abilities matches 30 run scoreboard players operation abilityDmg2 saves += marks slot9
execute if score abilitynumber2 abilities matches 30 run scoreboard players operation abilityDmg2 saves /= atkmultiplier slot9
execute if score abilitynumber2 abilities matches 30 run execute if score ward slot9 matches 0 run scoreboard players operation shield slot9 -= abilityDmg2 saves
execute if score abilitynumber2 abilities matches 30 run execute if score ward slot9 matches 0 if score shield slot9 matches ..0 run scoreboard players operation slot9 hp += shield slot9
execute if score abilitynumber2 abilities matches 30 if score ward slot9 matches 0 if score durationSlot9 poison < dominoDuration abilityStats run scoreboard players operation durationSlot9 poison = dominoDuration abilityStats 
execute if score abilitynumber2 abilities matches 30 if score ward slot9 matches 0 run scoreboard players operation slot9Poison poison += dominoPoison abilityStats 
execute if score abilitynumber2 abilities matches 30 run execute if score ward slot9 matches 1.. run function chtoo:wardslot9
execute if score abilitynumber2 abilities matches 30 at @e[name=slot9] run particle minecraft:trial_omen ~ ~1 ~ 0.9 0.9 0.9 0.1 100
execute if score abilitynumber2 abilities matches 30 run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p4]"}," used Poison Dart on Slot 1!"]
#Doc Basic Attack
execute if score abilitynumber2 abilities matches -1 run scoreboard players operation slot9Disease disease += doc heroattack
execute if score abilitynumber2 abilities matches -1 if score slot14isatk booleans matches 1 run scoreboard players operation slot9Disease disease += docLeader heroattack
execute if score abilitynumber2 abilities matches -1 at @e[name=slot9] run particle minecraft:trial_omen ~ ~1 ~ 0.9 0.9 0.9 0.1 50
#Healing Totem
execute if score abilitynumber2 abilities matches -3 run execute if score slot9bleeding booleaneffects matches 0 run scoreboard players operation slot9 hp += healingTotemHeal spellStats
execute if score abilitynumber2 abilities matches -3 at @e[name=slot9] run particle minecraft:composter ~ ~1 ~ 0.9 0.9 0.9 0.1 50
#Eidolon Basic Attack
execute if score abilitynumber2 abilities matches -4 run execute if score ward slot9 matches 0 if score durationSlot13-9 fear <= eidolonFearDuration abilityStats if score slot13isatk booleans matches 1 run scoreboard players operation durationSlot13-9 fear = eidolonFearDuration abilityStats
execute if score abilitynumber2 abilities matches -4 run execute if score ward slot9 matches 0 if score durationSlot14-9 fear <= eidolonFearDuration abilityStats if score slot14isatk booleans matches 1 run scoreboard players operation durationSlot14-9 fear = eidolonFearDuration abilityStats
execute if score abilitynumber2 abilities matches -4 run execute if score ward slot9 matches 0 if score durationSlot15-9 fear <= eidolonFearDuration abilityStats if score slot15isatk booleans matches 1 run scoreboard players operation durationSlot15-9 fear = eidolonFearDuration abilityStats
execute if score abilitynumber2 abilities matches -4 run scoreboard players operation abilityDmg2 saves = eidolon heroattack
execute if score abilitynumber2 abilities matches -4 if score slot13isatk booleans matches 1 run scoreboard players operation abilityDmg2 saves += slot13 atkmodifiers
execute if score abilitynumber2 abilities matches -4 if score slot14isatk booleans matches 1 run scoreboard players operation abilityDmg2 saves += slot14 atkmodifiers
execute if score abilitynumber2 abilities matches -4 if score slot15isatk booleans matches 1 run scoreboard players operation abilityDmg2 saves += slot15 atkmodifiers
execute if score abilitynumber2 abilities matches -4 run scoreboard players operation abilityDmg2 saves += marks slot9
execute if score abilitynumber2 abilities matches -4 run scoreboard players operation abilityDmg2 saves /= atkmultiplier slot9
execute if score abilitynumber2 abilities matches -4 run execute if score ward slot9 matches 0 run scoreboard players operation shield slot9 -= abilityDmg2 saves
execute if score abilitynumber2 abilities matches -4 run execute if score ward slot9 matches 0 if score shield slot9 matches ..0 run scoreboard players operation slot9 hp += shield slot9
execute if score abilitynumber2 abilities matches -4 run execute if score ward slot9 matches 1.. run function chtoo:wardslot9
execute if score abilitynumber2 abilities matches -4 run execute at @e[name=slot9,type=armor_stand] run particle minecraft:crit ~ ~1 ~ 0.9 0.9 0.9 0.5 100



#This goes at the bottom
execute if score shield slot9 matches ..0 run scoreboard players set shield slot9 0
execute if score shield slot10 matches ..0 run scoreboard players set shield slot10 0
execute if score shield slot11 matches ..0 run scoreboard players set shield slot11 0
execute if score shield slot12 matches ..0 run scoreboard players set shield slot12 0
clear @p[tag=p4]
function chtoo:turnend
#Make sure to add burn to your abilities
