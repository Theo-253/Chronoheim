effect clear @a[tag=game2] weakness
clear @a[tag=game2]

#Dragonforge
execute if score spellnumber2 spells matches 26 run execute if score durationSlot16 shield < dragonforgeDuration spellStats run scoreboard players operation durationSlot16 shield = dragonforgeDuration spellStats
execute if score spellnumber2 spells matches 26 run scoreboard players operation shield slot16 += dragonforge spellStats
execute if score spellnumber2 spells matches 26 run execute if score alivep4 deaths matches 1 run scoreboard players operation shield slot16 += dragonforge spellStats
execute if score spellnumber2 spells matches 26 run function chtoo:spellphasep3
execute if score spellnumber2 spells matches 26 run execute if score alivep4 deaths matches 1 run execute at @n[type=armor_stand,name=slot16] run particle dragon_breath ~ ~1 ~ 0.9 0.9 0.9 0.1 400
execute if score spellnumber2 spells matches 26 run execute if score alivep4 deaths matches 2.. run execute at @n[type=armor_stand,name=slot16] run particle dragon_breath ~ ~1 ~ 0.9 0.9 0.9 0.1 100
execute if score spellnumber2 spells matches 26 run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p4]"}," used Dragonforge on Slot 8!"]

#Embiggen
execute if score spellnumber2 spells matches 13 run execute if score buffDurationSlot16 atkmodifiers < embiggenDuration spellStats run scoreboard players operation buffDurationSlot16 atkmodifiers = embiggenDuration spellStats
execute if score spellnumber2 spells matches 13 run scoreboard players operation attackBuffSlot16 atkmodifiers += embiggenBuff spellStats
execute if score spellnumber2 spells matches 13 run execute if score durationSlot16 shield < embiggenDuration spellStats run scoreboard players operation durationSlot16 shield = embiggenDuration spellStats
execute if score spellnumber2 spells matches 13 run scoreboard players operation shield slot16 += embiggen spellStats
execute if score spellnumber2 spells matches 13 run function chtoo:spellphasep3
execute if score spellnumber2 spells matches 13 run execute at @n[type=armor_stand,name=slot16] run particle minecraft:egg_crack ~ ~1 ~ 0.9 0.9 0.9 0.1 100
execute if score spellnumber2 spells matches 13 run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p4]"}," used Embiggen on Slot 8!"]

#Embrittle
execute if score spellnumber2 spells matches 12 if score ward slot16 matches 0 run execute if score debuffDurationSlot16 atkmodifiers < embrittleDuration spellStats run scoreboard players operation debuffDurationSlot16 atkmodifiers = embrittleDuration spellStats
execute if score spellnumber2 spells matches 12 if score ward slot16 matches 0 run scoreboard players operation attackDebuffSlot16 atkmodifiers += embrittle spellStats
execute if score spellnumber2 spells matches 12 if score ward slot16 matches 1.. run function chtoo:wardslot16
execute if score spellnumber2 spells matches 12 run scoreboard players set attackIsOngoingGame2 booleans 0
execute if score spellnumber2 spells matches 12 run execute at @n[type=armor_stand,name=slot16] run particle minecraft:block_crumble{block_state:"minecraft:ice"} ~ ~1 ~ 0.9 0.9 0.9 0.1 200
 execute if score spellnumber2 spells matches 12 run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p3]"}," used Embrittle on Slot 8!"]

#Evil Eye
execute if score spellnumber2 spells matches 15 if score ward slot16 matches 0 run scoreboard players operation marks slot16 += evilEye spellStats
execute if score spellnumber2 spells matches 15 if score ward slot16 matches 1.. run function chtoo:wardslot16
execute if score spellnumber2 spells matches 15 run scoreboard players set attackIsOngoingGame2 booleans 0
execute if score spellnumber2 spells matches 15 run execute at @n[type=armor_stand,name=slot16] run particle minecraft:effect ~ ~1 ~ 0.7 0.7 0.7 0.1 200
execute if score spellnumber2 spells matches 15 run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p3]"}," used Evil Eye on Slot 8!"]

#Frostbolt
execute if score spellnumber2 spells matches 6 run scoreboard players operation spellDmg2 saves = frostbolt spellStats
execute if score spellnumber2 spells matches 6 run scoreboard players operation spellDmg2 saves += spellbuffsp3 spells
execute if score spellnumber2 spells matches 6 run scoreboard players operation spellDmg2 saves += marks slot16
execute if score spellnumber2 spells matches 6 run scoreboard players operation spellDmg2 saves /= atkmultiplier slot16
execute if score spellnumber2 spells matches 6 run execute if score ward slot16 matches 0 run scoreboard players operation shield slot16 -= spellDmg2 saves
execute if score spellnumber2 spells matches 6 run execute if score ward slot16 matches 0 if score frostboltDuration spellStats > durationSlot16 speedDebuffs run scoreboard players operation durationSlot16 speedDebuffs = frostboltDuration spellStats
execute if score spellnumber2 spells matches 6 run execute if score ward slot16 matches 0 if score frostboltDuration spellStats > debuffDurationSlot16 atkmodifiers run scoreboard players operation debuffDurationSlot16 atkmodifiers = frostboltDuration spellStats
execute if score spellnumber2 spells matches 6 run execute if score ward slot16 matches 0 run scoreboard players operation speedDebuffSlot16 speedDebuffs += frostboltSpDebuff spellStats
execute if score spellnumber2 spells matches 6 run execute if score ward slot16 matches 0 run scoreboard players operation attackDebuffSlot16 atkmodifiers += frostboltDmgDebuff spellStats
execute if score spellnumber2 spells matches 6 run execute if score ward slot16 matches 0 run scoreboard players operation speed slot16 -= frostboltSpDebuff spellStats
execute if score spellnumber2 spells matches 6 run execute if score ward slot16 matches 0 if score shield slot16 matches ..0 run scoreboard players operation slot16 hp += shield slot16
execute if score spellnumber2 spells matches 6 run execute if score ward slot16 matches 1.. run function chtoo:wardslot16
execute if score spellnumber2 spells matches 6 run scoreboard players set spellbuffsp3 spells 0
execute if score spellnumber2 spells matches 6 run scoreboard players set attackIsOngoingGame2 booleans 0
execute if score spellnumber2 spells matches 6 run execute at @n[type=armor_stand,name=slot16] run particle minecraft:item_snowball ~ ~1 ~ 0.7 0.7 0.7 0.1 200
execute if score spellnumber2 spells matches 6 run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p3]"}," used Frostbolt on Slot 8!"]

#Heal
execute if score spellnumber2 spells matches 2 run scoreboard players operation spellHeal saves = heal spellStats
execute if score spellnumber2 spells matches 2 run scoreboard players operation spellHeal saves += spellbuffsp4 spells
execute if score spellnumber2 spells matches 2 run scoreboard players operation slot16 hp += spellHeal saves
execute if score spellnumber2 spells matches 2 run function chtoo:cleanseslot16
execute if score spellnumber2 spells matches 2 run scoreboard players set spellbuffsp4 spells 0
execute if score spellnumber2 spells matches 2 run function chtoo:spellphasep3
execute if score spellnumber2 spells matches 2 run execute at @n[type=armor_stand,name=slot16] run particle minecraft:composter ~ ~1 ~ 0.9 0.9 0.9 0.5 100
execute if score spellnumber2 spells matches 2 run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p4]"}," used Heal on Slot 8!"]

#Magic Missile
#Magic Missile Token
execute if score spellnumber2 spells matches -2 run scoreboard players operation spellDmg2 saves = magicMissile spellStats
execute if score spellnumber2 spells matches -2 run scoreboard players operation spellDmg2 saves += spellbuffsp3 spells
execute if score spellnumber2 spells matches -2 run scoreboard players operation spellDmg2 saves += marks slot16
execute if score spellnumber2 spells matches -2 run scoreboard players operation spellDmg2 saves /= atkmultiplier slot16
execute if score spellnumber2 spells matches -2 run execute if score ward slot16 matches 0 run scoreboard players operation shield slot16 -= spellDmg2 saves
execute if score spellnumber2 spells matches -2 run execute if score ward slot16 matches 0 if score shield slot16 matches ..0 run scoreboard players operation slot16 hp += shield slot16
execute if score spellnumber2 spells matches -2 run execute if score ward slot16 matches 1.. run function chtoo:wardslot16
execute if score spellnumber2 spells matches -2 run execute at @n[type=armor_stand,name=slot16] run particle minecraft:enchanted_hit ~ ~1 ~ 0.7 0.7 0.7 0.5 300
execute if score spellnumber2 spells matches -2 run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p3]"}," smited Slot 8 with Magic Missle!"]
execute if score spellnumber2 spells matches -2 run scoreboard players set attackIsOngoingGame2 booleans 0

#Magic Missile, Magic Missile! I smite thee with Magic Missile!
execute if score spellnumber2 spells matches 4 run scoreboard players operation spellDmg2 saves = magicMissile spellStats
execute if score spellnumber2 spells matches 4 run scoreboard players operation spellDmg2 saves += spellbuffsp3 spells
execute if score spellnumber2 spells matches 4 run scoreboard players operation spellDmg2 saves += marks slot16
execute if score spellnumber2 spells matches 4 run scoreboard players operation spellDmg2 saves /= atkmultiplier slot16
execute if score spellnumber2 spells matches 4 run execute if score ward slot16 matches 0 run scoreboard players operation shield slot16 -= spellDmg2 saves
execute if score spellnumber2 spells matches 4 run execute if score ward slot16 matches 0 if score shield slot16 matches ..0 run scoreboard players operation slot16 hp += shield slot16
execute if score spellnumber2 spells matches 4 run execute if score ward slot16 matches 1.. run function chtoo:wardslot16
execute if score spellnumber2 spells matches 4 run function chtoo:spellgivetargetsp4
execute if score spellnumber2 spells matches 4 run execute at @n[type=armor_stand,name=slot16] run particle minecraft:enchanted_hit ~ ~1 ~ 0.7 0.7 0.7 0.5 300
execute if score spellnumber2 spells matches 4 run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p3]"}," smited Slot 8 with Magic Missle!"]
execute if score spellnumber2 spells matches 4 run scoreboard players set spellnumber2 spells -2

#Protector's Rune
execute if score spellnumber2 spells matches 16 if score protectorsrune spellStats > durationSlot16 taunt run scoreboard players operation durationSlot16 taunt = protectorsrune spellStats
execute if score spellnumber2 spells matches 16 if score protectorsrune spellStats > durationSlot16 taunt if score ward slot16 matches 0 run scoreboard players operation marks slot16 += protectorsruneMarks spellStats
execute if score spellnumber2 spells matches 16 if score protectorsrune spellStats > durationSlot16 taunt if score ward slot16 matches 1.. run function chtoo:wardslot16
execute if score spellnumber2 spells matches 16 run function chtoo:spellphasep3
execute if score spellnumber2 spells matches 16 run execute at @n[type=armor_stand,name=slot16] run particle minecraft:block_crumble{block_state:"minecraft:emerald_ore"} ~ ~1 ~ 0.7 0.7 0.7 1 400
execute if score spellnumber2 spells matches 16 run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p4]"}," used Protector's Rune on Slot 8!"]

#Shield
execute if score spellnumber2 spells matches 8 run execute if score durationSlot16 shield < shieldDuration spellStats run scoreboard players operation durationSlot16 shield = shieldDuration spellStats
execute if score spellnumber2 spells matches 8 run scoreboard players operation shield slot16 += shield spellStats
execute if score spellnumber2 spells matches 8 run function chtoo:spellphasep3
execute if score spellnumber2 spells matches 8 run execute at @n[type=armor_stand,name=slot16] run particle wax_off ~ ~1 ~ 0.7 0.7 0.7 0.1 400
execute if score spellnumber2 spells matches 8 run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p4]"}," used Shield on Slot 8!"]

#Ball Lightning
execute if score spellnumber2 spells matches 9 if score ward slot16 matches 0 run scoreboard players operation slot16 stun += shockOrb spellStats
execute if score spellnumber2 spells matches 9 if score ward slot16 matches 1.. run function chtoo:wardslot16
execute if score spellnumber2 spells matches 9 run scoreboard players set attackIsOngoingGame2 booleans 0
execute if score spellnumber2 spells matches 9 run execute at @n[type=armor_stand,name=slot16] run particle flash ~ ~1 ~ 0.9 0.9 0.9 0.1 10
execute if score spellnumber2 spells matches 9 run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p3]"}," used Ball Lightning on Slot 8!"]

#Witches Brew
execute if score spellnumber2 spells matches 23 run execute if score ward slot16 matches 0 if score witchesBrewDuration spellStats > durationSlot16 speedDebuffs run scoreboard players operation durationSlot16 speedDebuffs = witchesBrewDuration spellStats
execute if score spellnumber2 spells matches 23 run execute if score ward slot16 matches 0 if score witchesBrewDuration spellStats > debuffDurationSlot16 atkmodifiers run scoreboard players operation debuffDurationSlot16 atkmodifiers = witchesBrewDuration spellStats
execute if score spellnumber2 spells matches 23 run execute if score ward slot16 matches 0 if score witchesBrewDuration spellStats > durationSlot16 poison run scoreboard players operation durationSlot16 poison = witchesBrewDuration spellStats
execute if score spellnumber2 spells matches 23 run execute if score ward slot16 matches 0 if score witchesBrewDuration spellStats > durationSlot16 burn run scoreboard players operation durationSlot16 burn = witchesBrewDuration spellStats
execute if score spellnumber2 spells matches 23 run execute if score ward slot16 matches 0 run scoreboard players operation speedDebuffSlot16 speedDebuffs += witchesBrewSpDebuff spellStats
execute if score spellnumber2 spells matches 23 run execute if score ward slot16 matches 0 run scoreboard players operation attackDebuffSlot16 atkmodifiers += witchesBrewDmgDebuff spellStats
execute if score spellnumber2 spells matches 23 run execute if score ward slot16 matches 0 run scoreboard players operation slot16Poison poison += witchesBrew spellStats
execute if score spellnumber2 spells matches 23 run execute if score ward slot16 matches 0 run scoreboard players operation slot16Burn burn += witchesBrewBurn spellStats
execute if score spellnumber2 spells matches 23 run execute if score ward slot16 matches 0 run scoreboard players operation speed slot16 -= witchesBrewSpDebuff spellStats
execute if score spellnumber2 spells matches 23 run execute if score ward slot16 matches 1.. run function chtoo:wardslot16
execute if score spellnumber2 spells matches 23 run scoreboard players set attackIsOngoingGame2 booleans 0
execute if score spellnumber2 spells matches 23 run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p3]"}," used Witches Brew on Slot 8!"]

#Shifting Shadows Token
execute if score spellnumber2 spells matches -1 if score shadowsPart1 spells matches 1 if score ward slot16 matches 0 run scoreboard players set durationSlot9-16 fear 1
execute if score spellnumber2 spells matches -1 if score shadowsPart1 spells matches 2 if score ward slot16 matches 0 run scoreboard players set durationSlot10-16 fear 1
execute if score spellnumber2 spells matches -1 if score shadowsPart1 spells matches 3 if score ward slot16 matches 0 run scoreboard players set durationSlot11-16 fear 1
execute if score spellnumber2 spells matches -1 if score shadowsPart1 spells matches 4 if score ward slot16 matches 0 run scoreboard players set durationSlot12-16 fear 1
execute if score spellnumber2 spells matches -1 if score ward slot16 matches 1.. run function chtoo:wardslot16
execute if score spellnumber2 spells matches -1 run scoreboard players set attackIsOngoingGame2 booleans 0
execute if score spellnumber2 spells matches -1 run execute at @n[type=armor_stand,name=slot16] run particle trial_omen ~ ~1 ~ 0.9 0.9 0.9 0.1 400
execute if score spellnumber2 spells matches -1 run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p3]"}," used Shifting Shadows to fear Slot 8!"]

#Shifting Shadows
execute if score spellnumber2 spells matches 28 run scoreboard players set shadowsPart1 spells 8
execute if score spellnumber2 spells matches 28 run function chtoo:spellgivetargetsp4
execute if score spellnumber2 spells matches 28 run scoreboard players set spellnumber2 spells -1
execute if score spellnumber2 spells matches 28 run execute at @n[type=armor_stand,name=slot16] run particle raid_omen ~ ~1 ~ 0.9 0.9 0.9 0.1 400
execute if score spellnumber2 spells matches 28 run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p4]"}," used Shifting Shadows to make Slot 8 scary!"]

#fireball
execute if score spellnumber2 spells matches 1 run scoreboard players operation spellDmg2 saves = fireball spellStats
execute if score spellnumber2 spells matches 1 run scoreboard players operation spellDmg2 saves += spellbuffsp3 spells
execute if score spellnumber2 spells matches 1 run scoreboard players operation spellDmg2 saves += marks slot16
execute if score spellnumber2 spells matches 1 run scoreboard players operation spellDmg2 saves /= atkmultiplier slot16
execute if score spellnumber2 spells matches 1 run execute if score ward slot16 matches 0 run scoreboard players operation shield slot16 -= spellDmg2 saves
execute if score spellnumber2 spells matches 1 run execute if score ward slot16 matches 0 run scoreboard players operation slot16 hp += shield slot16
execute if score spellnumber2 spells matches 1 run execute if score ward slot16 matches 0 if score durationSlot16 burn < fireballDuration spellStats run scoreboard players operation durationSlot16 burn = fireballDuration spellStats
execute if score spellnumber2 spells matches 1 run execute if score ward slot16 matches 0 run scoreboard players operation slot16Burn burn += fireballBurn spellStats
execute if score spellnumber2 spells matches 1 at @e[name=slot16] run particle minecraft:flame ~ ~1 ~ 0.9 0.9 0.9 0.5 100
execute if score spellnumber2 spells matches 1 run execute if score ward slot16 matches 1.. run function chtoo:wardslot16
execute if score spellnumber2 spells matches 1 run scoreboard players set spellbuffsp3 spells 0
execute if score spellnumber2 spells matches 1 run scoreboard players set attackIsOngoingGame2 booleans 0
execute if score spellnumber2 spells matches 1 run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p3]"}," used Fireball on Slot 8!"]

#meteor
execute if score spellnumber2 spells matches 7 run scoreboard players operation spellDmg2 saves = meteor spellStats
execute if score spellnumber2 spells matches 7 run scoreboard players operation spellDmg2 saves += spellbuffsp3 spells
execute if score spellnumber2 spells matches 7 run scoreboard players operation spellDmg2 saves += marks slot16
execute if score spellnumber2 spells matches 7 run scoreboard players operation spellDmg2 saves /= atkmultiplier slot16
execute if score spellnumber2 spells matches 7 run execute if score ward slot16 matches 0 run scoreboard players operation shield slot16 -= spellDmg2 saves
execute if score spellnumber2 spells matches 7 run execute if score ward slot16 matches 0 if score shield slot16 matches ..0 run scoreboard players operation slot16 hp += shield slot16
execute if score spellnumber2 spells matches 7 at @e[name=slot16] run particle minecraft:lava ~ ~1 ~ 0.9 0.9 0.9 0.5 100
execute if score spellnumber2 spells matches 7 at @e[name=slot15] run particle minecraft:lava ~ ~1 ~ 0.9 0.9 0.9 0.5 50
execute if score spellnumber2 spells matches 7 run execute if score ward slot16 matches 1.. run function chtoo:wardslot16
execute if score spellnumber2 spells matches 7 run scoreboard players operation spellDmg2 saves = meteor spellStats
execute if score spellnumber2 spells matches 7 run scoreboard players operation spellDmg2 saves += spellbuffsp4 spells
execute if score spellnumber2 spells matches 7 run scoreboard players operation spellDmg2 saves /= meteorSplash spellStats
execute if score spellnumber2 spells matches 7 run scoreboard players operation spellDmg2 saves += marks slot15
execute if score spellnumber2 spells matches 7 run scoreboard players operation spellDmg2 saves /= atkmultiplier slot15
execute if score spellnumber2 spells matches 7 run execute if score ward slot15 matches 0 run scoreboard players operation shield slot15 -= spellDmg2 saves
execute if score spellnumber2 spells matches 7 run execute if score ward slot15 matches 0 if score shield slot15 matches ..0 run scoreboard players operation slot15 hp += shield slot15
execute if score spellnumber2 spells matches 7 run execute if score ward slot15 matches 1.. run function chtoo:wardslot15
execute if score spellnumber2 spells matches 7 run scoreboard players set spellbuffsp3 spells 0
execute if score spellnumber2 spells matches 7 run scoreboard players set attackIsOngoingGame2 booleans 0
execute if score spellnumber2 spells matches 7 run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p3]"}," used Meteor on Slot 8!"]

#witchbolt
execute if score spellnumber2 spells matches 10 run scoreboard players operation spellDmg2 saves = witchbolt spellStats
execute if score spellnumber2 spells matches 10 run scoreboard players operation spellDmg2 saves += spellbuffsp3 spells
execute if score spellnumber2 spells matches 10 run scoreboard players operation spellDmg2 saves += marks slot16
execute if score spellnumber2 spells matches 10 run scoreboard players operation spellDmg2 saves /= atkmultiplier slot16
execute if score spellnumber2 spells matches 10 run execute if score ward slot16 matches 0 run scoreboard players operation shield slot16 -= spellDmg2 saves
execute if score spellnumber2 spells matches 10 run execute if score ward slot16 matches 0 if score shield slot10 matches ..0 run scoreboard players operation slot16 hp += shield slot16
execute if score spellnumber2 spells matches 10 at @e[name=slot16] run particle minecraft:enchanted_hit ~ ~1 ~ 0.9 0.9 0.9 0.5 200
execute if score spellnumber2 spells matches 10 run execute if score ward slot16 matches 1.. run function chtoo:wardslot16
execute if score spellnumber2 spells matches 10 run scoreboard players set spellbuffsp3 spells 0
execute if score spellnumber2 spells matches 10 run scoreboard players set attackIsOngoingGame2 booleans 0
execute if score spellnumber2 spells matches 10 run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p3]"}," used Witch Bolt on Slot 8!"]
#ward
execute if score spellnumber2 spells matches 19 run scoreboard players set ward slot16 1
execute if score spellnumber2 spells matches 19 at @e[name=slot16] run particle minecraft:ominous_spawning ~ ~1 ~ 0.9 0.9 0.9 0.1 100
execute if score spellnumber2 spells matches 19 run function chtoo:spellphasep3
execute if score spellnumber2 spells matches 19 run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p4]"}," used Ward on Slot 8!"]

#plague
execute if score spellnumber2 spells matches 21 if score ward slot16 matches 0 run scoreboard players operation slot16Disease disease += plague spellStats
execute if score spellnumber2 spells matches 21 at @e[name=slot16] run particle minecraft:trial_omen ~ ~1 ~ 0.9 0.9 0.9 0.5 100
execute if score spellnumber2 spells matches 21 if score ward slot16 matches 1.. run function chtoo:wardslot16
execute if score spellnumber2 spells matches 21 run scoreboard players set attackIsOngoingGame2 booleans 0
execute if score spellnumber2 spells matches 21 run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p3]"}," used Plague on Slot 8!"]

#Second wind
execute if score spellnumber2 spells matches 22 run execute if score durationSlot16 speedBuffs < secondWindDuration spellStats run scoreboard players operation durationSlot16 speedBuffs = secondWindDuration spellStats
execute if score spellnumber2 spells matches 22 run scoreboard players operation speedBuffSlot16 speedBuffs += secondWindSpeed spellStats
execute if score spellnumber2 spells matches 22 run scoreboard players operation speed slot16 += secondWindSpeed spellStats
execute if score spellnumber2 spells matches 22 if score slot16bleeding booleaneffects matches 0 run scoreboard players operation slot16 hp += secondWind spellStats
execute if score spellnumber2 spells matches 22 if score slot16bleeding booleaneffects matches 0 run scoreboard players operation slot16 hp += spellbuffsp4 spells
execute if score spellnumber2 spells matches 22 at @e[name=slot16] run particle minecraft:trial_spawner_detection_ominous ~ ~1 ~ 0.9 0.9 0.9 0.5 100
execute if score spellnumber2 spells matches 22 run function chtoo:spellphasep3
execute if score spellnumber2 spells matches 22 run scoreboard players set spellbuffsp4 spells 0
execute if score spellnumber2 spells matches 22 run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p4]"}," used Second Wind on Slot 8!"]

#fountain of youth
execute if score spellnumber2 spells matches 25 run execute if score disarmedslot16 booleaneffects < fountainOfYouthDuration spellStats run scoreboard players operation disarmedslot16 booleaneffects = fountainOfYouthDuration spellStats
execute if score spellnumber2 spells matches 25 if score slot16bleeding booleaneffects matches 0 run scoreboard players operation slot16 hp += fountainOfYouth spellStats
execute if score spellnumber2 spells matches 25 if score slot16bleeding booleaneffects matches 0 run scoreboard players operation slot16 hp += spellbuffsp4 spells
execute if score spellnumber2 spells matches 25 at @e[name=slot16] run particle minecraft:composter ~ ~1 ~ 0.9 0.9 0.9 0.5 500
execute if score spellnumber2 spells matches 25 run function chtoo:spellphasep3
execute if score spellnumber2 spells matches 25 run scoreboard players set spellbuffsp4 spells 0
execute if score spellnumber2 spells matches 25 run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p4]"}," used Fountain of Youth on Slot 8!"]

#overclock
execute if score spellnumber2 spells matches 27 run execute if score buffDurationSlot16 atkmodifiers < overclockDuration spellStats run scoreboard players operation buffDurationSlot16 atkmodifiers = overclockDuration spellStats
execute if score spellnumber2 spells matches 27 run scoreboard players operation attackBuffSlot16 atkmodifiers += overclock spellStats
execute if score spellnumber2 spells matches 27 run scoreboard players operation shield slot16 -= overclockAtk spellStats
execute if score spellnumber2 spells matches 27 if score shield slot16 matches ..0 run scoreboard players operation slot16 hp += shield slot16
execute if score spellnumber2 spells matches 27 at @e[name=slot16] run particle minecraft:trial_spawner_detection ~ ~1 ~ 0.9 0.9 0.9 0.5 400
execute if score spellnumber2 spells matches 27 run function chtoo:spellphasep3
execute if score spellnumber2 spells matches 27 run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p4]"}," used Overclock on Slot 8!"]

#This goes at the bottom
execute if score shield slot13 matches ..0 run scoreboard players set shield slot13 0
execute if score shield slot14 matches ..0 run scoreboard players set shield slot14 0
execute if score shield slot15 matches ..0 run scoreboard players set shield slot15 0
execute if score shield slot16 matches ..0 run scoreboard players set shield slot16 0

execute if score game2Ongoing ongoinggames matches 1 run execute if score slot9 hp matches ..0 run execute unless score speed slot9 matches ..-900000 run function chtoo:death1
execute if score game2Ongoing ongoinggames matches 1 run execute if score slot10 hp matches ..0 run execute unless score speed slot10 matches ..-900000 run function chtoo:death2
execute if score game2Ongoing ongoinggames matches 1 run execute if score slot11 hp matches ..0 run execute unless score speed slot11 matches ..-900000 run function chtoo:death3
execute if score game2Ongoing ongoinggames matches 1 unless score character# slot12 matches 0 run execute if score slot12 hp matches ..0 run execute unless score speed slot12 matches ..-900000 run function chtoo:death4
execute if score game2Ongoing ongoinggames matches 1 run execute if score slot13 hp matches ..0 run execute unless score speed slot13 matches ..-900000 run function chtoo:death5
execute if score game2Ongoing ongoinggames matches 1 run execute if score slot14 hp matches ..0 run execute unless score speed slot14 matches ..-900000 run function chtoo:death6
execute if score game2Ongoing ongoinggames matches 1 run execute if score slot15 hp matches ..0 run execute unless score speed slot15 matches ..-900000 run function chtoo:death7
execute if score game2Ongoing ongoinggames matches 1 unless score character# slot16 matches 0 run execute if score slot16 hp matches ..0 run execute unless score speed slot16 matches ..-900000 run function chtoo:death8





