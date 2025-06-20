effect clear @a[tag=game1] strength
execute if score abilitynumber abilitynumber matches 1 run say yo 

effect clear @a[tag=game1] strength
execute if score abilitynumber abilitynumber matches 1 run say yo 


effect clear @a[tag=game1] strength

#Deuce ability
execute if score abilitynumber abilities matches 3 run scoreboard players operation abilityDmg saves = deuce heroattack
execute if score abilitynumber abilities matches 3 if score slot1isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot1 atkmodifiers
execute if score abilitynumber abilities matches 3 if score slot2isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot2 atkmodifiers
execute if score abilitynumber abilities matches 3 if score slot3isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot3 atkmodifiers
execute if score abilitynumber abilities matches 3 run scoreboard players operation abilityDmg saves += marks slot5
execute if score abilitynumber abilities matches 3 if score slot1isatk booleans matches 1 run scoreboard players operation abilityDmg saves *= deuceMultLeader abilityStats
execute if score abilitynumber abilities matches 3 run scoreboard players operation abilityDmg saves *= deuceMult abilityStats
execute if score abilitynumber abilities matches 3 run scoreboard players operation abilityDmg saves /= atkmultiplier slot5
execute if score abilitynumber abilities matches 3 run execute if score ward slot5 matches 0 run scoreboard players operation shield slot5 -= abilityDmg saves
execute if score abilitynumber abilities matches 3 run execute if score ward slot5 matches 0 if score shield slot5 matches ..0 run scoreboard players operation slot5 hp += shield slot5
execute if score abilitynumber abilities matches 3 run execute if score ward slot5 matches 1.. run function ch:wardslot5

#Garabaldi Ability
execute if score ability# abilities matches 24 if score slot5 hp matches 1.. if score slot5bleeding booleaneffects matches 0 run scoreboard players operation hp slot5 += garabaldiHeal abilityStats
execute if score ability# abilities matches 24 if score slot5 hp matches 1.. run scoreboard players set ward slot5 2

#Juniper Ability
execute if score abilitynumber abilities matches 24 run scoreboard players operation abilityDmg saves = juniper abilityStats
execute if score abilitynumber abilities matches 24 if score slot1isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot1 atkmodifiers
execute if score abilitynumber abilities matches 24 if score slot2isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot2 atkmodifiers
execute if score abilitynumber abilities matches 24 if score slot3isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot3 atkmodifiers
execute if score abilitynumber abilities matches 24 run scoreboard players operation abilityDmg saves += marks slot5
execute if score abilitynumber abilities matches 24 run scoreboard players operation abilityDmg saves /= atkmultiplier slot5
execute if score abilitynumber abilities matches 24 run execute if score ward slot5 matches 0 run scoreboard players operation shield slot5 -= abilityDmg saves
execute if score abilitynumber abilities matches 24 run execute if score ward slot5 matches 0 run scoreboard players operation slot5 stun = juniperStun abilityStats
execute if score abilitynumber abilities matches 24 run execute if score ward slot5 matches 0 if score shield slot5 matches ..0 run scoreboard players operation slot5 hp += shield slot5
execute if score abilitynumber abilities matches 24 run execute if score ward slot5 matches 1.. run function ch:wardslot5

#Juniper Basic
execute if score abilitynumber abilities matches -2 run execute if score slot5bleeding booleaneffects matches 0 run scoreboard players operation slot5 hp += juniper heroattack
execute if score character# slot6 matches 27 run function ch:cleanseslot5

#K.O.N.G ability
execute if score abilitynumber abilities matches 7 run scoreboard players operation abilityDmg saves = kong abilityStats
execute if score abilitynumber abilities matches 7 if score slot1isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot1 atkmodifiers
execute if score abilitynumber abilities matches 7 if score slot2isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot2 atkmodifiers
execute if score abilitynumber abilities matches 7 if score slot3isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot3 atkmodifiers
execute if score abilitynumber abilities matches 7 run scoreboard players operation abilityDmg saves += marks slot5
execute if score abilitynumber abilities matches 7 run scoreboard players operation abilityDmg saves /= atkmultiplier slot5
execute if score abilitynumber abilities matches 7 run execute if score ward slot5 matches 0 run scoreboard players operation shield slot5 -= abilityDmg saves
execute if score abilitynumber abilities matches 7 run execute if score ward slot5 matches 0 if score kongSpDebuffDuration abilityStats > durationslot5 speedDebuffs run scoreboard players operation durationSlot5 speedDebuffs = kongSpDebuffDuration abilityStats
execute if score abilitynumber abilities matches 7 run execute if score ward slot5 matches 0 if score kongDmgDebuffDuration abilityStats > debuffDurationSlot5 speedDebuffs run scoreboard players operation debuffDurationSlot5 atkmodifiers = kongDmgDebuffDuration abilityStats
execute if score abilitynumber abilities matches 7 run execute if score ward slot5 matches 0 run scoreboard players operation durationSlot5 speedDebuffs += kongSpDebuffDuration abilityStats
execute if score abilitynumber abilities matches 7 run execute if score ward slot5 matches 0 run scoreboard players operation debuffDurationSlot5 atkmodifiers += kongDmgDebuffDuration abilityStats
execute if score abilitynumber abilities matches 7 run execute if score ward slot5 matches 0 run execute if score slot2isatk booleans matches 1 run scoreboard players operation attackDebuffSlot5 atkmodifiers += kongLeaderDmgDebuff abilityStats
execute if score abilitynumber abilities matches 7 run execute if score ward slot5 matches 0 run execute if score slot2isatk booleans matches 1 run scoreboard players operation speedDebuffSlot5 speedDebuffs += kongLeaderSpDebuff abilityStats
execute if score abilitynumber abilities matches 7 run execute if score ward slot5 matches 0 run execute if score slot2isatk booleans matches 1 run scoreboard players operation speed slot5 -= kongLeaderSpDebuff abilityStats
execute if score abilitynumber abilities matches 7 run execute if score ward slot5 matches 0 run scoreboard players operation speed slot5 -= kongSpDebuff abilityStats
execute if score abilitynumber abilities matches 7 run execute if score ward slot5 matches 0 if score shield slot5 matches ..0 run scoreboard players operation slot5 hp += shield slot5
execute if score abilitynumber abilities matches 7 run execute if score ward slot5 matches 1.. run function ch:wardslot5

#Robyn Ability
execute if score abilitynumber abilities matches 9 if score ward slot5 matches 0 run scoreboard players operation marks slot5 = robyn abilityStats
execute if score abilitynumber abilities matches 9 if score ward slot5 matches 1 run function ch:wardslot5

#Robo
execute if score abilitynumber abilities matches 5 if score durationSlot5 shield < roboDuration abilityStats run scoreboard players operation durationSlot5 shield = roboDuration abilityStats
execute if score abilitynumber abilities matches 5 run scoreboard players operation shield slot5 += robo abilityStats
execute if score abilitynumber abilities matches 5 if score slot2isatk booleans matches 1 run scoreboard players operation shield slot5 += roboLeader abilityStats
#Kirin
execute if score abilitynumber abilities matches 8 if score buffDurationSlot5 atkmodifiers < kirinDuration abilityStats run scoreboard players operation buffDurationSlot5 atkmodifiers = kirinDuration abilityStats
execute if score abilitynumber abilities matches 8 run scoreboard players operation attackBuffSlot5 atkmodifiers += kirin abilityStats
execute if score abilitynumber abilities matches 8 if score slot2isatk booleans matches 1 if score slot5Bleeding booleaneffects matches 0.. run scoreboard players operation slot5 hp += kirinLeader abilityStats
#Ace
execute if score abilitynumber abilities matches 12 run scoreboard players operation cooldown slot5 = aceSetCooldown abilityStats
execute if score abilitynumber abilities matches 12 run execute if score character# slot2 matches 12 run scoreboard players operation durationSlot5 SpeedDebuffs = aceLeaderDuration abilitystats
execute if score abilitynumber abilities matches 12 run execute if score character# slot2 matches 12 run scoreboard players operation speedDebuffSlot5 SpeedDebuffs = aceLeader abilityStats
execute if score abilitynumber abilities matches 12 run execute if score character# slot2 matches 12 run scoreboard players operation speed slot5 -= aceLeader abilityStats
#Gabriel
execute if score abilitynumber abilities matches 22 run scoreboard players operation abilityDmg saves = gabriel abilitystats
execute if score abilitynumber abilities matches 22 if score slot1isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot1 atkmodifiers
execute if score abilitynumber abilities matches 22 if score slot2isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot2 atkmodifiers
execute if score abilitynumber abilities matches 22 if score slot3isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot3 atkmodifiers
execute if score abilitynumber abilities matches 22 if score slot1 hp matches ..0 run scoreboard players operation abilityDmg saves += gabrielDeath abilityStats
execute if score abilitynumber abilities matches 22 if score slot2 hp matches ..0 run scoreboard players operation abilityDmg saves += gabrielDeath abilityStats
execute if score abilitynumber abilities matches 22 if score slot3 hp matches ..0 run scoreboard players operation abilityDmg saves += gabrielDeath abilityStats
execute if score abilitynumber abilities matches 22 run scoreboard players operation abilityDmg saves += slot5 marks
execute if score abilitynumber abilities matches 22 run scoreboard players operation abilityDmg saves /= atkmultiplier slot5
execute if score abilitynumber abilities matches 22 run execute if score ward slot5 matches 0 run scoreboard players operation shield slot5 -= abilityDmg saves
execute if score abilitynumber abilities matches 22 run execute if score ward slot5 matches 0 if score shield slot5 matches ..0 run scoreboard players operation slot5 hp += shield slot5
execute if score abilitynumber abilities matches 22 if score slot2isatk booleans matches 1 if score ward slot5 matches 0 run scoreboard players operation abilityDmg saves /= gabrielLeader abilityStats
execute if score abilitynumber abilities matches 22 if score slot2isatk booleans matches 1 if score ward slot5 matches 0 run scoreboard players operation slot2 hp += abilityDmg saves
execute if score abilitynumber abilities matches 22 run execute if score ward slot5 matches 1.. run function ch:wardslot5
#Gatsby
execute if score abilitynumber abilities matches 23 if score ward slot5 matches 0 run scoreboard players operation slot5 stun = gatsbyDuration abilityStats
execute if score abilitynumber abilities matches 23 if score ward slot5 matches 0 run scoreboard players operation invincibleSlot5 booleaneffects = gatsbyDuration abilityStats
execute if score abilitynumber abilities matches 23 if score ward slot5 matches 0 run scoreboard players operation savehp2 saves = slot5 hp 
#execute if score abilitynumber abilities matches 23 if score ward slot5 matches 0 run scoreboard players operation slot5EatenDuration abilities = gatsbyDuration abilityStats
#Boomer
execute if score abilitynumber abilities matches 25 run scoreboard players operation abilityDmg saves = boomer abilitystats
execute if score abilitynumber abilities matches 25 if score slot1isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot1 atkmodifiers
execute if score abilitynumber abilities matches 25 if score slot2isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot2 atkmodifiers
execute if score abilitynumber abilities matches 25 if score slot3isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot3 atkmodifiers
execute if score abilitynumber abilities matches 25 run scoreboard players operation abilityDmg saves += slot5 marks
execute if score abilitynumber abilities matches 25 run scoreboard players operation abilityDmg saves /= atkmultiplier slot5
execute if score abilitynumber abilities matches 25 run execute if score ward slot5 matches 0 run scoreboard players operation shield slot5 -= abilityDmg saves
execute if score abilitynumber abilities matches 25 run execute if score ward slot5 matches 0 if score shield slot5 matches ..0 run scoreboard players operation slot5 hp += shield slot5
execute if score abilitynumber abilities matches 25 run execute if score ward slot5 matches 1.. run function ch:wardslot5
execute if score abilitynumber abilities matches 25 if score slot2isatk booleans matches 1 run scoreboard players operation abilityDmg saves -= slot5 marks
execute if score abilitynumber abilities matches 25 if score slot2isatk booleans matches 1 run scoreboard players operation abilityDmg saves *= atkmultiplier slot5
execute if score abilitynumber abilities matches 25 if score slot2isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot6 marks
execute if score abilitynumber abilities matches 25 if score slot2isatk booleans matches 1 run scoreboard players operation abilityDmg saves /= atkmultiplier slot6
execute if score abilitynumber abilities matches 25 if score slot2isatk booleans matches 1 run scoreboard players operation abilityDmg saves /= boomerleader abilities
execute if score abilitynumber abilities matches 25 if score slot2isatk booleans matches 1 run execute if score ward slot6 matches 0 run scoreboard players operation shield slot6 -= abilityDmg saves
execute if score abilitynumber abilities matches 25 if score slot2isatk booleans matches 1 run execute if score ward slot6 matches 0 if score shield slot6 matches ..0 run scoreboard players operation slot6 hp += shield slot6
execute if score abilitynumber abilities matches 25 if score slot2isatk booleans matches 1 run execute if score ward slot6 matches 1.. run function ch:wardslot6


#Ripper
execute if score abilitynumber abilities matches 29 if score slot5 hp matches ..500 if score ward slot5 matches 0 if score invincibleSlot5 booleaneffects matches 0 run scoreboard players set slot5 hp 0
execute if score abilitynumber abilities matches 29 if score slot5 hp matches ..500 if score invincibleSlot5 booleaneffects matches 0 if score ward slot5 matches 1.. run function ch:wardslot5

#Domino
execute if score abilitynumber abilities matches 30 run scoreboard players operation abilityDmg saves = domino abilitystats
execute if score abilitynumber abilities matches 30 if score slot1isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot1 atkmodifiers
execute if score abilitynumber abilities matches 30 if score slot2isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot2 atkmodifiers
execute if score abilitynumber abilities matches 30 if score slot3isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot3 atkmodifiers
execute if score abilitynumber abilities matches 30 run scoreboard players operation abilityDmg saves += slot5 marks
execute if score abilitynumber abilities matches 30 run scoreboard players operation abilityDmg saves /= atkmultiplier slot5
execute if score abilitynumber abilities matches 30 run execute if score ward slot5 matches 0 run scoreboard players operation shield slot5 -= abilityDmg saves
execute if score abilitynumber abilities matches 30 run execute if score ward slot5 matches 0 if score shield slot5 matches ..0 run scoreboard players operation slot5 hp += shield slot5
execute if score abilitynumber abilities matches 30 run scoreboard players operation durationSlot5 poison = dominoDuration abilityStats 
execute if score abilitynumber abilities matches 30 run execute if score ward slot5 matches 1.. run function ch:wardslot5
#Doc Basic Attack
execute if score abilitynumber abilities matches -1 run scoreboard players operation slot5Disease disease += doc heroattack




#This goes at the bottom
execute if score shield slot5 matches ..0 run scoreboard players set shield slot5 0
function ch:turnend
#Make sure to add burn to your abilities
