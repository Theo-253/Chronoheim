effect clear @a[tag=game1] strength
clear @p[tag=game1]
#Deuce ability
execute if score abilitynumber abilities matches 3 run scoreboard players operation abilityDmg saves = deuce heroattack
execute if score abilitynumber abilities matches 3 if score slot1isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot1 atkmodifiers
execute if score abilitynumber abilities matches 3 if score slot2isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot2 atkmodifiers
execute if score abilitynumber abilities matches 3 if score slot3isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot3 atkmodifiers
execute if score abilitynumber abilities matches 3 run scoreboard players operation abilityDmg saves += marks slot6
execute if score abilitynumber abilities matches 3 if score slot2isatk booleans matches 1 run scoreboard players operation abilityDmg saves *= deuceMultLeader abilityStats
execute if score abilitynumber abilities matches 3 if score slot2isatk booleans matches 0 run scoreboard players operation abilityDmg saves *= deuceMult abilityStats
execute if score abilitynumber abilities matches 3 run scoreboard players operation abilityDmg saves /= atkmultiplier slot6
execute if score abilitynumber abilities matches 3 run execute if score ward slot6 matches 0 run scoreboard players operation shield slot6 -= abilityDmg saves
execute if score abilitynumber abilities matches 3 run execute if score ward slot6 matches 0 if score shield slot6 matches ..0 run scoreboard players operation slot6 hp += shield slot6
execute if score abilitynumber abilities matches 3 run execute if score ward slot6 matches 1.. run function ch:wardslot6
execute if score abilitynumber abilities matches 3 run execute at @e[name=slot6,type=armor_stand] run particle crit ~ ~ ~ 0.3 0.3 0.3 2 100

execute if score abilitynumber abilities matches 3 run tellraw @a[tag=game1] ["",{"selector":"@p[tag=p1]"}," used Double Punch on Slot 6!"]

#Garabaldi Ability
execute if score abilitynumber abilities matches 24 if score slot6 hp matches 1.. if score slot6bleeding booleaneffects matches 0 run scoreboard players operation slot6 hp += garabaldiHeal abilityStats
execute if score abilitynumber abilities matches 24 if score slot6 hp matches 1.. if score slot6bleeding booleaneffects matches 0 if score character# slot6 matches 24 run scoreboard players operation slot6 hp += garabaldiLeader abilityStats
execute if score abilitynumber abilities matches 24 if score slot6 hp matches 1.. run scoreboard players set ward slot6 2
execute if score abilitynumber abilities matches 24 run tellraw @a[tag=game1] ["",{"selector":"@p[tag=p2]"}," used Bubble Shield on Slot 6!"]


#Juniper Ability
execute if score abilitynumber abilities matches 27 run scoreboard players operation abilityDmg saves = juniper abilityStats
execute if score abilitynumber abilities matches 27 if score slot1isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot1 atkmodifiers
execute if score abilitynumber abilities matches 27 if score slot2isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot2 atkmodifiers
execute if score abilitynumber abilities matches 27 if score slot3isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot3 atkmodifiers
execute if score abilitynumber abilities matches 27 run scoreboard players operation abilityDmg saves += marks slot6
execute if score abilitynumber abilities matches 27 run scoreboard players operation abilityDmg saves /= atkmultiplier slot6
execute if score abilitynumber abilities matches 27 run execute if score ward slot6 matches 0 run scoreboard players operation shield slot6 -= abilityDmg saves
execute if score abilitynumber abilities matches 27 run execute if score ward slot6 matches 0 run scoreboard players operation slot6 stun = juniperStun abilityStats
execute if score abilitynumber abilities matches 27 run execute if score ward slot6 matches 0 if score shield slot6 matches ..0 run scoreboard players operation slot6 hp += shield slot6
execute if score abilitynumber abilities matches 27 run execute if score ward slot6 matches 1.. run function ch:wardslot6
execute if score abilitynumber abilities matches 27 run tellraw @a[tag=game1] ["",{"selector":"@p[tag=p1]"}," used Pixie Dust on Slot 6!"]

#Juniper Basic
execute if score abilitynumber abilities matches -2 run execute if score slot6bleeding booleaneffects matches 0 run scoreboard players operation slot6 hp += juniper heroattack
execute if score character# slot6 matches 27 run function ch:cleanseslot6

#K.O.N.G ability
execute if score abilitynumber abilities matches 7 run scoreboard players operation abilityDmg saves = kong abilityStats
execute if score abilitynumber abilities matches 7 if score slot1isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot1 atkmodifiers
execute if score abilitynumber abilities matches 7 if score slot2isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot2 atkmodifiers
execute if score abilitynumber abilities matches 7 if score slot3isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot3 atkmodifiers
execute if score abilitynumber abilities matches 7 run scoreboard players operation abilityDmg saves += marks slot6
execute if score abilitynumber abilities matches 7 run scoreboard players operation abilityDmg saves /= atkmultiplier slot6
execute if score abilitynumber abilities matches 7 run execute if score ward slot6 matches 0 run scoreboard players operation shield slot6 -= abilityDmg saves
execute if score abilitynumber abilities matches 7 run execute if score ward slot6 matches 0 if score kongSpDebuffDuration abilityStats > durationSlot6 speedDebuffs run scoreboard players operation durationSlot6 speedDebuffs = kongSpDebuffDuration abilityStats
execute if score abilitynumber abilities matches 7 run execute if score ward slot6 matches 0 if score kongDmgDebuffDuration abilityStats > debuffDurationSlot6 atkmodifiers run scoreboard players operation debuffDurationSlot6 atkmodifiers = kongDmgDebuffDuration abilityStats
execute if score abilitynumber abilities matches 7 run execute if score ward slot6 matches 0 run scoreboard players operation speedDebuffSlot6 speedDebuffs += kongSpDebuff abilityStats
execute if score abilitynumber abilities matches 7 run execute if score ward slot6 matches 0 run scoreboard players operation attackDebuffSlot6 atkmodifiers += kongDmgDebuff abilityStats
execute if score abilitynumber abilities matches 7 run execute if score ward slot6 matches 0 run execute if score slot2isatk booleans matches 1 run scoreboard players operation attackDebuffslot6 atkmodifiers += kongLeaderDmgDebuff abilityStats
execute if score abilitynumber abilities matches 7 run execute if score ward slot6 matches 0 run execute if score slot2isatk booleans matches 1 run scoreboard players operation speedDebuffslot6 speedDebuffs += kongLeaderSpDebuff abilityStats
execute if score abilitynumber abilities matches 7 run execute if score ward slot6 matches 0 run execute if score slot2isatk booleans matches 1 run scoreboard players operation speed slot6 -= kongLeaderSpDebuff abilityStats
execute if score abilitynumber abilities matches 7 run execute if score ward slot6 matches 0 run scoreboard players operation speed slot6 -= kongSpDebuff abilityStats
execute if score abilitynumber abilities matches 7 run execute if score ward slot6 matches 0 if score shield slot6 matches ..0 run scoreboard players operation slot6 hp += shield slot6
execute if score abilitynumber abilities matches 7 run execute if score ward slot6 matches 1.. run function ch:wardslot6
execute if score abilitynumber abilities matches 7 run tellraw @a[tag=game1] ["",{"selector":"@p[tag=p1]"}," used B.A.N.A.N.A S.L.A.M.M.A! on Slot 6!"]

#Robyn Ability
execute if score abilitynumber abilities matches 9 if score ward slot6 matches 0 run scoreboard players operation marks slot6 += robyn abilityStats
execute if score abilitynumber abilities matches 9 if score ward slot6 matches 1 run function ch:wardslot6
execute if score abilitynumber abilities matches 9 run tellraw @a[tag=game1] ["",{"selector":"@p[tag=p1]"}," used Most Wanted on Slot 6!"]

#Robo
execute if score abilitynumber abilities matches 5 if score durationSlot6 shield < roboDuration abilityStats run scoreboard players operation durationSlot6 shield = roboDuration abilityStats
execute if score abilitynumber abilities matches 5 run scoreboard players operation shield slot6 += robo abilityStats
execute if score abilitynumber abilities matches 5 if score slot6isatk booleans matches 1 run scoreboard players operation shield slot6 += roboLeader abilityStats
execute if score abilitynumber abilities matches 5 run tellraw @a[tag=game1] ["",{"selector":"@p[tag=p2]"}," used Force Field on Slot 6!"]
#Kirin
execute if score abilitynumber abilities matches 8 if score buffDurationSlot6 atkmodifiers < kirinDuration abilityStats run scoreboard players operation buffDurationSlot6 atkmodifiers = kirinDuration abilityStats
execute if score abilitynumber abilities matches 8 run scoreboard players operation attackBuffslot6 atkmodifiers += kirin abilityStats
execute if score abilitynumber abilities matches 8 if score slot6isatk booleans matches 1 if score slot6bleeding booleaneffects matches 0.. run scoreboard players operation slot6 hp += kirinLeader abilityStats
execute if score abilitynumber abilities matches 8 run tellraw @a[tag=game1] ["",{"selector":"@p[tag=p2]"}," used Mythical Empowerment on Slot 6!"]
execute if score abilitynumber abilities matches 8 at @e[name=slot6] run particle minecraft:trial_spawner_detection ~ ~1 ~ 0.9 0.9 0.9 0.1 100

#Ace
execute if score abilitynumber abilities matches 12 if score ward slot6 matches 0 run scoreboard players operation cooldown slot6 = aceSetCooldown abilityStats
execute if score abilitynumber abilities matches 12 run tellraw @a[tag=game1] ["",{"selector":"@p[tag=p1]"}," used Ace of Spades on Slot 6!"]
execute if score abilitynumber abilities matches 12 if score ward slot6 matches 1 run function ch:wardslot6
execute if score abilitynumber abilities matches 12 at @e[name=slot6] run particle minecraft:enchanted_hit ~ ~1 ~ 0.9 0.9 0.9 0.5 100
execute if score abilitynumber abilities matches 12 run execute if score character# slot2 matches 12 run scoreboard players operation durationSlot6 speedDebuffs = aceLeaderDuration abilityStats
execute if score abilitynumber abilities matches 12 run execute if score character# slot2 matches 12 run scoreboard players operation speedDebuffslot6 speedDebuffs = aceLeader abilityStats
execute if score abilitynumber abilities matches 12 run execute if score character# slot2 matches 12 run scoreboard players operation speed slot6 -= aceLeader abilityStats
#Gabriel
execute if score abilitynumber abilities matches 22 run scoreboard players operation abilityDmg saves = gabriel abilityStats
execute if score abilitynumber abilities matches 22 if score slot1isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot1 atkmodifiers
execute if score abilitynumber abilities matches 22 if score slot2isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot2 atkmodifiers
execute if score abilitynumber abilities matches 22 if score slot3isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot3 atkmodifiers
execute if score abilitynumber abilities matches 22 if score slot1 hp matches ..0 run scoreboard players operation abilityDmg saves += gabrielDeath abilityStats
execute if score abilitynumber abilities matches 22 if score slot2 hp matches ..0 run scoreboard players operation abilityDmg saves += gabrielDeath abilityStats
execute if score abilitynumber abilities matches 22 if score slot3 hp matches ..0 run scoreboard players operation abilityDmg saves += gabrielDeath abilityStats
execute if score abilitynumber abilities matches 22 run scoreboard players operation abilityDmg saves += marks slot6
execute if score abilitynumber abilities matches 22 run scoreboard players operation abilityDmg saves /= atkmultiplier slot6
execute if score abilitynumber abilities matches 22 run execute if score ward slot6 matches 0 run scoreboard players operation shield slot6 -= abilityDmg saves
execute if score abilitynumber abilities matches 22 run execute if score ward slot6 matches 0 if score shield slot6 matches ..0 run scoreboard players operation slot6 hp += shield slot6
execute if score abilitynumber abilities matches 22 if score slot2isatk booleans matches 1 if score ward slot6 matches 0 run scoreboard players operation abilityDmg saves /= gabrielLeader abilityStats
execute if score abilitynumber abilities matches 22 if score slot2isatk booleans matches 1 if score ward slot6 matches 0 run scoreboard players operation slot2 hp += abilityDmg saves
execute if score abilitynumber abilities matches 22 at @e[name=slot6] run particle minecraft:flash ~ ~1 ~ 0.9 0.9 0.9 0.5 100
execute if score abilitynumber abilities matches 22 run execute if score ward slot6 matches 1.. run function ch:wardslot6
#Gatsby
execute if score abilitynumber abilities matches 23 if score ward slot6 matches 0 run scoreboard players operation slot6 stun = gatsbyDuration abilityStats
execute if score abilitynumber abilities matches 23 if score ward slot6 matches 0 run scoreboard players operation savehp6 saves = slot6 hp
execute if score abilitynumber abilities matches 23 if score ward slot6 matches 0 run scoreboard players operation invincibleslot6 booleaneffects = gatsbyDuration abilityStats
execute if score abilitynumber abilities matches 23 if score durationSlot6-1 fear < gatsbyDuration abilityStats run scoreboard players operation durationSlot6-1 fear = gatsbyDuration abilityStats
execute if score abilitynumber abilities matches 23 if score durationSlot6-2 fear < gatsbyDuration abilityStats run scoreboard players operation durationSlot6-2 fear = gatsbyDuration abilityStats
execute if score abilitynumber abilities matches 23 if score durationSlot6-3 fear < gatsbyDuration abilityStats run scoreboard players operation durationSlot6-3 fear = gatsbyDuration abilityStats
execute if score abilitynumber abilities matches 23 if score durationSlot6-4 fear < gatsbyDuration abilityStats run scoreboard players operation durationSlot6-4 fear = gatsbyDuration abilityStats
execute if score abilitynumber abilities matches 23 if score ward slot5 matches 0 if score slot2isatk booleans matches 1 if score debuffDurationSlot5 atkmodifiers < gatsbyDuration abilityStats run scoreboard players operation debuffDurationSlot5 atkmodifiers = gatsbyDuration abilityStats
execute if score abilitynumber abilities matches 23 if score ward slot7 matches 0 if score slot2isatk booleans matches 1 if score debuffDurationSlot7 atkmodifiers < gatsbyDuration abilityStats run scoreboard players operation debuffDurationSlot7 atkmodifiers = gatsbyDuration abilityStats
execute if score abilitynumber abilities matches 23 if score ward slot8 matches 0 if score slot2isatk booleans matches 1 if score debuffDurationSlot8 atkmodifiers < gatsbyDuration abilityStats run scoreboard players operation debuffDurationSlot8 atkmodifiers = gatsbyDuration abilityStats
execute if score abilitynumber abilities matches 23 if score ward slot5 matches 0 if score slot2isatk booleans matches 1 run scoreboard players operation attackDebuffSlot5 atkmodifiers = gatsbyLeader abilityStats
execute if score abilitynumber abilities matches 23 if score ward slot7 matches 0 if score slot2isatk booleans matches 1 run scoreboard players operation attackDebuffSlot7 atkmodifiers = gatsbyLeader abilityStats
execute if score abilitynumber abilities matches 23 if score ward slot8 matches 0 if score slot2isatk booleans matches 1 run scoreboard players operation attackDebuffSlot8 atkmodifiers = gatsbyLeader abilityStats
execute if score abilitynumber abilities matches 23 if score ward slot5 matches 1.. if score slot2isatk booleans matches 1 run function ch:wardslot5
execute if score abilitynumber abilities matches 23 if score ward slot7 matches 1.. if score slot2isatk booleans matches 1 run function ch:wardslot7
execute if score abilitynumber abilities matches 23 if score ward slot8 matches 1.. if score slot2isatk booleans matches 1 run function ch:wardslot8
execute if score abilitynumber abilities matches 23 run tellraw @a[tag=game1] ["",{"selector":"@p[tag=p1]"}," used Consume on Slot 6!"]
execute if score abilitynumber abilities matches 23 at @e[name=slot6] run particle minecraft:falling_nectar ~ ~1 ~ 0.9 0.9 0.9 0.1 100
execute if score abilitynumber abilities matches 23 if score slot2isatk booleans matches 1 at @e[name=slot5] run particle minecraft:falling_nectar ~ ~1 ~ 0.9 0.9 0.9 0.1 50
execute if score abilitynumber abilities matches 23 if score slot2isatk booleans matches 1 at @e[name=slot7] run particle minecraft:falling_nectar ~ ~1 ~ 0.9 0.9 0.9 0.1 50
execute if score abilitynumber abilities matches 23 if score slot2isatk booleans matches 1 at @e[name=slot8] run particle minecraft:falling_nectar ~ ~1 ~ 0.9 0.9 0.9 0.1 50
#execute if score abilitynumber abilities matches 23 if score ward slot6 matches 0 run scoreboard players operation slot6EatenDuration abilities = gatsbyDuration abilityStats
#Boomer
execute if score abilitynumber abilities matches 25 run scoreboard players operation abilityDmg saves = boomer abilityStats
execute if score abilitynumber abilities matches 25 if score slot1isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot1 atkmodifiers
execute if score abilitynumber abilities matches 25 if score slot2isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot2 atkmodifiers
execute if score abilitynumber abilities matches 25 if score slot3isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot3 atkmodifiers
execute if score abilitynumber abilities matches 25 run scoreboard players operation abilityDmg saves += marks slot6
execute if score abilitynumber abilities matches 25 run scoreboard players operation abilityDmg saves /= atkmultiplier slot6
execute if score abilitynumber abilities matches 25 run execute if score ward slot6 matches 0 run scoreboard players operation shield slot6 -= abilityDmg saves
execute if score abilitynumber abilities matches 25 run execute if score ward slot6 matches 0 if score shield slot6 matches ..0 run scoreboard players operation slot6 hp += shield slot6
execute if score abilitynumber abilities matches 25 run execute if score ward slot6 matches 1.. run function ch:wardslot6
execute if score abilitynumber abilities matches 25 at @e[name=slot6] run particle minecraft:explosion ~ ~1 ~ 0.9 0.9 0.9 0.1 100
execute if score abilitynumber abilities matches 25 if score slot2isatk booleans matches 1 at @e[name=slot7] run particle minecraft:explosion ~ ~1 ~ 0.9 0.9 0.9 0.1 50
execute if score abilitynumber abilities matches 25 if score slot2isatk booleans matches 1 at @e[name=slot5] run particle minecraft:explosion ~ ~1 ~ 0.9 0.9 0.9 0.1 50
execute if score abilitynumber abilities matches 25 run tellraw @a[tag=game1] ["",{"selector":"@p[tag=p1]"}," used KABOOM! on Slot 6!"]
execute if score abilitynumber abilities matches 25 if score slot2isatk booleans matches 1 run scoreboard players operation abilityDmg saves = boomer abilityStats
execute if score abilitynumber abilities matches 25 if score slot2isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot2 atkmodifiers
execute if score abilitynumber abilities matches 25 if score slot2isatk booleans matches 1 run scoreboard players operation abilityDmg saves += marks slot5
execute if score abilitynumber abilities matches 25 if score slot2isatk booleans matches 1 run scoreboard players operation abilityDmg saves /= atkmultiplier slot5
execute if score abilitynumber abilities matches 25 if score slot2isatk booleans matches 1 run scoreboard players operation abilityDmg saves /= boomerLeader abilityStats
execute if score abilitynumber abilities matches 25 if score slot2isatk booleans matches 1 run execute if score ward slot5 matches 0 run scoreboard players operation shield slot5 -= abilityDmg saves
execute if score abilitynumber abilities matches 25 if score slot2isatk booleans matches 1 run execute if score ward slot5 matches 0 if score shield slot5 matches ..0 run scoreboard players operation slot5 hp += shield slot5
execute if score abilitynumber abilities matches 25 if score slot2isatk booleans matches 1 run execute if score ward slot5 matches 1.. run function ch:wardslot5
execute if score abilitynumber abilities matches 25 if score slot2isatk booleans matches 1 run scoreboard players operation abilityDmg saves = boomer abilityStats
execute if score abilitynumber abilities matches 25 if score slot2isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot2 atkmodifiers
execute if score abilitynumber abilities matches 25 if score slot2isatk booleans matches 1 run scoreboard players operation abilityDmg saves += marks slot7
execute if score abilitynumber abilities matches 25 if score slot2isatk booleans matches 1 run scoreboard players operation abilityDmg saves /= atkmultiplier slot7
execute if score abilitynumber abilities matches 25 if score slot2isatk booleans matches 1 run scoreboard players operation abilityDmg saves /= boomerLeader abilityStats
execute if score abilitynumber abilities matches 25 if score slot2isatk booleans matches 1 run execute if score ward slot7 matches 0 run scoreboard players operation shield slot7 -= abilityDmg saves
execute if score abilitynumber abilities matches 25 if score slot2isatk booleans matches 1 run execute if score ward slot7 matches 0 if score shield slot7 matches ..0 run scoreboard players operation slot7 hp += shield slot7
execute if score abilitynumber abilities matches 25 if score slot2isatk booleans matches 1 run execute if score ward slot7 matches 1.. run function ch:wardslot7


#Ripper
execute if score abilitynumber abilities matches 29 if score slot6 hp <= ripper abilityStats if score ward slot6 matches 0 if score invincibleslot6 booleaneffects matches 0 run scoreboard players set slot6 hp 0
execute if score abilitynumber abilities matches 29 if score slot6 hp <= ripper abilityStats if score invincibleslot6 booleaneffects matches 0 if score ward slot6 matches 1.. run function ch:wardslot6
execute if score abilitynumber abilities matches 29 run tellraw @a[tag=game1] ["",{"selector":"@p[tag=p1]"}," used Execute on Slot 6!"]
execute if score abilitynumber abilities matches 29 at @e[name=slot6] run particle minecraft:raid_omen ~ ~1 ~ 0.9 0.9 0.9 0.1 100


#Domino
execute if score abilitynumber abilities matches 30 run scoreboard players operation abilityDmg saves = domino abilityStats
execute if score abilitynumber abilities matches 30 if score slot1isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot1 atkmodifiers
execute if score abilitynumber abilities matches 30 if score slot2isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot2 atkmodifiers
execute if score abilitynumber abilities matches 30 if score slot3isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot3 atkmodifiers
execute if score abilitynumber abilities matches 30 run scoreboard players operation abilityDmg saves += marks slot6
execute if score abilitynumber abilities matches 30 run scoreboard players operation abilityDmg saves /= atkmultiplier slot6
execute if score abilitynumber abilities matches 30 run execute if score ward slot6 matches 0 run scoreboard players operation shield slot6 -= abilityDmg saves
execute if score abilitynumber abilities matches 30 run execute if score ward slot6 matches 0 if score shield slot6 matches ..0 run scoreboard players operation slot6 hp += shield slot6
execute if score abilitynumber abilities matches 30 if score ward slot6 matches 0 if score durationSlot6 poison < dominoDuration abilityStats run scoreboard players operation durationSlot6 poison = dominoDuration abilityStats
execute if score abilitynumber abilities matches 30 if score ward slot6 matches 0 run scoreboard players operation slot6Poison poison += dominoPoisonLeader abilityStats
execute if score abilitynumber abilities matches 30 run execute if score ward slot6 matches 1.. run function ch:wardslot6
execute if score abilitynumber abilities matches 30 at @e[name=slot6] run particle minecraft:trial_omen ~ ~1 ~ 0.9 0.9 0.9 0.1 100
execute if score abilitynumber abilities matches 30 run tellraw @a[tag=game1] ["",{"selector":"@p[tag=p1]"}," used Poison Dart on Slot 6!"]

#Doc Basic Attack
execute if score abilitynumber abilities matches -1 run scoreboard players operation slot6Disease disease += doc heroattack
execute if score abilitynumber abilities matches -1 if score slot2isatk booleans matches 1 run scoreboard players operation slot6Disease disease += docLeader heroattack
execute if score abilitynumber abilities matches -1 at @e[name=slot6] run particle minecraft:trial_omen ~ ~1 ~ 0.9 0.9 0.9 0.1 50

#Healing Totem
execute if score abilitynumber abilities matches -3 run execute if score slot6bleeding booleaneffects matches 0 run scoreboard players operation slot6 hp += healingTotemHeal spellStats
execute if score abilitynumber abilities matches -3 at @e[name=slot6] run particle minecraft:composter ~ ~1 ~ 0.9 0.9 0.9 0.1 50

#Eidolon Basic Attack
execute if score abilitynumber abilities matches -4 run execute if score ward slot6 matches 0 if score durationSlot1-6 fear <= eidolonFearDuration abilityStats if score slot1isatk booleans matches 1 run scoreboard players operation durationSlot1-6 fear = eidolonFearDuration abilityStats
execute if score abilitynumber abilities matches -4 run execute if score ward slot6 matches 0 if score durationSlot2-6 fear <= eidolonFearDuration abilityStats if score slot2isatk booleans matches 1 run scoreboard players operation durationSlot2-6 fear = eidolonFearDuration abilityStats
execute if score abilitynumber abilities matches -4 run execute if score ward slot6 matches 0 if score durationSlot3-6 fear <= eidolonFearDuration abilityStats if score slot3isatk booleans matches 1 run scoreboard players operation durationSlot3-6 fear = eidolonFearDuration abilityStats
execute if score abilitynumber abilities matches -4 run scoreboard players operation abilityDmg saves = eidolon heroattack
execute if score abilitynumber abilities matches -4 if score slot1isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot1 atkmodifiers
execute if score abilitynumber abilities matches -4 if score slot2isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot2 atkmodifiers
execute if score abilitynumber abilities matches -4 if score slot3isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot3 atkmodifiers
execute if score abilitynumber abilities matches -4 run scoreboard players operation abilityDmg saves += marks slot6
execute if score abilitynumber abilities matches -4 run scoreboard players operation abilityDmg saves /= atkmultiplier slot6
execute if score abilitynumber abilities matches -4 run execute if score ward slot6 matches 0 run scoreboard players operation shield slot6 -= abilityDmg saves
execute if score abilitynumber abilities matches -4 run execute if score ward slot6 matches 0 if score shield slot6 matches ..0 run scoreboard players operation slot6 hp += shield slot6
execute if score abilitynumber abilities matches -4 run execute if score ward slot6 matches 1.. run function ch:wardslot6
#This goes at the bottom
execute if score shield slot5 matches ..0 run scoreboard players set shield slot5 0
execute if score shield slot6 matches ..0 run scoreboard players set shield slot6 0
execute if score shield slot7 matches ..0 run scoreboard players set shield slot7 0
execute if score shield slot8 matches ..0 run scoreboard players set shield slot8 0
function ch:turnend
#Make sure to add burn to your abilities







