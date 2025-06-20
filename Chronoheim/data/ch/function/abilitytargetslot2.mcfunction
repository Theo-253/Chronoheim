effect clear @a[tag=game1] strength
#Ace
execute if score abilitynumber abilities matches 12 run scoreboard players operation cooldown slot2 = aceSetCooldown abilityStats
execute if score abilitynumber abilities matches 12 run execute if score character# slot6 matches 12 run scoreboard players operation durationSlot2 SpeedDebuffs = aceLeaderDuration abilitystats
execute if score abilitynumber abilities matches 12 run execute if score character# slot6 matches 12 run scoreboard players operation speedDebuffSlot2 SpeedDebuffs = aceLeader abilityStats
execute if score abilitynumber abilities matches 12 run execute if score character# slot6 matches 12 run scoreboard players operation speed slot2 -= aceLeader abilityStats
#Gabriel
execute if score abilitynumber abilities matches 22 run scoreboard players operation abilityDmg saves = gabriel abilitystats
execute if score abilitynumber abilities matches 22 if score slot5isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot5 atkmodifiers
execute if score abilitynumber abilities matches 22 if score slot6isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot6 atkmodifiers
execute if score abilitynumber abilities matches 22 if score slot7isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot7 atkmodifiers
execute if score abilitynumber abilities matches 22 if score slot5 hp matches ..0 run scoreboard players operation abilityDmg saves += gabrielDeath abilityStats
execute if score abilitynumber abilities matches 22 if score slot6 hp matches ..0 run scoreboard players operation abilityDmg saves += gabrielDeath abilityStats
execute if score abilitynumber abilities matches 22 if score slot7 hp matches ..0 run scoreboard players operation abilityDmg saves += gabrielDeath abilityStats
execute if score abilitynumber abilities matches 22 run scoreboard players operation abilityDmg saves += slot2 marks
execute if score abilitynumber abilities matches 22 run scoreboard players operation abilityDmg saves /= atkmultiplier slot2
execute if score abilitynumber abilities matches 22 run execute if score ward slot2 matches 0 run scoreboard players operation shield slot2 -= abilityDmg saves
execute if score abilitynumber abilities matches 22 run execute if score ward slot2 matches 0 if score shield slot2 matches ..0 run scoreboard players operation slot2 hp += shield slot2
execute if score abilitynumber abilities matches 22 if score slot6isatk booleans matches 1 if score ward slot2 matches 0 run scoreboard players operation abilityDmg saves /= gabrielLeader abilityStats
execute if score abilitynumber abilities matches 22 if score slot6isatk booleans matches 1 if score ward slot2 matches 0 run scoreboard players operation slot6 hp += abilityDmg saves
execute if score abilitynumber abilities matches 22 run execute if score ward slot2 matches 1.. run function ch:wardslot2
#Gatsby
execute if score abilitynumber abilities matches 23 if score ward slot2 matches 0 run scoreboard players operation slot2 stun = gatsbyDuration abilityStats
execute if score abilitynumber abilities matches 23 if score ward slot2 matches 0 run scoreboard players operation invincibleSlot2 booleaneffects = gatsbyDuration abilityStats
execute if score abilitynumber abilities matches 23 if score ward slot2 matches 0 run scoreboard players operation savehp2 saves = slot2 hp 
#execute if score abilitynumber abilities matches 23 if score ward slot2 matches 0 run scoreboard players operation slot2EatenDuration abilities = gatsbyDuration abilityStats
#Boomer
execute if score abilitynumber abilities matches 25 run scoreboard players operation abilityDmg saves = boomer abilitystats
execute if score abilitynumber abilities matches 25 if score slot5isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot5 atkmodifiers
execute if score abilitynumber abilities matches 25 if score slot6isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot6 atkmodifiers
execute if score abilitynumber abilities matches 25 if score slot7isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot7 atkmodifiers
execute if score abilitynumber abilities matches 25 run scoreboard players operation abilityDmg saves += slot2 marks
execute if score abilitynumber abilities matches 25 run scoreboard players operation abilityDmg saves /= atkmultiplier slot2
execute if score abilitynumber abilities matches 25 run execute if score ward slot2 matches 0 run scoreboard players operation shield slot2 -= abilityDmg saves
execute if score abilitynumber abilities matches 25 run execute if score ward slot2 matches 0 if score shield slot2 matches ..0 run scoreboard players operation slot2 hp += shield slot2
execute if score abilitynumber abilities matches 25 run execute if score ward slot2 matches 1.. run function ch:wardslot2
execute if score abilitynumber abilities matches 25 if score slot6isatk booleans matches 1 run scoreboard players operation abilityDmg saves -= slot2 marks
execute if score abilitynumber abilities matches 25 if score slot6isatk booleans matches 1 run scoreboard players operation abilityDmg saves *= atkmultiplier slot2
execute if score abilitynumber abilities matches 25 if score slot6isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot1 marks
execute if score abilitynumber abilities matches 25 if score slot6isatk booleans matches 1 run scoreboard players operation abilityDmg saves /= atkmultiplier slot1
execute if score abilitynumber abilities matches 25 if score slot6isatk booleans matches 1 run scoreboard players operation abilityDmg saves /= boomerleader abilities
execute if score abilitynumber abilities matches 25 if score slot6isatk booleans matches 1 run execute if score ward slot1 matches 0 run scoreboard players operation shield slot1 -= abilityDmg saves
execute if score abilitynumber abilities matches 25 if score slot6isatk booleans matches 1 run execute if score ward slot1 matches 0 if score shield slot1 matches ..0 run scoreboard players operation slot1 hp += shield slot2
execute if score abilitynumber abilities matches 25 if score slot6isatk booleans matches 1 run execute if score ward slot1 matches 1.. run function ch:wardslot1
execute if score abilitynumber abilities matches 25 if score slot6isatk booleans matches 1 run scoreboard players operation abilityDmg saves -= slot1 marks
execute if score abilitynumber abilities matches 25 if score slot6isatk booleans matches 1 run scoreboard players operation abilityDmg saves *= atkmultiplier slot1
execute if score abilitynumber abilities matches 25 if score slot6isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot3 marks
execute if score abilitynumber abilities matches 25 if score slot6isatk booleans matches 1 run scoreboard players operation abilityDmg saves /= atkmultiplier slot3
execute if score abilitynumber abilities matches 25 if score slot6isatk booleans matches 1 run scoreboard players operation abilityDmg saves /= boomerleader abilities
execute if score abilitynumber abilities matches 25 if score slot6isatk booleans matches 1 run execute if score ward slot3 matches 0 run scoreboard players operation shield slot3 -= abilityDmg saves
execute if score abilitynumber abilities matches 25 if score slot6isatk booleans matches 1 run execute if score ward slot3 matches 0 if score shield slot3 matches ..0 run scoreboard players operation slot1 hp += shield slot2
execute if score abilitynumber abilities matches 25 if score slot6isatk booleans matches 1 run execute if score ward slot3 matches 1.. run function ch:wardslot3
#Domino
execute if score abilitynumber abilities matches 30 run scoreboard players operation abilityDmg saves = domino abilitystats
execute if score abilitynumber abilities matches 30 if score slot5isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot5 atkmodifiers
execute if score abilitynumber abilities matches 30 if score slot6isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot6 atkmodifiers
execute if score abilitynumber abilities matches 30 if score slot7isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot7 atkmodifiers
execute if score abilitynumber abilities matches 30 run scoreboard players operation abilityDmg saves += slot2 marks
execute if score abilitynumber abilities matches 30 run scoreboard players operation abilityDmg saves /= atkmultiplier slot2
execute if score abilitynumber abilities matches 30 run execute if score ward slot2 matches 0 run scoreboard players operation shield slot2 -= abilityDmg saves
execute if score abilitynumber abilities matches 30 run execute if score ward slot2 matches 0 if score shield slot2 matches ..0 run scoreboard players operation slot2 hp += shield slot2
execute if score abilitynumber abilities matches 30 run scoreboard players operation durationSlot2 poison = dominoDuration abilityStats 
execute if score abilitynumber abilities matches 30 run scoreboard players operation slot2Poison poison = dominoPoisonLeader abilityStats 
execute if score abilitynumber abilities matches 30 run execute if score ward slot2 matches 1.. run function ch:wardslot2
#Doc Basic Attack
execute if score abilitynumber abilities matches -1 run scoreboard players operation slot2Disease disease += doc heroattack




#This goes at the bottom
execute if score shield slot1 matches ..0 run scoreboard players set shield slot1 0
execute if score shield slot2 matches ..0 run scoreboard players set shield slot2 0
execute if score shield slot3 matches ..0 run scoreboard players set shield slot3 0
clear @p[tag=p2]
effect clear @p[tag=p2]
function ch:turnend
#Make sure to add burn to your abilities
