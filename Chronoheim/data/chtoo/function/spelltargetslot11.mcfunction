effect clear @a[tag=game2] weakness
clear @a[tag=game2]

#Dragonforge
execute if score spellnumber2 spells matches 26 run execute if score durationSlot11 shield < dragonforgeDuration spellStats run scoreboard players operation durationSlot11 shield = dragonforgeDuration spellStats 
execute if score spellnumber2 spells matches 26 run scoreboard players operation shield slot11 += dragonforge spellStats
execute if score spellnumber2 spells matches 26 run execute if score slot10 hp matches ..0 if score slot9 hp matches ..0 if score slot12 hp matches ..0 run scoreboard players operation shield slot11 += dragonforge spellStats
execute if score spellnumber2 spells matches 26 run scoreboard players set attackIsOngoingGame2 booleans 0
execute if score spellnumber2 spells matches 26 run execute if score slot10 hp matches ..0 if score slot9 hp matches ..0 if score slot12 hp matches ..0 run execute at @n[type=armor_stand,name=slot11] run particle dragon_breath ~ ~1 ~ 0.9 0.9 0.9 0.1 400
execute if score spellnumber2 spells matches 26 run execute at @n[type=armor_stand,name=slot11] run particle dragon_breath ~ ~1 ~ 0.9 0.9 0.9 0.1 100
execute if score spellnumber2 spells matches 26 run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p3]"}," used Dragonforge on Slot 3!"]

#Embiggen
execute if score spellnumber2 spells matches 13 run execute if score buffDurationSlot11 atkmodifiers < embiggenDuration spellStats run scoreboard players operation buffDurationSlot11 atkmodifiers = embiggenDuration spellStats
execute if score spellnumber2 spells matches 13 run scoreboard players operation attackBuffSlot11 atkmodifiers += embiggenBuff spellStats
execute if score spellnumber2 spells matches 13 run scoreboard players operation maxhp slot11 += embiggen spellStats
execute if score spellnumber2 spells matches 13 run scoreboard players operation slot11 hp += embiggen spellStats
execute if score spellnumber2 spells matches 13 run scoreboard players set attackIsOngoingGame2 booleans 0
execute if score spellnumber2 spells matches 13 run execute at @n[type=armor_stand,name=slot11] run particle minecraft:egg_crack ~ ~1 ~ 0.9 0.9 0.9 0.1 100
execute if score spellnumber2 spells matches 13 run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p3]"}," used Embiggen on Slot 3!"]

#Embrittle
execute if score spellnumber2 spells matches 12 if score ward slot11 matches 0 run execute if score debuffDurationSlot11 atkmodifiers < embrittleDuration spellStats run scoreboard players operation debuffDurationSlot11 atkmodifiers = embrittleDuration spellStats
execute if score spellnumber2 spells matches 12 if score ward slot11 matches 0 run scoreboard players operation attackDebuffSlot11 atkmodifiers += embrittle spellStats
execute if score spellnumber2 spells matches 12 if score ward slot11 matches 1.. run function chtoo:wardslot11
execute if score spellnumber2 spells matches 12 run function chtoo:spellphasep3
execute if score spellnumber2 spells matches 12 run execute at @n[type=armor_stand,name=slot11] run particle minecraft:block_crumble{block_state:"minecraft:ice"} ~ ~1 ~ 0.9 0.9 0.9 0.1 200
execute if score spellnumber2 spells matches 12 run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p4]"}," used Embrittle on Slot 3!"]
#Evil Eye
execute if score spellnumber2 spells matches 15 if score ward slot11 matches 0 run execute if score durationSlot11 mark < evilEyeDuration spellStats run scoreboard players operation durationSlot11 mark = evilEyeDuration spellStats
execute if score spellnumber2 spells matches 15 if score ward slot11 matches 0 run scoreboard players operation marks slot11 += evilEye spellStats
execute if score spellnumber2 spells matches 15 if score ward slot11 matches 1.. run function chtoo:wardslot11
execute if score spellnumber2 spells matches 15 run function chtoo:spellphasep3
execute if score spellnumber2 spells matches 15 run execute at @n[type=armor_stand,name=slot11] run particle minecraft:effect ~ ~1 ~ 0.7 0.7 0.7 0.1 200
execute if score spellnumber2 spells matches 15 run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p4]"}," used Evil Eye on Slot 3!"]

#Frostbolt
execute if score spellnumber2 spells matches 6 run scoreboard players operation spellDmg2 saves = frostbolt spellStats
execute if score spellnumber2 spells matches 6 run scoreboard players operation spellDmg2 saves += spellbuffsp4 spells
execute if score spellnumber2 spells matches 6 run scoreboard players operation spellDmg2 saves += marks slot11
execute if score spellnumber2 spells matches 6 run scoreboard players operation spellDmg2 saves /= atkmultiplier slot11
execute if score spellnumber2 spells matches 6 run execute if score ward slot11 matches 0 run scoreboard players operation shield slot11 -= spellDmg2 saves
execute if score spellnumber2 spells matches 6 run execute if score ward slot11 matches 0 if score frostboltDuration spellStats > durationSlot11 speedDebuffs run scoreboard players operation durationSlot11 speedDebuffs = frostboltDuration spellStats
execute if score spellnumber2 spells matches 6 run execute if score ward slot11 matches 0 if score frostboltDuration spellStats > debuffDurationSlot11 atkmodifiers run scoreboard players operation debuffDurationSlot11 atkmodifiers = frostboltDuration spellStats
execute if score spellnumber2 spells matches 6 run execute if score ward slot11 matches 0 run scoreboard players operation speedDebuffSlot11 speedDebuffs += frostboltSpDebuff spellStats
execute if score spellnumber2 spells matches 6 run execute if score ward slot11 matches 0 run scoreboard players operation attackDebuffSlot11 atkmodifiers += frostboltDmgDebuff spellStats
execute if score spellnumber2 spells matches 6 run execute if score ward slot11 matches 0 run scoreboard players operation speed slot11 -= frostboltSpDebuff spellStats
execute if score spellnumber2 spells matches 6 run execute if score ward slot11 matches 0 if score shield slot11 matches ..0 run scoreboard players operation slot11 hp += shield slot11
execute if score spellnumber2 spells matches 6 run execute if score ward slot11 matches 1.. run function chtoo:wardslot11
execute if score spellnumber2 spells matches 6 run scoreboard players set spellbuffsp4 spells 0
execute if score spellnumber2 spells matches 6 run function chtoo:spellphasep3
execute if score spellnumber2 spells matches 6 run execute at @n[type=armor_stand,name=slot11] run particle minecraft:item_snowball ~ ~1 ~ 0.7 0.7 0.7 0.1 200
execute if score spellnumber2 spells matches 6 run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p4]"}," used Frostbolt on Slot 3!"]

#Heal
execute if score spellnumber2 spells matches 2 run scoreboard players operation spellHeal saves = heal spellStats
execute if score spellnumber2 spells matches 2 run scoreboard players operation spellHeal saves += spellbuffsp3 spells
execute if score spellnumber2 spells matches 2 unless score slot11bleeding booleaneffects matches 1.. run scoreboard players operation slot11 hp += spellHeal saves
execute if score spellnumber2 spells matches 2 run function chtoo:cleanseslot11
execute if score spellnumber2 spells matches 2 run scoreboard players set spellbuffsp3 spells 0
execute if score spellnumber2 spells matches 2 run scoreboard players set attackIsOngoingGame2 booleans 0
execute if score spellnumber2 spells matches 2 run execute at @n[type=armor_stand,name=slot11] run particle minecraft:composter ~ ~1 ~ 0.9 0.9 0.9 0.5 100
execute if score spellnumber2 spells matches 2 run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p3]"}," used Heal on Slot 3!"]

#Miracle
execute if score spellnumber2 spells matches 17 run function chtoo:cleanseslot11
execute if score spellnumber2 spells matches 17 run scoreboard players set attackIsOngoingGame2 booleans 0
execute if score spellnumber2 spells matches 17 run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p3]"}," used Miracle on Slot 3!"]

#Magic Missile! Magic Missile! I smite thee with Magic Missile!
execute if score spellnumber2 spells matches 4 run scoreboard players operation spellDmg saves = magicmissile spellStats
execute if score spellnumber2 spells matches 4 run scoreboard players operation spellDmg saves += spellbuffsp4 spells
execute if score spellnumber2 spells matches 4 run scoreboard players operation spellDmg saves += marks slot11
execute if score spellnumber2 spells matches 4 run scoreboard players operation spellDmg saves /= atkmultiplier slot11
execute if score spellnumber2 spells matches 4 run execute if score ward slot11 matches 0 run scoreboard players operation shield slot11 -= spellDmg saves
execute if score spellnumber2 spells matches 4 run execute if score ward slot11 matches 0 if score shield slot11 matches ..0 run scoreboard players operation slot11 hp += shield slot11
execute if score spellnumber2 spells matches 4 at @e[name=slot11] run particle minecraft:enchanted_hit ~ ~1 ~ 0.9 0.9 0.9 0.5 300
execute if score spellnumber2 spells matches 4 at @e[name=slot10] run particle minecraft:enchanted_hit ~ ~1 ~ 0.9 0.9 0.9 0.5 150
execute if score spellnumber2 spells matches 4 at @e[name=slot12] run particle minecraft:enchanted_hit ~ ~1 ~ 0.9 0.9 0.9 0.5 150
execute if score spellnumber2 spells matches 4 run execute if score ward slot11 matches 1.. run function chtoo:wardslot11
execute if score spellnumber2 spells matches 4 run scoreboard players operation spellDmg saves = magicmissile spellStats
execute if score spellnumber2 spells matches 4 run scoreboard players operation spellDmg saves += spellbuffsp4 spells
execute if score spellnumber2 spells matches 4 run scoreboard players operation spellDmg saves /= magicmissileSplash spellStats
execute if score spellnumber2 spells matches 4 run scoreboard players operation spellDmg saves += marks slot10
execute if score spellnumber2 spells matches 4 run scoreboard players operation spellDmg saves /= atkmultiplier slot10
execute if score spellnumber2 spells matches 4 run execute if score ward slot10 matches 0 run scoreboard players operation shield slot10 -= spellDmg saves
execute if score spellnumber2 spells matches 4 run execute if score ward slot10 matches 0 if score shield slot10 matches ..0 run scoreboard players operation slot10 hp += shield slot10
execute if score spellnumber2 spells matches 4 run execute if score ward slot10 matches 1.. run function chtoo:wardslot10
execute if score spellnumber2 spells matches 4 run scoreboard players operation spellDmg saves = magicmissile spellStats
execute if score spellnumber2 spells matches 4 run scoreboard players operation spellDmg saves += spellbuffsp4 spells
execute if score spellnumber2 spells matches 4 run scoreboard players operation spellDmg saves += marks slot12
execute if score spellnumber2 spells matches 4 run scoreboard players operation spellDmg saves /= atkmultiplier slot12
execute if score spellnumber2 spells matches 4 run scoreboard players operation spellDmg saves /= magicmissileSplash spellStats
execute if score spellnumber2 spells matches 4 run execute if score ward slot12 matches 0 run scoreboard players operation shield slot12 -= spellDmg saves
execute if score spellnumber2 spells matches 4 run execute if score ward slot12 matches 0 if score shield slot12 matches ..0 run scoreboard players operation slot12 hp += shield slot12
execute if score spellnumber2 spells matches 4 run execute if score ward slot12 matches 1.. run function chtoo:wardslot12
execute if score spellnumber2 spells matches 4 run scoreboard players set spellbuffsp4 spells 0
execute if score spellnumber2 spells matches 4 run function chtoo:spellphasep3
execute if score spellnumber2 spells matches 4 run tellraw @a[tag=game1] ["",{"selector":"@p[tag=p4]"}," used Magic Missile on Slot 3!"]

#Protector's Rune
execute if score spellnumber2 spells matches 16 if score protectorsrune spellStats > durationSlot11 taunt run scoreboard players operation durationSlot11 taunt = protectorsrune spellStats
execute if score spellnumber2 spells matches 16 if score protectorsrune spellStats > durationSlot11 taunt if score ward slot11 matches 0 run scoreboard players operation marks slot11 += protectorsruneMarks spellStats
execute if score spellnumber2 spells matches 16 if score protectorsrune spellStats > durationSlot11 taunt if score ward slot11 matches 1.. run function chtoo:wardslot11
execute if score spellnumber2 spells matches 16 run scoreboard players set attackIsOngoingGame2 booleans 0
execute if score spellnumber2 spells matches 16 run execute at @n[type=armor_stand,name=slot11] run particle minecraft:block_crumble{block_state:"minecraft:emerald_ore"} ~ ~1 ~ 0.7 0.7 0.7 1 400
execute if score spellnumber2 spells matches 16 run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p3]"}," used Protector's Rune on Slot 3!"]

#Shield
execute if score spellnumber2 spells matches 8 run execute if score durationSlot11 shield < shieldDuration spellStats run scoreboard players operation durationSlot11 shield = shieldDuration spellStats 
execute if score spellnumber2 spells matches 8 run scoreboard players operation shield slot11 += shield spellStats
execute if score spellnumber2 spells matches 8 run scoreboard players set attackIsOngoingGame2 booleans 0
execute if score spellnumber2 spells matches 8 run execute at @n[type=armor_stand,name=slot11] run particle wax_off ~ ~1 ~ 0.7 0.7 0.7 0.1 400
execute if score spellnumber2 spells matches 8 run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p3]"}," used Shield on Slot 3!"]

#Ball Lightning
execute if score spellnumber2 spells matches 9 if score ward slot11 matches 0 run scoreboard players operation slot11 stun += shockOrb spellStats
execute if score spellnumber2 spells matches 9 if score ward slot11 matches 1.. run function chtoo:wardslot11
execute if score spellnumber2 spells matches 9 run function chtoo:spellphasep3
execute if score spellnumber2 spells matches 9 run execute at @n[type=armor_stand,name=slot11] run particle flash{color:[1.000,1.000,1.000,1.00]} ~ ~1 ~ 0.9 0.9 0.9 0.1 10
execute if score spellnumber2 spells matches 9 run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p4]"}," used Ball Lightning on Slot 3!"]

#Witches Brew
execute if score spellnumber2 spells matches 23 run execute if score ward slot11 matches 0 if score witchesBrewDuration spellStats > durationSlot11 speedDebuffs run scoreboard players operation durationSlot11 speedDebuffs = witchesBrewDuration spellStats
execute if score spellnumber2 spells matches 23 run execute if score ward slot11 matches 0 if score witchesBrewDuration spellStats > debuffDurationSlot11 atkmodifiers run scoreboard players operation debuffDurationSlot11 atkmodifiers = witchesBrewDuration spellStats
execute if score spellnumber2 spells matches 23 run execute if score ward slot11 matches 0 if score witchesBrewDuration spellStats > durationSlot11 poison run scoreboard players operation durationSlot11 poison = witchesBrewDuration spellStats
execute if score spellnumber2 spells matches 23 run execute if score ward slot11 matches 0 if score witchesBrewDuration spellStats > durationSlot11 burn run scoreboard players operation durationSlot11 burn = witchesBrewDuration spellStats
execute if score spellnumber2 spells matches 23 run execute if score ward slot11 matches 0 run scoreboard players operation speedDebuffSlot11 speedDebuffs += witchesBrewSpDebuff spellStats
execute if score spellnumber2 spells matches 23 run execute if score ward slot11 matches 0 run scoreboard players operation attackDebuffSlot11 atkmodifiers += witchesBrewDmgDebuff spellStats
execute if score spellnumber2 spells matches 23 run execute if score ward slot11 matches 0 run scoreboard players operation slot11Poison poison += witchesBrew spellStats
execute if score spellnumber2 spells matches 23 run execute if score ward slot11 matches 0 run scoreboard players operation slot11Burn burn += witchesBrewBurn spellStats
execute if score spellnumber2 spells matches 23 run execute if score ward slot11 matches 0 run scoreboard players operation speed slot11 -= witchesBrewSpDebuff spellStats
execute if score spellnumber2 spells matches 23 run execute if score ward slot11 matches 1.. run function chtoo:wardslot11
execute if score spellnumber2 spells matches 23 run function chtoo:spellphasep3
execute if score spellnumber2 spells matches 23 run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p4]"}," used Witches Brew on Slot 3!"]

#Shifting Shadows Token
execute if score spellnumber2 spells matches -1 if score shadowsPart1 spells matches 5 if score ward slot11 matches 0 run scoreboard players set durationSlot13-11 fear 1 
execute if score spellnumber2 spells matches -1 if score shadowsPart1 spells matches 6 if score ward slot11 matches 0 run scoreboard players set durationSlot14-11 fear 1 
execute if score spellnumber2 spells matches -1 if score shadowsPart1 spells matches 7 if score ward slot11 matches 0 run scoreboard players set durationSlot15-11 fear 1 
execute if score spellnumber2 spells matches -1 if score shadowsPart1 spells matches 8 if score ward slot11 matches 0 run scoreboard players set durationSlot16-11 fear 1
execute if score spellnumber2 spells matches -1 if score ward slot11 matches 1.. run function chtoo:wardslot11
execute if score spellnumber2 spells matches -1 run function chtoo:spellphasep3
execute if score spellnumber2 spells matches -1 run execute at @n[type=armor_stand,name=slot11] run particle trial_omen ~ ~1 ~ 0.9 0.9 0.9 0.1 400
execute if score spellnumber2 spells matches -1 run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p4]"}," used Shifting Shadows to fear Slot 3!"]

#Shifting Shadows
execute if score spellnumber2 spells matches 28 run scoreboard players set shadowsPart1 spells 3
execute if score spellnumber2 spells matches 28 run function chtoo:spellgivetargetsp3
execute if score spellnumber2 spells matches 28 run scoreboard players set spellnumber2 spells -1
execute if score spellnumber2 spells matches 28 run execute at @n[type=armor_stand,name=slot11] run particle raid_omen ~ ~1 ~ 0.9 0.9 0.9 0.1 400
execute if score spellnumber2 spells matches 28 run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p3]"}," used Shifting Shadows to make Slot 3 scary!"]

#fireball
execute if score spellnumber2 spells matches 1 run scoreboard players operation spellDmg2 saves = fireball spellStats
execute if score spellnumber2 spells matches 1 run scoreboard players operation spellDmg2 saves += spellbuffsp4 spells
execute if score spellnumber2 spells matches 1 run scoreboard players operation spellDmg2 saves += marks slot11
execute if score spellnumber2 spells matches 1 run scoreboard players operation spellDmg2 saves /= atkmultiplier slot11
execute if score spellnumber2 spells matches 1 run execute if score ward slot11 matches 0 run scoreboard players operation shield slot11 -= spellDmg2 saves
execute if score spellnumber2 spells matches 1 run execute if score ward slot11 matches 0 run scoreboard players operation slot11 hp += shield slot11
execute if score spellnumber2 spells matches 1 run execute if score ward slot11 matches 0 if score durationSlot11 burn < fireballDuration spellStats run scoreboard players operation durationSlot11 burn = fireballDuration spellStats
execute if score spellnumber2 spells matches 1 run execute if score ward slot11 matches 0 run scoreboard players operation slot11Burn burn += fireballBurn spellStats
execute if score spellnumber2 spells matches 1 at @e[name=slot11] run particle minecraft:flame ~ ~1 ~ 0.9 0.9 0.9 0.5 100
execute if score spellnumber2 spells matches 1 run execute if score ward slot11 matches 1.. run function chtoo:wardslot11
execute if score spellnumber2 spells matches 1 run scoreboard players set spellbuffsp4 spells 0
execute if score spellnumber2 spells matches 1 run function chtoo:spellphasep3
execute if score spellnumber2 spells matches 1 run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p4]"}," used Fireball on Slot 3!"]
#meteor
execute if score spellnumber2 spells matches 7 run scoreboard players operation spellDmg2 saves = meteor spellStats
execute if score spellnumber2 spells matches 7 if score slot15isatk booleans matches 1 run scoreboard players operation spellDmg2 saves += spellbuffsp4 spells
execute if score spellnumber2 spells matches 7 run scoreboard players operation spellDmg2 saves += marks slot11
execute if score spellnumber2 spells matches 7 run scoreboard players operation spellDmg2 saves /= atkmultiplier slot11
execute if score spellnumber2 spells matches 7 run execute if score ward slot11 matches 0 run scoreboard players operation shield slot11 -= spellDmg2 saves
execute if score spellnumber2 spells matches 7 run execute if score ward slot11 matches 0 if score shield slot11 matches ..0 run scoreboard players operation slot11 hp += shield slot11
execute if score spellnumber2 spells matches 7 at @e[name=slot11] run particle minecraft:lava ~ ~1 ~ 0.9 0.9 0.9 0.5 100
execute if score spellnumber2 spells matches 7 at @e[name=slot10] run particle minecraft:lava ~ ~1 ~ 0.9 0.9 0.9 0.5 50
execute if score spellnumber2 spells matches 7 at @e[name=slot12] run particle minecraft:lava ~ ~1 ~ 0.9 0.9 0.9 0.5 50
execute if score spellnumber2 spells matches 7 run execute if score ward slot11 matches 1.. run function chtoo:wardslot11
execute if score spellnumber2 spells matches 7 run scoreboard players operation spellDmg2 saves = meteor spellStats
execute if score spellnumber2 spells matches 7 run scoreboard players operation spellDmg2 saves += spellbuffsp4 spells
execute if score spellnumber2 spells matches 7 run scoreboard players operation spellDmg2 saves /= meteorSplash spellStats
execute if score spellnumber2 spells matches 7 run scoreboard players operation spellDmg2 saves += marks slot10
execute if score spellnumber2 spells matches 7 run scoreboard players operation spellDmg2 saves /= atkmultiplier slot10
execute if score spellnumber2 spells matches 7 run execute if score ward slot10 matches 0 run scoreboard players operation shield slot10 -= spellDmg2 saves
execute if score spellnumber2 spells matches 7 run execute if score ward slot10 matches 0 if score shield slot10 matches ..0 run scoreboard players operation slot10 hp += shield slot10
execute if score spellnumber2 spells matches 7 run execute if score ward slot10 matches 1.. run function chtoo:wardslot10
execute if score spellnumber2 spells matches 7 run scoreboard players operation spellDmg2 saves = meteor spellStats
execute if score spellnumber2 spells matches 7 run scoreboard players operation spellDmg2 saves += spellbuffsp4 spells
execute if score spellnumber2 spells matches 7 run scoreboard players operation spellDmg2 saves += marks slot12
execute if score spellnumber2 spells matches 7 run scoreboard players operation spellDmg2 saves /= atkmultiplier slot12
execute if score spellnumber2 spells matches 7 run scoreboard players operation spellDmg2 saves /= meteorSplash spellStats
execute if score spellnumber2 spells matches 7 run execute if score ward slot12 matches 0 run scoreboard players operation shield slot12 -= spellDmg2 saves
execute if score spellnumber2 spells matches 7 run execute if score ward slot12 matches 0 if score shield slot12 matches ..0 run scoreboard players operation slot12 hp += shield slot12
execute if score spellnumber2 spells matches 7 run execute if score ward slot12 matches 1.. run function chtoo:wardslot12
execute if score spellnumber2 spells matches 7 run scoreboard players set spellbuffsp4 spells 0
execute if score spellnumber2 spells matches 7 run function chtoo:spellphasep3
execute if score spellnumber2 spells matches 7 run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p4]"}," used Meteor on Slot 3!"]

#witchbolt
execute if score spellnumber2 spells matches 10 run scoreboard players operation spellDmg2 saves = witchbolt spellStats
execute if score spellnumber2 spells matches 10 run scoreboard players operation spellDmg2 saves += spellbuffsp4 spells
execute if score spellnumber2 spells matches 10 run scoreboard players operation spellDmg2 saves += marks slot11
execute if score spellnumber2 spells matches 10 run scoreboard players operation spellDmg2 saves /= atkmultiplier slot11
execute if score spellnumber2 spells matches 10 run execute if score ward slot11 matches 0 run scoreboard players operation shield slot11 -= spellDmg2 saves
execute if score spellnumber2 spells matches 10 run execute if score ward slot11 matches 0 if score shield slot11 matches ..0 run scoreboard players operation slot11 hp += shield slot11
execute if score spellnumber2 spells matches 10 at @e[name=slot11] run particle minecraft:enchanted_hit ~ ~1 ~ 0.9 0.9 0.9 0.5 200
execute if score spellnumber2 spells matches 10 run execute if score ward slot11 matches 1.. run function chtoo:wardslot11
execute if score spellnumber2 spells matches 10 run scoreboard players set spellbuffsp4 spells 0
execute if score spellnumber2 spells matches 10 run function chtoo:spellphasep3
execute if score spellnumber2 spells matches 10 run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p4]"}," used Witch Bolt on Slot 3!"]
#ward
execute if score spellnumber2 spells matches 19 run scoreboard players set ward slot11 1
execute if score spellnumber2 spells matches 19 at @e[name=slot11] run particle minecraft:ominous_spawning ~ ~1 ~ 0.9 0.9 0.9 0.1 100
execute if score spellnumber2 spells matches 19 run scoreboard players set attackIsOngoingGame2 booleans 0
execute if score spellnumber2 spells matches 19 run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p3]"}," used Ward on Slot 3!"]
#plague
execute if score spellnumber2 spells matches 21 if score ward slot11 matches 0 run scoreboard players operation slot11Disease disease += plague spellStats
execute if score spellnumber2 spells matches 21 at @e[name=slot11] run particle minecraft:trial_omen ~ ~1 ~ 0.9 0.9 0.9 0.5 100
execute if score spellnumber2 spells matches 21 if score ward slot11 matches 1.. run function chtoo:wardslot11
execute if score spellnumber2 spells matches 21 run function chtoo:spellphasep3
execute if score spellnumber2 spells matches 21 run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p4]"}," used Plague on Slot 3!"]

#Second wind
execute if score spellnumber2 spells matches 22 run execute if score durationSlot11 speedBuffs < secondWindDuration spellStats run scoreboard players operation durationSlot11 speedBuffs = secondWindDuration spellStats
execute if score spellnumber2 spells matches 22 run scoreboard players operation speedBuffSlot11 speedBuffs += secondWindSpeed spellStats
execute if score spellnumber2 spells matches 22 run scoreboard players operation speed slot11 += secondWindSpeed spellStats
execute if score spellnumber2 spells matches 22 if score slot11bleeding booleaneffects matches 0 run scoreboard players operation slot11 hp += secondWind spellStats
execute if score spellnumber2 spells matches 22 if score slot11bleeding booleaneffects matches 0 run scoreboard players operation slot11 hp += spellbuffsp3 spells
execute if score spellnumber2 spells matches 22 at @e[name=slot11] run particle minecraft:trial_spawner_detection_ominous ~ ~1 ~ 0.9 0.9 0.9 0.5 100
execute if score spellnumber2 spells matches 22 run scoreboard players set attackIsOngoingGame2 booleans 0
execute if score spellnumber2 spells matches 22 run scoreboard players set spellbuffsp3 spells 0
execute if score spellnumber2 spells matches 22 run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p3]"}," used Second Wind on Slot 3!"]
#fountain of youth
execute if score spellnumber2 spells matches 25 run execute if score disarmedslot11 booleaneffects < fountainOfYouthDuration spellStats run scoreboard players operation disarmedslot11 booleaneffects = fountainOfYouthDuration spellStats
execute if score spellnumber2 spells matches 25 if score slot11bleeding booleaneffects matches 0 run scoreboard players operation slot11 hp += fountainOfYouth spellStats
execute if score spellnumber2 spells matches 25 if score slot11bleeding booleaneffects matches 0 run scoreboard players operation slot11 hp += spellbuffsp3 spells
execute if score spellnumber2 spells matches 25 at @e[name=slot11] run particle minecraft:composter ~ ~1 ~ 0.9 0.9 0.9 0.5 500
execute if score spellnumber2 spells matches 25 run scoreboard players set attackIsOngoingGame2 booleans 0
execute if score spellnumber2 spells matches 25 run scoreboard players set spellbuffsp3 spells 0
execute if score spellnumber2 spells matches 25 run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p3]"}," used Fountain of Youth on Slot 3!"]
#overclock
execute if score spellnumber2 spells matches 27 run execute if score buffDurationSlot11 atkmodifiers < overclockDuration spellStats run scoreboard players operation buffDurationSlot11 atkmodifiers = overclockDuration spellStats
execute if score spellnumber2 spells matches 27 run scoreboard players operation attackBuffSlot11 atkmodifiers += overclock spellStats
execute if score spellnumber2 spells matches 27 run scoreboard players operation shield slot11 -= overclockAtk spellStats
execute if score spellnumber2 spells matches 27 if score shield slot11 matches ..0 run scoreboard players operation slot11 hp += shield slot11
execute if score spellnumber2 spells matches 27 at @e[name=slot11] run particle minecraft:trial_spawner_detection ~ ~1 ~ 0.9 0.9 0.9 0.5 400
execute if score spellnumber2 spells matches 27 run scoreboard players set attackIsOngoingGame2 booleans 0
execute if score spellnumber2 spells matches 27 run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p3]"}," used Overclock on Slot 3!"]

#Life Leech Token

execute if score spellnumber2 spells matches -2 if score slot11bleeding booleaneffects matches 0 run scoreboard players operation slot11 hp += lifeLeechHeal spellStats
execute if score spellnumber2 spells matches -2 if score slot11bleeding booleaneffects matches 0 run scoreboard players operation slot11 hp += spellbuffsp3 spells
execute if score spellnumber2 spells matches -2 run scoreboard players set attackIsOngoingGame2 booleans 0
execute if score spellnumber2 spells matches -2 run execute at @n[type=armor_stand,name=slot11] run particle dust{color:[0.639,0.008,0.008],scale:1} ~ ~1 ~ 0.9 0.9 0.9 0.1 400
execute if score spellnumber2 spells matches -2 run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p3]"}," used Life Leech to heal Slot 3!"]
execute if score spellnumber2 spells matches -2 run scoreboard players set spellbuffsp3 spells 0

#Life Leech
execute if score spellnumber2 spells matches 31 run scoreboard players operation spellDmg saves = lifeLeech spellStats
execute if score spellnumber2 spells matches 31 run scoreboard players operation spellDmg saves += spellbuffsp4 spells
execute if score spellnumber2 spells matches 31 run scoreboard players operation spellDmg saves += marks slot11
execute if score spellnumber2 spells matches 31 run scoreboard players operation spellDmg saves /= atkmultiplier slot11
execute if score spellnumber2 spells matches 31 run execute if score ward slot11 matches 0 run scoreboard players operation shield slot11 -= spellDmg saves
execute if score spellnumber2 spells matches 31 run execute if score ward slot11 matches 0 if score shield slot11 matches ..0 run scoreboard players operation slot11 hp += shield slot11
execute if score spellnumber2 spells matches 31 run execute if score ward slot11 matches 1.. run function chtoo:wardslot11
execute if score spellnumber2 spells matches 31 run function chtoo:spellgivetargetsp3reverse
execute if score spellnumber2 spells matches 31 run execute at @n[type=armor_stand,name=slot11] run particle dust{color:[0.639,0.008,0.008],scale:1} ~ ~1 ~ 0.9 0.9 0.9 0.1 400
execute if score spellnumber2 spells matches 31 run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p4]"}," used Life Leech on Slot 3!"]
execute if score spellnumber2 spells matches 31 run scoreboard players set spellnumber2 spells -2

#Decimate
execute if score spellnumber2 spells matches 32 run scoreboard players operation spellDmg saves = decimate spellStats
execute if score spellnumber2 spells matches 32 run scoreboard players operation spellDmg saves += spellbuffsp4 spells
execute if score spellnumber2 spells matches 32 run scoreboard players operation spellDmg saves += marks slot11
execute if score spellnumber2 spells matches 32 run scoreboard players operation spellDmg saves /= atkmultiplier slot11
execute if score spellnumber2 spells matches 32 run execute if score ward slot11 matches 0 if score character# slot11 matches ..-1 run scoreboard players operation shield slot11 -= spellDmg saves
execute if score spellnumber2 spells matches 32 run execute if score ward slot11 matches 0 if score character# slot11 matches ..-1 if score shield slot11 matches ..0 run scoreboard players operation slot11 hp += shield slot11
execute if score spellnumber2 spells matches 32 run execute if score ward slot11 matches 1.. if score character# slot11 matches ..-1 run function chtoo:wardslot11
execute if score spellnumber2 spells matches 32 run execute at @n[type=armor_stand,name=slot11] run particle block{block_state:"minecraft:dripstone_block"} ~ ~ ~ 0.9 2 0.9 1 250 normal
execute if score spellnumber2 spells matches 32 run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p4]"}," used Decimate on Slot 3!"]
execute if score spellnumber2 spells matches 32 run scoreboard players set spellbuffsp4 spells 0
execute if score spellnumber2 spells matches 32 run function chtoo:spellphasep3

#cannibalize token

execute if score spellnumber2 spells matches -3 if score slot11bleeding booleaneffects matches 0 run scoreboard players operation slot11 hp += cannibalize spellStats
execute if score spellnumber2 spells matches -3 if score slot11bleeding booleaneffects matches 0 run scoreboard players operation slot11 hp += spellbuffsp3 spells
execute if score spellnumber2 spells matches -3 run scoreboard players set attackIsOngoingGame2 booleans 0
execute if score spellnumber2 spells matches -3 run execute at @n[type=armor_stand,name=slot11] run particle dust{color:[0.639,0.008,0.008],scale:1} ~ ~1 ~ 0.9 0.9 0.9 0.1 400
execute if score spellnumber2 spells matches -3 run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p3]"}," used Cannibalize to heal Slot 3!"]
execute if score spellnumber2 spells matches -3 run scoreboard players set spellbuffsp3 spells 0

#cannibalize
execute if score spellnumber2 spells matches 34 run scoreboard players operation slot11 hp -= cannibalize spellStats
execute if score spellnumber2 spells matches 34 run scoreboard players operation slot11bleeding booleaneffects += cannibalizeDuration spellStats
execute if score spellnumber2 spells matches 34 run function chtoo:spellgivetargetsp4reverse
execute if score spellnumber2 spells matches 34 run execute at @n[type=armor_stand,name=slot11] run particle dust{color:[0.639,0.008,0.008],scale:1} ~ ~1 ~ 0.9 0.9 0.9 0.1 400
execute if score spellnumber2 spells matches 34 run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p3]"}," used Cannibalize on Slot 3!"]
execute if score spellnumber2 spells matches 34 run scoreboard players set spellnumber2 spells -3

#Dark Ritual
execute if score spellnumber2 spells matches 40 run execute if score buffDurationSlot11 atkmodifiers < darkpowerDuration spellStats run scoreboard players operation buffDurationSlot11 atkmodifiers = darkpowerDuration spellStats
execute if score spellnumber2 spells matches 40 run scoreboard players operation attackBuffSlot11 atkmodifiers += darkpower spellStats
execute if score spellnumber2 spells matches 40 run scoreboard players operation attackBuffSlot11 atkmodifiers += darkritual player3spells
execute if score spellnumber2 spells matches 40 at @e[name=slot11] run particle minecraft:trial_omen ~ ~1 ~ 0.9 0.9 0.9 0.5 40
execute if score spellnumber2 spells matches 40 run scoreboard players set attackIsOngoingGame2 booleans 0
execute if score spellnumber2 spells matches 40 run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p3]"}," used Dark Ritual on Slot 3!"]

#Monkey's Paw
execute if score spellnumber2 spells matches 43 run scoreboard players operation invincibleSlot11 booleaneffects = monkeyspaw spellStats
execute if score spellnumber2 spells matches 43 run scoreboard players operation savehp11 saves = slot11 hp
execute if score spellnumber2 spells matches 43 run scoreboard players set curse slot11 5
execute if score spellnumber2 spells matches 43 run scoreboard players set curseStacks slot11 0
execute if score spellnumber2 spells matches 43 run scoreboard players operation curseDuration slot11 = monkeyspaw spellStats
execute if score spellnumber2 spells matches 43 at @e[name=slot11] run particle minecraft:raid_omen ~ ~1 ~ 0.9 0.9 0.9 0.00000001 200
execute if score spellnumber2 spells matches 43 run playsound minecraft:ambient.cave player @a[tag=game2] ~ ~ ~ 500 2
execute if score spellnumber2 spells matches 43 run scoreboard players set attackIsOngoingGame2 booleans 0
execute if score spellnumber2 spells matches 43 run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p3]"}," used Monkey's Paw on Slot 3!"]

#Slimed!
execute if score spellnumber2 spells matches 35 if score ward slot11 matches 0 run scoreboard players operation disarmedslot11 booleaneffects += slimed spellStats
execute if score spellnumber2 spells matches 35 if score ward slot11 matches 1.. run function chtoo:wardslot11
execute if score spellnumber2 spells matches 35 run function chtoo:spellphasep3
execute if score spellnumber2 spells matches 35 run execute at @n[type=armor_stand,name=slot11] run particle minecraft:item_slime ~ ~1 ~ 0.7 0.7 0.7 0.3 150
execute if score spellnumber2 spells matches 35 run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p4]"}," used Slimed! on Slot 3!"]

#Vampire Mark
execute if score spellnumber2 spells matches 36 run scoreboard players operation lifesteal slot11 = vampiremark spellStats
execute if score spellnumber2 spells matches 36 run execute at @n[type=armor_stand,name=slot11] run particle minecraft:crimson_spore ~ ~1 ~ 0.6 0.4 0.6 0 200
execute if score spellnumber2 spells matches 36 run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p3]"}," used Vampire Mark on Slot 3!"]
execute if score spellnumber2 spells matches 36 run scoreboard players set attackIsOngoingGame2 booleans 0

#Butchering
execute if score spellnumber2 spells matches 37 run scoreboard players operation spellDmg saves = butchering spellStats
execute if score spellnumber2 spells matches 37 run scoreboard players operation spellDmg saves += spellbuffsp3 spells
execute if score spellnumber2 spells matches 37 run scoreboard players operation spellDmg saves += marks slot11
execute if score spellnumber2 spells matches 37 run scoreboard players operation spellDmg saves /= atkmultiplier slot11
execute if score spellnumber2 spells matches 37 run execute if score ward slot11 matches 0 run scoreboard players operation shield slot11 -= spellDmg saves
execute if score spellnumber2 spells matches 37 run execute if score ward slot11 matches 0 if score shield slot11 matches ..0 run scoreboard players operation slot11 hp += shield slot11
execute if score spellnumber2 spells matches 37 at @e[name=slot11] run particle minecraft:damage_indicator ~ ~1 ~ 0.6 0.6 0.6 0 100
execute if score spellnumber2 spells matches 37 run execute if score ward slot11 matches 1.. run function chtoo:wardslot11
execute if score spellnumber2 spells matches 37 run scoreboard players set spellbuffsp3 spells 0
execute if score spellnumber2 spells matches 37 run function chtoo:spellphasep3
execute if score spellnumber2 spells matches 37 run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p4]"}," used Butchering on Slot 3!"]

#Will O' Wisp
execute if score spellnumber2 spells matches 38 run execute if score ward slot11 matches 0 if score durationSlot11 burn < willowispDuration spellStats run scoreboard players operation durationSlot11 burn = willowispDuration spellStats
execute if score spellnumber2 spells matches 38 run execute if score ward slot11 matches 0 run scoreboard players operation slot11Burn burn += willowisp spellStats
execute if score spellnumber2 spells matches 38 run scoreboard players operation spellDmg saves = slot11Burn burn
execute if score spellnumber2 spells matches 38 run scoreboard players operation spellDmg saves += spellbuffsp3 spells
execute if score spellnumber2 spells matches 38 run scoreboard players operation spellDmg saves += marks slot11
execute if score spellnumber2 spells matches 38 run scoreboard players operation spellDmg saves /= atkmultiplier slot11
execute if score spellnumber2 spells matches 38 run execute if score ward slot11 matches 0 run scoreboard players operation shield slot11 -= spellDmg saves
execute if score spellnumber2 spells matches 38 run execute if score ward slot11 matches 0 if score shield slot11 matches ..0 run scoreboard players operation slot11 hp += shield slot11
execute if score spellnumber2 spells matches 38 at @e[name=slot11] run particle minecraft:glow ~ ~1 ~ 0.7 0.7 0.7 0.1 100
execute if score spellnumber2 spells matches 38 at @e[name=slot11] run particle minecraft:soul_fire_flame ~ ~1 ~ 0.6 0.6 0.6 0.1 100
execute if score spellnumber2 spells matches 38 run execute if score ward slot11 matches 1.. run function chtoo:wardslot11
execute if score spellnumber2 spells matches 38 run scoreboard players set spellbuffsp3 spells 0
execute if score spellnumber2 spells matches 38 run function chtoo:spellphasep3
execute if score spellnumber2 spells matches 38 run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p3]"}," used Will O' Wisp on Slot 3!"]

#Curse of Bats
execute if score spellnumber2 spells matches 42 if score ward slot11 matches ..0 unless score curse slot11 matches 5 unless score curse slot11 matches 6 run scoreboard players set curseStacks slot11 0
execute if score spellnumber2 spells matches 42 if score ward slot11 matches ..0 unless score curse slot11 matches 5 unless score curse slot11 matches 6 run scoreboard players set curseDuration slot11 -1
execute if score spellnumber2 spells matches 42 if score ward slot11 matches ..0 unless score curse slot11 matches 5 run scoreboard players set curse slot11 6
execute if score spellnumber2 spells matches 42 if score ward slot11 matches ..0 unless score curse slot11 matches 5 if score curse slot11 matches 6 run scoreboard players add curseStacks slot11 1
execute if score spellnumber2 spells matches 42 run execute at @n[name=slot11] run particle shriek{delay:0} ~ ~1 ~ 0.3 0.5 0.3 0.1 200 normal
execute if score spellnumber2 spells matches 42 run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p3]"}," used Curse of Bats on Slot 3!"]
execute if score spellnumber2 spells matches 42 if score ward slot11 matches 1.. run function chtoo:wardslot11
execute if score spellnumber2 spells matches 42 run function chtoo:spellphasep3

#This goes at the bottom
execute if score shield slot9 matches ..0 run scoreboard players set shield slot9 0
execute if score shield slot10 matches ..0 run scoreboard players set shield slot10 0
execute if score shield slot11 matches ..0 run scoreboard players set shield slot11 0
execute if score shield slot12 matches ..0 run scoreboard players set shield slot12 0

execute if score game2Ongoing ongoinggames matches 1 if score invincibleSlot9 booleaneffects matches 0 run execute if score slot9 hp matches ..0 run execute unless score speed slot9 matches ..-900000 run function chtoo:death1
execute if score game2Ongoing ongoinggames matches 1 if score invincibleSlot10 booleaneffects matches 0 run execute if score slot10 hp matches ..0 run execute unless score speed slot10 matches ..-900000 run function chtoo:death2
execute if score game2Ongoing ongoinggames matches 1 if score invincibleSlot11 booleaneffects matches 0 run execute if score slot11 hp matches ..0 run execute unless score speed slot11 matches ..-900000 run function chtoo:death3
execute if score game2Ongoing ongoinggames matches 1 if score invincibleSlot12 booleaneffects matches 0 unless score character# slot12 matches 0 run execute if score slot12 hp matches ..0 run execute unless score speed slot12 matches ..-900000 run function chtoo:death4
execute if score game2Ongoing ongoinggames matches 1 if score invincibleSlot13 booleaneffects matches 0 run execute if score slot13 hp matches ..0 run execute unless score speed slot13 matches ..-900000 run function chtoo:death5
execute if score game2Ongoing ongoinggames matches 1 if score invincibleSlot14 booleaneffects matches 0 run execute if score slot14 hp matches ..0 run execute unless score speed slot14 matches ..-900000 run function chtoo:death6
execute if score game2Ongoing ongoinggames matches 1 if score invincibleSlot15 booleaneffects matches 0 run execute if score slot15 hp matches ..0 run execute unless score speed slot15 matches ..-900000 run function chtoo:death7
execute if score game2Ongoing ongoinggames matches 1 if score invincibleSlot16 booleaneffects matches 0 unless score character# slot16 matches 0 run execute if score slot16 hp matches ..0 run execute unless score speed slot16 matches ..-900000 run function chtoo:death8