effect clear @a[tag=game2] weakness
clear @a[tag=game2]

#Dragonforge
execute if score spellnumber2 spells matches 26 run execute if score durationSlot13 shield < dragonforgeDuration spellStats run scoreboard players operation durationSlot13 shield = dragonforgeDuration spellStats 
execute if score spellnumber2 spells matches 26 run scoreboard players operation shield slot13 += dragonforge spellStats
execute if score spellnumber2 spells matches 26 run execute if score slot14 hp matches ..0 if score slot15 hp matches ..0 if score slot16 hp matches ..0 run scoreboard players operation shield slot13 += dragonforge spellStats
execute if score spellnumber2 spells matches 26 run function chtoo:spellphasep3
execute if score spellnumber2 spells matches 26 run execute if score slot14 hp matches ..0 if score slot15 hp matches ..0 if score slot16 hp matches ..0 run execute at @n[type=armor_stand,name=slot13] run particle dragon_breath ~ ~1 ~ 0.9 0.9 0.9 0.1 400
execute if score spellnumber2 spells matches 26 run execute at @n[type=armor_stand,name=slot13] run particle dragon_breath ~ ~1 ~ 0.9 0.9 0.9 0.1 100
execute if score spellnumber2 spells matches 26 run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p4]"}," used Dragonforge on Slot 5!"]

#Embiggen
execute if score spellnumber2 spells matches 13 run execute if score buffDurationSlot13 atkmodifiers < embiggenDuration spellStats run scoreboard players operation buffDurationSlot13 atkmodifiers = embiggenDuration spellStats
execute if score spellnumber2 spells matches 13 run scoreboard players operation attackBuffSlot13 atkmodifiers += embiggenBuff spellStats
execute if score spellnumber2 spells matches 13 run execute if score durationSlot13 shield < embiggenDuration spellStats run scoreboard players operation durationSlot13 shield = embiggenDuration spellStats 
execute if score spellnumber2 spells matches 13 run scoreboard players operation shield slot13 += embiggen spellStats
execute if score spellnumber2 spells matches 13 run function chtoo:spellphasep3
execute if score spellnumber2 spells matches 13 run execute at @n[type=armor_stand,name=slot13] run particle minecraft:egg_crack ~ ~1 ~ 0.9 0.9 0.9 0.1 100
execute if score spellnumber2 spells matches 13 run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p4]"}," used Embiggen on Slot 5!"]

#Embrittle
execute if score spellnumber2 spells matches 12 if score ward slot13 matches 0 run execute if score debuffDurationSlot13 atkmodifiers < embrittleDuration spellStats run scoreboard players operation debuffDurationSlot13 atkmodifiers = embrittleDuration spellStats
execute if score spellnumber2 spells matches 12 if score ward slot13 matches 0 run scoreboard players operation attackDebuffSlot13 atkmodifiers += embrittle spellStats
execute if score spellnumber2 spells matches 12 if score ward slot13 matches 1.. run function chtoo:wardslot13
execute if score spellnumber2 spells matches 12 run scoreboard players set attackIsOngoingGame2 booleans 0
execute if score spellnumber2 spells matches 12 run execute at @n[type=armor_stand,name=slot13] run particle minecraft:block_crumble{block_state:"minecraft:ice"} ~ ~1 ~ 0.9 0.9 0.9 0.1 200
execute if score spellnumber2 spells matches 12 run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p3]"}," used Embrittle on Slot 5!"]
#Evil Eye
execute if score spellnumber2 spells matches 15 if score ward slot13 matches 0 run scoreboard players operation marks slot13 += evilEye spellStats
execute if score spellnumber2 spells matches 15 if score ward slot13 matches 1.. run function chtoo:wardslot13
execute if score spellnumber2 spells matches 15 run scoreboard players set attackIsOngoingGame2 booleans 0
execute if score spellnumber2 spells matches 15 run execute at @n[type=armor_stand,name=slot13] run particle minecraft:effect ~ ~1 ~ 0.7 0.7 0.7 0.1 200
execute if score spellnumber2 spells matches 15 run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p3]"}," used Evil Eye on Slot 5!"]

#Frostbolt
execute if score spellnumber2 spells matches 6 run scoreboard players operation spellDmg2 saves = frostbolt spellStats
execute if score spellnumber2 spells matches 6 run scoreboard players operation spellDmg2 saves += spellbuffsp3 spells
execute if score spellnumber2 spells matches 6 run scoreboard players operation spellDmg2 saves += marks slot13
execute if score spellnumber2 spells matches 6 run scoreboard players operation spellDmg2 saves /= atkmultiplier slot13
execute if score spellnumber2 spells matches 6 run execute if score ward slot13 matches 0 run scoreboard players operation shield slot13 -= spellDmg2 saves
execute if score spellnumber2 spells matches 6 run execute if score ward slot13 matches 0 if score frostboltDuration spellStats > durationSlot13 speedDebuffs run scoreboard players operation durationSlot13 speedDebuffs = frostboltDuration spellStats
execute if score spellnumber2 spells matches 6 run execute if score ward slot13 matches 0 if score frostboltDuration spellStats > debuffDurationSlot13 atkmodifiers run scoreboard players operation debuffDurationSlot13 atkmodifiers = frostboltDuration spellStats
execute if score spellnumber2 spells matches 6 run execute if score ward slot13 matches 0 run scoreboard players operation speedDebuffSlot13 speedDebuffs += frostboltSpDebuff spellStats
execute if score spellnumber2 spells matches 6 run execute if score ward slot13 matches 0 run scoreboard players operation attackDebuffSlot13 atkmodifiers += frostboltDmgDebuff spellStats
execute if score spellnumber2 spells matches 6 run execute if score ward slot13 matches 0 run scoreboard players operation speed slot13 -= frostboltSpDebuff spellStats
execute if score spellnumber2 spells matches 6 run execute if score ward slot13 matches 0 if score shield slot13 matches ..0 run scoreboard players operation slot13 hp += shield slot13
execute if score spellnumber2 spells matches 6 run execute if score ward slot13 matches 1.. run function chtoo:wardslot13
execute if score spellnumber2 spells matches 6 run scoreboard players set spellbuffsp3 spells 0
execute if score spellnumber2 spells matches 6 run scoreboard players set attackIsOngoingGame2 booleans 0
execute if score spellnumber2 spells matches 6 run execute at @n[type=armor_stand,name=slot13] run particle minecraft:item_snowball ~ ~1 ~ 0.7 0.7 0.7 0.1 200
execute if score spellnumber2 spells matches 6 run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p3]"}," used Frostbolt on Slot 5!"]

#Heal
execute if score spellnumber2 spells matches 2 run scoreboard players operation spellHeal saves = heal spellStats
execute if score spellnumber2 spells matches 2 run scoreboard players operation spellHeal saves += spellbuffsp4 spells
execute if score spellnumber2 spells matches 2 run scoreboard players operation slot13 hp += spellHeal saves
execute if score spellnumber2 spells matches 2 run function chtoo:cleanseslot13
execute if score spellnumber2 spells matches 2 run scoreboard players set spellbuffsp4 spells 0
execute if score spellnumber2 spells matches 2 run function chtoo:spellphasep3
execute if score spellnumber2 spells matches 2 run execute at @n[type=armor_stand,name=slot13] run particle minecraft:composter ~ ~1 ~ 0.9 0.9 0.9 0.5 100
execute if score spellnumber2 spells matches 2 run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p4]"}," used Heal on Slot 5!"]

#Magic Missile! Magic Missile! I smite thee with Magic Missile!
execute if score spellnumber2 spells matches 4 run scoreboard players add magicMissilex3 spells 1
execute if score spellnumber2 spells matches 4 run scoreboard players operation spellDmg saves = magicMissile spellStats
execute if score spellnumber2 spells matches 4 run scoreboard players operation spellDmg saves += spellbuffsp3 spells
execute if score spellnumber2 spells matches 4 run scoreboard players operation spellDmg saves += marks slot13
execute if score spellnumber2 spells matches 4 run scoreboard players operation spellDmg saves /= atkmultiplier slot13
execute if score spellnumber2 spells matches 4 run execute if score ward slot13 matches 0 run scoreboard players operation shield slot13 -= spellDmg saves
execute if score spellnumber2 spells matches 4 run execute if score ward slot13 matches 0 if score shield slot13 matches ..0 run scoreboard players operation slot13 hp += shield slot13
execute if score spellnumber2 spells matches 4 run execute if score ward slot13 matches 1.. run function chtoo:wardslot13
execute if score spellnumber2 spells matches 4 run execute at @n[type=armor_stand,name=slot13] run particle minecraft:enchanted_hit ~ ~1 ~ 0.7 0.7 0.7 0.5 300
execute if score spellnumber2 spells matches 4 run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p3]"}," smited Slot 13 with Magic Missle!"]
execute if score spellnumber2 spells matches 4 run execute if score magicMissilex3 spells matches 1 run function chtoo:spellgivetargetsp3
execute if score spellnumber2 spells matches 4 run execute if score magicMissilex3 spells matches 2 run scoreboard players set spellbuffsp3 spells 0
execute if score spellnumber2 spells matches 4 run execute if score magicMissilex3 spells matches 2 run clear @a[tag=p3] target
execute if score spellnumber2 spells matches 4 run execute if score magicMissilex3 spells matches 2 run scoreboard players set attackIsOngoingGame2 booleans 0
execute if score spellnumber2 spells matches 4 run execute if score magicMissilex3 spells matches 2 run scoreboard players set magicMissilex3 spells 0

#Protector's Rune
execute if score spellnumber2 spells matches 16 if score protectorsrune spellStats > durationSlot13 taunt run scoreboard players operation durationSlot13 taunt = protectorsrune spellStats
execute if score spellnumber2 spells matches 16 if score protectorsrune spellStats > durationSlot13 taunt if score ward slot13 matches 0 run scoreboard players operation marks slot13 += protectorsruneMarks spellStats
execute if score spellnumber2 spells matches 16 if score protectorsrune spellStats > durationSlot13 taunt if score ward slot13 matches 1.. run function chtoo:wardslot13
execute if score spellnumber2 spells matches 16 run function chtoo:spellphasep3
execute if score spellnumber2 spells matches 16 run execute at @n[type=armor_stand,name=slot13] run particle minecraft:block_crumble{block_state:"minecraft:emerald_ore"} ~ ~1 ~ 0.7 0.7 0.7 1 400
execute if score spellnumber2 spells matches 16 run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p4]"}," used Protector's Rune on Slot 5!"]

#Shield
execute if score spellnumber2 spells matches 8 run execute if score durationSlot13 shield < shieldDuration spellStats run scoreboard players operation durationSlot13 shield = shieldDuration spellStats 
execute if score spellnumber2 spells matches 8 run scoreboard players operation shield slot13 += shield spellStats
execute if score spellnumber2 spells matches 8 run function chtoo:spellphasep3
execute if score spellnumber2 spells matches 8 run execute at @n[type=armor_stand,name=slot13] run particle wax_off ~ ~1 ~ 0.7 0.7 0.7 0.1 400
execute if score spellnumber2 spells matches 8 run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p4]"}," used Shield on Slot 5!"]

#Ball Lightning
execute if score spellnumber2 spells matches 9 if score ward slot13 matches 0 run scoreboard players operation slot13 stun += shockOrb spellStats
execute if score spellnumber2 spells matches 9 if score ward slot13 matches 1.. run function chtoo:wardslot13
execute if score spellnumber2 spells matches 9 run scoreboard players set attackIsOngoingGame2 booleans 0
execute if score spellnumber2 spells matches 9 run execute at @n[type=armor_stand,name=slot13] run particle flash ~ ~1 ~ 0.9 0.9 0.9 0.1 10
execute if score spellnumber2 spells matches 9 run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p3]"}," used Ball Lightning on Slot 5!"]

#Witches Brew
execute if score spellnumber2 spells matches 23 run execute if score ward slot13 matches 0 if score witchesBrewDuration spellStats > durationSlot13 speedDebuffs run scoreboard players operation durationSlot13 speedDebuffs = witchesBrewDuration spellStats
execute if score spellnumber2 spells matches 23 run execute if score ward slot13 matches 0 if score witchesBrewDuration spellStats > debuffDurationSlot13 atkmodifiers run scoreboard players operation debuffDurationSlot13 atkmodifiers = witchesBrewDuration spellStats
execute if score spellnumber2 spells matches 23 run execute if score ward slot13 matches 0 if score witchesBrewDuration spellStats > durationSlot13 poison run scoreboard players operation durationSlot13 poison = witchesBrewDuration spellStats
execute if score spellnumber2 spells matches 23 run execute if score ward slot13 matches 0 if score witchesBrewDuration spellStats > durationSlot13 burn run scoreboard players operation durationSlot13 burn = witchesBrewDuration spellStats
execute if score spellnumber2 spells matches 23 run execute if score ward slot13 matches 0 run scoreboard players operation speedDebuffSlot13 speedDebuffs += witchesBrewSpDebuff spellStats
execute if score spellnumber2 spells matches 23 run execute if score ward slot13 matches 0 run scoreboard players operation attackDebuffSlot13 atkmodifiers += witchesBrewDmgDebuff spellStats
execute if score spellnumber2 spells matches 23 run execute if score ward slot13 matches 0 run scoreboard players operation slot13Poison poison += witchesBrew spellStats
execute if score spellnumber2 spells matches 23 run execute if score ward slot13 matches 0 run scoreboard players operation slot13Burn burn += witchesBrewBurn spellStats
execute if score spellnumber2 spells matches 23 run execute if score ward slot13 matches 0 run scoreboard players operation speed slot13 -= witchesBrewSpDebuff spellStats
execute if score spellnumber2 spells matches 23 run execute if score ward slot13 matches 1.. run function chtoo:wardslot13
execute if score spellnumber2 spells matches 23 run scoreboard players set attackIsOngoingGame2 booleans 0
execute if score spellnumber2 spells matches 23 run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p3]"}," used Witches Brew on Slot 5!"]

#Shifting Shadows Token
execute if score spellnumber2 spells matches -1 if score shadowsPart1 spells matches 1 if score ward slot13 matches 0 run scoreboard players set durationSlot9-13 fear 1 
execute if score spellnumber2 spells matches -1 if score shadowsPart1 spells matches 2 if score ward slot13 matches 0 run scoreboard players set durationSlot10-13 fear 1 
execute if score spellnumber2 spells matches -1 if score shadowsPart1 spells matches 3 if score ward slot13 matches 0 run scoreboard players set durationSlot11-13 fear 1 
execute if score spellnumber2 spells matches -1 if score shadowsPart1 spells matches 4 if score ward slot13 matches 0 run scoreboard players set durationSlot12-13 fear 1
execute if score spellnumber2 spells matches -1 if score ward slot13 matches 1.. run function chtoo:wardslot13
execute if score spellnumber2 spells matches -1 run scoreboard players set attackIsOngoingGame2 booleans 0
execute if score spellnumber2 spells matches -1 run execute at @n[type=armor_stand,name=slot13] run particle trial_omen ~ ~1 ~ 0.9 0.9 0.9 0.1 400
execute if score spellnumber2 spells matches -1 run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p3]"}," used Shifting Shadows to fear Slot 5!"]

#Shifting Shadows
execute if score spellnumber2 spells matches 28 run scoreboard players set shadowsPart1 spells 5
execute if score spellnumber2 spells matches 28 run function chtoo:spellgivetargetsp4
execute if score spellnumber2 spells matches 28 run scoreboard players set spellnumber2 spells -1
execute if score spellnumber2 spells matches 28 run execute at @n[type=armor_stand,name=slot13] run particle raid_omen ~ ~1 ~ 0.9 0.9 0.9 0.1 400
execute if score spellnumber2 spells matches 28 run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p4]"}," used Shifting Shadows to make Slot 5 scary!"]
#fireball
execute if score spellnumber2 spells matches 1 run scoreboard players operation spellDmg2 saves = fireball spellStats
execute if score spellnumber2 spells matches 1 run scoreboard players operation spellDmg2 saves += spellbuffsp3 spells
execute if score spellnumber2 spells matches 1 run scoreboard players operation spellDmg2 saves += marks slot13
execute if score spellnumber2 spells matches 1 run scoreboard players operation spellDmg2 saves /= atkmultiplier slot13
execute if score spellnumber2 spells matches 1 run execute if score ward slot13 matches 0 run scoreboard players operation shield slot13 -= spellDmg2 saves
execute if score spellnumber2 spells matches 1 run execute if score ward slot13 matches 0 run scoreboard players operation slot13 hp += shield slot13
execute if score spellnumber2 spells matches 1 run execute if score ward slot13 matches 0 if score durationSlot13 burn < fireballDuration spellStats run scoreboard players operation durationSlot13 burn = fireballDuration spellStats
execute if score spellnumber2 spells matches 1 run execute if score ward slot13 matches 0 run scoreboard players operation slot13Burn burn += fireballBurn spellStats
execute if score spellnumber2 spells matches 1 at @e[name=slot13] run particle minecraft:flame ~ ~1 ~ 0.9 0.9 0.9 0.5 100
execute if score spellnumber2 spells matches 1 run execute if score ward slot13 matches 1.. run function chtoo:wardslot13
execute if score spellnumber2 spells matches 1 run scoreboard players set spellbuffsp3 spells 0
execute if score spellnumber2 spells matches 1 run scoreboard players set attackIsOngoingGame2 booleans 0
execute if score spellnumber2 spells matches 1 run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p3]"}," used Fireball on Slot 5!"]
#meteor
execute if score spellnumber2 spells matches 7 run scoreboard players operation spellDmg2 saves = meteor spellStats
execute if score spellnumber2 spells matches 7 run scoreboard players operation spellDmg2 saves += spellbuffsp3 spells
execute if score spellnumber2 spells matches 7 run scoreboard players operation spellDmg2 saves += marks slot13
execute if score spellnumber2 spells matches 7 run scoreboard players operation spellDmg2 saves /= atkmultiplier slot13
execute if score spellnumber2 spells matches 7 run execute if score ward slot13 matches 0 run scoreboard players operation shield slot13 -= spellDmg2 saves
execute if score spellnumber2 spells matches 7 run execute if score ward slot13 matches 0 if score shield slot13 matches ..0 run scoreboard players operation slot13 hp += shield slot13
execute if score spellnumber2 spells matches 7 at @e[name=slot13] run particle minecraft:lava ~ ~1 ~ 0.9 0.9 0.9 0.5 100
execute if score spellnumber2 spells matches 7 at @e[name=slot14] run particle minecraft:lava ~ ~1 ~ 0.9 0.9 0.9 0.5 50
execute if score spellnumber2 spells matches 7 run execute if score ward slot13 matches 1.. run function chtoo:wardslot13
execute if score spellnumber2 spells matches 7 run scoreboard players operation spellDmg2 saves = meteor spellStats
execute if score spellnumber2 spells matches 7 run scoreboard players operation spellDmg2 saves += spellbuffsp4 spells
execute if score spellnumber2 spells matches 7 run scoreboard players operation spellDmg2 saves /= meteorSplash spellStats
execute if score spellnumber2 spells matches 7 run scoreboard players operation spellDmg2 saves += marks slot14
execute if score spellnumber2 spells matches 7 run scoreboard players operation spellDmg2 saves /= atkmultiplier slot14
execute if score spellnumber2 spells matches 7 run execute if score ward slot14 matches 0 run scoreboard players operation shield slot14 -= spellDmg2 saves
execute if score spellnumber2 spells matches 7 run execute if score ward slot14 matches 0 if score shield slot14 matches ..0 run scoreboard players operation slot14 hp += shield slot14
execute if score spellnumber2 spells matches 7 run execute if score ward slot14 matches 1.. run function chtoo:wardslot14
execute if score spellnumber2 spells matches 7 run scoreboard players set spellbuffsp3 spells 0
execute if score spellnumber2 spells matches 7 run scoreboard players set attackIsOngoingGame2 booleans 0
execute if score spellnumber2 spells matches 7 run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p3]"}," used Meteor on Slot 5!"]

#witchbolt
execute if score spellnumber2 spells matches 10 run scoreboard players operation spellDmg2 saves = witchbolt spellStats
execute if score spellnumber2 spells matches 10 run scoreboard players operation spellDmg2 saves += spellbuffsp3 spells
execute if score spellnumber2 spells matches 10 run scoreboard players operation spellDmg2 saves += marks slot13
execute if score spellnumber2 spells matches 10 run scoreboard players operation spellDmg2 saves /= atkmultiplier slot13
execute if score spellnumber2 spells matches 10 run execute if score ward slot13 matches 0 run scoreboard players operation shield slot13 -= spellDmg2 saves
execute if score spellnumber2 spells matches 10 run execute if score ward slot13 matches 0 if score shield slot13 matches ..0 run scoreboard players operation slot13 hp += shield slot13
execute if score spellnumber2 spells matches 10 at @e[name=slot13] run particle minecraft:enchanted_hit ~ ~1 ~ 0.9 0.9 0.9 0.5 200
execute if score spellnumber2 spells matches 10 run execute if score ward slot13 matches 1.. run function chtoo:wardslot13
execute if score spellnumber2 spells matches 10 run scoreboard players set spellbuffsp3 spells 0
execute if score spellnumber2 spells matches 10 run scoreboard players set attackIsOngoingGame2 booleans 0
execute if score spellnumber2 spells matches 10 run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p3]"}," used Witch Bolt on Slot 5!"]
#ward
execute if score spellnumber2 spells matches 19 run scoreboard players set ward slot13 1
execute if score spellnumber2 spells matches 19 at @e[name=slot13] run particle minecraft:ominous_spawning ~ ~1 ~ 0.9 0.9 0.9 0.1 100
execute if score spellnumber2 spells matches 19 run function chtoo:spellphasep3
execute if score spellnumber2 spells matches 19 run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p4]"}," used Ward on Slot 5!"]
#plague
execute if score spellnumber2 spells matches 21 if score ward slot13 matches 0 run scoreboard players operation slot13Disease disease += plague spellStats
execute if score spellnumber2 spells matches 21 at @e[name=slot13] run particle minecraft:trial_omen ~ ~1 ~ 0.9 0.9 0.9 0.5 100
execute if score spellnumber2 spells matches 21 if score ward slot13 matches 1.. run function chtoo:wardslot13
execute if score spellnumber2 spells matches 21 run scoreboard players set attackIsOngoingGame2 booleans 0
execute if score spellnumber2 spells matches 21 run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p3]"}," used Plague on Slot 5!"]

#Second wind
execute if score spellnumber2 spells matches 22 run execute if score durationSlot13 speedBuffs < secondWindDuration spellStats run scoreboard players operation durationSlot13 speedBuffs = secondWindDuration spellStats
execute if score spellnumber2 spells matches 22 run scoreboard players operation speedBuffSlot13 speedBuffs += secondWindSpeed spellStats
execute if score spellnumber2 spells matches 22 run scoreboard players operation speed slot13 += secondWindSpeed spellStats
execute if score spellnumber2 spells matches 22 if score slot13bleeding booleaneffects matches 0 run scoreboard players operation slot13 hp += secondWind spellStats
execute if score spellnumber2 spells matches 22 if score slot13bleeding booleaneffects matches 0 run scoreboard players operation slot13 hp += spellbuffsp4 spells
execute if score spellnumber2 spells matches 22 at @e[name=slot13] run particle minecraft:trial_spawner_detection_ominous ~ ~1 ~ 0.9 0.9 0.9 0.5 100
execute if score spellnumber2 spells matches 22 run function chtoo:spellphasep3
execute if score spellnumber2 spells matches 22 run scoreboard players set spellbuffsp4 spells 0
execute if score spellnumber2 spells matches 22 run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p4]"}," used Second Wind on Slot 5!"]
#fountain of youth
execute if score spellnumber2 spells matches 25 run execute if score disarmedslot13 booleaneffects < fountainOfYouthDuration spellStats run scoreboard players operation disarmedslot13 booleaneffects = fountainOfYouthDuration spellStats
execute if score spellnumber2 spells matches 25 if score slot13bleeding booleaneffects matches 0 run scoreboard players operation slot13 hp += fountainOfYouth spellStats
execute if score spellnumber2 spells matches 25 if score slot13bleeding booleaneffects matches 0 run scoreboard players operation slot13 hp += spellbuffsp4 spells
execute if score spellnumber2 spells matches 25 at @e[name=slot13] run particle minecraft:composter ~ ~1 ~ 0.9 0.9 0.9 0.5 500
execute if score spellnumber2 spells matches 25 run function chtoo:spellphasep3
execute if score spellnumber2 spells matches 25 run scoreboard players set spellbuffsp4 spells 0
execute if score spellnumber2 spells matches 25 run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p4]"}," used Fountain of Youth on Slot 5!"]
#overclock
execute if score spellnumber2 spells matches 27 run execute if score buffDurationSlot13 atkmodifiers < overclockDuration spellStats run scoreboard players operation buffDurationSlot13 atkmodifiers = overclockDuration spellStats
execute if score spellnumber2 spells matches 27 run scoreboard players operation attackBuffSlot13 atkmodifiers += overclock spellStats
execute if score spellnumber2 spells matches 27 run scoreboard players operation shield slot13 -= overclockAtk spellStats
execute if score spellnumber2 spells matches 27 if score shield slot13 matches ..0 run scoreboard players operation slot13 hp += shield slot13
execute if score spellnumber2 spells matches 27 at @e[name=slot13] run particle minecraft:trial_spawner_detection ~ ~1 ~ 0.9 0.9 0.9 0.5 400
execute if score spellnumber2 spells matches 27 run function chtoo:spellphasep3
execute if score spellnumber2 spells matches 27 run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p4]"}," used Overclock on Slot 5!"]


#This goes at the bottom
execute if score shield slot13 matches ..0 run scoreboard players set shield slot13 0
execute if score shield slot14 matches ..0 run scoreboard players set shield slot14 0
execute if score shield slot15 matches ..0 run scoreboard players set shield slot15 0
execute if score shield slot16 matches ..0 run scoreboard players set shield slot16 0

execute if score game2Ongoing ongoinggames matches 1 if score invincibleSlot9 booleaneffects matches 0 run execute if score slot9 hp matches ..0 run execute unless score speed slot9 matches ..-900000 run function chtoo:death1
execute if score game2Ongoing ongoinggames matches 1 if score invincibleSlot10 booleaneffects matches 0 run execute if score slot10 hp matches ..0 run execute unless score speed slot10 matches ..-900000 run function chtoo:death2
execute if score game2Ongoing ongoinggames matches 1 if score invincibleSlot11 booleaneffects matches 0 run execute if score slot11 hp matches ..0 run execute unless score speed slot11 matches ..-900000 run function chtoo:death3
execute if score game2Ongoing ongoinggames matches 1 if score invincibleSlot12 booleaneffects matches 0 unless score character# slot12 matches 0 run execute if score slot12 hp matches ..0 run execute unless score speed slot12 matches ..-900000 run function chtoo:death4
execute if score game2Ongoing ongoinggames matches 1 if score invincibleSlot13 booleaneffects matches 0 run execute if score slot13 hp matches ..0 run execute unless score speed slot13 matches ..-900000 run function chtoo:death5
execute if score game2Ongoing ongoinggames matches 1 if score invincibleSlot14 booleaneffects matches 0 run execute if score slot14 hp matches ..0 run execute unless score speed slot14 matches ..-900000 run function chtoo:death6
execute if score game2Ongoing ongoinggames matches 1 if score invincibleSlot15 booleaneffects matches 0 run execute if score slot15 hp matches ..0 run execute unless score speed slot15 matches ..-900000 run function chtoo:death7
execute if score game2Ongoing ongoinggames matches 1 if score invincibleSlot16 booleaneffects matches 0 unless score character# slot16 matches 0 run execute if score slot16 hp matches ..0 run execute unless score speed slot16 matches ..-900000 run function chtoo:death8