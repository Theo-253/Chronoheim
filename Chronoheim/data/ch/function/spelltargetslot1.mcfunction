effect clear @a[tag=game1] weakness
clear @p[tag=game1]

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
execute if score spellnumber spells matches 6 run execute if score ward slot1 matches 0 if score frostboltSpDebuffDuration spellStats > durationslot1 speedDebuffs run scoreboard players operation durationSlot1 speedDebuffs = frostboltSpDebuffDuration spellStats
execute if score spellnumber spells matches 6 run execute if score ward slot1 matches 0 if score frostboltDmgDebuffDuration spellStats > debuffDurationSlot1 atkmodifiers run scoreboard players operation debuffDurationSlot1 atkmodifiers = frostboltDmgDebuffDuration spellStats
execute if score spellnumber spells matches 6 run execute if score ward slot1 matches 0 run scoreboard players operation durationSlot1 speedDebuffs += frostboltSpDebuffDuration spellStats
execute if score spellnumber spells matches 6 run execute if score ward slot1 matches 0 run scoreboard players operation debuffDurationSlot1 atkmodifiers += frostboltDmgDebuffDuration spellStats
execute if score spellnumber spells matches 6 run execute if score ward slot1 matches 0 run scoreboard players operation speed slot1 -= frostboltSpDebuff spellStats
execute if score spellnumber spells matches 6 run execute if score ward slot1 matches 0 if score shield slot1 matches ..0 run scoreboard players operation slot1 hp += shield slot1
execute if score spellnumber spells matches 6 run execute if score ward slot1 matches 1.. run function ch:wardslot1
execute if score spellnumber spells matches 6 run scoreboard players set spellbuffsp2 spells 0
execute if score spellnumber spells matches 6 run function ch:spellphasep1

#Heal
execute if score spellnumber spells matches 3 run scoreboard players operation spellHeal saves = heal spellstats
execute if score spellnumber spells matches 3 run scoreboard players operation spellHeal saves += spellbuffsp1 spells
execute if score spellnumber spells matches 3 run scoreboard players operation slot1 hp += spellHeal saves
execute if score spellnumber spells matches 3 run function ch:cleanseslot1
execute if score spellnumber spells matches 3 run scoreboard players set spellbuffsp1 spells 0
execute if score spellnumber spells matches 3 run scoreboard players set attackIsOngoingGame1 booleans 0

#Magic Missile
execute if score spellnumber spells matches 4 run scoreboard players operation spellDmg saves = magicMissile spellStats
execute if score spellnumber spells matches 4 run scoreboard players operation spellDmg saves += spellbuffsp2 spells
execute if score spellnumber spells matches 4 run scoreboard players operation spellDmg saves += marks slot1
execute if score spellnumber spells matches 4 run scoreboard players operation spellDmg saves /= atkmultiplier slot1
execute if score spellnumber spells matches 4 run execute if score ward slot1 matches 0 run scoreboard players operation shield slot1 -= spellDmg saves
execute if score spellnumber spells matches 4 run execute if score ward slot1 matches 0 if score shield slot1 matches ..0 run scoreboard players operation slot1 hp += shield slot1
execute if score spellnumber spells matches 4 run execute if score ward slot1 matches 1.. run function ch:wardslot1
execute if score spellnumber spells matches 4 run execute if score magicMissilex2 spells matches 0 run function ch:spellgivetargetsp1
execute if score spellnumber spells matches 4 run execute if score magicMissilex2 spells matches 0 run scoreboard players set magicMissilex2 spells 1
execute if score spellnumber spells matches 4 run execute if score magicMissilex2 spells matches 1 run scoreboard players set spellbuffsp2 spells 0
execute if score spellnumber spells matches 4 run execute if score magicMissilex2 spells matches 1 run function ch:spellphasep1
execute if score spellnumber spells matches 4 run execute if score magicMissilex2 spells matches 1 run scoreboard players set magicMissilex2 spells 0

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
execute if score spellnumber spells matches 8 if score ward slot1 matches 0 run scoreboard players operation slot1 stun += shockOrb spellStats
execute if score spellnumber spells matches 8 if score ward slot1 matches 1.. run function ch:wardslot1
execute if score spellnumber spells matches 8 run function ch:spellphasep1

#Witch's Brew
execute if score spellnumber spells matches 23 run execute if score ward slot1 matches 0 if score witchesBrewSpDebuffDuration spellStats > durationslot1 speedDebuffs run scoreboard players operation durationSlot1 speedDebuffs = witchesBrewSpDebuffDuration spellStats
execute if score spellnumber spells matches 23 run execute if score ward slot1 matches 0 if score witchesBrewDmgDebuffDuration spellStats > debuffDurationSlot1 atkmodifiers run scoreboard players operation debuffDurationSlot1 atkmodifiers = witchesBrewDmgDebuffDuration spellStats
execute if score spellnumber spells matches 23 run execute if score ward slot1 matches 0 if score witchesBrewPoisonDuration spellStats > durationSlot1 speedDebuffs run scoreboard players operation debuffDurationSlot1 atkmodifiers = witchesBrewDmgDebuffDuration spellStats
execute if score spellnumber spells matches 23 run execute if score ward slot1 matches 0 run scoreboard players operation durationSlot1 speedDebuffs += frostboltSpDebuffDuration spellStats
execute if score spellnumber spells matches 23 run execute if score ward slot1 matches 0 run scoreboard players operation debuffDurationSlot1 atkmodifiers += witchesBrewDmgDebuffDuration spellStats
execute if score spellnumber spells matches 23 run execute if score ward slot1 matches 0 run scoreboard players operation speed slot1 -= witchesBrewSpDebuff spellStats
execute if score spellnumber spells matches 23 run execute if score ward slot1 matches 1.. run function ch:wardslot1

#This goes at the bottom
execute if score shield slot1 matches ..0 run scoreboard players set shield slot1 0
execute if score shield slot2 matches ..0 run scoreboard players set shield slot2 0
execute if score shield slot3 matches ..0 run scoreboard players set shield slot3 0
execute if score shield slot4 matches ..0 run scoreboard players set shield slot4 0
