effect clear @a[tag=game1] strength
clear @p[tag=game1]
#Deuce ability
execute if score abilitynumber abilities matches 3 run scoreboard players operation abilityDmg saves = deuce heroattack
execute if score abilitynumber abilities matches 3 if score slot5isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot5 atkmodifiers
execute if score abilitynumber abilities matches 3 if score slot6isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot6 atkmodifiers
execute if score abilitynumber abilities matches 3 if score slot7isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot7 atkmodifiers
execute if score abilitynumber abilities matches 3 run scoreboard players operation abilityDmg saves += marks slot4
execute if score abilitynumber abilities matches 3 if score slot6isatk booleans matches 1 run scoreboard players operation abilityDmg saves *= deuceMultLeader abilityStats
execute if score abilitynumber abilities matches 3 if score slot6isatk booleans matches 0 run scoreboard players operation abilityDmg saves *= deuceMult abilityStats
execute if score abilitynumber abilities matches 3 run scoreboard players operation abilityDmg saves /= atkmultiplier slot4
execute if score abilitynumber abilities matches 3 run execute if score ward slot4 matches 0 run scoreboard players operation shield slot4 -= abilityDmg saves
execute if score abilitynumber abilities matches 3 run execute if score ward slot4 matches 0 if score shield slot4 matches ..0 run scoreboard players operation slot4 hp += shield slot4
execute if score abilitynumber abilities matches 3 run execute if score ward slot4 matches 1.. run function ch:wardslot4

#Garabaldi Ability
execute if score abilitynumber abilities matches 24 if score slot4 hp matches 1.. if score slot4bleeding booleaneffects matches 0 run scoreboard players operation slot4 hp += garabaldiHeal abilityStats
execute if score abilitynumber abilities matches 24 if score slot4 hp matches 1.. if score slot4bleeding booleaneffects matches 0 if score character# slot2 matches 24 run scoreboard players operation slot4 hp += garabaldiLeader abilityStats
execute if score abilitynumber abilities matches 24 if score slot4 hp matches 1.. run scoreboard players set ward slot4 2

#Juniper Ability
execute if score abilitynumber abilities matches 24 run scoreboard players operation abilityDmg saves = juniper abilityStats
execute if score abilitynumber abilities matches 24 if score slot5isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot5 atkmodifiers
execute if score abilitynumber abilities matches 24 if score slot6isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot6 atkmodifiers
execute if score abilitynumber abilities matches 24 if score slot7isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot7 atkmodifiers
execute if score abilitynumber abilities matches 24 run scoreboard players operation abilityDmg saves += marks slot4
execute if score abilitynumber abilities matches 24 run scoreboard players operation abilityDmg saves /= atkmultiplier slot4
execute if score abilitynumber abilities matches 24 run execute if score ward slot4 matches 0 run scoreboard players operation shield slot4 -= abilityDmg saves
execute if score abilitynumber abilities matches 24 run execute if score ward slot4 matches 0 run scoreboard players operation slot4 stun = juniperStun abilityStats
execute if score abilitynumber abilities matches 24 run execute if score ward slot4 matches 0 if score shield slot4 matches ..0 run scoreboard players operation slot4 hp += shield slot4
execute if score abilitynumber abilities matches 24 run execute if score ward slot4 matches 1.. run function ch:wardslot4

#Juniper Basic
execute if score abilitynumber abilities matches -2 run execute if score slot4bleeding booleaneffects matches 0 run scoreboard players operation slot4 hp += juniper heroattack
execute if score character# slot4 matches 27 run function ch:cleanseslot4

#K.O.N.G ability
execute if score abilitynumber abilities matches 7 run scoreboard players operation abilityDmg saves = kong abilityStats
execute if score abilitynumber abilities matches 7 if score slot5isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot5 atkmodifiers
execute if score abilitynumber abilities matches 7 if score slot6isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot6 atkmodifiers
execute if score abilitynumber abilities matches 7 if score slot7isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot7 atkmodifiers
execute if score abilitynumber abilities matches 7 run scoreboard players operation abilityDmg saves += marks slot4
execute if score abilitynumber abilities matches 7 run scoreboard players operation abilityDmg saves /= atkmultiplier slot4
execute if score abilitynumber abilities matches 7 run execute if score ward slot4 matches 0 run scoreboard players operation shield slot4 -= abilityDmg saves
execute if score abilitynumber abilities matches 7 run execute if score ward slot4 matches 0 if score kongSpDebuffDuration abilityStats > durationSlot4 speedDebuffs run scoreboard players operation durationSlot4 speedDebuffs = kongSpDebuffDuration abilityStats
execute if score abilitynumber abilities matches 7 run execute if score ward slot4 matches 0 if score kongDmgDebuffDuration abilityStats > debuffDurationSlot4 atkmodifiers run scoreboard players operation debuffDurationSlot4 atkmodifiers = kongDmgDebuffDuration abilityStats
execute if score abilitynumber abilities matches 7 run execute if score ward slot4 matches 0 run scoreboard players operation speedDebuffSlot4 speedDebuffs += kongSpDebuff abilityStats
execute if score abilitynumber abilities matches 7 run execute if score ward slot4 matches 0 run scoreboard players operation attackDebuffSlot4 atkmodifiers += kongDmgDebuff abilityStats
execute if score abilitynumber abilities matches 7 run execute if score ward slot4 matches 0 run execute if score slot6isatk booleans matches 1 run scoreboard players operation attackDebuffslot4 atkmodifiers += kongLeaderDmgDebuff abilityStats
execute if score abilitynumber abilities matches 7 run execute if score ward slot4 matches 0 run execute if score slot6isatk booleans matches 1 run scoreboard players operation speedDebuffslot4 speedDebuffs += kongLeaderSpDebuff abilityStats
execute if score abilitynumber abilities matches 7 run execute if score ward slot4 matches 0 run execute if score slot6isatk booleans matches 1 run scoreboard players operation speed slot4 -= kongLeaderSpDebuff abilityStats
execute if score abilitynumber abilities matches 7 run execute if score ward slot4 matches 0 run scoreboard players operation speed slot4 -= kongSpDebuff abilityStats
execute if score abilitynumber abilities matches 7 run execute if score ward slot4 matches 0 if score shield slot4 matches ..0 run scoreboard players operation slot4 hp += shield slot4
execute if score abilitynumber abilities matches 7 run execute if score ward slot4 matches 1.. run function ch:wardslot4

#Robyn Ability
execute if score abilitynumber abilities matches 9 if score ward slot4 matches 0 run scoreboard players operation marks slot4 += robyn abilityStats
execute if score abilitynumber abilities matches 9 if score ward slot4 matches 1 run function ch:wardslot4
#Robo
execute if score abilitynumber abilities matches 5 if score durationSlot4 shield < roboDuration abilityStats run scoreboard players operation durationSlot4 shield = roboDuration abilityStats
execute if score abilitynumber abilities matches 5 run scoreboard players operation shield slot4 += robo abilityStats
execute if score abilitynumber abilities matches 5 if score slot4isatk booleans matches 1 run scoreboard players operation shield slot4 += roboLeader abilityStats
#Kirin
execute if score abilitynumber abilities matches 8 if score buffDurationSlot4 atkmodifiers < kirinDuration abilityStats run scoreboard players operation buffDurationSlot4 atkmodifiers = kirinDuration abilityStats
execute if score abilitynumber abilities matches 8 run scoreboard players operation attackBuffslot4 atkmodifiers += kirin abilityStats
execute if score abilitynumber abilities matches 8 if score slot4isatk booleans matches 1 if score slot4bleeding booleaneffects matches 0.. run scoreboard players operation slot4 hp += kirinLeader abilityStats
#Ace
execute if score abilitynumber abilities matches 12 run scoreboard players operation cooldown slot4 = aceSetCooldown abilityStats
execute if score abilitynumber abilities matches 12 run execute if score character# slot6 matches 12 run scoreboard players operation durationSlot4 speedDebuffs = aceLeaderDuration abilityStats
execute if score abilitynumber abilities matches 12 run execute if score character# slot6 matches 12 run scoreboard players operation speedDebuffslot4 speedDebuffs = aceLeader abilityStats
execute if score abilitynumber abilities matches 12 run execute if score character# slot6 matches 12 run scoreboard players operation speed slot4 -= aceLeader abilityStats
#Gabriel
execute if score abilitynumber abilities matches 22 run scoreboard players operation abilityDmg saves = gabriel abilityStats
execute if score abilitynumber abilities matches 22 if score slot5isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot5 atkmodifiers
execute if score abilitynumber abilities matches 22 if score slot6isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot6 atkmodifiers
execute if score abilitynumber abilities matches 22 if score slot7isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot7 atkmodifiers
execute if score abilitynumber abilities matches 22 if score slot5 hp matches ..0 run scoreboard players operation abilityDmg saves += gabrielDeath abilityStats
execute if score abilitynumber abilities matches 22 if score slot6 hp matches ..0 run scoreboard players operation abilityDmg saves += gabrielDeath abilityStats
execute if score abilitynumber abilities matches 22 if score slot7 hp matches ..0 run scoreboard players operation abilityDmg saves += gabrielDeath abilityStats
execute if score abilitynumber abilities matches 22 run scoreboard players operation abilityDmg saves += marks slot4
execute if score abilitynumber abilities matches 22 run scoreboard players operation abilityDmg saves /= atkmultiplier slot4
execute if score abilitynumber abilities matches 22 run execute if score ward slot4 matches 0 run scoreboard players operation shield slot4 -= abilityDmg saves
execute if score abilitynumber abilities matches 22 run execute if score ward slot4 matches 0 if score shield slot4 matches ..0 run scoreboard players operation slot4 hp += shield slot4
execute if score abilitynumber abilities matches 22 if score slot6isatk booleans matches 1 if score ward slot4 matches 0 run scoreboard players operation abilityDmg saves /= gabrielLeader abilityStats
execute if score abilitynumber abilities matches 22 if score slot6isatk booleans matches 1 if score ward slot4 matches 0 run scoreboard players operation slot6 hp += abilityDmg saves
execute if score abilitynumber abilities matches 22 run execute if score ward slot4 matches 1.. run function ch:wardslot4
#Gatsby
execute if score abilitynumber abilities matches 23 if score ward slot4 matches 0 run scoreboard players operation slot4 stun = gatsbyDuration abilityStats
execute if score abilitynumber abilities matches 23 if score ward slot4 matches 0 run scoreboard players operation invincibleslot4 booleaneffects = gatsbyDuration abilityStats
execute if score abilitynumber abilities matches 23 if score ward slot4 matches 0 run scoreboard players operation savehp2 saves = slot4 hp
execute if score abilitynumber abilities matches 23 if score ward slot2 matches 0 if score slot6isatk booleans matches 1 if score debuffDurationSlot2 atkmodifiers < gatsbyDuration abilityStats run scoreboard players operation debuffDurationSlot2 atkmodifiers = gatsbyDuration abilityStats
execute if score abilitynumber abilities matches 23 if score ward slot3 matches 0 if score slot6isatk booleans matches 1 if score debuffDurationSlot3 atkmodifiers < gatsbyDuration abilityStats run scoreboard players operation debuffDurationSlot3 atkmodifiers = gatsbyDuration abilityStats
execute if score abilitynumber abilities matches 23 if score ward slot1 matches 0 if score slot6isatk booleans matches 1 if score debuffDurationSlot1 atkmodifiers < gatsbyDuration abilityStats run scoreboard players operation debuffDurationSlot1 atkmodifiers = gatsbyDuration abilityStats
execute if score abilitynumber abilities matches 23 if score ward slot2 matches 0 if score slot6isatk booleans matches 1 run scoreboard players operation attackDebuffSlot2 atkmodifiers = gatsbyLeader abilityStats
execute if score abilitynumber abilities matches 23 if score ward slot3 matches 0 if score slot6isatk booleans matches 1 run scoreboard players operation attackDebuffSlot3 atkmodifiers = gatsbyLeader abilityStats
execute if score abilitynumber abilities matches 23 if score ward slot1 matches 0 if score slot6isatk booleans matches 1 run scoreboard players operation attackDebuffSlot1 atkmodifiers = gatsbyLeader abilityStats
execute if score abilitynumber abilities matches 23 if score ward slot2 matches 1.. if score slot6isatk booleans matches 1 run function ch:wardslot2
execute if score abilitynumber abilities matches 23 if score ward slot3 matches 1.. if score slot6isatk booleans matches 1 run function ch:wardslot3
execute if score abilitynumber abilities matches 23 if score ward slot1 matches 1.. if score slot6isatk booleans matches 1 run function ch:wardslot1
#execute if score abilitynumber abilities matches 23 if score ward slot4 matches 0 run scoreboard players operation slot4EatenDuration abilities = gatsbyDuration abilityStats
#Boomer
execute if score abilitynumber abilities matches 25 run scoreboard players operation abilityDmg saves = boomer abilityStats
execute if score abilitynumber abilities matches 25 if score slot5isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot5 atkmodifiers
execute if score abilitynumber abilities matches 25 if score slot6isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot6 atkmodifiers
execute if score abilitynumber abilities matches 25 if score slot7isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot7 atkmodifiers
execute if score abilitynumber abilities matches 25 run scoreboard players operation abilityDmg saves += marks slot4
execute if score abilitynumber abilities matches 25 run scoreboard players operation abilityDmg saves /= atkmultiplier slot4
execute if score abilitynumber abilities matches 25 run execute if score ward slot4 matches 0 run scoreboard players operation shield slot4 -= abilityDmg saves
execute if score abilitynumber abilities matches 25 run execute if score ward slot4 matches 0 if score shield slot4 matches ..0 run scoreboard players operation slot4 hp += shield slot4
execute if score abilitynumber abilities matches 25 run execute if score ward slot4 matches 1.. run function ch:wardslot4
execute if score abilitynumber abilities matches 25 if score slot6isatk booleans matches 1 run scoreboard players operation abilityDmg saves *= atkmultiplier slot4
execute if score abilitynumber abilities matches 25 if score slot6isatk booleans matches 1 run scoreboard players operation abilityDmg saves -= marks slot4
execute if score abilitynumber abilities matches 25 if score slot6isatk booleans matches 1 run scoreboard players operation abilityDmg saves += marks slot3
execute if score abilitynumber abilities matches 25 if score slot6isatk booleans matches 1 run scoreboard players operation abilityDmg saves /= atkmultiplier slot3
execute if score abilitynumber abilities matches 25 if score slot6isatk booleans matches 1 run scoreboard players operation abilityDmg saves /= boomerLeader abilityStats
execute if score abilitynumber abilities matches 25 if score slot6isatk booleans matches 1 run execute if score ward slot3 matches 0 run scoreboard players operation shield slot3 -= abilityDmg saves
execute if score abilitynumber abilities matches 25 if score slot6isatk booleans matches 1 run execute if score ward slot3 matches 0 if score shield slot3 matches ..0 run scoreboard players operation slot3 hp += shield slot3
execute if score abilitynumber abilities matches 25 if score slot6isatk booleans matches 1 run execute if score ward slot3 matches 1.. run function ch:wardslot3

#Ripper
execute if score abilitynumber abilities matches 29 if score slot4 hp <= ripper abilityStats if score ward slot4 matches 0 if score invincibleslot4 booleaneffects matches 0 run scoreboard players set slot4 hp 0
execute if score abilitynumber abilities matches 29 if score slot4 hp <= ripper abilityStats if score invincibleslot4 booleaneffects matches 0 if score ward slot4 matches 1.. run function ch:wardslot4

#Domino
execute if score abilitynumber abilities matches 30 run scoreboard players operation abilityDmg saves = domino abilityStats
execute if score abilitynumber abilities matches 30 if score slot5isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot5 atkmodifiers
execute if score abilitynumber abilities matches 30 if score slot6isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot6 atkmodifiers
execute if score abilitynumber abilities matches 30 if score slot7isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot7 atkmodifiers
execute if score abilitynumber abilities matches 30 run scoreboard players operation abilityDmg saves += marks slot4
execute if score abilitynumber abilities matches 30 run scoreboard players operation abilityDmg saves /= atkmultiplier slot4
execute if score abilitynumber abilities matches 30 run execute if score ward slot4 matches 0 run scoreboard players operation shield slot4 -= abilityDmg saves
execute if score abilitynumber abilities matches 30 run execute if score ward slot4 matches 0 if score shield slot4 matches ..0 run scoreboard players operation slot4 hp += shield slot4
execute if score abilitynumber abilities matches 30 if score ward slot4 matches 0 if score durationSlot4 poison < dominoDuration abilityStats run scoreboard players operation durationSlot4 poison = dominoDuration abilityStats
execute if score abilitynumber abilities matches 30 if score ward slot4 matches 0 run scoreboard players operation slot4Poison poison += dominoPoison abilityStats
execute if score abilitynumber abilities matches 30 run execute if score ward slot4 matches 1.. run function ch:wardslot4
#Doc Basic Attack
execute if score abilitynumber abilities matches -1 run scoreboard players operation slot4Disease disease += doc heroattack
execute if score abilitynumber abilities matches -1 if score slot6isatk booleans matches 1 run scoreboard players operation slot4Disease disease += docLeader heroattack

#Healing Totem
execute if score abilitynumber abilities matches -3 run execute if score slot4bleeding booleaneffects matches 0 run scoreboard players operation slot4 hp += healingTotemHeal spellStats
#Eidolon Basic Attack
execute if score abilitynumber abilities matches -4 run execute if score ward slot4 matches 0 if score durationSlot5-4 fear <= eidolonFearDuration abilityStats if score slot5isatk booleans matches 1 run scoreboard players operation durationSlot5-4 fear = eidolonFearDuration abilityStats
execute if score abilitynumber abilities matches -4 run execute if score ward slot4 matches 0 if score durationSlot6-4 fear <= eidolonFearDuration abilityStats if score slot6isatk booleans matches 1 run scoreboard players operation durationSlot6-4 fear = eidolonFearDuration abilityStats
execute if score abilitynumber abilities matches -4 run execute if score ward slot4 matches 0 if score durationSlot7-4 fear <= eidolonFearDuration abilityStats if score slot7isatk booleans matches 1 run scoreboard players operation durationSlot7-4 fear = eidolonFearDuration abilityStats
execute if score abilitynumber abilities matches -4 run scoreboard players operation abilityDmg saves = eidolon heroattack
execute if score abilitynumber abilities matches -4 if score slot5isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot5 atkmodifiers
execute if score abilitynumber abilities matches -4 if score slot6isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot6 atkmodifiers
execute if score abilitynumber abilities matches -4 if score slot7isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot7 atkmodifiers
execute if score abilitynumber abilities matches -4 run scoreboard players operation abilityDmg saves += marks slot4
execute if score abilitynumber abilities matches -4 run scoreboard players operation abilityDmg saves /= atkmultiplier slot4
execute if score abilitynumber abilities matches -4 run execute if score ward slot4 matches 0 run scoreboard players operation shield slot4 -= abilityDmg saves
execute if score abilitynumber abilities matches -4 run execute if score ward slot4 matches 0 if score shield slot4 matches ..0 run scoreboard players operation slot4 hp += shield slot4
execute if score abilitynumber abilities matches -4 run execute if score ward slot4 matches 1.. run function ch:wardslot4


#This goes at the bottom
execute if score shield slot1 matches ..0 run scoreboard players set shield slot1 0
execute if score shield slot2 matches ..0 run scoreboard players set shield slot2 0
execute if score shield slot3 matches ..0 run scoreboard players set shield slot3 0
execute if score shield slot4 matches ..0 run scoreboard players set shield slot4 0
function ch:turnend
#Make sure to add burn to your abilities
