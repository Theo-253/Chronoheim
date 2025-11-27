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
execute if score abilitynumber abilities matches 12 run execute if score character# slot6 matches 12 run scoreboard players operation durationSlot2 speedDebuffs = aceLeaderDuration abilityStats
execute if score abilitynumber abilities matches 12 run execute if score character# slot6 matches 12 run scoreboard players operation speedDebuffSlot2 speedDebuffs = aceLeader abilityStats
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
execute if score abilitynumber abilities matches 31 run scoreboard players operation abilityDmg saves = eidolon abilityStats
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
execute if score abilitynumber abilities matches 33 run execute if score ward slot2 matches 0 run scoreboard players operation shield slot2 -= abilityDmg saves
execute if score abilitynumber abilities matches 33 run execute if score ward slot2 matches 0 if score shield slot2 matches ..0 run scoreboard players operation slot2 hp += shield slot2
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
execute if score abilitynumber abilities matches 28 run execute if score ward slot1 matches 0 run scoreboard players operation shield slot1 -= abilityDmg saves
execute if score abilitynumber abilities matches 28 run execute if score ward slot1 matches 0 if score slot6isatk booleans matches 1 if score durationSlot6-1 fear <= eidolonLeaderFearDuration abilityStats run scoreboard players operation durationSlot6-1 fear = eidolonLeaderFearDuration abilityStats
execute if score abilitynumber abilities matches 28 run execute if score ward slot1 matches 0 if score shield slot1 matches ..0 run scoreboard players operation slot1 hp += shield slot1
execute if score abilitynumber abilities matches 28 run execute if score ward slot1 matches 1.. run function ch:wardslot1
execute if score abilitynumber abilities matches 28 run execute at @e[name=slot1,type=armor_stand] run particle raid_omen ~ ~1 ~ 0.3 0.3 0.3 2 100

#This goes at the bottom
execute if score shield slot1 matches ..0 run scoreboard players set shield slot1 0
execute if score shield slot2 matches ..0 run scoreboard players set shield slot2 0
execute if score shield slot3 matches ..0 run scoreboard players set shield slot3 0
execute if score shield slot4 matches ..0 run scoreboard players set shield slot4 0
clear @p[tag=p2]
function ch:turnend
#Make sure to add burn to your abilities
