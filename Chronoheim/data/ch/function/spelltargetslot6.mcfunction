effect clear @a[tag=game1] weakness
clear @a[tag=game1]

#Dragonforge
execute if score spellnumber spells matches 26 run execute if score durationSlot6 shield < dragonforgeDuration spellStats run scoreboard players operation durationSlot6 shield = dragonforgeDuration spellStats
execute if score spellnumber spells matches 26 run scoreboard players operation shield slot6 += dragonforge spellStats
execute if score spellnumber spells matches 26 run execute if score alivep1 deaths matches 1 run scoreboard players operation shield slot6 += dragonforge spellStats
execute if score spellnumber spells matches 26 run function ch:spellphasep1

#Embiggen
execute if score spellnumber spells matches 13 run execute if score buffDurationSlot6 atkmodifiers < embiggenDuration spellStats run scoreboard players operation buffDurationSlot6 atkmodifiers = embiggenDuration spellStats
execute if score spellnumber spells matches 13 run scoreboard players operation attackBuffSlot6 atkmodifiers += embiggenBuff spellStats
execute if score spellnumber spells matches 13 run execute if score durationSlot6 shield < embiggenDuration spellStats run scoreboard players operation durationSlot6 shield = embiggenDuration spellStats
execute if score spellnumber spells matches 13 run scoreboard players operation shield slot6 += embiggen spellStats
execute if score spellnumber spells matches 13 run function ch:spellphasep1

#Embrittle
execute if score spellnumber spells matches 12 if score ward slot6 matches 0 run execute if score debuffDurationSlot6 atkmodifiers < embrittleDuration spellStats run scoreboard players operation debuffDurationSlot6 atkmodifiers = embrittleDuration spellStats
execute if score spellnumber spells matches 12 if score ward slot6 matches 0 run scoreboard players operation attackDebuffSlot6 atkmodifiers += embrittle spellStats
execute if score spellnumber spells matches 12 if score ward slot6 matches 1.. run function ch:wardslot6
execute if score spellnumber spells matches 12 run scoreboard players set attackIsOngoingGame1 booleans 0

#Evil Eye
execute if score spellnumber spells matches 15 if score ward slot6 matches 0 run scoreboard players operation marks slot6 += evilEye spellStats
execute if score spellnumber spells matches 15 if score ward slot6 matches 1.. run function ch:wardslot6
execute if score spellnumber spells matches 15 run scoreboard players set attackIsOngoingGame1 booleans 0

#Frostbolt
execute if score spellnumber spells matches 6 run scoreboard players operation spellDmg saves = frostbolt spellStats
execute if score spellnumber spells matches 6 run scoreboard players operation spellDmg saves += spellbuffsp1 spells
execute if score spellnumber spells matches 6 run scoreboard players operation spellDmg saves += marks slot6
execute if score spellnumber spells matches 6 run scoreboard players operation spellDmg saves /= atkmultiplier slot6
execute if score spellnumber spells matches 6 run execute if score ward slot6 matches 0 run scoreboard players operation shield slot6 -= spellDmg saves
execute if score spellnumber spells matches 6 run execute if score ward slot6 matches 0 if score frostboltDuration spellStats > durationSlot6 speedDebuffs run scoreboard players operation durationSlot6 speedDebuffs = frostboltDuration spellStats
execute if score spellnumber spells matches 6 run execute if score ward slot6 matches 0 if score frostboltDuration spellStats > debuffDurationSlot6 atkmodifiers run scoreboard players operation debuffDurationSlot6 atkmodifiers = frostboltDuration spellStats
execute if score spellnumber spells matches 6 run execute if score ward slot6 matches 0 run scoreboard players operation speedDebuffSlot6 speedDebuffs += frostboltSpDebuff spellStats
execute if score spellnumber spells matches 6 run execute if score ward slot6 matches 0 run scoreboard players operation attackDebuffSlot6 atkmodifiers += frostboltDmgDebuff spellStats
execute if score spellnumber spells matches 6 run execute if score ward slot6 matches 0 run scoreboard players operation speed slot6 -= frostboltSpDebuff spellStats
execute if score spellnumber spells matches 6 run execute if score ward slot6 matches 0 if score shield slot6 matches ..0 run scoreboard players operation slot6 hp += shield slot6
execute if score spellnumber spells matches 6 run execute if score ward slot6 matches 1.. run function ch:wardslot6
execute if score spellnumber spells matches 6 run scoreboard players set spellbuffsp1 spells 0
execute if score spellnumber spells matches 6 run scoreboard players set attackIsOngoingGame1 booleans 0

#Heal
execute if score spellnumber spells matches 3 run scoreboard players operation spellHeal saves = heal spellStats
execute if score spellnumber spells matches 3 run scoreboard players operation spellHeal saves += spellbuffsp2 spells
execute if score spellnumber spells matches 3 run scoreboard players operation slot6 hp += spellHeal saves
execute if score spellnumber spells matches 3 run function ch:cleanseslot6
execute if score spellnumber spells matches 3 run scoreboard players set spellbuffsp2 spells 0
execute if score spellnumber spells matches 3 run function ch:spellphasep1

#Magic Missile
execute if score spellnumber spells matches 4 run scoreboard players operation spellDmg saves = magicMissile spellStats
execute if score spellnumber spells matches 4 run scoreboard players operation spellDmg saves += spellbuffsp1 spells
execute if score spellnumber spells matches 4 run scoreboard players operation spellDmg saves += marks slot6
execute if score spellnumber spells matches 4 run scoreboard players operation spellDmg saves /= atkmultiplier slot6
execute if score spellnumber spells matches 4 run execute if score ward slot6 matches 0 run scoreboard players operation shield slot6 -= spellDmg saves
execute if score spellnumber spells matches 4 run execute if score ward slot6 matches 0 if score shield slot6 matches ..0 run scoreboard players operation slot6 hp += shield slot6
execute if score spellnumber spells matches 4 run execute if score ward slot6 matches 1.. run function ch:wardslot6
execute if score spellnumber spells matches 4 run execute if score magicMissilex2 spells matches 0 run function ch:spellgivetargetsp1
execute if score spellnumber spells matches 4 run execute if score magicMissilex2 spells matches 0 run scoreboard players set magicMissilex2 spells 1
execute if score spellnumber spells matches 4 run execute if score magicMissilex2 spells matches 1 run scoreboard players set spellbuffsp1 spells 0
execute if score spellnumber spells matches 4 run execute if score magicMissilex2 spells matches 1 run scoreboard players set attackIsOngoingGame1 booleans 0
execute if score spellnumber spells matches 4 run execute if score magicMissilex2 spells matches 1 run scoreboard players set magicMissilex2 spells 0

#Protector's Rune
execute if score spellnumber spells matches 16 if score protectorsrune spellStats > durationSlot6 taunt run scoreboard players operation durationSlot6 taunt = protectorsrune spellStats
execute if score spellnumber spells matches 16 if score protectorsrune spellStats > durationSlot6 taunt if score ward slot6 matches 0 run scoreboard players operation marks slot6 += protectorsruneMarks spellStats
execute if score spellnumber spells matches 16 if score protectorsrune spellStats > durationSlot6 taunt if score ward slot6 matches 1.. run function ch:wardslot6
execute if score spellnumber spells matches 16 run function ch:spellphasep1

#Shield
execute if score spellnumber spells matches 8 run execute if score durationSlot6 shield < shieldDuration spellStats run scoreboard players operation durationSlot6 shield = shieldDuration spellStats
execute if score spellnumber spells matches 8 run scoreboard players operation shield slot6 += shield spellStats
execute if score spellnumber spells matches 8 run function ch:spellphasep1

#Ball Lightning
execute if score spellnumber spells matches 8 if score ward slot6 matches 0 run scoreboard players operation slot6 stun += shockOrb spellStats
execute if score spellnumber spells matches 8 if score ward slot6 matches 1.. run function ch:wardslot6
execute if score spellnumber spells matches 8 run scoreboard players set attackIsOngoingGame1 booleans 0

#Witches Brew
execute if score spellnumber spells matches 23 run execute if score ward slot6 matches 0 if score witchesBrewDuration spellStats > durationSlot6 speedDebuffs run scoreboard players operation durationSlot6 speedDebuffs = witchesBrewDuration spellStats
execute if score spellnumber spells matches 23 run execute if score ward slot6 matches 0 if score witchesBrewDuration spellStats > debuffDurationSlot6 atkmodifiers run scoreboard players operation debuffDurationSlot6 atkmodifiers = witchesBrewDuration spellStats
execute if score spellnumber spells matches 23 run execute if score ward slot6 matches 0 if score witchesBrewDuration spellStats > durationSlot6 poison run scoreboard players operation durationSlot6 poison = witchesBrewDuration spellStats
execute if score spellnumber spells matches 23 run execute if score ward slot6 matches 0 if score witchesBrewDuration spellStats > durationSlot6 burn run scoreboard players operation durationSlot6 burn = witchesBrewDuration spellStats
execute if score spellnumber spells matches 23 run execute if score ward slot6 matches 0 run scoreboard players operation speedDebuffSlot6 speedDebuffs += witchesBrewSpDebuff spellStats
execute if score spellnumber spells matches 23 run execute if score ward slot6 matches 0 run scoreboard players operation attackDebuffSlot6 atkmodifiers += witchesBrewDmgDebuff spellStats
execute if score spellnumber spells matches 23 run execute if score ward slot6 matches 0 run scoreboard players operation slot6Poison atkmodifiers += witchesBrew spellStats
execute if score spellnumber spells matches 23 run execute if score ward slot6 matches 0 run scoreboard players operation slot6Burn atkmodifiers += witchesBrewBurn spellStats
execute if score spellnumber spells matches 23 run execute if score ward slot6 matches 0 run scoreboard players operation speed slot6 -= witchesBrewSpDebuff spellStats
execute if score spellnumber spells matches 23 run execute if score ward slot6 matches 1.. run function ch:wardslot6
execute if score spellnumber spells matches 23 run scoreboard players set attackIsOngoingGame1 booleans 0

#Shifting Shadows Token
execute if score spellnumber spells matches -1 if score shadowsPart1 spells matches 1 if score ward slot6 matches 0 run scoreboard players set durationSlot1-6 fear 1
execute if score spellnumber spells matches -1 if score shadowsPart1 spells matches 2 if score ward slot6 matches 0 run scoreboard players set durationSlot2-6 fear 1
execute if score spellnumber spells matches -1 if score shadowsPart1 spells matches 3 if score ward slot6 matches 0 run scoreboard players set durationSlot3-6 fear 1
execute if score spellnumber spells matches -1 if score shadowsPart1 spells matches 4 if score ward slot6 matches 0 run scoreboard players set durationSlot4-6 fear 1
execute if score spellnumber spells matches -1 if score ward slot6 matches 1.. run function ch:wardslot6
execute if score spellnumber spells matches -1 run scoreboard players set attackIsOngoingGame1 booleans 0

#Shifting Shadows
execute if score spellnumber spells matches 28 run scoreboard players set shadowsPart1 spells 6
execute if score spellnumber spells matches 28 run function ch:spellgivetargetsp2
execute if score spellnumber spells matches 28 run scoreboard players set spellnumber spells -1

#fireball
execute if score spellnumber spells matches 3 run scoreboard players operation spellDmg saves = fireball spellStats
execute if score spellnumber spells matches 3 run scoreboard players operation spellDmg saves += spellbuffsp1 spells
execute if score spellnumber spells matches 3 run scoreboard players operation spellDmg saves += marks slot6
execute if score spellnumber spells matches 3 run scoreboard players operation spellDmg saves /= atkmultiplier slot6
execute if score spellnumber spells matches 3 run execute if score ward slot6 matches 0 run scoreboard players operation shield slot6 -= spellDmg saves
execute if score spellnumber spells matches 3 run execute if score ward slot6 matches 0 run scoreboard players operation slot6 hp -= shield slot6
execute if score spellnumber spells matches 3 run execute if score ward slot6 matches 0 if score durationSlot6 burn < fireballDuration spellStats run scoreboard players operation durationSlot6 burn = fireballDuration spellStats
execute if score spellnumber spells matches 3 run execute if score ward slot6 matches 0 run scoreboard players operation slot6burn burn += fireballBurn spellStats
execute if score spellnumber spells matches 3 run execute if score ward slot6 matches 1.. run function ch:wardslot6
execute if score spellnumber spells matches 3 run scoreboard players set spellbuffsp1 spells 0
execute if score spellnumber spells matches 3 run scoreboard players set attackIsOngoingGame1 booleans 0

#meteor
execute if score spellnumber spells matches 7 run scoreboard players operation spellDmg saves = meteor spellStats
execute if score spellnumber spells matches 7 if score slot7isatk booleans matches 1 run scoreboard players operation spellDmg saves += spellbuffsp1 spells
execute if score spellnumber spells matches 7 run scoreboard players operation spellDmg saves += marks slot6
execute if score spellnumber spells matches 7 run scoreboard players operation spellDmg saves /= atkmultiplier slot6
execute if score spellnumber spells matches 7 run execute if score ward slot6 matches 0 run scoreboard players operation shield slot6 -= spellDmg saves
execute if score spellnumber spells matches 7 run execute if score ward slot6 matches 0 if score shield slot6 matches ..0 run scoreboard players operation slot6 hp += shield slot6
execute if score spellnumber spells matches 7 run execute if score ward slot6 matches 1.. run function ch:wardslot6
execute if score spellnumber spells matches 7 run scoreboard players operation spellDmg saves *= atkmultiplier slot6
execute if score spellnumber spells matches 7 run scoreboard players operation spellDmg saves -= marks slot6
execute if score spellnumber spells matches 7 run scoreboard players operation spellDmg saves += marks slot5
execute if score spellnumber spells matches 7 run scoreboard players operation spellDmg saves /= atkmultiplier slot5
execute if score spellnumber spells matches 7 run scoreboard players operation spellDmg saves /= meteorSplash spells
execute if score spellnumber spells matches 7 run execute if score ward slot5 matches 0 run scoreboard players operation shield slot5 -= spellDmg saves
execute if score spellnumber spells matches 7 run execute if score ward slot5 matches 0 if score shield slot5 matches ..0 run scoreboard players operation slot5 hp += shield slot5
execute if score spellnumber spells matches 7 run execute if score ward slot5 matches 1.. run function ch:wardslot5
execute if score spellnumber spells matches 7 run scoreboard players operation spellDmg saves *= atkmultiplier slot5
execute if score spellnumber spells matches 7 run scoreboard players operation spellDmg saves -= marks slot5
execute if score spellnumber spells matches 7 run scoreboard players operation spellDmg saves += marks slot7
execute if score spellnumber spells matches 7 run scoreboard players operation spellDmg saves /= atkmultiplier slot7
execute if score spellnumber spells matches 7 run scoreboard players operation spellDmg saves /= meteorSplash spellStats
execute if score spellnumber spells matches 7 run execute if score ward slot7 matches 0 run scoreboard players operation shield slot7 -= spellDmg saves
execute if score spellnumber spells matches 7 run execute if score ward slot7 matches 0 if score shield slot7 matches ..0 run scoreboard players operation slot7 hp += shield slot7
execute if score spellnumber spells matches 7 run execute if score ward slot7 matches 1.. run function ch:wardslot7
execute if score spellnumber spells matches 7 run scoreboard players set spellbuffsp1 spells 0
execute if score spellnumber spells matches 7 run scoreboard players set attackIsOngoingGame1 booleans 0

#witchbolt
execute if score spellnumber spells matches 10 run scoreboard players operation spellDmg saves = witchbolt spellStats
execute if score spellnumber spells matches 10 run scoreboard players operation spellDmg saves += spellbuffsp1 spells
execute if score spellnumber spells matches 10 run scoreboard players operation spellDmg saves += marks slot6
execute if score spellnumber spells matches 10 run scoreboard players operation spellDmg saves /= atkmultiplier slot6
execute if score spellnumber spells matches 10 run execute if score ward slot6 matches 0 run scoreboard players operation shield slot6 -= spellDmg saves
execute if score spellnumber spells matches 10 run execute if score ward slot6 matches 0 run scoreboard players operation slot6 hp -= shield slot6
execute if score spellnumber spells matches 10 run execute if score ward slot6 matches 1.. run function ch:wardslot6
execute if score spellnumber spells matches 10 run scoreboard players set spellbuffsp1 spells 0
execute if score spellnumber spells matches 10 run scoreboard players set attackIsOngoingGame1 booleans 0

#ward
execute if score spellnumber spells matches 19 run scoreboard players set ward slot6 1
execute if score spellnumber spells matches 19 run function ch:spellphasep1

#plague
execute if score spellnumber spells matches 21 run scoreboard players operation slot6Disease disease += plague spellStats
execute if score spellnumber spells matches 21 run scoreboard players set attackIsOngoingGame1 booleans 0
#Second wind
execute if score spellnumber spells matches 22 run execute if score durationSlot6 speedBuffs < secondWindDuration spellStats run scoreboard players operation durationSlot6 speedBuffs = secondWindDuration spellStats
execute if score spellnumber spells matches 22 run scoreboard players operation speedBuffSlot6 speedBuffs += secondWindSpeed spellStats
execute if score spellnumber spells matches 22 run scoreboard players operation speed slot6 += secondWindSpeed spellStats
execute if score spellnumber spells matches 22 if score slot6bleeding booleaneffects matches 0 run scoreboard players operation slot6 hp += secondWind spellStats
execute if score spellnumber spells matches 22 if score slot6bleeding booleaneffects matches 0 run scoreboard players operation slot6 hp += spellbuffsp2 spells
execute if score spellnumber spells matches 22 run function ch:spellphasep1
execute if score spellnumber spells matches 22 run scoreboard players set spellbuffsp2 spells 0

#fountain of youth
execute if score spellnumber spells matches 25 run execute if score diarmedslot6 booleaneffects < fountainOfYouthDuration spellStats run scoreboard players operation diarmedslot6 booleaneffects = fountainOfYouthDuration spellStats
execute if score spellnumber spells matches 25 if score slot6bleeding booleaneffects matches 0 run scoreboard players operation slot6 hp += fountainOfYouth spellStats
execute if score spellnumber spells matches 25 if score slot6bleeding booleaneffects matches 0 run scoreboard players operation slot6 hp += spellbuffsp2 spells
execute if score spellnumber spells matches 25 run function ch:spellphasep1
execute if score spellnumber spells matches 25 run scoreboard players set spellbuffsp2 spells 0

#overclock
execute if score spellnumber spells matches 27 run execute if score buffDurationSlot6 atkmodifiers < overclockDuration spellStats run scoreboard players operation buffDurationSlot6 atkmodifiers = overclockDuration spellStats
execute if score spellnumber spells matches 27 run scoreboard players operation attackBuffSlot6 atkmodifiers += overclock spellStats
execute if score spellnumber spells matches 27 run scoreboard players operation shield slot6 -= overclockAtk spellStats
execute if score spellnumber spells matches 27 if score shield slot6 matches ..0 run scoreboard players operation slot6 hp -= shield slot6
execute if score spellnumber spells matches 27 run function ch:spellphasep1

#This goes at the bottom
execute if score shield slot5 matches ..0 run scoreboard players set shield slot5 0
execute if score shield slot6 matches ..0 run scoreboard players set shield slot6 0
execute if score shield slot7 matches ..0 run scoreboard players set shield slot7 0
execute if score shield slot8 matches ..0 run scoreboard players set shield slot8 0







