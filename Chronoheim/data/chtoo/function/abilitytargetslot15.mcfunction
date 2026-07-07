effect clear @a[tag=game2] strength
clear @p[tag=game2]
#Arthur Ability
execute if score abilitynumber2 abilities matches 2 run function chtoo:cleanseslot15
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
execute if score abilitynumber2 abilities matches -2 run execute if score slot15bleeding booleaneffects matches 0 if score slot14isatk booleans matches 1 run scoreboard players operation slot15 hp += juniperLeader heroattack

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
execute if score abilitynumber2 abilities matches 9 if score ward slot15 matches 0 if score durationSlot15 mark < robynDuration abilityStats run scoreboard players operation durationSlot15 mark = robynDuration abilityStats
execute if score abilitynumber2 abilities matches 9 if score ward slot15 matches 0 run scoreboard players operation marks slot15 += robyn abilityStats
execute if score abilitynumber2 abilities matches 9 if score ward slot15 matches 1 run function chtoo:wardslot15
execute if score abilitynumber2 abilities matches 9 run execute at @n[type=armor_stand,name=slot15] run particle minecraft:angry_villager ~ ~1 ~ 0.9 0.9 0.9 1 50
execute if score abilitynumber2 abilities matches 9 run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p3]"}," used Most Wanted on Slot 7!"]

#Robo
execute if score abilitynumber2 abilities matches 5 if score durationSlot15 shield < roboDuration abilityStats run scoreboard players operation durationSlot15 shield = roboDuration abilityStats
execute if score abilitynumber2 abilities matches 5 run scoreboard players operation shield slot15 += robo abilityStats
execute if score abilitynumber2 abilities matches 5 if score slot14isatk booleans matches 1 run scoreboard players operation shield slot15 += roboLeader abilityStats
execute if score abilitynumber2 abilities matches 5 run execute at @n[name=slot15,type=armor_stand] run particle minecraft:wax_off ~ ~1 ~ 0.6 0.6 0.6 0.0001 400
execute if score abilitynumber2 abilities matches 5 run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p4]"}," used Force Field on Slot 7!"]

#Kirin
execute if score abilitynumber2 abilities matches 8 if score buffDurationSlot15 atkmodifiers < kirinDuration abilityStats run scoreboard players operation buffDurationSlot15 atkmodifiers = kirinDuration abilityStats
execute if score abilitynumber2 abilities matches 8 run scoreboard players operation attackBuffSlot15 atkmodifiers += kirin abilityStats
execute if score abilitynumber2 abilities matches 8 if score slot14isatk booleans matches 1 if score slot15bleeding booleaneffects matches 0 run scoreboard players operation slot15 hp += kirinLeader abilityStats
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
execute if score abilitynumber2 abilities matches 22 at @e[name=slot15] run particle minecraft:flash{color:[1.000,1.000,1.000,1.00]} ~ ~1 ~ 0.9 0.9 0.9 0.5 100
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
#Old Boomer
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

#Scythe
execute if score abilitynumber2 abilities matches 32 if score ward slot15 matches 0 run scoreboard players operation slot15 hp /= scytheDivide abilityStats
execute if score abilitynumber2 abilities matches 32 if score ward slot15 matches 0 run scoreboard players operation slot15 hp *= scytheMult abilityStats
execute if score abilitynumber2 abilities matches 32 if score ward slot15 matches 0 if score slot10isatk booleans matches 1 if score durationSlot15 mark < scytheDuration abilityStats run scoreboard players operation durationSlot15 mark = scytheDuration abilityStats
execute if score abilitynumber2 abilities matches 32 if score ward slot15 matches 0 if score slot10isatk booleans matches 1 run scoreboard players operation marks slot15 += scytheLeader abilityStats
execute if score abilitynumber2 abilities matches 32 if score ward slot15 matches 1.. run function chtoo:wardslot15
execute if score abilitynumber2 abilities matches 32 at @e[name=slot15] run particle minecraft:sculk_soul ~ ~1 ~ 0.9 0.9 0.9 0.1 100
execute if score abilitynumber2 abilities matches 32 run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p3]"}," used Cull the Weak on Slot 7!"]

#Doc Basic Attack
execute if score abilitynumber2 abilities matches -1 if score ward slot15 matches 0 run scoreboard players operation slot15Disease disease += doc heroattack
execute if score abilitynumber2 abilities matches -1 if score ward slot15 matches 0 if score slot10isatk booleans matches 1 run scoreboard players operation slot15Disease disease += docLeader heroattack
execute if score abilitynumber2 abilities matches -1 run execute if score ward slot15 matches 1.. run function chtoo:wardslot15
execute if score abilitynumber2 abilities matches -1 at @e[name=slot15] run particle minecraft:trial_omen ~ ~1 ~ 0.9 0.9 0.9 0.1 50

#Subject ability
execute if score abilitynumber2 abilities matches 4 if score ward slot15 matches 0 if score durationSlot15 poison < subjectDuration abilityStats run scoreboard players operation durationSlot15 poison = subjectDuration abilityStats
execute if score abilitynumber2 abilities matches 4 if score ward slot15 matches 0 run scoreboard players operation slot15Poison poison += subject abilityStats
execute if score abilitynumber2 abilities matches 4 if score ward slot15 matches 0 if score slot10isatk booleans matches 1 run scoreboard players operation slot15Poison poison += subjectLeader abilityStats
execute if score abilitynumber2 abilities matches 4 at @e[name=slot15] run particle minecraft:trial_omen ~ ~1 ~ 0.9 0.9 0.9 0.1 50
execute if score abilitynumber2 abilities matches 4 run execute if score ward slot15 matches 1.. run function chtoo:wardslot15
execute if score abilitynumber2 abilities matches 4 run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p3]"}," used Contagion on Slot 7!"]

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

#Jones Ability
execute if score abilitynumber2 abilities matches 31 run scoreboard players operation abilityDmg2 saves = jonesDmg abilityStats
execute if score abilitynumber2 abilities matches 31 if score slot9isatk booleans matches 1 run scoreboard players operation abilityDmg2 saves += slot9 atkmodifiers
execute if score abilitynumber2 abilities matches 31 if score slot10isatk booleans matches 1 run scoreboard players operation abilityDmg2 saves += slot10 atkmodifiers
execute if score abilitynumber2 abilities matches 31 if score slot11isatk booleans matches 1 run scoreboard players operation abilityDmg2 saves += slot11 atkmodifiers
execute if score abilitynumber2 abilities matches 31 run scoreboard players operation abilityDmg2 saves += marks slot15
execute if score abilitynumber2 abilities matches 31 run scoreboard players operation abilityDmg2 saves /= atkmultiplier slot15
execute if score abilitynumber2 abilities matches 31 run execute if score ward slot15 matches 0 run scoreboard players operation shield slot15 -= abilityDmg2 saves
execute if score abilitynumber2 abilities matches 31 run execute if score ward slot15 matches 0 if score shield slot15 matches ..0 run scoreboard players operation slot15 hp += shield slot15
execute if score abilitynumber2 abilities matches 31 run execute if score ward slot15 matches 0 run scoreboard players operation disarmedslot15 booleaneffects = jones abilityStats
execute if score abilitynumber2 abilities matches 31 run execute if score ward slot15 matches 1 run function chtoo:wardslot15
execute if score abilitynumber2 abilities matches 31 run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p3]"}," used Lasso on Slot 7!"]
execute if score abilitynumber2 abilities matches 31 at @e[name=slot15] run particle minecraft:crit ~ ~1 ~ 0.9 0.9 0.9 0.1 100


#Sherman Basic
execute if score abilitynumber2 abilities matches -5 run execute unless score slot15bleeding booleaneffects matches 1.. run scoreboard players operation slot15 hp += sherman heroattack
execute if score abilitynumber2 abilities matches -5 run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p4]"}," healed Slot 7!"]
execute if score abilitynumber2 abilities matches -5 run execute at @n[type=armor_stand,name=slot15] run particle minecraft:composter ~ ~1 ~ 0.9 0.9 0.9 0.5 80


#Sherman Ability
execute if score abilitynumber2 abilities matches 33 run execute if score ward slot15 matches 0 if score debuffDurationSlot15 atkmodifiers < shermanDuration abilityStats run scoreboard players operation debuffDurationSlot15 atkmodifiers = shermanDuration abilityStats
execute if score abilitynumber2 abilities matches 33 run execute if score ward slot15 matches 0 run scoreboard players operation attackDebuffSlot15 atkmodifiers += shermanDebuff abilityStats
execute if score abilitynumber2 abilities matches 33 run scoreboard players operation abilityDmg saves = sherman abilityStats
execute if score abilitynumber2 abilities matches 33 if score slot9isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot9 atkmodifiers
execute if score abilitynumber2 abilities matches 33 if score slot10isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot10 atkmodifiers
execute if score abilitynumber2 abilities matches 33 if score slot11isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot11 atkmodifiers
execute if score abilitynumber2 abilities matches 33 run scoreboard players operation abilityDmg saves += marks slot15
execute if score abilitynumber2 abilities matches 33 run scoreboard players operation abilityDmg saves /= atkmultiplier slot15
execute if score abilitynumber2 abilities matches 33 run execute if score ward slot15 matches 0 run scoreboard players operation shield slot15 -= abilityDmg saves
execute if score abilitynumber2 abilities matches 33 run execute if score ward slot15 matches 0 if score shield slot15 matches ..0 run scoreboard players operation slot15 hp += shield slot15
execute if score abilitynumber2 abilities matches 33 run execute if score ward slot15 matches 1.. run function chtoo:wardslot15
execute if score abilitynumber2 abilities matches 33 at @e[name=slot15] run particle minecraft:pale_oak_leaves ~ ~1 ~ 0.9 0.9 0.9 0.1 100
execute if score abilitynumber2 abilities matches 33 at @e[name=slot15] run particle minecraft:explosion ~ ~1 ~ 0.9 0.9 0.9 0.1 10
execute if score abilitynumber2 abilities matches 33 at @e[name=slot14] run particle minecraft:pale_oak_leaves ~ ~1 ~ 0.9 0.9 0.9 0.1 50
execute if score abilitynumber2 abilities matches 33 at @e[name=slot16] run particle minecraft:pale_oak_leaves ~ ~1 ~ 0.9 0.9 0.9 0.1 50
execute if score abilitynumber2 abilities matches 33 run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p3]"}," used Grasping Roots on Slot 7!"]
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
execute if score abilitynumber2 abilities matches 33 run scoreboard players operation abilityDmg saves = sherman abilityStats
execute if score abilitynumber2 abilities matches 33 if score slot9isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot9 atkmodifiers
execute if score abilitynumber2 abilities matches 33 if score slot10isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot10 atkmodifiers
execute if score abilitynumber2 abilities matches 33 if score slot11isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot11 atkmodifiers
execute if score abilitynumber2 abilities matches 33 run scoreboard players operation abilityDmg saves /= shermanSplash abilityStats
execute if score abilitynumber2 abilities matches 33 run scoreboard players operation abilityDmg saves += marks slot16
execute if score abilitynumber2 abilities matches 33 run scoreboard players operation abilityDmg saves /= atkmultiplier slot16
execute if score abilitynumber2 abilities matches 33 run execute if score ward slot16 matches 0 run scoreboard players operation shield slot16 -= abilityDmg saves
execute if score abilitynumber2 abilities matches 33 run execute if score ward slot16 matches 0 if score shield slot16 matches ..0 run scoreboard players operation slot16 hp += shield slot16
execute if score abilitynumber2 abilities matches 33 run execute if score ward slot16 matches 1.. run function chtoo:wardslot16

#Eidolon Ability
execute if score abilitynumber2 abilities matches 28 run scoreboard players operation abilityDmg2 saves = eidolon abilityStats
execute if score abilitynumber2 abilities matches 28 if score slot9isatk booleans matches 1 run scoreboard players operation abilityDmg2 saves += slot9 atkmodifiers
execute if score abilitynumber2 abilities matches 28 if score slot10isatk booleans matches 1 run scoreboard players operation abilityDmg2 saves += slot10 atkmodifiers
execute if score abilitynumber2 abilities matches 28 if score slot11isatk booleans matches 1 run scoreboard players operation abilityDmg2 saves += slot11 atkmodifiers
execute if score abilitynumber2 abilities matches 28 run scoreboard players operation abilityDmg2 saves += marks slot15
execute if score abilitynumber2 abilities matches 28 run scoreboard players operation abilityDmg2 saves /= atkmultiplier slot15
execute if score abilitynumber2 abilities matches 28 run execute if score ward slot15 matches 0 run scoreboard players operation shield slot15 -= abilityDmg2 saves
execute if score abilitynumber2 abilities matches 28 run execute if score ward slot15 matches 0 if score slot10isatk booleans matches 1 if score durationSlot10-15 fear <= eidolonLeaderFearDuration abilityStats run scoreboard players operation durationSlot10-15 fear = eidolonLeaderFearDuration abilityStats
execute if score abilitynumber2 abilities matches 28 run execute if score ward slot15 matches 0 if score shield slot15 matches ..0 run scoreboard players operation slot15 hp += shield slot15
execute if score abilitynumber2 abilities matches 28 run execute if score ward slot15 matches 1.. run function chtoo:wardslot15
execute if score abilitynumber2 abilities matches 28 run execute at @e[name=slot15,type=armor_stand] run particle raid_omen ~ ~1 ~ 0.3 0.3 0.3 2 100

#Barley
execute if score abilitynumber2 abilities matches -36 if score barleyPart1 abilities matches 1 if score ward slot15 matches ..0 run scoreboard players operation durationSlot9-15 fear = barleyDuration abilityStats 
execute if score abilitynumber2 abilities matches -36 if score barleyPart1 abilities matches 2 if score ward slot15 matches ..0 run scoreboard players operation durationSlot10-15 fear = barleyDuration abilityStats 
execute if score abilitynumber2 abilities matches -36 if score barleyPart1 abilities matches 3 if score ward slot15 matches ..0 run scoreboard players operation durationSlot11-15 fear = barleyDuration abilityStats 
execute if score abilitynumber2 abilities matches -36 if score barleyPart1 abilities matches 4 if score ward slot15 matches ..0 run scoreboard players operation durationSlot12-15 fear = barleyDuration abilityStats 
execute if score abilitynumber2 abilities matches -36 if score ward slot15 matches ..0 if score debuffDurationSlot15 atkmodifiers < barleyDuration abilityStats run scoreboard players operation debuffDurationSlot15 atkmodifiers = barleyDuration abilityStats
execute if score abilitynumber2 abilities matches -36 if score ward slot15 matches ..0 run scoreboard players operation attackDebuffSlot15 atkmodifiers += barley abilityStats
execute if score abilitynumber2 abilities matches -36 if score ward slot15 matches 1.. run function chtoo:wardslot15
execute if score abilitynumber2 abilities matches -36 run execute at @n[type=armor_stand,name=slot15] run particle trial_omen ~ ~1 ~ 0.9 0.9 0.9 0.1 400
execute if score abilitynumber2 abilities matches -36 run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p3]"}," used Spookcrow to fear Slot 7!"]

execute if score abilitynumber2 abilities matches 36 run scoreboard players set barleyPart1 abilities 7
execute if score abilitynumber2 abilities matches 36 if score buffDurationSlot15 atkmodifiers < barleyDuration abilityStats run scoreboard players operation buffDurationSlot15 atkmodifiers = barleyDuration abilityStats
execute if score abilitynumber2 abilities matches 36 run scoreboard players operation attackBuffSlot15 atkmodifiers += barley abilityStats
execute if score abilitynumber2 abilities matches 36 run function chtoo:abilitygivetargetsp4
execute if score abilitynumber2 abilities matches 36 run execute at @n[type=armor_stand,name=slot15] run particle raid_omen ~ ~1 ~ 0.9 0.9 0.9 0.1 400
execute if score abilitynumber2 abilities matches 36 run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p4]"}," used Spookcrow to make Slot 7 scary!"]

#Igor
execute if score abilitynumber2 abilities matches 38 if score cooldown slot15 matches 1.. run scoreboard players operation cooldown slot15 -= igor abilityStats
execute if score abilitynumber2 abilities matches 38 run execute at @e[type=armor_stand,name=slot15] run particle witch ~ ~1 ~ 0.5 0.8 0.5 0.1 100
execute if score abilitynumber2 abilities matches 38 run execute if score durationSlot15 speedBuffs < igorDuration abilityStats run scoreboard players operation durationSlot15 speedBuffs = igorDuration abilityStats
execute if score abilitynumber2 abilities matches 38 run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p4]"}," used Black Lagoon Brew on Slot 7!"]
execute if score abilitynumber2 abilities matches 38 run scoreboard players operation speed slot15 += igorSpBuff abilityStats
execute if score abilitynumber2 abilities matches 38 run scoreboard players operation speedBuffSlot15 speedBuffs += igorSpBuff abilityStats
execute if score abilitynumber2 abilities matches 38 if score slot14isatk booleans matches 1 run execute if score invincibleSlot15 booleaneffects < igorDuration abilityStats run scoreboard players operation invincibleSlot15 booleaneffects = igorDuration abilityStats
execute if score abilitynumber2 abilities matches 38 if score slot14isatk booleans matches 1 run scoreboard players operation savehp15 saves = slot15 hp

#Zeebo
execute if score abilitynumber2 abilities matches 40 if score ward slot15 matches ..0 unless score curse slot15 matches 5 unless score curse slot15 matches 2 run scoreboard players set curseStacks slot15 0
execute if score abilitynumber2 abilities matches 40 if score ward slot15 matches ..0 unless score curse slot15 matches 5 unless score curse slot15 matches 2 run scoreboard players set curseDuration slot15 -1
execute if score abilitynumber2 abilities matches 40 if score ward slot15 matches ..0 unless score curse slot15 matches 5 run scoreboard players set curse slot15 2
execute if score abilitynumber2 abilities matches 40 if score ward slot15 matches ..0 unless score curse slot15 matches 5 if score curse slot15 matches 2 run scoreboard players add curseStacks slot15 1
execute if score abilitynumber2 abilities matches 40 if score ward slot15 matches ..0 run execute if score durationSlot15 burn < zeeboDuration abilityStats run scoreboard players operation durationSlot15 burn = zeeboDuration abilityStats
execute if score abilitynumber2 abilities matches 40 if score ward slot15 matches ..0 run scoreboard players operation slot15Burn burn += zeeboBurn abilityStats
execute if score abilitynumber2 abilities matches 40 run execute at @e[type=armor_stand,name=slot15] run summon firework_rocket ~ ~2 ~ {LifeTime:1,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"burst",has_twinkle:true,has_trail:true,colors:[I;13894251,16746496,16770560],fade_colors:[I;10224278]}]}}}}
execute if score abilitynumber2 abilities matches 40 run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p3]"}," used Last Laugh on Slot 7!"]
execute if score abilitynumber2 abilities matches 40 run execute at @e[type=armor_stand,name=slot15] run summon firework_rocket ~ ~2 ~ {LifeTime:1,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"burst",has_twinkle:true,has_trail:true,colors:[I;13894251,16746496,16770560],fade_colors:[I;10224278]}]}}}}
execute if score abilitynumber2 abilities matches 40 if score ward slot15 matches 1.. run function chtoo:wardslot15

#Fenrir
execute if score abilitynumber2 abilities matches 41 if score ward slot15 matches ..0 unless score curse slot15 matches 5 unless score curse slot15 matches 3 run scoreboard players set curseStacks slot15 0
execute if score abilitynumber2 abilities matches 41 if score ward slot15 matches ..0 unless score curse slot15 matches 5 unless score curse slot15 matches 3 run scoreboard players set curseDuration slot15 -1
execute if score abilitynumber2 abilities matches 41 if score ward slot15 matches ..0 unless score character# slot15 matches 41 unless score curse slot15 matches 5 run scoreboard players set curse slot15 3
execute if score abilitynumber2 abilities matches 41 run scoreboard players operation abilityDmg2 saves = fenrir abilityStats
execute if score abilitynumber2 abilities matches 41 if score slot9isatk booleans matches 1 run scoreboard players operation abilityDmg2 saves += slot9 atkmodifiers
execute if score abilitynumber2 abilities matches 41 if score slot10isatk booleans matches 1 run scoreboard players operation abilityDmg2 saves += slot10 atkmodifiers
execute if score abilitynumber2 abilities matches 41 if score slot11isatk booleans matches 1 run scoreboard players operation abilityDmg2 saves += slot11 atkmodifiers
execute if score abilitynumber2 abilities matches 41 run scoreboard players operation abilityDmg2 saves += marks slot15
execute if score abilitynumber2 abilities matches 41 run scoreboard players operation abilityDmg2 saves /= atkmultiplier slot15
execute if score abilitynumber2 abilities matches 41 run execute if score ward slot15 matches ..0 run scoreboard players operation shield slot15 -= abilityDmg2 saves
execute if score abilitynumber2 abilities matches 41 run execute at @n[type=armor_stand,name=slot15] run particle enchanted_hit ~ ~1 ~ 0.9 0.9 0.9 0.1 400
execute if score abilitynumber2 abilities matches 41 run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p3]"}," used Mark of the Wolf on Slot 7!"]
execute if score abilitynumber2 abilities matches 41 run execute if score ward slot15 matches 0 if score shield slot15 matches ..0 run scoreboard players operation slot15 hp += shield slot15

execute if score abilitynumber2 abilities matches 41 if score ward slot15 matches 1.. run function chtoo:wardslot15

#Grendel
execute if score abilitynumber2 abilities matches 43 run scoreboard players operation abilityDmg2 saves = grendel abilityStats
execute if score abilitynumber2 abilities matches 43 if score slot9isatk booleans matches 1 run scoreboard players operation abilityDmg2 saves += slot9 atkmodifiers
execute if score abilitynumber2 abilities matches 43 if score slot10isatk booleans matches 1 run scoreboard players operation abilityDmg2 saves += slot10 atkmodifiers
execute if score abilitynumber2 abilities matches 43 if score slot11isatk booleans matches 1 run scoreboard players operation abilityDmg2 saves += slot11 atkmodifiers
execute if score abilitynumber2 abilities matches 43 run scoreboard players operation abilityDmg2 saves += marks slot15
execute if score abilitynumber2 abilities matches 43 run scoreboard players operation abilityDmg2 saves /= atkmultiplier slot15
execute if score abilitynumber2 abilities matches 43 run execute if score ward slot15 matches ..0 run scoreboard players operation shield slot15 -= abilityDmg2 saves
execute if score abilitynumber2 abilities matches 43 run execute if score ward slot15 matches ..0 run scoreboard players operation slot15Disease disease += grendelDisease abilityStats
execute if score abilitynumber2 abilities matches 43 run execute at @e[type=armor_stand,name=slot15] run particle minecraft:noxious_gas ~ ~1 ~ 0.7 0.7 0.7 0.05 200
execute if score abilitynumber2 abilities matches 43 if score ward slot15 matches 1.. run function chtoo:wardslot15
execute if score abilitynumber2 abilities matches 43 run function chtoo:abilitygivetargetsp3
execute if score abilitynumber2 abilities matches -43 run scoreboard players operation abilityDmg2 saves = grendel abilityStats
execute if score abilitynumber2 abilities matches -43 if score slot9isatk booleans matches 1 run scoreboard players operation abilityDmg2 saves += slot9 atkmodifiers
execute if score abilitynumber2 abilities matches -43 if score slot10isatk booleans matches 1 run scoreboard players operation abilityDmg2 saves += slot10 atkmodifiers
execute if score abilitynumber2 abilities matches -43 if score slot11isatk booleans matches 1 run scoreboard players operation abilityDmg2 saves += slot11 atkmodifiers
execute if score abilitynumber2 abilities matches -43 run scoreboard players operation abilityDmg2 saves += marks slot15
execute if score abilitynumber2 abilities matches -43 run scoreboard players operation abilityDmg2 saves /= atkmultiplier slot15
execute if score abilitynumber2 abilities matches -43 run execute if score ward slot15 matches ..0 run scoreboard players operation shield slot15 -= abilityDmg2 saves
execute if score abilitynumber2 abilities matches -43 run execute if score ward slot15 matches ..0 run scoreboard players operation slot15Disease disease += grendelDisease abilityStats
execute if score abilitynumber2 abilities matches -43 run execute at @e[type=armor_stand,name=slot15] run particle minecraft:noxious_gas ~ ~1 ~ 0.7 0.7 0.7 0.05 200
execute if score abilitynumber2 abilities matches -43 if score ward slot15 matches 1.. run function chtoo:wardslot15
execute if score abilitynumber2 abilities matches -43 run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p3]"}," used Piercing Pestilence on Slot 7!"]
execute if score abilitynumber2 abilities matches 43 run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p3]"}," used Piercing Pestilence on Slot 7!"]
#Frank
execute if score abilitynumber2 abilities matches 34 run scoreboard players operation abilityDmg2 saves = frank abilityStats
execute if score abilitynumber2 abilities matches 34 run scoreboard players operation shield slot15 -= abilityDmg2 saves
execute if score abilitynumber2 abilities matches 34 run scoreboard players operation slot15 hp += shield slot15
execute if score abilitynumber2 abilities matches 34 run execute at @e[name=slot15,type=armor_stand] run particle minecraft:angry_villager ~ ~1 ~ 0.9 0.9 0.9 0.5 15
execute if score abilitynumber2 abilities matches 34 run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p4]"}," used IT'S ALIVE! to damage Slot 7!"]
execute if score abilitynumber2 abilities matches 34 run function chtoo:abilitygivetargetsp4

execute if score abilitynumber2 abilities matches -34 run execute if score ward slot15 matches 0 run scoreboard players operation slot15 stun = frankDuration abilityStats
execute if score abilitynumber2 abilities matches -34 run execute if score ward slot15 matches 1.. run function chtoo:wardslot15
execute if score abilitynumber2 abilities matches -34 run execute at @e[name=slot15,type=armor_stand] run particle minecraft:flash{color:[1.000,1.000,1.000,1.00]} ~ ~1 ~ 0.9 0.9 0.9 0.5 100
execute if score abilitynumber2 abilities matches -34 run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p3]"}," used IT'S ALIVE! to stun Slot 7!"]

#Stein
execute if score abilitynumber2 abilities matches 35 run scoreboard players operation abilityDmg2 saves = stein abilityStats
execute if score abilitynumber2 abilities matches 35 if score slot9isatk booleans matches 1 run scoreboard players operation abilityDmg2 saves += slot15 atkmodifiers
execute if score abilitynumber2 abilities matches 35 if score slot10isatk booleans matches 1 run scoreboard players operation abilityDmg2 saves += slot14 atkmodifiers
execute if score abilitynumber2 abilities matches 35 if score slot11isatk booleans matches 1 run scoreboard players operation abilityDmg2 saves += slot15 atkmodifiers
execute if score abilitynumber2 abilities matches 35 run scoreboard players operation abilityDmg2 saves += marks slot15
execute if score abilitynumber2 abilities matches 35 run scoreboard players operation abilityDmg2 saves /= atkmultiplier slot15
execute if score abilitynumber2 abilities matches 35 run execute if score ward slot15 matches 0 run scoreboard players operation shield slot15 -= abilityDmg2 saves
execute if score abilitynumber2 abilities matches 35 run execute if score ward slot15 matches 0 if score shield slot15 matches ..0 run scoreboard players operation slot15 hp += shield slot15
execute if score abilitynumber2 abilities matches 35 run execute if score ward slot15 matches 1.. run function chtoo:wardslot15
execute if score abilitynumber2 abilities matches 35 run execute at @e[name=slot15,type=armor_stand] run particle raid_omen ~ ~1 ~ 0.9 0.9 0.9 2 100
execute if score abilitynumber2 abilities matches 35 run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p3]"}," used Reanimation Beam to damage Slot 7!"]
execute if score abilitynumber2 abilities matches 35 run function chtoo:abilitygivetargetsp4reverse

execute if score abilitynumber2 abilities matches -35 if score slot15bleeding booleaneffects matches 0 run scoreboard players operation slot15 hp += abilityDmg2 saves
execute if score abilitynumber2 abilities matches -35 if score character# slot14 matches 35 run function chtoo:cleanseslot15
execute if score abilitynumber2 abilities matches -35 if score character# slot14 matches 34 run function chtoo:cleanseslot15
execute if score abilitynumber2 abilities matches -35 run execute at @e[name=slot15,type=armor_stand] run particle trial_omen ~ ~1 ~ 0.9 0.9 0.9 2 100
execute if score abilitynumber2 abilities matches -35 run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p4]"}," used Reanimation Beam to heal Slot 7!"]

#Boogaloo
execute if score abilitynumber2 abilities matches 37 unless score curse slot15 matches 5 run scoreboard players set curseDuration slot15 -1
execute if score abilitynumber2 abilities matches 37 if score curseStacks slot15 matches 1.. unless score curse slot15 matches 5 run scoreboard players set curseStacks slot15 0
execute if score abilitynumber2 abilities matches 37 unless score curse slot15 matches 5 run scoreboard players set curse slot15 1
execute if score abilitynumber2 abilities matches 37 run execute at @e[name=slot15,type=armor_stand] run particle minecraft:sculk_soul ~ ~1 ~ 0.9 0.9 0.9 0.15 30
execute if score abilitynumber2 abilities matches 37 run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p3]"}," used Devour Soul on Slot 7!"]

#Anubis
execute if score abilitynumber2 abilities matches 42 if score ward slot15 matches 0 run scoreboard players operation abilityDmg2 saves = anubis abilityStats
execute if score abilitynumber2 abilities matches 42 if score ward slot15 matches 0 run scoreboard players operation abilityDmg2 saves *= anubisUnusedP1 saves
execute if score abilitynumber2 abilities matches 42 run execute at @e[name=slot15,type=armor_stand] run particle minecraft:sonic_boom ~ ~2 ~ 0.03 0.03 0.03 0.01 100
execute if score abilitynumber2 abilities matches 42 run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p4]"}," used Wrath of the Desert on Slot 7!"]
execute if score abilitynumber2 abilities matches 42 if score slot9isatk booleans matches 1 run scoreboard players operation abilityDmg2 saves += slot9 atkmodifiers
execute if score abilitynumber2 abilities matches 42 if score slot10isatk booleans matches 1 run scoreboard players operation abilityDmg2 saves += slot10 atkmodifiers
execute if score abilitynumber2 abilities matches 42 if score slot11isatk booleans matches 1 run scoreboard players operation abilityDmg2 saves += slot11 atkmodifiers
execute if score abilitynumber2 abilities matches 42 run scoreboard players operation abilityDmg2 saves += marks slot15
execute if score abilitynumber2 abilities matches 42 run scoreboard players operation abilityDmg2 saves /= atkmultiplier slot15
execute if score abilitynumber2 abilities matches 42 run execute if score ward slot15 matches 0 run scoreboard players operation shield slot15 -= abilityDmg2 saves
execute if score abilitynumber2 abilities matches 42 run execute if score ward slot15 matches 0 if score shield slot15 matches ..0 run scoreboard players operation slot15 hp += shield slot15
execute if score abilitynumber2 abilities matches 42 if score ward slot15 matches 1.. run function chtoo:wardslot15


#This goes at the bottom
execute if score shield slot13 matches ..0 run scoreboard players set shield slot13 0
execute if score shield slot14 matches ..0 run scoreboard players set shield slot14 0
execute if score shield slot15 matches ..0 run scoreboard players set shield slot15 0
execute if score shield slot16 matches ..0 run scoreboard players set shield slot16 0
execute unless score abilitynumber2 abilities matches 34 unless score abilitynumber2 abilities matches 35 unless score abilitynumber2 abilities matches 36 unless score abilitynumber2 abilities matches 43 run function chtoo:turnend
#Make sure to add burn to your abilities

#Token Abilities
execute if score abilitynumber2 abilities matches 34 run scoreboard players set abilitynumber2 abilities -34
execute if score abilitynumber2 abilities matches 35 run scoreboard players set abilitynumber2 abilities -35
execute if score abilitynumber2 abilities matches 36 run scoreboard players set abilitynumber2 abilities -36
execute if score abilitynumber2 abilities matches 43 run scoreboard players set abilitynumber2 abilities -43
