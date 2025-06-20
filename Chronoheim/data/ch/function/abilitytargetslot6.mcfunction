effect clear @a[tag=game1] strength
#Deuce ability
execute if score abilitynumber abilities matches 3 run scoreboard players operation abilityDmg saves = deuce heroattack
execute if score abilitynumber abilities matches 3 if score slot1isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot1 atkmodifiers
execute if score abilitynumber abilities matches 3 if score slot2isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot2 atkmodifiers
execute if score abilitynumber abilities matches 3 if score slot3isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot3 atkmodifiers
execute if score abilitynumber abilities matches 3 run scoreboard players operation abilityDmg saves += marks slot6
execute if score abilitynumber abilities matches 3 if score slot2isatk booleans matches 1 run scoreboard players operation abilityDmg saves *= deuceMultLeader abilityStats
execute if score abilitynumber abilities matches 3 run scoreboard players operation abilityDmg saves *= deuceMult abilityStats
execute if score abilitynumber abilities matches 3 run scoreboard players operation abilityDmg saves /= atkmultiplier slot6
execute if score abilitynumber abilities matches 3 run execute if score ward slot6 matches 0 run scoreboard players operation shield slot6 -= abilityDmg saves
execute if score abilitynumber abilities matches 3 run execute if score ward slot6 matches 0 if score shield slot6 matches ..0 run scoreboard players operation slot6 hp += shield slot6
execute if score abilitynumber abilities matches 3 run execute if score ward slot6 matches 1.. run function ch:wardslot6

#Garabaldi Ability
execute if score ability# abilities matches 24 if score slot6 hp matches 1.. if score slot6bleeding booleaneffects matches 0 run scoreboard players operation hp slot6 += garabaldiHeal abilityStats
execute if score ability# abilities matches 24 if score slot6 hp matches 1.. run scoreboard players set ward slot6 2

#Juniper Ability
execute if score abilitynumber abilities matches 24 run scoreboard players operation abilityDmg saves = juniper abilityStats
execute if score abilitynumber abilities matches 24 if score slot1isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot1 atkmodifiers
execute if score abilitynumber abilities matches 24 if score slot2isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot2 atkmodifiers
execute if score abilitynumber abilities matches 24 if score slot3isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot3 atkmodifiers
execute if score abilitynumber abilities matches 24 run scoreboard players operation abilityDmg saves += marks slot6
execute if score abilitynumber abilities matches 24 run scoreboard players operation abilityDmg saves /= atkmultiplier slot6
execute if score abilitynumber abilities matches 24 run execute if score ward slot6 matches 0 run scoreboard players operation shield slot6 -= abilityDmg saves
execute if score abilitynumber abilities matches 24 run execute if score ward slot6 matches 0 run scoreboard players operation slot6 stun = juniperStun abilityStats
execute if score abilitynumber abilities matches 24 run execute if score ward slot6 matches 0 if score shield slot6 matches ..0 run scoreboard players operation slot6 hp += shield slot6
execute if score abilitynumber abilities matches 24 run execute if score ward slot6 matches 1.. run function ch:wardslot6

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
execute if score abilitynumber abilities matches 7 run execute if score ward slot6 matches 0 if score kongSpDebuffDuration abilityStats > durationslot6 speedDebuffs run scoreboard players operation durationslot6 speedDebuffs = kongSpDebuffDuration abilityStats
execute if score abilitynumber abilities matches 7 run execute if score ward slot6 matches 0 if score kongDmgDebuffDuration abilityStats > debuffDurationslot6 speedDebuffs run scoreboard players operation debuffDurationslot6 atkmodifiers = kongDmgDebuffDuration abilityStats
execute if score abilitynumber abilities matches 7 run execute if score ward slot6 matches 0 run scoreboard players operation durationslot6 speedDebuffs += kongSpDebuffDuration abilityStats
execute if score abilitynumber abilities matches 7 run execute if score ward slot6 matches 0 run scoreboard players operation debuffDurationslot6 atkmodifiers += kongDmgDebuffDuration abilityStats
execute if score abilitynumber abilities matches 7 run execute if score ward slot6 matches 0 run execute if score slot2isatk booleans matches 1 run scoreboard players operation attackDebuffslot6 atkmodifiers += kongLeaderDmgDebuff abilityStats
execute if score abilitynumber abilities matches 7 run execute if score ward slot6 matches 0 run execute if score slot2isatk booleans matches 1 run scoreboard players operation speedDebuffslot6 speedDebuffs += kongLeaderSpDebuff abilityStats
execute if score abilitynumber abilities matches 7 run execute if score ward slot6 matches 0 run execute if score slot2isatk booleans matches 1 run scoreboard players operation speed slot6 -= kongLeaderSpDebuff abilityStats
execute if score abilitynumber abilities matches 7 run execute if score ward slot6 matches 0 run scoreboard players operation speed slot6 -= kongSpDebuff abilityStats
execute if score abilitynumber abilities matches 7 run execute if score ward slot6 matches 0 if score shield slot6 matches ..0 run scoreboard players operation slot6 hp += shield slot6
execute if score abilitynumber abilities matches 7 run execute if score ward slot6 matches 1.. run function ch:wardslot6

#Robyn Ability
execute if score abilitynumber abilities matches 9 if score ward slot6 matches 0 run scoreboard players operation marks slot6 = robyn abilityStats
execute if score abilitynumber abilities matches 9 if score ward slot6 matches 1 run function ch:wardslot6
#Robo
execute if score abilitynumber abilities matches 5 if score durationslot6 shield < roboDuration abilityStats run scoreboard players operation durationslot6 shield = roboDuration abilityStats
execute if score abilitynumber abilities matches 5 run scoreboard players operation shield slot6 += robo abilityStats
execute if score abilitynumber abilities matches 5 if score slot6isatk booleans matches 1 run scoreboard players operation shield slot6 += roboLeader abilityStats
#Kirin
execute if score abilitynumber abilities matches 8 if score buffDurationslot6 atkmodifiers < kirinDuration abilityStats run scoreboard players operation buffDurationslot6 atkmodifiers = kirinDuration abilityStats
execute if score abilitynumber abilities matches 8 run scoreboard players operation attackBuffslot6 atkmodifiers += kirin abilityStats
execute if score abilitynumber abilities matches 8 if score slot6isatk booleans matches 1 if score slot6Bleeding booleaneffects matches 0.. run scoreboard players operation slot6 hp += kirinLeader abilityStats
#Ace
execute if score abilitynumber abilities matches 12 run scoreboard players operation cooldown slot6 = aceSetCooldown abilityStats
execute if score abilitynumber abilities matches 12 run execute if score character# slot2 matches 12 run scoreboard players operation durationslot6 SpeedDebuffs = aceLeaderDuration abilitystats
execute if score abilitynumber abilities matches 12 run execute if score character# slot2 matches 12 run scoreboard players operation speedDebuffslot6 SpeedDebuffs = aceLeader abilityStats
execute if score abilitynumber abilities matches 12 run execute if score character# slot2 matches 12 run scoreboard players operation speed slot6 -= aceLeader abilityStats
#Gabriel
execute if score abilitynumber abilities matches 22 run scoreboard players operation abilityDmg saves = gabriel abilitystats
execute if score abilitynumber abilities matches 22 if score slot1isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot1 atkmodifiers
execute if score abilitynumber abilities matches 22 if score slot2isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot2 atkmodifiers
execute if score abilitynumber abilities matches 22 if score slot3isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot3 atkmodifiers
execute if score abilitynumber abilities matches 22 if score slot1 hp matches ..0 run scoreboard players operation abilityDmg saves += gabrielDeath abilityStats
execute if score abilitynumber abilities matches 22 if score slot2 hp matches ..0 run scoreboard players operation abilityDmg saves += gabrielDeath abilityStats
execute if score abilitynumber abilities matches 22 if score slot3 hp matches ..0 run scoreboard players operation abilityDmg saves += gabrielDeath abilityStats
execute if score abilitynumber abilities matches 22 run scoreboard players operation abilityDmg saves += slot6 marks
execute if score abilitynumber abilities matches 22 run scoreboard players operation abilityDmg saves /= atkmultiplier slot6
execute if score abilitynumber abilities matches 22 run execute if score ward slot6 matches 0 run scoreboard players operation shield slot6 -= abilityDmg saves
execute if score abilitynumber abilities matches 22 run execute if score ward slot6 matches 0 if score shield slot6 matches ..0 run scoreboard players operation slot6 hp += shield slot6
execute if score abilitynumber abilities matches 22 if score slot2isatk booleans matches 1 if score ward slot6 matches 0 run scoreboard players operation abilityDmg saves /= gabrielLeader abilityStats
execute if score abilitynumber abilities matches 22 if score slot2isatk booleans matches 1 if score ward slot6 matches 0 run scoreboard players operation slot2 hp += abilityDmg saves
execute if score abilitynumber abilities matches 22 run execute if score ward slot6 matches 1.. run function ch:wardslot6
#Gatsby
execute if score abilitynumber abilities matches 23 if score ward slot6 matches 0 run scoreboard players operation slot6 stun = gatsbyDuration abilityStats
execute if score abilitynumber abilities matches 23 if score ward slot6 matches 0 run scoreboard players operation invincibleslot6 booleaneffects = gatsbyDuration abilityStats
execute if score abilitynumber abilities matches 23 if score ward slot6 matches 0 run scoreboard players operation savehp2 saves = slot6 hp
#execute if score abilitynumber abilities matches 23 if score ward slot6 matches 0 run scoreboard players operation slot6EatenDuration abilities = gatsbyDuration abilityStats
#Boomer
execute if score abilitynumber abilities matches 25 run scoreboard players operation abilityDmg saves = boomer abilitystats
execute if score abilitynumber abilities matches 25 if score slot1isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot1 atkmodifiers
execute if score abilitynumber abilities matches 25 if score slot2isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot2 atkmodifiers
execute if score abilitynumber abilities matches 25 if score slot3isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot3 atkmodifiers
execute if score abilitynumber abilities matches 25 run scoreboard players operation abilityDmg saves += slot6 marks
execute if score abilitynumber abilities matches 25 run scoreboard players operation abilityDmg saves /= atkmultiplier slot6
execute if score abilitynumber abilities matches 25 run execute if score ward slot6 matches 0 run scoreboard players operation shield slot6 -= abilityDmg saves
execute if score abilitynumber abilities matches 25 run execute if score ward slot6 matches 0 if score shield slot6 matches ..0 run scoreboard players operation slot6 hp += shield slot6
execute if score abilitynumber abilities matches 25 run execute if score ward slot6 matches 1.. run function ch:wardslot6
execute if score abilitynumber abilities matches 25 if score slot2isatk booleans matches 1 run scoreboard players operation abilityDmg saves -= slot6 marks
execute if score abilitynumber abilities matches 25 if score slot2isatk booleans matches 1 run scoreboard players operation abilityDmg saves *= atkmultiplier slot6
execute if score abilitynumber abilities matches 25 if score slot2isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot5 marks
execute if score abilitynumber abilities matches 25 if score slot2isatk booleans matches 1 run scoreboard players operation abilityDmg saves /= atkmultiplier slot5
execute if score abilitynumber abilities matches 25 if score slot2isatk booleans matches 1 run scoreboard players operation abilityDmg saves /= boomerleader abilities
execute if score abilitynumber abilities matches 25 if score slot2isatk booleans matches 1 run execute if score ward slot5 matches 0 run scoreboard players operation shield slot5 -= abilityDmg saves
execute if score abilitynumber abilities matches 25 if score slot2isatk booleans matches 1 run execute if score ward slot5 matches 0 if score shield slot5 matches ..0 run scoreboard players operation slot5 hp += shield slot5
execute if score abilitynumber abilities matches 25 if score slot2isatk booleans matches 1 run execute if score ward slot5 matches 1.. run function ch:wardslot5
execute if score abilitynumber abilities matches 25 if score slot2isatk booleans matches 1 run scoreboard players operation abilityDmg saves -= slot5 marks
execute if score abilitynumber abilities matches 25 if score slot2isatk booleans matches 1 run scoreboard players operation abilityDmg saves *= atkmultiplier slot5
execute if score abilitynumber abilities matches 25 if score slot2isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot7 marks
execute if score abilitynumber abilities matches 25 if score slot2isatk booleans matches 1 run scoreboard players operation abilityDmg saves /= atkmultiplier slot7
execute if score abilitynumber abilities matches 25 if score slot2isatk booleans matches 1 run scoreboard players operation abilityDmg saves /= boomerleader abilities
execute if score abilitynumber abilities matches 25 if score slot2isatk booleans matches 1 run execute if score ward slot7 matches 0 run scoreboard players operation shield slot7 -= abilityDmg saves
execute if score abilitynumber abilities matches 25 if score slot2isatk booleans matches 1 run execute if score ward slot7 matches 0 if score shield slot7 matches ..0 run scoreboard players operation slot7 hp += shield slot7
execute if score abilitynumber abilities matches 25 if score slot2isatk booleans matches 1 run execute if score ward slot7 matches 1.. run function ch:wardslot7


#Ripper
execute if score abilitynumber abilities matches 29 if score slot6 hp matches ..500 if score ward slot6 matches 0 if score invincibleslot6 booleaneffects matches 0 run scoreboard players set slot6 hp 0
execute if score abilitynumber abilities matches 29 if score slot6 hp matches ..500 if score invincibleslot6 booleaneffects matches 0 if score ward slot6 matches 1.. run function ch:wardslot6


#Domino
execute if score abilitynumber abilities matches 30 run scoreboard players operation abilityDmg saves = domino abilitystats
execute if score abilitynumber abilities matches 30 if score slot1isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot1 atkmodifiers
execute if score abilitynumber abilities matches 30 if score slot2isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot2 atkmodifiers
execute if score abilitynumber abilities matches 30 if score slot3isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot3 atkmodifiers
execute if score abilitynumber abilities matches 30 run scoreboard players operation abilityDmg saves += slot6 marks
execute if score abilitynumber abilities matches 30 run scoreboard players operation abilityDmg saves /= atkmultiplier slot6
execute if score abilitynumber abilities matches 30 run execute if score ward slot6 matches 0 run scoreboard players operation shield slot6 -= abilityDmg saves
execute if score abilitynumber abilities matches 30 run execute if score ward slot6 matches 0 if score shield slot6 matches ..0 run scoreboard players operation slot6 hp += shield slot6
execute if score abilitynumber abilities matches 30 run scoreboard players operation durationslot6 poison = dominoDuration abilityStats
execute if score abilitynumber abilities matches 30 run scoreboard players operation slot6Poison poison = dominoPoisonLeader abilityStats
execute if score abilitynumber abilities matches 30 run execute if score ward slot6 matches 1.. run function ch:wardslot6
#Doc Basic Attack
execute if score abilitynumber abilities matches -1 run scoreboard players operation slot6Disease disease += doc heroattack


#This goes at the bottom
execute if score shield slot5 matches ..0 run scoreboard players set shield slot5 0
execute if score shield slot6 matches ..0 run scoreboard players set shield slot6 0
execute if score shield slot7 matches ..0 run scoreboard players set shield slot7 0
execute if score shield slot6 matches ..0 run scoreboard players set shield slot6 0
clear @p[tag=p2]
effect clear @p[tag=p2]
function ch:turnend
#Make sure to add burn to your abilities







