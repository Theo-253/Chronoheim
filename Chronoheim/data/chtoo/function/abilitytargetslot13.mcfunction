effect clear @a[tag=game2] strength
clear @p[tag=game2]
#Arthur Ability
execute if score abilitynumber2 abilities matches 2 run function chtoo:cleanseslot13
#Deuce ability
execute if score abilitynumber2 abilities matches 3 run scoreboard players operation abilityDmg2 saves = deuce heroattack
execute if score abilitynumber2 abilities matches 3 if score slot9isatk booleans matches 1 run scoreboard players operation abilityDmg2 saves += slot9 atkmodifiers
execute if score abilitynumber2 abilities matches 3 if score slot10isatk booleans matches 1 run scoreboard players operation abilityDmg2 saves += slot10 atkmodifiers
execute if score abilitynumber2 abilities matches 3 if score slot11isatk booleans matches 1 run scoreboard players operation abilityDmg2 saves += slot11 atkmodifiers
execute if score abilitynumber2 abilities matches 3 run scoreboard players operation abilityDmg2 saves += marks slot13
execute if score abilitynumber2 abilities matches 3 if score slot10isatk booleans matches 1 run scoreboard players operation abilityDmg2 saves *= deuceMultLeader abilityStats
execute if score abilitynumber2 abilities matches 3 if score slot10isatk booleans matches 0 run scoreboard players operation abilityDmg2 saves *= deuceMult abilityStats
execute if score abilitynumber2 abilities matches 3 run scoreboard players operation abilityDmg2 saves /= atkmultiplier slot13
execute if score abilitynumber2 abilities matches 3 run execute if score ward slot13 matches 0 run scoreboard players operation shield slot13 -= abilityDmg2 saves
execute if score abilitynumber2 abilities matches 3 run execute if score ward slot13 matches 0 if score shield slot13 matches ..0 run scoreboard players operation slot13 hp += shield slot13
execute if score abilitynumber2 abilities matches 3 run execute if score ward slot13 matches 1.. run function chtoo:wardslot13
execute if score abilitynumber2 abilities matches 3 run execute at @e[name=slot13,type=armor_stand] run particle crit ~ ~1 ~ 0.3 0.3 0.3 2 100

execute if score abilitynumber2 abilities matches 3 run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p3]"}," used Double Punch on Slot 5!"]

#Garabaldi Ability
execute if score abilitynumber2 abilities matches 24 if score slot13 hp matches 1.. if score slot13bleeding booleaneffects matches 0 run scoreboard players operation slot13 hp += garabaldiHeal abilityStats
execute if score abilitynumber2 abilities matches 24 if score slot13 hp matches 1.. if score slot13bleeding booleaneffects matches 0 if score character# slot14 matches 24 run scoreboard players operation slot13 hp += garabaldiLeader abilityStats
execute if score abilitynumber2 abilities matches 24 if score slot13 hp matches 1.. run scoreboard players set ward slot13 2
execute if score abilitynumber2 abilities matches 24 run execute at @n[type=armor_stand,name=slot13] run particle minecraft:composter ~ ~1 ~ 0.9 0.9 0.9 0.5 100

execute if score abilitynumber2 abilities matches 24 run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p4]"}," used Bubble Shield on Slot 5!"]

#Juniper Ability
execute if score abilitynumber2 abilities matches 27 run scoreboard players operation abilityDmg2 saves = juniper abilityStats
execute if score abilitynumber2 abilities matches 27 if score slot9isatk booleans matches 1 run scoreboard players operation abilityDmg2 saves += slot9 atkmodifiers
execute if score abilitynumber2 abilities matches 27 if score slot10isatk booleans matches 1 run scoreboard players operation abilityDmg2 saves += slot10 atkmodifiers
execute if score abilitynumber2 abilities matches 27 if score slot11isatk booleans matches 1 run scoreboard players operation abilityDmg2 saves += slot11 atkmodifiers
execute if score abilitynumber2 abilities matches 27 run scoreboard players operation abilityDmg2 saves += marks slot13
execute if score abilitynumber2 abilities matches 27 run scoreboard players operation abilityDmg2 saves /= atkmultiplier slot13
execute if score abilitynumber2 abilities matches 27 run execute if score ward slot13 matches 0 run scoreboard players operation shield slot13 -= abilityDmg2 saves
execute if score abilitynumber2 abilities matches 27 run execute if score ward slot13 matches 0 run scoreboard players operation slot13 stun = juniperStun abilityStats
execute if score abilitynumber2 abilities matches 27 run execute if score ward slot13 matches 0 if score shield slot13 matches ..0 run scoreboard players operation slot13 hp += shield slot13
execute if score abilitynumber2 abilities matches 27 run execute if score ward slot13 matches 1.. run function chtoo:wardslot13
execute if score abilitynumber2 abilities matches 27 run execute at @e[name=slot13,type=armor_stand] run particle firefly ~ ~1 ~ 0.3 0.3 0.3 1 100

execute if score abilitynumber2 abilities matches 27 run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p3]"}," used Pixie Dust on Slot 5!"]

#Juniper Basic
execute if score abilitynumber2 abilities matches -2 run execute if score slot13bleeding booleaneffects matches 0 run scoreboard players operation slot13 hp += juniper heroattack
execute if score abilitynumber2 abilities matches -2 run execute at @n[type=armor_stand,name=slot13] run particle minecraft:composter ~ ~1 ~ 0.9 0.9 0.9 0.5 100
execute if score abilitynumber2 abilities matches -2 run execute if score slot13bleeding booleaneffects matches 0 if score slot14isatk booleans matches 1 run scoreboard players operation slot13 hp += juniperLeader heroattack

#K.O.N.G ability
execute if score abilitynumber2 abilities matches 7 run scoreboard players operation abilityDmg2 saves = kong abilityStats
execute if score abilitynumber2 abilities matches 7 if score slot9isatk booleans matches 1 run scoreboard players operation abilityDmg2 saves += slot9 atkmodifiers
execute if score abilitynumber2 abilities matches 7 if score slot10isatk booleans matches 1 run scoreboard players operation abilityDmg2 saves += slot10 atkmodifiers
execute if score abilitynumber2 abilities matches 7 if score slot11isatk booleans matches 1 run scoreboard players operation abilityDmg2 saves += slot11 atkmodifiers
execute if score abilitynumber2 abilities matches 7 run scoreboard players operation abilityDmg2 saves += marks slot13
execute if score abilitynumber2 abilities matches 7 run scoreboard players operation abilityDmg2 saves /= atkmultiplier slot13
execute if score abilitynumber2 abilities matches 7 run execute if score ward slot13 matches 0 run scoreboard players operation shield slot13 -= abilityDmg2 saves
execute if score abilitynumber2 abilities matches 7 run execute if score ward slot13 matches 0 if score kongSpDebuffDuration abilityStats > durationSlot13 speedDebuffs run scoreboard players operation durationSlot13 speedDebuffs = kongSpDebuffDuration abilityStats
execute if score abilitynumber2 abilities matches 7 run execute if score ward slot13 matches 0 if score kongDmgDebuffDuration abilityStats > debuffDurationSlot13 atkmodifiers run scoreboard players operation debuffDurationSlot13 atkmodifiers = kongDmgDebuffDuration abilityStats
execute if score abilitynumber2 abilities matches 7 run execute if score ward slot13 matches 0 run scoreboard players operation speedDebuffSlot13 speedDebuffs += kongSpDebuff abilityStats
execute if score abilitynumber2 abilities matches 7 run execute if score ward slot13 matches 0 run scoreboard players operation attackDebuffSlot13 atkmodifiers += kongDmgDebuff abilityStats
execute if score abilitynumber2 abilities matches 7 run execute if score ward slot13 matches 0 run execute if score slot10isatk booleans matches 1 run scoreboard players operation attackDebuffSlot13 atkmodifiers += kongLeaderDmgDebuff abilityStats
execute if score abilitynumber2 abilities matches 7 run execute if score ward slot13 matches 0 run execute if score slot10isatk booleans matches 1 run scoreboard players operation speedDebuffSlot13 speedDebuffs += kongLeaderSpDebuff abilityStats
execute if score abilitynumber2 abilities matches 7 run execute if score ward slot13 matches 0 run execute if score slot10isatk booleans matches 1 run scoreboard players operation speed slot13 -= kongLeaderSpDebuff abilityStats
execute if score abilitynumber2 abilities matches 7 run execute if score ward slot13 matches 0 run scoreboard players operation speed slot13 -= kongSpDebuff abilityStats
execute if score abilitynumber2 abilities matches 7 run execute if score ward slot13 matches 0 if score shield slot13 matches ..0 run scoreboard players operation slot13 hp += shield slot13
execute if score abilitynumber2 abilities matches 7 run execute if score ward slot13 matches 1.. run function chtoo:wardslot13
execute if score abilitynumber2 abilities matches 7 run execute at @n[type=armor_stand,name=slot13] run particle minecraft:explosion_emitter ~ ~1 ~
execute if score abilitynumber2 abilities matches 9 run execute at @n[type=armor_stand,name=slot13] run particle minecraft:angry_villager ~ ~1 ~ 0.9 0.9 0.9 1 50
execute if score abilitynumber2 abilities matches 7 run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p3]"}," used B.A.N.A.N.A S.L.A.M.M.A! on Slot 5!"]

#Robyn Ability
execute if score abilitynumber2 abilities matches 9 if score ward slot13 matches 0 run scoreboard players operation marks slot13 += robyn abilityStats
execute if score abilitynumber2 abilities matches 9 if score ward slot13 matches 1 run function chtoo:wardslot13
execute if score abilitynumber2 abilities matches 9 run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p3]"}," used Most Wanted on Slot 5!"]

#Robo
execute if score abilitynumber2 abilities matches 5 if score durationSlot13 shield < roboDuration abilityStats run scoreboard players operation durationSlot13 shield = roboDuration abilityStats
execute if score abilitynumber2 abilities matches 5 run scoreboard players operation shield slot13 += robo abilityStats
execute if score abilitynumber2 abilities matches 5 if score slot14isatk booleans matches 1 run scoreboard players operation shield slot13 += roboLeader abilityStats
execute if score abilitynumber2 abilities matches 5 run execute at @n[name=slot13,type=armor_stand] run particle minecraft:wax_off ~ ~1 ~ 0.6 0.6 0.6 0.0001 400
execute if score abilitynumber2 abilities matches 5 run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p4]"}," used Force Field on Slot 5!"]

#Kirin
execute if score abilitynumber2 abilities matches 8 if score buffDurationSlot13 atkmodifiers < kirinDuration abilityStats run scoreboard players operation buffDurationSlot13 atkmodifiers = kirinDuration abilityStats
execute if score abilitynumber2 abilities matches 8 run scoreboard players operation attackBuffSlot13 atkmodifiers += kirin abilityStats
execute if score abilitynumber2 abilities matches 8 if score slot14isatk booleans matches 1 if score slot13bleeding booleaneffects matches 0 run scoreboard players operation slot13 hp += kirinLeader abilityStats
execute if score abilitynumber2 abilities matches 8 run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p4]"}," used Mythical Empowerment on Slot 5!"]
execute if score abilitynumber2 abilities matches 8 at @e[name=slot13] run particle minecraft:trial_spawner_detection ~ ~1 ~ 0.9 0.9 0.9 0.1 100

#Ace
execute if score abilitynumber2 abilities matches 12 if score ward slot13 matches 0 run scoreboard players operation cooldown slot13 = aceSetCooldown abilityStats
execute if score abilitynumber2 abilities matches 12 run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p3]"}," used Ace of Spades on Slot 5!"]
execute if score abilitynumber2 abilities matches 12 if score ward slot13 matches 1.. run function chtoo:wardslot13
execute if score abilitynumber2 abilities matches 12 at @e[name=slot13] run particle minecraft:enchanted_hit ~ ~1 ~ 0.9 0.9 0.9 0.5 100
execute if score abilitynumber2 abilities matches 12 run execute if score character# slot10 matches 12 run scoreboard players operation durationSlot13 speedDebuffs = aceLeaderDuration abilityStats
execute if score abilitynumber2 abilities matches 12 run execute if score character# slot10 matches 12 run scoreboard players operation speedDebuffSlot13 speedDebuffs = aceLeader abilityStats
execute if score abilitynumber2 abilities matches 12 run execute if score character# slot10 matches 12 run scoreboard players operation speed slot13 -= aceLeader abilityStats
#Gabriel
execute if score abilitynumber2 abilities matches 22 run scoreboard players operation abilityDmg2 saves = gabriel abilityStats
execute if score abilitynumber2 abilities matches 22 if score slot9isatk booleans matches 1 run scoreboard players operation abilityDmg2 saves += slot9 atkmodifiers
execute if score abilitynumber2 abilities matches 22 if score slot10isatk booleans matches 1 run scoreboard players operation abilityDmg2 saves += slot10 atkmodifiers
execute if score abilitynumber2 abilities matches 22 if score slot11isatk booleans matches 1 run scoreboard players operation abilityDmg2 saves += slot11 atkmodifiers
execute if score abilitynumber2 abilities matches 22 if score slot9 hp matches ..0 run scoreboard players operation abilityDmg2 saves += gabrielDeath abilityStats
execute if score abilitynumber2 abilities matches 22 if score slot10 hp matches ..0 run scoreboard players operation abilityDmg2 saves += gabrielDeath abilityStats
execute if score abilitynumber2 abilities matches 22 if score slot11 hp matches ..0 run scoreboard players operation abilityDmg2 saves += gabrielDeath abilityStats
execute if score abilitynumber2 abilities matches 22 run scoreboard players operation abilityDmg2 saves += marks slot13
execute if score abilitynumber2 abilities matches 22 run scoreboard players operation abilityDmg2 saves /= atkmultiplier slot13
execute if score abilitynumber2 abilities matches 22 run execute if score ward slot13 matches 0 run scoreboard players operation shield slot13 -= abilityDmg2 saves
execute if score abilitynumber2 abilities matches 22 run execute if score ward slot13 matches 0 if score shield slot13 matches ..0 run scoreboard players operation slot13 hp += shield slot13
execute if score abilitynumber2 abilities matches 22 if score slot10isatk booleans matches 1 if score ward slot13 matches 0 run scoreboard players operation abilityDmg2 saves /= gabrielLeader abilityStats
execute if score abilitynumber2 abilities matches 22 if score slot10isatk booleans matches 1 if score ward slot13 matches 0 run scoreboard players operation slot10 hp += abilityDmg2 saves
execute if score abilitynumber2 abilities matches 22 at @e[name=slot13] run particle minecraft:flash ~ ~1 ~ 0.9 0.9 0.9 0.5 100
execute if score abilitynumber2 abilities matches 22 run execute if score ward slot13 matches 1.. run function chtoo:wardslot13
#Gatsby
execute if score abilitynumber2 abilities matches 23 if score ward slot13 matches 0 run scoreboard players operation slot13 stun = gatsbyDuration abilityStats
execute if score abilitynumber2 abilities matches 23 if score ward slot13 matches 0 run scoreboard players operation savehp13 saves = slot13 hp
execute if score abilitynumber2 abilities matches 23 if score ward slot13 matches 0 run scoreboard players operation invincibleSlot13 booleaneffects = gatsbyDuration abilityStats
execute if score abilitynumber2 abilities matches 23 if score ward slot13 matches 0 run scoreboard players operation slot13EatenDuration abilities = gatsbyDuration abilityStats
execute if score abilitynumber2 abilities matches 23 if score ward slot13 matches 0 at @e[name=slot13] run execute at @e[distance=..4,type=!player] run tp @n[type=!minecraft:player,distance=..4] ~ ~-20 ~
execute if score abilitynumber2 abilities matches 23 run execute if score ward slot13 matches 1.. run function chtoo:wardslot13
execute if score abilitynumber2 abilities matches 23 if score durationSlot13-9 fear < gatsbyDuration abilityStats run scoreboard players operation durationSlot13-9 fear = gatsbyDuration abilityStats
execute if score abilitynumber2 abilities matches 23 if score durationSlot13-10 fear < gatsbyDuration abilityStats run scoreboard players operation durationSlot13-10 fear = gatsbyDuration abilityStats
execute if score abilitynumber2 abilities matches 23 if score durationSlot13-11 fear < gatsbyDuration abilityStats run scoreboard players operation durationSlot13-11 fear = gatsbyDuration abilityStats
execute if score abilitynumber2 abilities matches 23 if score durationSlot13-12 fear < gatsbyDuration abilityStats run scoreboard players operation durationSlot13-12 fear = gatsbyDuration abilityStats
execute if score abilitynumber2 abilities matches 23 if score ward slot14 matches 0 if score slot10isatk booleans matches 1 if score debuffDurationSlot14 atkmodifiers < gatsbyDuration abilityStats run scoreboard players operation debuffDurationSlot14 atkmodifiers = gatsbyDuration abilityStats
execute if score abilitynumber2 abilities matches 23 if score ward slot15 matches 0 if score slot10isatk booleans matches 1 if score debuffDurationSlot15 atkmodifiers < gatsbyDuration abilityStats run scoreboard players operation debuffDurationSlot15 atkmodifiers = gatsbyDuration abilityStats
execute if score abilitynumber2 abilities matches 23 if score ward slot16 matches 0 if score slot10isatk booleans matches 1 if score debuffDurationSlot16 atkmodifiers < gatsbyDuration abilityStats run scoreboard players operation debuffDurationSlot16 atkmodifiers = gatsbyDuration abilityStats
execute if score abilitynumber2 abilities matches 23 if score ward slot14 matches 0 if score slot10isatk booleans matches 1 run scoreboard players operation attackDebuffSlot14 atkmodifiers = gatsbyLeader abilityStats
execute if score abilitynumber2 abilities matches 23 if score ward slot15 matches 0 if score slot10isatk booleans matches 1 run scoreboard players operation attackDebuffSlot15 atkmodifiers = gatsbyLeader abilityStats
execute if score abilitynumber2 abilities matches 23 if score ward slot16 matches 0 if score slot10isatk booleans matches 1 run scoreboard players operation attackDebuffSlot16 atkmodifiers = gatsbyLeader abilityStats
execute if score abilitynumber2 abilities matches 23 if score ward slot14 matches 1.. if score slot10isatk booleans matches 1 run function chtoo:wardslot14
execute if score abilitynumber2 abilities matches 23 if score ward slot15 matches 1.. if score slot10isatk booleans matches 1 run function chtoo:wardslot15
execute if score abilitynumber2 abilities matches 23 if score ward slot16 matches 1.. if score slot10isatk booleans matches 1 run function chtoo:wardslot16
execute if score abilitynumber2 abilities matches 23 run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p3]"}," used Consume on Slot 5!"]
execute if score abilitynumber2 abilities matches 23 at @e[name=slot13] run particle minecraft:falling_nectar ~ ~1 ~ 0.9 0.9 0.9 0.1 100
execute if score abilitynumber2 abilities matches 23 if score slot10isatk booleans matches 1 at @e[name=slot14] run particle minecraft:falling_nectar ~ ~1 ~ 0.9 0.9 0.9 0.1 50
execute if score abilitynumber2 abilities matches 23 if score slot10isatk booleans matches 1 at @e[name=slot15] run particle minecraft:falling_nectar ~ ~1 ~ 0.9 0.9 0.9 0.1 50
execute if score abilitynumber2 abilities matches 23 if score slot10isatk booleans matches 1 at @e[name=slot16] run particle minecraft:falling_nectar ~ ~1 ~ 0.9 0.9 0.9 0.1 50
#Old Boomer
execute if score abilitynumber2 abilities matches 25 run scoreboard players operation abilityDmg2 saves = boomer abilityStats
execute if score abilitynumber2 abilities matches 25 if score slot9isatk booleans matches 1 run scoreboard players operation abilityDmg2 saves += slot9 atkmodifiers
execute if score abilitynumber2 abilities matches 25 if score slot10isatk booleans matches 1 run scoreboard players operation abilityDmg2 saves += slot10 atkmodifiers
execute if score abilitynumber2 abilities matches 25 if score slot11isatk booleans matches 1 run scoreboard players operation abilityDmg2 saves += slot11 atkmodifiers
execute if score abilitynumber2 abilities matches 25 run scoreboard players operation abilityDmg2 saves += marks slot13
execute if score abilitynumber2 abilities matches 25 run scoreboard players operation abilityDmg2 saves /= atkmultiplier slot13
execute if score abilitynumber2 abilities matches 25 run execute if score ward slot13 matches 0 run scoreboard players operation shield slot13 -= abilityDmg2 saves
execute if score abilitynumber2 abilities matches 25 run execute if score ward slot13 matches 0 if score shield slot13 matches ..0 run scoreboard players operation slot13 hp += shield slot13
execute if score abilitynumber2 abilities matches 25 run execute if score ward slot13 matches 1.. run function chtoo:wardslot13
execute if score abilitynumber2 abilities matches 25 at @e[name=slot13] run particle minecraft:explosion ~ ~1 ~ 0.9 0.9 0.9 0.1 100
execute if score abilitynumber2 abilities matches 25 if score slot10isatk booleans matches 1 at @e[name=slot14] run particle minecraft:explosion ~ ~1 ~ 0.9 0.9 0.9 0.1 50
execute if score abilitynumber2 abilities matches 25 run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p3]"}," used KABOOM! on Slot 5!"]
execute if score abilitynumber2 abilities matches 25 if score slot10isatk booleans matches 1 run scoreboard players operation abilityDmg2 saves = boomer abilityStats
execute if score abilitynumber2 abilities matches 25 if score slot10isatk booleans matches 1 run scoreboard players operation abilityDmg2 saves += slot10 atkmodifiers
execute if score abilitynumber2 abilities matches 25 if score slot10isatk booleans matches 1 run scoreboard players operation abilityDmg2 saves /= boomerLeader abilityStats
execute if score abilitynumber2 abilities matches 25 if score slot10isatk booleans matches 1 run scoreboard players operation abilityDmg2 saves += marks slot14
execute if score abilitynumber2 abilities matches 25 if score slot10isatk booleans matches 1 run scoreboard players operation abilityDmg2 saves /= atkmultiplier slot14
execute if score abilitynumber2 abilities matches 25 if score slot10isatk booleans matches 1 run execute if score ward slot14 matches 0 run scoreboard players operation shield slot14 -= abilityDmg2 saves
execute if score abilitynumber2 abilities matches 25 if score slot10isatk booleans matches 1 run execute if score ward slot14 matches 0 if score shield slot14 matches ..0 run scoreboard players operation slot14 hp += shield slot14
execute if score abilitynumber2 abilities matches 25 if score slot10isatk booleans matches 1 run execute if score ward slot14 matches 1.. run function chtoo:wardslot14


#Ripper
execute if score abilitynumber2 abilities matches 29 if score slot13 hp <= ripper abilityStats if score ward slot13 matches 0 if score invincibleSlot13 booleaneffects matches 0 run scoreboard players set slot13 hp 0
execute if score abilitynumber2 abilities matches 29 if score slot13 hp <= ripper abilityStats if score invincibleSlot13 booleaneffects matches 0 if score ward slot13 matches 1.. run function chtoo:wardslot13
execute if score abilitynumber2 abilities matches 29 run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p3]"}," used Execute on Slot 5!"]
execute if score abilitynumber2 abilities matches 29 at @e[name=slot13] run particle minecraft:raid_omen ~ ~1 ~ 0.9 0.9 0.9 0.1 100


#Domino
execute if score abilitynumber2 abilities matches 30 run scoreboard players operation abilityDmg2 saves = domino abilityStats
execute if score abilitynumber2 abilities matches 30 if score slot9isatk booleans matches 1 run scoreboard players operation abilityDmg2 saves += slot9 atkmodifiers
execute if score abilitynumber2 abilities matches 30 if score slot10isatk booleans matches 1 run scoreboard players operation abilityDmg2 saves += slot10 atkmodifiers
execute if score abilitynumber2 abilities matches 30 if score slot11isatk booleans matches 1 run scoreboard players operation abilityDmg2 saves += slot11 atkmodifiers
execute if score abilitynumber2 abilities matches 30 run scoreboard players operation abilityDmg2 saves += marks slot13
execute if score abilitynumber2 abilities matches 30 run scoreboard players operation abilityDmg2 saves /= atkmultiplier slot13
execute if score abilitynumber2 abilities matches 30 run execute if score ward slot13 matches 0 run scoreboard players operation shield slot13 -= abilityDmg2 saves
execute if score abilitynumber2 abilities matches 30 run execute if score ward slot13 matches 0 if score shield slot13 matches ..0 run scoreboard players operation slot13 hp += shield slot13
execute if score abilitynumber2 abilities matches 30 if score ward slot13 matches 0 if score durationSlot13 poison < dominoDuration abilityStats run scoreboard players operation durationSlot13 poison = dominoDuration abilityStats 
execute if score abilitynumber2 abilities matches 30 if score ward slot13 matches 0 run scoreboard players operation slot13Poison poison += dominoPoison abilityStats 
execute if score abilitynumber2 abilities matches 30 run execute if score ward slot13 matches 1.. run function chtoo:wardslot13
execute if score abilitynumber2 abilities matches 30 at @e[name=slot13] run particle minecraft:trial_omen ~ ~1 ~ 0.9 0.9 0.9 0.1 100
execute if score abilitynumber2 abilities matches 30 run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p3]"}," used Poison Dart on Slot 5!"]

#Scythe
execute if score abilitynumber2 abilities matches 32 if score ward slot13 matches 0 run scoreboard players operation slot13 hp /= scytheDivide abilityStats
execute if score abilitynumber2 abilities matches 32 if score ward slot13 matches 0 run scoreboard players operation slot13 hp *= scytheMult abilityStats
execute if score abilitynumber2 abilities matches 32 if score ward slot13 matches 0 if score slot10isatk booleans matches 1 run scoreboard players operation marks slot13 += scytheLeader abilityStats
execute if score abilitynumber2 abilities matches 32 if score ward slot13 matches 1.. run function chtoo:wardslot13
execute if score abilitynumber2 abilities matches 32 at @e[name=slot13] run particle minecraft:sculk_soul ~ ~1 ~ 0.9 0.9 0.9 0.1 100
execute if score abilitynumber2 abilities matches 32 run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p3]"}," used Cull the Weak on Slot 5!"]

#Doc Basic Attack
execute if score abilitynumber2 abilities matches -1 if score ward slot13 matches 0 run scoreboard players operation slot13Disease disease += doc heroattack
execute if score abilitynumber2 abilities matches -1 if score ward slot13 matches 0 if score slot10isatk booleans matches 1 run scoreboard players operation slot13Disease disease += docLeader heroattack
execute if score abilitynumber2 abilities matches -1 run execute if score ward slot13 matches 1.. run function chtoo:wardslot13
execute if score abilitynumber2 abilities matches -1 at @e[name=slot13] run particle minecraft:trial_omen ~ ~1 ~ 0.9 0.9 0.9 0.1 50

#Subject ability
execute if score abilitynumber2 abilities matches 4 if score ward slot13 matches 0 if score durationSlot13 poison < subjectDuration abilityStats run scoreboard players operation durationSlot13 poison = subjectDuration abilityStats
execute if score abilitynumber2 abilities matches 4 if score ward slot13 matches 0 run scoreboard players operation slot13Poison poison += subject abilityStats
execute if score abilitynumber2 abilities matches 4 if score slot10isatk booleans matches 1 if score ward slot13 matches 0 run scoreboard players operation slot13Poison poison += subjectLeader abilityStats
execute if score abilitynumber2 abilities matches 4 at @e[name=slot13] run particle minecraft:trial_omen ~ ~1 ~ 0.9 0.9 0.9 0.1 50
execute if score abilitynumber2 abilities matches 4 run execute if score ward slot13 matches 1.. run function chtoo:wardslot13
execute if score abilitynumber2 abilities matches 4 run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p3]"}," used Contagion on Slot 5!"]

#Healing Totem
execute if score abilitynumber2 abilities matches -3 run execute if score slot13bleeding booleaneffects matches 0 run scoreboard players operation slot13 hp += healingTotemHeal spellStats
execute if score abilitynumber2 abilities matches -3 at @e[name=slot13] run particle minecraft:composter ~ ~1 ~ 0.9 0.9 0.9 0.1 50

#Eidolon Basic Attack
execute if score abilitynumber2 abilities matches -4 run execute if score ward slot13 matches 0 if score durationSlot9-13 fear <= eidolonFearDuration abilityStats if score slot9isatk booleans matches 1 run scoreboard players operation durationSlot9-13 fear = eidolonFearDuration abilityStats
execute if score abilitynumber2 abilities matches -4 run execute if score ward slot13 matches 0 if score durationSlot10-13 fear <= eidolonFearDuration abilityStats if score slot10isatk booleans matches 1 run scoreboard players operation durationSlot10-13 fear = eidolonFearDuration abilityStats
execute if score abilitynumber2 abilities matches -4 run execute if score ward slot13 matches 0 if score durationSlot11-13 fear <= eidolonFearDuration abilityStats if score slot11isatk booleans matches 1 run scoreboard players operation durationSlot11-13 fear = eidolonFearDuration abilityStats
execute if score abilitynumber2 abilities matches -4 run scoreboard players operation abilityDmg2 saves = eidolon heroattack
execute if score abilitynumber2 abilities matches -4 if score slot9isatk booleans matches 1 run scoreboard players operation abilityDmg2 saves += slot9 atkmodifiers
execute if score abilitynumber2 abilities matches -4 if score slot10isatk booleans matches 1 run scoreboard players operation abilityDmg2 saves += slot10 atkmodifiers
execute if score abilitynumber2 abilities matches -4 if score slot11isatk booleans matches 1 run scoreboard players operation abilityDmg2 saves += slot11 atkmodifiers
execute if score abilitynumber2 abilities matches -4 run scoreboard players operation abilityDmg2 saves += marks slot13
execute if score abilitynumber2 abilities matches -4 run scoreboard players operation abilityDmg2 saves /= atkmultiplier slot13
execute if score abilitynumber2 abilities matches -4 run execute if score ward slot13 matches 0 run scoreboard players operation shield slot13 -= abilityDmg2 saves
execute if score abilitynumber2 abilities matches -4 run execute if score ward slot13 matches 0 if score shield slot13 matches ..0 run scoreboard players operation slot13 hp += shield slot13
execute if score abilitynumber2 abilities matches -4 run execute if score ward slot13 matches 1.. run function chtoo:wardslot13
execute if score abilitynumber2 abilities matches -4 run execute at @e[name=slot13,type=armor_stand] run particle minecraft:crit ~ ~1 ~ 0.9 0.9 0.9 0.5 100

#Jones Ability
execute if score abilitynumber2 abilities matches 31 run execute if score ward slot13 matches 0 run scoreboard players operation disarmedslot13 booleaneffects = jones abilityStats
execute if score abilitynumber2 abilities matches 31 run execute if score ward slot13 matches 1 run function chtoo:wardslot13
execute if score abilitynumber2 abilities matches 31 run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p3]"}," used Lasso on Slot 5!"]
execute if score abilitynumber2 abilities matches 31 at @e[name=slot13] run particle minecraft:crit ~ ~1 ~ 0.9 0.9 0.9 0.1 100


#Sherman Basic
execute if score abilitynumber2 abilities matches -5 run execute unless score slot13bleeding booleaneffects matches 1.. run scoreboard players operation slot13 hp += sherman heroattack
execute if score abilitynumber2 abilities matches -5 run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p4]"}," healed Slot 5!"]
execute if score abilitynumber2 abilities matches -5 run execute at @n[type=armor_stand,name=slot13] run particle minecraft:composter ~ ~1 ~ 0.9 0.9 0.9 0.5 80


#Sherman Ability
execute if score abilitynumber2 abilities matches 33 run execute if score ward slot13 matches 0 if score debuffDurationSlot13 atkmodifiers < shermanDuration abilityStats run scoreboard players operation debuffDurationSlot13 atkmodifiers = shermanDuration abilityStats
execute if score abilitynumber2 abilities matches 33 run execute if score ward slot13 matches 0 run scoreboard players operation attackDebuffSlot13 atkmodifiers += shermanDebuff abilityStats
execute if score abilitynumber2 abilities matches 33 run scoreboard players operation abilityDmg saves = sherman abilityStats
execute if score abilitynumber2 abilities matches 33 if score slot9isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot9 atkmodifiers
execute if score abilitynumber2 abilities matches 33 if score slot10isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot10 atkmodifiers
execute if score abilitynumber2 abilities matches 33 if score slot11isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot11 atkmodifiers
execute if score abilitynumber2 abilities matches 33 run scoreboard players operation abilityDmg saves += marks slot13
execute if score abilitynumber2 abilities matches 33 run scoreboard players operation abilityDmg saves /= atkmultiplier slot13
execute if score abilitynumber2 abilities matches 33 run execute if score ward slot13 matches 0 run scoreboard players operation shield slot13 -= abilityDmg saves
execute if score abilitynumber2 abilities matches 33 run execute if score ward slot13 matches 0 if score shield slot13 matches ..0 run scoreboard players operation slot13 hp += shield slot13
execute if score abilitynumber2 abilities matches 33 run execute if score ward slot13 matches 1.. run function chtoo:wardslot13
execute if score abilitynumber2 abilities matches 33 at @e[name=slot13] run particle minecraft:pale_oak_leaves ~ ~1 ~ 0.9 0.9 0.9 0.1 100
execute if score abilitynumber2 abilities matches 33 at @e[name=slot13] run particle minecraft:explosion ~ ~1 ~ 0.9 0.9 0.9 0.1 10
execute if score abilitynumber2 abilities matches 33 at @e[name=slot14] run particle minecraft:pale_oak_leaves ~ ~1 ~ 0.9 0.9 0.9 0.1 50
execute if score abilitynumber2 abilities matches 33 run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p3]"}," used Grasping Roots on Slot 5!"]
execute if score abilitynumber2 abilities matches 33 run scoreboard players operation abilityDmg saves = sherman abilityStats
execute if score abilitynumber2 abilities matches 33 if score slot9isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot9 atkmodifiers
execute if score abilitynumber2 abilities matches 33 if score slot10isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot10 atkmodifiers
execute if score abilitynumber2 abilities matches 33 if score slot11isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot11 atkmodifiers
execute if score abilitynumber2 abilities matches 33 run scoreboard players operation abilityDmg saves /= shermanSplash abilityStats
execute if score abilitynumber2 abilities matches 33 run scoreboard players operation abilityDmg saves += marks slot14
execute if score abilitynumber2 abilities matches 33 run scoreboard players operation abilityDmg saves /= atkmultiplier slot14
execute if score abilitynumber2 abilities matches 33 run execute if score ward slot14 matches 0 run scoreboard players operation shield slot14 -= abilityDmg saves
execute if score abilitynumber2 abilities matches 33 run execute if score ward slot14 matches 0 if score shield slot14 matches ..0 run scoreboard players operation slot14 hp += shield slot14
execute if score abilitynumber2 abilities matches 33 run execute if score ward slot14 matches 1.. run function chtoo:wardslot14

#Eidolon Ability
execute if score abilitynumber2 abilities matches 28 run scoreboard players operation abilityDmg2 saves = eidolon abilityStats
execute if score abilitynumber2 abilities matches 28 if score slot9isatk booleans matches 1 run scoreboard players operation abilityDmg2 saves += slot9 atkmodifiers
execute if score abilitynumber2 abilities matches 28 if score slot10isatk booleans matches 1 run scoreboard players operation abilityDmg2 saves += slot10 atkmodifiers
execute if score abilitynumber2 abilities matches 28 if score slot11isatk booleans matches 1 run scoreboard players operation abilityDmg2 saves += slot11 atkmodifiers
execute if score abilitynumber2 abilities matches 28 run scoreboard players operation abilityDmg2 saves += marks slot13
execute if score abilitynumber2 abilities matches 28 run scoreboard players operation abilityDmg2 saves /= atkmultiplier slot13
execute if score abilitynumber2 abilities matches 28 run execute if score ward slot13 matches 0 run scoreboard players operation shield slot13 -= abilityDmg2 saves
execute if score abilitynumber2 abilities matches 28 run execute if score ward slot13 matches 0 if score slot10isatk booleans matches 1 if score durationSlot10-13 fear <= eidolonLeaderFearDuration abilityStats run scoreboard players operation durationSlot10-13 fear = eidolonLeaderFearDuration abilityStats
execute if score abilitynumber2 abilities matches 28 run execute if score ward slot13 matches 0 if score shield slot13 matches ..0 run scoreboard players operation slot13 hp += shield slot13
execute if score abilitynumber2 abilities matches 28 run execute if score ward slot13 matches 1.. run function chtoo:wardslot13
execute if score abilitynumber2 abilities matches 28 run execute at @e[name=slot13,type=armor_stand] run particle raid_omen ~ ~1 ~ 0.3 0.3 0.3 2 100


#This goes at the bottom
execute if score shield slot13 matches ..0 run scoreboard players set shield slot13 0
execute if score shield slot14 matches ..0 run scoreboard players set shield slot14 0
execute if score shield slot15 matches ..0 run scoreboard players set shield slot15 0
execute if score shield slot16 matches ..0 run scoreboard players set shield slot16 0
function chtoo:turnend
#Make sure to add burn to your abilities
