effect clear @a[tag=game1] strength
clear @p[tag=game1]
#Arthur Ability
execute if score abilitynumber abilities matches 2 run function ch:cleanseslot1

#Deuce ability
execute if score abilitynumber abilities matches 3 run scoreboard players operation abilityDmg saves = deuce heroattack
execute if score abilitynumber abilities matches 3 if score slot5isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot5 atkmodifiers
execute if score abilitynumber abilities matches 3 if score slot6isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot6 atkmodifiers
execute if score abilitynumber abilities matches 3 if score slot7isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot7 atkmodifiers
execute if score abilitynumber abilities matches 3 run scoreboard players operation abilityDmg saves += marks slot1
execute if score abilitynumber abilities matches 3 if score slot6isatk booleans matches 1 run scoreboard players operation abilityDmg saves *= deuceMultLeader abilityStats
execute if score abilitynumber abilities matches 3 if score slot6isatk booleans matches 0 run scoreboard players operation abilityDmg saves *= deuceMult abilityStats
execute if score abilitynumber abilities matches 3 run scoreboard players operation abilityDmg saves /= atkmultiplier slot1
execute if score abilitynumber abilities matches 3 run execute if score ward slot1 matches 0 run scoreboard players operation shield slot1 -= abilityDmg saves
execute if score abilitynumber abilities matches 3 run execute if score ward slot1 matches 0 if score shield slot1 matches ..0 run scoreboard players operation slot1 hp += shield slot1
execute if score abilitynumber abilities matches 3 run execute if score ward slot1 matches 1.. run function ch:wardslot1
execute if score abilitynumber abilities matches 3 run execute at @e[name=slot1,type=armor_stand] run particle crit ~ ~1 ~ 0.3 0.3 0.3 2 100
execute if score abilitynumber abilities matches 3 run tellraw @a[tag=game1] ["",{"selector":"@p[tag=p2]"}," used Double Punch on Slot 1!"]

#Subject ability
execute if score abilitynumber abilities matches 4 if score ward slot1 matches 0 if score durationSlot1 poison < subjectDuration abilityStats run scoreboard players operation durationSlot1 poison = subjectDuration abilityStats
execute if score abilitynumber abilities matches 4 if score ward slot1 matches 0 run scoreboard players operation slot1Poison poison += subject abilityStats
execute if score abilitynumber abilities matches 4 if score ward slot1 matches 0 if score slot6isatk booleans matches 1 run scoreboard players operation slot1Poison poison += subjectLeader abilityStats
execute if score abilitynumber abilities matches 4 at @e[name=slot1] run particle minecraft:trial_omen ~ ~1 ~ 0.9 0.9 0.9 0.1 50
execute if score abilitynumber abilities matches 4 run execute if score ward slot1 matches 1.. run function ch:wardslot1
execute if score abilitynumber abilities matches 4 run tellraw @a[tag=game1] ["",{"selector":"@p[tag=p2]"}," used Contagion on Slot 1!"]

#Garabaldi Ability
execute if score abilitynumber abilities matches 24 if score slot1 hp matches 1.. if score slot1bleeding booleaneffects matches 0 run scoreboard players operation slot1 hp += garabaldiHeal abilityStats
execute if score abilitynumber abilities matches 24 if score slot1 hp matches 1.. if score slot1bleeding booleaneffects matches 0 if score character# slot2 matches 24 run scoreboard players operation slot1 hp += garabaldiLeader abilityStats
execute if score abilitynumber abilities matches 24 if score slot1 hp matches 1.. run scoreboard players set ward slot1 2
execute if score abilitynumber abilities matches 24 if score slot1 hp matches 1.. run scoreboard players set ward slot1 2
execute if score abilitynumber abilities matches 24 run execute at @n[type=armor_stand,name=slot1] run particle minecraft:composter ~ ~1 ~ 0.9 0.9 0.9 0.5 100
execute if score abilitynumber abilities matches 24 run tellraw @a[tag=game1] ["",{"selector":"@p[tag=p1]"}," used Bubble Shield on Slot 1!"]

#Juniper Ability
execute if score abilitynumber abilities matches 27 run scoreboard players operation abilityDmg saves = juniper abilityStats
execute if score abilitynumber abilities matches 27 if score slot5isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot5 atkmodifiers
execute if score abilitynumber abilities matches 27 if score slot6isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot6 atkmodifiers
execute if score abilitynumber abilities matches 27 if score slot7isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot7 atkmodifiers
execute if score abilitynumber abilities matches 27 run scoreboard players operation abilityDmg saves += marks slot1
execute if score abilitynumber abilities matches 27 run scoreboard players operation abilityDmg saves /= atkmultiplier slot1
execute if score abilitynumber abilities matches 27 run execute if score ward slot1 matches 0 run scoreboard players operation shield slot1 -= abilityDmg saves
execute if score abilitynumber abilities matches 27 run execute if score ward slot1 matches 0 run scoreboard players operation slot1 stun = juniperStun abilityStats
execute if score abilitynumber abilities matches 27 run execute if score ward slot1 matches 0 if score shield slot1 matches ..0 run scoreboard players operation slot1 hp += shield slot1
execute if score abilitynumber abilities matches 27 run execute if score ward slot1 matches 1.. run function ch:wardslot1
execute if score abilitynumber abilities matches 27 run execute at @e[name=slot1,type=armor_stand] run particle firefly ~ ~1 ~ 0.3 0.3 0.3 1 100

execute if score abilitynumber abilities matches 27 run tellraw @a[tag=game1] ["",{"selector":"@p[tag=p2]"}," used Pixie Dust on Slot 1!"]

#Juniper Basic
execute if score abilitynumber abilities matches -2 run execute if score slot1bleeding booleaneffects matches 0 run scoreboard players operation slot1 hp += juniper heroattack
execute if score abilitynumber abilities matches -2 run execute if score slot1bleeding booleaneffects matches 0 if score slot2isatk booleans matches 1 run scoreboard players operation slot1 hp += juniperLeader heroattack
execute if score abilitynumber abilities matches -2 run execute at @n[type=armor_stand,name=slot1] run particle minecraft:composter ~ ~1 ~ 0.9 0.9 0.9 0.5 100


#K.O.N.G ability
execute if score abilitynumber abilities matches 7 run scoreboard players operation abilityDmg saves = kong abilityStats
execute if score abilitynumber abilities matches 7 if score slot5isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot5 atkmodifiers
execute if score abilitynumber abilities matches 7 if score slot6isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot6 atkmodifiers
execute if score abilitynumber abilities matches 7 if score slot7isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot7 atkmodifiers
execute if score abilitynumber abilities matches 7 run scoreboard players operation abilityDmg saves += marks slot1
execute if score abilitynumber abilities matches 7 run scoreboard players operation abilityDmg saves /= atkmultiplier slot1
execute if score abilitynumber abilities matches 7 run execute if score ward slot1 matches 0 run scoreboard players operation shield slot1 -= abilityDmg saves
execute if score abilitynumber abilities matches 7 run execute if score ward slot1 matches 0 if score kongSpDebuffDuration abilityStats > durationSlot1 speedDebuffs run scoreboard players operation durationSlot1 speedDebuffs = kongSpDebuffDuration abilityStats
execute if score abilitynumber abilities matches 7 run execute if score ward slot1 matches 0 if score kongDmgDebuffDuration abilityStats > debuffDurationSlot1 atkmodifiers run scoreboard players operation debuffDurationSlot1 atkmodifiers = kongDmgDebuffDuration abilityStats
execute if score abilitynumber abilities matches 7 run execute if score ward slot1 matches 0 run scoreboard players operation speedDebuffSlot1 speedDebuffs += kongSpDebuff abilityStats
execute if score abilitynumber abilities matches 7 run execute if score ward slot1 matches 0 run scoreboard players operation attackDebuffSlot1 atkmodifiers += kongDmgDebuff abilityStats
execute if score abilitynumber abilities matches 7 run execute if score ward slot1 matches 0 run execute if score slot6isatk booleans matches 1 run scoreboard players operation attackDebuffSlot1 atkmodifiers += kongLeaderDmgDebuff abilityStats
execute if score abilitynumber abilities matches 7 run execute if score ward slot1 matches 0 run execute if score slot6isatk booleans matches 1 run scoreboard players operation speedDebuffSlot1 speedDebuffs += kongLeaderSpDebuff abilityStats
execute if score abilitynumber abilities matches 7 run execute if score ward slot1 matches 0 run execute if score slot6isatk booleans matches 1 run scoreboard players operation speed slot1 -= kongLeaderSpDebuff abilityStats
execute if score abilitynumber abilities matches 7 run execute if score ward slot1 matches 0 run scoreboard players operation speed slot1 -= kongSpDebuff abilityStats
execute if score abilitynumber abilities matches 7 run execute if score ward slot1 matches 0 if score shield slot1 matches ..0 run scoreboard players operation slot1 hp += shield slot1
execute if score abilitynumber abilities matches 7 run execute if score ward slot1 matches 1.. run function ch:wardslot1
execute if score abilitynumber abilities matches 7 run execute at @n[type=armor_stand,name=slot1] run particle minecraft:explosion_emitter ~ ~1 ~
execute if score abilitynumber abilities matches 7 run tellraw @a[tag=game1] ["",{"selector":"@p[tag=p2]"}," used B.A.N.A.N.A S.L.A.M.M.A! on Slot 1!"]

#Robyn Ability
execute if score abilitynumber abilities matches 9 if score ward slot1 matches 0 if score durationSlot1 mark < robynDuration abilityStats run scoreboard players operation durationSlot1 mark = robynDuration abilityStats
execute if score abilitynumber abilities matches 9 if score ward slot1 matches 0 run scoreboard players operation marks slot1 += robyn abilityStats
execute if score abilitynumber abilities matches 9 if score ward slot1 matches 1 run function ch:wardslot1
execute if score abilitynumber abilities matches 9 run execute at @n[type=armor_stand,name=slot1] run particle minecraft:angry_villager ~ ~1 ~ 0.9 0.9 0.9 1 50
execute if score abilitynumber abilities matches 9 run tellraw @a[tag=game1] ["",{"selector":"@p[tag=p2]"}," used Most Wanted on Slot 1!"]

#Robo
execute if score abilitynumber abilities matches 5 if score durationSlot1 shield < roboDuration abilityStats run scoreboard players operation durationSlot1 shield = roboDuration abilityStats
execute if score abilitynumber abilities matches 5 run scoreboard players operation shield slot1 += robo abilityStats
execute if score abilitynumber abilities matches 5 if score slot2isatk booleans matches 1 run scoreboard players operation shield slot1 += roboLeader abilityStats
execute if score abilitynumber abilities matches 5 run execute at @n[name=slot1,type=armor_stand] run particle minecraft:wax_off ~ ~1 ~ 0.6 0.6 0.6 0.0001 400
execute if score abilitynumber abilities matches 5 run tellraw @a[tag=game1] ["",{"selector":"@p[tag=p1]"}," used Force Field on Slot 1!"]

#Kirin
execute if score abilitynumber abilities matches 8 if score buffDurationSlot1 atkmodifiers < kirinDuration abilityStats run scoreboard players operation buffDurationSlot1 atkmodifiers = kirinDuration abilityStats
execute if score abilitynumber abilities matches 8 run scoreboard players operation attackBuffSlot1 atkmodifiers += kirin abilityStats
execute if score abilitynumber abilities matches 8 if score slot2isatk booleans matches 1 if score slot1bleeding booleaneffects matches 0 run scoreboard players operation slot1 hp += kirinLeader abilityStats
execute if score abilitynumber abilities matches 8 run tellraw @a[tag=game1] ["",{"selector":"@p[tag=p1]"}," used Mythical Empowerment on Slot 1!"]
execute if score abilitynumber abilities matches 8 at @e[name=slot1] run particle minecraft:trial_spawner_detection ~ ~1 ~ 0.9 0.9 0.9 0.1 100

#Ace
execute if score abilitynumber abilities matches 12 if score ward slot1 matches 0 run scoreboard players operation cooldown slot1 = aceSetCooldown abilityStats
execute if score abilitynumber abilities matches 12 if score ward slot1 matches 1.. run function ch:wardslot1
execute if score abilitynumber abilities matches 12 at @e[name=slot1] run particle minecraft:enchanted_hit ~ ~1 ~ 0.9 0.9 0.9 0.5 100
execute if score abilitynumber abilities matches 12 run tellraw @a[tag=game1] ["",{"selector":"@p[tag=p2]"}," used Ace of Spades on Slot 1!"]
execute if score abilitynumber abilities matches 12 run execute if score character# slot6 matches 12 run scoreboard players operation durationSlot1 speedDebuffs = aceLeaderDuration abilityStats
execute if score abilitynumber abilities matches 12 run execute if score character# slot6 matches 12 run scoreboard players operation speedDebuffSlot1 speedDebuffs = aceLeader abilityStats
execute if score abilitynumber abilities matches 12 run execute if score character# slot6 matches 12 run scoreboard players operation speed slot1 -= aceLeader abilityStats
#Gabriel
execute if score abilitynumber abilities matches 22 run scoreboard players operation abilityDmg saves = gabriel abilityStats
execute if score abilitynumber abilities matches 22 if score slot5isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot5 atkmodifiers
execute if score abilitynumber abilities matches 22 if score slot6isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot6 atkmodifiers
execute if score abilitynumber abilities matches 22 if score slot7isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot7 atkmodifiers
execute if score abilitynumber abilities matches 22 if score slot5 hp matches ..0 run scoreboard players operation abilityDmg saves += gabrielDeath abilityStats
execute if score abilitynumber abilities matches 22 if score slot6 hp matches ..0 run scoreboard players operation abilityDmg saves += gabrielDeath abilityStats
execute if score abilitynumber abilities matches 22 if score slot7 hp matches ..0 run scoreboard players operation abilityDmg saves += gabrielDeath abilityStats
execute if score abilitynumber abilities matches 22 run scoreboard players operation abilityDmg saves += marks slot1
execute if score abilitynumber abilities matches 22 run scoreboard players operation abilityDmg saves /= atkmultiplier slot1
execute if score abilitynumber abilities matches 22 run execute if score ward slot1 matches 0 run scoreboard players operation shield slot1 -= abilityDmg saves
execute if score abilitynumber abilities matches 22 run execute if score ward slot1 matches 0 if score shield slot1 matches ..0 run scoreboard players operation slot1 hp += shield slot1
execute if score abilitynumber abilities matches 22 if score slot6isatk booleans matches 1 if score ward slot1 matches 0 run scoreboard players operation abilityDmg saves /= gabrielLeader abilityStats
execute if score abilitynumber abilities matches 22 if score slot6isatk booleans matches 1 if score ward slot1 matches 0 run scoreboard players operation slot6 hp += abilityDmg saves
execute if score abilitynumber abilities matches 22 at @e[name=slot1] run particle minecraft:flash{color:[1.000,1.000,1.000,1.00]} ~ ~1 ~ 0.9 0.9 0.9 0.5 100
execute if score abilitynumber abilities matches 22 run execute if score ward slot1 matches 1.. run function ch:wardslot1
#Gatsby
execute if score abilitynumber abilities matches 23 if score ward slot1 matches 0 run scoreboard players operation slot1 stun = gatsbyDuration abilityStats
execute if score abilitynumber abilities matches 23 if score ward slot1 matches 0 run scoreboard players operation savehp1 saves = slot1 hp 
execute if score abilitynumber abilities matches 23 if score ward slot1 matches 0 run scoreboard players operation invincibleSlot1 booleaneffects = gatsbyDuration abilityStats
execute if score abilitynumber abilities matches 23 if score ward slot1 matches 0 run scoreboard players operation slot1EatenDuration abilities = gatsbyDuration abilityStats
execute if score abilitynumber abilities matches 23 if score ward slot1 matches 0 at @e[name=slot1] run execute at @e[distance=..4,type=!player] run tp @n[type=!minecraft:player,distance=..4] ~ ~-20 ~
execute if score abilitynumber abilities matches 23 run execute if score ward slot1 matches 1.. run function ch:wardslot1
execute if score abilitynumber abilities matches 23 if score durationSlot1-5 fear < gatsbyDuration abilityStats run scoreboard players operation durationSlot1-5 fear = gatsbyDuration abilityStats
execute if score abilitynumber abilities matches 23 if score durationSlot1-6 fear < gatsbyDuration abilityStats run scoreboard players operation durationSlot1-6 fear = gatsbyDuration abilityStats
execute if score abilitynumber abilities matches 23 if score durationSlot1-7 fear < gatsbyDuration abilityStats run scoreboard players operation durationSlot1-7 fear = gatsbyDuration abilityStats
execute if score abilitynumber abilities matches 23 if score durationSlot1-8 fear < gatsbyDuration abilityStats run scoreboard players operation durationSlot1-8 fear = gatsbyDuration abilityStats
execute if score abilitynumber abilities matches 23 if score ward slot2 matches 0 if score slot6isatk booleans matches 1 if score debuffDurationSlot2 atkmodifiers < gatsbyDuration abilityStats run scoreboard players operation debuffDurationSlot2 atkmodifiers = gatsbyDuration abilityStats
execute if score abilitynumber abilities matches 23 if score ward slot3 matches 0 if score slot6isatk booleans matches 1 if score debuffDurationSlot3 atkmodifiers < gatsbyDuration abilityStats run scoreboard players operation debuffDurationSlot3 atkmodifiers = gatsbyDuration abilityStats
execute if score abilitynumber abilities matches 23 if score ward slot4 matches 0 if score slot6isatk booleans matches 1 if score debuffDurationSlot4 atkmodifiers < gatsbyDuration abilityStats run scoreboard players operation debuffDurationSlot4 atkmodifiers = gatsbyDuration abilityStats
execute if score abilitynumber abilities matches 23 if score ward slot2 matches 0 if score slot6isatk booleans matches 1 run scoreboard players operation attackDebuffSlot2 atkmodifiers = gatsbyLeader abilityStats
execute if score abilitynumber abilities matches 23 if score ward slot3 matches 0 if score slot6isatk booleans matches 1 run scoreboard players operation attackDebuffSlot3 atkmodifiers = gatsbyLeader abilityStats
execute if score abilitynumber abilities matches 23 if score ward slot4 matches 0 if score slot6isatk booleans matches 1 run scoreboard players operation attackDebuffSlot4 atkmodifiers = gatsbyLeader abilityStats
execute if score abilitynumber abilities matches 23 if score ward slot2 matches 1.. if score slot6isatk booleans matches 1 run function ch:wardslot2
execute if score abilitynumber abilities matches 23 if score ward slot3 matches 1.. if score slot6isatk booleans matches 1 run function ch:wardslot3
execute if score abilitynumber abilities matches 23 if score ward slot4 matches 1.. if score slot6isatk booleans matches 1 run function ch:wardslot4
execute if score abilitynumber abilities matches 23 at @e[name=slot1] run particle minecraft:falling_nectar ~ ~1 ~ 0.9 0.9 0.9 0.1 100
execute if score abilitynumber abilities matches 23 if score slot6isatk booleans matches 1 at @e[name=slot2] run particle minecraft:falling_nectar ~ ~1 ~ 0.9 0.9 0.9 0.1 50
execute if score abilitynumber abilities matches 23 if score slot6isatk booleans matches 1 at @e[name=slot3] run particle minecraft:falling_nectar ~ ~1 ~ 0.9 0.9 0.9 0.1 50
execute if score abilitynumber abilities matches 23 if score slot6isatk booleans matches 1 at @e[name=slot4] run particle minecraft:falling_nectar ~ ~1 ~ 0.9 0.9 0.9 0.1 50
execute if score abilitynumber abilities matches 23 run tellraw @a[tag=game1] ["",{"selector":"@p[tag=p2]"}," used Consume on Slot 1!"]
#Old Boomer
execute if score abilitynumber abilities matches 25 run scoreboard players operation abilityDmg saves = boomer abilityStats
execute if score abilitynumber abilities matches 25 if score slot5isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot5 atkmodifiers
execute if score abilitynumber abilities matches 25 if score slot6isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot6 atkmodifiers
execute if score abilitynumber abilities matches 25 if score slot7isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot7 atkmodifiers
execute if score abilitynumber abilities matches 25 run scoreboard players operation abilityDmg saves += marks slot1
execute if score abilitynumber abilities matches 25 run scoreboard players operation abilityDmg saves /= atkmultiplier slot1
execute if score abilitynumber abilities matches 25 run execute if score ward slot1 matches 0 run scoreboard players operation shield slot1 -= abilityDmg saves
execute if score abilitynumber abilities matches 25 run execute if score ward slot1 matches 0 if score shield slot1 matches ..0 run scoreboard players operation slot1 hp += shield slot1
execute if score abilitynumber abilities matches 25 run execute if score ward slot1 matches 1.. run function ch:wardslot1
execute if score abilitynumber abilities matches 25 at @e[name=slot1] run particle minecraft:explosion ~ ~1 ~ 0.9 0.9 0.9 0.1 100
execute if score abilitynumber abilities matches 25 if score slot6isatk booleans matches 1 at @e[name=slot2] run particle minecraft:explosion ~ ~1 ~ 0.9 0.9 0.9 0.1 50
execute if score abilitynumber abilities matches 25 run tellraw @a[tag=game1] ["",{"selector":"@p[tag=p2]"}," used KABOOM! on Slot 1!"]
execute if score abilitynumber abilities matches 25 if score slot6isatk booleans matches 1 run scoreboard players operation abilityDmg saves = boomer abilityStats
execute if score abilitynumber abilities matches 25 if score slot6isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot6 atkmodifiers
execute if score abilitynumber abilities matches 25 if score slot6isatk booleans matches 1 run scoreboard players operation abilityDmg saves /= boomerLeader abilityStats
execute if score abilitynumber abilities matches 25 if score slot6isatk booleans matches 1 run scoreboard players operation abilityDmg saves += marks slot2
execute if score abilitynumber abilities matches 25 if score slot6isatk booleans matches 1 run scoreboard players operation abilityDmg saves /= atkmultiplier slot2
execute if score abilitynumber abilities matches 25 if score slot6isatk booleans matches 1 run execute if score ward slot2 matches 0 run scoreboard players operation shield slot2 -= abilityDmg saves
execute if score abilitynumber abilities matches 25 if score slot6isatk booleans matches 1 run execute if score ward slot2 matches 0 if score shield slot2 matches ..0 run scoreboard players operation slot2 hp += shield slot2
execute if score abilitynumber abilities matches 25 if score slot6isatk booleans matches 1 run execute if score ward slot2 matches 1.. run function ch:wardslot2

#Ripper
execute if score abilitynumber abilities matches 29 if score slot1 hp <= ripper abilityStats if score ward slot1 matches 0 if score invincibleSlot2 booleaneffects matches 0 run scoreboard players set slot1 hp 0
execute if score abilitynumber abilities matches 29 if score slot1 hp <= ripper abilityStats if score invincibleSlot2 booleaneffects matches 0 if score ward slot1 matches 1.. run function ch:wardslot1
execute if score abilitynumber abilities matches 29 at @e[name=slot1] run particle minecraft:raid_omen ~ ~1 ~ 0.9 0.9 0.9 0.1 100
execute if score abilitynumber abilities matches 29 run tellraw @a[tag=game1] ["",{"selector":"@p[tag=p2]"}," used Execute on Slot 1!"]

#Domino
execute if score abilitynumber abilities matches 30 run scoreboard players operation abilityDmg saves = domino abilityStats
execute if score abilitynumber abilities matches 30 if score slot5isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot5 atkmodifiers
execute if score abilitynumber abilities matches 30 if score slot6isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot6 atkmodifiers
execute if score abilitynumber abilities matches 30 if score slot7isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot7 atkmodifiers
execute if score abilitynumber abilities matches 30 run scoreboard players operation abilityDmg saves += marks slot1
execute if score abilitynumber abilities matches 30 run scoreboard players operation abilityDmg saves /= atkmultiplier slot1
execute if score abilitynumber abilities matches 30 run execute if score ward slot1 matches 0 run scoreboard players operation shield slot1 -= abilityDmg saves
execute if score abilitynumber abilities matches 30 run execute if score ward slot1 matches 0 if score shield slot1 matches ..0 run scoreboard players operation slot1 hp += shield slot1
execute if score abilitynumber abilities matches 30 if score ward slot1 matches 0 if score durationSlot1 poison < dominoDuration abilityStats run scoreboard players operation durationSlot1 poison = dominoDuration abilityStats 
execute if score abilitynumber abilities matches 30 if score ward slot1 matches 0 run scoreboard players operation slot1Poison poison += dominoPoison abilityStats 
execute if score abilitynumber abilities matches 30 run execute if score ward slot1 matches 1.. run function ch:wardslot1
execute if score abilitynumber abilities matches 30 at @e[name=slot1] run particle minecraft:trial_omen ~ ~1 ~ 0.9 0.9 0.9 0.1 100
execute if score abilitynumber abilities matches 30 run tellraw @a[tag=game1] ["",{"selector":"@p[tag=p2]"}," used Poison Dart on Slot 1!"]

#Scythe
execute if score abilitynumber abilities matches 32 if score ward slot1 matches 0 run scoreboard players operation slot1 hp /= scytheDivide abilityStats
execute if score abilitynumber abilities matches 32 if score ward slot1 matches 0 run scoreboard players operation slot1 hp *= scytheMult abilityStats
execute if score abilitynumber abilities matches 32 if score ward slot1 matches 0 if score slot6isatk booleans matches 1 if score durationSlot1 mark < scytheDuration abilityStats run scoreboard players operation durationSlot1 mark = scytheDuration abilityStats
execute if score abilitynumber abilities matches 32 if score ward slot1 matches 0 if score slot6isatk booleans matches 1 run scoreboard players operation marks slot1 += scytheLeader abilityStats
execute if score abilitynumber abilities matches 32 if score ward slot1 matches 1.. run function ch:wardslot1
execute if score abilitynumber abilities matches 32 at @e[name=slot1] run particle minecraft:sculk_soul ~ ~1 ~ 0.9 0.9 0.9 0.1 100
execute if score abilitynumber abilities matches 32 run tellraw @a[tag=game1] ["",{"selector":"@p[tag=p2]"}," used Cull the Weak on Slot 1!"]

#Doc Basic Attack
execute if score abilitynumber abilities matches -1 if score ward slot1 matches 0 run scoreboard players operation slot1Disease disease += doc heroattack
execute if score abilitynumber abilities matches -1 if score ward slot1 matches 0 if score slot6isatk booleans matches 1 run scoreboard players operation slot1Disease disease += docLeader heroattack
execute if score abilitynumber abilities matches -1 run execute if score ward slot1 matches 1.. run function ch:wardslot1
execute if score abilitynumber abilities matches -1 at @e[name=slot1] run particle minecraft:trial_omen ~ ~1 ~ 0.9 0.9 0.9 0.1 50
#Healing Totem
execute if score abilitynumber abilities matches -3 run execute if score slot1bleeding booleaneffects matches 0 run scoreboard players operation slot1 hp += healingTotemHeal spellStats
execute if score abilitynumber abilities matches -3 at @e[name=slot1] run particle minecraft:composter ~ ~1 ~ 0.9 0.9 0.9 0.1 50
#Eidolon Basic Attack
execute if score abilitynumber abilities matches -4 run execute if score ward slot1 matches 0 if score durationSlot5-1 fear <= eidolonFearDuration abilityStats if score slot5isatk booleans matches 1 run scoreboard players operation durationSlot5-1 fear = eidolonFearDuration abilityStats
execute if score abilitynumber abilities matches -4 run execute if score ward slot1 matches 0 if score durationSlot6-1 fear <= eidolonFearDuration abilityStats if score slot6isatk booleans matches 1 run scoreboard players operation durationSlot6-1 fear = eidolonFearDuration abilityStats
execute if score abilitynumber abilities matches -4 run execute if score ward slot1 matches 0 if score durationSlot7-1 fear <= eidolonFearDuration abilityStats if score slot7isatk booleans matches 1 run scoreboard players operation durationSlot7-1 fear = eidolonFearDuration abilityStats
execute if score abilitynumber abilities matches -4 run scoreboard players operation abilityDmg saves = eidolon heroattack
execute if score abilitynumber abilities matches -4 if score slot5isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot5 atkmodifiers
execute if score abilitynumber abilities matches -4 if score slot6isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot6 atkmodifiers
execute if score abilitynumber abilities matches -4 if score slot7isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot7 atkmodifiers
execute if score abilitynumber abilities matches -4 run scoreboard players operation abilityDmg saves += marks slot1
execute if score abilitynumber abilities matches -4 run scoreboard players operation abilityDmg saves /= atkmultiplier slot1
execute if score abilitynumber abilities matches -4 run execute if score ward slot1 matches 0 run scoreboard players operation shield slot1 -= abilityDmg saves
execute if score abilitynumber abilities matches -4 run execute if score ward slot1 matches 0 if score shield slot1 matches ..0 run scoreboard players operation slot1 hp += shield slot1
execute if score abilitynumber abilities matches -4 run execute if score ward slot1 matches 1.. run function ch:wardslot1
execute if score abilitynumber abilities matches -4 run execute at @e[name=slot1,type=armor_stand] run particle minecraft:crit ~ ~1 ~ 0.9 0.9 0.9 0.5 100

#Jones Ability
execute if score abilitynumber abilities matches 31 run scoreboard players operation abilityDmg saves = jonesDmg abilityStats
execute if score abilitynumber abilities matches 31 if score slot5isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot5 atkmodifiers
execute if score abilitynumber abilities matches 31 if score slot6isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot6 atkmodifiers
execute if score abilitynumber abilities matches 31 if score slot7isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot7 atkmodifiers
execute if score abilitynumber abilities matches 31 run scoreboard players operation abilityDmg saves += marks slot1
execute if score abilitynumber abilities matches 31 run scoreboard players operation abilityDmg saves /= atkmultiplier slot1
execute if score abilitynumber abilities matches 31 run execute if score ward slot1 matches 0 run scoreboard players operation shield slot1 -= abilityDmg saves
execute if score abilitynumber abilities matches 31 run execute if score ward slot1 matches 0 if score shield slot1 matches ..0 run scoreboard players operation slot1 hp += shield slot1
execute if score abilitynumber abilities matches 31 run execute if score ward slot1 matches 0 run scoreboard players operation disarmedslot1 booleaneffects = jones abilityStats
execute if score abilitynumber abilities matches 31 run execute if score ward slot1 matches 1 run function ch:wardslot1
execute if score abilitynumber abilities matches 31 run tellraw @a[tag=game1] ["",{"selector":"@p[tag=p2]"}," used Lasso on Slot 1!"]
execute if score abilitynumber abilities matches 31 at @e[name=slot1] run particle minecraft:crit ~ ~1 ~ 0.9 0.9 0.9 0.1 100

#Sherman Basic
execute if score abilitynumber abilities matches -5 run execute unless score slot1bleeding booleaneffects matches 1.. run scoreboard players operation slot1 hp += sherman heroattack
execute if score abilitynumber abilities matches -5 run tellraw @a[tag=game1] ["",{"selector":"@p[tag=p1]"}," healed Slot 1!"]
execute if score abilitynumber abilities matches -5 run execute at @n[type=armor_stand,name=slot1] run particle minecraft:composter ~ ~1 ~ 0.9 0.9 0.9 0.5 80

#Sherman Ability
execute if score abilitynumber abilities matches 33 run execute if score ward slot1 matches 0 if score debuffDurationSlot1 atkmodifiers < shermanDuration abilityStats run scoreboard players operation debuffDurationSlot1 atkmodifiers = shermanDuration abilityStats
execute if score abilitynumber abilities matches 33 run execute if score ward slot1 matches 0 run scoreboard players operation attackDebuffSlot1 atkmodifiers += shermanDebuff abilityStats
execute if score abilitynumber abilities matches 33 run scoreboard players operation abilityDmg saves = sherman abilityStats
execute if score abilitynumber abilities matches 33 if score slot5isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot5 atkmodifiers
execute if score abilitynumber abilities matches 33 if score slot6isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot6 atkmodifiers
execute if score abilitynumber abilities matches 33 if score slot7isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot7 atkmodifiers
execute if score abilitynumber abilities matches 33 run scoreboard players operation abilityDmg saves += marks slot1
execute if score abilitynumber abilities matches 33 run scoreboard players operation abilityDmg saves /= atkmultiplier slot1
execute if score abilitynumber abilities matches 33 run execute if score ward slot1 matches 0 run scoreboard players operation shield slot1 -= abilityDmg saves
execute if score abilitynumber abilities matches 33 run execute if score ward slot1 matches 0 if score shield slot1 matches ..0 run scoreboard players operation slot1 hp += shield slot1
execute if score abilitynumber abilities matches 33 run execute if score ward slot1 matches 1.. run function ch:wardslot1
execute if score abilitynumber abilities matches 33 at @e[name=slot1] run particle minecraft:pale_oak_leaves ~ ~1 ~ 0.9 0.9 0.9 0.1 100
execute if score abilitynumber abilities matches 33 at @e[name=slot1] run particle minecraft:explosion ~ ~1 ~ 0.9 0.9 0.9 0.1 10
execute if score abilitynumber abilities matches 33 at @e[name=slot2] run particle minecraft:pale_oak_leaves ~ ~1 ~ 0.9 0.9 0.9 0.1 50
#execute if score abilitynumber abilities matches 33 at @e[name=slot3] run particle minecraft:pale_oak_leaves ~ ~1 ~ 0.9 0.9 0.9 0.1 50
execute if score abilitynumber abilities matches 33 run tellraw @a[tag=game1] ["",{"selector":"@p[tag=p2]"}," used Grasping Roots on Slot 1!"]
execute if score abilitynumber abilities matches 33 run scoreboard players operation abilityDmg saves = sherman abilityStats
execute if score abilitynumber abilities matches 33 if score slot5isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot5 atkmodifiers
execute if score abilitynumber abilities matches 33 if score slot6isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot6 atkmodifiers
execute if score abilitynumber abilities matches 33 if score slot7isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot7 atkmodifiers
execute if score abilitynumber abilities matches 33 run scoreboard players operation abilityDmg saves /= shermanSplash abilityStats
execute if score abilitynumber abilities matches 33 run scoreboard players operation abilityDmg saves += marks slot2
execute if score abilitynumber abilities matches 33 run scoreboard players operation abilityDmg saves /= atkmultiplier slot2
execute if score abilitynumber abilities matches 33 run execute if score ward slot2 matches ..0 run scoreboard players operation shield slot2 -= abilityDmg saves
execute if score abilitynumber abilities matches 33 run execute if score ward slot2 matches ..0 if score shield slot2 matches ..0 run scoreboard players operation slot2 hp += shield slot2
execute if score abilitynumber abilities matches 33 run execute if score ward slot2 matches 1.. run function ch:wardslot2
#execute if score abilitynumber abilities matches 33 run scoreboard players operation abilityDmg saves = sherman abilityStats
#execute if score abilitynumber abilities matches 33 if score slot5isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot5 atkmodifiers
#execute if score abilitynumber abilities matches 33 if score slot6isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot6 atkmodifiers
#execute if score abilitynumber abilities matches 33 if score slot7isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot7 atkmodifiers
#execute if score abilitynumber abilities matches 33 run scoreboard players operation abilityDmg saves /= shermanSplash abilityStats
#execute if score abilitynumber abilities matches 33 run scoreboard players operation abilityDmg saves += marks slot3
#execute if score abilitynumber abilities matches 33 run scoreboard players operation abilityDmg saves /= atkmultiplier slot3
#execute if score abilitynumber abilities matches 33 run execute if score ward slot3 matches 0 run scoreboard players operation shield slot3 -= abilityDmg saves
#execute if score abilitynumber abilities matches 33 run execute if score ward slot3 matches 0 if score shield slot3 matches ..0 run scoreboard players operation slot3 hp += shield slot3
#execute if score abilitynumber abilities matches 33 run execute if score ward slot3 matches 1.. run function ch:wardslot3

#Eidolon Ability
execute if score abilitynumber abilities matches 28 run scoreboard players operation abilityDmg saves = eidolon abilityStats
execute if score abilitynumber abilities matches 28 if score slot5isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot5 atkmodifiers
execute if score abilitynumber abilities matches 28 if score slot6isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot6 atkmodifiers
execute if score abilitynumber abilities matches 28 if score slot7isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot7 atkmodifiers
execute if score abilitynumber abilities matches 28 run scoreboard players operation abilityDmg saves += marks slot1
execute if score abilitynumber abilities matches 28 run scoreboard players operation abilityDmg saves /= atkmultiplier slot1
execute if score abilitynumber abilities matches 28 run execute if score ward slot1 matches ..0 run scoreboard players operation shield slot1 -= abilityDmg saves
execute if score abilitynumber abilities matches 28 run execute if score ward slot1 matches ..0 if score slot6isatk booleans matches 1 if score durationSlot6-1 fear <= eidolonLeaderFearDuration abilityStats run scoreboard players operation durationSlot6-1 fear = eidolonLeaderFearDuration abilityStats
execute if score abilitynumber abilities matches 28 run execute if score ward slot1 matches ..0 if score shield slot1 matches ..0 run scoreboard players operation slot1 hp += shield slot1
execute if score abilitynumber abilities matches 28 run execute if score ward slot1 matches 1.. run function ch:wardslot1
execute if score abilitynumber abilities matches 28 run execute at @e[name=slot1,type=armor_stand] run particle raid_omen ~ ~1 ~ 0.3 0.3 0.3 2 100

#Barley
execute if score abilitynumber abilities matches -36 if score barleyPart1 abilities matches 5 if score ward slot1 matches ..0 run scoreboard players operation durationSlot5-1 fear = barleyDuration abilityStats 
execute if score abilitynumber abilities matches -36 if score barleyPart1 abilities matches 6 if score ward slot1 matches ..0 run scoreboard players operation durationSlot6-1 fear = barleyDuration abilityStats 
execute if score abilitynumber abilities matches -36 if score barleyPart1 abilities matches 7 if score ward slot1 matches ..0 run scoreboard players operation durationSlot7-1 fear = barleyDuration abilityStats 
execute if score abilitynumber abilities matches -36 if score barleyPart1 abilities matches 8 if score ward slot1 matches ..0 run scoreboard players operation durationSlot8-1 fear = barleyDuration abilityStats 
execute if score abilitynumber abilities matches -36 if score ward slot1 matches ..0 if score debuffDurationSlot1 atkmodifiers < barleyDuration abilityStats run scoreboard players operation debuffDurationSlot1 atkmodifiers = barleyDuration abilityStats
execute if score abilitynumber abilities matches -36 if score ward slot1 matches ..0 run scoreboard players operation attackDebuffSlot1 atkmodifiers += barley abilityStats
execute if score abilitynumber abilities matches -36 if score ward slot1 matches 1.. run function ch:wardslot1
execute if score abilitynumber abilities matches -36 run execute at @n[type=armor_stand,name=slot1] run particle trial_omen ~ ~1 ~ 0.9 0.9 0.9 0.1 400
execute if score abilitynumber abilities matches -36 run tellraw @a[tag=game1] ["",{"selector":"@p[tag=p2]"}," used Spookcrow to fear Slot 1!"]

execute if score abilitynumber abilities matches 36 run scoreboard players set barleyPart1 abilities 1
execute if score abilitynumber abilities matches 36 if score buffDurationSlot1 atkmodifiers < barleyDuration abilityStats run scoreboard players operation buffDurationSlot1 atkmodifiers = barleyDuration abilityStats
execute if score abilitynumber abilities matches 36 run scoreboard players operation attackBuffSlot1 atkmodifiers += barley abilityStats
execute if score abilitynumber abilities matches 36 run function ch:abilitygivetargetsp1
execute if score abilitynumber abilities matches 36 run execute at @n[type=armor_stand,name=slot1] run particle raid_omen ~ ~1 ~ 0.9 0.9 0.9 0.1 400
execute if score abilitynumber abilities matches 36 run tellraw @a[tag=game1] ["",{"selector":"@p[tag=p1]"}," used Spookcrow to make Slot 1 scary!"]

#Igor
execute if score abilitynumber abilities matches 38 if score cooldown slot1 matches 1.. run scoreboard players operation cooldown slot1 -= igor abilityStats
execute if score abilitynumber abilities matches 38 run execute at @e[type=armor_stand,name=slot1] run particle witch ~ ~1 ~ 0.5 0.8 0.5 0.1 100
execute if score abilitynumber abilities matches 38 run execute if score durationSlot1 speedBuffs < igorDuration abilityStats run scoreboard players operation durationSlot1 speedBuffs = igorDuration abilityStats
execute if score abilitynumber abilities matches 38 run scoreboard players operation speed slot1 += igorSpBuff abilityStats
execute if score abilitynumber abilities matches 38 run scoreboard players operation speedBuffSlot1 speedBuffs += igorSpBuff abilityStats
execute if score abilitynumber abilities matches 38 run tellraw @a[tag=game1] ["",{"selector":"@p[tag=p1]"}," used Black Lagoon Brew on Slot 1!"]
execute if score abilitynumber abilities matches 38 if score slot2isatk booleans matches 1 run execute if score invincibleSlot1 booleaneffects < igorDuration abilityStats run scoreboard players operation invincibleSlot1 booleaneffects = igorDuration abilityStats
execute if score abilitynumber abilities matches 38 if score slot2isatk booleans matches 1 run scoreboard players operation savehp1 saves = slot1 hp

#Zeebo
execute if score abilitynumber abilities matches 40 if score ward slot1 matches ..0 unless score curse slot1 matches 5 unless score curse slot1 matches 2 run scoreboard players set curseStacks slot1 0
execute if score abilitynumber abilities matches 40 if score ward slot1 matches ..0 unless score curse slot1 matches 5 unless score curse slot1 matches 2 run scoreboard players set curseDuration slot1 0
execute if score abilitynumber abilities matches 40 if score ward slot1 matches ..0 unless score curse slot1 matches 5 run scoreboard players set curse slot1 2
execute if score abilitynumber abilities matches 40 if score ward slot1 matches ..0 unless score curse slot1 matches 5 if score curse slot1 matches 2 run scoreboard players add curseStacks slot1 1
execute if score abilitynumber abilities matches 40 if score ward slot1 matches ..0 run execute if score durationSlot1 burn < zeeboDuration abilityStats run scoreboard players operation durationSlot1 burn = zeeboDuration abilityStats
execute if score abilitynumber abilities matches 40 if score ward slot1 matches ..0 run scoreboard players operation slot1Burn burn += zeeboBurn abilityStats
execute if score abilitynumber abilities matches 40 run execute at @e[type=armor_stand,name=slot1] run summon firework_rocket ~ ~2 ~ {LifeTime:1,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"burst",has_twinkle:true,has_trail:true,colors:[I;13894251,16746496,16770560],fade_colors:[I;10224278]}]}}}}
execute if score abilitynumber abilities matches 40 run execute at @e[type=armor_stand,name=slot1] run summon firework_rocket ~ ~2 ~ {LifeTime:1,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"burst",has_twinkle:true,has_trail:true,colors:[I;13894251,16746496,16770560],fade_colors:[I;10224278]}]}}}}
execute if score abilitynumber abilities matches 40 run tellraw @a[tag=game1] ["",{"selector":"@p[tag=p2]"}," used Last Laugh on Slot 1!"]
execute if score abilitynumber abilities matches 40 if score ward slot1 matches 1.. run function ch:wardslot1

#Fenrir
execute if score abilitynumber abilities matches 41 if score ward slot1 matches ..0 unless score curse slot1 matches 5 unless score curse slot1 matches 3 run scoreboard players set curseStacks slot1 0
execute if score abilitynumber abilities matches 41 if score ward slot1 matches ..0 unless score curse slot1 matches 5 unless score curse slot1 matches 3 run scoreboard players set curseDuration slot1 0
execute if score abilitynumber abilities matches 41 if score ward slot1 matches ..0 unless score character# slot1 matches 41 unless score curse slot1 matches 5 run scoreboard players set curse slot1 3
execute if score abilitynumber abilities matches 41 run scoreboard players operation abilityDmg saves = fenrir abilityStats
execute if score abilitynumber abilities matches 41 if score slot5isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot5 atkmodifiers
execute if score abilitynumber abilities matches 41 if score slot6isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot6 atkmodifiers
execute if score abilitynumber abilities matches 41 if score slot7isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot7 atkmodifiers
execute if score abilitynumber abilities matches 41 run scoreboard players operation abilityDmg saves += marks slot1
execute if score abilitynumber abilities matches 41 run scoreboard players operation abilityDmg saves /= atkmultiplier slot1
execute if score abilitynumber abilities matches 41 run execute if score ward slot1 matches ..0 run scoreboard players operation shield slot1 -= abilityDmg saves
execute if score abilitynumber abilities matches 41 run execute at @n[type=armor_stand,name=slot1] run particle enchanted_hit ~ ~1 ~ 0.9 0.9 0.9 0.1 400
execute if score abilitynumber abilities matches 41 run tellraw @a[tag=game1] ["",{"selector":"@p[tag=p2]"}," used Mark of the Wolf on Slot 1!"]
execute if score abilitynumber abilities matches 41 run execute if score ward slot1 matches 0 if score shield slot1 matches ..0 run scoreboard players operation slot1 hp += shield slot1
execute if score abilitynumber abilities matches 41 if score ward slot1 matches 1.. run function ch:wardslot1

#Grendel
execute if score abilitynumber abilities matches 43 run scoreboard players operation abilityDmg saves = grendel abilityStats
execute if score abilitynumber abilities matches 43 if score slot5isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot5 atkmodifiers
execute if score abilitynumber abilities matches 43 if score slot6isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot6 atkmodifiers
execute if score abilitynumber abilities matches 43 if score slot7isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot7 atkmodifiers
execute if score abilitynumber abilities matches 43 run scoreboard players operation abilityDmg saves += marks slot1
execute if score abilitynumber abilities matches 43 run scoreboard players operation abilityDmg saves /= atkmultiplier slot1
execute if score abilitynumber abilities matches 43 run execute if score ward slot1 matches ..0 run scoreboard players operation shield slot1 -= abilityDmg saves
execute if score abilitynumber abilities matches 43 run execute if score ward slot1 matches ..0 run scoreboard players operation slot1Disease disease += grendelDisease abilityStats
execute if score abilitynumber abilities matches 43 run execute at @e[type=armor_stand,name=slot1] run particle minecraft:noxious_gas ~ ~1 ~ 0.7 0.7 0.7 0.05 200
execute if score abilitynumber abilities matches 43 if score ward slot1 matches 1.. run function ch:wardslot1
#execute if score abilitynumber abilities matches 43 run function ch:abilitygivetargetsp2
execute if score abilitynumber abilities matches 43 run function ch:abilitygivetargetsp2
execute if score abilitynumber abilities matches -43 run scoreboard players operation abilityDmg saves = grendel abilityStats
execute if score abilitynumber abilities matches -43 if score slot5isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot5 atkmodifiers
execute if score abilitynumber abilities matches -43 if score slot6isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot6 atkmodifiers
execute if score abilitynumber abilities matches -43 if score slot7isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot7 atkmodifiers
execute if score abilitynumber abilities matches -43 run scoreboard players operation abilityDmg saves += marks slot1
execute if score abilitynumber abilities matches -43 run scoreboard players operation abilityDmg saves /= atkmultiplier slot1
execute if score abilitynumber abilities matches -43 run execute if score ward slot1 matches ..0 run scoreboard players operation shield slot1 -= abilityDmg saves
execute if score abilitynumber abilities matches -43 run execute if score ward slot1 matches ..0 run scoreboard players operation slot1Disease disease += grendelDisease abilityStats
execute if score abilitynumber abilities matches -43 run execute at @e[type=armor_stand,name=slot1] run particle minecraft:noxious_gas ~ ~1 ~ 0.7 0.7 0.7 0.05 200
execute if score abilitynumber abilities matches -43 if score ward slot1 matches 1.. run function ch:wardslot1
execute if score abilitynumber abilities matches -43 run tellraw @a[tag=game1] ["",{"selector":"@p[tag=p2]"}," used Piercing Pestilence on Slot 1!"]
execute if score abilitynumber abilities matches 43 run tellraw @a[tag=game1] ["",{"selector":"@p[tag=p2]"}," used Piercing Pestilence on Slot 1!"]
#Frank
execute if score abilitynumber abilities matches 34 run scoreboard players operation abilityDmg saves = frank abilityStats
execute if score abilitynumber abilities matches 34 run scoreboard players operation shield slot1 -= abilityDmg saves
execute if score abilitynumber abilities matches 34 run scoreboard players operation slot1 hp += shield slot1
execute if score abilitynumber abilities matches 34 run execute at @e[name=slot1,type=armor_stand] run particle minecraft:angry_villager ~ ~1 ~ 0.9 0.9 0.9 0.5 15
execute if score abilitynumber abilities matches 34 run tellraw @a[tag=game1] ["",{"selector":"@p[tag=p1]"}," used IT'S ALIVE! to damage Slot 1!"]
execute if score abilitynumber abilities matches 34 run function ch:abilitygivetargetsp1
execute if score abilitynumber abilities matches -34 run execute if score ward slot1 matches 0 run scoreboard players operation slot1 stun = frankDuration abilityStats
execute if score abilitynumber abilities matches -34 run execute if score ward slot1 matches 1.. run function ch:wardslot1
execute if score abilitynumber abilities matches -34 run execute at @e[name=slot1,type=armor_stand] run particle minecraft:flash{color:[1.000,1.000,1.000,1.00]} ~ ~1 ~ 0.9 0.9 0.9 0.5 100
execute if score abilitynumber abilities matches -34 run tellraw @a[tag=game1] ["",{"selector":"@p[tag=p2]"}," used IT'S ALIVE! to stun Slot 1!"]

#Stein
execute if score abilitynumber abilities matches 35 run scoreboard players operation abilityDmg saves = stein abilityStats
execute if score abilitynumber abilities matches 35 if score slot5isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot1 atkmodifiers
execute if score abilitynumber abilities matches 35 if score slot6isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot2 atkmodifiers
execute if score abilitynumber abilities matches 35 if score slot7isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot3 atkmodifiers
execute if score abilitynumber abilities matches 35 run scoreboard players operation abilityDmg saves += marks slot1
execute if score abilitynumber abilities matches 35 run scoreboard players operation abilityDmg saves /= atkmultiplier slot1
execute if score abilitynumber abilities matches 35 run execute if score ward slot1 matches 0 run scoreboard players operation shield slot1 -= abilityDmg saves
execute if score abilitynumber abilities matches 35 run execute if score ward slot1 matches 0 if score shield slot1 matches ..0 run scoreboard players operation slot1 hp += shield slot1
execute if score abilitynumber abilities matches 35 run execute if score ward slot1 matches 1.. run function ch:wardslot1
execute if score abilitynumber abilities matches 35 run execute at @e[name=slot1,type=armor_stand] run particle raid_omen ~ ~1 ~ 0.9 0.9 0.9 2 100
execute if score abilitynumber abilities matches 35 run tellraw @a[tag=game1] ["",{"selector":"@p[tag=p2]"}," used Reanimation Beam to damage Slot 1!"]
execute if score abilitynumber abilities matches 35 run function ch:abilitygivetargetsp1reverse

execute if score abilitynumber abilities matches -35 if score slot1bleeding booleaneffects matches 0 run scoreboard players operation slot1 hp += abilityDmg saves
execute if score abilitynumber abilities matches -35 if score character# slot2 matches 35 run function ch:cleanseslot1
execute if score abilitynumber abilities matches -35 if score character# slot2 matches 34 run function ch:cleanseslot1
execute if score abilitynumber abilities matches -35 run execute at @e[name=slot1,type=armor_stand] run particle trial_omen ~ ~1 ~ 0.9 0.9 0.9 2 100
execute if score abilitynumber abilities matches -35 run tellraw @a[tag=game1] ["",{"selector":"@p[tag=p1]"}," used Reanimation Beam to heal Slot 1!"]

#Boogaloo
execute if score abilitynumber abilities matches 37 unless score curse slot1 matches 5 run scoreboard players set curseDuration slot1 -1
execute if score abilitynumber abilities matches 37 if score curseStacks slot1 matches 1.. unless score curse slot1 matches 5 run scoreboard players set curseStacks slot1 0
execute if score abilitynumber abilities matches 37 unless score curse slot1 matches 5 run scoreboard players set curse slot1 1
execute if score abilitynumber abilities matches 37 run execute at @e[name=slot1,type=armor_stand] run particle minecraft:sculk_soul ~ ~1 ~ 0.9 0.9 0.9 0.15 30
execute if score abilitynumber abilities matches 37 run tellraw @a[tag=game1] ["",{"selector":"@p[tag=p2]"}," used Devour Soul on Slot 1!"]

#Anubis
execute if score abilitynumber abilities matches 42 if score ward slot1 matches 0 run scoreboard players operation abilityDmg saves = anubis abilityStats
execute if score abilitynumber abilities matches 42 if score ward slot1 matches 0 run scoreboard players operation abilityDmg saves *= anubisUnusedP2 saves
execute if score abilitynumber abilities matches 42 run execute at @e[name=slot1,type=armor_stand] run particle minecraft:sonic_boom ~ ~1.5 ~ 0.03 0.03 0.03 0.01 100
execute if score abilitynumber abilities matches 42 run tellraw @a[tag=game1] ["",{"selector":"@p[tag=p2]"}," used Wrath of the Desert on Slot 1!"]
execute if score abilitynumber abilities matches 42 if score slot5isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot5 atkmodifiers
execute if score abilitynumber abilities matches 42 if score slot6isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot6 atkmodifiers
execute if score abilitynumber abilities matches 42 if score slot7isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot7 atkmodifiers
execute if score abilitynumber abilities matches 42 run scoreboard players operation abilityDmg saves += marks slot1
execute if score abilitynumber abilities matches 42 run scoreboard players operation abilityDmg saves /= atkmultiplier slot1
execute if score abilitynumber abilities matches 42 run execute if score ward slot1 matches 0 run scoreboard players operation shield slot1 -= abilityDmg saves
execute if score abilitynumber abilities matches 42 run execute if score ward slot1 matches 0 if score shield slot1 matches ..0 run scoreboard players operation slot1 hp += shield slot1
execute if score abilitynumber abilities matches 42 if score ward slot1 matches 1.. run function ch:wardslot1

#This goes at the bottom
execute if score shield slot1 matches ..0 run scoreboard players set shield slot1 0
execute if score shield slot2 matches ..0 run scoreboard players set shield slot2 0
execute if score shield slot3 matches ..0 run scoreboard players set shield slot3 0
execute if score shield slot4 matches ..0 run scoreboard players set shield slot4 0
execute unless score abilitynumber abilities matches 34 unless score abilitynumber abilities matches 35 unless score abilitynumber abilities matches 36 unless score abilitynumber abilities matches 43 run function ch:turnend
#Make sure to add burn to your abilities

#Token Abilities
execute if score abilitynumber abilities matches 34 run scoreboard players set abilitynumber abilities -34
execute if score abilitynumber abilities matches 35 run scoreboard players set abilitynumber abilities -35
execute if score abilitynumber abilities matches 36 run scoreboard players set abilitynumber abilities -36
execute if score abilitynumber abilities matches 43 run scoreboard players set abilitynumber abilities -43

