clear @p[tag=game1]
#fireball
execute if score spellnumber spells matches 3 run scoreboard players operation spellDmg saves = fireball spellStats
execute if score spellnumber spells matches 3 run scoreboard players operation spellDmg saves += spellbuffsp2 spells
execute if score spellnumber spells matches 3 run scoreboard players operation spellDmg saves += slot2 marks
execute if score spellnumber spells matches 3 run scoreboard players operation spellDmg saves /= atkmultiplier slot2
execute if score spellnumber spells matches 3 run execute if score ward slot2 matches 0 run scoreboard players operation shield slot2 -= spellDmg saves
execute if score spellnumber spells matches 3 run execute if score ward slot2 matches 0 run scoreboard players operation slot2 hp -= shield slot2
execute if score spellnumber spells matches 3 run execute if score ward slot2 matches 0 if score durationSlot2 burn < fireballDuration spellStats run scoreboard players operation durationSlot2 burn = fireballDuration spelltats
execute if score spellnumber spells matches 3 run execute if score ward slot2 matches 0 run scoreboard players operation slot1burn burn += fireballBurn spellStats
execute if score spellnumber spells matches 3 run execute if score ward slot2 matches 1.. run function ch:wardslot2
execute if score spellnumber spells matches 3 run scoreboard players set spellbuffsp2 spells 0
execute if score spellnumber spells matches 3 run function ch:spellphasep1

#Meteor
#meteor
execute if score spellnumber spells matches 7 run scoreboard players operation spellDmg saves = meteor spellStats
execute if score spellnumber spells matches 7 if score slot7isatk booleans matches 1 run scoreboard players operation spellDmg saves += spellbuffsp2 spells
execute if score spellnumber spells matches 7 run scoreboard players operation spellDmg saves += slot2 marks
execute if score spellnumber spells matches 7 run scoreboard players operation spellDmg saves /= atkmultiplier slot2
execute if score spellnumber spells matches 7 run execute if score ward slot2 matches 0 run scoreboard players operation shield slot2 -= spellDmg saves
execute if score spellnumber spells matches 7 run execute if score ward slot2 matches 0 if score shield slot2 matches ..0 run scoreboard players operation slot2 hp += shield slot2
execute if score spellnumber spells matches 7 run execute if score ward slot2 matches 1.. run function ch:wardslot2
execute if score spellnumber spells matches 7 run scoreboard players operation spellDmg saves -= slot2 marks
execute if score spellnumber spells matches 7 run scoreboard players operation spellDmg saves *= atkmultiplier slot2
execute if score spellnumber spells matches 7 run scoreboard players operation spellDmg saves += slot1 marks
execute if score spellnumber spells matches 7 run scoreboard players operation spellDmg saves /= atkmultiplier slot1
execute if score spellnumber spells matches 7 run scoreboard players operation spellDmg saves /= meteorSplash spells
execute if score spellnumber spells matches 7 run execute if score ward slot1 matches 0 run scoreboard players operation shield slot1 -= spellDmg saves
execute if score spellnumber spells matches 7 run execute if score ward slot1 matches 0 if score shield slot1 matches ..0 run scoreboard players operation slot1 hp += shield slot1
execute if score spellnumber spells matches 7 run execute if score ward slot1 matches 1.. run function ch:wardslot1
execute if score spellnumber spells matches 7 run scoreboard players operation spellDmg saves -= slot1 marks
execute if score spellnumber spells matches 7 run scoreboard players operation spellDmg saves *= atkmultiplier slot1
execute if score spellnumber spells matches 7 run scoreboard players operation spellDmg saves += slot3 marks
execute if score spellnumber spells matches 7 run scoreboard players operation spellDmg saves /= atkmultiplier slot3
execute if score spellnumber spells matches 7 run scoreboard players operation spellDmg saves /= meteorSplash spells
execute if score spellnumber spells matches 7 run execute if score ward slot3 matches 0 run scoreboard players operation shield slot3 -= spellDmg saves
execute if score spellnumber spells matches 7 run execute if score ward slot3 matches 0 if score shield slot3 matches ..0 run scoreboard players operation slot3 hp += shield slot3
execute if score spellnumber spells matches 7 run execute if score ward slot3 matches 1.. run function ch:wardslot3
execute if score spellnumber spells matches 7 run scoreboard players set spellbuffsp2 spells 0
execute if score spellnumber spells matches 7 run function ch:spellphasep1

#witchbolt
execute if score spellnumber spells matches 10 run scoreboard players operation spellDmg saves = witchbolt spellStats
execute if score spellnumber spells matches 10 run scoreboard players operation spellDmg saves += spellbuffsp2 spells
execute if score spellnumber spells matches 10 run scoreboard players operation spellDmg saves += slot2 marks
execute if score spellnumber spells matches 10 run scoreboard players operation spellDmg saves /= atkmultiplier slot2
execute if score spellnumber spells matches 10 run execute if score ward slot2 matches 0 run scoreboard players operation shield slot2 -= spellDmg saves
execute if score spellnumber spells matches 10 run execute if score ward slot2 matches 0 run scoreboard players operation slot2 hp -= shield slot2
execute if score spellnumber spells matches 10 run execute if score ward slot2 matches 1.. run function ch:wardslot2
execute if score spellnumber spells matches 10 run scoreboard players set spellbuffsp2 spells 0
execute if score spellnumber spells matches 10 run function ch:spellphasep1

#ward
execute if score spellnumber spells matches 19 run scoreboard players set ward slot2 1
execute if score spellnumber spells matches 19 run scoreboard players set attackIsOngoingGame1 booleans 0

#plague
execute if score spellnumber spells matches 21 run scoreboard players operation slot2Disease disease += plague spellStats
execute if score spellnumber spells matches 21 run function ch:spellphasep1
#Second wind
execute if score spellnumber spells matches 22 run execute if score durationSlot2 speedBuffs < secondWindDuration spellStats run scoreboard players operation durationSlot2 speedBuffs = secondWindDuration spellStats
execute if score spellnumber spells matches 22 run scoreboard players operation speedBuffSlot2 speedBuffs += secondWindSpeed spellStats
execute if score spellnumber spells matches 22 run scoreboard players operation speed slot2 += secondWindSpeed spellStats
execute if score spellnumber spells matches 22 if score slot2bleeding booleaneffects matches 0 run scoreboard players operation slot2 hp += secondWind spellStats
execute if score spellnumber spells matches 22 if score slot2bleeding booleaneffects matches 0 run scoreboard players operation slot2 hp += spellbuffsp1 spells
execute if score spellnumber spells matches 22 run scoreboard players set attackIsOngoingGame1 booleans 0
execute if score spellnumber spells matches 22 run scoreboard players set spellbuffsp1 spells 0

#fountain of youth
execute if score spellnumber spells matches 25 run execute if score diarmedslot2 booleaneffects < fountainOfYouthDuration spellStats run scoreboard players operation diarmedslot2 booleaneffects = fountainOfYouthDuration spellStats
execute if score spellnumber spells matches 25 if score slot2bleeding booleaneffects matches 0 run scoreboard players operation slot2 hp += fountainOfYouth spellStats
execute if score spellnumber spells matches 25 if score slot2bleeding booleaneffects matches 0 run scoreboard players operation slot2 hp += spellbuffsp1 spells
execute if score spellnumber spells matches 25 run scoreboard players set attackIsOngoingGame1 booleans 0
execute if score spellnumber spells matches 25 run scoreboard players set spellbuffsp1 spells 0

#overclock
execute if score spellnumber spells matches 27 run execute if score buffDurationSlot1 atkmodifiers < overclockDuration spellStats run scoreboard players operation buffDurationSlot1 atkmodifiers = overclockDuration spellStats
execute if score spellnumber spells matches 27 run scoreboard players operation attackBuffSlot2 atkmodifiers += overclock spellStats
execute if score spellnumber spells matches 27 run scoreboard players operation shield slot2 -= overclockAtk spellStats
execute if score spellnumber spells matches 27 if score shield slot2 matches ..0 run scoreboard players operation slot2 hp -= shield slot2
execute if score spellnumber spells matches 27 run scoreboard players set attackIsOngoingGame1 booleans 0


#This goes at the bottom
execute if score shield slot1 matches ..0 run scoreboard players set shield slot1 0
execute if score shield slot2 matches ..0 run scoreboard players set shield slot2 0
execute if score shield slot3 matches ..0 run scoreboard players set shield slot3 0
execute if score shield slot4 matches ..0 run scoreboard players set shield slot4 0

