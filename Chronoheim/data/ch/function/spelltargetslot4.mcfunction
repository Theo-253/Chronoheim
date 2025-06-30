effect clear @a[tag=game1] weakness
clear @a[tag=game1]

#Dragonforge
execute if score spellnumber spells matches 26 run execute if score durationSlot4 shield < dragonforgeDuration spellStats run scoreboard players operation durationSlot4 shield = dragonforgeDuration spellStats
execute if score spellnumber spells matches 26 run scoreboard players operation shield slot4 += dragonforge spellStats
execute if score spellnumber spells matches 26 run execute if score alivep1 deaths matches 1 run scoreboard players operation shield slot4 += dragonforge spellStats
execute if score spellnumber spells matches 26 run scoreboard players set attackIsOngoingGame1 booleans 0

#Embiggen
execute if score spellnumber spells matches 13 run execute if score buffDurationSlot4 atkmodifiers < embiggenDuration spellStats run scoreboard players operation buffDurationSlot4 atkmodifiers = embiggenDuration spellStats
execute if score spellnumber spells matches 13 run scoreboard players operation attackBuffSlot4 atkmodifiers += embiggenBuff spellStats
execute if score spellnumber spells matches 13 run execute if score durationSlot4 shield < embiggenDuration spellStats run scoreboard players operation durationSlot4 shield = embiggenDuration spellStats
execute if score spellnumber spells matches 13 run scoreboard players operation shield slot4 += embiggen spellStats
execute if score spellnumber spells matches 13 run scoreboard players set attackIsOngoingGame1 booleans 0

#Embrittle
execute if score spellnumber spells matches 12 if score ward slot4 matches 0 run execute if score debuffDurationSlot4 atkmodifiers < embrittleDuration spellStats run scoreboard players operation debuffDurationSlot4 atkmodifiers = embrittleDuration spellStats
execute if score spellnumber spells matches 12 if score ward slot4 matches 0 run scoreboard players operation attackDebuffSlot4 atkmodifiers += embrittle spellStats
execute if score spellnumber spells matches 12 if score ward slot4 matches 1.. run function ch:wardslot4
execute if score spellnumber spells matches 12 run function ch:spellphasep1

#Evil Eye
execute if score spellnumber spells matches 15 if score ward slot4 matches 0 run scoreboard players operation marks slot4 += evilEye spellStats
execute if score spellnumber spells matches 15 if score ward slot4 matches 1.. run function ch:wardslot4
execute if score spellnumber spells matches 15 run function ch:spellphasep1

#Frostbolt
execute if score spellnumber spells matches 6 run scoreboard players operation spellDmg saves = frostbolt spellStats
execute if score spellnumber spells matches 6 run scoreboard players operation spellDmg saves += spellbuffsp2 spells
execute if score spellnumber spells matches 6 run scoreboard players operation spellDmg saves += marks slot4
execute if score spellnumber spells matches 6 run scoreboard players operation spellDmg saves /= atkmultiplier slot4
execute if score spellnumber spells matches 6 run execute if score ward slot4 matches 0 run scoreboard players operation shield slot4 -= spellDmg saves
execute if score spellnumber spells matches 6 run execute if score ward slot4 matches 0 if score frostboltDuration spellStats > durationSlot4 speedDebuffs run scoreboard players operation durationSlot4 speedDebuffs = frostboltDuration spellStats
execute if score spellnumber spells matches 6 run execute if score ward slot4 matches 0 if score frostboltDuration spellStats > debuffDurationSlot4 atkmodifiers run scoreboard players operation debuffDurationSlot4 atkmodifiers = frostboltDuration spellStats
execute if score spellnumber spells matches 6 run execute if score ward slot4 matches 0 run scoreboard players operation speedDebuffSlot4 speedDebuffs += frostboltSpDebuff spellStats
execute if score spellnumber spells matches 6 run execute if score ward slot4 matches 0 run scoreboard players operation attackDebuffSlot4 atkmodifiers += frostboltDmgDebuff spellStats
execute if score spellnumber spells matches 6 run execute if score ward slot4 matches 0 run scoreboard players operation speed slot4 -= frostboltSpDebuff spellStats
execute if score spellnumber spells matches 6 run execute if score ward slot4 matches 0 if score shield slot4 matches ..0 run scoreboard players operation slot4 hp += shield slot4
execute if score spellnumber spells matches 6 run execute if score ward slot4 matches 1.. run function ch:wardslot4
execute if score spellnumber spells matches 6 run scoreboard players set spellbuffsp2 spells 0
execute if score spellnumber spells matches 6 run function ch:spellphasep1

#Heal
execute if score spellnumber spells matches 2 run scoreboard players operation spellHeal saves = heal spellStats
execute if score spellnumber spells matches 2 run scoreboard players operation spellHeal saves += spellbuffsp1 spells
execute if score spellnumber spells matches 2 run scoreboard players operation slot4 hp += spellHeal saves
execute if score spellnumber spells matches 2 run function ch:cleanseslot4
execute if score spellnumber spells matches 2 run scoreboard players set spellbuffsp1 spells 0
execute if score spellnumber spells matches 2 run scoreboard players set attackIsOngoingGame1 booleans 0

#Magic Missile
execute if score spellnumber spells matches 4 run scoreboard players add magicMissilex2 spells 1
execute if score spellnumber spells matches 4 run scoreboard players operation spellDmg saves = magicMissile spellStats
execute if score spellnumber spells matches 4 run scoreboard players operation spellDmg saves += spellbuffsp2 spells
execute if score spellnumber spells matches 4 run scoreboard players operation spellDmg saves += marks slot4
execute if score spellnumber spells matches 4 run scoreboard players operation spellDmg saves /= atkmultiplier slot4
execute if score spellnumber spells matches 4 run execute if score ward slot4 matches 0 run scoreboard players operation shield slot4 -= spellDmg saves
execute if score spellnumber spells matches 4 run execute if score ward slot4 matches 0 if score shield slot4 matches ..0 run scoreboard players operation slot4 hp += shield slot4
execute if score spellnumber spells matches 4 run execute if score ward slot4 matches 1.. run function ch:wardslot4
execute if score spellnumber spells matches 4 run execute if score magicMissilex2 spells matches 1 run function ch:spellgivetargetsp2
execute if score spellnumber spells matches 4 run execute if score magicMissilex2 spells matches 2 run scoreboard players set spellbuffsp2 spells 0
execute if score spellnumber spells matches 4 run execute if score magicMissilex2 spells matches 2 run clear @a[tag=p2] target
execute if score spellnumber spells matches 4 run execute if score magicMissilex2 spells matches 2 run function ch:spellphasep1
execute if score spellnumber spells matches 4 run execute if score magicMissilex2 spells matches 2 run scoreboard players set magicMissilex2 spells 0

#Protector's Rune
execute if score spellnumber spells matches 16 if score protectorsrune spellStats > durationSlot4 taunt run scoreboard players operation durationSlot4 taunt = protectorsrune spellStats
execute if score spellnumber spells matches 16 if score protectorsrune spellStats > durationSlot4 taunt if score ward slot4 matches 0 run scoreboard players operation marks slot4 += protectorsruneMarks spellStats
execute if score spellnumber spells matches 16 if score protectorsrune spellStats > durationSlot4 taunt if score ward slot4 matches 1.. run function ch:wardslot4
execute if score spellnumber spells matches 16 run scoreboard players set attackIsOngoingGame1 booleans 0

#Shield
execute if score spellnumber spells matches 8 run execute if score durationSlot4 shield < shieldDuration spellStats run scoreboard players operation durationSlot4 shield = shieldDuration spellStats
execute if score spellnumber spells matches 8 run scoreboard players operation shield slot4 += shield spellStats
execute if score spellnumber spells matches 8 run scoreboard players set attackIsOngoingGame1 booleans 0

#Ball Lightning
execute if score spellnumber spells matches 9 if score ward slot4 matches 0 run scoreboard players operation slot4 stun += shockOrb spellStats
execute if score spellnumber spells matches 9 if score ward slot4 matches 1.. run function ch:wardslot4
execute if score spellnumber spells matches 9 run function ch:spellphasep1

#Witches Brew
execute if score spellnumber spells matches 23 run execute if score ward slot4 matches 0 if score witchesBrewDuration spellStats > durationSlot4 speedDebuffs run scoreboard players operation durationSlot4 speedDebuffs = witchesBrewDuration spellStats
execute if score spellnumber spells matches 23 run execute if score ward slot4 matches 0 if score witchesBrewDuration spellStats > debuffDurationSlot4 atkmodifiers run scoreboard players operation debuffDurationSlot4 atkmodifiers = witchesBrewDuration spellStats
execute if score spellnumber spells matches 23 run execute if score ward slot4 matches 0 if score witchesBrewDuration spellStats > durationSlot4 poison run scoreboard players operation durationSlot4 poison = witchesBrewDuration spellStats
execute if score spellnumber spells matches 23 run execute if score ward slot4 matches 0 if score witchesBrewDuration spellStats > durationSlot4 burn run scoreboard players operation durationSlot4 burn = witchesBrewDuration spellStats
execute if score spellnumber spells matches 23 run execute if score ward slot4 matches 0 run scoreboard players operation speedDebuffSlot4 speedDebuffs += witchesBrewSpDebuff spellStats
execute if score spellnumber spells matches 23 run execute if score ward slot4 matches 0 run scoreboard players operation attackDebuffSlot4 atkmodifiers += witchesBrewDmgDebuff spellStats
execute if score spellnumber spells matches 23 run execute if score ward slot4 matches 0 run scoreboard players operation slot4Poison poison += witchesBrew spellStats
execute if score spellnumber spells matches 23 run execute if score ward slot4 matches 0 run scoreboard players operation slot4Burn burn += witchesBrewBurn spellStats
execute if score spellnumber spells matches 23 run execute if score ward slot4 matches 0 run scoreboard players operation speed slot4 -= witchesBrewSpDebuff spellStats
execute if score spellnumber spells matches 23 run execute if score ward slot4 matches 1.. run function ch:wardslot4
execute if score spellnumber spells matches 23 run function ch:spellphasep1

#Shifting Shadows Token
execute if score spellnumber spells matches -1 if score shadowsPart1 spells matches 5 if score ward slot4 matches 0 run scoreboard players set durationSlot5-4 fear 1
execute if score spellnumber spells matches -1 if score shadowsPart1 spells matches 6 if score ward slot4 matches 0 run scoreboard players set durationSlot6-4 fear 1
execute if score spellnumber spells matches -1 if score shadowsPart1 spells matches 7 if score ward slot4 matches 0 run scoreboard players set durationSlot7-4 fear 1
execute if score spellnumber spells matches -1 if score shadowsPart1 spells matches 8 if score ward slot4 matches 0 run scoreboard players set durationSlot8-4 fear 1
execute if score spellnumber spells matches -1 if score ward slot4 matches 1.. run function ch:wardslot4
execute if score spellnumber spells matches -1 run function ch:spellphasep1

#Shifting Shadows
execute if score spellnumber spells matches 28 run scoreboard players set shadowsPart1 spells 4
execute if score spellnumber spells matches 28 run function ch:spellgivetargetsp1
execute if score spellnumber spells matches 28 run scoreboard players set spellnumber spells -1

clear @p[tag=game1]
#fireball
execute if score spellnumber spells matches 1 run scoreboard players operation spellDmg saves = fireball spellStats
execute if score spellnumber spells matches 1 run scoreboard players operation spellDmg saves += spellbuffsp2 spells
execute if score spellnumber spells matches 1 run scoreboard players operation spellDmg saves += marks slot4
execute if score spellnumber spells matches 1 run scoreboard players operation spellDmg saves /= atkmultiplier slot4
execute if score spellnumber spells matches 1 run execute if score ward slot4 matches 0 run scoreboard players operation shield slot4 -= spellDmg saves
execute if score spellnumber spells matches 1 run execute if score ward slot4 matches 0 run scoreboard players operation slot4 hp += shield slot4
execute if score spellnumber spells matches 1 run execute if score ward slot4 matches 0 if score durationSlot4 burn < fireballDuration spellStats run scoreboard players operation durationSlot4 burn = fireballDuration spellStats
execute if score spellnumber spells matches 1 run execute if score ward slot4 matches 0 run scoreboard players operation slot4Burn burn += fireballBurn spellStats
execute if score spellnumber spells matches 1 run execute if score ward slot4 matches 1.. run function ch:wardslot4
execute if score spellnumber spells matches 1 run scoreboard players set spellbuffsp2 spells 0
execute if score spellnumber spells matches 1 run function ch:spellphasep1

#meteor
execute if score spellnumber spells matches 7 run scoreboard players operation spellDmg saves = meteor spellStats
execute if score spellnumber spells matches 7 if score slot7isatk booleans matches 1 run scoreboard players operation spellDmg saves += spellbuffsp2 spells
execute if score spellnumber spells matches 7 run scoreboard players operation spellDmg saves += marks slot4
execute if score spellnumber spells matches 7 run scoreboard players operation spellDmg saves /= atkmultiplier slot4
execute if score spellnumber spells matches 7 run execute if score ward slot4 matches 0 run scoreboard players operation shield slot4 -= spellDmg saves
execute if score spellnumber spells matches 7 run execute if score ward slot4 matches 0 if score shield slot4 matches ..0 run scoreboard players operation slot4 hp += shield slot4
execute if score spellnumber spells matches 7 run execute if score ward slot4 matches 1.. run function ch:wardslot4
execute if score spellnumber spells matches 7 run scoreboard players operation spellDmg saves = meteor spellStats
execute if score spellnumber spells matches 7 run scoreboard players operation spellDmg saves += spellbuffsp2 spells
execute if score spellnumber spells matches 7 run scoreboard players operation spellDmg saves += marks slot3
execute if score spellnumber spells matches 7 run scoreboard players operation spellDmg saves /= atkmultiplier slot3
execute if score spellnumber spells matches 7 run scoreboard players operation spellDmg saves /= meteorSplash spellStats
execute if score spellnumber spells matches 7 run execute if score ward slot3 matches 0 run scoreboard players operation shield slot3 -= spellDmg saves
execute if score spellnumber spells matches 7 run execute if score ward slot3 matches 0 if score shield slot3 matches ..0 run scoreboard players operation slot3 hp += shield slot3
execute if score spellnumber spells matches 7 run execute if score ward slot3 matches 1.. run function ch:wardslot3
execute if score spellnumber spells matches 7 run scoreboard players set spellbuffsp2 spells 0
execute if score spellnumber spells matches 7 run function ch:spellphasep1

#witchbolt
execute if score spellnumber spells matches 10 run scoreboard players operation spellDmg saves = witchbolt spellStats
execute if score spellnumber spells matches 10 run scoreboard players operation spellDmg saves += spellbuffsp2 spells
execute if score spellnumber spells matches 10 run scoreboard players operation spellDmg saves += marks slot4
execute if score spellnumber spells matches 10 run scoreboard players operation spellDmg saves /= atkmultiplier slot4
execute if score spellnumber spells matches 10 run execute if score ward slot4 matches 0 run scoreboard players operation shield slot4 -= spellDmg saves
execute if score spellnumber spells matches 10 run execute if score ward slot4 matches 0 if score shield slot4 matches ..0 run scoreboard players operation slot4 hp += shield slot4
execute if score spellnumber spells matches 10 run execute if score ward slot4 matches 1.. run function ch:wardslot4
execute if score spellnumber spells matches 10 run scoreboard players set spellbuffsp2 spells 0
execute if score spellnumber spells matches 10 run function ch:spellphasep1

#ward
execute if score spellnumber spells matches 19 run scoreboard players set ward slot4 1
execute if score spellnumber spells matches 19 run scoreboard players set attackIsOngoingGame1 booleans 0

#plague
execute if score spellnumber spells matches 21 run scoreboard players operation slot4Disease disease += plague spellStats
execute if score spellnumber spells matches 21 run function ch:spellphasep1
#Second wind
execute if score spellnumber spells matches 22 run execute if score durationSlot4 speedBuffs < secondWindDuration spellStats run scoreboard players operation durationSlot4 speedBuffs = secondWindDuration spellStats
execute if score spellnumber spells matches 22 run scoreboard players operation speedBuffSlot4 speedBuffs += secondWindSpeed spellStats
execute if score spellnumber spells matches 22 run scoreboard players operation speed slot4 += secondWindSpeed spellStats
execute if score spellnumber spells matches 22 if score slot4bleeding booleaneffects matches 0 run scoreboard players operation slot4 hp += secondWind spellStats
execute if score spellnumber spells matches 22 if score slot4bleeding booleaneffects matches 0 run scoreboard players operation slot4 hp += spellbuffsp1 spells
execute if score spellnumber spells matches 22 run scoreboard players set attackIsOngoingGame1 booleans 0
execute if score spellnumber spells matches 22 run scoreboard players set spellbuffsp1 spells 0

#fountain of youth
execute if score spellnumber spells matches 25 run execute if score disarmedslot4 booleaneffects < fountainOfYouthDuration spellStats run scoreboard players operation disarmedslot4 booleaneffects = fountainOfYouthDuration spellStats
execute if score spellnumber spells matches 25 if score slot4bleeding booleaneffects matches 0 run scoreboard players operation slot4 hp += fountainOfYouth spellStats
execute if score spellnumber spells matches 25 if score slot4bleeding booleaneffects matches 0 run scoreboard players operation slot4 hp += spellbuffsp1 spells
execute if score spellnumber spells matches 25 run scoreboard players set attackIsOngoingGame1 booleans 0
execute if score spellnumber spells matches 25 run scoreboard players set spellbuffsp1 spells 0

#overclock
execute if score spellnumber spells matches 27 run execute if score buffDurationSlot4 atkmodifiers < overclockDuration spellStats run scoreboard players operation buffDurationSlot4 atkmodifiers = overclockDuration spellStats
execute if score spellnumber spells matches 27 run scoreboard players operation attackBuffSlot4 atkmodifiers += overclock spellStats
execute if score spellnumber spells matches 27 run scoreboard players operation shield slot4 -= overclockAtk spellStats
execute if score spellnumber spells matches 27 if score shield slot4 matches ..0 run scoreboard players operation slot4 hp += shield slot4
execute if score spellnumber spells matches 27 run scoreboard players set attackIsOngoingGame1 booleans 0

#This goes at the bottom
execute if score shield slot1 matches ..0 run scoreboard players set shield slot1 0
execute if score shield slot2 matches ..0 run scoreboard players set shield slot2 0
execute if score shield slot3 matches ..0 run scoreboard players set shield slot3 0
execute if score shield slot4 matches ..0 run scoreboard players set shield slot4 0







