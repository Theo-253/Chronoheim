effect clear @a[tag=game1] weakness
clear @a[tag=game1]

#Dragonforge
execute if score spellnumber spells matches 26 run execute if score durationSlot1 shield < dragonforgeDuration spellStats run scoreboard players operation durationSlot1 shield = dragonforgeDuration spellStats 
execute if score spellnumber spells matches 26 run scoreboard players operation shield slot1 += dragonforge spellStats
execute if score spellnumber spells matches 26 run execute if score alivep1 deaths matches 1 run scoreboard players operation shield slot1 += dragonforge spellStats
execute if score spellnumber spells matches 26 run scoreboard players set attackIsOngoingGame1 booleans 0

#Embiggen
execute if score spellnumber spells matches 13 run execute if score buffDurationSlot1 atkmodifiers < embiggenDuration spellStats run scoreboard players operation buffDurationSlot1 atkmodifiers = embiggenDuration spellStats
execute if score spellnumber spells matches 13 run scoreboard players operation attackBuffSlot1 atkmodifiers += embiggenBuff spellStats
execute if score spellnumber spells matches 13 run execute if score durationSlot1 shield < embiggenDuration spellStats run scoreboard players operation durationSlot1 shield = embiggenDuration spellStats 
execute if score spellnumber spells matches 13 run scoreboard players operation shield slot1 += embiggen spellStats
execute if score spellnumber spells matches 13 run scoreboard players set attackIsOngoingGame1 booleans 0

#Embrittle
execute if score spellnumber spells matches 12 if score ward slot1 matches 0 run execute if score debuffDurationSlot1 atkmodifiers < embrittleDuration spellStats run scoreboard players operation debuffDurationSlot1 atkmodifiers = embrittleDuration spellStats
execute if score spellnumber spells matches 12 if score ward slot1 matches 0 run scoreboard players operation attackDebuffSlot1 atkmodifiers += embrittle spellStats
execute if score spellnumber spells matches 12 if score ward slot1 matches 1.. run function ch:wardslot1
execute if score spellnumber spells matches 12 run function ch:spellphasep1

#Evil Eye
execute if score spellnumber spells matches 15 if score ward slot1 matches 0 run scoreboard players operation marks slot1 += evilEye spellStats
execute if score spellnumber spells matches 15 if score ward slot1 matches 1.. run function ch:wardslot1
execute if score spellnumber spells matches 15 run function ch:spellphasep1

#Frostbolt
execute if score spellnumber spells matches 6 run scoreboard players operation spellDmg saves = frostbolt spellStats
execute if score spellnumber spells matches 6 run scoreboard players operation spellDmg saves += spellbuffsp2 spells
execute if score spellnumber spells matches 6 run scoreboard players operation spellDmg saves += marks slot1
execute if score spellnumber spells matches 6 run scoreboard players operation spellDmg saves /= atkmultiplier slot1
execute if score spellnumber spells matches 6 run execute if score ward slot1 matches 0 run scoreboard players operation shield slot1 -= spellDmg saves
execute if score spellnumber spells matches 6 run execute if score ward slot1 matches 0 if score frostboltDuration spellStats > durationSlot1 speedDebuffs run scoreboard players operation durationSlot1 speedDebuffs = frostboltDuration spellStats
execute if score spellnumber spells matches 6 run execute if score ward slot1 matches 0 if score frostboltDuration spellStats > debuffDurationSlot1 atkmodifiers run scoreboard players operation debuffDurationSlot1 atkmodifiers = frostboltDuration spellStats
execute if score spellnumber spells matches 6 run execute if score ward slot1 matches 0 run scoreboard players operation speedDebuffSlot1 speedDebuffs += frostboltSpDebuff spellStats
execute if score spellnumber spells matches 6 run execute if score ward slot1 matches 0 run scoreboard players operation attackDebuffSlot1 atkmodifiers += frostboltDmgDebuff spellStats
execute if score spellnumber spells matches 6 run execute if score ward slot1 matches 0 run scoreboard players operation speed slot1 -= frostboltSpDebuff spellStats
execute if score spellnumber spells matches 6 run execute if score ward slot1 matches 0 if score shield slot1 matches ..0 run scoreboard players operation slot1 hp += shield slot1
execute if score spellnumber spells matches 6 run execute if score ward slot1 matches 1.. run function ch:wardslot1
execute if score spellnumber spells matches 6 run scoreboard players set spellbuffsp2 spells 0
execute if score spellnumber spells matches 6 run function ch:spellphasep1

#Heal
execute if score spellnumber spells matches 2 run scoreboard players operation spellHeal saves = heal spellStats
execute if score spellnumber spells matches 2 run scoreboard players operation spellHeal saves += spellbuffsp1 spells
execute if score spellnumber spells matches 2 run scoreboard players operation slot1 hp += spellHeal saves
execute if score spellnumber spells matches 2 run function ch:cleanseslot1
execute if score spellnumber spells matches 2 run scoreboard players set spellbuffsp1 spells 0
execute if score spellnumber spells matches 2 run scoreboard players set attackIsOngoingGame1 booleans 0

#Magic Missile
execute if score spellnumber spells matches 4 run scoreboard players add magicMissilex2 spells 1
execute if score spellnumber spells matches 4 run scoreboard players operation spellDmg saves = magicMissile spellStats
execute if score spellnumber spells matches 4 run scoreboard players operation spellDmg saves += spellbuffsp2 spells
execute if score spellnumber spells matches 4 run scoreboard players operation spellDmg saves += marks slot1
execute if score spellnumber spells matches 4 run scoreboard players operation spellDmg saves /= atkmultiplier slot1
execute if score spellnumber spells matches 4 run execute if score ward slot1 matches 0 run scoreboard players operation shield slot1 -= spellDmg saves
execute if score spellnumber spells matches 4 run execute if score ward slot1 matches 0 if score shield slot1 matches ..0 run scoreboard players operation slot1 hp += shield slot1
execute if score spellnumber spells matches 4 run execute if score ward slot1 matches 1.. run function ch:wardslot1
#cursed line of code. This line of code doesn't work at all. That's why there's nothing here. It's cursed. There was a line above it that said magic missle! magic missile! I smite thee with magic missile! and one below it that said magic missle! magic missile! I skip thee with magic missile! Both of those lines triggered, but this one, for whatever reason, was skipped. Anyways: sigh starch lord is the most overrated card in the entire game. I can't stand it when people think starch lord is good. You guys, this is a 4 cost card that has 2 attack and 4 health. It has garbage stats. Now let's look at it's abilities. When you play a root, it gets +1/+1. Thats almost no- think about it. In order to get this up to the actual stats that it needs to be as a 4 cost card, this would have to buff like 2 roots just to break even. It would have to grow 3 roots to actually be viable. The fact that people think that it is a good idea to start drawing cards on turn 5, it really means you have no idea how to play pvz heroes. It's way too late! This is- it's- you dont make a deck that has roots in it, that's not a good strategy, there are some good roots in the game but you just have to put too many roots in it. It's drawing cards on turn 5, the last turn you're gonna be drawing cards as a plant player is going to be on turn 3. it's so overrated, it's just a big piece of trash, just look at this guy, a big ugly guy. it's based on by the way the worst Marvel superhero in the entire Marvel Fra- actually universe of Superheroes in the entire history of the planet, star-lord, who is a simp, douchebag, has no superpowers, is the lamest, dumb. and do you know what, it's appropriate cuz this is the stupidest card in the game and it's based on the stupidest Marvel superhero ever. This is so overrated, It's so grunts it's so, I'm sticking this in F tier I don't even care.
execute if score spellnumber spells matches 4 run execute if score magicMissilex2 spells matches 1 run function ch:spellgivetargetsp2
execute if score spellnumber spells matches 4 run execute if score magicMissilex2 spells matches 2 run scoreboard players set spellbuffsp2 spells 0
execute if score spellnumber spells matches 4 run execute if score magicMissilex2 spells matches 2 run clear @a[tag=p2] target
execute if score spellnumber spells matches 4 run execute if score magicMissilex2 spells matches 2 run function ch:spellphasep1
execute if score spellnumber spells matches 4 run execute if score magicMissilex2 spells matches 2 run scoreboard players set magicMissilex2 spells 0

#Protector's Rune
execute if score spellnumber spells matches 16 if score protectorsrune spellStats > durationSlot1 taunt run scoreboard players operation durationSlot1 taunt = protectorsrune spellStats
execute if score spellnumber spells matches 16 if score protectorsrune spellStats > durationSlot1 taunt if score ward slot1 matches 0 run scoreboard players operation marks slot1 += protectorsruneMarks spellStats
execute if score spellnumber spells matches 16 if score protectorsrune spellStats > durationSlot1 taunt if score ward slot1 matches 1.. run function ch:wardslot1
execute if score spellnumber spells matches 16 run scoreboard players set attackIsOngoingGame1 booleans 0

#Shield
execute if score spellnumber spells matches 8 run execute if score durationSlot1 shield < shieldDuration spellStats run scoreboard players operation durationSlot1 shield = shieldDuration spellStats 
execute if score spellnumber spells matches 8 run scoreboard players operation shield slot1 += shield spellStats
execute if score spellnumber spells matches 8 run scoreboard players set attackIsOngoingGame1 booleans 0

#Ball Lightning
execute if score spellnumber spells matches 9 if score ward slot1 matches 0 run scoreboard players operation slot1 stun += shockOrb spellStats
execute if score spellnumber spells matches 9 if score ward slot1 matches 1.. run function ch:wardslot1
execute if score spellnumber spells matches 9 run function ch:spellphasep1

#Witches Brew
execute if score spellnumber spells matches 23 run execute if score ward slot1 matches 0 if score witchesBrewDuration spellStats > durationSlot1 speedDebuffs run scoreboard players operation durationSlot1 speedDebuffs = witchesBrewDuration spellStats
execute if score spellnumber spells matches 23 run execute if score ward slot1 matches 0 if score witchesBrewDuration spellStats > debuffDurationSlot1 atkmodifiers run scoreboard players operation debuffDurationSlot1 atkmodifiers = witchesBrewDuration spellStats
execute if score spellnumber spells matches 23 run execute if score ward slot1 matches 0 if score witchesBrewDuration spellStats > durationSlot1 poison run scoreboard players operation durationSlot1 poison = witchesBrewDuration spellStats
execute if score spellnumber spells matches 23 run execute if score ward slot1 matches 0 if score witchesBrewDuration spellStats > durationSlot1 burn run scoreboard players operation durationSlot1 burn = witchesBrewDuration spellStats
execute if score spellnumber spells matches 23 run execute if score ward slot1 matches 0 run scoreboard players operation speedDebuffSlot1 speedDebuffs += witchesBrewSpDebuff spellStats
execute if score spellnumber spells matches 23 run execute if score ward slot1 matches 0 run scoreboard players operation attackDebuffSlot1 atkmodifiers += witchesBrewDmgDebuff spellStats
execute if score spellnumber spells matches 23 run execute if score ward slot1 matches 0 run scoreboard players operation slot1Poison poison += witchesBrew spellStats
execute if score spellnumber spells matches 23 run execute if score ward slot1 matches 0 run scoreboard players operation slot1Burn burn += witchesBrewBurn spellStats
execute if score spellnumber spells matches 23 run execute if score ward slot1 matches 0 run scoreboard players operation speed slot1 -= witchesBrewSpDebuff spellStats
execute if score spellnumber spells matches 23 run execute if score ward slot1 matches 1.. run function ch:wardslot1
execute if score spellnumber spells matches 23 run function ch:spellphasep1

#Shifting Shadows Token
execute if score spellnumber spells matches -1 if score shadowsPart1 spells matches 5 if score ward slot1 matches 0 run scoreboard players set durationSlot5-1 fear 1 
execute if score spellnumber spells matches -1 if score shadowsPart1 spells matches 6 if score ward slot1 matches 0 run scoreboard players set durationSlot6-1 fear 1 
execute if score spellnumber spells matches -1 if score shadowsPart1 spells matches 7 if score ward slot1 matches 0 run scoreboard players set durationSlot7-1 fear 1 
execute if score spellnumber spells matches -1 if score shadowsPart1 spells matches 8 if score ward slot1 matches 0 run scoreboard players set durationSlot8-1 fear 1
execute if score spellnumber spells matches -1 if score ward slot1 matches 1.. run function ch:wardslot1
execute if score spellnumber spells matches -1 run function ch:spellphasep1

#Shifting Shadows
execute if score spellnumber spells matches 28 run scoreboard players set shadowsPart1 spells 1
execute if score spellnumber spells matches 28 run function ch:spellgivetargetsp1
execute if score spellnumber spells matches 28 run scoreboard players set spellnumber spells -1

clear @p[tag=game1]
#fireball
execute if score spellnumber spells matches 1 run scoreboard players operation spellDmg saves = fireball spellStats
execute if score spellnumber spells matches 1 run scoreboard players operation spellDmg saves += spellbuffsp2 spells
execute if score spellnumber spells matches 1 run scoreboard players operation spellDmg saves += marks slot1
execute if score spellnumber spells matches 1 run scoreboard players operation spellDmg saves /= atkmultiplier slot1
execute if score spellnumber spells matches 1 run execute if score ward slot1 matches 0 run scoreboard players operation shield slot1 -= spellDmg saves
execute if score spellnumber spells matches 1 run execute if score ward slot1 matches 0 run scoreboard players operation slot1 hp += shield slot1
execute if score spellnumber spells matches 1 run execute if score ward slot1 matches 0 if score durationSlot1 burn < fireballDuration spellStats run scoreboard players operation durationSlot1 burn = fireballDuration spellStats
execute if score spellnumber spells matches 1 run execute if score ward slot1 matches 0 run scoreboard players operation slot1Burn burn += fireballBurn spellStats
execute if score spellnumber spells matches 1 run execute if score ward slot1 matches 1.. run function ch:wardslot1
execute if score spellnumber spells matches 1 run scoreboard players set spellbuffsp2 spells 0
execute if score spellnumber spells matches 1 run function ch:spellphasep1

#meteor
execute if score spellnumber spells matches 7 run scoreboard players operation spellDmg saves = meteor spellStats
execute if score spellnumber spells matches 7 run scoreboard players operation spellDmg saves += spellbuffsp2 spells
execute if score spellnumber spells matches 7 run scoreboard players operation spellDmg saves += marks slot1
execute if score spellnumber spells matches 7 run scoreboard players operation spellDmg saves /= atkmultiplier slot1
execute if score spellnumber spells matches 7 run execute if score ward slot1 matches 0 run scoreboard players operation shield slot1 -= spellDmg saves
execute if score spellnumber spells matches 7 run execute if score ward slot1 matches 0 if score shield slot1 matches ..0 run scoreboard players operation slot1 hp += shield slot1
execute if score spellnumber spells matches 7 run execute if score ward slot1 matches 1.. run function ch:wardslot1
execute if score spellnumber spells matches 7 run scoreboard players operation spellDmg saves = meteor spellStats
execute if score spellnumber spells matches 7 run scoreboard players operation spellDmg saves += spellbuffsp2 spells
execute if score spellnumber spells matches 7 run scoreboard players operation spellDmg saves += marks slot2
execute if score spellnumber spells matches 7 run scoreboard players operation spellDmg saves /= atkmultiplier slot2
execute if score spellnumber spells matches 7 run scoreboard players operation spellDmg saves /= meteorSplash spellStats
execute if score spellnumber spells matches 7 run execute if score ward slot2 matches 0 run scoreboard players operation shield slot2 -= spellDmg saves
execute if score spellnumber spells matches 7 run execute if score ward slot2 matches 0 if score shield slot2 matches ..0 run scoreboard players operation slot2 hp += shield slot2
execute if score spellnumber spells matches 7 run execute if score ward slot2 matches 1.. run function ch:wardslot1
execute if score spellnumber spells matches 7 run scoreboard players set spellbuffsp2 spells 0
execute if score spellnumber spells matches 7 run function ch:spellphasep1

#witchbolt
execute if score spellnumber spells matches 10 run scoreboard players operation spellDmg saves = witchbolt spellStats
execute if score spellnumber spells matches 10 run scoreboard players operation spellDmg saves += spellbuffsp2 spells
execute if score spellnumber spells matches 10 run scoreboard players operation spellDmg saves += marks slot1
execute if score spellnumber spells matches 10 run scoreboard players operation spellDmg saves /= atkmultiplier slot1
execute if score spellnumber spells matches 10 run execute if score ward slot1 matches 0 run scoreboard players operation shield slot1 -= spellDmg saves
execute if score spellnumber spells matches 10 run execute if score ward slot1 matches 0 if score shield slot1 matches ..0 run scoreboard players operation slot1 hp += shield slot1
execute if score spellnumber spells matches 10 run execute if score ward slot1 matches 1.. run function ch:wardslot1
execute if score spellnumber spells matches 10 run scoreboard players set spellbuffsp2 spells 0
execute if score spellnumber spells matches 10 run function ch:spellphasep1

#ward
execute if score spellnumber spells matches 19 run scoreboard players set ward slot1 1
execute if score spellnumber spells matches 19 run scoreboard players set attackIsOngoingGame1 booleans 0

#plague
execute if score spellnumber spells matches 21 run scoreboard players operation slot1Disease disease += plague spellStats
execute if score spellnumber spells matches 21 run function ch:spellphasep1
#Second wind
execute if score spellnumber spells matches 22 run execute if score durationSlot1 speedBuffs < secondWindDuration spellStats run scoreboard players operation durationSlot1 speedBuffs = secondWindDuration spellStats
execute if score spellnumber spells matches 22 run scoreboard players operation speedBuffSlot1 speedBuffs += secondWindSpeed spellStats
execute if score spellnumber spells matches 22 run scoreboard players operation speed slot1 += secondWindSpeed spellStats
execute if score spellnumber spells matches 22 if score slot1bleeding booleaneffects matches 0 run scoreboard players operation slot1 hp += secondWind spellStats
execute if score spellnumber spells matches 22 if score slot1bleeding booleaneffects matches 0 run scoreboard players operation slot1 hp += spellbuffsp1 spells
execute if score spellnumber spells matches 22 run scoreboard players set attackIsOngoingGame1 booleans 0
execute if score spellnumber spells matches 22 run scoreboard players set spellbuffsp1 spells 0

#fountain of youth
execute if score spellnumber spells matches 25 run execute if score disarmedslot1 booleaneffects < fountainOfYouthDuration spellStats run scoreboard players operation disarmedslot1 booleaneffects = fountainOfYouthDuration spellStats
execute if score spellnumber spells matches 25 if score slot1bleeding booleaneffects matches 0 run scoreboard players operation slot1 hp += fountainOfYouth spellStats
execute if score spellnumber spells matches 25 if score slot1bleeding booleaneffects matches 0 run scoreboard players operation slot1 hp += spellbuffsp1 spells
execute if score spellnumber spells matches 25 run scoreboard players set attackIsOngoingGame1 booleans 0
execute if score spellnumber spells matches 25 run scoreboard players set spellbuffsp1 spells 0

#overclock
execute if score spellnumber spells matches 27 run execute if score buffDurationSlot1 atkmodifiers < overclockDuration spellStats run scoreboard players operation buffDurationSlot1 atkmodifiers = overclockDuration spellStats
execute if score spellnumber spells matches 27 run scoreboard players operation attackBuffSlot1 atkmodifiers += overclock spellStats
execute if score spellnumber spells matches 27 run scoreboard players operation shield slot1 -= overclockAtk spellStats
execute if score spellnumber spells matches 27 if score shield slot1 matches ..0 run scoreboard players operation slot1 hp += shield slot1
execute if score spellnumber spells matches 27 run scoreboard players set attackIsOngoingGame1 booleans 0


#This goes at the bottom
execute if score shield slot1 matches ..0 run scoreboard players set shield slot1 0
execute if score shield slot1 matches ..0 run scoreboard players set shield slot1 0
execute if score shield slot3 matches ..0 run scoreboard players set shield slot3 0
execute if score shield slot4 matches ..0 run scoreboard players set shield slot4 0

