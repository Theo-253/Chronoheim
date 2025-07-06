effect clear @a[tag=game1] weakness
clear @a[tag=game1]

#Dragonforge
execute if score spellnumber spells matches 26 run execute if score durationSlot5 shield < dragonforgeDuration spellStats run scoreboard players operation durationSlot5 shield = dragonforgeDuration spellStats 
execute if score spellnumber spells matches 26 run scoreboard players operation shield slot5 += dragonforge spellStats
execute if score spellnumber spells matches 26 run execute if score alivep2 deaths matches 1 run scoreboard players operation shield slot5 += dragonforge spellStats
execute if score spellnumber spells matches 26 run function ch:spellphasep1
execute if score spellnumber spells matches 26 run tellraw @a[tag=game1] ["",{"selector":"@p[tag=p2]"}," used Dragonforge on Slot 5!"]

#Embiggen
execute if score spellnumber spells matches 13 run execute if score buffDurationSlot5 atkmodifiers < embiggenDuration spellStats run scoreboard players operation buffDurationSlot5 atkmodifiers = embiggenDuration spellStats
execute if score spellnumber spells matches 13 run scoreboard players operation attackBuffSlot5 atkmodifiers += embiggenBuff spellStats
execute if score spellnumber spells matches 13 run execute if score durationSlot5 shield < embiggenDuration spellStats run scoreboard players operation durationSlot5 shield = embiggenDuration spellStats 
execute if score spellnumber spells matches 13 run scoreboard players operation shield slot5 += embiggen spellStats
execute if score spellnumber spells matches 13 run function ch:spellphasep1
execute if score spellnumber spells matches 13 run tellraw @a[tag=game1] ["",{"selector":"@p[tag=p2]"}," used Embiggen on Slot 5!"]

#Embrittle
execute if score spellnumber spells matches 12 if score ward slot5 matches 0 run execute if score debuffDurationSlot5 atkmodifiers < embrittleDuration spellStats run scoreboard players operation debuffDurationSlot5 atkmodifiers = embrittleDuration spellStats
execute if score spellnumber spells matches 12 if score ward slot5 matches 0 run scoreboard players operation attackDebuffSlot5 atkmodifiers += embrittle spellStats
execute if score spellnumber spells matches 12 if score ward slot5 matches 1.. run function ch:wardslot5
execute if score spellnumber spells matches 12 run scoreboard players set attackIsOngoingGame1 booleans 0
execute if score spellnumber spells matches 12 run tellraw @a[tag=game1] ["",{"selector":"@p[tag=p1]"}," used Embrittle on Slot 5!"]
#Evil Eye
execute if score spellnumber spells matches 15 if score ward slot5 matches 0 run scoreboard players operation marks slot5 += evilEye spellStats
execute if score spellnumber spells matches 15 if score ward slot5 matches 1.. run function ch:wardslot5
execute if score spellnumber spells matches 15 run scoreboard players set attackIsOngoingGame1 booleans 0
execute if score spellnumber spells matches 15 run tellraw @a[tag=game1] ["",{"selector":"@p[tag=p1]"}," used Evil Eye on Slot 5!"]

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
execute if score spellnumber spells matches 6 run tellraw @a[tag=game1] ["",{"selector":"@p[tag=p1]"}," used Frostbolt on Slot 5!"]

#Heal
execute if score spellnumber spells matches 2 run scoreboard players operation spellHeal saves = heal spellStats
execute if score spellnumber spells matches 2 run scoreboard players operation spellHeal saves += spellbuffsp2 spells
execute if score spellnumber spells matches 2 run scoreboard players operation slot5 hp += spellHeal saves
execute if score spellnumber spells matches 2 run function ch:cleanseslot5
execute if score spellnumber spells matches 2 run scoreboard players set spellbuffsp2 spells 0
execute if score spellnumber spells matches 2 run function ch:spellphasep1
execute if score spellnumber spells matches 2 run tellraw @a[tag=game1] ["",{"selector":"@p[tag=p2]"}," used Heal on Slot 5!"]

#Magic Missile
execute if score spellnumber spells matches 4 run scoreboard players add magicMissilex2 spells 1
execute if score spellnumber spells matches 4 run scoreboard players operation spellDmg saves = magicMissile spellStats
execute if score spellnumber spells matches 4 run scoreboard players operation spellDmg saves += spellbuffsp1 spells
execute if score spellnumber spells matches 4 run scoreboard players operation spellDmg saves += marks slot5
execute if score spellnumber spells matches 4 run scoreboard players operation spellDmg saves /= atkmultiplier slot5
execute if score spellnumber spells matches 4 run execute if score ward slot5 matches 0 run scoreboard players operation shield slot5 -= spellDmg saves
execute if score spellnumber spells matches 4 run execute if score ward slot5 matches 0 if score shield slot5 matches ..0 run scoreboard players operation slot5 hp += shield slot5
execute if score spellnumber spells matches 4 run execute if score ward slot5 matches 1.. run function ch:wardslot5
execute if score spellnumber spells matches 4 run tellraw @a[tag=game1] ["",{"selector":"@p[tag=p1]"}," smited Slot 5 with Magic Missle!"]
execute if score spellnumber spells matches 4 run execute if score magicMissilex2 spells matches 1 run function ch:spellgivetargetsp1
execute if score spellnumber spells matches 4 run execute if score magicMissilex2 spells matches 2 run scoreboard players set spellbuffsp1 spells 0
execute if score spellnumber spells matches 4 run execute if score magicMissilex2 spells matches 2 run clear @a[tag=p1] target
execute if score spellnumber spells matches 4 run execute if score magicMissilex2 spells matches 2 run scoreboard players set attackIsOngoingGame1 booleans 0
execute if score spellnumber spells matches 4 run execute if score magicMissilex2 spells matches 2 run scoreboard players set magicMissilex2 spells 0

#Protector's Rune
execute if score spellnumber spells matches 16 if score protectorsrune spellStats > durationSlot5 taunt run scoreboard players operation durationSlot5 taunt = protectorsrune spellStats
execute if score spellnumber spells matches 16 if score protectorsrune spellStats > durationSlot5 taunt if score ward slot5 matches 0 run scoreboard players operation marks slot5 += protectorsruneMarks spellStats
execute if score spellnumber spells matches 16 if score protectorsrune spellStats > durationSlot5 taunt if score ward slot5 matches 1.. run function ch:wardslot5
execute if score spellnumber spells matches 16 run function ch:spellphasep1
execute if score spellnumber spells matches 16 run tellraw @a[tag=game1] ["",{"selector":"@p[tag=p2]"}," used Protector's Rune on Slot 5!"]

#Shield
execute if score spellnumber spells matches 8 run execute if score durationSlot5 shield < shieldDuration spellStats run scoreboard players operation durationSlot5 shield = shieldDuration spellStats 
execute if score spellnumber spells matches 8 run scoreboard players operation shield slot5 += shield spellStats
execute if score spellnumber spells matches 8 run function ch:spellphasep1
execute if score spellnumber spells matches 8 run tellraw @a[tag=game1] ["",{"selector":"@p[tag=p2]"}," used Shield on Slot 5!"]

#Ball Lightning
execute if score spellnumber spells matches 9 if score ward slot5 matches 0 run scoreboard players operation slot5 stun += shockOrb spellStats
execute if score spellnumber spells matches 9 if score ward slot5 matches 1.. run function ch:wardslot5
execute if score spellnumber spells matches 9 run scoreboard players set attackIsOngoingGame1 booleans 0
execute if score spellnumber spells matches 9 run tellraw @a[tag=game1] ["",{"selector":"@p[tag=p1]"}," used Ball Lightning on Slot 5!"]

#Witches Brew
execute if score spellnumber spells matches 23 run execute if score ward slot5 matches 0 if score witchesBrewDuration spellStats > durationSlot5 speedDebuffs run scoreboard players operation durationSlot5 speedDebuffs = witchesBrewDuration spellStats
execute if score spellnumber spells matches 23 run execute if score ward slot5 matches 0 if score witchesBrewDuration spellStats > debuffDurationSlot5 atkmodifiers run scoreboard players operation debuffDurationSlot5 atkmodifiers = witchesBrewDuration spellStats
execute if score spellnumber spells matches 23 run execute if score ward slot5 matches 0 if score witchesBrewDuration spellStats > durationSlot5 poison run scoreboard players operation durationSlot5 poison = witchesBrewDuration spellStats
execute if score spellnumber spells matches 23 run execute if score ward slot5 matches 0 if score witchesBrewDuration spellStats > durationSlot5 burn run scoreboard players operation durationSlot5 burn = witchesBrewDuration spellStats
execute if score spellnumber spells matches 23 run execute if score ward slot5 matches 0 run scoreboard players operation speedDebuffSlot5 speedDebuffs += witchesBrewSpDebuff spellStats
execute if score spellnumber spells matches 23 run execute if score ward slot5 matches 0 run scoreboard players operation attackDebuffSlot5 atkmodifiers += witchesBrewDmgDebuff spellStats
execute if score spellnumber spells matches 23 run execute if score ward slot5 matches 0 run scoreboard players operation slot5Poison poison += witchesBrew spellStats
execute if score spellnumber spells matches 23 run execute if score ward slot5 matches 0 run scoreboard players operation slot5Burn burn += witchesBrewBurn spellStats
execute if score spellnumber spells matches 23 run execute if score ward slot5 matches 0 run scoreboard players operation speed slot5 -= witchesBrewSpDebuff spellStats
execute if score spellnumber spells matches 23 run execute if score ward slot5 matches 1.. run function ch:wardslot5
execute if score spellnumber spells matches 23 run scoreboard players set attackIsOngoingGame1 booleans 0
execute if score spellnumber spells matches 23 run tellraw @a[tag=game1] ["",{"selector":"@p[tag=p1]"}," used Witches Brew on Slot 5!"]

#Shifting Shadows Token
execute if score spellnumber spells matches -1 if score shadowsPart1 spells matches 1 if score ward slot5 matches 0 run scoreboard players set durationSlot1-5 fear 1 
execute if score spellnumber spells matches -1 if score shadowsPart1 spells matches 2 if score ward slot5 matches 0 run scoreboard players set durationSlot2-5 fear 1 
execute if score spellnumber spells matches -1 if score shadowsPart1 spells matches 3 if score ward slot5 matches 0 run scoreboard players set durationSlot3-5 fear 1 
execute if score spellnumber spells matches -1 if score shadowsPart1 spells matches 4 if score ward slot5 matches 0 run scoreboard players set durationSlot4-5 fear 1
execute if score spellnumber spells matches -1 if score ward slot5 matches 1.. run function ch:wardslot5
execute if score spellnumber spells matches -1 run scoreboard players set attackIsOngoingGame1 booleans 0
execute if score spellnumber spells matches -1 run tellraw @a[tag=game1] ["",{"selector":"@p[tag=p1]"}," used Shifting Shadows to fear Slot 5!"]

#Shifting Shadows
execute if score spellnumber spells matches 28 run scoreboard players set shadowsPart1 spells 5
execute if score spellnumber spells matches 28 run function ch:spellgivetargetsp2
execute if score spellnumber spells matches 28 run scoreboard players set spellnumber spells -1
execute if score spellnumber spells matches 28 run tellraw @a[tag=game1] ["",{"selector":"@p[tag=p2]"}," used Shifting Shadows to make Slot 5 scary!"]
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
execute if score spellnumber spells matches 1 run tellraw @a[tag=game1] ["",{"selector":"@p[tag=p1]"}," used Fireball on Slot 5!"]
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
execute if score spellnumber spells matches 7 run tellraw @a[tag=game1] ["",{"selector":"@p[tag=p1]"}," used Meteor on Slot 5!"]

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
execute if score spellnumber spells matches 10 run tellraw @a[tag=game1] ["",{"selector":"@p[tag=p1]"}," used Witch Bolt on Slot 5!"]
#ward
execute if score spellnumber spells matches 19 run scoreboard players set ward slot5 1
execute if score spellnumber spells matches 19 run function ch:spellphasep1
execute if score spellnumber spells matches 26 run tellraw @a[tag=game1] ["",{"selector":"@p[tag=p2]"}," used Ward on Slot 5!"]
#plague
execute if score spellnumber spells matches 21 if score ward slot5 matches 0 run scoreboard players operation slot5Disease disease += plague spellStats
execute if score spellnumber spells matches 21 if score ward slot5 matches 1.. run function ch:wardslot5
execute if score spellnumber spells matches 21 run scoreboard players set attackIsOngoingGame1 booleans 0
execute if score spellnumber spells matches 21 run tellraw @a[tag=game1] ["",{"selector":"@p[tag=p1]"}," used Plague on Slot 5!"]

#Second wind
execute if score spellnumber spells matches 22 run execute if score durationSlot5 speedBuffs < secondWindDuration spellStats run scoreboard players operation durationSlot5 speedBuffs = secondWindDuration spellStats
execute if score spellnumber spells matches 22 run scoreboard players operation speedBuffSlot5 speedBuffs += secondWindSpeed spellStats
execute if score spellnumber spells matches 22 run scoreboard players operation speed slot5 += secondWindSpeed spellStats
execute if score spellnumber spells matches 22 if score slot5bleeding booleaneffects matches 0 run scoreboard players operation slot5 hp += secondWind spellStats
execute if score spellnumber spells matches 22 if score slot5bleeding booleaneffects matches 0 run scoreboard players operation slot5 hp += spellbuffsp2 spells
execute if score spellnumber spells matches 22 run function ch:spellphasep1
execute if score spellnumber spells matches 22 run scoreboard players set spellbuffsp2 spells 0
execute if score spellnumber spells matches 22 run tellraw @a[tag=game1] ["",{"selector":"@p[tag=p2]"}," used Second Wind on Slot 5!"]
#fountain of youth
execute if score spellnumber spells matches 25 run execute if score disarmedslot5 booleaneffects < fountainOfYouthDuration spellStats run scoreboard players operation disarmedslot5 booleaneffects = fountainOfYouthDuration spellStats
execute if score spellnumber spells matches 25 if score slot5bleeding booleaneffects matches 0 run scoreboard players operation slot5 hp += fountainOfYouth spellStats
execute if score spellnumber spells matches 25 if score slot5bleeding booleaneffects matches 0 run scoreboard players operation slot5 hp += spellbuffsp2 spells
execute if score spellnumber spells matches 25 run function ch:spellphasep1
execute if score spellnumber spells matches 25 run scoreboard players set spellbuffsp2 spells 0
execute if score spellnumber spells matches 25 run tellraw @a[tag=game1] ["",{"selector":"@p[tag=p2]"}," used Fountain of Youth on Slot 5!"]
#overclock
execute if score spellnumber spells matches 27 run execute if score buffDurationSlot5 atkmodifiers < overclockDuration spellStats run scoreboard players operation buffDurationSlot5 atkmodifiers = overclockDuration spellStats
execute if score spellnumber spells matches 27 run scoreboard players operation attackBuffSlot5 atkmodifiers += overclock spellStats
execute if score spellnumber spells matches 27 run scoreboard players operation shield slot5 -= overclockAtk spellStats
execute if score spellnumber spells matches 27 if score shield slot5 matches ..0 run scoreboard players operation slot5 hp += shield slot5
execute if score spellnumber spells matches 27 run function ch:spellphasep1
execute if score spellnumber spells matches 27 run tellraw @a[tag=game1] ["",{"selector":"@p[tag=p2]"}," used Overclock on Slot 5!"]


#This goes at the bottom
execute if score shield slot5 matches ..0 run scoreboard players set shield slot5 0
execute if score shield slot6 matches ..0 run scoreboard players set shield slot6 0
execute if score shield slot7 matches ..0 run scoreboard players set shield slot7 0
execute if score shield slot8 matches ..0 run scoreboard players set shield slot8 0

