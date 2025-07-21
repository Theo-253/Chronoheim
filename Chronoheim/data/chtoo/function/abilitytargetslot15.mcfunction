effect clear @a[tag=game2] strength
clear @p[tag=game2]
#Arthur Ability
execute if score abilitynumber abilities matches 2 run function chtoo:cleanseslot15
#Deuce ability
execute if score abilitynumber2 abilities matches 3 run scoreboard players operation abilityDmg2 saves = deuce heroattack
execute if score abilitynumber2 abilities matches 3 if score slot9isatk booleans matches 1 run scoreboard players operation abilityDmg2 saves += slot9 atkmodifiers
execute if score abilitynumber2 abilities matches 3 if score slot10isatk booleans matches 1 run scoreboard players operation abilityDmg2 saves += slot10 atkmodifiers
execute if score abilitynumber2 abilities matches 3 if score slot11isatk booleans matches 1 run scoreboard players operation abilityDmg2 saves += slot11 atkmodifiers
execute if score abilitynumber2 abilities matches 3 run scoreboard players operation abilityDmg2 saves += marks slot15
execute if score abilitynumber2 abilities matches 3 if score slot9isatk booleans matches 1 run scoreboard players operation abilityDmg2 saves *= deuceMultLeader abilityStats
execute if score abilitynumber2 abilities matches 3 if score slot10isatk booleans matches 0 run scoreboard players operation abilityDmg2 saves *= deuceMult abilityStats
execute if score abilitynumber2 abilities matches 3 run scoreboard players operation abilityDmg2 saves /= atkmultiplier slot15
execute if score abilitynumber2 abilities matches 3 run execute if score ward slot15 matches 0 run scoreboard players operation shield slot15 -= abilityDmg2 saves
execute if score abilitynumber2 abilities matches 3 run execute if score ward slot15 matches 0 if score shield slot15 matches ..0 run scoreboard players operation slot15 hp += shield slot15
execute if score abilitynumber2 abilities matches 3 run execute if score ward slot15 matches 1.. run function chtoo:wardslot15
execute if score abilitynumber2 abilities matches 3 run execute at @e[name=slot15,type=armor_stand] run particle crit ~ ~1 ~ 0.3 0.3 0.3 2 100

execute if score abilitynumber2 abilities matches 3 run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p3]"}," used Double Punch on Slot 7!"]

#Garabaldi Ability
execute if score abilitynumber2 abilities matches 24 if score slot15 hp matches 1.. if score slot15bleeding booleaneffects matches 0 run scoreboard players operation slot15 hp += garabaldiHeal abilityStats
execute if score abilitynumber2 abilities matches 24 if score slot15 hp matches 1.. if score slot15bleeding booleaneffects matches 0 if score character# slot14 matches 24 run scoreboard players operation slot15 hp += garabaldiLeader abilityStats
execute if score abilitynumber2 abilities matches 24 if score slot15 hp matches 1.. run scoreboard players set ward slot15 2
execute if score abilitynumber2 abilities matches 24 run execute at @n[type=armor_stand,name=slot15] run particle minecraft:composter ~ ~1 ~ 0.9 0.9 0.9 0.5 100
execute if score abilitynumber2 abilities matches 24 run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p4]"}," used Bubble Shield on Slot 7!"]

#Juniper Ability
execute if score abilitynumber2 abilities matches 27 run scoreboard players operation abilityDmg2 saves = juniper abilityStats
execute if score abilitynumber2 abilities matches 27 if score slot9isatk booleans matches 1 run scoreboard players operation abilityDmg2 saves += slot9 atkmodifiers
execute if score abilitynumber2 abilities matches 27 if score slot10isatk booleans matches 1 run scoreboard players operation abilityDmg2 saves += slot10 atkmodifiers
execute if score abilitynumber2 abilities matches 27 if score slot11isatk booleans matches 1 run scoreboard players operation abilityDmg2 saves += slot11 atkmodifiers
execute if score abilitynumber2 abilities matches 27 run scoreboard players operation abilityDmg2 saves += marks slot15
execute if score abilitynumber2 abilities matches 27 run scoreboard players operation abilityDmg2 saves /= atkmultiplier slot15
execute if score abilitynumber2 abilities matches 27 run execute if score ward slot15 matches 0 run scoreboard players operation shield slot15 -= abilityDmg2 saves
execute if score abilitynumber2 abilities matches 27 run execute if score ward slot15 matches 0 run scoreboard players operation slot15 stun = juniperStun abilityStats
execute if score abilitynumber2 abilities matches 27 run execute if score ward slot15 matches 0 if score shield slot15 matches ..0 run scoreboard players operation slot15 hp += shield slot15
execute if score abilitynumber2 abilities matches 27 run execute if score ward slot15 matches 1.. run function chtoo:wardslot15
execute if score abilitynumber2 abilities matches 27 run execute at @e[name=slot15,type=armor_stand] run particle firefly ~ ~1 ~ 0.3 0.3 0.3 1 100

execute if score abilitynumber2 abilities matches 27 run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p3]"}," used Pixie Dust on Slot 7!"]

#Juniper Basic
execute if score abilitynumber2 abilities matches -2 run execute if score slot15bleeding booleaneffects matches 0 run scoreboard players operation slot15 hp += juniper heroattack
execute if score abilitynumber2 abilities matches -2 run execute at @n[type=armor_stand,name=slot15] run particle minecraft:composter ~ ~1 ~ 0.9 0.9 0.9 0.5 100

execute if score abilitynumber2 abilities matches -2 if score character# slot14 matches 27 run function chtoo:cleanseslot15

#K.O.N.G ability
execute if score abilitynumber2 abilities matches 7 run scoreboard players operation abilityDmg2 saves = kong abilityStats
execute if score abilitynumber2 abilities matches 7 if score slot9isatk booleans matches 1 run scoreboard players operation abilityDmg2 saves += slot9 atkmodifiers
execute if score abilitynumber2 abilities matches 7 if score slot10isatk booleans matches 1 run scoreboard players operation abilityDmg2 saves += slot10 atkmodifiers
execute if score abilitynumber2 abilities matches 7 if score slot11isatk booleans matches 1 run scoreboard players operation abilityDmg2 saves += slot11 atkmodifiers
execute if score abilitynumber2 abilities matches 7 run scoreboard players operation abilityDmg2 saves += marks slot15
execute if score abilitynumber2 abilities matches 7 run scoreboard players operation abilityDmg2 saves /= atkmultiplier slot15
execute if score abilitynumber2 abilities matches 7 run execute if score ward slot15 matches 0 run scoreboard players operation shield slot15 -= abilityDmg2 saves
execute if score abilitynumber2 abilities matches 7 run execute if score ward slot15 matches 0 if score kongSpDebuffDuration abilityStats > durationSlot15 speedDebuffs run scoreboard players operation durationSlot15 speedDebuffs = kongSpDebuffDuration abilityStats
execute if score abilitynumber2 abilities matches 7 run execute if score ward slot15 matches 0 if score kongDmgDebuffDuration abilityStats > debuffDurationSlot15 atkmodifiers run scoreboard players operation debuffDurationSlot15 atkmodifiers = kongDmgDebuffDuration abilityStats
execute if score abilitynumber2 abilities matches 7 run execute if score ward slot15 matches 0 run scoreboard players operation speedDebuffSlot15 speedDebuffs += kongSpDebuff abilityStats
execute if score abilitynumber2 abilities matches 7 run execute if score ward slot15 matches 0 run scoreboard players operation attackDebuffSlot15 atkmodifiers += kongDmgDebuff abilityStats
execute if score abilitynumber2 abilities matches 7 run execute if score ward slot15 matches 0 run execute if score slot10isatk booleans matches 1 run scoreboard players operation attackDebuffSlot15 atkmodifiers += kongLeaderDmgDebuff abilityStats
execute if score abilitynumber2 abilities matches 7 run execute if score ward slot15 matches 0 run execute if score slot10isatk booleans matches 1 run scoreboard players operation speedDebuffSlot15 speedDebuffs += kongLeaderSpDebuff abilityStats
execute if score abilitynumber2 abilities matches 7 run execute if score ward slot15 matches 0 run execute if score slot10isatk booleans matches 1 run scoreboard players operation speed slot15 -= kongLeaderSpDebuff abilityStats
execute if score abilitynumber2 abilities matches 7 run execute if score ward slot15 matches 0 run scoreboard players operation speed slot15 -= kongSpDebuff abilityStats
execute if score abilitynumber2 abilities matches 7 run execute if score ward slot15 matches 0 if score shield slot15 matches ..0 run scoreboard players operation slot15 hp += shield slot15
execute if score abilitynumber2 abilities matches 7 run execute if score ward slot15 matches 1.. run function chtoo:wardslot15
execute if score abilitynumber2 abilities matches 7 run execute at @n[type=armor_stand,name=slot15] run particle minecraft:explosion_emitter ~ ~1 ~
execute if score abilitynumber2 abilities matches 7 run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p3]"}," used B.A.N.A.N.A S.L.A.M.M.A! on Slot 7!"]

#Robyn Ability
execute if score abilitynumber2 abilities matches 9 if score ward slot15 matches 0 run scoreboard players operation marks slot15 += robyn abilityStats
execute if score abilitynumber2 abilities matches 9 if score ward slot15 matches 1 run function chtoo:wardslot15
execute if score abilitynumber2 abilities matches 9 run execute at @n[type=armor_stand,name=slot15] run particle minecraft:angry_villager ~ ~1 ~ 0.9 0.9 0.9 1 50
execute if score abilitynumber2 abilities matches 9 run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p3]"}," used Most Wanted on Slot 7!"]

#Robo
execute if score abilitynumber2 abilities matches 5 if score durationSlot15 shield < roboDuration abilityStats run scoreboard players operation durationSlot15 shield = roboDuration abilityStats
execute if score abilitynumber2 abilities matches 5 run scoreboard players operation shield slot15 += robo abilityStats
execute if score abilitynumber2 abilities matches 5 if score slot10isatk booleans matches 1 run scoreboard players operation shield slot15 += roboLeader abilityStats
execute if score abilitynumber2 abilities matches 5 run execute at @n[name=slot15,type=armor_stand] run particle minecraft:wax_off ~ ~1 ~ 0.6 0.6 0.6 0.0001 400
execute if score abilitynumber2 abilities matches 5 run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p4]"}," used Force Field on Slot 7!"]

#Kirin
execute if score abilitynumber2 abilities matches 8 if score buffDurationSlot15 atkmodifiers < kirinDuration abilityStats run scoreboard players operation buffDurationSlot15 atkmodifiers = kirinDuration abilityStats
execute if score abilitynumber2 abilities matches 8 run scoreboard players operation attackBuffSlot15 atkmodifiers += kirin abilityStats
execute if score abilitynumber2 abilities matches 8 if score slot10isatk booleans matches 1 if score slot15bleeding booleaneffects matches 0.. run scoreboard players operation slot15 hp += kirinLeader abilityStats
execute if score abilitynumber2 abilities matches 8 run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p4]"}," used Mythical Empowerment on Slot 7!"]
execute if score abilitynumber2 abilities matches 8 at @e[name=slot15] run particle minecraft:trial_spawner_detection ~ ~1 ~ 0.9 0.9 0.9 0.1 100

#Ace
execute if score abilitynumber2 abilities matches 12 if score ward slot15 matches 0 run scoreboard players operation cooldown slot15 = aceSetCooldown abilityStats
execute if score abilitynumber2 abilities matches 12 run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p3]"}," used Ace of Spades on Slot 7!"]
execute if score abilitynumber2 abilities matches 12 if score ward slot15 matches 1.. run function chtoo:wardslot15
execute if score abilitynumber2 abilities matches 12 at @e[name=slot15] run particle minecraft:enchanted_hit ~ ~1 ~ 0.9 0.9 0.9 0.5 100
execute if score abilitynumber2 abilities matches 12 run execute if score character# slot10 matches 12 run scoreboard players operation durationSlot15 speedDebuffs = aceLeaderDuration abilityStats
execute if score abilitynumber2 abilities matches 12 run execute if score character# slot10 matches 12 run scoreboard players operation speedDebuffSlot15 speedDebuffs = aceLeader abilityStats
execute if score abilitynumber2 abilities matches 12 run execute if score character# slot10 matches 12 run scoreboard players operation speed slot15 -= aceLeader abilityStats
#Gabriel
execute if score abilitynumber2 abilities matches 22 run scoreboard players operation abilityDmg2 saves = gabriel abilityStats
execute if score abilitynumber2 abilities matches 22 if score slot9isatk booleans matches 1 run scoreboard players operation abilityDmg2 saves += slot9 atkmodifiers
execute if score abilitynumber2 abilities matches 22 if score slot10isatk booleans matches 1 run scoreboard players operation abilityDmg2 saves += slot10 atkmodifiers
execute if score abilitynumber2 abilities matches 22 if score slot11isatk booleans matches 1 run scoreboard players operation abilityDmg2 saves += slot11 atkmodifiers
execute if score abilitynumber2 abilities matches 22 if score slot9 hp matches ..0 run scoreboard players operation abilityDmg2 saves += gabrielDeath abilityStats
execute if score abilitynumber2 abilities matches 22 if score slot10 hp matches ..0 run scoreboard players operation abilityDmg2 saves += gabrielDeath abilityStats
execute if score abilitynumber2 abilities matches 22 if score slot11 hp matches ..0 run scoreboard players operation abilityDmg2 saves += gabrielDeath abilityStats
execute if score abilitynumber2 abilities matches 22 run scoreboard players operation abilityDmg2 saves += marks slot15
execute if score abilitynumber2 abilities matches 22 run scoreboard players operation abilityDmg2 saves /= atkmultiplier slot15
execute if score abilitynumber2 abilities matches 22 run execute if score ward slot15 matches 0 run scoreboard players operation shield slot15 -= abilityDmg2 saves
execute if score abilitynumber2 abilities matches 22 run execute if score ward slot15 matches 0 if score shield slot15 matches ..0 run scoreboard players operation slot15 hp += shield slot15
execute if score abilitynumber2 abilities matches 22 if score slot10isatk booleans matches 1 if score ward slot15 matches 0 run scoreboard players operation abilityDmg2 saves /= gabrielLeader abilityStats
execute if score abilitynumber2 abilities matches 22 if score slot10isatk booleans matches 1 if score ward slot15 matches 0 run scoreboard players operation slot10 hp += abilityDmg2 saves
execute if score abilitynumber2 abilities matches 22 at @e[name=slot15] run particle minecraft:flash ~ ~1 ~ 0.9 0.9 0.9 0.5 100
execute if score abilitynumber2 abilities matches 22 run execute if score ward slot15 matches 1.. run function chtoo:wardslot15
#Gatsby
execute if score abilitynumber2 abilities matches 23 if score ward slot15 matches 0 run scoreboard players operation slot15 stun = gatsbyDuration abilityStats
execute if score abilitynumber2 abilities matches 23 if score ward slot15 matches 0 run scoreboard players operation savehp15 saves = slot15 hp
execute if score abilitynumber2 abilities matches 23 if score ward slot15 matches 0 run scoreboard players operation invincibleSlot15 booleaneffects = gatsbyDuration abilityStats
execute if score abilitynumber2 abilities matches 23 if score ward slot15 matches 0 run scoreboard players operation slot15EatenDuration abilities = gatsbyDuration abilityStats
execute if score abilitynumber2 abilities matches 23 if score ward slot15 matches 0 at @e[name=slot15] run execute at @e[distance=..4,type=!player] run tp @n[type=!minecraft:player,distance=..4] ~ ~-20 ~
execute if score abilitynumber2 abilities matches 23 run execute if score ward slot15 matches 1.. run function chtoo:wardslot15
execute if score abilitynumber2 abilities matches 23 if score durationSlot15-9 fear < gatsbyDuration abilityStats run scoreboard players operation durationSlot15-9 fear = gatsbyDuration abilityStats
execute if score abilitynumber2 abilities matches 23 if score durationSlot15-10 fear < gatsbyDuration abilityStats run scoreboard players operation durationSlot15-10 fear = gatsbyDuration abilityStats
execute if score abilitynumber2 abilities matches 23 if score durationSlot15-11 fear < gatsbyDuration abilityStats run scoreboard players operation durationSlot15-11 fear = gatsbyDuration abilityStats
execute if score abilitynumber2 abilities matches 23 if score durationSlot15-12 fear < gatsbyDuration abilityStats run scoreboard players operation durationSlot15-12 fear = gatsbyDuration abilityStats
execute if score abilitynumber2 abilities matches 23 if score ward slot14 matches 0 if score slot10isatk booleans matches 1 if score debuffDurationSlot14 atkmodifiers < gatsbyDuration abilityStats run scoreboard players operation debuffDurationSlot14 atkmodifiers = gatsbyDuration abilityStats
execute if score abilitynumber2 abilities matches 23 if score ward slot13 matches 0 if score slot10isatk booleans matches 1 if score debuffDurationSlot13 atkmodifiers < gatsbyDuration abilityStats run scoreboard players operation debuffDurationSlot13 atkmodifiers = gatsbyDuration abilityStats
execute if score abilitynumber2 abilities matches 23 if score ward slot16 matches 0 if score slot10isatk booleans matches 1 if score debuffDurationSlot16 atkmodifiers < gatsbyDuration abilityStats run scoreboard players operation debuffDurationSlot16 atkmodifiers = gatsbyDuration abilityStats
execute if score abilitynumber2 abilities matches 23 if score ward slot14 matches 0 if score slot10isatk booleans matches 1 run scoreboard players operation attackDebuffSlot14 atkmodifiers = gatsbyLeader abilityStats
execute if score abilitynumber2 abilities matches 23 if score ward slot13 matches 0 if score slot10isatk booleans matches 1 run scoreboard players operation attackDebuffSlot13 atkmodifiers = gatsbyLeader abilityStats
execute if score abilitynumber2 abilities matches 23 if score ward slot16 matches 0 if score slot10isatk booleans matches 1 run scoreboard players operation attackDebuffSlot16 atkmodifiers = gatsbyLeader abilityStats
execute if score abilitynumber2 abilities matches 23 if score ward slot14 matches 1.. if score slot10isatk booleans matches 1 run function chtoo:wardslot14
execute if score abilitynumber2 abilities matches 23 if score ward slot13 matches 1.. if score slot10isatk booleans matches 1 run function chtoo:wardslot13
execute if score abilitynumber2 abilities matches 23 if score ward slot16 matches 1.. if score slot10isatk booleans matches 1 run function chtoo:wardslot16
execute if score abilitynumber2 abilities matches 23 run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p3]"}," used Consume on Slot 7!"]
execute if score abilitynumber2 abilities matches 23 at @e[name=slot15] run particle minecraft:falling_nectar ~ ~1 ~ 0.9 0.9 0.9 0.1 100
execute if score abilitynumber2 abilities matches 23 if score slot10isatk booleans matches 1 at @e[name=slot14] run particle minecraft:falling_nectar ~ ~1 ~ 0.9 0.9 0.9 0.1 50
execute if score abilitynumber2 abilities matches 23 if score slot10isatk booleans matches 1 at @e[name=slot13] run particle minecraft:falling_nectar ~ ~1 ~ 0.9 0.9 0.9 0.1 50
execute if score abilitynumber2 abilities matches 23 if score slot10isatk booleans matches 1 at @e[name=slot16] run particle minecraft:falling_nectar ~ ~1 ~ 0.9 0.9 0.9 0.1 50
#Boomer
execute if score abilitynumber2 abilities matches 25 run scoreboard players operation abilityDmg2 saves = boomer abilityStats
execute if score abilitynumber2 abilities matches 25 if score slot9isatk booleans matches 1 run scoreboard players operation abilityDmg2 saves += slot9 atkmodifiers
execute if score abilitynumber2 abilities matches 25 if score slot10isatk booleans matches 1 run scoreboard players operation abilityDmg2 saves += slot10 atkmodifiers
execute if score abilitynumber2 abilities matches 25 if score slot11isatk booleans matches 1 run scoreboard players operation abilityDmg2 saves += slot11 atkmodifiers
execute if score abilitynumber2 abilities matches 25 run scoreboard players operation abilityDmg2 saves += marks slot15
execute if score abilitynumber2 abilities matches 25 run scoreboard players operation abilityDmg2 saves /= atkmultiplier slot15
execute if score abilitynumber2 abilities matches 25 run execute if score ward slot15 matches 0 run scoreboard players operation shield slot15 -= abilityDmg2 saves
execute if score abilitynumber2 abilities matches 25 run execute if score ward slot15 matches 0 if score shield slot15 matches ..0 run scoreboard players operation slot15 hp += shield slot15
execute if score abilitynumber2 abilities matches 25 run execute if score ward slot15 matches 1.. run function chtoo:wardslot15
execute if score abilitynumber2 abilities matches 25 at @e[name=slot15] run particle minecraft:explosion ~ ~1 ~ 0.9 0.9 0.9 0.1 100
execute if score abilitynumber2 abilities matches 25 if score slot10isatk booleans matches 1 at @e[name=slot14] run particle minecraft:explosion ~ ~1 ~ 0.9 0.9 0.9 0.1 50
execute if score abilitynumber2 abilities matches 25 if score slot10isatk booleans matches 1 at @e[name=slot16] run particle minecraft:explosion ~ ~1 ~ 0.9 0.9 0.9 0.1 50
execute if score abilitynumber2 abilities matches 25 run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p3]"}," used KABOOM! on Slot 7!"]
execute if score abilitynumber2 abilities matches 25 if score slot10isatk booleans matches 1 run scoreboard players operation abilityDmg2 saves = boomer abilityStats
execute if score abilitynumber2 abilities matches 25 if score slot10isatk booleans matches 1 run scoreboard players operation abilityDmg2 saves += slot10 atkmodifiers
execute if score abilitynumber2 abilities matches 25 if score slot10isatk booleans matches 1 run scoreboard players operation abilityDmg2 saves /= boomerLeader abilityStats
execute if score abilitynumber2 abilities matches 25 if score slot10isatk booleans matches 1 run scoreboard players operation abilityDmg2 saves += marks slot14
execute if score abilitynumber2 abilities matches 25 if score slot10isatk booleans matches 1 run scoreboard players operation abilityDmg2 saves /= atkmultiplier slot14
execute if score abilitynumber2 abilities matches 25 if score slot10isatk booleans matches 1 run execute if score ward slot14 matches 0 run scoreboard players operation shield slot14 -= abilityDmg2 saves
execute if score abilitynumber2 abilities matches 25 if score slot10isatk booleans matches 1 run execute if score ward slot14 matches 0 if score shield slot14 matches ..0 run scoreboard players operation slot14 hp += shield slot14
execute if score abilitynumber2 abilities matches 25 if score slot10isatk booleans matches 1 run execute if score ward slot14 matches 1.. run function chtoo:wardslot14
execute if score abilitynumber2 abilities matches 25 if score slot10isatk booleans matches 1 run scoreboard players operation abilityDmg2 saves = boomer abilityStats
execute if score abilitynumber2 abilities matches 25 if score slot10isatk booleans matches 1 run scoreboard players operation abilityDmg2 saves += slot10 atkmodifiers
execute if score abilitynumber2 abilities matches 25 if score slot10isatk booleans matches 1 run scoreboard players operation abilityDmg2 saves /= boomerLeader abilityStats
execute if score abilitynumber2 abilities matches 25 if score slot10isatk booleans matches 1 run scoreboard players operation abilityDmg2 saves += marks slot16
execute if score abilitynumber2 abilities matches 25 if score slot10isatk booleans matches 1 run scoreboard players operation abilityDmg2 saves /= atkmultiplier slot16
execute if score abilitynumber2 abilities matches 25 if score slot10isatk booleans matches 1 run execute if score ward slot16 matches 0 run scoreboard players operation shield slot16 -= abilityDmg2 saves
execute if score abilitynumber2 abilities matches 25 if score slot10isatk booleans matches 1 run execute if score ward slot16 matches 0 if score shield slot16 matches ..0 run scoreboard players operation slot16 hp += shield slot16
execute if score abilitynumber2 abilities matches 25 if score slot10isatk booleans matches 1 run execute if score ward slot16 matches 1.. run function chtoo:wardslot16

#Ripper
execute if score abilitynumber2 abilities matches 29 if score slot15 hp <= ripper abilityStats if score ward slot15 matches 0 if score invincibleSlot15 booleaneffects matches 0 run scoreboard players set slot15 hp 0
execute if score abilitynumber2 abilities matches 29 if score slot15 hp <= ripper abilityStats if score invincibleSlot15 booleaneffects matches 0 if score ward slot15 matches 1.. run function chtoo:wardslot15
execute if score abilitynumber2 abilities matches 29 run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p3]"}," used Execute on Slot 7!"]
execute if score abilitynumber2 abilities matches 29 at @e[name=slot15] run particle minecraft:raid_omen ~ ~1 ~ 0.9 0.9 0.9 0.1 100


#Domino
execute if score abilitynumber2 abilities matches 30 run scoreboard players operation abilityDmg2 saves = domino abilityStats
execute if score abilitynumber2 abilities matches 30 if score slot9isatk booleans matches 1 run scoreboard players operation abilityDmg2 saves += slot9 atkmodifiers
execute if score abilitynumber2 abilities matches 30 if score slot10isatk booleans matches 1 run scoreboard players operation abilityDmg2 saves += slot10 atkmodifiers
execute if score abilitynumber2 abilities matches 30 if score slot11isatk booleans matches 1 run scoreboard players operation abilityDmg2 saves += slot11 atkmodifiers
execute if score abilitynumber2 abilities matches 30 run scoreboard players operation abilityDmg2 saves += marks slot15
execute if score abilitynumber2 abilities matches 30 run scoreboard players operation abilityDmg2 saves /= atkmultiplier slot15
execute if score abilitynumber2 abilities matches 30 run execute if score ward slot15 matches 0 run scoreboard players operation shield slot15 -= abilityDmg2 saves
execute if score abilitynumber2 abilities matches 30 run execute if score ward slot15 matches 0 if score shield slot15 matches ..0 run scoreboard players operation slot15 hp += shield slot15
execute if score abilitynumber2 abilities matches 30 if score ward slot15 matches 0 if score durationSlot15 poison < dominoDuration abilityStats run scoreboard players operation durationSlot15 poison = dominoDuration abilityStats 
execute if score abilitynumber2 abilities matches 30 if score ward slot15 matches 0 run scoreboard players operation slot15Poison poison += dominoPoison abilityStats 
execute if score abilitynumber2 abilities matches 30 run execute if score ward slot15 matches 1.. run function chtoo:wardslot15
execute if score abilitynumber2 abilities matches 30 at @e[name=slot15] run particle minecraft:trial_omen ~ ~1 ~ 0.9 0.9 0.9 0.1 100
execute if score abilitynumber2 abilities matches 30 run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p3]"}," used Poison Dart on Slot 7!"]

#Doc Basic Attack
execute if score abilitynumber2 abilities matches -1 run scoreboard players operation slot15Disease disease += doc heroattack
execute if score abilitynumber2 abilities matches -1 if score slot10isatk booleans matches 1 run scoreboard players operation slot15Disease disease += docLeader heroattack
execute if score abilitynumber2 abilities matches -1 at @e[name=slot15] run particle minecraft:trial_omen ~ ~1 ~ 0.9 0.9 0.9 0.1 50

#Healing Totem
execute if score abilitynumber2 abilities matches -3 run execute if score slot15bleeding booleaneffects matches 0 run scoreboard players operation slot15 hp += healingTotemHeal spellStats
execute if score abilitynumber2 abilities matches -3 at @e[name=slot15] run particle minecraft:composter ~ ~1 ~ 0.9 0.9 0.9 0.1 50

#Eidolon Basic Attack
execute if score abilitynumber2 abilities matches -4 run execute if score ward slot15 matches 0 if score durationSlot9-15 fear <= eidolonFearDuration abilityStats if score slot9isatk booleans matches 1 run scoreboard players operation durationSlot9-15 fear = eidolonFearDuration abilityStats
execute if score abilitynumber2 abilities matches -4 run execute if score ward slot15 matches 0 if score durationSlot10-15 fear <= eidolonFearDuration abilityStats if score slot10isatk booleans matches 1 run scoreboard players operation durationSlot10-15 fear = eidolonFearDuration abilityStats
execute if score abilitynumber2 abilities matches -4 run execute if score ward slot15 matches 0 if score durationSlot11-15 fear <= eidolonFearDuration abilityStats if score slot11isatk booleans matches 1 run scoreboard players operation durationSlot11-15 fear = eidolonFearDuration abilityStats
execute if score abilitynumber2 abilities matches -4 run scoreboard players operation abilityDmg2 saves = eidolon heroattack
execute if score abilitynumber2 abilities matches -4 if score slot9isatk booleans matches 1 run scoreboard players operation abilityDmg2 saves += slot9 atkmodifiers
execute if score abilitynumber2 abilities matches -4 if score slot10isatk booleans matches 1 run scoreboard players operation abilityDmg2 saves += slot10 atkmodifiers
execute if score abilitynumber2 abilities matches -4 if score slot11isatk booleans matches 1 run scoreboard players operation abilityDmg2 saves += slot11 atkmodifiers
execute if score abilitynumber2 abilities matches -4 run scoreboard players operation abilityDmg2 saves += marks slot15
execute if score abilitynumber2 abilities matches -4 run scoreboard players operation abilityDmg2 saves /= atkmultiplier slot15
execute if score abilitynumber2 abilities matches -4 run execute if score ward slot15 matches 0 run scoreboard players operation shield slot15 -= abilityDmg2 saves
execute if score abilitynumber2 abilities matches -4 run execute if score ward slot15 matches 0 if score shield slot15 matches ..0 run scoreboard players operation slot15 hp += shield slot15
execute if score abilitynumber2 abilities matches -4 run execute if score ward slot15 matches 1.. run function chtoo:wardslot15
execute if score abilitynumber2 abilities matches -4 run execute at @e[name=slot15,type=armor_stand] run particle minecraft:crit ~ ~1 ~ 0.9 0.9 0.9 0.5 100



#This goes at the bottom
execute if score shield slot13 matches ..0 run scoreboard players set shield slot13 0
execute if score shield slot14 matches ..0 run scoreboard players set shield slot14 0
execute if score shield slot15 matches ..0 run scoreboard players set shield slot15 0
execute if score shield slot16 matches ..0 run scoreboard players set shield slot16 0
function chtoo:turnend
#Make sure to add burn to your abilities
