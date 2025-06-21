clear @p[tag=game1]
#fireball
execute if score spellnumber spells matches 3 run scoreboard players operation spellDmg saves = fireball spellStats
execute if score spellnumber spells matches 3 run scoreboard players operation spellDmg saves += spellbuffsp2 spells
execute if score spellnumber spells matches 3 run scoreboard players operation spellDmg saves += slot1 marks
execute if score spellnumber spells matches 3 run scoreboard players operation spellDmg saves /= atkmultiplier slot1
execute if score spellnumber spells matches 3 run execute if score ward slot1 matches 0 run scoreboard players operation shield slot1 -= spellDmg saves
execute if score spellnumber spells matches 3 run execute if score ward slot1 matches 0 if score durationSlot1 burn < fireballDuration spellStats run scoreboard players operation durationSlot1 burn = fireballDuration spelltats
execute if score spellnumber spells matches 3 run execute if score ward slot1 matches 0 run scoreboard players operation slot1burn burn += fireballBurn spellStats
execute if score spellnumber spells matches 3 run execute if score ward slot1 matches 1.. run function ch:wardslot1
execute if score spellnumber spells matches 3 run function ch:spellphasep1

#fountain of youth
execute if score spellnumber spells matches 25 run execute if score diarmedslot1 booleaneffects < fountainOfYouthDuration spellStats run scoreboard players operation diarmedslot1 booleaneffects = fountainOfYouthDuration spellStats
execute if score spellnumber spells matches 25 run scoreboard players operation slot1 hp += fountainOfYouth spellStats
execute if score spellnumber spells matches 25 run scoreboard players set attackIsOngoingGame1 booleans 0

#This goes at the bottom
execute if score shield slot1 matches ..0 run scoreboard players set shield slot1 0
execute if score shield slot2 matches ..0 run scoreboard players set shield slot2 0
execute if score shield slot3 matches ..0 run scoreboard players set shield slot3 0
execute if score shield slot4 matches ..0 run scoreboard players set shield slot4 0

