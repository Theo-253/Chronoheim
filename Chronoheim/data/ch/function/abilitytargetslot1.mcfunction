effect clear @a[tag=game1] strength

#Deuce ability
execute if score abilitynumber abilities matches 3 run scoreboard players operation abilityDmg saves = deuce heroattack
execute if score abilitynumber abilities matches 3 if score slot5isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot5 atkmodifiers
execute if score abilitynumber abilities matches 3 if score slot6isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot6 atkmodifiers
execute if score abilitynumber abilities matches 3 if score slot7isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot7 atkmodifiers
execute if score abilitynumber abilities matches 3 run scoreboard players operation abilityDmg saves += slot1 marks
execute if score abilitynumber abilities matches 3 if score slot5isatk booleans matches 1 run scoreboard players operation abilityDmg saves *= deuceMultLeader abilityStats
execute if score abilitynumber abilities matches 3 run scoreboard players operation abilityDmg saves *= deuceMult abilityStats
execute if score abilitynumber abilities matches 3 run scoreboard players operation abilityDmg saves /= atkmultiplier slot1
execute if score abilitynumber abilities matches 3 run execute if score ward slot1 matches 0 run scoreboard players operation shield slot1 -= abilityDmg saves
execute if score abilitynumber abilities matches 3 run execute if score ward slot1 matches 0 if score shield slot1 matches ..0 run scoreboard players operation slot1 hp += shield slot1
execute if score abilitynumber abilities matches 3 run execute if score ward slot1 matches 1.. run function ch:wardslot1

#Garabaldi Ability
execute if score ability# abilities matches 24 if score slot1 hp matches 1.. if score slot1bleeding booleaneffects matches 0 run scoreboard players operation hp slot1 += garabaldiHeal abilityStats
execute if score ability# abilities matches 24 if score slot1 hp matches 1.. run scoreboard players set ward slot1 2

#Juniper Ability
execute if score abilitynumber abilities matches 24 run scoreboard players operation abilityDmg saves = juniper abilityStats
execute if score abilitynumber abilities matches 24 if score slot5isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot5 atkmodifiers
execute if score abilitynumber abilities matches 24 if score slot6isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot6 atkmodifiers
execute if score abilitynumber abilities matches 24 if score slot7isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot7 atkmodifiers
execute if score abilitynumber abilities matches 24 run scoreboard players operation abilityDmg saves += slot1 marks
execute if score abilitynumber abilities matches 24 run scoreboard players operation abilityDmg saves /= atkmultiplier slot1
execute if score abilitynumber abilities matches 24 run execute if score ward slot1 matches 0 run scoreboard players operation shield slot1 -= abilityDmg saves
execute if score abilitynumber abilities matches 24 run execute if score ward slot1 matches 0 run scoreboard players operation slot1 stun = juniperStun abilityStats
execute if score abilitynumber abilities matches 24 run execute if score ward slot1 matches 0 if score shield slot1 matches ..0 run scoreboard players operation slot1 hp += shield slot1
execute if score abilitynumber abilities matches 24 run execute if score ward slot1 matches 1.. run function ch:wardslot1

#Juniper Basic
execute if score abilitynumber abilities matches -2 run execute if score slot1bleeding booleaneffects matches 0 run scoreboard players operation slot1 hp += juniper heroattack
execute if score character# slot2 matches 27 run function ch:cleanseslot1

#K.O.N.G ability
execute if score abilitynumber abilities matches 7 run scoreboard players operation abilityDmg saves = kong abilityStats
execute if score abilitynumber abilities matches 7 if score slot5isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot5 atkmodifiers
execute if score abilitynumber abilities matches 7 if score slot6isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot6 atkmodifiers
execute if score abilitynumber abilities matches 7 if score slot7isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot7 atkmodifiers
execute if score abilitynumber abilities matches 7 run scoreboard players operation abilityDmg saves += slot1 marks
execute if score abilitynumber abilities matches 7 run scoreboard players operation abilityDmg saves /= atkmultiplier slot1
execute if score abilitynumber abilities matches 7 run execute if score ward slot1 matches 0 run scoreboard players operation shield slot1 -= abilityDmg saves
execute if score abilitynumber abilities matches 7 run execute if score ward slot1 matches 0 if score kongSpDebuffDuration abilityStats > durationslot1 speedDebuffs run scoreboard players operation durationSlot1 speedDebuffs = kongSpDebuffDuration abilityStats
execute if score abilitynumber abilities matches 7 run execute if score ward slot1 matches 0 if score kongDmgDebuffDuration abilityStats > debuffDurationSlot1 speedDebuffs run scoreboard players operation debuffDurationSlot1 atkmodifiers = kongDmgDebuffDuration abilityStats
execute if score abilitynumber abilities matches 7 run execute if score ward slot1 matches 0 run scoreboard players operation durationSlot1 speedDebuffs += kongSpDebuffDuration abilityStats
execute if score abilitynumber abilities matches 7 run execute if score ward slot1 matches 0 run scoreboard players operation debuffDurationSlot1 atkmodifiers += kongDmgDebuffDuration abilityStats
execute if score abilitynumber abilities matches 7 run execute if score ward slot1 matches 0 run execute if score slot6isatk booleans matches 1 run scoreboard players operation attackDebuffSlot1 atkmodifiers += kongLeaderDmgDebuff abilityStats
execute if score abilitynumber abilities matches 7 run execute if score ward slot1 matches 0 run execute if score slot6isatk booleans matches 1 run scoreboard players operation speedDebuffSlot1 speedDebuffs += kongLeaderSpDebuff abilityStats
execute if score abilitynumber abilities matches 7 run execute if score ward slot1 matches 0 run execute if score slot6isatk booleans matches 1 run scoreboard players operation speed slot1 -= kongLeaderSpDebuff abilityStats
execute if score abilitynumber abilities matches 7 run execute if score ward slot1 matches 0 run scoreboard players operation speed slot1 -= kongSpDebuff abilityStats
execute if score abilitynumber abilities matches 7 run execute if score ward slot1 matches 0 if score shield slot1 matches ..0 run scoreboard players operation slot1 hp += shield slot1
execute if score abilitynumber abilities matches 7 run execute if score ward slot1 matches 1.. run function ch:wardslot1

#This goes at the bottom
execute if score shield slot1 matches ..0 run scoreboard players set shield slot1 0
function ch:turnend
#Make sure to add burn to your abilities
