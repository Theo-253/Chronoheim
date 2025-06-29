effect clear @a[tag=game1] weakness
clear @a[tag=game1]

#Dragonforge
execute if score spellnumber spells matches 26 run execute if score durationSlot5 shield < dragonforgeDuration spellStats run scoreboard players operation durationSlot5 shield = dragonforgeDuration spellStats 
execute if score spellnumber spells matches 26 run scoreboard players operation shield slot5 += dragonforge spellStats
execute if score spellnumber spells matches 26 run execute if score alivep1 deaths matches 1 run scoreboard players operation shield slot5 += dragonforge spellStats
execute if score spellnumber spells matches 26 run function ch:spellphasep1

#Embiggen
execute if score spellnumber spells matches 13 run execute if score buffDurationSlot5 atkmodifiers < embiggenDuration spellStats run scoreboard players operation buffDurationSlot5 atkmodifiers = embiggenDuration spellStats
execute if score spellnumber spells matches 13 run scoreboard players operation attackBuffSlot5 atkmodifiers += embiggenBuff spellStats
execute if score spellnumber spells matches 13 run execute if score durationSlot5 shield < embiggenDuration spellStats run scoreboard players operation durationSlot5 shield = embiggenDuration spellStats 
execute if score spellnumber spells matches 13 run scoreboard players operation shield slot5 += embiggen spellStats
execute if score spellnumber spells matches 13 run function ch:spellphasep1

#Embrittle
execute if score spellnumber spells matches 12 if score ward slot5 matches 0 run execute if score debuffDurationSlot5 atkmodifiers < embrittleDuration spellStats run scoreboard players operation debuffDurationSlot5 atkmodifiers = embrittleDuration spellStats
execute if score spellnumber spells matches 12 if score ward slot5 matches 0 run scoreboard players operation attackDebuffSlot5 atkmodifiers += embrittle spellStats
execute if score spellnumber spells matches 12 if score ward slot5 matches 1.. run function ch:wardslot5
execute if score spellnumber spells matches 12 run scoreboard players set attackIsOngoingGame1 booleans 0

#Evil Eye
execute if score spellnumber spells matches 15 if score ward slot5 matches 0 run scoreboard players operation marks slot5 += evilEye spellStats
execute if score spellnumber spells matches 15 if score ward slot5 matches 1.. run function ch:wardslot5
execute if score spellnumber spells matches 15 run scoreboard players set attackIsOngoingGame1 booleans 0

#Frostbolt
execute if score spellnumber spells matches 6 run scoreboard players operation spellDmg saves = frostbolt spellStats
execute if score spellnumber spells matches 6 run scoreboard players operation spellDmg saves += spellbuffsp1 spells
execute if score spellnumber spells matches 6 run scoreboard players operation spellDmg saves += marks slot5
execute if score spellnumber spells matches 6 run scoreboard players operation spellDmg saves /= atkmultiplier slot5
execute if score spellnumber spells matches 6 run execute if score ward slot5 matches 0 run scoreboard players operation shield slot5 -= spellDmg saves
execute if score spellnumber spells matches 6 run execute if score ward slot5 matches 0 if score frostboltDuration spellStats > durationSlot5 speedDebuffs run scoreboard players operation durationSlot5 speedDebuffs = frostboltDuration spellStats
execute if score spellnumber spells matches 6 run execute if score ward slot5 matches 0 if score frostboltDuration spellStats > debuffDurationSlot5 atkmodifiers run scoreboard players operation debuffDurationSlot5 atkmodifiers = frostboltDuration spellStats
execute if score spellnumber spells matches 6 run execute if score ward slot5 matches 0 run scoreboard players operation speedDebuffSlot5 speedDebuffs += frostboltSpDebuff spellStats
execute if score spellnumber spells matches 6 run execute if score ward slot5 matches 0 run scoreboard players operation attackDebuffSlot5 atkmodifiers += frostboltDmgDebuff spellStats
execute if score spellnumber spells matches 6 run execute if score ward slot5 matches 0 run scoreboard players operation speed slot5 -= frostboltSpDebuff spellStats
execute if score spellnumber spells matches 6 run execute if score ward slot5 matches 0 if score shield slot5 matches ..0 run scoreboard players operation slot5 hp += shield slot5
execute if score spellnumber spells matches 6 run execute if score ward slot5 matches 1.. run function ch:wardslot5
execute if score spellnumber spells matches 6 run scoreboard players set spellbuffsp1 spells 0
execute if score spellnumber spells matches 6 run scoreboard players set attackIsOngoingGame1 booleans 0

#Heal
execute if score spellnumber spells matches 2 run scoreboard players operation spellHeal saves = heal spellStats
execute if score spellnumber spells matches 2 run scoreboard players operation spellHeal saves += spellbuffsp2 spells
execute if score spellnumber spells matches 2 run scoreboard players operation slot5 hp += spellHeal saves
execute if score spellnumber spells matches 2 run function ch:cleanseslot5
execute if score spellnumber spells matches 2 run scoreboard players set spellbuffsp2 spells 0
execute if score spellnumber spells matches 2 run function ch:spellphasep1

#Magic Missile
execute if score spellnumber spells matches 4 run scoreboard players add magicMissilex2 spells 1
execute if score spellnumber spells matches 4 run scoreboard players operation spellDmg saves = magicMissile spellStats
execute if score spellnumber spells matches 4 run scoreboard players operation spellDmg saves += spellbuffsp1 spells
execute if score spellnumber spells matches 4 run scoreboard players operation spellDmg saves += marks slot5
execute if score spellnumber spells matches 4 run scoreboard players operation spellDmg saves /= atkmultiplier slot5
execute if score spellnumber spells matches 4 run execute if score ward slot5 matches 0 run scoreboard players operation shield slot5 -= spellDmg saves
execute if score spellnumber spells matches 4 run execute if score ward slot5 matches 0 if score shield slot5 matches ..0 run scoreboard players operation slot5 hp += shield slot5
execute if score spellnumber spells matches 4 run execute if score ward slot5 matches 1.. run function ch:wardslot5
execute if score spellnumber spells matches 4 run execute if score magicMissilex2 spells matches 0 run function ch:spellgivetargetsp1
execute if score spellnumber spells matches 4 run execute if score magicMissilex2 spells matches 2 run scoreboard players set spellbuffsp1 spells 0
execute if score spellnumber spells matches 4 run execute if score magicMissilex2 spells matches 2 run scoreboard players set attackIsOngoingGame1 booleans 0
execute if score spellnumber spells matches 4 run execute if score magicMissilex2 spells matches 2 run scoreboard players set magicMissilex2 spells 0

#Protector's Rune
execute if score spellnumber spells matches 16 if score protectorsrune spellStats > durationSlot5 taunt run scoreboard players operation durationSlot5 taunt = protectorsrune spellStats
execute if score spellnumber spells matches 16 if score protectorsrune spellStats > durationSlot5 taunt if score ward slot5 matches 0 run scoreboard players operation marks slot5 += protectorsruneMarks spellStats
execute if score spellnumber spells matches 16 if score protectorsrune spellStats > durationSlot5 taunt if score ward slot5 matches 1.. run function ch:wardslot5
execute if score spellnumber spells matches 16 run function ch:spellphasep1

#Shield
execute if score spellnumber spells matches 8 run execute if score durationSlot5 shield < shieldDuration spellStats run scoreboard players operation durationSlot5 shield = shieldDuration spellStats 
execute if score spellnumber spells matches 8 run scoreboard players operation shield slot5 += shield spellStats
execute if score spellnumber spells matches 8 run function ch:spellphasep1

#Ball Lightning
execute if score spellnumber spells matches 9 if score ward slot5 matches 0 run scoreboard players operation slot5 stun += shockOrb spellStats
execute if score spellnumber spells matches 9 if score ward slot5 matches 1.. run function ch:wardslot5
execute if score spellnumber spells matches 9 run scoreboard players set attackIsOngoingGame1 booleans 0

#Witches Brew
execute if score spellnumber spells matches 23 run execute if score ward slot5 matches 0 if score witchesBrewDuration spellStats > durationSlot5 speedDebuffs run scoreboard players operation durationSlot5 speedDebuffs = witchesBrewDuration spellStats
execute if score spellnumber spells matches 23 run execute if score ward slot5 matches 0 if score witchesBrewDuration spellStats > debuffDurationSlot5 atkmodifiers run scoreboard players operation debuffDurationSlot5 atkmodifiers = witchesBrewDuration spellStats
execute if score spellnumber spells matches 23 run execute if score ward slot5 matches 0 if score witchesBrewDuration spellStats > durationSlot5 poison run scoreboard players operation durationSlot5 poison = witchesBrewDuration spellStats
execute if score spellnumber spells matches 23 run execute if score ward slot5 matches 0 if score witchesBrewDuration spellStats > durationSlot5 burn run scoreboard players operation durationSlot5 burn = witchesBrewDuration spellStats
execute if score spellnumber spells matches 23 run execute if score ward slot5 matches 0 run scoreboard players operation speedDebuffSlot5 speedDebuffs += witchesBrewSpDebuff spellStats
execute if score spellnumber spells matches 23 run execute if score ward slot5 matches 0 run scoreboard players operation attackDebuffSlot5 atkmodifiers += witchesBrewDmgDebuff spellStats
execute if score spellnumber spells matches 23 run execute if score ward slot5 matches 0 run scoreboard players operation slot5Poison atkmodifiers += witchesBrew spellStats
execute if score spellnumber spells matches 23 run execute if score ward slot5 matches 0 run scoreboard players operation slot5Burn atkmodifiers += witchesBrewBurn spellStats
execute if score spellnumber spells matches 23 run execute if score ward slot5 matches 0 run scoreboard players operation speed slot5 -= witchesBrewSpDebuff spellStats
execute if score spellnumber spells matches 23 run execute if score ward slot5 matches 1.. run function ch:wardslot5
execute if score spellnumber spells matches 23 run scoreboard players set attackIsOngoingGame1 booleans 0


#Shifting Shadows Token
execute if score spellnumber spells matches -1 if score shadowsPart1 spells matches 1 if score ward slot5 matches 0 run scoreboard players set durationSlot1-5 fear 1 
execute if score spellnumber spells matches -1 if score shadowsPart1 spells matches 2 if score ward slot5 matches 0 run scoreboard players set durationSlot2-5 fear 1 
execute if score spellnumber spells matches -1 if score shadowsPart1 spells matches 3 if score ward slot5 matches 0 run scoreboard players set durationSlot3-5 fear 1 
execute if score spellnumber spells matches -1 if score shadowsPart1 spells matches 4 if score ward slot5 matches 0 run scoreboard players set durationSlot4-5 fear 1
execute if score spellnumber spells matches -1 if score ward slot5 matches 1.. run function ch:wardslot5
execute if score spellnumber spells matches -1 run scoreboard players set attackIsOngoingGame1 booleans 0

#Shifting Shadows
execute if score spellnumber spells matches 28 run scoreboard players set shadowsPart1 spells 5
execute if score spellnumber spells matches 28 run function ch:spellgivetargetsp2
execute if score spellnumber spells matches 28 run scoreboard players set spellnumber spells -1

#fireball
execute if score spellnumber spells matches 1 run scoreboard players operation spellDmg saves = fireball spellStats
execute if score spellnumber spells matches 1 run scoreboard players operation spellDmg saves += spellbuffsp1 spells
execute if score spellnumber spells matches 1 run scoreboard players operation spellDmg saves += marks slot5
execute if score spellnumber spells matches 1 run scoreboard players operation spellDmg saves /= atkmultiplier slot5
execute if score spellnumber spells matches 1 run execute if score ward slot5 matches 0 run scoreboard players operation shield slot5 -= spellDmg saves
execute if score spellnumber spells matches 1 run execute if score ward slot5 matches 0 run scoreboard players operation slot5 hp += shield slot5
execute if score spellnumber spells matches 1 run execute if score ward slot5 matches 0 if score durationSlot5 burn < fireballDuration spellStats run scoreboard players operation durationSlot5 burn = fireballDuration spellStats
execute if score spellnumber spells matches 1 run execute if score ward slot5 matches 0 run scoreboard players operation slot5Burn burn += fireballBurn spellStats
execute if score spellnumber spells matches 1 run execute if score ward slot5 matches 1.. run function ch:wardslot5
execute if score spellnumber spells matches 1 run scoreboard players set spellbuffsp1 spells 0
execute if score spellnumber spells matches 1 run scoreboard players set attackIsOngoingGame1 booleans 0

#meteor
execute if score spellnumber spells matches 7 run scoreboard players operation spellDmg saves = meteor spellStats
execute if score spellnumber spells matches 7 run scoreboard players operation spellDmg saves += spellbuffsp1 spells
execute if score spellnumber spells matches 7 run scoreboard players operation spellDmg saves += marks slot5
execute if score spellnumber spells matches 7 run scoreboard players operation spellDmg saves /= atkmultiplier slot5
execute if score spellnumber spells matches 7 run execute if score ward slot5 matches 0 run scoreboard players operation shield slot5 -= spellDmg saves
execute if score spellnumber spells matches 7 run execute if score ward slot5 matches 0 if score shield slot5 matches ..0 run scoreboard players operation slot5 hp += shield slot5
execute if score spellnumber spells matches 7 run execute if score ward slot5 matches 1.. run function ch:wardslot5
execute if score spellnumber spells matches 7 run scoreboard players operation spellDmg saves = meteor spellStats
execute if score spellnumber spells matches 7 run scoreboard players operation spellDmg saves += spellbuffsp2 spells
execute if score spellnumber spells matches 7 run scoreboard players operation spellDmg saves += marks slot6
execute if score spellnumber spells matches 7 run scoreboard players operation spellDmg saves /= atkmultiplier slot6
execute if score spellnumber spells matches 7 run scoreboard players operation spellDmg saves /= meteorSplash spellStats
execute if score spellnumber spells matches 7 run execute if score ward slot6 matches 0 run scoreboard players operation shield slot6 -= spellDmg saves
execute if score spellnumber spells matches 7 run execute if score ward slot6 matches 0 if score shield slot6 matches ..0 run scoreboard players operation slot6 hp += shield slot6
execute if score spellnumber spells matches 7 run execute if score ward slot6 matches 1.. run function ch:wardslot6
execute if score spellnumber spells matches 7 run scoreboard players set spellbuffsp1 spells 0
execute if score spellnumber spells matches 7 run scoreboard players set attackIsOngoingGame1 booleans 0

#witchbolt
execute if score spellnumber spells matches 10 run scoreboard players operation spellDmg saves = witchbolt spellStats
execute if score spellnumber spells matches 10 run scoreboard players operation spellDmg saves += spellbuffsp1 spells
execute if score spellnumber spells matches 10 run scoreboard players operation spellDmg saves += marks slot5
execute if score spellnumber spells matches 10 run scoreboard players operation spellDmg saves /= atkmultiplier slot5
execute if score spellnumber spells matches 10 run execute if score ward slot5 matches 0 run scoreboard players operation shield slot5 -= spellDmg saves
execute if score spellnumber spells matches 10 run execute if score ward slot5 matches 0 if score shield slot5 matches ..0 run scoreboard players operation slot5 hp += shield slot5
execute if score spellnumber spells matches 10 run execute if score ward slot5 matches 1.. run function ch:wardslot5
execute if score spellnumber spells matches 10 run scoreboard players set spellbuffsp1 spells 0
execute if score spellnumber spells matches 10 run scoreboard players set attackIsOngoingGame1 booleans 0

#ward
execute if score spellnumber spells matches 19 run scoreboard players set ward slot5 1
execute if score spellnumber spells matches 19 run function ch:spellphasep1

#plague
execute if score spellnumber spells matches 21 run scoreboard players operation slot5Disease disease += plague spellStats
execute if score spellnumber spells matches 21 run scoreboard players set attackIsOngoingGame1 booleans 0
#Second wind
execute if score spellnumber spells matches 22 run execute if score durationSlot5 speedBuffs < secondWindDuration spellStats run scoreboard players operation durationSlot5 speedBuffs = secondWindDuration spellStats
execute if score spellnumber spells matches 22 run scoreboard players operation speedBuffSlot5 speedBuffs += secondWindSpeed spellStats
execute if score spellnumber spells matches 22 run scoreboard players operation speed slot5 += secondWindSpeed spellStats
execute if score spellnumber spells matches 22 if score slot5bleeding booleaneffects matches 0 run scoreboard players operation slot5 hp += secondWind spellStats
execute if score spellnumber spells matches 22 if score slot5bleeding booleaneffects matches 0 run scoreboard players operation slot5 hp += spellbuffsp2 spells
execute if score spellnumber spells matches 22 run function ch:spellphasep1
execute if score spellnumber spells matches 22 run scoreboard players set spellbuffsp2 spells 0

#fountain of youth
execute if score spellnumber spells matches 25 run execute if score diarmedslot5 booleaneffects < fountainOfYouthDuration spellStats run scoreboard players operation diarmedslot5 booleaneffects = fountainOfYouthDuration spellStats
execute if score spellnumber spells matches 25 if score slot5bleeding booleaneffects matches 0 run scoreboard players operation slot5 hp += fountainOfYouth spellStats
execute if score spellnumber spells matches 25 if score slot5bleeding booleaneffects matches 0 run scoreboard players operation slot5 hp += spellbuffsp2 spells
execute if score spellnumber spells matches 25 run function ch:spellphasep1
execute if score spellnumber spells matches 25 run scoreboard players set spellbuffsp2 spells 0

#overclock
execute if score spellnumber spells matches 27 run execute if score buffDurationSlot5 atkmodifiers < overclockDuration spellStats run scoreboard players operation buffDurationSlot5 atkmodifiers = overclockDuration spellStats
execute if score spellnumber spells matches 27 run scoreboard players operation attackBuffSlot5 atkmodifiers += overclock spellStats
execute if score spellnumber spells matches 27 run scoreboard players operation shield slot5 -= overclockAtk spellStats
execute if score spellnumber spells matches 27 if score shield slot5 matches ..0 run scoreboard players operation slot5 hp += shield slot5
execute if score spellnumber spells matches 27 run function ch:spellphasep1


#This goes at the bottom
execute if score shield slot5 matches ..0 run scoreboard players set shield slot5 0
execute if score shield slot6 matches ..0 run scoreboard players set shield slot6 0
execute if score shield slot7 matches ..0 run scoreboard players set shield slot7 0
execute if score shield slot8 matches ..0 run scoreboard players set shield slot8 0

