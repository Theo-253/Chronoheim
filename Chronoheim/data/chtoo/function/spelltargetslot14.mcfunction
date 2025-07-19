effect clear @a[tag=game2] weakness
clear @a[tag=game2]

#Dragonforge
execute if score spellnumber2 spells matches 26 run execute if score durationSlot14 shield < dragonforgeDuration spellStats run scoreboard players operation durationSlot14 shield = dragonforgeDuration spellStats
execute if score spellnumber2 spells matches 26 run scoreboard players operation shield slot14 += dragonforge spellStats
execute if score spellnumber2 spells matches 26 run execute if score alivep4 deaths matches 1 run scoreboard players operation shield slot14 += dragonforge spellStats
execute if score spellnumber2 spells matches 26 run function chtoo:spellphasep3
execute if score spellnumber2 spells matches 26 run execute if score alivep4 deaths matches 1 run execute at @n[type=armor_stand,name=slot14] run particle dragon_breath ~ ~1 ~ 0.9 0.9 0.9 0.1 400
execute if score spellnumber2 spells matches 26 run execute if score alivep4 deaths matches 2.. run execute at @n[type=armor_stand,name=slot14] run particle dragon_breath ~ ~1 ~ 0.9 0.9 0.9 0.1 100
execute if score spellnumber2 spells matches 26 run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p4]"}," used Dragonforge on Slot 6!"]

#Embiggen
execute if score spellnumber2 spells matches 13 run execute if score buffDurationSlot14 atkmodifiers < embiggenDuration spellStats run scoreboard players operation buffDurationSlot14 atkmodifiers = embiggenDuration spellStats
execute if score spellnumber2 spells matches 13 run scoreboard players operation attackBuffSlot14 atkmodifiers += embiggenBuff spellStats
execute if score spellnumber2 spells matches 13 run execute if score durationSlot14 shield < embiggenDuration spellStats run scoreboard players operation durationSlot14 shield = embiggenDuration spellStats
execute if score spellnumber2 spells matches 13 run scoreboard players operation shield slot14 += embiggen spellStats
execute if score spellnumber2 spells matches 13 run function chtoo:spellphasep3
execute if score spellnumber2 spells matches 13 run execute at @n[type=armor_stand,name=slot14] run particle minecraft:egg_crack ~ ~1 ~ 0.9 0.9 0.9 0.1 100
execute if score spellnumber2 spells matches 13 run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p4]"}," used Embiggen on Slot 6!"]

#Embrittle
execute if score spellnumber2 spells matches 12 if score ward slot14 matches 0 run execute if score debuffDurationSlot14 atkmodifiers < embrittleDuration spellStats run scoreboard players operation debuffDurationSlot14 atkmodifiers = embrittleDuration spellStats
execute if score spellnumber2 spells matches 12 if score ward slot14 matches 0 run scoreboard players operation attackDebuffSlot14 atkmodifiers += embrittle spellStats
execute if score spellnumber2 spells matches 12 if score ward slot14 matches 1.. run function chtoo:wardslot14
execute if score spellnumber2 spells matches 12 run scoreboard players set attackIsOngoingGame2 booleans 0
execute if score spellnumber2 spells matches 12 run execute at @n[type=armor_stand,name=slot14] run particle minecraft:block_crumble{block_state:"minecraft:ice"} ~ ~1 ~ 0.9 0.9 0.9 0.1 200
execute if score spellnumber2 spells matches 12 run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p3]"}," used Embrittle on Slot 6!"]

#Evil Eye
execute if score spellnumber2 spells matches 15 if score ward slot14 matches 0 run scoreboard players operation marks slot14 += evilEye spellStats
execute if score spellnumber2 spells matches 15 if score ward slot14 matches 1.. run function chtoo:wardslot14
execute if score spellnumber2 spells matches 15 run scoreboard players set attackIsOngoingGame2 booleans 0
execute if score spellnumber2 spells matches 15 run execute at @n[type=armor_stand,name=slot14] run particle minecraft:effect ~ ~1 ~ 0.7 0.7 0.7 0.1 200
execute if score spellnumber2 spells matches 6 run execute at @n[type=armor_stand,name=slot14] run particle minecraft:item_snowball ~ ~1 ~ 0.7 0.7 0.7 0.1 200
execute if score spellnumber2 spells matches 15 run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p3]"}," used Evil Eye on Slot 6!"]

#Frostbolt
execute if score spellnumber2 spells matches 6 run scoreboard players operation spellDmg2 saves = frostbolt spellStats
execute if score spellnumber2 spells matches 6 run scoreboard players operation spellDmg2 saves += spellbuffsp3 spells
execute if score spellnumber2 spells matches 6 run scoreboard players operation spellDmg2 saves += marks slot14
execute if score spellnumber2 spells matches 6 run scoreboard players operation spellDmg2 saves /= atkmultiplier slot14
execute if score spellnumber2 spells matches 6 run execute if score ward slot14 matches 0 run scoreboard players operation shield slot14 -= spellDmg2 saves
execute if score spellnumber2 spells matches 6 run execute if score ward slot14 matches 0 if score frostboltDuration spellStats > durationSlot14 speedDebuffs run scoreboard players operation durationSlot14 speedDebuffs = frostboltDuration spellStats
execute if score spellnumber2 spells matches 6 run execute if score ward slot14 matches 0 if score frostboltDuration spellStats > debuffDurationSlot14 atkmodifiers run scoreboard players operation debuffDurationSlot14 atkmodifiers = frostboltDuration spellStats
execute if score spellnumber2 spells matches 6 run execute if score ward slot14 matches 0 run scoreboard players operation speedDebuffSlot14 speedDebuffs += frostboltSpDebuff spellStats
execute if score spellnumber2 spells matches 6 run execute if score ward slot14 matches 0 run scoreboard players operation attackDebuffSlot14 atkmodifiers += frostboltDmgDebuff spellStats
execute if score spellnumber2 spells matches 6 run execute if score ward slot14 matches 0 run scoreboard players operation speed slot14 -= frostboltSpDebuff spellStats
execute if score spellnumber2 spells matches 6 run execute if score ward slot14 matches 0 if score shield slot14 matches ..0 run scoreboard players operation slot14 hp += shield slot14
execute if score spellnumber2 spells matches 6 run execute if score ward slot14 matches 1.. run function chtoo:wardslot14
execute if score spellnumber2 spells matches 6 run scoreboard players set spellbuffsp3 spells 0
execute if score spellnumber2 spells matches 6 run scoreboard players set attackIsOngoingGame2 booleans 0
execute if score spellnumber2 spells matches 6 run execute at @n[type=armor_stand,name=slot14] run particle minecraft:item_snowball ~ ~1 ~ 0.7 0.7 0.7 0.1 200
execute if score spellnumber2 spells matches 6 run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p3]"}," used Frostbolt on Slot 6!"]

#Heal
execute if score spellnumber2 spells matches 2 run scoreboard players operation spellHeal saves = heal spellStats
execute if score spellnumber2 spells matches 2 run scoreboard players operation spellHeal saves += spellbuffsp4 spells
execute if score spellnumber2 spells matches 2 run scoreboard players operation slot14 hp += spellHeal saves
execute if score spellnumber2 spells matches 2 run function chtoo:cleanseslot14
execute if score spellnumber2 spells matches 2 run scoreboard players set spellbuffsp4 spells 0
execute if score spellnumber2 spells matches 2 run function chtoo:spellphasep3
execute if score spellnumber2 spells matches 2 run execute at @n[type=armor_stand,name=slot14] run particle minecraft:composter ~ ~1 ~ 0.9 0.9 0.9 0.5 100
execute if score spellnumber2 spells matches 2 run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p4]"}," used Heal on Slot 6!"]

#Magic Missile
execute if score spellnumber2 spells matches 4 run scoreboard players add magicmissilex3 spells 1
execute if score spellnumber2 spells matches 4 run scoreboard players operation spellDmg2 saves = magicMissile spellStats
execute if score spellnumber2 spells matches 4 run scoreboard players operation spellDmg2 saves += spellbuffsp3 spells
execute if score spellnumber2 spells matches 4 run scoreboard players operation spellDmg2 saves += marks slot14
execute if score spellnumber2 spells matches 4 run scoreboard players operation spellDmg2 saves /= atkmultiplier slot14
execute if score spellnumber2 spells matches 4 run execute if score ward slot14 matches 0 run scoreboard players operation shield slot14 -= spellDmg2 saves
execute if score spellnumber2 spells matches 4 run execute if score ward slot14 matches 0 if score shield slot14 matches ..0 run scoreboard players operation slot14 hp += shield slot14
execute if score spellnumber2 spells matches 4 run execute if score ward slot14 matches 1.. run function chtoo:wardslot14
execute if score spellnumber2 spells matches 4 run execute at @n[type=armor_stand,name=slot14] run particle minecraft:enchanted_hit ~ ~1 ~ 0.7 0.7 0.7 0.5 300
execute if score spellnumber2 spells matches 4 run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p3]"}," smited Slot 6 with Magic Missle!"]
execute if score spellnumber2 spells matches 4 run execute if score magicmissilex3 spells matches 1 run function chtoo:spellgivetargetsp3
execute if score spellnumber2 spells matches 4 run execute if score magicmissilex3 spells matches 2 run scoreboard players set spellbuffsp3 spells 0
execute if score spellnumber2 spells matches 4 run execute if score magicmissilex3 spells matches 2 run clear @a[tag=p3] target
execute if score spellnumber2 spells matches 4 run execute if score magicmissilex3 spells matches 2 run scoreboard players set attackIsOngoingGame2 booleans 0
execute if score spellnumber2 spells matches 4 run execute if score magicmissilex3 spells matches 2 run scoreboard players set magicmissilex3 spells 0

#Protector's Rune
execute if score spellnumber2 spells matches 16 if score protectorsrune spellStats > durationSlot14 taunt run scoreboard players operation durationSlot14 taunt = protectorsrune spellStats
execute if score spellnumber2 spells matches 16 if score protectorsrune spellStats > durationSlot14 taunt if score ward slot14 matches 0 run scoreboard players operation marks slot14 += protectorsruneMarks spellStats
execute if score spellnumber2 spells matches 16 if score protectorsrune spellStats > durationSlot14 taunt if score ward slot14 matches 1.. run function chtoo:wardslot14
execute if score spellnumber2 spells matches 16 run function chtoo:spellphasep3
execute if score spellnumber2 spells matches 16 run execute at @n[type=armor_stand,name=slot14] run particle minecraft:block_crumble{block_state:"minecraft:emerald_ore"} ~ ~1 ~ 0.7 0.7 0.7 1 400
execute if score spellnumber2 spells matches 16 run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p4]"}," used Protector's Rune on Slot 6!"]

#Shield
execute if score spellnumber2 spells matches 8 run execute if score durationSlot14 shield < shieldDuration spellStats run scoreboard players operation durationSlot14 shield = shieldDuration spellStats
execute if score spellnumber2 spells matches 8 run scoreboard players operation shield slot14 += shield spellStats
execute if score spellnumber2 spells matches 8 run function chtoo:spellphasep3
execute if score spellnumber2 spells matches 8 run execute at @n[type=armor_stand,name=slot14] run particle wax_off ~ ~1 ~ 0.7 0.7 0.7 0.1 400
execute if score spellnumber2 spells matches 8 run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p4]"}," used Shield on Slot 6!"]

#Ball Lightning
execute if score spellnumber2 spells matches 9 if score ward slot14 matches 0 run scoreboard players operation slot14 stun += shockOrb spellStats
execute if score spellnumber2 spells matches 9 if score ward slot14 matches 1.. run function chtoo:wardslot14
execute if score spellnumber2 spells matches 9 run scoreboard players set attackIsOngoingGame2 booleans 0
execute if score spellnumber2 spells matches 9 run execute at @n[type=armor_stand,name=slot14] run particle flash ~ ~1 ~ 0.9 0.9 0.9 0.1 10
execute if score spellnumber2 spells matches 9 run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p3]"}," used Ball Lightning on Slot 6!"]

#Witches Brew
execute if score spellnumber2 spells matches 23 run execute if score ward slot14 matches 0 if score witchesBrewDuration spellStats > durationSlot14 speedDebuffs run scoreboard players operation durationSlot14 speedDebuffs = witchesBrewDuration spellStats
execute if score spellnumber2 spells matches 23 run execute if score ward slot14 matches 0 if score witchesBrewDuration spellStats > debuffDurationSlot14 atkmodifiers run scoreboard players operation debuffDurationSlot14 atkmodifiers = witchesBrewDuration spellStats
execute if score spellnumber2 spells matches 23 run execute if score ward slot14 matches 0 if score witchesBrewDuration spellStats > durationSlot14 poison run scoreboard players operation durationSlot14 poison = witchesBrewDuration spellStats
execute if score spellnumber2 spells matches 23 run execute if score ward slot14 matches 0 if score witchesBrewDuration spellStats > durationSlot14 burn run scoreboard players operation durationSlot14 burn = witchesBrewDuration spellStats
execute if score spellnumber2 spells matches 23 run execute if score ward slot14 matches 0 run scoreboard players operation speedDebuffSlot14 speedDebuffs += witchesBrewSpDebuff spellStats
execute if score spellnumber2 spells matches 23 run execute if score ward slot14 matches 0 run scoreboard players operation attackDebuffSlot14 atkmodifiers += witchesBrewDmgDebuff spellStats
execute if score spellnumber2 spells matches 23 run execute if score ward slot14 matches 0 run scoreboard players operation slot14Poison poison += witchesBrew spellStats
execute if score spellnumber2 spells matches 23 run execute if score ward slot14 matches 0 run scoreboard players operation slot14Burn burn += witchesBrewBurn spellStats
execute if score spellnumber2 spells matches 23 run execute if score ward slot14 matches 0 run scoreboard players operation speed slot14 -= witchesBrewSpDebuff spellStats
execute if score spellnumber2 spells matches 23 run execute if score ward slot14 matches 1.. run function chtoo:wardslot14
execute if score spellnumber2 spells matches 23 run scoreboard players set attackIsOngoingGame2 booleans 0
execute if score spellnumber2 spells matches 23 run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p3]"}," used Witches Brew on Slot 6!"]

#Shifting Shadows Token
execute if score spellnumber2 spells matches -1 if score shadowsPart1 spells matches 1 if score ward slot14 matches 0 run scoreboard players set durationSlot9-14 fear 1
execute if score spellnumber2 spells matches -1 if score shadowsPart1 spells matches 2 if score ward slot14 matches 0 run scoreboard players set durationSlot10-14 fear 1
execute if score spellnumber2 spells matches -1 if score shadowsPart1 spells matches 3 if score ward slot14 matches 0 run scoreboard players set durationSlot11-14 fear 1
execute if score spellnumber2 spells matches -1 if score shadowsPart1 spells matches 4 if score ward slot14 matches 0 run scoreboard players set durationSlot12-14 fear 1
execute if score spellnumber2 spells matches -1 if score ward slot14 matches 1.. run function chtoo:wardslot14
execute if score spellnumber2 spells matches -1 run scoreboard players set attackIsOngoingGame2 booleans 0
execute if score spellnumber2 spells matches -1 run execute at @n[type=armor_stand,name=slot14] run particle trial_omen ~ ~1 ~ 0.9 0.9 0.9 0.1 400
execute if score spellnumber2 spells matches -1 run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p3]"}," used Shifting Shadows to fear Slot 6!"]

#Shifting Shadows
execute if score spellnumber2 spells matches 28 run scoreboard players set shadowsPart1 spells 6
execute if score spellnumber2 spells matches 28 run function chtoo:spellgivetargetsp4
execute if score spellnumber2 spells matches 28 run scoreboard players set spellnumber2 spells -1
execute if score spellnumber2 spells matches 28 run execute at @n[type=armor_stand,name=slot14] run particle raid_omen ~ ~1 ~ 0.9 0.9 0.9 0.1 400
execute if score spellnumber2 spells matches 28 run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p4]"}," used Shifting Shadows to make Slot 6 scary!"]

#fireball
execute if score spellnumber2 spells matches 1 run scoreboard players operation spellDmg2 saves = fireball spellStats
execute if score spellnumber2 spells matches 1 run scoreboard players operation spellDmg2 saves += spellbuffsp3 spells
execute if score spellnumber2 spells matches 1 run scoreboard players operation spellDmg2 saves += marks slot14
execute if score spellnumber2 spells matches 1 run scoreboard players operation spellDmg2 saves /= atkmultiplier slot14
execute if score spellnumber2 spells matches 1 run execute if score ward slot14 matches 0 run scoreboard players operation shield slot14 -= spellDmg2 saves
execute if score spellnumber2 spells matches 1 run execute if score ward slot14 matches 0 run scoreboard players operation slot14 hp += shield slot14
execute if score spellnumber2 spells matches 1 run execute if score ward slot14 matches 0 if score durationSlot14 burn < fireballDuration spellStats run scoreboard players operation durationSlot14 burn = fireballDuration spellStats
execute if score spellnumber2 spells matches 1 run execute if score ward slot14 matches 0 run scoreboard players operation slot14Burn burn += fireballBurn spellStats
execute if score spellnumber2 spells matches 1 at @e[name=slot14] run particle minecraft:flame ~ ~1 ~ 0.9 0.9 0.9 0.5 100
execute if score spellnumber2 spells matches 1 run execute if score ward slot14 matches 1.. run function chtoo:wardslot14
execute if score spellnumber2 spells matches 1 run scoreboard players set spellbuffsp3 spells 0
execute if score spellnumber2 spells matches 1 run scoreboard players set attackIsOngoingGame2 booleans 0
execute if score spellnumber2 spells matches 1 run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p3]"}," used Fireball on Slot 6!"]

#meteor
execute if score spellnumber2 spells matches 7 run scoreboard players operation spellDmg2 saves = meteor spellStats
execute if score spellnumber2 spells matches 7 run scoreboard players operation spellDmg2 saves += spellbuffsp3 spells
execute if score spellnumber2 spells matches 7 run scoreboard players operation spellDmg2 saves += marks slot14
execute if score spellnumber2 spells matches 7 run scoreboard players operation spellDmg2 saves /= atkmultiplier slot14
execute if score spellnumber2 spells matches 7 run execute if score ward slot14 matches 0 run scoreboard players operation shield slot14 -= spellDmg2 saves
execute if score spellnumber2 spells matches 7 run execute if score ward slot14 matches 0 if score shield slot14 matches ..0 run scoreboard players operation slot14 hp += shield slot14
execute if score spellnumber2 spells matches 7 at @e[name=slot14] run particle minecraft:lava ~ ~1 ~ 0.9 0.9 0.9 0.5 100
execute if score spellnumber2 spells matches 7 at @e[name=slot13] run particle minecraft:lava ~ ~1 ~ 0.9 0.9 0.9 0.5 50
execute if score spellnumber2 spells matches 7 at @e[name=slot15] run particle minecraft:lava ~ ~1 ~ 0.9 0.9 0.9 0.5 50
execute if score spellnumber2 spells matches 7 run execute if score ward slot14 matches 1.. run function chtoo:wardslot14
execute if score spellnumber2 spells matches 7 run scoreboard players operation spellDmg2 saves = meteor spellStats
execute if score spellnumber2 spells matches 7 run scoreboard players operation spellDmg2 saves += spellbuffsp4 spells
execute if score spellnumber2 spells matches 7 run scoreboard players operation spellDmg2 saves /= meteorSplash spellStats
execute if score spellnumber2 spells matches 7 run scoreboard players operation spellDmg2 saves += marks slot13
execute if score spellnumber2 spells matches 7 run scoreboard players operation spellDmg2 saves /= atkmultiplier slot13
execute if score spellnumber2 spells matches 7 run execute if score ward slot13 matches 0 run scoreboard players operation shield slot13 -= spellDmg2 saves
execute if score spellnumber2 spells matches 7 run execute if score ward slot13 matches 0 if score shield slot13 matches ..0 run scoreboard players operation slot13 hp += shield slot13
execute if score spellnumber2 spells matches 7 run execute if score ward slot13 matches 1.. run function chtoo:wardslot13
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
execute if score spellnumber2 spells matches 7 run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p3]"}," used Meteor on Slot 6!"]

#witchbolt
execute if score spellnumber2 spells matches 10 run scoreboard players operation spellDmg2 saves = witchbolt spellStats
execute if score spellnumber2 spells matches 10 run scoreboard players operation spellDmg2 saves += spellbuffsp3 spells
execute if score spellnumber2 spells matches 10 run scoreboard players operation spellDmg2 saves += marks slot14
execute if score spellnumber2 spells matches 10 run scoreboard players operation spellDmg2 saves /= atkmultiplier slot14
execute if score spellnumber2 spells matches 10 run execute if score ward slot14 matches 0 run scoreboard players operation shield slot14 -= spellDmg2 saves
execute if score spellnumber2 spells matches 10 run execute if score ward slot14 matches 0 if score shield slot14 matches ..0 run scoreboard players operation slot14 hp += shield slot14
execute if score spellnumber2 spells matches 10 at @e[name=slot14] run particle minecraft:enchanted_hit ~ ~1 ~ 0.9 0.9 0.9 0.5 200
execute if score spellnumber2 spells matches 10 run execute if score ward slot14 matches 1.. run function chtoo:wardslot14
execute if score spellnumber2 spells matches 10 run scoreboard players set spellbuffsp3 spells 0
execute if score spellnumber2 spells matches 10 run scoreboard players set attackIsOngoingGame2 booleans 0
execute if score spellnumber2 spells matches 10 run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p3]"}," used Witch Bolt on Slot 6!"]
#ward
execute if score spellnumber2 spells matches 19 run scoreboard players set ward slot14 1
execute if score spellnumber2 spells matches 19 at @e[name=slot14] run particle minecraft:ominous_spawning ~ ~1 ~ 0.9 0.9 0.9 0.1 100
execute if score spellnumber2 spells matches 19 run function chtoo:spellphasep3
execute if score spellnumber2 spells matches 19 run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p4]"}," used Ward on Slot 6!"]

#plague
execute if score spellnumber2 spells matches 21 if score ward slot14 matches 0 run scoreboard players operation slot14Disease disease += plague spellStats
execute if score spellnumber2 spells matches 21 at @e[name=slot14] run particle minecraft:trial_omen ~ ~1 ~ 0.9 0.9 0.9 0.5 100
execute if score spellnumber2 spells matches 21 if score ward slot14 matches 1.. run function chtoo:wardslot14
execute if score spellnumber2 spells matches 21 run scoreboard players set attackIsOngoingGame2 booleans 0
execute if score spellnumber2 spells matches 21 run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p3]"}," used Plague on Slot 6!"]

#Second wind
execute if score spellnumber2 spells matches 22 run execute if score durationSlot14 speedBuffs < secondWindDuration spellStats run scoreboard players operation durationSlot14 speedBuffs = secondWindDuration spellStats
execute if score spellnumber2 spells matches 22 run scoreboard players operation speedBuffSlot14 speedBuffs += secondWindSpeed spellStats
execute if score spellnumber2 spells matches 22 run scoreboard players operation speed slot14 += secondWindSpeed spellStats
execute if score spellnumber2 spells matches 22 if score slot14bleeding booleaneffects matches 0 run scoreboard players operation slot14 hp += secondWind spellStats
execute if score spellnumber2 spells matches 22 if score slot14bleeding booleaneffects matches 0 run scoreboard players operation slot14 hp += spellbuffsp4 spells
execute if score spellnumber2 spells matches 22 at @e[name=slot14] run particle minecraft:trial_spawner_detection_ominous ~ ~1 ~ 0.9 0.9 0.9 0.5 100
execute if score spellnumber2 spells matches 22 run function chtoo:spellphasep3
execute if score spellnumber2 spells matches 22 run scoreboard players set spellbuffsp4 spells 0
execute if score spellnumber2 spells matches 22 run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p4]"}," used Second Wind on Slot 6!"]

#fountain of youth
execute if score spellnumber2 spells matches 25 run execute if score disarmedslot14 booleaneffects < fountainOfYouthDuration spellStats run scoreboard players operation disarmedslot14 booleaneffects = fountainOfYouthDuration spellStats
execute if score spellnumber2 spells matches 25 if score slot14bleeding booleaneffects matches 0 run scoreboard players operation slot14 hp += fountainOfYouth spellStats
execute if score spellnumber2 spells matches 25 if score slot14bleeding booleaneffects matches 0 run scoreboard players operation slot14 hp += spellbuffsp4 spells
execute if score spellnumber2 spells matches 25 at @e[name=slot14] run particle minecraft:composter ~ ~1 ~ 0.9 0.9 0.9 0.5 500
execute if score spellnumber2 spells matches 25 run function chtoo:spellphasep3
execute if score spellnumber2 spells matches 25 run scoreboard players set spellbuffsp4 spells 0
execute if score spellnumber2 spells matches 25 run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p4]"}," used Fountain of Youth on Slot 6!"]

#overclock
execute if score spellnumber2 spells matches 27 run execute if score buffDurationSlot14 atkmodifiers < overclockDuration spellStats run scoreboard players operation buffDurationSlot14 atkmodifiers = overclockDuration spellStats
execute if score spellnumber2 spells matches 27 run scoreboard players operation attackBuffSlot14 atkmodifiers += overclock spellStats
execute if score spellnumber2 spells matches 27 run scoreboard players operation shield slot14 -= overclockAtk spellStats
execute if score spellnumber2 spells matches 27 if score shield slot14 matches ..0 run scoreboard players operation slot14 hp += shield slot14
execute if score spellnumber2 spells matches 27 at @e[name=slot14] run particle minecraft:trial_spawner_detection ~ ~1 ~ 0.9 0.9 0.9 0.5 400
execute if score spellnumber2 spells matches 27 run function chtoo:spellphasep3
execute if score spellnumber2 spells matches 27 run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p4]"}," used Overclock on Slot 6!"]

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



