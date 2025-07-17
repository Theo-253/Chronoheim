effect clear @a[tag=game1] strength
clear @p[tag=game1]
#Deuce ability
execute if score abilitynumber abilities matches 3 run scoreboard players operation abilityDmg saves = deuce heroattack
execute if score abilitynumber abilities matches 3 if score slot5isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot5 atkmodifiers
execute if score abilitynumber abilities matches 3 if score slot6isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot6 atkmodifiers
execute if score abilitynumber abilities matches 3 if score slot7isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot7 atkmodifiers
execute if score abilitynumber abilities matches 3 run scoreboard players operation abilityDmg saves += marks slot2
execute if score abilitynumber abilities matches 3 if score slot6isatk booleans matches 1 run scoreboard players operation abilityDmg saves *= deuceMultLeader abilityStats
execute if score abilitynumber abilities matches 3 if score slot6isatk booleans matches 0 run scoreboard players operation abilityDmg saves *= deuceMult abilityStats
execute if score abilitynumber abilities matches 3 run scoreboard players operation abilityDmg saves /= atkmultiplier slot2
execute if score abilitynumber abilities matches 3 run execute if score ward slot2 matches 0 run scoreboard players operation shield slot2 -= abilityDmg saves
execute if score abilitynumber abilities matches 3 run execute if score ward slot2 matches 0 if score shield slot2 matches ..0 run scoreboard players operation slot2 hp += shield slot2
execute if score abilitynumber abilities matches 3 run execute if score ward slot2 matches 1.. run function ch:wardslot2
execute if score abilitynumber abilities matches 3 run execute at @e[name=slot2,type=armor_stand] run particle crit ~ ~1 ~ 0.3 0.3 0.3 2 100
execute if score abilitynumber abilities matches 3 run tellraw @a[tag=game1] ["",{"selector":"@p[tag=p2]"}," used Double Punch on Slot 2!"]

#Garabaldi Ability
execute if score abilitynumber abilities matches 24 if score slot2 hp matches 1.. if score slot2bleeding booleaneffects matches 0 run scoreboard players operation slot2 hp += garabaldiHeal abilityStats
execute if score abilitynumber abilities matches 24 if score slot2 hp matches 1.. if score slot2bleeding booleaneffects matches 0 if score character# slot2 matches 24 run scoreboard players operation slot2 hp += garabaldiLeader abilityStats
execute if score abilitynumber abilities matches 24 if score slot2 hp matches 1.. run scoreboard players set ward slot2 2
execute if score abilitynumber abilities matches 24 run execute at @n[type=armor_stand,name=slot2] run particle minecraft:composter ~ ~1 ~ 0.9 0.9 0.9 0.5 100

execute if score abilitynumber abilities matches 24 run tellraw @a[tag=game1] ["",{"selector":"@p[tag=p1]"}," used Bubble Shield on Slot 2!"]

#Juniper Ability
execute if score abilitynumber abilities matches 27 run scoreboard players operation abilityDmg saves = juniper abilityStats
execute if score abilitynumber abilities matches 27 if score slot5isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot5 atkmodifiers
execute if score abilitynumber abilities matches 27 if score slot6isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot6 atkmodifiers
execute if score abilitynumber abilities matches 27 if score slot7isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot7 atkmodifiers
execute if score abilitynumber abilities matches 27 run scoreboard players operation abilityDmg saves += marks slot2
execute if score abilitynumber abilities matches 27 run scoreboard players operation abilityDmg saves /= atkmultiplier slot2
execute if score abilitynumber abilities matches 27 run execute if score ward slot2 matches 0 run scoreboard players operation shield slot2 -= abilityDmg saves
execute if score abilitynumber abilities matches 27 run execute if score ward slot2 matches 0 run scoreboard players operation slot2 stun = juniperStun abilityStats
execute if score abilitynumber abilities matches 27 run execute if score ward slot2 matches 0 if score shield slot2 matches ..0 run scoreboard players operation slot2 hp += shield slot2
execute if score abilitynumber abilities matches 27 run execute if score ward slot2 matches 1.. run function ch:wardslot2
execute if score abilitynumber abilities matches 27 run execute at @e[name=slot2,type=armor_stand] run particle firefly ~ ~1 ~ 0.3 0.3 0.3 1 100

execute if score abilitynumber abilities matches 27 run tellraw @a[tag=game1] ["",{"selector":"@p[tag=p2]"}," used Pixie Dust on Slot 2!"]

#Juniper Basic
execute if score abilitynumber abilities matches -2 run execute if score slot2bleeding booleaneffects matches 0 run scoreboard players operation slot2 hp += juniper heroattack
execute if score abilitynumber abilities matches -2 run execute at @n[type=armor_stand,name=slot2] run particle minecraft:composter ~ ~1 ~ 0.9 0.9 0.9 0.5 100
execute if score abilitynumber abilities matches -2 if score character# slot2 matches 27 run function ch:cleanseslot2


#K.O.N.G ability
execute if score abilitynumber abilities matches 7 run scoreboard players operation abilityDmg saves = kong abilityStats
execute if score abilitynumber abilities matches 7 if score slot5isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot5 atkmodifiers
execute if score abilitynumber abilities matches 7 if score slot6isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot6 atkmodifiers
execute if score abilitynumber abilities matches 7 if score slot7isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot7 atkmodifiers
execute if score abilitynumber abilities matches 7 run scoreboard players operation abilityDmg saves += marks slot2
execute if score abilitynumber abilities matches 7 run scoreboard players operation abilityDmg saves /= atkmultiplier slot2
execute if score abilitynumber abilities matches 7 run execute if score ward slot2 matches 0 run scoreboard players operation shield slot2 -= abilityDmg saves
execute if score abilitynumber abilities matches 7 run execute if score ward slot2 matches 0 if score kongSpDebuffDuration abilityStats > durationSlot2 speedDebuffs run scoreboard players operation durationSlot2 speedDebuffs = kongSpDebuffDuration abilityStats
execute if score abilitynumber abilities matches 7 run execute if score ward slot2 matches 0 if score kongDmgDebuffDuration abilityStats > debuffDurationSlot2 atkmodifiers run scoreboard players operation debuffDurationSlot2 atkmodifiers = kongDmgDebuffDuration abilityStats
execute if score abilitynumber abilities matches 7 run execute if score ward slot2 matches 0 run scoreboard players operation speedDebuffSlot2 speedDebuffs += kongSpDebuff abilityStats
execute if score abilitynumber abilities matches 7 run execute if score ward slot2 matches 0 run scoreboard players operation attackDebuffSlot2 atkmodifiers += kongDmgDebuff abilityStats
execute if score abilitynumber abilities matches 7 run execute if score ward slot2 matches 0 run execute if score slot6isatk booleans matches 1 run scoreboard players operation attackDebuffSlot2 atkmodifiers += kongLeaderDmgDebuff abilityStats
execute if score abilitynumber abilities matches 7 run execute if score ward slot2 matches 0 run execute if score slot6isatk booleans matches 1 run scoreboard players operation speedDebuffSlot2 speedDebuffs += kongLeaderSpDebuff abilityStats
execute if score abilitynumber abilities matches 7 run execute if score ward slot2 matches 0 run execute if score slot6isatk booleans matches 1 run scoreboard players operation speed slot2 -= kongLeaderSpDebuff abilityStats
execute if score abilitynumber abilities matches 7 run execute if score ward slot2 matches 0 run scoreboard players operation speed slot2 -= kongSpDebuff abilityStats
execute if score abilitynumber abilities matches 7 run execute if score ward slot2 matches 0 if score shield slot2 matches ..0 run scoreboard players operation slot2 hp += shield slot2
execute if score abilitynumber abilities matches 7 run execute if score ward slot2 matches 1.. run function ch:wardslot2
execute if score abilitynumber abilities matches 7 run execute at @n[type=armor_stand,name=slot2] run particle minecraft:explosion_emitter ~ ~1 ~
execute if score abilitynumber abilities matches 7 run tellraw @a[tag=game1] ["",{"selector":"@p[tag=p2]"}," used B.A.N.A.N.A S.L.A.M.M.A! on Slot 2!"]

#Robyn Ability
execute if score abilitynumber abilities matches 9 if score ward slot2 matches 0 run scoreboard players operation marks slot2 += robyn abilityStats
execute if score abilitynumber abilities matches 9 if score ward slot2 matches 1 run function ch:wardslot2
execute if score abilitynumber abilities matches 9 run execute at @n[type=armor_stand,name=slot2] run particle minecraft:angry_villager ~ ~1 ~ 0.9 0.9 0.9 1 50
execute if score abilitynumber abilities matches 9 run tellraw @a[tag=game1] ["",{"selector":"@p[tag=p2]"}," used Most Wanted on Slot 2!"]
#Robo
execute if score abilitynumber abilities matches 5 if score durationSlot2 shield < roboDuration abilityStats run scoreboard players operation durationSlot2 shield = roboDuration abilityStats
execute if score abilitynumber abilities matches 5 run scoreboard players operation shield slot2 += robo abilityStats
execute if score abilitynumber abilities matches 5 if score slot2isatk booleans matches 1 run scoreboard players operation shield slot2 += roboLeader abilityStats
execute if score abilitynumber abilities matches 5 run execute at @n[name=slot2,type=armor_stand] run particle minecraft:wax_off ~ ~1 ~ 0.6 0.6 0.6 0.0001 400
execute if score abilitynumber abilities matches 5 run tellraw @a[tag=game1] ["",{"selector":"@p[tag=p1]"}," used Force Field on Slot 2!"]

#Kirin
execute if score abilitynumber abilities matches 8 if score buffDurationSlot2 atkmodifiers < kirinDuration abilityStats run scoreboard players operation buffDurationSlot2 atkmodifiers = kirinDuration abilityStats
execute if score abilitynumber abilities matches 8 run scoreboard players operation attackBuffSlot2 atkmodifiers += kirin abilityStats
execute if score abilitynumber abilities matches 8 if score slot2isatk booleans matches 1 if score slot2bleeding booleaneffects matches 0.. run scoreboard players operation slot2 hp += kirinLeader abilityStats
execute if score abilitynumber abilities matches 8 run tellraw @a[tag=game1] ["",{"selector":"@p[tag=p1]"}," used Mythical Empowerment on Slot 2!"]
execute if score abilitynumber abilities matches 8 at @e[name=slot2] run particle minecraft:trial_spawner_detection ~ ~1 ~ 0.9 0.9 0.9 0.1 100

#Ace
execute if score abilitynumber abilities matches 12 if score ward slot2 matches 0 run scoreboard players operation cooldown slot2 = aceSetCooldown abilityStats
execute if score abilitynumber abilities matches 12 if score ward slot2 matches 1.. run function ch:wardslot2
execute if score abilitynumber abilities matches 12 at @e[name=slot2] run particle minecraft:enchanted_hit ~ ~1 ~ 0.9 0.9 0.9 0.5 100
execute if score abilitynumber abilities matches 12 run tellraw @a[tag=game1] ["",{"selector":"@p[tag=p2]"}," used Ace of Spades on Slot 2!"]
execute if score abilitynumber abilities matches 12 run execute if score character# slot6 matches 12 run scoreboard players operation durationSlot2 speedDebuffs = aceLeaderDuration abilityStats
execute if score abilitynumber abilities matches 12 run execute if score character# slot6 matches 12 run scoreboard players operation speedDebuffSlot2 speedDebuffs = aceLeader abilityStats
execute if score abilitynumber abilities matches 12 run execute if score character# slot6 matches 12 run scoreboard players operation speed slot2 -= aceLeader abilityStats
#Gabriel
execute if score abilitynumber abilities matches 22 run scoreboard players operation abilityDmg saves = gabriel abilityStats
execute if score abilitynumber abilities matches 22 if score slot5isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot5 atkmodifiers
execute if score abilitynumber abilities matches 22 if score slot6isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot6 atkmodifiers
execute if score abilitynumber abilities matches 22 if score slot7isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot7 atkmodifiers
execute if score abilitynumber abilities matches 22 if score slot5 hp matches ..0 run scoreboard players operation abilityDmg saves += gabrielDeath abilityStats
execute if score abilitynumber abilities matches 22 if score slot6 hp matches ..0 run scoreboard players operation abilityDmg saves += gabrielDeath abilityStats
execute if score abilitynumber abilities matches 22 if score slot7 hp matches ..0 run scoreboard players operation abilityDmg saves += gabrielDeath abilityStats
execute if score abilitynumber abilities matches 22 run scoreboard players operation abilityDmg saves += marks slot2
execute if score abilitynumber abilities matches 22 run scoreboard players operation abilityDmg saves /= atkmultiplier slot2
execute if score abilitynumber abilities matches 22 run execute if score ward slot2 matches 0 run scoreboard players operation shield slot2 -= abilityDmg saves
execute if score abilitynumber abilities matches 22 run execute if score ward slot2 matches 0 if score shield slot2 matches ..0 run scoreboard players operation slot2 hp += shield slot2
execute if score abilitynumber abilities matches 22 if score slot6isatk booleans matches 1 if score ward slot2 matches 0 run scoreboard players operation abilityDmg saves /= gabrielLeader abilityStats
execute if score abilitynumber abilities matches 22 if score slot6isatk booleans matches 1 if score ward slot2 matches 0 run scoreboard players operation slot6 hp += abilityDmg saves
execute if score abilitynumber abilities matches 22 at @e[name=slot2] run particle minecraft:flash ~ ~1 ~ 0.9 0.9 0.9 0.5 100
execute if score abilitynumber abilities matches 22 run execute if score ward slot2 matches 1.. run function ch:wardslot2
#Gatsby
execute if score abilitynumber abilities matches 23 if score ward slot2 matches 0 run scoreboard players operation slot2 stun = gatsbyDuration abilityStats
execute if score abilitynumber abilities matches 23 if score ward slot2 matches 0 run scoreboard players operation invincibleSlot2 booleaneffects = gatsbyDuration abilityStats
execute if score abilitynumber abilities matches 23 if score ward slot2 matches 0 run scoreboard players operation savehp2 saves = slot2 hp
execute if score abilitynumber abilities matches 23 if score ward slot2 matches 0 run scoreboard players operation slot2EatenDuration abilities = gatsbyDuration abilityStats
execute if score abilitynumber abilities matches 23 if score ward slot2 matches 0 at @e[name=slot2] run execute at @e[distance=..4,type=!player] run tp @n[type=!minecraft:player,distance=..4] ~ ~-20 ~
execute if score abilitynumber abilities matches 23 run execute if score ward slot2 matches 1.. run function ch:wardslot2
execute if score abilitynumber abilities matches 23 if score durationSlot2-5 fear < gatsbyDuration abilityStats run scoreboard players operation durationSlot2-5 fear = gatsbyDuration abilityStats
execute if score abilitynumber abilities matches 23 if score durationSlot2-6 fear < gatsbyDuration abilityStats run scoreboard players operation durationSlot2-6 fear = gatsbyDuration abilityStats
execute if score abilitynumber abilities matches 23 if score durationSlot2-7 fear < gatsbyDuration abilityStats run scoreboard players operation durationSlot2-7 fear = gatsbyDuration abilityStats
execute if score abilitynumber abilities matches 23 if score durationSlot2-8 fear < gatsbyDuration abilityStats run scoreboard players operation durationSlot2-8 fear = gatsbyDuration abilityStats
execute if score abilitynumber abilities matches 23 if score ward slot1 matches 0 if score slot6isatk booleans matches 1 if score debuffDurationSlot1 atkmodifiers < gatsbyDuration abilityStats run scoreboard players operation debuffDurationSlot1 atkmodifiers = gatsbyDuration abilityStats
execute if score abilitynumber abilities matches 23 if score ward slot3 matches 0 if score slot6isatk booleans matches 1 if score debuffDurationSlot3 atkmodifiers < gatsbyDuration abilityStats run scoreboard players operation debuffDurationSlot3 atkmodifiers = gatsbyDuration abilityStats
execute if score abilitynumber abilities matches 23 if score ward slot4 matches 0 if score slot6isatk booleans matches 1 if score debuffDurationSlot4 atkmodifiers < gatsbyDuration abilityStats run scoreboard players operation debuffDurationSlot4 atkmodifiers = gatsbyDuration abilityStats
execute if score abilitynumber abilities matches 23 if score ward slot1 matches 0 if score slot6isatk booleans matches 1 run scoreboard players operation attackDebuffSlot1 atkmodifiers = gatsbyLeader abilityStats
execute if score abilitynumber abilities matches 23 if score ward slot3 matches 0 if score slot6isatk booleans matches 1 run scoreboard players operation attackDebuffSlot3 atkmodifiers = gatsbyLeader abilityStats
execute if score abilitynumber abilities matches 23 if score ward slot4 matches 0 if score slot6isatk booleans matches 1 run scoreboard players operation attackDebuffSlot4 atkmodifiers = gatsbyLeader abilityStats
execute if score abilitynumber abilities matches 23 if score ward slot1 matches 1.. if score slot6isatk booleans matches 1 run function ch:wardslot1
execute if score abilitynumber abilities matches 23 if score ward slot3 matches 1.. if score slot6isatk booleans matches 1 run function ch:wardslot3
execute if score abilitynumber abilities matches 23 if score ward slot4 matches 1.. if score slot6isatk booleans matches 1 run function ch:wardslot4
execute if score abilitynumber abilities matches 23 run tellraw @a[tag=game1] ["",{"selector":"@p[tag=p2]"}," used Consume on Slot 2!"]
execute if score abilitynumber abilities matches 23 at @e[name=slot2] run particle minecraft:falling_nectar ~ ~1 ~ 0.9 0.9 0.9 0.1 100
execute if score abilitynumber abilities matches 23 if score slot6isatk booleans matches 1 at @e[name=slot1] run particle minecraft:falling_nectar ~ ~1 ~ 0.9 0.9 0.9 0.1 50
execute if score abilitynumber abilities matches 23 if score slot6isatk booleans matches 1 at @e[name=slot3] run particle minecraft:falling_nectar ~ ~1 ~ 0.9 0.9 0.9 0.1 50
execute if score abilitynumber abilities matches 23 if score slot6isatk booleans matches 1 at @e[name=slot4] run particle minecraft:falling_nectar ~ ~1 ~ 0.9 0.9 0.9 0.1 50
#Boomer
execute if score abilitynumber abilities matches 25 run scoreboard players operation abilityDmg saves = boomer abilityStats
execute if score abilitynumber abilities matches 25 if score slot5isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot5 atkmodifiers
execute if score abilitynumber abilities matches 25 if score slot6isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot6 atkmodifiers
execute if score abilitynumber abilities matches 25 if score slot7isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot7 atkmodifiers
execute if score abilitynumber abilities matches 25 run scoreboard players operation abilityDmg saves += marks slot2
execute if score abilitynumber abilities matches 25 run scoreboard players operation abilityDmg saves /= atkmultiplier slot2
execute if score abilitynumber abilities matches 25 run execute if score ward slot2 matches 0 run scoreboard players operation shield slot2 -= abilityDmg saves
execute if score abilitynumber abilities matches 25 run execute if score ward slot2 matches 0 if score shield slot2 matches ..0 run scoreboard players operation slot2 hp += shield slot2
execute if score abilitynumber abilities matches 25 run execute if score ward slot2 matches 1.. run function ch:wardslot2
execute if score abilitynumber abilities matches 25 at @e[name=slot2] run particle minecraft:explosion ~ ~1 ~ 0.9 0.9 0.9 0.1 100
execute if score abilitynumber abilities matches 25 if score slot6isatk booleans matches 1 at @e[name=slot1] run particle minecraft:explosion ~ ~1 ~ 0.9 0.9 0.9 0.1 50
execute if score abilitynumber abilities matches 25 if score slot6isatk booleans matches 1 at @e[name=slot3] run particle minecraft:explosion ~ ~1 ~ 0.9 0.9 0.9 0.1 50
execute if score abilitynumber abilities matches 25 run tellraw @a[tag=game1] ["",{"selector":"@p[tag=p2]"}," used KABOOM! on Slot 2!"]
execute if score abilitynumber abilities matches 25 if score slot6isatk booleans matches 1 run scoreboard players operation abilityDmg saves = boomer abilityStats
execute if score abilitynumber abilities matches 25 if score slot6isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot2 atkmodifiers
execute if score abilitynumber abilities matches 25 if score slot6isatk booleans matches 1 run scoreboard players operation abilityDmg saves /= boomerLeader abilityStats
execute if score abilitynumber abilities matches 25 if score slot6isatk booleans matches 1 run scoreboard players operation abilityDmg saves += marks slot1
execute if score abilitynumber abilities matches 25 if score slot6isatk booleans matches 1 run scoreboard players operation abilityDmg saves /= atkmultiplier slot1
execute if score abilitynumber abilities matches 25 if score slot6isatk booleans matches 1 run execute if score ward slot1 matches 0 run scoreboard players operation shield slot1 -= abilityDmg saves
execute if score abilitynumber abilities matches 25 if score slot6isatk booleans matches 1 run execute if score ward slot1 matches 0 if score shield slot1 matches ..0 run scoreboard players operation slot1 hp += shield slot1
execute if score abilitynumber abilities matches 25 if score slot6isatk booleans matches 1 run execute if score ward slot1 matches 1.. run function ch:wardslot1
execute if score abilitynumber abilities matches 25 if score slot6isatk booleans matches 1 run scoreboard players operation abilityDmg saves = boomer abilityStats
execute if score abilitynumber abilities matches 25 if score slot6isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot2 atkmodifiers
execute if score abilitynumber abilities matches 25 if score slot6isatk booleans matches 1 run scoreboard players operation abilityDmg saves /= boomerLeader abilityStats
execute if score abilitynumber abilities matches 25 if score slot6isatk booleans matches 1 run scoreboard players operation abilityDmg saves += marks slot3
execute if score abilitynumber abilities matches 25 if score slot6isatk booleans matches 1 run scoreboard players operation abilityDmg saves /= atkmultiplier slot3
execute if score abilitynumber abilities matches 25 if score slot6isatk booleans matches 1 run execute if score ward slot3 matches 0 run scoreboard players operation shield slot3 -= abilityDmg saves
execute if score abilitynumber abilities matches 25 if score slot6isatk booleans matches 1 run execute if score ward slot3 matches 0 if score shield slot3 matches ..0 run scoreboard players operation slot3 hp += shield slot3
execute if score abilitynumber abilities matches 25 if score slot6isatk booleans matches 1 run execute if score ward slot3 matches 1.. run function ch:wardslot3

#Ripper
execute if score abilitynumber abilities matches 29 if score slot2 hp <= ripper abilityStats if score ward slot2 matches 0 if score invincibleSlot2 booleaneffects matches 0 run scoreboard players set slot2 hp 0
execute if score abilitynumber abilities matches 29 if score slot2 hp <= ripper abilityStats if score invincibleSlot2 booleaneffects matches 0 if score ward slot2 matches 1.. run function ch:wardslot2
execute if score abilitynumber abilities matches 29 run tellraw @a[tag=game1] ["",{"selector":"@p[tag=p2]"}," used Execute on Slot 2!"]
execute if score abilitynumber abilities matches 29 at @e[name=slot2] run particle minecraft:raid_omen ~ ~1 ~ 0.9 0.9 0.9 0.1 100


#Domino
execute if score abilitynumber abilities matches 30 run scoreboard players operation abilityDmg saves = domino abilityStats
execute if score abilitynumber abilities matches 30 if score slot5isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot5 atkmodifiers
execute if score abilitynumber abilities matches 30 if score slot6isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot6 atkmodifiers
execute if score abilitynumber abilities matches 30 if score slot7isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot7 atkmodifiers
execute if score abilitynumber abilities matches 30 run scoreboard players operation abilityDmg saves += marks slot2
execute if score abilitynumber abilities matches 30 run scoreboard players operation abilityDmg saves /= atkmultiplier slot2
execute if score abilitynumber abilities matches 30 run execute if score ward slot2 matches 0 run scoreboard players operation shield slot2 -= abilityDmg saves
execute if score abilitynumber abilities matches 30 run execute if score ward slot2 matches 0 if score shield slot2 matches ..0 run scoreboard players operation slot2 hp += shield slot2
execute if score abilitynumber abilities matches 30 if score ward slot2 matches 0 if score durationSlot2 poison < dominoDuration abilityStats run scoreboard players operation durationSlot2 poison = dominoDuration abilityStats 
execute if score abilitynumber abilities matches 30 if score ward slot2 matches 0 run scoreboard players operation slot2Poison poison += dominoPoisonLeader abilityStats 
execute if score abilitynumber abilities matches 30 run execute if score ward slot2 matches 1.. run function ch:wardslot2
execute if score abilitynumber abilities matches 30 at @e[name=slot2] run particle minecraft:trial_omen ~ ~1 ~ 0.9 0.9 0.9 0.1 100
execute if score abilitynumber abilities matches 30 run tellraw @a[tag=game1] ["",{"selector":"@p[tag=p2]"}," used Poison Dart on Slot 2!"]
#Doc Basic Attack
execute if score abilitynumber abilities matches -1 run scoreboard players operation slot2Disease disease += doc heroattack
execute if score abilitynumber abilities matches -1 if score slot6isatk booleans matches 1 run scoreboard players operation slot2Disease disease += docLeader heroattack
execute if score abilitynumber abilities matches -1 at @e[name=slot2] run particle minecraft:trial_omen ~ ~1 ~ 0.9 0.9 0.9 0.1 50

#Healing Totem
execute if score abilitynumber abilities matches -3 run execute if score slot2bleeding booleaneffects matches 0 run scoreboard players operation slot2 hp += healingTotemHeal spellStats
execute if score abilitynumber abilities matches -3 at @e[name=slot2] run particle minecraft:composter ~ ~1 ~ 0.9 0.9 0.9 0.1 50

#Eidolon Basic Attack
execute if score abilitynumber abilities matches -4 run execute if score ward slot2 matches 0 if score durationSlot5-2 fear <= eidolonFearDuration abilityStats if score slot5isatk booleans matches 1 run scoreboard players operation durationSlot5-2 fear = eidolonFearDuration abilityStats
execute if score abilitynumber abilities matches -4 run execute if score ward slot2 matches 0 if score durationSlot6-2 fear <= eidolonFearDuration abilityStats if score slot6isatk booleans matches 1 run scoreboard players operation durationSlot6-2 fear = eidolonFearDuration abilityStats
execute if score abilitynumber abilities matches -4 run execute if score ward slot2 matches 0 if score durationSlot7-2 fear <= eidolonFearDuration abilityStats if score slot7isatk booleans matches 1 run scoreboard players operation durationSlot7-2 fear = eidolonFearDuration abilityStats
execute if score abilitynumber abilities matches -4 run scoreboard players operation abilityDmg saves = eidolon heroattack
execute if score abilitynumber abilities matches -4 if score slot5isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot5 atkmodifiers
execute if score abilitynumber abilities matches -4 if score slot6isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot6 atkmodifiers
execute if score abilitynumber abilities matches -4 if score slot7isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot7 atkmodifiers
execute if score abilitynumber abilities matches -4 run scoreboard players operation abilityDmg saves += marks slot2
execute if score abilitynumber abilities matches -4 run scoreboard players operation abilityDmg saves /= atkmultiplier slot2
execute if score abilitynumber abilities matches -4 run execute if score ward slot2 matches 0 run scoreboard players operation shield slot2 -= abilityDmg saves
execute if score abilitynumber abilities matches -4 run execute if score ward slot2 matches 0 if score shield slot2 matches ..0 run scoreboard players operation slot2 hp += shield slot2
execute if score abilitynumber abilities matches -4 run execute if score ward slot2 matches 1.. run function ch:wardslot2
execute if score abilitynumber abilities matches -4 run execute at @e[name=slot2,type=armor_stand] run particle minecraft:crit ~ ~1 ~ 0.9 0.9 0.9 0.5 100



#This goes at the bottom
execute if score shield slot1 matches ..0 run scoreboard players set shield slot1 0
execute if score shield slot2 matches ..0 run scoreboard players set shield slot2 0
execute if score shield slot3 matches ..0 run scoreboard players set shield slot3 0
execute if score shield slot4 matches ..0 run scoreboard players set shield slot4 0
function ch:turnend
#Make sure to add burn to your abilities
