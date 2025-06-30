effect clear @a[tag=game1] strength
clear @p[tag=game1]
#Deuce ability
execute if score abilitynumber abilities matches 3 run scoreboard players operation abilityDmg saves = deuce heroattack
execute if score abilitynumber abilities matches 3 if score slot1isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot1 atkmodifiers
execute if score abilitynumber abilities matches 3 if score slot2isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot2 atkmodifiers
execute if score abilitynumber abilities matches 3 if score slot3isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot3 atkmodifiers
execute if score abilitynumber abilities matches 3 run scoreboard players operation abilityDmg saves += marks slot8
execute if score abilitynumber abilities matches 3 if score slot2isatk booleans matches 1 run scoreboard players operation abilityDmg saves *= deuceMultLeader abilityStats
execute if score abilitynumber abilities matches 3 if score slot2isatk booleans matches 0 run scoreboard players operation abilityDmg saves *= deuceMult abilityStats
execute if score abilitynumber abilities matches 3 run scoreboard players operation abilityDmg saves /= atkmultiplier slot8
execute if score abilitynumber abilities matches 3 run execute if score ward slot8 matches 0 run scoreboard players operation shield slot8 -= abilityDmg saves
execute if score abilitynumber abilities matches 3 run execute if score ward slot8 matches 0 if score shield slot8 matches ..0 run scoreboard players operation slot8 hp += shield slot8
execute if score abilitynumber abilities matches 3 run execute if score ward slot8 matches 1.. run function ch:wardslot8


#Garabaldi Ability
execute if score abilitynumber abilities matches 24 if score slot8 hp matches 1.. if score slot8bleeding booleaneffects matches 0 run scoreboard players operation slot8 hp += garabaldiHeal abilityStats
execute if score abilitynumber abilities matches 24 if score slot8 hp matches 1.. if score slot8bleeding booleaneffects matches 0 if score character# slot6 matches 24 run scoreboard players operation slot8 hp += garabaldiLeader abilityStats
execute if score abilitynumber abilities matches 24 if score slot8 hp matches 1.. run scoreboard players set ward slot8 2


#Juniper Ability
execute if score abilitynumber abilities matches 27 run scoreboard players operation abilityDmg saves = juniper abilityStats
execute if score abilitynumber abilities matches 27 if score slot1isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot1 atkmodifiers
execute if score abilitynumber abilities matches 27 if score slot2isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot2 atkmodifiers
execute if score abilitynumber abilities matches 27 if score slot3isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot3 atkmodifiers
execute if score abilitynumber abilities matches 27 run scoreboard players operation abilityDmg saves += marks slot8
execute if score abilitynumber abilities matches 27 run scoreboard players operation abilityDmg saves /= atkmultiplier slot8
execute if score abilitynumber abilities matches 27 run execute if score ward slot8 matches 0 run scoreboard players operation shield slot8 -= abilityDmg saves
execute if score abilitynumber abilities matches 27 run execute if score ward slot8 matches 0 run scoreboard players operation slot8 stun = juniperStun abilityStats
execute if score abilitynumber abilities matches 27 run execute if score ward slot8 matches 0 if score shield slot8 matches ..0 run scoreboard players operation slot8 hp += shield slot8
execute if score abilitynumber abilities matches 27 run execute if score ward slot8 matches 1.. run function ch:wardslot8


#Juniper Basic
execute if score abilitynumber abilities matches -2 run execute if score slot8bleeding booleaneffects matches 0 run scoreboard players operation slot8 hp += juniper heroattack
execute if score character# slot8 matches 27 run function ch:cleanseslot8


#K.O.N.G ability
execute if score abilitynumber abilities matches 7 run scoreboard players operation abilityDmg saves = kong abilityStats
execute if score abilitynumber abilities matches 7 if score slot1isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot1 atkmodifiers
execute if score abilitynumber abilities matches 7 if score slot2isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot2 atkmodifiers
execute if score abilitynumber abilities matches 7 if score slot3isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot3 atkmodifiers
execute if score abilitynumber abilities matches 7 run scoreboard players operation abilityDmg saves += marks slot8
execute if score abilitynumber abilities matches 7 run scoreboard players operation abilityDmg saves /= atkmultiplier slot8
execute if score abilitynumber abilities matches 7 run execute if score ward slot8 matches 0 run scoreboard players operation shield slot8 -= abilityDmg saves
execute if score abilitynumber abilities matches 7 run execute if score ward slot8 matches 0 if score kongSpDebuffDuration abilityStats > durationSlot8 speedDebuffs run scoreboard players operation durationSlot8 speedDebuffs = kongSpDebuffDuration abilityStats
execute if score abilitynumber abilities matches 7 run execute if score ward slot8 matches 0 if score kongDmgDebuffDuration abilityStats > debuffDurationSlot8 atkmodifiers run scoreboard players operation debuffDurationSlot8 atkmodifiers = kongDmgDebuffDuration abilityStats
execute if score abilitynumber abilities matches 7 run execute if score ward slot8 matches 0 run scoreboard players operation speedDebuffSlot8 speedDebuffs += kongSpDebuff abilityStats
execute if score abilitynumber abilities matches 7 run execute if score ward slot8 matches 0 run scoreboard players operation attackDebuffSlot8 atkmodifiers += kongDmgDebuff abilityStats
execute if score abilitynumber abilities matches 7 run execute if score ward slot8 matches 0 run execute if score slot2isatk booleans matches 1 run scoreboard players operation attackDebuffSlot8 atkmodifiers += kongLeaderDmgDebuff abilityStats
execute if score abilitynumber abilities matches 7 run execute if score ward slot8 matches 0 run execute if score slot2isatk booleans matches 1 run scoreboard players operation speedDebuffslot8 speedDebuffs += kongLeaderSpDebuff abilityStats
execute if score abilitynumber abilities matches 7 run execute if score ward slot8 matches 0 run execute if score slot2isatk booleans matches 1 run scoreboard players operation speed slot8 -= kongLeaderSpDebuff abilityStats
execute if score abilitynumber abilities matches 7 run execute if score ward slot8 matches 0 run scoreboard players operation speed slot8 -= kongSpDebuff abilityStats
execute if score abilitynumber abilities matches 7 run execute if score ward slot8 matches 0 if score shield slot8 matches ..0 run scoreboard players operation slot8 hp += shield slot8
execute if score abilitynumber abilities matches 7 run execute if score ward slot8 matches 1.. run function ch:wardslot8


#Robyn Ability
execute if score abilitynumber abilities matches 9 if score ward slot8 matches 0 run scoreboard players operation marks slot8 += robyn abilityStats
execute if score abilitynumber abilities matches 9 if score ward slot8 matches 1 run function ch:wardslot8
#Robo
execute if score abilitynumber abilities matches 5 if score durationSlot8 shield < roboDuration abilityStats run scoreboard players operation durationSlot8 shield = roboDuration abilityStats
execute if score abilitynumber abilities matches 5 run scoreboard players operation shield slot8 += robo abilityStats
execute if score abilitynumber abilities matches 5 if score slot8isatk booleans matches 1 run scoreboard players operation shield slot8 += roboLeader abilityStats
#Kirin
execute if score abilitynumber abilities matches 8 if score buffDurationSlot8 atkmodifiers < kirinDuration abilityStats run scoreboard players operation buffDurationSlot8 atkmodifiers = kirinDuration abilityStats
execute if score abilitynumber abilities matches 8 run scoreboard players operation attackBuffslot8 atkmodifiers += kirin abilityStats
execute if score abilitynumber abilities matches 8 if score slot8isatk booleans matches 1 if score slot8bleeding booleaneffects matches 0.. run scoreboard players operation slot8 hp += kirinLeader abilityStats
#Ace
execute if score abilitynumber abilities matches 12 run scoreboard players operation cooldown slot8 = aceSetCooldown abilityStats
execute if score abilitynumber abilities matches 12 run execute if score character# slot2 matches 12 run scoreboard players operation durationSlot8 speedDebuffs = aceLeaderDuration abilityStats
execute if score abilitynumber abilities matches 12 run execute if score character# slot2 matches 12 run scoreboard players operation speedDebuffslot8 speedDebuffs = aceLeader abilityStats
execute if score abilitynumber abilities matches 12 run execute if score character# slot2 matches 12 run scoreboard players operation speed slot8 -= aceLeader abilityStats
#Gabriel
execute if score abilitynumber abilities matches 22 run scoreboard players operation abilityDmg saves = gabriel abilityStats
execute if score abilitynumber abilities matches 22 if score slot1isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot1 atkmodifiers
execute if score abilitynumber abilities matches 22 if score slot2isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot2 atkmodifiers
execute if score abilitynumber abilities matches 22 if score slot3isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot3 atkmodifiers
execute if score abilitynumber abilities matches 22 if score slot1 hp matches ..0 run scoreboard players operation abilityDmg saves += gabrielDeath abilityStats
execute if score abilitynumber abilities matches 22 if score slot2 hp matches ..0 run scoreboard players operation abilityDmg saves += gabrielDeath abilityStats
execute if score abilitynumber abilities matches 22 if score slot3 hp matches ..0 run scoreboard players operation abilityDmg saves += gabrielDeath abilityStats
execute if score abilitynumber abilities matches 22 run scoreboard players operation abilityDmg saves += marks slot8
execute if score abilitynumber abilities matches 22 run scoreboard players operation abilityDmg saves /= atkmultiplier slot8
execute if score abilitynumber abilities matches 22 run execute if score ward slot8 matches 0 run scoreboard players operation shield slot8 -= abilityDmg saves
execute if score abilitynumber abilities matches 22 run execute if score ward slot8 matches 0 if score shield slot8 matches ..0 run scoreboard players operation slot8 hp += shield slot8
execute if score abilitynumber abilities matches 22 if score slot2isatk booleans matches 1 if score ward slot8 matches 0 run scoreboard players operation abilityDmg saves /= gabrielLeader abilityStats
execute if score abilitynumber abilities matches 22 if score slot2isatk booleans matches 1 if score ward slot8 matches 0 run scoreboard players operation slot2 hp += abilityDmg saves
execute if score abilitynumber abilities matches 22 run execute if score ward slot8 matches 1.. run function ch:wardslot8
#Gatsby
execute if score abilitynumber abilities matches 23 if score ward slot8 matches 0 run scoreboard players operation slot8 stun = gatsbyDuration abilityStats
execute if score abilitynumber abilities matches 23 if score ward slot8 matches 0 run scoreboard players operation savehp8 saves = slot8 hp
execute if score abilitynumber abilities matches 23 if score ward slot8 matches 0 run scoreboard players operation invincibleslot8 booleaneffects = gatsbyDuration abilityStats
execute if score abilitynumber abilities matches 23 if score durationSlot8-1 fear < gatsbyDuration abilityStats run scoreboard players operation durationSlot8-1 fear = gatsbyDuration abilityStats
execute if score abilitynumber abilities matches 23 if score durationSlot8-2 fear < gatsbyDuration abilityStats run scoreboard players operation durationSlot8-2 fear = gatsbyDuration abilityStats
execute if score abilitynumber abilities matches 23 if score durationSlot8-3 fear < gatsbyDuration abilityStats run scoreboard players operation durationSlot8-3 fear = gatsbyDuration abilityStats
execute if score abilitynumber abilities matches 23 if score durationSlot8-4 fear < gatsbyDuration abilityStats run scoreboard players operation durationSlot8-4 fear = gatsbyDuration abilityStats
execute if score abilitynumber abilities matches 23 if score ward slot6 matches 0 if score slot2isatk booleans matches 1 if score debuffDurationSlot6 atkmodifiers < gatsbyDuration abilityStats run scoreboard players operation debuffDurationSlot6 atkmodifiers = gatsbyDuration abilityStats
execute if score abilitynumber abilities matches 23 if score ward slot7 matches 0 if score slot2isatk booleans matches 1 if score debuffDurationSlot7 atkmodifiers < gatsbyDuration abilityStats run scoreboard players operation debuffDurationSlot7 atkmodifiers = gatsbyDuration abilityStats
execute if score abilitynumber abilities matches 23 if score ward slot5 matches 0 if score slot2isatk booleans matches 1 if score debuffDurationSlot5 atkmodifiers < gatsbyDuration abilityStats run scoreboard players operation debuffDurationSlot5 atkmodifiers = gatsbyDuration abilityStats
execute if score abilitynumber abilities matches 23 if score ward slot6 matches 0 if score slot2isatk booleans matches 1 run scoreboard players operation attackDebuffSlot6 atkmodifiers = gatsbyLeader abilityStats
execute if score abilitynumber abilities matches 23 if score ward slot7 matches 0 if score slot2isatk booleans matches 1 run scoreboard players operation attackDebuffSlot7 atkmodifiers = gatsbyLeader abilityStats
execute if score abilitynumber abilities matches 23 if score ward slot5 matches 0 if score slot2isatk booleans matches 1 run scoreboard players operation attackDebuffSlot5 atkmodifiers = gatsbyLeader abilityStats
execute if score abilitynumber abilities matches 23 if score ward slot6 matches 1.. if score slot2isatk booleans matches 1 run function ch:wardslot6
execute if score abilitynumber abilities matches 23 if score ward slot7 matches 1.. if score slot2isatk booleans matches 1 run function ch:wardslot7
execute if score abilitynumber abilities matches 23 if score ward slot5 matches 1.. if score slot2isatk booleans matches 1 run function ch:wardslot5
#execute if score abilitynumber abilities matches 23 if score ward slot8 matches 0 run scoreboard players operation slot8EatenDuration abilities = gatsbyDuration abilityStats
#Boomer
execute if score abilitynumber abilities matches 25 run scoreboard players operation abilityDmg saves = boomer abilityStats
execute if score abilitynumber abilities matches 25 if score slot1isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot1 atkmodifiers
execute if score abilitynumber abilities matches 25 if score slot2isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot2 atkmodifiers
execute if score abilitynumber abilities matches 25 if score slot3isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot3 atkmodifiers
execute if score abilitynumber abilities matches 25 run scoreboard players operation abilityDmg saves += marks slot8
execute if score abilitynumber abilities matches 25 run scoreboard players operation abilityDmg saves /= atkmultiplier slot8
execute if score abilitynumber abilities matches 25 run execute if score ward slot8 matches 0 run scoreboard players operation shield slot8 -= abilityDmg saves
execute if score abilitynumber abilities matches 25 run execute if score ward slot8 matches 0 if score shield slot8 matches ..0 run scoreboard players operation slot8 hp += shield slot8
execute if score abilitynumber abilities matches 25 run execute if score ward slot8 matches 1.. run function ch:wardslot8
execute if score abilitynumber abilities matches 25 if score slot2isatk booleans matches 1 run scoreboard players operation abilityDmg saves *= atkmultiplier slot8
execute if score abilitynumber abilities matches 25 if score slot2isatk booleans matches 1 run scoreboard players operation abilityDmg saves -= marks slot8
execute if score abilitynumber abilities matches 25 if score slot2isatk booleans matches 1 run scoreboard players operation abilityDmg saves += marks slot7
execute if score abilitynumber abilities matches 25 if score slot2isatk booleans matches 1 run scoreboard players operation abilityDmg saves /= atkmultiplier slot7
execute if score abilitynumber abilities matches 25 if score slot2isatk booleans matches 1 run scoreboard players operation abilityDmg saves /= boomerLeader abilityStats
execute if score abilitynumber abilities matches 25 if score slot2isatk booleans matches 1 run execute if score ward slot7 matches 0 run scoreboard players operation shield slot7 -= abilityDmg saves
execute if score abilitynumber abilities matches 25 if score slot2isatk booleans matches 1 run execute if score ward slot7 matches 0 if score shield slot7 matches ..0 run scoreboard players operation slot7 hp += shield slot7
execute if score abilitynumber abilities matches 25 if score slot2isatk booleans matches 1 run execute if score ward slot7 matches 1.. run function ch:wardslot7


#Ripper
execute if score abilitynumber abilities matches 29 if score slot8 hp <= ripper abilityStats if score ward slot8 matches 0 if score invincibleslot8 booleaneffects matches 0 run scoreboard players set slot8 hp 0
execute if score abilitynumber abilities matches 29 if score slot8 hp <= ripper abilityStats if score invincibleslot8 booleaneffects matches 0 if score ward slot8 matches 1.. run function ch:wardslot8


#Domino
execute if score abilitynumber abilities matches 30 run scoreboard players operation abilityDmg saves = domino abilityStats
execute if score abilitynumber abilities matches 30 if score slot1isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot1 atkmodifiers
execute if score abilitynumber abilities matches 30 if score slot2isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot2 atkmodifiers
execute if score abilitynumber abilities matches 30 if score slot3isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot3 atkmodifiers
execute if score abilitynumber abilities matches 30 run scoreboard players operation abilityDmg saves += marks slot8
execute if score abilitynumber abilities matches 30 run scoreboard players operation abilityDmg saves /= atkmultiplier slot8
execute if score abilitynumber abilities matches 30 run execute if score ward slot8 matches 0 run scoreboard players operation shield slot8 -= abilityDmg saves
execute if score abilitynumber abilities matches 30 run execute if score ward slot8 matches 0 if score shield slot8 matches ..0 run scoreboard players operation slot8 hp += shield slot8
execute if score abilitynumber abilities matches 30 if score ward slot8 matches 0 if score durationSlot8 poison < dominoDuration abilityStats run scoreboard players operation durationSlot8 poison = dominoDuration abilityStats
execute if score abilitynumber abilities matches 30 if score ward slot8 matches 0 run scoreboard players operation slot8Poison poison += dominoPoisonLeader abilityStats
execute if score abilitynumber abilities matches 30 run execute if score ward slot8 matches 1.. run function ch:wardslot8
#Doc Basic Attack
execute if score abilitynumber abilities matches -1 run scoreboard players operation slot8Disease disease += doc heroattack
execute if score abilitynumber abilities matches -1 if score slot2isatk booleans matches 1 run scoreboard players operation slot8Disease disease += docLeader heroattack

#Healing Totem
execute if score abilitynumber abilities matches -3 run execute if score slot8bleeding booleaneffects matches 0 run scoreboard players operation slot8 hp += healingTotemHeal spellStats
#Eidolon Basic Attack
execute if score abilitynumber abilities matches -4 run execute if score ward slot8 matches 0 if score durationSlot1-8 fear <= eidolonFearDuration abilityStats if score slot1isatk booleans matches 1 run scoreboard players operation durationSlot1-8 fear = eidolonFearDuration abilityStats
execute if score abilitynumber abilities matches -4 run execute if score ward slot8 matches 0 if score durationSlot2-8 fear <= eidolonFearDuration abilityStats if score slot2isatk booleans matches 1 run scoreboard players operation durationSlot2-8 fear = eidolonFearDuration abilityStats
execute if score abilitynumber abilities matches -4 run execute if score ward slot8 matches 0 if score durationSlot3-8 fear <= eidolonFearDuration abilityStats if score slot3isatk booleans matches 1 run scoreboard players operation durationSlot3-8 fear = eidolonFearDuration abilityStats
execute if score abilitynumber abilities matches -4 run scoreboard players operation abilityDmg saves = eidolon heroattack
execute if score abilitynumber abilities matches -4 if score slot1isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot1 atkmodifiers
execute if score abilitynumber abilities matches -4 if score slot2isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot2 atkmodifiers
execute if score abilitynumber abilities matches -4 if score slot3isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot3 atkmodifiers
execute if score abilitynumber abilities matches -4 run scoreboard players operation abilityDmg saves += marks slot8
execute if score abilitynumber abilities matches -4 run scoreboard players operation abilityDmg saves /= atkmultiplier slot8
execute if score abilitynumber abilities matches -4 run execute if score ward slot8 matches 0 run scoreboard players operation shield slot8 -= abilityDmg saves
execute if score abilitynumber abilities matches -4 run execute if score ward slot8 matches 0 if score shield slot8 matches ..0 run scoreboard players operation slot8 hp += shield slot8
execute if score abilitynumber abilities matches -4 run execute if score ward slot8 matches 1.. run function ch:wardslot8


#This goes at the bottom
execute if score shield slot5 matches ..0 run scoreboard players set shield slot5 0
execute if score shield slot6 matches ..0 run scoreboard players set shield slot6 0
execute if score shield slot7 matches ..0 run scoreboard players set shield slot7 0
execute if score shield slot8 matches ..0 run scoreboard players set shield slot8 0
function ch:turnend
#Make sure to add burn to your abilities





