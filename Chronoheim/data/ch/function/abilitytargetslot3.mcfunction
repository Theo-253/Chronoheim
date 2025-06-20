effect clear @a[tag=game1] strength
execute if score abilitynumber abilitynumber matches 1 run say yo 


effect clear @a[tag=game1] strength

#Deuce ability
execute if score abilitynumber abilities matches 3 run scoreboard players operation abilityDmg saves = deuce heroattack
execute if score abilitynumber abilities matches 3 if score slot5isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot5 atkmodifiers
execute if score abilitynumber abilities matches 3 if score slot6isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot6 atkmodifiers
execute if score abilitynumber abilities matches 3 if score slot7isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot7 atkmodifiers
execute if score abilitynumber abilities matches 3 run scoreboard players operation abilityDmg saves += marks slot3
execute if score abilitynumber abilities matches 3 if score slot6isatk booleans matches 1 run scoreboard players operation abilityDmg saves *= deuceMultLeader abilityStats
execute if score abilitynumber abilities matches 3 run scoreboard players operation abilityDmg saves *= deuceMult abilityStats
execute if score abilitynumber abilities matches 3 run scoreboard players operation abilityDmg saves /= atkmultiplier slot3
execute if score abilitynumber abilities matches 3 run execute if score ward slot3 matches 0 run scoreboard players operation shield slot3 -= abilityDmg saves
execute if score abilitynumber abilities matches 3 run execute if score ward slot3 matches 0 if score shield slot3 matches ..0 run scoreboard players operation slot3 hp += shield slot3
execute if score abilitynumber abilities matches 3 run execute if score ward slot3 matches 1.. run function ch:wardslot3

#Garabaldi Ability
execute if score ability# abilities matches 24 if score slot3 hp matches 1.. if score slot3bleeding booleaneffects matches 0 run scoreboard players operation hp slot3 += garabaldiHeal abilityStats
execute if score ability# abilities matches 24 if score slot3 hp matches 1.. run scoreboard players set ward slot3 2

#Juniper Ability
execute if score abilitynumber abilities matches 24 run scoreboard players operation abilityDmg saves = juniper abilityStats
execute if score abilitynumber abilities matches 24 if score slot5isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot5 atkmodifiers
execute if score abilitynumber abilities matches 24 if score slot6isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot6 atkmodifiers
execute if score abilitynumber abilities matches 24 if score slot7isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot7 atkmodifiers
execute if score abilitynumber abilities matches 24 run scoreboard players operation abilityDmg saves += marks slot3
execute if score abilitynumber abilities matches 24 run scoreboard players operation abilityDmg saves /= atkmultiplier slot3
execute if score abilitynumber abilities matches 24 run execute if score ward slot3 matches 0 run scoreboard players operation shield slot3 -= abilityDmg saves
execute if score abilitynumber abilities matches 24 run execute if score ward slot3 matches 0 run scoreboard players operation slot3 stun = juniperStun abilityStats
execute if score abilitynumber abilities matches 24 run execute if score ward slot3 matches 0 if score shield slot3 matches ..0 run scoreboard players operation slot3 hp += shield slot3
execute if score abilitynumber abilities matches 24 run execute if score ward slot3 matches 1.. run function ch:wardslot3

#Juniper Basic
execute if score abilitynumber abilities matches -2 run execute if score slot3bleeding booleaneffects matches 0 run scoreboard players operation slot3 hp += juniper heroattack
execute if score character# slot2 matches 27 run function ch:cleanseslot3

#K.O.N.G ability
execute if score abilitynumber abilities matches 7 run scoreboard players operation abilityDmg saves = kong abilityStats
execute if score abilitynumber abilities matches 7 if score slot5isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot5 atkmodifiers
execute if score abilitynumber abilities matches 7 if score slot6isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot6 atkmodifiers
execute if score abilitynumber abilities matches 7 if score slot7isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot7 atkmodifiers
execute if score abilitynumber abilities matches 7 run scoreboard players operation abilityDmg saves += marks slot3
execute if score abilitynumber abilities matches 7 run scoreboard players operation abilityDmg saves /= atkmultiplier slot3
execute if score abilitynumber abilities matches 7 run execute if score ward slot3 matches 0 run scoreboard players operation shield slot3 -= abilityDmg saves
execute if score abilitynumber abilities matches 7 run execute if score ward slot3 matches 0 if score kongSpDebuffDuration abilityStats > durationslot3 speedDebuffs run scoreboard players operation durationSlot3 speedDebuffs = kongSpDebuffDuration abilityStats
execute if score abilitynumber abilities matches 7 run execute if score ward slot3 matches 0 if score kongDmgDebuffDuration abilityStats > debuffDurationSlot3 speedDebuffs run scoreboard players operation debuffDurationSlot3 atkmodifiers = kongDmgDebuffDuration abilityStats
execute if score abilitynumber abilities matches 7 run execute if score ward slot3 matches 0 run scoreboard players operation durationSlot3 speedDebuffs += kongSpDebuffDuration abilityStats
execute if score abilitynumber abilities matches 7 run execute if score ward slot3 matches 0 run scoreboard players operation debuffDurationSlot3 atkmodifiers += kongDmgDebuffDuration abilityStats
execute if score abilitynumber abilities matches 7 run execute if score ward slot3 matches 0 run execute if score slot6isatk booleans matches 1 run scoreboard players operation attackDebuffSlot3 atkmodifiers += kongLeaderDmgDebuff abilityStats
execute if score abilitynumber abilities matches 7 run execute if score ward slot3 matches 0 run execute if score slot6isatk booleans matches 1 run scoreboard players operation speedDebuffSlot3 speedDebuffs += kongLeaderSpDebuff abilityStats
execute if score abilitynumber abilities matches 7 run execute if score ward slot3 matches 0 run execute if score slot6isatk booleans matches 1 run scoreboard players operation speed slot3 -= kongLeaderSpDebuff abilityStats
execute if score abilitynumber abilities matches 7 run execute if score ward slot3 matches 0 run scoreboard players operation speed slot3 -= kongSpDebuff abilityStats
execute if score abilitynumber abilities matches 7 run execute if score ward slot3 matches 0 if score shield slot3 matches ..0 run scoreboard players operation slot3 hp += shield slot3
execute if score abilitynumber abilities matches 7 run execute if score ward slot3 matches 1.. run function ch:wardslot3

#Robyn Ability
execute if score abilitynumber abilities matches 9 if score ward slot3 matches 0 run scoreboard players operation marks slot3 = robyn abilityStats
execute if score abilitynumber abilities matches 9 if score ward slot3 matches 1 run function ch:wardslot3

#Robo
execute if score abilitynumber abilities matches 5 if score durationSlot3 shield < roboDuration abilityStats run scoreboard players operation durationSlot3 shield = roboDuration abilityStats
execute if score abilitynumber abilities matches 5 run scoreboard players operation shield slot3 += robo abilityStats
execute if score abilitynumber abilities matches 5 if score slot2isatk booleans matches 1 run scoreboard players operation shield slot3 += roboLeader abilityStats
#Kirin
execute if score abilitynumber abilities matches 8 if score buffDurationSlot3 atkmodifiers < kirinDuration abilityStats run scoreboard players operation buffDurationSlot3 atkmodifiers = kirinDuration abilityStats
execute if score abilitynumber abilities matches 8 run scoreboard players operation attackBuffSlot3 atkmodifiers += kirin abilityStats
execute if score abilitynumber abilities matches 8 if score slot2isatk booleans matches 1 if score slot3Bleeding booleaneffects matches 0.. run scoreboard players operation slot3 hp += kirinLeader abilityStats
#Ace
execute if score abilitynumber abilities matches 12 run scoreboard players operation cooldown slot3 = aceSetCooldown abilityStats
execute if score abilitynumber abilities matches 12 run execute if score character# slot6 matches 12 run scoreboard players operation durationSlot3 SpeedDebuffs = aceLeaderDuration abilitystats
execute if score abilitynumber abilities matches 12 run execute if score character# slot6 matches 12 run scoreboard players operation speedDebuffSlot3 SpeedDebuffs = aceLeader abilityStats
execute if score abilitynumber abilities matches 12 run execute if score character# slot6 matches 12 run scoreboard players operation speed slot3 -= aceLeader abilityStats
#Gabriel
execute if score abilitynumber abilities matches 22 run scoreboard players operation abilityDmg saves = gabriel abilitystats
execute if score abilitynumber abilities matches 22 if score slot5isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot5 atkmodifiers
execute if score abilitynumber abilities matches 22 if score slot6isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot6 atkmodifiers
execute if score abilitynumber abilities matches 22 if score slot7isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot7 atkmodifiers
execute if score abilitynumber abilities matches 22 if score slot5 hp matches ..0 run scoreboard players operation abilityDmg saves += gabrielDeath abilityStats
execute if score abilitynumber abilities matches 22 if score slot6 hp matches ..0 run scoreboard players operation abilityDmg saves += gabrielDeath abilityStats
execute if score abilitynumber abilities matches 22 if score slot7 hp matches ..0 run scoreboard players operation abilityDmg saves += gabrielDeath abilityStats
execute if score abilitynumber abilities matches 22 run scoreboard players operation abilityDmg saves += slot3 marks
execute if score abilitynumber abilities matches 22 run scoreboard players operation abilityDmg saves /= atkmultiplier slot3
execute if score abilitynumber abilities matches 22 run execute if score ward slot3 matches 0 run scoreboard players operation shield slot3 -= abilityDmg saves
execute if score abilitynumber abilities matches 22 run execute if score ward slot3 matches 0 if score shield slot3 matches ..0 run scoreboard players operation slot3 hp += shield slot3
execute if score abilitynumber abilities matches 22 if score slot6isatk booleans matches 1 if score ward slot3 matches 0 run scoreboard players operation abilityDmg saves /= gabrielLeader abilityStats
execute if score abilitynumber abilities matches 22 if score slot6isatk booleans matches 1 if score ward slot3 matches 0 run scoreboard players operation slot6 hp += abilityDmg saves
execute if score abilitynumber abilities matches 22 run execute if score ward slot3 matches 1.. run function ch:wardslot3
#Gatsby
execute if score abilitynumber abilities matches 23 if score ward slot3 matches 0 run scoreboard players operation slot3 stun = gatsbyDuration abilityStats
execute if score abilitynumber abilities matches 23 if score ward slot3 matches 0 run scoreboard players operation invincibleSlot3 booleaneffects = gatsbyDuration abilityStats
execute if score abilitynumber abilities matches 23 if score ward slot3 matches 0 run scoreboard players operation savehp2 saves = slot3 hp 
#execute if score abilitynumber abilities matches 23 if score ward slot3 matches 0 run scoreboard players operation slot3EatenDuration abilities = gatsbyDuration abilityStats
#Boomer
execute if score abilitynumber abilities matches 25 run scoreboard players operation abilityDmg saves = boomer abilitystats
execute if score abilitynumber abilities matches 25 if score slot5isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot5 atkmodifiers
execute if score abilitynumber abilities matches 25 if score slot6isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot6 atkmodifiers
execute if score abilitynumber abilities matches 25 if score slot7isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot7 atkmodifiers
execute if score abilitynumber abilities matches 25 run scoreboard players operation abilityDmg saves += slot3 marks
execute if score abilitynumber abilities matches 25 run scoreboard players operation abilityDmg saves /= atkmultiplier slot3
execute if score abilitynumber abilities matches 25 run execute if score ward slot3 matches 0 run scoreboard players operation shield slot3 -= abilityDmg saves
execute if score abilitynumber abilities matches 25 run execute if score ward slot3 matches 0 if score shield slot3 matches ..0 run scoreboard players operation slot3 hp += shield slot3
execute if score abilitynumber abilities matches 25 run execute if score ward slot3 matches 1.. run function ch:wardslot3
execute if score abilitynumber abilities matches 25 if score slot6isatk booleans matches 1 run scoreboard players operation abilityDmg saves -= slot3 marks
execute if score abilitynumber abilities matches 25 if score slot6isatk booleans matches 1 run scoreboard players operation abilityDmg saves *= atkmultiplier slot3
execute if score abilitynumber abilities matches 25 if score slot6isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot3 marks
execute if score abilitynumber abilities matches 25 if score slot6isatk booleans matches 1 run scoreboard players operation abilityDmg saves /= atkmultiplier slot3
execute if score abilitynumber abilities matches 25 if score slot6isatk booleans matches 1 run scoreboard players operation abilityDmg saves /= boomerleader abilities
execute if score abilitynumber abilities matches 25 if score slot6isatk booleans matches 1 run execute if score ward slot3 matches 0 run scoreboard players operation shield slot3 -= abilityDmg saves
execute if score abilitynumber abilities matches 25 if score slot6isatk booleans matches 1 run execute if score ward slot3 matches 0 if score shield slot3 matches ..0 run scoreboard players operation slot3 hp += shield slot3
execute if score abilitynumber abilities matches 25 if score slot6isatk booleans matches 1 run execute if score ward slot3 matches 1.. run function ch:wardslot3
execute if score abilitynumber abilities matches 25 if score slot6isatk booleans matches 1 run scoreboard players operation abilityDmg saves -= slot3 marks
execute if score abilitynumber abilities matches 25 if score slot6isatk booleans matches 1 run scoreboard players operation abilityDmg saves *= atkmultiplier slot3
execute if score abilitynumber abilities matches 25 if score slot6isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot3 marks
execute if score abilitynumber abilities matches 25 if score slot6isatk booleans matches 1 run scoreboard players operation abilityDmg saves /= atkmultiplier slot3
execute if score abilitynumber abilities matches 25 if score slot6isatk booleans matches 1 run scoreboard players operation abilityDmg saves /= boomerleader abilities
execute if score abilitynumber abilities matches 25 if score slot6isatk booleans matches 1 run execute if score ward slot3 matches 0 run scoreboard players operation shield slot3 -= abilityDmg saves
execute if score abilitynumber abilities matches 25 if score slot6isatk booleans matches 1 run execute if score ward slot3 matches 0 if score shield slot3 matches ..0 run scoreboard players operation slot3 hp += shield slot3
execute if score abilitynumber abilities matches 25 if score slot6isatk booleans matches 1 run execute if score ward slot3 matches 1.. run function ch:wardslot3

#Ripper
execute if score abilitynumber abilities matches 29 if score slot3 hp matches ..500 if score ward slot3 matches 0 if score invincibleSlot3 booleaneffects matches 0 run scoreboard players set slot3 hp 0
execute if score abilitynumber abilities matches 29 if score slot3 hp matches ..500 if score invincibleSlot3 booleaneffects matches 0 if score ward slot3 matches 1.. run function ch:wardslot3

#Domino
execute if score abilitynumber abilities matches 30 run scoreboard players operation abilityDmg saves = domino abilitystats
execute if score abilitynumber abilities matches 30 if score slot5isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot5 atkmodifiers
execute if score abilitynumber abilities matches 30 if score slot6isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot6 atkmodifiers
execute if score abilitynumber abilities matches 30 if score slot7isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot7 atkmodifiers
execute if score abilitynumber abilities matches 30 run scoreboard players operation abilityDmg saves += slot3 marks
execute if score abilitynumber abilities matches 30 run scoreboard players operation abilityDmg saves /= atkmultiplier slot3
execute if score abilitynumber abilities matches 30 run execute if score ward slot3 matches 0 run scoreboard players operation shield slot3 -= abilityDmg saves
execute if score abilitynumber abilities matches 30 run execute if score ward slot3 matches 0 if score shield slot3 matches ..0 run scoreboard players operation slot3 hp += shield slot3
execute if score abilitynumber abilities matches 30 run scoreboard players operation durationSlot3 poison = dominoDuration abilityStats 
execute if score abilitynumber abilities matches 30 run execute if score ward slot3 matches 1.. run function ch:wardslot3
#Doc Basic Attack
execute if score abilitynumber abilities matches -1 run scoreboard players operation slot3Disease disease += doc heroattack

#This goes at the bottom
execute if score shield slot1 matches ..0 run scoreboard players set shield slot1 0
execute if score shield slot2 matches ..0 run scoreboard players set shield slot2 0
execute if score shield slot3 matches ..0 run scoreboard players set shield slot3 0
execute if score shield slot4 matches ..0 run scoreboard players set shield slot4 0
clear @p[tag=p2]
effect clear @p[tag=p2]
function ch:turnend
#Make sure to add burn to your abilities
