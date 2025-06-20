effect clear @a[tag=game1] strength
execute if score abilitynumber abilitynumber matches 1 run say yo 


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
execute if score abilitynumber abilities matches 3 run scoreboard players operation abilityDmg saves += marks slot7
execute if score abilitynumber abilities matches 3 if score slot1isatk booleans matches 1 run scoreboard players operation abilityDmg saves *= deuceMultLeader abilityStats
execute if score abilitynumber abilities matches 3 run scoreboard players operation abilityDmg saves *= deuceMult abilityStats
execute if score abilitynumber abilities matches 3 run scoreboard players operation abilityDmg saves /= atkmultiplier slot7
execute if score abilitynumber abilities matches 3 run execute if score ward slot7 matches 0 run scoreboard players operation shield slot7 -= abilityDmg saves
execute if score abilitynumber abilities matches 3 run execute if score ward slot7 matches 0 if score shield slot7 matches ..0 run scoreboard players operation slot7 hp += shield slot7
execute if score abilitynumber abilities matches 3 run execute if score ward slot7 matches 1.. run function ch:wardslot7

#Garabaldi Ability
execute if score ability# abilities matches 24 if score slot7 hp matches 1.. if score slot7bleeding booleaneffects matches 0 run scoreboard players operation hp slot7 += garabaldiHeal abilityStats
execute if score ability# abilities matches 24 if score slot7 hp matches 1.. run scoreboard players set ward slot7 2

#Juniper Ability
execute if score abilitynumber abilities matches 24 run scoreboard players operation abilityDmg saves = juniper abilityStats
execute if score abilitynumber abilities matches 24 if score slot1isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot1 atkmodifiers
execute if score abilitynumber abilities matches 24 if score slot2isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot2 atkmodifiers
execute if score abilitynumber abilities matches 24 if score slot3isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot3 atkmodifiers
execute if score abilitynumber abilities matches 24 run scoreboard players operation abilityDmg saves += marks slot7
execute if score abilitynumber abilities matches 24 run scoreboard players operation abilityDmg saves /= atkmultiplier slot7
execute if score abilitynumber abilities matches 24 run execute if score ward slot7 matches 0 run scoreboard players operation shield slot7 -= abilityDmg saves
execute if score abilitynumber abilities matches 24 run execute if score ward slot7 matches 0 run scoreboard players operation slot7 stun = juniperStun abilityStats
execute if score abilitynumber abilities matches 24 run execute if score ward slot7 matches 0 if score shield slot7 matches ..0 run scoreboard players operation slot7 hp += shield slot7
execute if score abilitynumber abilities matches 24 run execute if score ward slot7 matches 1.. run function ch:wardslot7

#Juniper Basic
execute if score abilitynumber abilities matches -2 run execute if score slot7bleeding booleaneffects matches 0 run scoreboard players operation slot7 hp += juniper heroattack
execute if score character# slot6 matches 27 run function ch:cleanseslot7

#K.O.N.G ability
execute if score abilitynumber abilities matches 7 run scoreboard players operation abilityDmg saves = kong abilityStats
execute if score abilitynumber abilities matches 7 if score slot1isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot1 atkmodifiers
execute if score abilitynumber abilities matches 7 if score slot2isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot2 atkmodifiers
execute if score abilitynumber abilities matches 7 if score slot3isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot3 atkmodifiers
execute if score abilitynumber abilities matches 7 run scoreboard players operation abilityDmg saves += marks slot7
execute if score abilitynumber abilities matches 7 run scoreboard players operation abilityDmg saves /= atkmultiplier slot7
execute if score abilitynumber abilities matches 7 run execute if score ward slot7 matches 0 run scoreboard players operation shield slot7 -= abilityDmg saves
execute if score abilitynumber abilities matches 7 run execute if score ward slot7 matches 0 if score kongSpDebuffDuration abilityStats > durationslot7 speedDebuffs run scoreboard players operation durationSlot7 speedDebuffs = kongSpDebuffDuration abilityStats
execute if score abilitynumber abilities matches 7 run execute if score ward slot7 matches 0 if score kongDmgDebuffDuration abilityStats > debuffDurationSlot7 speedDebuffs run scoreboard players operation debuffDurationSlot7 atkmodifiers = kongDmgDebuffDuration abilityStats
execute if score abilitynumber abilities matches 7 run execute if score ward slot7 matches 0 run scoreboard players operation durationSlot7 speedDebuffs += kongSpDebuffDuration abilityStats
execute if score abilitynumber abilities matches 7 run execute if score ward slot7 matches 0 run scoreboard players operation debuffDurationSlot7 atkmodifiers += kongDmgDebuffDuration abilityStats
execute if score abilitynumber abilities matches 7 run execute if score ward slot7 matches 0 run execute if score slot2isatk booleans matches 1 run scoreboard players operation attackDebuffSlot7 atkmodifiers += kongLeaderDmgDebuff abilityStats
execute if score abilitynumber abilities matches 7 run execute if score ward slot7 matches 0 run execute if score slot2isatk booleans matches 1 run scoreboard players operation speedDebuffSlot7 speedDebuffs += kongLeaderSpDebuff abilityStats
execute if score abilitynumber abilities matches 7 run execute if score ward slot7 matches 0 run execute if score slot2isatk booleans matches 1 run scoreboard players operation speed slot7 -= kongLeaderSpDebuff abilityStats
execute if score abilitynumber abilities matches 7 run execute if score ward slot7 matches 0 run scoreboard players operation speed slot7 -= kongSpDebuff abilityStats
execute if score abilitynumber abilities matches 7 run execute if score ward slot7 matches 0 if score shield slot7 matches ..0 run scoreboard players operation slot7 hp += shield slot7
execute if score abilitynumber abilities matches 7 run execute if score ward slot7 matches 1.. run function ch:wardslot7

#Robyn Ability
execute if score abilitynumber abilities matches 9 if score ward slot7 matches 0 run scoreboard players operation marks slot7 = robyn abilityStats
execute if score abilitynumber abilities matches 9 if score ward slot7 matches 1 run function ch:wardslot7

#Robo
execute if score abilitynumber abilities matches 5 if score durationSlot7 shield < roboDuration abilityStats run scoreboard players operation durationSlot7 shield = roboDuration abilityStats
execute if score abilitynumber abilities matches 5 run scoreboard players operation shield slot7 += robo abilityStats
execute if score abilitynumber abilities matches 5 if score slot2isatk booleans matches 1 run scoreboard players operation shield slot7 += roboLeader abilityStats
#Kirin
execute if score abilitynumber abilities matches 8 if score buffDurationSlot7 atkmodifiers < kirinDuration abilityStats run scoreboard players operation buffDurationSlot7 atkmodifiers = kirinDuration abilityStats
execute if score abilitynumber abilities matches 8 run scoreboard players operation attackBuffSlot7 atkmodifiers += kirin abilityStats
execute if score abilitynumber abilities matches 8 if score slot2isatk booleans matches 1 if score slot7Bleeding booleaneffects matches 0.. run scoreboard players operation slot7 hp += kirinLeader abilityStats
#Ace
execute if score abilitynumber abilities matches 12 run scoreboard players operation cooldown slot7 = aceSetCooldown abilityStats
execute if score abilitynumber abilities matches 12 run execute if score character# slot2 matches 12 run scoreboard players operation durationSlot7 SpeedDebuffs = aceLeaderDuration abilitystats
execute if score abilitynumber abilities matches 12 run execute if score character# slot2 matches 12 run scoreboard players operation speedDebuffSlot7 SpeedDebuffs = aceLeader abilityStats
execute if score abilitynumber abilities matches 12 run execute if score character# slot2 matches 12 run scoreboard players operation speed slot7 -= aceLeader abilityStats
#Gabriel
execute if score abilitynumber abilities matches 22 run scoreboard players operation abilityDmg saves = gabriel abilitystats
execute if score abilitynumber abilities matches 22 if score slot1isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot1 atkmodifiers
execute if score abilitynumber abilities matches 22 if score slot2isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot2 atkmodifiers
execute if score abilitynumber abilities matches 22 if score slot3isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot3 atkmodifiers
execute if score abilitynumber abilities matches 22 if score slot1 hp matches ..0 run scoreboard players operation abilityDmg saves += gabrielDeath abilityStats
execute if score abilitynumber abilities matches 22 if score slot2 hp matches ..0 run scoreboard players operation abilityDmg saves += gabrielDeath abilityStats
execute if score abilitynumber abilities matches 22 if score slot3 hp matches ..0 run scoreboard players operation abilityDmg saves += gabrielDeath abilityStats
execute if score abilitynumber abilities matches 22 run scoreboard players operation abilityDmg saves += slot7 marks
execute if score abilitynumber abilities matches 22 run scoreboard players operation abilityDmg saves /= atkmultiplier slot7
execute if score abilitynumber abilities matches 22 run execute if score ward slot7 matches 0 run scoreboard players operation shield slot7 -= abilityDmg saves
execute if score abilitynumber abilities matches 22 run execute if score ward slot7 matches 0 if score shield slot7 matches ..0 run scoreboard players operation slot7 hp += shield slot7
execute if score abilitynumber abilities matches 22 if score slot2isatk booleans matches 1 if score ward slot7 matches 0 run scoreboard players operation abilityDmg saves /= gabrielLeader abilityStats
execute if score abilitynumber abilities matches 22 if score slot2isatk booleans matches 1 if score ward slot7 matches 0 run scoreboard players operation slot2 hp += abilityDmg saves
execute if score abilitynumber abilities matches 22 run execute if score ward slot7 matches 1.. run function ch:wardslot7
#Gatsby
execute if score abilitynumber abilities matches 23 if score ward slot7 matches 0 run scoreboard players operation slot7 stun = gatsbyDuration abilityStats
execute if score abilitynumber abilities matches 23 if score ward slot7 matches 0 run scoreboard players operation invincibleSlot7 booleaneffects = gatsbyDuration abilityStats
execute if score abilitynumber abilities matches 23 if score ward slot7 matches 0 run scoreboard players operation savehp2 saves = slot7 hp 
#execute if score abilitynumber abilities matches 23 if score ward slot7 matches 0 run scoreboard players operation slot7EatenDuration abilities = gatsbyDuration abilityStats
#Boomer
execute if score abilitynumber abilities matches 25 run scoreboard players operation abilityDmg saves = boomer abilitystats
execute if score abilitynumber abilities matches 25 if score slot1isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot1 atkmodifiers
execute if score abilitynumber abilities matches 25 if score slot2isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot2 atkmodifiers
execute if score abilitynumber abilities matches 25 if score slot3isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot3 atkmodifiers
execute if score abilitynumber abilities matches 25 run scoreboard players operation abilityDmg saves += slot7 marks
execute if score abilitynumber abilities matches 25 run scoreboard players operation abilityDmg saves /= atkmultiplier slot7
execute if score abilitynumber abilities matches 25 run execute if score ward slot7 matches 0 run scoreboard players operation shield slot7 -= abilityDmg saves
execute if score abilitynumber abilities matches 25 run execute if score ward slot7 matches 0 if score shield slot7 matches ..0 run scoreboard players operation slot7 hp += shield slot7
execute if score abilitynumber abilities matches 25 run execute if score ward slot7 matches 1.. run function ch:wardslot7
execute if score abilitynumber abilities matches 25 if score slot2isatk booleans matches 1 run scoreboard players operation abilityDmg saves -= slot7 marks
execute if score abilitynumber abilities matches 25 if score slot2isatk booleans matches 1 run scoreboard players operation abilityDmg saves *= atkmultiplier slot7
execute if score abilitynumber abilities matches 25 if score slot2isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot7 marks
execute if score abilitynumber abilities matches 25 if score slot2isatk booleans matches 1 run scoreboard players operation abilityDmg saves /= atkmultiplier slot7
execute if score abilitynumber abilities matches 25 if score slot2isatk booleans matches 1 run scoreboard players operation abilityDmg saves /= boomerleader abilities
execute if score abilitynumber abilities matches 25 if score slot2isatk booleans matches 1 run execute if score ward slot7 matches 0 run scoreboard players operation shield slot7 -= abilityDmg saves
execute if score abilitynumber abilities matches 25 if score slot2isatk booleans matches 1 run execute if score ward slot7 matches 0 if score shield slot7 matches ..0 run scoreboard players operation slot7 hp += shield slot7
execute if score abilitynumber abilities matches 25 if score slot2isatk booleans matches 1 run execute if score ward slot7 matches 1.. run function ch:wardslot7
execute if score abilitynumber abilities matches 25 if score slot2isatk booleans matches 1 run scoreboard players operation abilityDmg saves -= slot7 marks
execute if score abilitynumber abilities matches 25 if score slot2isatk booleans matches 1 run scoreboard players operation abilityDmg saves *= atkmultiplier slot7
execute if score abilitynumber abilities matches 25 if score slot2isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot7 marks
execute if score abilitynumber abilities matches 25 if score slot2isatk booleans matches 1 run scoreboard players operation abilityDmg saves /= atkmultiplier slot7
execute if score abilitynumber abilities matches 25 if score slot2isatk booleans matches 1 run scoreboard players operation abilityDmg saves /= boomerleader abilities
execute if score abilitynumber abilities matches 25 if score slot2isatk booleans matches 1 run execute if score ward slot7 matches 0 run scoreboard players operation shield slot7 -= abilityDmg saves
execute if score abilitynumber abilities matches 25 if score slot2isatk booleans matches 1 run execute if score ward slot7 matches 0 if score shield slot7 matches ..0 run scoreboard players operation slot7 hp += shield slot7
execute if score abilitynumber abilities matches 25 if score slot2isatk booleans matches 1 run execute if score ward slot7 matches 1.. run function ch:wardslot7

#Ripper
execute if score abilitynumber abilities matches 29 if score slot7 hp matches ..500 if score ward slot7 matches 0 if score invincibleSlot7 booleaneffects matches 0 run scoreboard players set slot7 hp 0
execute if score abilitynumber abilities matches 29 if score slot7 hp matches ..500 if score invincibleSlot7 booleaneffects matches 0 if score ward slot7 matches 1.. run function ch:wardslot7

#Domino
execute if score abilitynumber abilities matches 30 run scoreboard players operation abilityDmg saves = domino abilitystats
execute if score abilitynumber abilities matches 30 if score slot1isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot1 atkmodifiers
execute if score abilitynumber abilities matches 30 if score slot2isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot2 atkmodifiers
execute if score abilitynumber abilities matches 30 if score slot3isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot3 atkmodifiers
execute if score abilitynumber abilities matches 30 run scoreboard players operation abilityDmg saves += slot7 marks
execute if score abilitynumber abilities matches 30 run scoreboard players operation abilityDmg saves /= atkmultiplier slot7
execute if score abilitynumber abilities matches 30 run execute if score ward slot7 matches 0 run scoreboard players operation shield slot7 -= abilityDmg saves
execute if score abilitynumber abilities matches 30 run execute if score ward slot7 matches 0 if score shield slot7 matches ..0 run scoreboard players operation slot7 hp += shield slot7
execute if score abilitynumber abilities matches 30 run scoreboard players operation durationSlot7 poison = dominoDuration abilityStats 
execute if score abilitynumber abilities matches 30 run execute if score ward slot7 matches 1.. run function ch:wardslot7
#Doc Basic Attack
execute if score abilitynumber abilities matches -1 run scoreboard players operation slot7Disease disease += doc heroattack

#This goes at the bottom
execute if score shield slot7 matches ..0 run scoreboard players set shield slot7 0
function ch:turnend
#Make sure to add burn to your abilities
