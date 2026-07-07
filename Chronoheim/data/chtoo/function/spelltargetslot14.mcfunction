effect clear @a[tag=game2] weakness
clear @a[tag=game2]

#Dragonforge
execute if score spellnumber2 spells matches 26 run execute if score durationSlot14 shield < dragonforgeDuration spellStats run scoreboard players operation durationSlot14 shield = dragonforgeDuration spellStats
execute if score spellnumber2 spells matches 26 run scoreboard players operation shield slot14 += dragonforge spellStats
execute if score spellnumber2 spells matches 26 run execute if score slot13 hp matches ..0 if score slot15 hp matches ..0 if score slot16 hp matches ..0 run scoreboard players operation shield slot14 += dragonforge spellStats
execute if score spellnumber2 spells matches 26 run function chtoo:spellphasep3
execute if score spellnumber2 spells matches 26 run execute if score slot13 hp matches ..0 if score slot15 hp matches ..0 if score slot16 hp matches ..0 run execute at @n[type=armor_stand,name=slot14] run particle dragon_breath ~ ~1 ~ 0.9 0.9 0.9 0.1 400
execute if score spellnumber2 spells matches 26 run execute at @n[type=armor_stand,name=slot14] run particle dragon_breath ~ ~1 ~ 0.9 0.9 0.9 0.1 100
execute if score spellnumber2 spells matches 26 run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p4]"}," used Dragonforge on Slot 6!"]

#Embiggen
execute if score spellnumber2 spells matches 13 run execute if score buffDurationSlot14 atkmodifiers < embiggenDuration spellStats run scoreboard players operation buffDurationSlot14 atkmodifiers = embiggenDuration spellStats
execute if score spellnumber2 spells matches 13 run scoreboard players operation attackBuffSlot14 atkmodifiers += embiggenBuff spellStats
execute if score spellnumber2 spells matches 13 run scoreboard players operation maxhp slot14 += embiggen spellStats
execute if score spellnumber2 spells matches 13 run scoreboard players operation slot14 hp += embiggen spellStats
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
execute if score spellnumber2 spells matches 15 if score ward slot14 matches 0 run execute if score durationSlot14 mark < evilEyeDuration spellStats run scoreboard players operation durationSlot14 mark = evilEyeDuration spellStats
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
execute if score spellnumber2 spells matches 2 unless score slot14bleeding booleaneffects matches 1.. run scoreboard players operation slot14 hp += spellHeal saves
execute if score spellnumber2 spells matches 2 run function chtoo:cleanseslot14
execute if score spellnumber2 spells matches 2 run scoreboard players set spellbuffsp4 spells 0
execute if score spellnumber2 spells matches 2 run function chtoo:spellphasep3
execute if score spellnumber2 spells matches 2 run execute at @n[type=armor_stand,name=slot14] run particle minecraft:composter ~ ~1 ~ 0.9 0.9 0.9 0.5 100
execute if score spellnumber2 spells matches 2 run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p4]"}," used Heal on Slot 6!"]

#Miracle
execute if score spellnumber2 spells matches 17 run function chtoo:cleanseslot14
execute if score spellnumber2 spells matches 17 run function chtoo:spellphasep3
execute if score spellnumber2 spells matches 17 run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p4]"}," used Miracle on Slot 6!"]

#Magic Missile! Magic Missile! I smite thee with Magic Missile!
execute if score spellnumber2 spells matches 4 run scoreboard players operation spellDmg saves = magicmissile spellStats
execute if score spellnumber2 spells matches 4 run scoreboard players operation spellDmg saves += spellbuffsp3 spells
execute if score spellnumber2 spells matches 4 run scoreboard players operation spellDmg saves += marks slot14
execute if score spellnumber2 spells matches 4 run scoreboard players operation spellDmg saves /= atkmultiplier slot14
execute if score spellnumber2 spells matches 4 run execute if score ward slot14 matches 0 run scoreboard players operation shield slot14 -= spellDmg saves
execute if score spellnumber2 spells matches 4 run execute if score ward slot14 matches 0 if score shield slot14 matches ..0 run scoreboard players operation slot14 hp += shield slot14
execute if score spellnumber2 spells matches 4 at @e[name=slot14] run particle minecraft:enchanted_hit ~ ~1 ~ 0.9 0.9 0.9 0.5 300
execute if score spellnumber2 spells matches 4 at @e[name=slot13] run particle minecraft:enchanted_hit ~ ~1 ~ 0.9 0.9 0.9 0.5 150
execute if score spellnumber2 spells matches 4 at @e[name=slot15] run particle minecraft:enchanted_hit ~ ~1 ~ 0.9 0.9 0.9 0.5 150
execute if score spellnumber2 spells matches 4 run execute if score ward slot14 matches 1.. run function chtoo:wardslot14
execute if score spellnumber2 spells matches 4 run scoreboard players operation spellDmg saves = magicmissile spellStats
execute if score spellnumber2 spells matches 4 run scoreboard players operation spellDmg saves += spellbuffsp3 spells
execute if score spellnumber2 spells matches 4 run scoreboard players operation spellDmg saves /= magicmissileSplash spellStats
execute if score spellnumber2 spells matches 4 run scoreboard players operation spellDmg saves += marks slot13
execute if score spellnumber2 spells matches 4 run scoreboard players operation spellDmg saves /= atkmultiplier slot13
execute if score spellnumber2 spells matches 4 run execute if score ward slot13 matches 0 run scoreboard players operation shield slot13 -= spellDmg saves
execute if score spellnumber2 spells matches 4 run execute if score ward slot13 matches 0 if score shield slot13 matches ..0 run scoreboard players operation slot13 hp += shield slot13
execute if score spellnumber2 spells matches 4 run execute if score ward slot13 matches 1.. run function chtoo:wardslot13
execute if score spellnumber2 spells matches 4 run scoreboard players operation spellDmg saves = magicmissile spellStats
execute if score spellnumber2 spells matches 4 run scoreboard players operation spellDmg saves += spellbuffsp3 spells
execute if score spellnumber2 spells matches 4 run scoreboard players operation spellDmg saves /= magicmissileSplash spellStats
execute if score spellnumber2 spells matches 4 run scoreboard players operation spellDmg saves += marks slot15
execute if score spellnumber2 spells matches 4 run scoreboard players operation spellDmg saves /= atkmultiplier slot15
execute if score spellnumber2 spells matches 4 run execute if score ward slot15 matches 0 run scoreboard players operation shield slot15 -= spellDmg saves
execute if score spellnumber2 spells matches 4 run execute if score ward slot15 matches 0 if score shield slot15 matches ..0 run scoreboard players operation slot15 hp += shield slot15
execute if score spellnumber2 spells matches 4 run execute if score ward slot15 matches 1.. run function chtoo:wardslot15
execute if score spellnumber2 spells matches 4 run scoreboard players set spellbuffsp3 spells 0
execute if score spellnumber2 spells matches 4 run scoreboard players set attackIsOngoingGame1 booleans 0
execute if score spellnumber2 spells matches 4 run tellraw @a[tag=game1] ["",{"selector":"@p[tag=p3]"}," used Magic Missile on Slot 6!"]

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
execute if score spellnumber2 spells matches 9 run execute at @n[type=armor_stand,name=slot14] run particle flash{color:[1.000,1.000,1.000,1.00]} ~ ~1 ~ 0.9 0.9 0.9 0.1 10
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

#life leech token
execute if score spellnumber2 spells matches -2 if score slot14bleeding booleaneffects matches 0 run scoreboard players operation slot14 hp += lifeLeechHeal spellStats
execute if score spellnumber2 spells matches -2 if score slot14bleeding booleaneffects matches 0 run scoreboard players operation slot14 hp += spellbuffsp4 spells
execute if score spellnumber2 spells matches -2 run function chtoo:spellphasep3
execute if score spellnumber2 spells matches -2 run execute at @n[type=armor_stand,name=slot14] run particle dust{color:[0.639,0.008,0.008],scale:1} ~ ~1 ~ 0.9 0.9 0.9 0.1 400
execute if score spellnumber2 spells matches -2 run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p4]"}," used Life Leech to heal Slot 6!"]
execute if score spellnumber2 spells matches -2 run scoreboard players set spellbuffsp4 spells 0

#Life Leech
execute if score spellnumber2 spells matches 31 run scoreboard players operation spellDmg saves = lifeLeech spellStats
execute if score spellnumber2 spells matches 31 run scoreboard players operation spellDmg saves += spellbuffsp3 spells
execute if score spellnumber2 spells matches 31 run scoreboard players operation spellDmg saves += marks slot14
execute if score spellnumber2 spells matches 31 run scoreboard players operation spellDmg saves /= atkmultiplier slot14
execute if score spellnumber2 spells matches 31 run execute if score ward slot14 matches 0 run scoreboard players operation shield slot14 -= spellDmg saves
execute if score spellnumber2 spells matches 31 run execute if score ward slot14 matches 0 if score shield slot14 matches ..0 run scoreboard players operation slot14 hp += shield slot14
execute if score spellnumber2 spells matches 31 run execute if score ward slot14 matches 1.. run function chtoo:wardslot14
execute if score spellnumber2 spells matches 31 run function chtoo:spellgivetargetsp4reverse
execute if score spellnumber2 spells matches 31 run execute at @n[type=armor_stand,name=slot14] run particle dust{color:[0.639,0.008,0.008],scale:1} ~ ~1 ~ 0.9 0.9 0.9 0.1 400
execute if score spellnumber2 spells matches 31 run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p3]"}," used Life Leech on Slot 6!"]
execute if score spellnumber2 spells matches 31 run scoreboard players set spellnumber2 spells -2

#Decimate
execute if score spellnumber2 spells matches 32 run scoreboard players operation spellDmg saves = decimate spellStats
execute if score spellnumber2 spells matches 32 run scoreboard players operation spellDmg saves += spellbuffsp4 spells
execute if score spellnumber2 spells matches 32 run scoreboard players operation spellDmg saves += marks slot14
execute if score spellnumber2 spells matches 32 run scoreboard players operation spellDmg saves /= atkmultiplier slot14
execute if score spellnumber2 spells matches 32 run execute if score ward slot14 matches 0 if score character# slot14 matches ..-1 run scoreboard players operation shield slot14 -= spellDmg saves
execute if score spellnumber2 spells matches 32 run execute if score ward slot14 matches 0 if score character# slot14 matches ..-1 if score shield slot14 matches ..0 run scoreboard players operation slot14 hp += shield slot14
execute if score spellnumber2 spells matches 32 run execute if score ward slot14 matches 1.. if score character# slot14 matches ..-1 run function chtoo:wardslot14
execute if score spellnumber2 spells matches 32 run execute at @n[type=armor_stand,name=slot14] run particle block{block_state:"minecraft:dripstone_block"} ~ ~ ~ 0.9 2 0.9 1 250 normal
execute if score spellnumber2 spells matches 32 run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p3]"}," used Decimate on Slot 6!"]
execute if score spellnumber2 spells matches 32 run scoreboard players set spellbuffsp3 spells 0
execute if score spellnumber2 spells matches 32 run scoreboard players set attackIsOngoingGame2 booleans 0

#cannibalize token

execute if score spellnumber2 spells matches -3 if score slot14bleeding booleaneffects matches 0 run scoreboard players operation slot14 hp += cannibalize spellStats
execute if score spellnumber2 spells matches -3 if score slot14bleeding booleaneffects matches 0 run scoreboard players operation slot14 hp += spellbuffsp3 spells
execute if score spellnumber2 spells matches -3 run function chtoo:spellphasep3
execute if score spellnumber2 spells matches -3 run execute at @n[type=armor_stand,name=slot14] run particle dust{color:[0.639,0.008,0.008],scale:1} ~ ~1 ~ 0.9 0.9 0.9 0.1 400
execute if score spellnumber2 spells matches -3 run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p4]"}," used Cannibalize to heal Slot 6!"]
execute if score spellnumber2 spells matches -3 run scoreboard players set spellbuffsp3 spells 0

#cannibalize
execute if score spellnumber2 spells matches 34 run scoreboard players operation slot14 hp -= cannibalize spellStats
execute if score spellnumber2 spells matches 34 run scoreboard players operation slot14bleeding booleaneffects += cannibalizeDuration spellStats
execute if score spellnumber2 spells matches 34 run function chtoo:spellgivetargetsp3reverse
execute if score spellnumber2 spells matches 34 run execute at @n[type=armor_stand,name=slot14] run particle dust{color:[0.639,0.008,0.008],scale:1} ~ ~1 ~ 0.9 0.9 0.9 0.1 400
execute if score spellnumber2 spells matches 34 run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p4]"}," used Cannibalize on Slot 6!"]
execute if score spellnumber2 spells matches 34 run scoreboard players set spellnumber2 spells -3

#Dark Ritual
execute if score spellnumber2 spells matches 40 run execute if score buffDurationSlot14 atkmodifiers < darkpowerDuration spellStats run scoreboard players operation buffDurationSlot14 atkmodifiers = darkpowerDuration spellStats
execute if score spellnumber2 spells matches 40 run scoreboard players operation attackBuffSlot14 atkmodifiers += darkpower spellStats
execute if score spellnumber2 spells matches 40 run scoreboard players operation attackBuffSlot14 atkmodifiers += darkritual player4spells
execute if score spellnumber2 spells matches 40 at @e[name=slot14] run particle minecraft:trial_omen ~ ~1 ~ 0.9 0.9 0.9 0.5 40
execute if score spellnumber2 spells matches 40 run function chtoo:spellphasep3
execute if score spellnumber2 spells matches 40 run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p4]"}," used Dark Ritual on Slot 6!"]

#Monkey's Paw
execute if score spellnumber2 spells matches 43 run scoreboard players operation invincibleSlot14 booleaneffects = monkeyspaw spellStats
execute if score spellnumber2 spells matches 43 run scoreboard players operation savehp14 saves = slot14 hp
execute if score spellnumber2 spells matches 43 run scoreboard players set curse slot14 5
execute if score spellnumber2 spells matches 43 run scoreboard players set curseStacks slot14 0
execute if score spellnumber2 spells matches 43 run scoreboard players operation curseDuration slot14 = monkeyspaw spellStats
execute if score spellnumber2 spells matches 43 at @e[name=slot14] run particle minecraft:raid_omen ~ ~1 ~ 0.9 0.9 0.9 0.00000001 200
execute if score spellnumber2 spells matches 43 run playsound minecraft:ambient.cave player @a[tag=game2] ~ ~ ~ 500 2
execute if score spellnumber2 spells matches 43 run function chtoo:spellphasep3
execute if score spellnumber2 spells matches 43 run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p4]"}," used Monkey's Paw on Slot 6!"]

#Slimed!
execute if score spellnumber2 spells matches 35 if score ward slot14 matches 0 run scoreboard players operation disarmedslot14 booleaneffects += slimed spellStats
execute if score spellnumber2 spells matches 35 if score ward slot14 matches 1.. run function chtoo:wardslot14
execute if score spellnumber2 spells matches 35 run scoreboard players set attackIsOngoingGame2 booleans 0
execute if score spellnumber2 spells matches 35 run execute at @n[type=armor_stand,name=slot14] run particle minecraft:item_slime ~ ~1 ~ 0.7 0.7 0.7 0.3 150
execute if score spellnumber2 spells matches 35 run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p3]"}," used Slimed! on Slot 6!"]

#Vampire Mark
execute if score spellnumber2 spells matches 36 run scoreboard players operation lifesteal slot14 = vampiremark spellStats
execute if score spellnumber2 spells matches 36 run execute at @n[type=armor_stand,name=slot14] run particle minecraft:crimson_spore ~ ~1 ~ 0.6 0.4 0.6 0 200
execute if score spellnumber2 spells matches 36 run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p4]"}," used Vampire Mark on Slot 6!"]
execute if score spellnumber2 spells matches 36 run function chtoo:spellphasep3

#Butchering
execute if score spellnumber2 spells matches 37 run scoreboard players operation spellDmg saves = butchering spellStats
execute if score spellnumber2 spells matches 37 run scoreboard players operation spellDmg saves += spellbuffsp3 spells
execute if score spellnumber2 spells matches 37 run scoreboard players operation spellDmg saves += marks slot14
execute if score spellnumber2 spells matches 37 run scoreboard players operation spellDmg saves /= atkmultiplier slot14
execute if score spellnumber2 spells matches 37 run execute if score ward slot14 matches 0 run scoreboard players operation shield slot14 -= spellDmg saves
execute if score spellnumber2 spells matches 37 run execute if score ward slot14 matches 0 if score shield slot14 matches ..0 run scoreboard players operation slot14 hp += shield slot14
execute if score spellnumber2 spells matches 37 at @e[name=slot14] run particle minecraft:damage_indicator ~ ~1 ~ 0.6 0.6 0.6 0 100
execute if score spellnumber2 spells matches 37 run execute if score ward slot14 matches 1.. run function chtoo:wardslot14
execute if score spellnumber2 spells matches 37 run scoreboard players set spellbuffsp3 spells 0
execute if score spellnumber2 spells matches 37 run scoreboard players set attackIsOngoingGame2 booleans 0
execute if score spellnumber2 spells matches 37 run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p3]"}," used Butchering on Slot 6!"]

#Will O' Wisp
execute if score spellnumber2 spells matches 38 run execute if score ward slot14 matches 0 if score durationSlot14 burn < willowispDuration spellStats run scoreboard players operation durationSlot14 burn = willowispDuration spellStats
execute if score spellnumber2 spells matches 38 run execute if score ward slot14 matches 0 run scoreboard players operation slot14Burn burn += willowisp spellStats
execute if score spellnumber2 spells matches 38 run scoreboard players operation spellDmg saves = slot14Burn burn
execute if score spellnumber2 spells matches 38 run scoreboard players operation spellDmg saves += spellbuffsp3 spells
execute if score spellnumber2 spells matches 38 run scoreboard players operation spellDmg saves += marks slot14
execute if score spellnumber2 spells matches 38 run scoreboard players operation spellDmg saves /= atkmultiplier slot14
execute if score spellnumber2 spells matches 38 run execute if score ward slot14 matches 0 run scoreboard players operation shield slot14 -= spellDmg saves
execute if score spellnumber2 spells matches 38 run execute if score ward slot14 matches 0 if score shield slot14 matches ..0 run scoreboard players operation slot14 hp += shield slot14
execute if score spellnumber2 spells matches 38 at @e[name=slot14] run particle minecraft:glow ~ ~1 ~ 0.7 0.7 0.7 0.1 100
execute if score spellnumber2 spells matches 38 at @e[name=slot14] run particle minecraft:soul_fire_flame ~ ~1 ~ 0.6 0.6 0.6 0.1 100
execute if score spellnumber2 spells matches 38 run execute if score ward slot14 matches 1.. run function chtoo:wardslot14
execute if score spellnumber2 spells matches 38 run scoreboard players set spellbuffsp3 spells 0
execute if score spellnumber2 spells matches 38 run scoreboard players set attackIsOngoingGame2 booleans 0
execute if score spellnumber2 spells matches 38 run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p3]"}," used Will O' Wisp on Slot 6!"]

#Curse of Bats
execute if score spellnumber2 spells matches 42 if score ward slot14 matches ..0 unless score curse slot14 matches 5 unless score curse slot14 matches 6 run scoreboard players set curseStacks slot14 0
execute if score spellnumber2 spells matches 42 if score ward slot14 matches ..0 unless score curse slot14 matches 5 unless score curse slot14 matches 6 run scoreboard players set curseDuration slot14 -1
execute if score spellnumber2 spells matches 42 if score ward slot14 matches ..0 unless score curse slot14 matches 5 run scoreboard players set curse slot14 6
execute if score spellnumber2 spells matches 42 if score ward slot14 matches ..0 unless score curse slot14 matches 5 if score curse slot14 matches 6 run scoreboard players add curseStacks slot14 1
execute if score spellnumber2 spells matches 42 run execute at @n[name=slot14] run particle shriek{delay:0} ~ ~1 ~ 0.3 0.5 0.3 0.1 200 normal
execute if score spellnumber2 spells matches 42 run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p3]"}," used Curse of Bats on Slot 6!"]
execute if score spellnumber2 spells matches 42 if score ward slot14 matches 1.. run function chtoo:wardslot14
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



