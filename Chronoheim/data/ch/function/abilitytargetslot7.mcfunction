effect clear @a[tag=game1] strength
clear @p[tag=game1]
#Arthur Ability
execute if score abilitynumber abilities matches 2 run function ch:cleanseslot7

#Deuce ability
execute if score abilitynumber abilities matches 3 run scoreboard players operation abilityDmg saves = deuce heroattack
execute if score abilitynumber abilities matches 3 if score slot1isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot1 atkmodifiers
execute if score abilitynumber abilities matches 3 if score slot2isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot2 atkmodifiers
execute if score abilitynumber abilities matches 3 if score slot3isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot3 atkmodifiers
execute if score abilitynumber abilities matches 3 run scoreboard players operation abilityDmg saves += marks slot7
execute if score abilitynumber abilities matches 3 if score slot2isatk booleans matches 1 run scoreboard players operation abilityDmg saves *= deuceMultLeader abilityStats
execute if score abilitynumber abilities matches 3 if score slot2isatk booleans matches 0 run scoreboard players operation abilityDmg saves *= deuceMult abilityStats
execute if score abilitynumber abilities matches 3 run scoreboard players operation abilityDmg saves /= atkmultiplier slot7
execute if score abilitynumber abilities matches 3 run execute if score ward slot7 matches 0 run scoreboard players operation shield slot7 -= abilityDmg saves
execute if score abilitynumber abilities matches 3 run execute if score ward slot7 matches 0 if score shield slot7 matches ..0 run scoreboard players operation slot7 hp += shield slot7
execute if score abilitynumber abilities matches 3 run execute if score ward slot7 matches 1.. run function ch:wardslot7
execute if score abilitynumber abilities matches 3 run execute at @e[name=slot7,type=armor_stand] run particle crit ~ ~1 ~ 0.3 0.3 0.3 2 100
execute if score abilitynumber abilities matches 3 run tellraw @a[tag=game1] ["",{"selector":"@p[tag=p1]"}," used Double Punch on Slot 7!"]

#Subject ability
execute if score abilitynumber abilities matches 4 if score ward slot7 matches 0 if score durationSlot7 poison < subjectDuration abilityStats run scoreboard players operation durationSlot7 poison = subjectDuration abilityStats
execute if score abilitynumber abilities matches 4 if score ward slot7 matches 0 run scoreboard players operation slot7Poison poison += subject abilityStats
execute if score abilitynumber abilities matches 4 if score ward slot7 matches 0 if score slot2isatk booleans matches 1 run scoreboard players operation slot7Poison poison += subjectLeader abilityStats
execute if score abilitynumber abilities matches 4 at @e[name=slot7] run particle minecraft:trial_omen ~ ~1 ~ 0.9 0.9 0.9 0.1 50
execute if score abilitynumber abilities matches 4 run execute if score ward slot7 matches 1.. run function ch:wardslot7
execute if score abilitynumber abilities matches 4 run tellraw @a[tag=game1] ["",{"selector":"@p[tag=p1]"}," used Contagion on Slot 7!"]

#Garabaldi Ability
execute if score abilitynumber abilities matches 24 if score slot7 hp matches 1.. if score slot7bleeding booleaneffects matches 0 run scoreboard players operation slot7 hp += garabaldiHeal abilityStats
execute if score abilitynumber abilities matches 24 if score slot7 hp matches 1.. if score slot7bleeding booleaneffects matches 0 if score character# slot6 matches 24 run scoreboard players operation slot7 hp += garabaldiLeader abilityStats
execute if score abilitynumber abilities matches 24 if score slot7 hp matches 1.. run scoreboard players set ward slot7 2
execute if score abilitynumber abilities matches 24 run execute at @n[type=armor_stand,name=slot7] run particle minecraft:composter ~ ~1 ~ 0.9 0.9 0.9 0.5 100
execute if score abilitynumber abilities matches 24 run tellraw @a[tag=game1] ["",{"selector":"@p[tag=p2]"}," used Bubble Shield on Slot 7!"]

#Juniper Ability
execute if score abilitynumber abilities matches 27 run scoreboard players operation abilityDmg saves = juniper abilityStats
execute if score abilitynumber abilities matches 27 if score slot1isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot1 atkmodifiers
execute if score abilitynumber abilities matches 27 if score slot2isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot2 atkmodifiers
execute if score abilitynumber abilities matches 27 if score slot3isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot3 atkmodifiers
execute if score abilitynumber abilities matches 27 run scoreboard players operation abilityDmg saves += marks slot7
execute if score abilitynumber abilities matches 27 run scoreboard players operation abilityDmg saves /= atkmultiplier slot7
execute if score abilitynumber abilities matches 27 run execute if score ward slot7 matches 0 run scoreboard players operation shield slot7 -= abilityDmg saves
execute if score abilitynumber abilities matches 27 run execute if score ward slot7 matches 0 run scoreboard players operation slot7 stun = juniperStun abilityStats
execute if score abilitynumber abilities matches 27 run execute if score ward slot7 matches 0 if score shield slot7 matches ..0 run scoreboard players operation slot7 hp += shield slot7
execute if score abilitynumber abilities matches 27 run execute if score ward slot7 matches 1.. run function ch:wardslot7
execute if score abilitynumber abilities matches 27 run execute at @e[name=slot7,type=armor_stand] run particle firefly ~ ~1 ~ 0.3 0.3 0.3 1 100

execute if score abilitynumber abilities matches 27 run tellraw @a[tag=game1] ["",{"selector":"@p[tag=p1]"}," used Pixie Dust on Slot 7!"]

#Juniper Basic
execute if score abilitynumber abilities matches -2 run execute if score slot7bleeding booleaneffects matches 0 run scoreboard players operation slot7 hp += juniper heroattack
execute if score abilitynumber abilities matches -2 run execute at @n[type=armor_stand,name=slot7] run particle minecraft:composter ~ ~1 ~ 0.9 0.9 0.9 0.5 100
execute if score abilitynumber abilities matches -2 run execute if score slot7bleeding booleaneffects matches 0 if score slot6isatk booleans matches 1 run scoreboard players operation slot7 hp += juniperLeader heroattack

#K.O.N.G ability
execute if score abilitynumber abilities matches 7 run scoreboard players operation abilityDmg saves = kong abilityStats
execute if score abilitynumber abilities matches 7 if score slot1isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot1 atkmodifiers
execute if score abilitynumber abilities matches 7 if score slot2isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot2 atkmodifiers
execute if score abilitynumber abilities matches 7 if score slot3isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot3 atkmodifiers
execute if score abilitynumber abilities matches 7 run scoreboard players operation abilityDmg saves += marks slot7
execute if score abilitynumber abilities matches 7 run scoreboard players operation abilityDmg saves /= atkmultiplier slot7
execute if score abilitynumber abilities matches 7 run execute if score ward slot7 matches 0 run scoreboard players operation shield slot7 -= abilityDmg saves
execute if score abilitynumber abilities matches 7 run execute if score ward slot7 matches 0 if score kongSpDebuffDuration abilityStats > durationSlot7 speedDebuffs run scoreboard players operation durationSlot7 speedDebuffs = kongSpDebuffDuration abilityStats
execute if score abilitynumber abilities matches 7 run execute if score ward slot7 matches 0 if score kongDmgDebuffDuration abilityStats > debuffDurationSlot7 atkmodifiers run scoreboard players operation debuffDurationSlot7 atkmodifiers = kongDmgDebuffDuration abilityStats
execute if score abilitynumber abilities matches 7 run execute if score ward slot7 matches 0 run scoreboard players operation speedDebuffSlot7 speedDebuffs += kongSpDebuff abilityStats
execute if score abilitynumber abilities matches 7 run execute if score ward slot7 matches 0 run scoreboard players operation attackDebuffSlot7 atkmodifiers += kongDmgDebuff abilityStats
execute if score abilitynumber abilities matches 7 run execute if score ward slot7 matches 0 run execute if score slot2isatk booleans matches 1 run scoreboard players operation attackDebuffSlot7 atkmodifiers += kongLeaderDmgDebuff abilityStats
execute if score abilitynumber abilities matches 7 run execute if score ward slot7 matches 0 run execute if score slot2isatk booleans matches 1 run scoreboard players operation speedDebuffSlot7 speedDebuffs += kongLeaderSpDebuff abilityStats
execute if score abilitynumber abilities matches 7 run execute if score ward slot7 matches 0 run execute if score slot2isatk booleans matches 1 run scoreboard players operation speed slot7 -= kongLeaderSpDebuff abilityStats
execute if score abilitynumber abilities matches 7 run execute if score ward slot7 matches 0 run scoreboard players operation speed slot7 -= kongSpDebuff abilityStats
execute if score abilitynumber abilities matches 7 run execute if score ward slot7 matches 0 if score shield slot7 matches ..0 run scoreboard players operation slot7 hp += shield slot7
execute if score abilitynumber abilities matches 7 run execute if score ward slot7 matches 1.. run function ch:wardslot7
execute if score abilitynumber abilities matches 7 run execute at @n[type=armor_stand,name=slot7] run particle minecraft:explosion_emitter ~ ~1 ~
execute if score abilitynumber abilities matches 7 run tellraw @a[tag=game1] ["",{"selector":"@p[tag=p1]"}," used B.A.N.A.N.A S.L.A.M.M.A! on Slot 7!"]

#Robyn Ability
execute if score abilitynumber abilities matches 9 if score ward slot7 matches 0 if score durationSlot7 mark < robynDuration abilityStats run scoreboard players operation durationSlot7 mark = robynDuration abilityStats
execute if score abilitynumber abilities matches 9 if score ward slot7 matches 0 run scoreboard players operation marks slot7 += robyn abilityStats
execute if score abilitynumber abilities matches 9 if score ward slot7 matches 1 run function ch:wardslot7
execute if score abilitynumber abilities matches 9 run execute at @n[type=armor_stand,name=slot7] run particle minecraft:angry_villager ~ ~1 ~ 0.9 0.9 0.9 1 50
execute if score abilitynumber abilities matches 9 run tellraw @a[tag=game1] ["",{"selector":"@p[tag=p1]"}," used Most Wanted on Slot 7!"]

#Robo
execute if score abilitynumber abilities matches 5 if score durationSlot7 shield < roboDuration abilityStats run scoreboard players operation durationSlot7 shield = roboDuration abilityStats
execute if score abilitynumber abilities matches 5 run scoreboard players operation shield slot7 += robo abilityStats
execute if score abilitynumber abilities matches 5 if score slot6isatk booleans matches 1 run scoreboard players operation shield slot7 += roboLeader abilityStats
execute if score abilitynumber abilities matches 5 run execute at @n[name=slot7,type=armor_stand] run particle minecraft:wax_off ~ ~1 ~ 0.6 0.6 0.6 0.0001 400
execute if score abilitynumber abilities matches 5 run tellraw @a[tag=game1] ["",{"selector":"@p[tag=p2]"}," used Force Field on Slot 7!"]

#Kirin
execute if score abilitynumber abilities matches 8 if score buffDurationSlot7 atkmodifiers < kirinDuration abilityStats run scoreboard players operation buffDurationSlot7 atkmodifiers = kirinDuration abilityStats
execute if score abilitynumber abilities matches 8 run scoreboard players operation attackBuffSlot7 atkmodifiers += kirin abilityStats
execute if score abilitynumber abilities matches 8 if score slot6isatk booleans matches 1 if score slot7bleeding booleaneffects matches 0 run scoreboard players operation slot7 hp += kirinLeader abilityStats
execute if score abilitynumber abilities matches 8 run tellraw @a[tag=game1] ["",{"selector":"@p[tag=p2]"}," used Mythical Empowerment on Slot 7!"]
execute if score abilitynumber abilities matches 8 at @e[name=slot7] run particle minecraft:trial_spawner_detection ~ ~1 ~ 0.9 0.9 0.9 0.1 100

#Ace
execute if score abilitynumber abilities matches 12 if score ward slot7 matches 0 run scoreboard players operation cooldown slot7 = aceSetCooldown abilityStats
execute if score abilitynumber abilities matches 12 run tellraw @a[tag=game1] ["",{"selector":"@p[tag=p1]"}," used Ace of Spades on Slot 7!"]
execute if score abilitynumber abilities matches 12 if score ward slot7 matches 1.. run function ch:wardslot7
execute if score abilitynumber abilities matches 12 at @e[name=slot7] run particle minecraft:enchanted_hit ~ ~1 ~ 0.9 0.9 0.9 0.5 100
execute if score abilitynumber abilities matches 12 run execute if score character# slot2 matches 12 run scoreboard players operation durationSlot7 speedDebuffs = aceLeaderDuration abilityStats
execute if score abilitynumber abilities matches 12 run execute if score character# slot2 matches 12 run scoreboard players operation speedDebuffSlot7 speedDebuffs = aceLeader abilityStats
execute if score abilitynumber abilities matches 12 run execute if score character# slot2 matches 12 run scoreboard players operation speed slot7 -= aceLeader abilityStats
#Gabriel
execute if score abilitynumber abilities matches 22 run scoreboard players operation abilityDmg saves = gabriel abilityStats
execute if score abilitynumber abilities matches 22 if score slot1isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot1 atkmodifiers
execute if score abilitynumber abilities matches 22 if score slot2isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot2 atkmodifiers
execute if score abilitynumber abilities matches 22 if score slot3isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot3 atkmodifiers
execute if score abilitynumber abilities matches 22 if score slot1 hp matches ..0 run scoreboard players operation abilityDmg saves += gabrielDeath abilityStats
execute if score abilitynumber abilities matches 22 if score slot2 hp matches ..0 run scoreboard players operation abilityDmg saves += gabrielDeath abilityStats
execute if score abilitynumber abilities matches 22 if score slot3 hp matches ..0 run scoreboard players operation abilityDmg saves += gabrielDeath abilityStats
execute if score abilitynumber abilities matches 22 run scoreboard players operation abilityDmg saves += marks slot7
execute if score abilitynumber abilities matches 22 run scoreboard players operation abilityDmg saves /= atkmultiplier slot7
execute if score abilitynumber abilities matches 22 run execute if score ward slot7 matches 0 run scoreboard players operation shield slot7 -= abilityDmg saves
execute if score abilitynumber abilities matches 22 run execute if score ward slot7 matches 0 if score shield slot7 matches ..0 run scoreboard players operation slot7 hp += shield slot7
execute if score abilitynumber abilities matches 22 if score slot2isatk booleans matches 1 if score ward slot7 matches 0 run scoreboard players operation abilityDmg saves /= gabrielLeader abilityStats
execute if score abilitynumber abilities matches 22 if score slot2isatk booleans matches 1 if score ward slot7 matches 0 run scoreboard players operation slot2 hp += abilityDmg saves
execute if score abilitynumber abilities matches 22 at @e[name=slot7] run particle minecraft:flash{color:[1.000,1.000,1.000,1.00]} ~ ~1 ~ 0.9 0.9 0.9 0.5 100
execute if score abilitynumber abilities matches 22 run execute if score ward slot7 matches 1.. run function ch:wardslot7
#Gatsby
execute if score abilitynumber abilities matches 23 if score ward slot7 matches 0 run scoreboard players operation slot7 stun = gatsbyDuration abilityStats
execute if score abilitynumber abilities matches 23 if score ward slot7 matches 0 run scoreboard players operation savehp7 saves = slot7 hp
execute if score abilitynumber abilities matches 23 if score ward slot7 matches 0 run scoreboard players operation invincibleSlot7 booleaneffects = gatsbyDuration abilityStats
execute if score abilitynumber abilities matches 23 if score ward slot7 matches 0 run scoreboard players operation slot7EatenDuration abilities = gatsbyDuration abilityStats
execute if score abilitynumber abilities matches 23 if score ward slot7 matches 0 at @e[name=slot7] run execute at @e[distance=..4,type=!player] run tp @n[type=!minecraft:player,distance=..4] ~ ~-20 ~
execute if score abilitynumber abilities matches 23 run execute if score ward slot7 matches 1.. run function ch:wardslot7
execute if score abilitynumber abilities matches 23 if score durationSlot7-1 fear < gatsbyDuration abilityStats run scoreboard players operation durationSlot7-1 fear = gatsbyDuration abilityStats
execute if score abilitynumber abilities matches 23 if score durationSlot7-2 fear < gatsbyDuration abilityStats run scoreboard players operation durationSlot7-2 fear = gatsbyDuration abilityStats
execute if score abilitynumber abilities matches 23 if score durationSlot7-3 fear < gatsbyDuration abilityStats run scoreboard players operation durationSlot7-3 fear = gatsbyDuration abilityStats
execute if score abilitynumber abilities matches 23 if score durationSlot7-4 fear < gatsbyDuration abilityStats run scoreboard players operation durationSlot7-4 fear = gatsbyDuration abilityStats
execute if score abilitynumber abilities matches 23 if score ward slot6 matches 0 if score slot2isatk booleans matches 1 if score debuffDurationSlot6 atkmodifiers < gatsbyDuration abilityStats run scoreboard players operation debuffDurationSlot6 atkmodifiers = gatsbyDuration abilityStats
execute if score abilitynumber abilities matches 23 if score ward slot5 matches 0 if score slot2isatk booleans matches 1 if score debuffDurationSlot5 atkmodifiers < gatsbyDuration abilityStats run scoreboard players operation debuffDurationSlot5 atkmodifiers = gatsbyDuration abilityStats
execute if score abilitynumber abilities matches 23 if score ward slot8 matches 0 if score slot2isatk booleans matches 1 if score debuffDurationSlot8 atkmodifiers < gatsbyDuration abilityStats run scoreboard players operation debuffDurationSlot8 atkmodifiers = gatsbyDuration abilityStats
execute if score abilitynumber abilities matches 23 if score ward slot6 matches 0 if score slot2isatk booleans matches 1 run scoreboard players operation attackDebuffSlot6 atkmodifiers = gatsbyLeader abilityStats
execute if score abilitynumber abilities matches 23 if score ward slot5 matches 0 if score slot2isatk booleans matches 1 run scoreboard players operation attackDebuffSlot5 atkmodifiers = gatsbyLeader abilityStats
execute if score abilitynumber abilities matches 23 if score ward slot8 matches 0 if score slot2isatk booleans matches 1 run scoreboard players operation attackDebuffSlot8 atkmodifiers = gatsbyLeader abilityStats
execute if score abilitynumber abilities matches 23 if score ward slot6 matches 1.. if score slot2isatk booleans matches 1 run function ch:wardslot6
execute if score abilitynumber abilities matches 23 if score ward slot5 matches 1.. if score slot2isatk booleans matches 1 run function ch:wardslot5
execute if score abilitynumber abilities matches 23 if score ward slot8 matches 1.. if score slot2isatk booleans matches 1 run function ch:wardslot8
execute if score abilitynumber abilities matches 23 run tellraw @a[tag=game1] ["",{"selector":"@p[tag=p1]"}," used Consume on Slot 7!"]
execute if score abilitynumber abilities matches 23 at @e[name=slot7] run particle minecraft:falling_nectar ~ ~1 ~ 0.9 0.9 0.9 0.1 100
execute if score abilitynumber abilities matches 23 if score slot2isatk booleans matches 1 at @e[name=slot6] run particle minecraft:falling_nectar ~ ~1 ~ 0.9 0.9 0.9 0.1 50
execute if score abilitynumber abilities matches 23 if score slot2isatk booleans matches 1 at @e[name=slot5] run particle minecraft:falling_nectar ~ ~1 ~ 0.9 0.9 0.9 0.1 50
execute if score abilitynumber abilities matches 23 if score slot2isatk booleans matches 1 at @e[name=slot8] run particle minecraft:falling_nectar ~ ~1 ~ 0.9 0.9 0.9 0.1 50
#Old Boomer
execute if score abilitynumber abilities matches 25 run scoreboard players operation abilityDmg saves = boomer abilityStats
execute if score abilitynumber abilities matches 25 if score slot1isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot1 atkmodifiers
execute if score abilitynumber abilities matches 25 if score slot2isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot2 atkmodifiers
execute if score abilitynumber abilities matches 25 if score slot3isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot3 atkmodifiers
execute if score abilitynumber abilities matches 25 run scoreboard players operation abilityDmg saves += marks slot7
execute if score abilitynumber abilities matches 25 run scoreboard players operation abilityDmg saves /= atkmultiplier slot7
execute if score abilitynumber abilities matches 25 run execute if score ward slot7 matches 0 run scoreboard players operation shield slot7 -= abilityDmg saves
execute if score abilitynumber abilities matches 25 run execute if score ward slot7 matches 0 if score shield slot7 matches ..0 run scoreboard players operation slot7 hp += shield slot7
execute if score abilitynumber abilities matches 25 run execute if score ward slot7 matches 1.. run function ch:wardslot7
execute if score abilitynumber abilities matches 25 at @e[name=slot7] run particle minecraft:explosion ~ ~1 ~ 0.9 0.9 0.9 0.1 100
execute if score abilitynumber abilities matches 25 if score slot2isatk booleans matches 1 at @e[name=slot6] run particle minecraft:explosion ~ ~1 ~ 0.9 0.9 0.9 0.1 50
execute if score abilitynumber abilities matches 25 if score slot2isatk booleans matches 1 at @e[name=slot8] run particle minecraft:explosion ~ ~1 ~ 0.9 0.9 0.9 0.1 50
execute if score abilitynumber abilities matches 25 run tellraw @a[tag=game1] ["",{"selector":"@p[tag=p1]"}," used KABOOM! on Slot 7!"]
execute if score abilitynumber abilities matches 25 if score slot2isatk booleans matches 1 run scoreboard players operation abilityDmg saves = boomer abilityStats
execute if score abilitynumber abilities matches 25 if score slot2isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot2 atkmodifiers
execute if score abilitynumber abilities matches 25 if score slot2isatk booleans matches 1 run scoreboard players operation abilityDmg saves /= boomerLeader abilityStats
execute if score abilitynumber abilities matches 25 if score slot2isatk booleans matches 1 run scoreboard players operation abilityDmg saves += marks slot6
execute if score abilitynumber abilities matches 25 if score slot2isatk booleans matches 1 run scoreboard players operation abilityDmg saves /= atkmultiplier slot6
execute if score abilitynumber abilities matches 25 if score slot2isatk booleans matches 1 run execute if score ward slot6 matches 0 run scoreboard players operation shield slot6 -= abilityDmg saves
execute if score abilitynumber abilities matches 25 if score slot2isatk booleans matches 1 run execute if score ward slot6 matches 0 if score shield slot6 matches ..0 run scoreboard players operation slot6 hp += shield slot6
execute if score abilitynumber abilities matches 25 if score slot2isatk booleans matches 1 run execute if score ward slot6 matches 1.. run function ch:wardslot6
execute if score abilitynumber abilities matches 25 if score slot2isatk booleans matches 1 run scoreboard players operation abilityDmg saves = boomer abilityStats
execute if score abilitynumber abilities matches 25 if score slot2isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot2 atkmodifiers
execute if score abilitynumber abilities matches 25 if score slot2isatk booleans matches 1 run scoreboard players operation abilityDmg saves /= boomerLeader abilityStats
execute if score abilitynumber abilities matches 25 if score slot2isatk booleans matches 1 run scoreboard players operation abilityDmg saves += marks slot8
execute if score abilitynumber abilities matches 25 if score slot2isatk booleans matches 1 run scoreboard players operation abilityDmg saves /= atkmultiplier slot8
execute if score abilitynumber abilities matches 25 if score slot2isatk booleans matches 1 run execute if score ward slot8 matches 0 run scoreboard players operation shield slot8 -= abilityDmg saves
execute if score abilitynumber abilities matches 25 if score slot2isatk booleans matches 1 run execute if score ward slot8 matches 0 if score shield slot8 matches ..0 run scoreboard players operation slot8 hp += shield slot8
execute if score abilitynumber abilities matches 25 if score slot2isatk booleans matches 1 run execute if score ward slot8 matches 1.. run function ch:wardslot8

#Ripper
execute if score abilitynumber abilities matches 29 if score slot7 hp <= ripper abilityStats if score ward slot7 matches 0 if score invincibleSlot7 booleaneffects matches 0 run scoreboard players set slot7 hp 0
execute if score abilitynumber abilities matches 29 if score slot7 hp <= ripper abilityStats if score invincibleSlot7 booleaneffects matches 0 if score ward slot7 matches 1.. run function ch:wardslot7
execute if score abilitynumber abilities matches 29 run tellraw @a[tag=game1] ["",{"selector":"@p[tag=p1]"}," used Execute on Slot 7!"]
execute if score abilitynumber abilities matches 29 at @e[name=slot7] run particle minecraft:raid_omen ~ ~1 ~ 0.9 0.9 0.9 0.1 100


#Domino
execute if score abilitynumber abilities matches 30 run scoreboard players operation abilityDmg saves = domino abilityStats
execute if score abilitynumber abilities matches 30 if score slot1isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot1 atkmodifiers
execute if score abilitynumber abilities matches 30 if score slot2isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot2 atkmodifiers
execute if score abilitynumber abilities matches 30 if score slot3isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot3 atkmodifiers
execute if score abilitynumber abilities matches 30 run scoreboard players operation abilityDmg saves += marks slot7
execute if score abilitynumber abilities matches 30 run scoreboard players operation abilityDmg saves /= atkmultiplier slot7
execute if score abilitynumber abilities matches 30 run execute if score ward slot7 matches 0 run scoreboard players operation shield slot7 -= abilityDmg saves
execute if score abilitynumber abilities matches 30 run execute if score ward slot7 matches 0 if score shield slot7 matches ..0 run scoreboard players operation slot7 hp += shield slot7
execute if score abilitynumber abilities matches 30 if score ward slot7 matches 0 if score durationSlot7 poison < dominoDuration abilityStats run scoreboard players operation durationSlot7 poison = dominoDuration abilityStats 
execute if score abilitynumber abilities matches 30 if score ward slot7 matches 0 run scoreboard players operation slot7Poison poison += dominoPoison abilityStats 
execute if score abilitynumber abilities matches 30 run execute if score ward slot7 matches 1.. run function ch:wardslot7
execute if score abilitynumber abilities matches 30 at @e[name=slot7] run particle minecraft:trial_omen ~ ~1 ~ 0.9 0.9 0.9 0.1 100
execute if score abilitynumber abilities matches 30 run tellraw @a[tag=game1] ["",{"selector":"@p[tag=p1]"}," used Poison Dart on Slot 7!"]

#Scythe
execute if score abilitynumber abilities matches 32 if score ward slot7 matches 0 run scoreboard players operation slot7 hp /= scytheDivide abilityStats
execute if score abilitynumber abilities matches 32 if score ward slot7 matches 0 run scoreboard players operation slot7 hp *= scytheMult abilityStats
execute if score abilitynumber abilities matches 32 if score ward slot7 matches 0 if score slot2isatk booleans matches 1 if score durationSlot7 mark < scytheDuration abilityStats run scoreboard players operation durationSlot7 mark = scytheDuration abilityStats
execute if score abilitynumber abilities matches 32 if score ward slot7 matches 0 if score slot2isatk booleans matches 1 run scoreboard players operation marks slot7 += scytheLeader abilityStats
execute if score abilitynumber abilities matches 32 if score ward slot7 matches 1.. run function ch:wardslot7
execute if score abilitynumber abilities matches 32 at @e[name=slot7] run particle minecraft:sculk_soul ~ ~1 ~ 0.9 0.9 0.9 0.1 100
execute if score abilitynumber abilities matches 32 run tellraw @a[tag=game1] ["",{"selector":"@p[tag=p1]"}," used Cull the Weak on Slot 7!"]

#Doc Basic Attack
execute if score abilitynumber abilities matches -1 if score ward slot7 matches 0 run scoreboard players operation slot7Disease disease += doc heroattack
execute if score abilitynumber abilities matches -1 if score ward slot7 matches 0 if score slot2isatk booleans matches 1 run scoreboard players operation slot7Disease disease += docLeader heroattack
execute if score abilitynumber abilities matches -1 run execute if score ward slot7 matches 1.. run function ch:wardslot7
execute if score abilitynumber abilities matches -1 at @e[name=slot7] run particle minecraft:trial_omen ~ ~1 ~ 0.9 0.9 0.9 0.1 50

#Healing Totem
execute if score abilitynumber abilities matches -3 run execute if score slot7bleeding booleaneffects matches 0 run scoreboard players operation slot7 hp += healingTotemHeal spellStats
execute if score abilitynumber abilities matches -3 at @e[name=slot7] run particle minecraft:composter ~ ~1 ~ 0.9 0.9 0.9 0.1 50

#Eidolon Basic Attack
execute if score abilitynumber abilities matches -4 run execute if score ward slot7 matches 0 if score durationSlot1-7 fear <= eidolonFearDuration abilityStats if score slot1isatk booleans matches 1 run scoreboard players operation durationSlot1-7 fear = eidolonFearDuration abilityStats
execute if score abilitynumber abilities matches -4 run execute if score ward slot7 matches 0 if score durationSlot2-7 fear <= eidolonFearDuration abilityStats if score slot2isatk booleans matches 1 run scoreboard players operation durationSlot2-7 fear = eidolonFearDuration abilityStats
execute if score abilitynumber abilities matches -4 run execute if score ward slot7 matches 0 if score durationSlot3-7 fear <= eidolonFearDuration abilityStats if score slot3isatk booleans matches 1 run scoreboard players operation durationSlot3-7 fear = eidolonFearDuration abilityStats
execute if score abilitynumber abilities matches -4 run scoreboard players operation abilityDmg saves = eidolon heroattack
execute if score abilitynumber abilities matches -4 if score slot1isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot1 atkmodifiers
execute if score abilitynumber abilities matches -4 if score slot2isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot2 atkmodifiers
execute if score abilitynumber abilities matches -4 if score slot3isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot3 atkmodifiers
execute if score abilitynumber abilities matches -4 run scoreboard players operation abilityDmg saves += marks slot7
execute if score abilitynumber abilities matches -4 run scoreboard players operation abilityDmg saves /= atkmultiplier slot7
execute if score abilitynumber abilities matches -4 run execute if score ward slot7 matches 0 run scoreboard players operation shield slot7 -= abilityDmg saves
execute if score abilitynumber abilities matches -4 run execute if score ward slot7 matches 0 if score shield slot7 matches ..0 run scoreboard players operation slot7 hp += shield slot7
execute if score abilitynumber abilities matches -4 run execute if score ward slot7 matches 1.. run function ch:wardslot7
execute if score abilitynumber abilities matches -4 run execute at @e[name=slot7,type=armor_stand] run particle minecraft:crit ~ ~1 ~ 0.9 0.9 0.9 0.5 100

#Jones Ability
execute if score abilitynumber abilities matches 31 run scoreboard players operation abilityDmg saves = jonesDmg abilityStats
execute if score abilitynumber abilities matches 31 if score slot1isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot1 atkmodifiers
execute if score abilitynumber abilities matches 31 if score slot2isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot2 atkmodifiers
execute if score abilitynumber abilities matches 31 if score slot3isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot3 atkmodifiers
execute if score abilitynumber abilities matches 31 run scoreboard players operation abilityDmg saves += marks slot7
execute if score abilitynumber abilities matches 31 run scoreboard players operation abilityDmg saves /= atkmultiplier slot7
execute if score abilitynumber abilities matches 31 run execute if score ward slot7 matches 0 run scoreboard players operation shield slot7 -= abilityDmg saves
execute if score abilitynumber abilities matches 31 run execute if score ward slot7 matches 0 if score shield slot7 matches ..0 run scoreboard players operation slot7 hp += shield slot7
execute if score abilitynumber abilities matches 31 run execute if score ward slot7 matches 0 run scoreboard players operation disarmedslot7 booleaneffects = jones abilityStats
execute if score abilitynumber abilities matches 31 run execute if score ward slot7 matches 1 run function ch:wardslot7
execute if score abilitynumber abilities matches 31 run tellraw @a[tag=game1] ["",{"selector":"@p[tag=p1]"}," used Lasso on Slot 7!"]
execute if score abilitynumber abilities matches 31 at @e[name=slot7] run particle minecraft:crit ~ ~1 ~ 0.9 0.9 0.9 0.1 100


#Sherman Basic
execute if score abilitynumber abilities matches -5 run execute unless score slot7bleeding booleaneffects matches 1.. run scoreboard players operation slot7 hp += sherman heroattack
execute if score abilitynumber abilities matches -5 run tellraw @a[tag=game1] ["",{"selector":"@p[tag=p2]"}," healed Slot 7!"]
execute if score abilitynumber abilities matches -5 run execute at @n[type=armor_stand,name=slot7] run particle minecraft:composter ~ ~1 ~ 0.9 0.9 0.9 0.5 80


#Sherman Ability
execute if score abilitynumber abilities matches 33 run execute if score ward slot7 matches 0 if score debuffDurationSlot7 atkmodifiers < shermanDuration abilityStats run scoreboard players operation debuffDurationSlot7 atkmodifiers = shermanDuration abilityStats
execute if score abilitynumber abilities matches 33 run execute if score ward slot7 matches 0 run scoreboard players operation attackDebuffSlot7 atkmodifiers += shermanDebuff abilityStats
execute if score abilitynumber abilities matches 33 run scoreboard players operation abilityDmg saves = sherman abilityStats
execute if score abilitynumber abilities matches 33 if score slot1isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot1 atkmodifiers
execute if score abilitynumber abilities matches 33 if score slot2isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot2 atkmodifiers
execute if score abilitynumber abilities matches 33 if score slot3isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot3 atkmodifiers
execute if score abilitynumber abilities matches 33 run scoreboard players operation abilityDmg saves += marks slot7
execute if score abilitynumber abilities matches 33 run scoreboard players operation abilityDmg saves /= atkmultiplier slot7
execute if score abilitynumber abilities matches 33 run execute if score ward slot7 matches 0 run scoreboard players operation shield slot7 -= abilityDmg saves
execute if score abilitynumber abilities matches 33 run execute if score ward slot7 matches 0 if score shield slot7 matches ..0 run scoreboard players operation slot7 hp += shield slot7
execute if score abilitynumber abilities matches 33 run execute if score ward slot7 matches 1.. run function ch:wardslot7
execute if score abilitynumber abilities matches 33 at @e[name=slot7] run particle minecraft:pale_oak_leaves ~ ~1 ~ 0.9 0.9 0.9 0.1 100
execute if score abilitynumber abilities matches 33 at @e[name=slot7] run particle minecraft:explosion ~ ~1 ~ 0.9 0.9 0.9 0.1 10
execute if score abilitynumber abilities matches 33 at @e[name=slot6] run particle minecraft:pale_oak_leaves ~ ~1 ~ 0.9 0.9 0.9 0.1 50
execute if score abilitynumber abilities matches 33 at @e[name=slot8] run particle minecraft:pale_oak_leaves ~ ~1 ~ 0.9 0.9 0.9 0.1 50
execute if score abilitynumber abilities matches 33 run tellraw @a[tag=game1] ["",{"selector":"@p[tag=p1]"}," used Grasping Roots on Slot 7!"]
execute if score abilitynumber abilities matches 33 run scoreboard players operation abilityDmg saves = sherman abilityStats
execute if score abilitynumber abilities matches 33 if score slot1isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot1 atkmodifiers
execute if score abilitynumber abilities matches 33 if score slot2isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot2 atkmodifiers
execute if score abilitynumber abilities matches 33 if score slot3isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot3 atkmodifiers
execute if score abilitynumber abilities matches 33 run scoreboard players operation abilityDmg saves /= shermanSplash abilityStats
execute if score abilitynumber abilities matches 33 run scoreboard players operation abilityDmg saves += marks slot6
execute if score abilitynumber abilities matches 33 run scoreboard players operation abilityDmg saves /= atkmultiplier slot6
execute if score abilitynumber abilities matches 33 run execute if score ward slot6 matches 0 run scoreboard players operation shield slot6 -= abilityDmg saves
execute if score abilitynumber abilities matches 33 run execute if score ward slot6 matches 0 if score shield slot6 matches ..0 run scoreboard players operation slot6 hp += shield slot6
execute if score abilitynumber abilities matches 33 run execute if score ward slot6 matches 1.. run function ch:wardslot6
execute if score abilitynumber abilities matches 33 run scoreboard players operation abilityDmg saves = sherman abilityStats
execute if score abilitynumber abilities matches 33 if score slot1isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot1 atkmodifiers
execute if score abilitynumber abilities matches 33 if score slot2isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot2 atkmodifiers
execute if score abilitynumber abilities matches 33 if score slot3isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot3 atkmodifiers
execute if score abilitynumber abilities matches 33 run scoreboard players operation abilityDmg saves /= shermanSplash abilityStats
execute if score abilitynumber abilities matches 33 run scoreboard players operation abilityDmg saves += marks slot8
execute if score abilitynumber abilities matches 33 run scoreboard players operation abilityDmg saves /= atkmultiplier slot8
execute if score abilitynumber abilities matches 33 run execute if score ward slot8 matches 0 run scoreboard players operation shield slot8 -= abilityDmg saves
execute if score abilitynumber abilities matches 33 run execute if score ward slot8 matches 0 if score shield slot8 matches ..0 run scoreboard players operation slot8 hp += shield slot8
execute if score abilitynumber abilities matches 33 run execute if score ward slot8 matches 1.. run function ch:wardslot8

#Eidolon Ability
execute if score abilitynumber abilities matches 28 run scoreboard players operation abilityDmg saves = eidolon abilityStats
execute if score abilitynumber abilities matches 28 if score slot1isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot1 atkmodifiers
execute if score abilitynumber abilities matches 28 if score slot2isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot2 atkmodifiers
execute if score abilitynumber abilities matches 28 if score slot3isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot3 atkmodifiers
execute if score abilitynumber abilities matches 28 run scoreboard players operation abilityDmg saves += marks slot7
execute if score abilitynumber abilities matches 28 run scoreboard players operation abilityDmg saves /= atkmultiplier slot7
execute if score abilitynumber abilities matches 28 run execute if score ward slot7 matches 0 run scoreboard players operation shield slot7 -= abilityDmg saves
execute if score abilitynumber abilities matches 28 run execute if score ward slot7 matches 0 if score slot2isatk booleans matches 1 if score durationSlot2-7 fear <= eidolonLeaderFearDuration abilityStats run scoreboard players operation durationSlot2-7 fear = eidolonLeaderFearDuration abilityStats
execute if score abilitynumber abilities matches 28 run execute if score ward slot7 matches 0 if score shield slot7 matches ..0 run scoreboard players operation slot7 hp += shield slot7
execute if score abilitynumber abilities matches 28 run execute if score ward slot7 matches 1.. run function ch:wardslot7
execute if score abilitynumber abilities matches 28 run execute at @e[name=slot7,type=armor_stand] run particle raid_omen ~ ~1 ~ 0.3 0.3 0.3 2 100

#Barley
execute if score abilitynumber abilities matches -36 if score barleyPart1 abilities matches 1 if score ward slot7 matches ..0 run scoreboard players operation durationSlot1-7 fear = barleyDuration abilityStats 
execute if score abilitynumber abilities matches -36 if score barleyPart1 abilities matches 2 if score ward slot7 matches ..0 run scoreboard players operation durationSlot2-7 fear = barleyDuration abilityStats 
execute if score abilitynumber abilities matches -36 if score barleyPart1 abilities matches 3 if score ward slot7 matches ..0 run scoreboard players operation durationSlot3-7 fear = barleyDuration abilityStats 
execute if score abilitynumber abilities matches -36 if score barleyPart1 abilities matches 4 if score ward slot7 matches ..0 run scoreboard players operation durationSlot4-7 fear = barleyDuration abilityStats 
execute if score abilitynumber abilities matches -36 if score ward slot7 matches ..0 if score debuffDurationSlot7 atkmodifiers < barleyDuration abilityStats run scoreboard players operation debuffDurationSlot7 atkmodifiers = barleyDuration abilityStats
execute if score abilitynumber abilities matches -36 if score ward slot7 matches ..0 run scoreboard players operation debuffDurationSlot7 atkmodifiers += barley abilityStats
execute if score abilitynumber abilities matches -36 if score ward slot7 matches 1.. run function ch:wardslot7
execute if score abilitynumber abilities matches -36 run execute at @n[type=armor_stand,name=slot7] run particle trial_omen ~ ~1 ~ 0.9 0.9 0.9 0.1 400
execute if score abilitynumber abilities matches -36 run tellraw @a[tag=game1] ["",{"selector":"@p[tag=p1]"}," used Spookcrow to fear Slot 7!"]

execute if score abilitynumber abilities matches 36 run scoreboard players set barleyPart1 abilities 7
execute if score abilitynumber abilities matches 36 if score buffDurationSlot7 atkmodifiers < barleyDuration abilityStats run scoreboard players operation buffDurationSlot7 atkmodifiers = barleyDuration abilityStats
execute if score abilitynumber abilities matches 36 run scoreboard players operation attackBuffSlot7 atkmodifiers += barley abilityStats
execute if score abilitynumber abilities matches 36 run function ch:abilitygivetargetsp1
execute if score abilitynumber abilities matches 36 run execute at @n[type=armor_stand,name=slot7] run particle raid_omen ~ ~1 ~ 0.9 0.9 0.9 0.1 400
execute if score abilitynumber abilities matches 36 run tellraw @a[tag=game1] ["",{"selector":"@p[tag=p2]"}," used Spookcrow to make Slot 7 scary!"]

#Igor
execute if score abilitynumber abilities matches 38 run scoreboard players operation cooldown slot7 -= igor abilityStats
execute if score abilitynumber abilities matches 38 run execute at @e[type=armor_stand,name=slot7] run particle witch ~ ~1 ~ 0.5 0.8 0.5 0.1 100
execute if score abilitynumber abilities matches 38 run execute if score durationSlot7 speedBuffs < igorDuration abilityStats run scoreboard players operation durationSlot7 speedBuffs = igorDuration abilityStats
execute if score abilitynumber abilities matches 38 run tellraw @a[tag=game1] ["",{"selector":"@p[tag=p2]"}," used Black Lagoon Brew on Slot 7!"]
execute if score abilitynumber abilities matches 38 run scoreboard players operation speedBuffSlot7 speedBuffs += igorSpBuff abilityStats
execute if score abilitynumber abilities matches 38 if score slot6isatk booleans matches 1 run execute if score invincibleSlot7 booleaneffects < igorDuration abilityStats run scoreboard players operation invincibleSlot7 booleaneffects = igorDuration abilityStats
execute if score abilitynumber abilities matches 38 if score slot6isatk booleans matches 1 run scoreboard players operation savehp7 saves = slot7 hp

#Zeebo
execute if score abilitynumber abilities matches 40 if score ward slot7 matches ..0 unless score curse slot7 matches 5 unless score curse slot7 matches 2 run scoreboard players set curseStacks slot7 0
execute if score abilitynumber abilities matches 40 if score ward slot7 matches ..0 unless score curse slot7 matches 5 unless score curse slot7 matches 2 run scoreboard players set curseDuration slot7 -1
execute if score abilitynumber abilities matches 40 if score ward slot7 matches ..0 unless score curse slot7 matches 5 run scoreboard players set curse slot7 2
execute if score abilitynumber abilities matches 40 if score ward slot7 matches ..0 unless score curse slot7 matches 5 if score curse slot7 matches 2 run scoreboard players add curseStacks slot7 1
execute if score abilitynumber abilities matches 40 if score ward slot7 matches ..0 run execute if score durationSlot7 burn < zeeboDuration abilityStats run scoreboard players operation durationSlot7 burn = zeeboDuration abilityStats
execute if score abilitynumber abilities matches 40 if score ward slot7 matches ..0 run scoreboard players operation slot7Burn burn += zeebo abilityStats
execute if score abilitynumber abilities matches 40 run execute at @e[type=armor_stand,name=slot7] run summon firework_rocket ~ ~2 ~ {LifeTime:1,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"burst",has_twinkle:true,has_trail:true,colors:[I;13894251,16746496,16770560],fade_colors:[I;10224278]}]}}}}
execute if score abilitynumber abilities matches 40 run tellraw @a[tag=game1] ["",{"selector":"@p[tag=p1]"}," used Last Laugh on Slot 7!"]
execute if score abilitynumber abilities matches 40 run execute at @e[type=armor_stand,name=slot7] run summon firework_rocket ~ ~2 ~ {LifeTime:1,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"burst",has_twinkle:true,has_trail:true,colors:[I;13894251,16746496,16770560],fade_colors:[I;10224278]}]}}}}
execute if score abilitynumber abilities matches 40 if score ward slot7 matches 1.. run function ch:wardslot7

#Fenrir
execute if score abilitynumber abilities matches 41 if score ward slot7 matches ..0 unless score curse slot7 matches 5 unless score curse slot7 matches 3 run scoreboard players set curseStacks slot7 0
execute if score abilitynumber abilities matches 41 if score ward slot7 matches ..0 unless score curse slot7 matches 5 unless score curse slot7 matches 3 run scoreboard players set curseDuration slot7 -1
execute if score abilitynumber abilities matches 41 if score ward slot7 matches ..0 unless score curse slot7 matches 5 run scoreboard players set curse slot7 3
execute if score abilitynumber abilities matches 41 run scoreboard players operation abilityDmg saves = fenrir abilityStats
execute if score abilitynumber abilities matches 41 if score slot1isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot1 atkmodifiers
execute if score abilitynumber abilities matches 41 if score slot2isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot2 atkmodifiers
execute if score abilitynumber abilities matches 41 if score slot3isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot3 atkmodifiers
execute if score abilitynumber abilities matches 41 run scoreboard players operation abilityDmg saves += marks slot7
execute if score abilitynumber abilities matches 41 run scoreboard players operation abilityDmg saves /= atkmultiplier slot7
execute if score abilitynumber abilities matches 41 run execute if score ward slot7 matches ..0 run scoreboard players operation shield slot7 -= abilityDmg saves
execute if score abilitynumber abilities matches 41 run execute at @n[type=armor_stand,name=slot7] run particle enchanted_hit ~ ~1 ~ 0.9 0.9 0.9 0.1 400
execute if score abilitynumber abilities matches 41 run tellraw @a[tag=game1] ["",{"selector":"@p[tag=p1]"}," used Mark of the Wolf on Slot 7!"]

execute if score abilitynumber abilities matches 41 if score ward slot7 matches 1.. run function ch:wardslot7

#Grendel
execute if score abilitynumber abilities matches 43 run scoreboard players operation abilityDmg saves = grendel abilityStats
execute if score abilitynumber abilities matches 43 if score slot1isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot1 atkmodifiers
execute if score abilitynumber abilities matches 43 if score slot2isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot2 atkmodifiers
execute if score abilitynumber abilities matches 43 if score slot3isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot3 atkmodifiers
execute if score abilitynumber abilities matches 43 run scoreboard players operation abilityDmg saves += marks slot7
execute if score abilitynumber abilities matches 43 run scoreboard players operation abilityDmg saves /= atkmultiplier slot7
execute if score abilitynumber abilities matches 43 run execute if score ward slot7 matches ..0 run scoreboard players operation shield slot7 -= abilityDmg saves
execute if score abilitynumber abilities matches 43 run execute if score ward slot7 matches ..0 run scoreboard players operation slot7Disease disease += grendelDisease abilityStats
execute if score abilitynumber abilities matches 43 run execute at @e[type=armor_stand,name=slot7] run particle minecraft:noxious_gas ~ ~1 ~ 0.7 0.7 0.7 0.05 200
execute if score abilitynumber abilities matches 43 if score ward slot7 matches 1.. run function ch:wardslot7
execute if score abilitynumber abilities matches 43 run function ch:abilitygivetargetsp1
execute if score abilitynumber abilities matches -43 run scoreboard players operation abilityDmg saves = grendel abilityStats
execute if score abilitynumber abilities matches -43 if score slot1isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot1 atkmodifiers
execute if score abilitynumber abilities matches -43 if score slot2isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot2 atkmodifiers
execute if score abilitynumber abilities matches -43 if score slot3isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot3 atkmodifiers
execute if score abilitynumber abilities matches -43 run scoreboard players operation abilityDmg saves += marks slot7
execute if score abilitynumber abilities matches -43 run scoreboard players operation abilityDmg saves /= atkmultiplier slot7
execute if score abilitynumber abilities matches -43 run execute if score ward slot7 matches ..0 run scoreboard players operation shield slot7 -= abilityDmg saves
execute if score abilitynumber abilities matches -43 run execute if score ward slot7 matches ..0 run scoreboard players operation slot7Disease disease += grendelDisease abilityStats
execute if score abilitynumber abilities matches -43 run execute at @e[type=armor_stand,name=slot7] run particle minecraft:noxious_gas ~ ~1 ~ 0.7 0.7 0.7 0.05 200
execute if score abilitynumber abilities matches -43 if score ward slot7 matches 1.. run function ch:wardslot7
execute if score abilitynumber abilities matches -43 run tellraw @a[tag=game1] ["",{"selector":"@p[tag=p1]"}," used Piercing Pestilence on Slot 7!"]
execute if score abilitynumber abilities matches 43 run tellraw @a[tag=game1] ["",{"selector":"@p[tag=p1]"}," used Piercing Pestilence on Slot 7!"]
#Frank
execute if score abilitynumber abilities matches 34 run scoreboard players operation abilityDmg saves = frank abilityStats
execute if score abilitynumber abilities matches 34 run scoreboard players operation shield slot7 -= abilityDmg saves
execute if score abilitynumber abilities matches 34 run scoreboard players operation slot7 hp += shield slot7
execute if score abilitynumber abilities matches 34 run execute at @e[name=slot7,type=armor_stand] run particle minecraft:angry_villager ~ ~1 ~ 0.9 0.9 0.9 0.5 15
execute if score abilitynumber abilities matches 34 run tellraw @a[tag=game1] ["",{"selector":"@p[tag=p2]"}," used IT'S ALIVE! to damage Slot 7!"]
execute if score abilitynumber abilities matches 34 run function ch:abilitygivetargetsp2

execute if score abilitynumber abilities matches -34 run execute if score ward slot7 matches 0 run scoreboard players operation slot7 stun = frankDuration abilityStats
execute if score abilitynumber abilities matches -34 run execute if score ward slot7 matches 1.. run function ch:wardslot7
execute if score abilitynumber abilities matches -34 run execute at @e[name=slot7,type=armor_stand] run particle minecraft:flash{color:[1.000,1.000,1.000,1.00]} ~ ~1 ~ 0.9 0.9 0.9 0.5 100
execute if score abilitynumber abilities matches -34 run tellraw @a[tag=game1] ["",{"selector":"@p[tag=p1]"}," used IT'S ALIVE! to stun Slot 7!"]

#Stein
execute if score abilitynumber abilities matches 35 run scoreboard players operation abilityDmg saves = stein abilityStats
execute if score abilitynumber abilities matches 35 if score slot1isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot7 atkmodifiers
execute if score abilitynumber abilities matches 35 if score slot2isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot6 atkmodifiers
execute if score abilitynumber abilities matches 35 if score slot3isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot7 atkmodifiers
execute if score abilitynumber abilities matches 35 run scoreboard players operation abilityDmg saves += marks slot7
execute if score abilitynumber abilities matches 35 run scoreboard players operation abilityDmg saves /= atkmultiplier slot7
execute if score abilitynumber abilities matches 35 run execute if score ward slot7 matches 0 run scoreboard players operation shield slot7 -= abilityDmg saves
execute if score abilitynumber abilities matches 35 run execute if score ward slot7 matches 0 if score shield slot7 matches ..0 run scoreboard players operation slot7 hp += shield slot7
execute if score abilitynumber abilities matches 35 run execute if score ward slot7 matches 1.. run function ch:wardslot7
execute if score abilitynumber abilities matches 35 run execute at @e[name=slot7,type=armor_stand] run particle raid_omen ~ ~1 ~ 0.9 0.9 0.9 2 100
execute if score abilitynumber abilities matches 35 run tellraw @a[tag=game1] ["",{"selector":"@p[tag=p1]"}," used Reanimation Beam to damage Slot 7!"]
execute if score abilitynumber abilities matches 35 run function ch:abilitygivetargetsp2reverse

execute if score abilitynumber abilities matches -35 if score slot7bleeding booleaneffects matches 0 run scoreboard players operation slot7 hp += abilityDmg saves
execute if score abilitynumber abilities matches -35 if score character# slot6 matches 35 run function ch:cleanseslot7
execute if score abilitynumber abilities matches -35 if score character# slot6 matches 34 run function ch:cleanseslot7
execute if score abilitynumber abilities matches -35 run execute at @e[name=slot7,type=armor_stand] run particle trial_omen ~ ~1 ~ 0.9 0.9 0.9 2 100
execute if score abilitynumber abilities matches -35 run tellraw @a[tag=game1] ["",{"selector":"@p[tag=p2]"}," used Reanimation Beam to heal Slot 7!"]

#Boogaloo
execute if score abilitynumber abilities matches 37 unless score curse slot7 matches 5 run scoreboard players set curseDuration slot7 -1
execute if score abilitynumber abilities matches 37 if score curseStacks slot7 matches 1.. unless score curse slot7 matches 5 run scoreboard players set curseStacks slot7 0
execute if score abilitynumber abilities matches 37 unless score curse slot7 matches 5 run scoreboard players set curse slot7 1
execute if score abilitynumber abilities matches 37 run execute at @e[name=slot7,type=armor_stand] run particle minecraft:sculk_soul ~ ~1 ~ 0.9 0.9 0.9 0.15 30
execute if score abilitynumber abilities matches 37 run tellraw @a[tag=game1] ["",{"selector":"@p[tag=p1]"}," used Devour Soul on Slot 7!"]

#Dolly
execute if score abilitynumber abilities matches 42 if score ward slot7 matches 0 unless score curse slot7 matches 5 run scoreboard players set curseDuration slot7 3
execute if score abilitynumber abilities matches 42 if score ward slot7 matches 0 unless score curse slot7 matches 5 if score curseStacks slot7 matches 1.. run scoreboard players set curseStacks slot7 0
execute if score abilitynumber abilities matches 42 if score ward slot7 matches 0 unless score curse slot7 matches 5 run scoreboard players set curse slot7 4
execute if score abilitynumber abilities matches 42 if score ward slot7 matches 1.. run function ch:wardslot7
execute if score abilitynumber abilities matches 42 run execute at @e[name=slot7,type=armor_stand] run particle effect{color:[0.725,0.180,1.000]} ~ ~1 ~ 0.9 0.9 0.9 0.05 100
execute if score abilitynumber abilities matches 42 run tellraw @a[tag=game1] ["",{"selector":"@p[tag=p1]"}," used Life Link on Slot 7!"]
execute if score abilitynumber abilities matches 42 run function ch:abilitygivetargetsp1

execute if score abilitynumber abilities matches -42 if score ward slot7 matches 0 unless score curse slot7 matches 5 run scoreboard players set curseDuration slot7 3
execute if score abilitynumber abilities matches -42 if score ward slot7 matches 0 unless score curse slot7 matches 5 if score curseStacks slot7 matches 1.. run scoreboard players set curseStacks slot7 0
execute if score abilitynumber abilities matches -42 if score ward slot7 matches 0 unless score curse slot7 matches 5 run scoreboard players set curse slot7 4

execute if score abilitynumber abilities matches -42 if score ward slot7 matches 1.. run function ch:wardslot7
execute if score abilitynumber abilities matches -42 run execute at @e[name=slot7,type=armor_stand] run particle effect{color:[0.725,0.180,1.000]} ~ ~1 ~ 0.9 0.9 0.9 0.05 100
execute if score abilitynumber abilities matches -42 run tellraw @a[tag=game1] ["",{"selector":"@p[tag=p1]"}," used Life Link on Slot 7!"]


#This goes at the bottom
execute if score shield slot5 matches ..0 run scoreboard players set shield slot5 0
execute if score shield slot6 matches ..0 run scoreboard players set shield slot6 0
execute if score shield slot7 matches ..0 run scoreboard players set shield slot7 0
execute if score shield slot8 matches ..0 run scoreboard players set shield slot8 0
execute unless score abilitynumber abilities matches 34 unless score abilitynumber abilities matches 35 unless score abilitynumber abilities matches 36 unless score abilitynumber abilities matches 42 unless score abilitynumber abilities matches 43 run function ch:turnend
#Make sure to add burn to your abilities

#Token Abilities
execute if score abilitynumber abilities matches 34 run scoreboard players set abilitynumber abilities -34
execute if score abilitynumber abilities matches 35 run scoreboard players set abilitynumber abilities -35
execute if score abilitynumber abilities matches 36 run scoreboard players set abilitynumber abilities -36
execute if score abilitynumber abilities matches 42 run scoreboard players set abilitynumber abilities -42
execute if score abilitynumber abilities matches 43 run scoreboard players set abilitynumber abilities -43
