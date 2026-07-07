effect clear @a[tag=game2] weakness
clear @a[tag=game2]

#Dragonforge
execute if score spellnumber2 spells matches 26 run execute if score durationSlot15 shield < dragonforgeDuration spellStats run scoreboard players operation durationSlot15 shield = dragonforgeDuration spellStats 
execute if score spellnumber2 spells matches 26 run scoreboard players operation shield slot15 += dragonforge spellStats
execute if score spellnumber2 spells matches 26 run execute if score slot14 hp matches ..0 if score slot13 hp matches ..0 if score slot16 hp matches ..0 run scoreboard players operation shield slot15 += dragonforge spellStats
execute if score spellnumber2 spells matches 26 run function chtoo:spellphasep3
execute if score spellnumber2 spells matches 26 run execute if score slot14 hp matches ..0 if score slot13 hp matches ..0 if score slot16 hp matches ..0 run execute at @n[type=armor_stand,name=slot14] run particle dragon_breath ~ ~1 ~ 0.9 0.9 0.9 0.1 400
execute if score spellnumber2 spells matches 26 run execute at @n[type=armor_stand,name=slot14] run particle dragon_breath ~ ~1 ~ 0.9 0.9 0.9 0.1 100
execute if score spellnumber2 spells matches 26 run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p4]"}," used Dragonforge on Slot 7!"]

#Embiggen
execute if score spellnumber2 spells matches 13 run execute if score buffDurationSlot15 atkmodifiers < embiggenDuration spellStats run scoreboard players operation buffDurationSlot15 atkmodifiers = embiggenDuration spellStats
execute if score spellnumber2 spells matches 13 run scoreboard players operation attackBuffSlot15 atkmodifiers += embiggenBuff spellStats
execute if score spellnumber2 spells matches 13 run scoreboard players operation maxhp slot15 += embiggen spellStats
execute if score spellnumber2 spells matches 13 run scoreboard players operation slot15 hp += embiggen spellStats
execute if score spellnumber2 spells matches 13 run function chtoo:spellphasep3
execute if score spellnumber2 spells matches 13 run execute at @n[type=armor_stand,name=slot15] run particle minecraft:egg_crack ~ ~1 ~ 0.9 0.9 0.9 0.1 100
execute if score spellnumber2 spells matches 13 run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p4]"}," used Embiggen on Slot 7!"]

#Embrittle
execute if score spellnumber2 spells matches 12 if score ward slot15 matches 0 run execute if score debuffDurationSlot15 atkmodifiers < embrittleDuration spellStats run scoreboard players operation debuffDurationSlot15 atkmodifiers = embrittleDuration spellStats
execute if score spellnumber2 spells matches 12 if score ward slot15 matches 0 run scoreboard players operation attackDebuffSlot15 atkmodifiers += embrittle spellStats
execute if score spellnumber2 spells matches 12 if score ward slot15 matches 1.. run function chtoo:wardslot15
execute if score spellnumber2 spells matches 12 run scoreboard players set attackIsOngoingGame2 booleans 0
execute if score spellnumber2 spells matches 12 run execute at @n[type=armor_stand,name=slot15] run particle minecraft:block_crumble{block_state:"minecraft:ice"} ~ ~1 ~ 0.9 0.9 0.9 0.1 200
execute if score spellnumber2 spells matches 12 run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p3]"}," used Embrittle on Slot 7!"]

#Evil Eye
execute if score spellnumber2 spells matches 15 if score ward slot15 matches 0 run execute if score durationSlot15 mark < evilEyeDuration spellStats run scoreboard players operation durationSlot15 mark = evilEyeDuration spellStats
execute if score spellnumber2 spells matches 15 if score ward slot15 matches 0 run scoreboard players operation marks slot15 += evilEye spellStats
execute if score spellnumber2 spells matches 15 if score ward slot15 matches 1.. run function chtoo:wardslot15
execute if score spellnumber2 spells matches 15 run scoreboard players set attackIsOngoingGame2 booleans 0
execute if score spellnumber2 spells matches 15 run execute at @n[type=armor_stand,name=slot15] run particle minecraft:effect ~ ~1 ~ 0.7 0.7 0.7 0.1 200
execute if score spellnumber2 spells matches 6 run execute at @n[type=armor_stand,name=slot15] run particle minecraft:item_snowball ~ ~1 ~ 0.7 0.7 0.7 0.1 200
execute if score spellnumber2 spells matches 15 run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p3]"}," used Evil Eye on Slot 7!"]

#Frostbolt
execute if score spellnumber2 spells matches 6 run scoreboard players operation spellDmg2 saves = frostbolt spellStats
execute if score spellnumber2 spells matches 6 run scoreboard players operation spellDmg2 saves += spellbuffsp3 spells
execute if score spellnumber2 spells matches 6 run scoreboard players operation spellDmg2 saves += marks slot15
execute if score spellnumber2 spells matches 6 run scoreboard players operation spellDmg2 saves /= atkmultiplier slot15
execute if score spellnumber2 spells matches 6 run execute if score ward slot15 matches 0 run scoreboard players operation shield slot15 -= spellDmg2 saves
execute if score spellnumber2 spells matches 6 run execute if score ward slot15 matches 0 if score frostboltDuration spellStats > durationSlot15 speedDebuffs run scoreboard players operation durationSlot15 speedDebuffs = frostboltDuration spellStats
execute if score spellnumber2 spells matches 6 run execute if score ward slot15 matches 0 if score frostboltDuration spellStats > debuffDurationSlot15 atkmodifiers run scoreboard players operation debuffDurationSlot15 atkmodifiers = frostboltDuration spellStats
execute if score spellnumber2 spells matches 6 run execute if score ward slot15 matches 0 run scoreboard players operation speedDebuffSlot15 speedDebuffs += frostboltSpDebuff spellStats
execute if score spellnumber2 spells matches 6 run execute if score ward slot15 matches 0 run scoreboard players operation attackDebuffSlot15 atkmodifiers += frostboltDmgDebuff spellStats
execute if score spellnumber2 spells matches 6 run execute if score ward slot15 matches 0 run scoreboard players operation speed slot15 -= frostboltSpDebuff spellStats
execute if score spellnumber2 spells matches 6 run execute if score ward slot15 matches 0 if score shield slot15 matches ..0 run scoreboard players operation slot15 hp += shield slot15
execute if score spellnumber2 spells matches 6 run execute if score ward slot15 matches 1.. run function chtoo:wardslot15
execute if score spellnumber2 spells matches 6 run scoreboard players set spellbuffsp3 spells 0
execute if score spellnumber2 spells matches 6 run scoreboard players set attackIsOngoingGame2 booleans 0
execute if score spellnumber2 spells matches 6 run execute at @n[type=armor_stand,name=slot15] run particle minecraft:item_snowball ~ ~1 ~ 0.7 0.7 0.7 0.1 200
execute if score spellnumber2 spells matches 6 run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p3]"}," used Frostbolt on Slot 7!"]

#Heal
execute if score spellnumber2 spells matches 2 run scoreboard players operation spellHeal saves = heal spellStats
execute if score spellnumber2 spells matches 2 run scoreboard players operation spellHeal saves += spellbuffsp4 spells
execute if score spellnumber2 spells matches 2 unless score slot15bleeding booleaneffects matches 1.. run scoreboard players operation slot15 hp += spellHeal saves
execute if score spellnumber2 spells matches 2 run function chtoo:cleanseslot15
execute if score spellnumber2 spells matches 2 run scoreboard players set spellbuffsp4 spells 0
execute if score spellnumber2 spells matches 2 run function chtoo:spellphasep3
execute if score spellnumber2 spells matches 2 run execute at @n[type=armor_stand,name=slot15] run particle minecraft:composter ~ ~1 ~ 0.9 0.9 0.9 0.5 100
execute if score spellnumber2 spells matches 2 run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p4]"}," used Heal on Slot 7!"]

#Miracle
execute if score spellnumber2 spells matches 17 run function chtoo:cleanseslot15
execute if score spellnumber2 spells matches 17 run function chtoo:spellphasep3
execute if score spellnumber2 spells matches 17 run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p4]"}," used Miracle on Slot 7!"]

#Magic Missile! Magic Missile! I smite thee with Magic Missile!
execute if score spellnumber2 spells matches 4 run scoreboard players operation spellDmg saves = magicmissile spellStats
execute if score spellnumber2 spells matches 4 run scoreboard players operation spellDmg saves += spellbuffsp3 spells
execute if score spellnumber2 spells matches 4 run scoreboard players operation spellDmg saves += marks slot15
execute if score spellnumber2 spells matches 4 run scoreboard players operation spellDmg saves /= atkmultiplier slot15
execute if score spellnumber2 spells matches 4 run execute if score ward slot15 matches 0 run scoreboard players operation shield slot15 -= spellDmg saves
execute if score spellnumber2 spells matches 4 run execute if score ward slot15 matches 0 if score shield slot15 matches ..0 run scoreboard players operation slot15 hp += shield slot15
execute if score spellnumber2 spells matches 4 at @e[name=slot15] run particle minecraft:enchanted_hit ~ ~1 ~ 0.9 0.9 0.9 0.5 300
execute if score spellnumber2 spells matches 4 at @e[name=slot14] run particle minecraft:enchanted_hit ~ ~1 ~ 0.9 0.9 0.9 0.5 150
execute if score spellnumber2 spells matches 4 at @e[name=slot16] run particle minecraft:enchanted_hit ~ ~1 ~ 0.9 0.9 0.9 0.5 150
execute if score spellnumber2 spells matches 4 run execute if score ward slot15 matches 1.. run function chtoo:wardslot15
execute if score spellnumber2 spells matches 4 run scoreboard players operation spellDmg saves = magicmissile spellStats
execute if score spellnumber2 spells matches 4 run scoreboard players operation spellDmg saves += spellbuffsp3 spells
execute if score spellnumber2 spells matches 4 run scoreboard players operation spellDmg saves /= magicmissileSplash spellStats
execute if score spellnumber2 spells matches 4 run scoreboard players operation spellDmg saves += marks slot14
execute if score spellnumber2 spells matches 4 run scoreboard players operation spellDmg saves /= atkmultiplier slot14
execute if score spellnumber2 spells matches 4 run execute if score ward slot14 matches 0 run scoreboard players operation shield slot14 -= spellDmg saves
execute if score spellnumber2 spells matches 4 run execute if score ward slot14 matches 0 if score shield slot14 matches ..0 run scoreboard players operation slot14 hp += shield slot14
execute if score spellnumber2 spells matches 4 run execute if score ward slot14 matches 1.. run function chtoo:wardslot14
execute if score spellnumber2 spells matches 4 run scoreboard players operation spellDmg saves = magicmissile spellStats
execute if score spellnumber2 spells matches 4 run scoreboard players operation spellDmg saves += spellbuffsp3 spells
execute if score spellnumber2 spells matches 4 run scoreboard players operation spellDmg saves /= magicmissileSplash spellStats
execute if score spellnumber2 spells matches 4 run scoreboard players operation spellDmg saves += marks slot16
execute if score spellnumber2 spells matches 4 run scoreboard players operation spellDmg saves /= atkmultiplier slot16
execute if score spellnumber2 spells matches 4 run execute if score ward slot16 matches 0 run scoreboard players operation shield slot16 -= spellDmg saves
execute if score spellnumber2 spells matches 4 run execute if score ward slot16 matches 0 if score shield slot16 matches ..0 run scoreboard players operation slot16 hp += shield slot16
execute if score spellnumber2 spells matches 4 run execute if score ward slot16 matches 1.. run function chtoo:wardslot16
execute if score spellnumber2 spells matches 4 run scoreboard players set spellbuffsp3 spells 0
execute if score spellnumber2 spells matches 4 run scoreboard players set attackIsOngoingGame1 booleans 0
execute if score spellnumber2 spells matches 4 run tellraw @a[tag=game1] ["",{"selector":"@p[tag=p3]"}," used Magic Missile on Slot 7!"]

#Protector's Rune
execute if score spellnumber2 spells matches 16 if score protectorsrune spellStats > durationSlot15 taunt run scoreboard players operation durationSlot15 taunt = protectorsrune spellStats
execute if score spellnumber2 spells matches 16 if score protectorsrune spellStats > durationSlot15 taunt if score ward slot15 matches 0 run scoreboard players operation marks slot15 += protectorsruneMarks spellStats
execute if score spellnumber2 spells matches 16 if score protectorsrune spellStats > durationSlot15 taunt if score ward slot15 matches 1.. run function chtoo:wardslot15
execute if score spellnumber2 spells matches 16 run function chtoo:spellphasep3
execute if score spellnumber2 spells matches 16 run execute at @n[type=armor_stand,name=slot15] run particle minecraft:block_crumble{block_state:"minecraft:emerald_ore"} ~ ~1 ~ 0.7 0.7 0.7 1 400
execute if score spellnumber2 spells matches 16 run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p4]"}," used Protector's Rune on Slot 7!"]

#Shield
execute if score spellnumber2 spells matches 8 run execute if score durationSlot15 shield < shieldDuration spellStats run scoreboard players operation durationSlot15 shield = shieldDuration spellStats 
execute if score spellnumber2 spells matches 8 run scoreboard players operation shield slot15 += shield spellStats
execute if score spellnumber2 spells matches 8 run function chtoo:spellphasep3
execute if score spellnumber2 spells matches 8 run execute at @n[type=armor_stand,name=slot15] run particle wax_off ~ ~1 ~ 0.7 0.7 0.7 0.1 400
execute if score spellnumber2 spells matches 8 run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p4]"}," used Shield on Slot 7!"]

#Ball Lightning
execute if score spellnumber2 spells matches 9 if score ward slot15 matches 0 run scoreboard players operation slot15 stun += shockOrb spellStats
execute if score spellnumber2 spells matches 9 if score ward slot15 matches 1.. run function chtoo:wardslot15
execute if score spellnumber2 spells matches 9 run scoreboard players set attackIsOngoingGame2 booleans 0
execute if score spellnumber2 spells matches 9 run execute at @n[type=armor_stand,name=slot15] run particle flash{color:[1.000,1.000,1.000,1.00]} ~ ~1 ~ 0.9 0.9 0.9 0.1 10
execute if score spellnumber2 spells matches 9 run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p3]"}," used Ball Lightning on Slot 7!"]

#Witches Brew
execute if score spellnumber2 spells matches 23 run execute if score ward slot15 matches 0 if score witchesBrewDuration spellStats > durationSlot15 speedDebuffs run scoreboard players operation durationSlot15 speedDebuffs = witchesBrewDuration spellStats
execute if score spellnumber2 spells matches 23 run execute if score ward slot15 matches 0 if score witchesBrewDuration spellStats > debuffDurationSlot15 atkmodifiers run scoreboard players operation debuffDurationSlot15 atkmodifiers = witchesBrewDuration spellStats
execute if score spellnumber2 spells matches 23 run execute if score ward slot15 matches 0 if score witchesBrewDuration spellStats > durationSlot15 poison run scoreboard players operation durationSlot15 poison = witchesBrewDuration spellStats
execute if score spellnumber2 spells matches 23 run execute if score ward slot15 matches 0 if score witchesBrewDuration spellStats > durationSlot15 burn run scoreboard players operation durationSlot15 burn = witchesBrewDuration spellStats
execute if score spellnumber2 spells matches 23 run execute if score ward slot15 matches 0 run scoreboard players operation speedDebuffSlot15 speedDebuffs += witchesBrewSpDebuff spellStats
execute if score spellnumber2 spells matches 23 run execute if score ward slot15 matches 0 run scoreboard players operation attackDebuffSlot15 atkmodifiers += witchesBrewDmgDebuff spellStats
execute if score spellnumber2 spells matches 23 run execute if score ward slot15 matches 0 run scoreboard players operation slot15Poison poison += witchesBrew spellStats
execute if score spellnumber2 spells matches 23 run execute if score ward slot15 matches 0 run scoreboard players operation slot15Burn burn += witchesBrewBurn spellStats
execute if score spellnumber2 spells matches 23 run execute if score ward slot15 matches 0 run scoreboard players operation speed slot15 -= witchesBrewSpDebuff spellStats
execute if score spellnumber2 spells matches 23 run execute if score ward slot15 matches 1.. run function chtoo:wardslot15
execute if score spellnumber2 spells matches 23 run scoreboard players set attackIsOngoingGame2 booleans 0
execute if score spellnumber2 spells matches 23 run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p3]"}," used Witches Brew on Slot 7!"]

#Shifting Shadows Token
execute if score spellnumber2 spells matches -1 if score shadowsPart1 spells matches 1 if score ward slot15 matches 0 run scoreboard players set durationSlot9-15 fear 1 
execute if score spellnumber2 spells matches -1 if score shadowsPart1 spells matches 2 if score ward slot15 matches 0 run scoreboard players set durationSlot10-15 fear 1 
execute if score spellnumber2 spells matches -1 if score shadowsPart1 spells matches 3 if score ward slot15 matches 0 run scoreboard players set durationSlot11-15 fear 1 
execute if score spellnumber2 spells matches -1 if score shadowsPart1 spells matches 4 if score ward slot15 matches 0 run scoreboard players set durationSlot12-15 fear 1
execute if score spellnumber2 spells matches -1 if score ward slot15 matches 1.. run function chtoo:wardslot15
execute if score spellnumber2 spells matches -1 run scoreboard players set attackIsOngoingGame2 booleans 0
execute if score spellnumber2 spells matches -1 run execute at @n[type=armor_stand,name=slot15] run particle trial_omen ~ ~1 ~ 0.9 0.9 0.9 0.1 400
execute if score spellnumber2 spells matches -1 run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p3]"}," used Shifting Shadows to fear Slot 7!"]

#Shifting Shadows
execute if score spellnumber2 spells matches 28 run scoreboard players set shadowsPart1 spells 7
execute if score spellnumber2 spells matches 28 run function chtoo:spellgivetargetsp4
execute if score spellnumber2 spells matches 28 run scoreboard players set spellnumber2 spells -1
execute if score spellnumber2 spells matches 28 run execute at @n[type=armor_stand,name=slot15] run particle raid_omen ~ ~1 ~ 0.9 0.9 0.9 0.1 400
execute if score spellnumber2 spells matches 28 run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p4]"}," used Shifting Shadows to make Slot 7 scary!"]

#fireball
execute if score spellnumber2 spells matches 1 run scoreboard players operation spellDmg2 saves = fireball spellStats
execute if score spellnumber2 spells matches 1 run scoreboard players operation spellDmg2 saves += spellbuffsp3 spells
execute if score spellnumber2 spells matches 1 run scoreboard players operation spellDmg2 saves += marks slot15
execute if score spellnumber2 spells matches 1 run scoreboard players operation spellDmg2 saves /= atkmultiplier slot15
execute if score spellnumber2 spells matches 1 run execute if score ward slot15 matches 0 run scoreboard players operation shield slot15 -= spellDmg2 saves
execute if score spellnumber2 spells matches 1 run execute if score ward slot15 matches 0 run scoreboard players operation slot15 hp += shield slot15
execute if score spellnumber2 spells matches 1 run execute if score ward slot15 matches 0 if score durationSlot15 burn < fireballDuration spellStats run scoreboard players operation durationSlot15 burn = fireballDuration spellStats
execute if score spellnumber2 spells matches 1 run execute if score ward slot15 matches 0 run scoreboard players operation slot15Burn burn += fireballBurn spellStats
execute if score spellnumber2 spells matches 1 at @e[name=slot15] run particle minecraft:flame ~ ~1 ~ 0.9 0.9 0.9 0.5 100
execute if score spellnumber2 spells matches 1 run execute if score ward slot15 matches 1.. run function chtoo:wardslot15
execute if score spellnumber2 spells matches 1 run scoreboard players set spellbuffsp3 spells 0
execute if score spellnumber2 spells matches 1 run scoreboard players set attackIsOngoingGame2 booleans 0
execute if score spellnumber2 spells matches 1 run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p3]"}," used Fireball on Slot 7!"]

#meteor
execute if score spellnumber2 spells matches 7 run scoreboard players operation spellDmg2 saves = meteor spellStats
execute if score spellnumber2 spells matches 7 run scoreboard players operation spellDmg2 saves += spellbuffsp3 spells
execute if score spellnumber2 spells matches 7 run scoreboard players operation spellDmg2 saves += marks slot15
execute if score spellnumber2 spells matches 7 run scoreboard players operation spellDmg2 saves /= atkmultiplier slot15
execute if score spellnumber2 spells matches 7 run execute if score ward slot15 matches 0 run scoreboard players operation shield slot15 -= spellDmg2 saves
execute if score spellnumber2 spells matches 7 run execute if score ward slot15 matches 0 if score shield slot15 matches ..0 run scoreboard players operation slot15 hp += shield slot15
execute if score spellnumber2 spells matches 7 at @e[name=slot15] run particle minecraft:lava ~ ~1 ~ 0.9 0.9 0.9 0.5 100
execute if score spellnumber2 spells matches 7 at @e[name=slot14] run particle minecraft:lava ~ ~1 ~ 0.9 0.9 0.9 0.5 50
execute if score spellnumber2 spells matches 7 at @e[name=slot16] run particle minecraft:lava ~ ~1 ~ 0.9 0.9 0.9 0.5 50
execute if score spellnumber2 spells matches 7 run execute if score ward slot15 matches 1.. run function chtoo:wardslot15
execute if score spellnumber2 spells matches 7 run scoreboard players operation spellDmg2 saves = meteor spellStats
execute if score spellnumber2 spells matches 7 run scoreboard players operation spellDmg2 saves += spellbuffsp4 spells
execute if score spellnumber2 spells matches 7 run scoreboard players operation spellDmg2 saves /= meteorSplash spellStats
execute if score spellnumber2 spells matches 7 run scoreboard players operation spellDmg2 saves += marks slot14
execute if score spellnumber2 spells matches 7 run scoreboard players operation spellDmg2 saves /= atkmultiplier slot14
execute if score spellnumber2 spells matches 7 run execute if score ward slot14 matches 0 run scoreboard players operation shield slot14 -= spellDmg2 saves
execute if score spellnumber2 spells matches 7 run execute if score ward slot14 matches 0 if score shield slot14 matches ..0 run scoreboard players operation slot14 hp += shield slot14
execute if score spellnumber2 spells matches 7 run execute if score ward slot14 matches 1.. run function chtoo:wardslot14
execute if score spellnumber2 spells matches 7 run scoreboard players operation spellDmg2 saves = meteor spellStats
execute if score spellnumber2 spells matches 7 run scoreboard players operation spellDmg2 saves += spellbuffsp4 spells
execute if score spellnumber2 spells matches 7 run scoreboard players operation spellDmg2 saves /= meteorSplash spellStats
execute if score spellnumber2 spells matches 7 run scoreboard players operation spellDmg2 saves += marks slot16
execute if score spellnumber2 spells matches 7 run scoreboard players operation spellDmg2 saves /= atkmultiplier slot16
execute if score spellnumber2 spells matches 7 run execute if score ward slot16 matches 0 run scoreboard players operation shield slot16 -= spellDmg2 saves
execute if score spellnumber2 spells matches 7 run execute if score ward slot16 matches 0 if score shield slot16 matches ..0 run scoreboard players operation slot16 hp += shield slot16
execute if score spellnumber2 spells matches 7 run execute if score ward slot16 matches 1.. run function chtoo:wardslot16
execute if score spellnumber2 spells matches 7 run scoreboard players set spellbuffsp3 spells 0
execute if score spellnumber2 spells matches 7 run scoreboard players set attackIsOngoingGame2 booleans 0
execute if score spellnumber2 spells matches 7 run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p3]"}," used Meteor on Slot 7!"]

#witchbolt
execute if score spellnumber2 spells matches 10 run scoreboard players operation spellDmg2 saves = witchbolt spellStats
execute if score spellnumber2 spells matches 10 run scoreboard players operation spellDmg2 saves += spellbuffsp3 spells
execute if score spellnumber2 spells matches 10 run scoreboard players operation spellDmg2 saves += marks slot15
execute if score spellnumber2 spells matches 10 run scoreboard players operation spellDmg2 saves /= atkmultiplier slot15
execute if score spellnumber2 spells matches 10 run execute if score ward slot15 matches 0 run scoreboard players operation shield slot15 -= spellDmg2 saves
execute if score spellnumber2 spells matches 10 run execute if score ward slot15 matches 0 if score shield slot15 matches ..0 run scoreboard players operation slot15 hp += shield slot15
execute if score spellnumber2 spells matches 10 at @e[name=slot15] run particle minecraft:enchanted_hit ~ ~1 ~ 0.9 0.9 0.9 0.5 200
execute if score spellnumber2 spells matches 10 run execute if score ward slot15 matches 1.. run function chtoo:wardslot15
execute if score spellnumber2 spells matches 10 run scoreboard players set spellbuffsp3 spells 0
execute if score spellnumber2 spells matches 10 run scoreboard players set attackIsOngoingGame2 booleans 0
execute if score spellnumber2 spells matches 10 run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p3]"}," used Witch Bolt on Slot 7!"]
#ward
execute if score spellnumber2 spells matches 19 run scoreboard players set ward slot15 1
execute if score spellnumber2 spells matches 19 at @e[name=slot15] run particle minecraft:ominous_spawning ~ ~1 ~ 0.9 0.9 0.9 0.1 100
execute if score spellnumber2 spells matches 19 run function chtoo:spellphasep3
execute if score spellnumber2 spells matches 19 run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p4]"}," used Ward on Slot 7!"]

#plague
execute if score spellnumber2 spells matches 21 if score ward slot15 matches 0 run scoreboard players operation slot15Disease disease += plague spellStats
execute if score spellnumber2 spells matches 21 at @e[name=slot15] run particle minecraft:trial_omen ~ ~1 ~ 0.9 0.9 0.9 0.5 100
execute if score spellnumber2 spells matches 21 if score ward slot15 matches 1.. run function chtoo:wardslot15
execute if score spellnumber2 spells matches 21 run scoreboard players set attackIsOngoingGame2 booleans 0
execute if score spellnumber2 spells matches 21 run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p3]"}," used Plague on Slot 7!"]

#Second wind
execute if score spellnumber2 spells matches 22 run execute if score durationSlot15 speedBuffs < secondWindDuration spellStats run scoreboard players operation durationSlot15 speedBuffs = secondWindDuration spellStats
execute if score spellnumber2 spells matches 22 run scoreboard players operation speedBuffSlot15 speedBuffs += secondWindSpeed spellStats
execute if score spellnumber2 spells matches 22 run scoreboard players operation speed slot15 += secondWindSpeed spellStats
execute if score spellnumber2 spells matches 22 if score slot15bleeding booleaneffects matches 0 run scoreboard players operation slot15 hp += secondWind spellStats
execute if score spellnumber2 spells matches 22 if score slot15bleeding booleaneffects matches 0 run scoreboard players operation slot15 hp += spellbuffsp4 spells
execute if score spellnumber2 spells matches 22 at @e[name=slot15] run particle minecraft:trial_spawner_detection_ominous ~ ~1 ~ 0.9 0.9 0.9 0.5 100
execute if score spellnumber2 spells matches 22 run function chtoo:spellphasep3
execute if score spellnumber2 spells matches 22 run scoreboard players set spellbuffsp4 spells 0
execute if score spellnumber2 spells matches 22 run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p4]"}," used Second Wind on Slot 7!"]

#fountain of youth
execute if score spellnumber2 spells matches 25 run execute if score disarmedslot15 booleaneffects < fountainOfYouthDuration spellStats run scoreboard players operation disarmedslot15 booleaneffects = fountainOfYouthDuration spellStats
execute if score spellnumber2 spells matches 25 if score slot15bleeding booleaneffects matches 0 run scoreboard players operation slot15 hp += fountainOfYouth spellStats
execute if score spellnumber2 spells matches 25 if score slot15bleeding booleaneffects matches 0 run scoreboard players operation slot15 hp += spellbuffsp4 spells
execute if score spellnumber2 spells matches 25 at @e[name=slot15] run particle minecraft:composter ~ ~1 ~ 0.9 0.9 0.9 0.5 500
execute if score spellnumber2 spells matches 25 run function chtoo:spellphasep3
execute if score spellnumber2 spells matches 25 run scoreboard players set spellbuffsp4 spells 0
execute if score spellnumber2 spells matches 25 run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p4]"}," used Fountain of Youth on Slot 7!"]

#overclock
execute if score spellnumber2 spells matches 27 run execute if score buffDurationSlot15 atkmodifiers < overclockDuration spellStats run scoreboard players operation buffDurationSlot15 atkmodifiers = overclockDuration spellStats
execute if score spellnumber2 spells matches 27 run scoreboard players operation attackBuffSlot15 atkmodifiers += overclock spellStats
execute if score spellnumber2 spells matches 27 run scoreboard players operation shield slot15 -= overclockAtk spellStats
execute if score spellnumber2 spells matches 27 if score shield slot15 matches ..0 run scoreboard players operation slot15 hp += shield slot15
execute if score spellnumber2 spells matches 27 at @e[name=slot15] run particle minecraft:trial_spawner_detection ~ ~1 ~ 0.9 0.9 0.9 0.5 400
execute if score spellnumber2 spells matches 27 run function chtoo:spellphasep3
execute if score spellnumber2 spells matches 27 run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p4]"}," used Overclock on Slot 7!"]

#Life Leech Token
execute if score spellnumber2 spells matches -2 if score slot15bleeding booleaneffects matches 0 run scoreboard players operation slot15 hp += lifeLeechHeal spellStats
execute if score spellnumber2 spells matches -2 if score slot15bleeding booleaneffects matches 0 run scoreboard players operation slot15 hp += spellbuffsp4 spells
execute if score spellnumber2 spells matches -2 run function chtoo:spellphasep3
execute if score spellnumber2 spells matches -2 run execute at @n[type=armor_stand,name=slot15] run particle dust{color:[0.639,0.008,0.008],scale:1} ~ ~1 ~ 0.9 0.9 0.9 0.1 400
execute if score spellnumber2 spells matches -2 run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p4]"}," used Life Leech to heal Slot 7!"]
execute if score spellnumber2 spells matches -2 run scoreboard players set spellbuffsp4 spells 0

#Life Leech
execute if score spellnumber2 spells matches 31 run scoreboard players operation spellDmg saves = lifeLeech spellStats
execute if score spellnumber2 spells matches 31 run scoreboard players operation spellDmg saves += spellbuffsp3 spells
execute if score spellnumber2 spells matches 31 run scoreboard players operation spellDmg saves += marks slot15
execute if score spellnumber2 spells matches 31 run scoreboard players operation spellDmg saves /= atkmultiplier slot15
execute if score spellnumber2 spells matches 31 run execute if score ward slot15 matches 0 run scoreboard players operation shield slot15 -= spellDmg saves
execute if score spellnumber2 spells matches 31 run execute if score ward slot15 matches 0 if score shield slot15 matches ..0 run scoreboard players operation slot15 hp += shield slot15
execute if score spellnumber2 spells matches 31 run execute if score ward slot15 matches 1.. run function chtoo:wardslot15
execute if score spellnumber2 spells matches 31 run function chtoo:spellgivetargetsp4reverse
execute if score spellnumber2 spells matches 31 run execute at @n[type=armor_stand,name=slot15] run particle dust{color:[0.639,0.008,0.008],scale:1} ~ ~1 ~ 0.9 0.9 0.9 0.1 400
execute if score spellnumber2 spells matches 31 run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p3]"}," used Life Leech on Slot 7!"]
execute if score spellnumber2 spells matches 31 run scoreboard players set spellnumber2 spells -2

#Decimate
execute if score spellnumber2 spells matches 32 run scoreboard players operation spellDmg saves = decimate spellStats
execute if score spellnumber2 spells matches 32 run scoreboard players operation spellDmg saves += spellbuffsp4 spells
execute if score spellnumber2 spells matches 32 run scoreboard players operation spellDmg saves += marks slot15
execute if score spellnumber2 spells matches 32 run scoreboard players operation spellDmg saves /= atkmultiplier slot15
execute if score spellnumber2 spells matches 32 run execute if score ward slot15 matches 0 if score character# slot15 matches ..-1 run scoreboard players operation shield slot15 -= spellDmg saves
execute if score spellnumber2 spells matches 32 run execute if score ward slot15 matches 0 if score character# slot15 matches ..-1 if score shield slot15 matches ..0 run scoreboard players operation slot15 hp += shield slot15
execute if score spellnumber2 spells matches 32 run execute if score ward slot15 matches 1.. if score character# slot15 matches ..-1 run function chtoo:wardslot15
execute if score spellnumber2 spells matches 32 run execute at @n[type=armor_stand,name=slot15] run particle block{block_state:"minecraft:dripstone_block"} ~ ~ ~ 0.9 2 0.9 1 250 normal
execute if score spellnumber2 spells matches 32 run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p3]"}," used Decimate on Slot 7!"]
execute if score spellnumber2 spells matches 32 run scoreboard players set spellbuffsp3 spells 0
execute if score spellnumber2 spells matches 32 run scoreboard players set attackIsOngoingGame2 booleans 0

#cannibalize token

execute if score spellnumber2 spells matches -3 if score slot15bleeding booleaneffects matches 0 run scoreboard players operation slot15 hp += cannibalize spellStats
execute if score spellnumber2 spells matches -3 if score slot15bleeding booleaneffects matches 0 run scoreboard players operation slot15 hp += spellbuffsp3 spells
execute if score spellnumber2 spells matches -3 run function chtoo:spellphasep3
execute if score spellnumber2 spells matches -3 run execute at @n[type=armor_stand,name=slot15] run particle dust{color:[0.639,0.008,0.008],scale:1} ~ ~1 ~ 0.9 0.9 0.9 0.1 400
execute if score spellnumber2 spells matches -3 run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p4]"}," used Cannibalize to heal Slot 7!"]
execute if score spellnumber2 spells matches -3 run scoreboard players set spellbuffsp3 spells 0

#cannibalize
execute if score spellnumber2 spells matches 34 run scoreboard players operation slot15 hp -= cannibalize spellStats
execute if score spellnumber2 spells matches 34 run scoreboard players operation slot15bleeding booleaneffects += cannibalizeDuration spellStats
execute if score spellnumber2 spells matches 34 run function chtoo:spellgivetargetsp3reverse
execute if score spellnumber2 spells matches 34 run execute at @n[type=armor_stand,name=slot15] run particle dust{color:[0.639,0.008,0.008],scale:1} ~ ~1 ~ 0.9 0.9 0.9 0.1 400
execute if score spellnumber2 spells matches 34 run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p4]"}," used Cannibalize on Slot 7!"]
execute if score spellnumber2 spells matches 34 run scoreboard players set spellnumber2 spells -3

#Dark Ritual
execute if score spellnumber2 spells matches 40 run execute if score buffDurationSlot15 atkmodifiers < darkpowerDuration spellStats run scoreboard players operation buffDurationSlot15 atkmodifiers = darkpowerDuration spellStats
execute if score spellnumber2 spells matches 40 run scoreboard players operation attackBuffSlot15 atkmodifiers += darkpower spellStats
execute if score spellnumber2 spells matches 40 run scoreboard players operation attackBuffSlot15 atkmodifiers += darkritual player4spells
execute if score spellnumber2 spells matches 40 at @e[name=slot15] run particle minecraft:trial_omen ~ ~1 ~ 0.9 0.9 0.9 0.5 40
execute if score spellnumber2 spells matches 40 run function chtoo:spellphasep3
execute if score spellnumber2 spells matches 40 run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p4]"}," used Dark Ritual on Slot 7!"]

#Monkey's Paw
execute if score spellnumber2 spells matches 43 run scoreboard players operation invincibleSlot15 booleaneffects = monkeyspaw spellStats
execute if score spellnumber2 spells matches 43 run scoreboard players operation savehp15 saves = slot15 hp
execute if score spellnumber2 spells matches 43 run scoreboard players set curse slot15 5
execute if score spellnumber2 spells matches 43 run scoreboard players set curseStacks slot15 0
execute if score spellnumber2 spells matches 43 run scoreboard players operation curseDuration slot15 = monkeyspaw spellStats
execute if score spellnumber2 spells matches 43 at @e[name=slot15] run particle minecraft:raid_omen ~ ~1 ~ 0.9 0.9 0.9 0.00000001 200
execute if score spellnumber2 spells matches 43 run playsound minecraft:ambient.cave player @a[tag=game2] ~ ~ ~ 500 2
execute if score spellnumber2 spells matches 43 run scoreboard players set attackIsOngoingGame2 booleans 0
execute if score spellnumber2 spells matches 43 run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p4]"}," used Monkey's Paw on Slot 7!"]

#Slimed!
execute if score spellnumber2 spells matches 35 if score ward slot15 matches 0 run scoreboard players operation disarmedslot15 booleaneffects += slimed spellStats
execute if score spellnumber2 spells matches 35 if score ward slot15 matches 1.. run function chtoo:wardslot15
execute if score spellnumber2 spells matches 35 run scoreboard players set attackIsOngoingGame2 booleans 0
execute if score spellnumber2 spells matches 35 run execute at @n[type=armor_stand,name=slot15] run particle minecraft:item_slime ~ ~1 ~ 0.7 0.7 0.7 0.3 150
execute if score spellnumber2 spells matches 35 run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p4]"}," used Slimed! on Slot 7!"]

#Vampire Mark
execute if score spellnumber2 spells matches 36 run scoreboard players operation lifesteal slot15 = vampiremark spellStats
execute if score spellnumber2 spells matches 36 run execute at @n[type=armor_stand,name=slot15] run particle minecraft:crimson_spore ~ ~1 ~ 0.6 0.4 0.6 0 200
execute if score spellnumber2 spells matches 36 run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p4]"}," used Vampire Mark on Slot 7!"]
execute if score spellnumber2 spells matches 36 run function chtoo:spellphasep3

#Butchering
execute if score spellnumber2 spells matches 37 run scoreboard players operation spellDmg saves = butchering spellStats
execute if score spellnumber2 spells matches 37 run scoreboard players operation spellDmg saves += spellbuffsp3 spells
execute if score spellnumber2 spells matches 37 run scoreboard players operation spellDmg saves += marks slot15
execute if score spellnumber2 spells matches 37 run scoreboard players operation spellDmg saves /= atkmultiplier slot15
execute if score spellnumber2 spells matches 37 run execute if score ward slot15 matches 0 run scoreboard players operation shield slot15 -= spellDmg saves
execute if score spellnumber2 spells matches 37 run execute if score ward slot15 matches 0 if score shield slot15 matches ..0 run scoreboard players operation slot15 hp += shield slot15
execute if score spellnumber2 spells matches 37 at @e[name=slot15] run particle minecraft:damage_indicator ~ ~1 ~ 0.6 0.6 0.6 0 100
execute if score spellnumber2 spells matches 37 run execute if score ward slot15 matches 1.. run function chtoo:wardslot15
execute if score spellnumber2 spells matches 37 run scoreboard players set spellbuffsp3 spells 0
execute if score spellnumber2 spells matches 37 run scoreboard players set attackIsOngoingGame2 booleans 0
execute if score spellnumber2 spells matches 37 run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p3]"}," used Butchering on Slot 7!"]

#Will O' Wisp
execute if score spellnumber2 spells matches 38 run execute if score ward slot15 matches 0 if score durationSlot15 burn < willowispDuration spellStats run scoreboard players operation durationSlot15 burn = willowispDuration spellStats
execute if score spellnumber2 spells matches 38 run execute if score ward slot15 matches 0 run scoreboard players operation slot15Burn burn += willowisp spellStats
execute if score spellnumber2 spells matches 38 run scoreboard players operation spellDmg saves = slot15Burn burn
execute if score spellnumber2 spells matches 38 run scoreboard players operation spellDmg saves += spellbuffsp3 spells
execute if score spellnumber2 spells matches 38 run scoreboard players operation spellDmg saves += marks slot15
execute if score spellnumber2 spells matches 38 run scoreboard players operation spellDmg saves /= atkmultiplier slot15
execute if score spellnumber2 spells matches 38 run execute if score ward slot15 matches 0 run scoreboard players operation shield slot15 -= spellDmg saves
execute if score spellnumber2 spells matches 38 run execute if score ward slot15 matches 0 if score shield slot15 matches ..0 run scoreboard players operation slot15 hp += shield slot15
execute if score spellnumber2 spells matches 38 at @e[name=slot15] run particle minecraft:glow ~ ~1 ~ 0.7 0.7 0.7 0.1 100
execute if score spellnumber2 spells matches 38 at @e[name=slot15] run particle minecraft:soul_fire_flame ~ ~1 ~ 0.6 0.6 0.6 0.1 100
execute if score spellnumber2 spells matches 38 run execute if score ward slot15 matches 1.. run function chtoo:wardslot15
execute if score spellnumber2 spells matches 38 run scoreboard players set spellbuffsp3 spells 0
execute if score spellnumber2 spells matches 38 run scoreboard players set attackIsOngoingGame2 booleans 0
execute if score spellnumber2 spells matches 38 run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p3]"}," used Will O' Wisp on Slot 7!"]

#Curse of Bats
execute if score spellnumber2 spells matches 42 if score ward slot15 matches ..0 unless score curse slot15 matches 5 unless score curse slot15 matches 6 run scoreboard players set curseStacks slot15 0
execute if score spellnumber2 spells matches 42 if score ward slot15 matches ..0 unless score curse slot15 matches 5 unless score curse slot15 matches 6 run scoreboard players set curseDuration slot15 -1
execute if score spellnumber2 spells matches 42 if score ward slot15 matches ..0 unless score curse slot15 matches 5 run scoreboard players set curse slot15 6
execute if score spellnumber2 spells matches 42 if score ward slot15 matches ..0 unless score curse slot15 matches 5 if score curse slot15 matches 6 run scoreboard players add curseStacks slot15 1
execute if score spellnumber2 spells matches 42 run execute at @n[name=slot15] run particle shriek{delay:0} ~ ~1 ~ 0.3 0.5 0.3 0.1 200 normal
execute if score spellnumber2 spells matches 42 run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p3]"}," used Curse of Bats on Slot 7!"]
execute if score spellnumber2 spells matches 42 if score ward slot15 matches 1.. run function chtoo:wardslot15
execute if score spellnumber2 spells matches 42 run scoreboard players set attackIsOngoingGame2 booleans 0



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