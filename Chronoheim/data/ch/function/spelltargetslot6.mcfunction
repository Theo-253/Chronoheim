effect clear @a[tag=game1] weakness
clear @a[tag=game1]

#Dragonforge
execute if score spellnumber spells matches 26 run execute if score durationSlot6 shield < dragonforgeDuration spellStats run scoreboard players operation durationSlot6 shield = dragonforgeDuration spellStats
execute if score spellnumber spells matches 26 run scoreboard players operation shield slot6 += dragonforge spellStats
execute if score spellnumber spells matches 26 run execute if score slot5 hp matches ..0 if score slot7 hp matches ..0 if score slot8 hp matches ..0 run scoreboard players operation shield slot6 += dragonforge spellStats
execute if score spellnumber spells matches 26 run function ch:spellphasep1
execute if score spellnumber spells matches 26 run execute if score slot5 hp matches ..0 if score slot7 hp matches ..0 if score slot8 hp matches ..0 run execute at @n[type=armor_stand,name=slot6] run particle dragon_breath ~ ~1 ~ 0.9 0.9 0.9 0.1 400
execute if score spellnumber spells matches 26 run execute at @n[type=armor_stand,name=slot6] run particle dragon_breath ~ ~1 ~ 0.9 0.9 0.9 0.1 100
execute if score spellnumber spells matches 26 run tellraw @a[tag=game1] ["",{"selector":"@p[tag=p2]"}," used Dragonforge on Slot 6!"]

#Embiggen
execute if score spellnumber spells matches 13 run execute if score buffDurationSlot6 atkmodifiers < embiggenDuration spellStats run scoreboard players operation buffDurationSlot6 atkmodifiers = embiggenDuration spellStats
execute if score spellnumber spells matches 13 run scoreboard players operation attackBuffSlot6 atkmodifiers += embiggenBuff spellStats
execute if score spellnumber spells matches 13 run scoreboard players operation maxhp slot6 += embiggen spellStats
execute if score spellnumber spells matches 13 run scoreboard players operation slot6 hp += embiggen spellStats
execute if score spellnumber spells matches 13 run function ch:spellphasep1
execute if score spellnumber spells matches 13 run execute at @n[type=armor_stand,name=slot6] run particle minecraft:egg_crack ~ ~1 ~ 0.9 0.9 0.9 0.1 100
execute if score spellnumber spells matches 13 run tellraw @a[tag=game1] ["",{"selector":"@p[tag=p2]"}," used Embiggen on Slot 6!"]

#Embrittle
execute if score spellnumber spells matches 12 if score ward slot6 matches 0 run execute if score debuffDurationSlot6 atkmodifiers < embrittleDuration spellStats run scoreboard players operation debuffDurationSlot6 atkmodifiers = embrittleDuration spellStats
execute if score spellnumber spells matches 12 if score ward slot6 matches 0 run scoreboard players operation attackDebuffSlot6 atkmodifiers += embrittle spellStats
execute if score spellnumber spells matches 12 if score ward slot6 matches 1.. run function ch:wardslot6
execute if score spellnumber spells matches 12 run scoreboard players set attackIsOngoingGame1 booleans 0
execute if score spellnumber spells matches 12 run execute at @n[type=armor_stand,name=slot6] run particle minecraft:block_crumble{block_state:"minecraft:ice"} ~ ~1 ~ 0.9 0.9 0.9 0.1 200
execute if score spellnumber spells matches 12 run tellraw @a[tag=game1] ["",{"selector":"@p[tag=p1]"}," used Embrittle on Slot 6!"]

#Evil Eye
execute if score spellnumber spells matches 15 if score ward slot6 matches 0 run execute if score durationSlot6 mark < evilEyeDuration spellStats run scoreboard players operation durationSlot6 mark = evilEyeDuration spellStats
execute if score spellnumber spells matches 15 if score ward slot6 matches 0 run scoreboard players operation marks slot6 += evilEye spellStats
execute if score spellnumber spells matches 15 if score ward slot6 matches 1.. run function ch:wardslot6
execute if score spellnumber spells matches 15 run scoreboard players set attackIsOngoingGame1 booleans 0
execute if score spellnumber spells matches 15 run execute at @n[type=armor_stand,name=slot6] run particle minecraft:effect ~ ~1 ~ 0.7 0.7 0.7 0.1 200
execute if score spellnumber spells matches 6 run execute at @n[type=armor_stand,name=slot6] run particle minecraft:item_snowball ~ ~1 ~ 0.7 0.7 0.7 0.1 200
execute if score spellnumber spells matches 15 run tellraw @a[tag=game1] ["",{"selector":"@p[tag=p1]"}," used Evil Eye on Slot 6!"]

#Frostbolt
execute if score spellnumber spells matches 6 run scoreboard players operation spellDmg saves = frostbolt spellStats
execute if score spellnumber spells matches 6 run scoreboard players operation spellDmg saves += spellbuffsp1 spells
execute if score spellnumber spells matches 6 run scoreboard players operation spellDmg saves += marks slot6
execute if score spellnumber spells matches 6 run scoreboard players operation spellDmg saves /= atkmultiplier slot6
execute if score spellnumber spells matches 6 run execute if score ward slot6 matches 0 run scoreboard players operation shield slot6 -= spellDmg saves
execute if score spellnumber spells matches 6 run execute if score ward slot6 matches 0 if score frostboltDuration spellStats > durationSlot6 speedDebuffs run scoreboard players operation durationSlot6 speedDebuffs = frostboltDuration spellStats
execute if score spellnumber spells matches 6 run execute if score ward slot6 matches 0 if score frostboltDuration spellStats > debuffDurationSlot6 atkmodifiers run scoreboard players operation debuffDurationSlot6 atkmodifiers = frostboltDuration spellStats
execute if score spellnumber spells matches 6 run execute if score ward slot6 matches 0 run scoreboard players operation speedDebuffSlot6 speedDebuffs += frostboltSpDebuff spellStats
execute if score spellnumber spells matches 6 run execute if score ward slot6 matches 0 run scoreboard players operation attackDebuffSlot6 atkmodifiers += frostboltDmgDebuff spellStats
execute if score spellnumber spells matches 6 run execute if score ward slot6 matches 0 run scoreboard players operation speed slot6 -= frostboltSpDebuff spellStats
execute if score spellnumber spells matches 6 run execute if score ward slot6 matches 0 if score shield slot6 matches ..0 run scoreboard players operation slot6 hp += shield slot6
execute if score spellnumber spells matches 6 run execute if score ward slot6 matches 1.. run function ch:wardslot6
execute if score spellnumber spells matches 6 run scoreboard players set spellbuffsp1 spells 0
execute if score spellnumber spells matches 6 run scoreboard players set attackIsOngoingGame1 booleans 0
execute if score spellnumber spells matches 6 run execute at @n[type=armor_stand,name=slot6] run particle minecraft:item_snowball ~ ~1 ~ 0.7 0.7 0.7 0.1 200
execute if score spellnumber spells matches 6 run tellraw @a[tag=game1] ["",{"selector":"@p[tag=p1]"}," used Frostbolt on Slot 6!"]

#Heal
execute if score spellnumber spells matches 2 run scoreboard players operation spellHeal saves = heal spellStats
execute if score spellnumber spells matches 2 run scoreboard players operation spellHeal saves += spellbuffsp2 spells
execute if score spellnumber spells matches 2 unless score slot6bleeding booleaneffects matches 1.. run scoreboard players operation slot6 hp += spellHeal saves
execute if score spellnumber spells matches 2 run function ch:cleanseslot6
execute if score spellnumber spells matches 2 run scoreboard players set spellbuffsp2 spells 0
execute if score spellnumber spells matches 2 run function ch:spellphasep1
execute if score spellnumber spells matches 2 run execute at @n[type=armor_stand,name=slot6] run particle minecraft:composter ~ ~1 ~ 0.9 0.9 0.9 0.5 100
execute if score spellnumber spells matches 2 run tellraw @a[tag=game1] ["",{"selector":"@p[tag=p2]"}," used Heal on Slot 6!"]

#Miracle
execute if score spellnumber spells matches 17 run function ch:cleanseslot6
execute if score spellnumber spells matches 17 run function ch:spellphasep1
execute if score spellnumber spells matches 17 run tellraw @a[tag=game1] ["",{"selector":"@p[tag=p2]"}," used Miracle on Slot 6!"]

#Magic Missile! Magic Missile! I smite thee with Magic Missile!
execute if score spellnumber spells matches 4 run scoreboard players add magicMissilex2 spells 1
execute if score spellnumber spells matches 4 run scoreboard players operation spellDmg saves = magicMissile spellStats
execute if score spellnumber spells matches 4 run scoreboard players operation spellDmg saves += spellbuffsp1 spells
execute if score spellnumber spells matches 4 run scoreboard players operation spellDmg saves += marks slot6
execute if score spellnumber spells matches 4 run scoreboard players operation spellDmg saves /= atkmultiplier slot6
execute if score spellnumber spells matches 4 run execute if score ward slot6 matches 0 run scoreboard players operation shield slot6 -= spellDmg saves
execute if score spellnumber spells matches 4 run execute if score ward slot6 matches 0 if score shield slot6 matches ..0 run scoreboard players operation slot6 hp += shield slot6
execute if score spellnumber spells matches 4 run execute if score ward slot6 matches 1.. run function ch:wardslot6
execute if score spellnumber spells matches 4 run execute at @n[type=armor_stand,name=slot6] run particle minecraft:enchanted_hit ~ ~1 ~ 0.7 0.7 0.7 0.5 300
execute if score spellnumber spells matches 4 run tellraw @a[tag=game1] ["",{"selector":"@p[tag=p1]"}," smited Slot 6 with Magic Missle!"]
execute if score spellnumber spells matches 4 run execute if score magicMissilex2 spells matches 1 run function ch:spellgivetargetsp1
execute if score spellnumber spells matches 4 run execute if score magicMissilex2 spells matches 2 run scoreboard players set spellbuffsp1 spells 0
execute if score spellnumber spells matches 4 run execute if score magicMissilex2 spells matches 2 run clear @a[tag=p1] target
execute if score spellnumber spells matches 4 run execute if score magicMissilex2 spells matches 2 run scoreboard players set attackIsOngoingGame1 booleans 0
execute if score spellnumber spells matches 4 run execute if score magicMissilex2 spells matches 2 run scoreboard players set magicMissilex2 spells 0

#Protector's Rune
execute if score spellnumber spells matches 16 if score protectorsrune spellStats > durationSlot6 taunt run scoreboard players operation durationSlot6 taunt = protectorsrune spellStats
execute if score spellnumber spells matches 16 if score protectorsrune spellStats > durationSlot6 taunt if score ward slot6 matches 0 run scoreboard players operation marks slot6 += protectorsruneMarks spellStats
execute if score spellnumber spells matches 16 if score protectorsrune spellStats > durationSlot6 taunt if score ward slot6 matches 1.. run function ch:wardslot6
execute if score spellnumber spells matches 16 run function ch:spellphasep1
execute if score spellnumber spells matches 16 run execute at @n[type=armor_stand,name=slot6] run particle minecraft:block_crumble{block_state:"minecraft:emerald_ore"} ~ ~1 ~ 0.7 0.7 0.7 1 400
execute if score spellnumber spells matches 16 run tellraw @a[tag=game1] ["",{"selector":"@p[tag=p2]"}," used Protector's Rune on Slot 6!"]

#Shield
execute if score spellnumber spells matches 8 run execute if score durationSlot6 shield < shieldDuration spellStats run scoreboard players operation durationSlot6 shield = shieldDuration spellStats
execute if score spellnumber spells matches 8 run scoreboard players operation shield slot6 += shield spellStats
execute if score spellnumber spells matches 8 run function ch:spellphasep1
execute if score spellnumber spells matches 8 run execute at @n[type=armor_stand,name=slot6] run particle wax_off ~ ~1 ~ 0.7 0.7 0.7 0.1 400
execute if score spellnumber spells matches 8 run tellraw @a[tag=game1] ["",{"selector":"@p[tag=p2]"}," used Shield on Slot 6!"]

#Ball Lightning
execute if score spellnumber spells matches 9 if score ward slot6 matches 0 run scoreboard players operation slot6 stun += shockOrb spellStats
execute if score spellnumber spells matches 9 if score ward slot6 matches 1.. run function ch:wardslot6
execute if score spellnumber spells matches 9 run scoreboard players set attackIsOngoingGame1 booleans 0
execute if score spellnumber spells matches 9 run execute at @n[type=armor_stand,name=slot6] run particle flash{color:[1.000,1.000,1.000,1.00]} ~ ~1 ~ 0.9 0.9 0.9 0.1 10
execute if score spellnumber spells matches 9 run tellraw @a[tag=game1] ["",{"selector":"@p[tag=p1]"}," used Ball Lightning on Slot 6!"]

#Witches Brew
execute if score spellnumber spells matches 23 run execute if score ward slot6 matches 0 if score witchesBrewDuration spellStats > durationSlot6 speedDebuffs run scoreboard players operation durationSlot6 speedDebuffs = witchesBrewDuration spellStats
execute if score spellnumber spells matches 23 run execute if score ward slot6 matches 0 if score witchesBrewDuration spellStats > debuffDurationSlot6 atkmodifiers run scoreboard players operation debuffDurationSlot6 atkmodifiers = witchesBrewDuration spellStats
execute if score spellnumber spells matches 23 run execute if score ward slot6 matches 0 if score witchesBrewDuration spellStats > durationSlot6 poison run scoreboard players operation durationSlot6 poison = witchesBrewDuration spellStats
execute if score spellnumber spells matches 23 run execute if score ward slot6 matches 0 if score witchesBrewDuration spellStats > durationSlot6 burn run scoreboard players operation durationSlot6 burn = witchesBrewDuration spellStats
execute if score spellnumber spells matches 23 run execute if score ward slot6 matches 0 run scoreboard players operation speedDebuffSlot6 speedDebuffs += witchesBrewSpDebuff spellStats
execute if score spellnumber spells matches 23 run execute if score ward slot6 matches 0 run scoreboard players operation attackDebuffSlot6 atkmodifiers += witchesBrewDmgDebuff spellStats
execute if score spellnumber spells matches 23 run execute if score ward slot6 matches 0 run scoreboard players operation slot6Poison poison += witchesBrew spellStats
execute if score spellnumber spells matches 23 run execute if score ward slot6 matches 0 run scoreboard players operation slot6Burn burn += witchesBrewBurn spellStats
execute if score spellnumber spells matches 23 run execute if score ward slot6 matches 0 run scoreboard players operation speed slot6 -= witchesBrewSpDebuff spellStats
execute if score spellnumber spells matches 23 run execute if score ward slot6 matches 1.. run function ch:wardslot6
execute if score spellnumber spells matches 23 run scoreboard players set attackIsOngoingGame1 booleans 0
execute if score spellnumber spells matches 23 run tellraw @a[tag=game1] ["",{"selector":"@p[tag=p1]"}," used Witches Brew on Slot 6!"]

#Shifting Shadows Token
execute if score spellnumber spells matches -1 if score shadowsPart1 spells matches 1 if score ward slot6 matches 0 run scoreboard players set durationSlot1-6 fear 1
execute if score spellnumber spells matches -1 if score shadowsPart1 spells matches 2 if score ward slot6 matches 0 run scoreboard players set durationSlot2-6 fear 1
execute if score spellnumber spells matches -1 if score shadowsPart1 spells matches 3 if score ward slot6 matches 0 run scoreboard players set durationSlot3-6 fear 1
execute if score spellnumber spells matches -1 if score shadowsPart1 spells matches 4 if score ward slot6 matches 0 run scoreboard players set durationSlot4-6 fear 1
execute if score spellnumber spells matches -1 if score ward slot6 matches 1.. run function ch:wardslot6
execute if score spellnumber spells matches -1 run scoreboard players set attackIsOngoingGame1 booleans 0
execute if score spellnumber spells matches -1 run execute at @n[type=armor_stand,name=slot6] run particle trial_omen ~ ~1 ~ 0.9 0.9 0.9 0.1 400
execute if score spellnumber spells matches -1 run tellraw @a[tag=game1] ["",{"selector":"@p[tag=p1]"}," used Shifting Shadows to fear Slot 6!"]

#Shifting Shadows
execute if score spellnumber spells matches 28 run scoreboard players set shadowsPart1 spells 6
execute if score spellnumber spells matches 28 run function ch:spellgivetargetsp2
execute if score spellnumber spells matches 28 run scoreboard players set spellnumber spells -1
execute if score spellnumber spells matches 28 run execute at @n[type=armor_stand,name=slot6] run particle raid_omen ~ ~1 ~ 0.9 0.9 0.9 0.1 400
execute if score spellnumber spells matches 28 run tellraw @a[tag=game1] ["",{"selector":"@p[tag=p2]"}," used Shifting Shadows to make Slot 6 scary!"]

#fireball
execute if score spellnumber spells matches 1 run scoreboard players operation spellDmg saves = fireball spellStats
execute if score spellnumber spells matches 1 run scoreboard players operation spellDmg saves += spellbuffsp1 spells
execute if score spellnumber spells matches 1 run scoreboard players operation spellDmg saves += marks slot6
execute if score spellnumber spells matches 1 run scoreboard players operation spellDmg saves /= atkmultiplier slot6
execute if score spellnumber spells matches 1 run execute if score ward slot6 matches 0 run scoreboard players operation shield slot6 -= spellDmg saves
execute if score spellnumber spells matches 1 run execute if score ward slot6 matches 0 run scoreboard players operation slot6 hp += shield slot6
execute if score spellnumber spells matches 1 run execute if score ward slot6 matches 0 if score durationSlot6 burn < fireballDuration spellStats run scoreboard players operation durationSlot6 burn = fireballDuration spellStats
execute if score spellnumber spells matches 1 run execute if score ward slot6 matches 0 run scoreboard players operation slot6Burn burn += fireballBurn spellStats
execute if score spellnumber spells matches 1 at @e[name=slot6] run particle minecraft:flame ~ ~1 ~ 0.9 0.9 0.9 0.5 100
execute if score spellnumber spells matches 1 run execute if score ward slot6 matches 1.. run function ch:wardslot6
execute if score spellnumber spells matches 1 run scoreboard players set spellbuffsp1 spells 0
execute if score spellnumber spells matches 1 run scoreboard players set attackIsOngoingGame1 booleans 0
execute if score spellnumber spells matches 1 run tellraw @a[tag=game1] ["",{"selector":"@p[tag=p1]"}," used Fireball on Slot 6!"]

#meteor
execute if score spellnumber spells matches 7 run scoreboard players operation spellDmg saves = meteor spellStats
execute if score spellnumber spells matches 7 run scoreboard players operation spellDmg saves += spellbuffsp1 spells
execute if score spellnumber spells matches 7 run scoreboard players operation spellDmg saves += marks slot6
execute if score spellnumber spells matches 7 run scoreboard players operation spellDmg saves /= atkmultiplier slot6
execute if score spellnumber spells matches 7 run execute if score ward slot6 matches 0 run scoreboard players operation shield slot6 -= spellDmg saves
execute if score spellnumber spells matches 7 run execute if score ward slot6 matches 0 if score shield slot6 matches ..0 run scoreboard players operation slot6 hp += shield slot6
execute if score spellnumber spells matches 7 at @e[name=slot6] run particle minecraft:lava ~ ~1 ~ 0.9 0.9 0.9 0.5 100
execute if score spellnumber spells matches 7 at @e[name=slot5] run particle minecraft:lava ~ ~1 ~ 0.9 0.9 0.9 0.5 50
execute if score spellnumber spells matches 7 at @e[name=slot7] run particle minecraft:lava ~ ~1 ~ 0.9 0.9 0.9 0.5 50
execute if score spellnumber spells matches 7 run execute if score ward slot6 matches 1.. run function ch:wardslot6
execute if score spellnumber spells matches 7 run scoreboard players operation spellDmg saves = meteor spellStats
execute if score spellnumber spells matches 7 run scoreboard players operation spellDmg saves += spellbuffsp2 spells
execute if score spellnumber spells matches 7 run scoreboard players operation spellDmg saves /= meteorSplash spellStats
execute if score spellnumber spells matches 7 run scoreboard players operation spellDmg saves += marks slot5
execute if score spellnumber spells matches 7 run scoreboard players operation spellDmg saves /= atkmultiplier slot5
execute if score spellnumber spells matches 7 run execute if score ward slot5 matches 0 run scoreboard players operation shield slot5 -= spellDmg saves
execute if score spellnumber spells matches 7 run execute if score ward slot5 matches 0 if score shield slot5 matches ..0 run scoreboard players operation slot5 hp += shield slot5
execute if score spellnumber spells matches 7 run execute if score ward slot5 matches 1.. run function ch:wardslot5
execute if score spellnumber spells matches 7 run scoreboard players operation spellDmg saves = meteor spellStats
execute if score spellnumber spells matches 7 run scoreboard players operation spellDmg saves += spellbuffsp2 spells
execute if score spellnumber spells matches 7 run scoreboard players operation spellDmg saves /= meteorSplash spellStats
execute if score spellnumber spells matches 7 run scoreboard players operation spellDmg saves += marks slot7
execute if score spellnumber spells matches 7 run scoreboard players operation spellDmg saves /= atkmultiplier slot7
execute if score spellnumber spells matches 7 run execute if score ward slot7 matches 0 run scoreboard players operation shield slot7 -= spellDmg saves
execute if score spellnumber spells matches 7 run execute if score ward slot7 matches 0 if score shield slot7 matches ..0 run scoreboard players operation slot7 hp += shield slot7
execute if score spellnumber spells matches 7 run execute if score ward slot7 matches 1.. run function ch:wardslot7
execute if score spellnumber spells matches 7 run scoreboard players set spellbuffsp1 spells 0
execute if score spellnumber spells matches 7 run scoreboard players set attackIsOngoingGame1 booleans 0
execute if score spellnumber spells matches 7 run tellraw @a[tag=game1] ["",{"selector":"@p[tag=p1]"}," used Meteor on Slot 6!"]

#witchbolt
execute if score spellnumber spells matches 10 run scoreboard players operation spellDmg saves = witchbolt spellStats
execute if score spellnumber spells matches 10 run scoreboard players operation spellDmg saves += spellbuffsp1 spells
execute if score spellnumber spells matches 10 run scoreboard players operation spellDmg saves += marks slot6
execute if score spellnumber spells matches 10 run scoreboard players operation spellDmg saves /= atkmultiplier slot6
execute if score spellnumber spells matches 10 run execute if score ward slot6 matches 0 run scoreboard players operation shield slot6 -= spellDmg saves
execute if score spellnumber spells matches 10 run execute if score ward slot6 matches 0 if score shield slot6 matches ..0 run scoreboard players operation slot6 hp += shield slot6
execute if score spellnumber spells matches 10 at @e[name=slot6] run particle minecraft:enchanted_hit ~ ~1 ~ 0.9 0.9 0.9 0.5 200
execute if score spellnumber spells matches 10 run execute if score ward slot6 matches 1.. run function ch:wardslot6
execute if score spellnumber spells matches 10 run scoreboard players set spellbuffsp1 spells 0
execute if score spellnumber spells matches 10 run scoreboard players set attackIsOngoingGame1 booleans 0
execute if score spellnumber spells matches 10 run tellraw @a[tag=game1] ["",{"selector":"@p[tag=p1]"}," used Witch Bolt on Slot 6!"]
#ward
execute if score spellnumber spells matches 19 run scoreboard players set ward slot6 1
execute if score spellnumber spells matches 19 at @e[name=slot6] run particle minecraft:ominous_spawning ~ ~1 ~ 0.9 0.9 0.9 0.1 100
execute if score spellnumber spells matches 19 run function ch:spellphasep1
execute if score spellnumber spells matches 19 run tellraw @a[tag=game1] ["",{"selector":"@p[tag=p2]"}," used Ward on Slot 6!"]

#plague
execute if score spellnumber spells matches 21 if score ward slot6 matches 0 run scoreboard players operation slot6Disease disease += plague spellStats
execute if score spellnumber spells matches 21 at @e[name=slot6] run particle minecraft:trial_omen ~ ~1 ~ 0.9 0.9 0.9 0.5 100
execute if score spellnumber spells matches 21 if score ward slot6 matches 1.. run function ch:wardslot6
execute if score spellnumber spells matches 21 run scoreboard players set attackIsOngoingGame1 booleans 0
execute if score spellnumber spells matches 21 run tellraw @a[tag=game1] ["",{"selector":"@p[tag=p1]"}," used Plague on Slot 6!"]

#Second wind
execute if score spellnumber spells matches 22 run execute if score durationSlot6 speedBuffs < secondWindDuration spellStats run scoreboard players operation durationSlot6 speedBuffs = secondWindDuration spellStats
execute if score spellnumber spells matches 22 run scoreboard players operation speedBuffSlot6 speedBuffs += secondWindSpeed spellStats
execute if score spellnumber spells matches 22 run scoreboard players operation speed slot6 += secondWindSpeed spellStats
execute if score spellnumber spells matches 22 if score slot6bleeding booleaneffects matches 0 run scoreboard players operation slot6 hp += secondWind spellStats
execute if score spellnumber spells matches 22 if score slot6bleeding booleaneffects matches 0 run scoreboard players operation slot6 hp += spellbuffsp2 spells
execute if score spellnumber spells matches 22 at @e[name=slot6] run particle minecraft:trial_spawner_detection_ominous ~ ~1 ~ 0.9 0.9 0.9 0.5 100
execute if score spellnumber spells matches 22 run function ch:spellphasep1
execute if score spellnumber spells matches 22 run scoreboard players set spellbuffsp2 spells 0
execute if score spellnumber spells matches 22 run tellraw @a[tag=game1] ["",{"selector":"@p[tag=p2]"}," used Second Wind on Slot 6!"]

#fountain of youth
execute if score spellnumber spells matches 25 run execute if score disarmedslot6 booleaneffects < fountainOfYouthDuration spellStats run scoreboard players operation disarmedslot6 booleaneffects = fountainOfYouthDuration spellStats
execute if score spellnumber spells matches 25 if score slot6bleeding booleaneffects matches 0 run scoreboard players operation slot6 hp += fountainOfYouth spellStats
execute if score spellnumber spells matches 25 if score slot6bleeding booleaneffects matches 0 run scoreboard players operation slot6 hp += spellbuffsp2 spells
execute if score spellnumber spells matches 25 at @e[name=slot6] run particle minecraft:composter ~ ~1 ~ 0.9 0.9 0.9 0.5 500
execute if score spellnumber spells matches 25 run function ch:spellphasep1
execute if score spellnumber spells matches 25 run scoreboard players set spellbuffsp2 spells 0
execute if score spellnumber spells matches 25 run tellraw @a[tag=game1] ["",{"selector":"@p[tag=p2]"}," used Fountain of Youth on Slot 6!"]

#overclock
execute if score spellnumber spells matches 27 run execute if score buffDurationSlot6 atkmodifiers < overclockDuration spellStats run scoreboard players operation buffDurationSlot6 atkmodifiers = overclockDuration spellStats
execute if score spellnumber spells matches 27 run scoreboard players operation attackBuffSlot6 atkmodifiers += overclock spellStats
execute if score spellnumber spells matches 27 run scoreboard players operation shield slot6 -= overclockAtk spellStats
execute if score spellnumber spells matches 27 if score shield slot6 matches ..0 run scoreboard players operation slot6 hp += shield slot6
execute if score spellnumber spells matches 27 at @e[name=slot6] run particle minecraft:trial_spawner_detection ~ ~1 ~ 0.9 0.9 0.9 0.5 400
execute if score spellnumber spells matches 27 run function ch:spellphasep1
execute if score spellnumber spells matches 27 run tellraw @a[tag=game1] ["",{"selector":"@p[tag=p2]"}," used Overclock on Slot 6!"]

#Life Leech Token

execute if score spellnumber spells matches -2 if score slot6bleeding booleaneffects matches 0 run scoreboard players operation slot6 hp += lifeLeechHeal spellStats
execute if score spellnumber spells matches -2 if score slot6bleeding booleaneffects matches 0 run scoreboard players operation slot6 hp += spellbuffsp2 spells
execute if score spellnumber spells matches -2 run function ch:spellphasep1
execute if score spellnumber spells matches -2 run execute at @n[type=armor_stand,name=slot6] run particle dust{color:[0.639,0.008,0.008],scale:1} ~ ~1 ~ 0.9 0.9 0.9 0.1 400
execute if score spellnumber spells matches -2 run tellraw @a[tag=game1] ["",{"selector":"@p[tag=p2]"}," used Life Leech to heal Slot 6!"]
execute if score spellnumber spells matches -2 run scoreboard players set spellbuffsp2 spells 0

#Life Leech
execute if score spellnumber spells matches 31 run scoreboard players operation spellDmg saves = lifeLeech spellStats
execute if score spellnumber spells matches 31 run scoreboard players operation spellDmg saves += spellbuffsp1 spells
execute if score spellnumber spells matches 31 run scoreboard players operation spellDmg saves += marks slot6
execute if score spellnumber spells matches 31 run scoreboard players operation spellDmg saves /= atkmultiplier slot6
execute if score spellnumber spells matches 31 run execute if score ward slot6 matches 0 run scoreboard players operation shield slot6 -= spellDmg saves
execute if score spellnumber spells matches 31 run execute if score ward slot6 matches 0 if score shield slot6 matches ..0 run scoreboard players operation slot6 hp += shield slot6
execute if score spellnumber spells matches 31 run execute if score ward slot6 matches 1.. run function ch:wardslot6
execute if score spellnumber spells matches 31 run function ch:spellgivetargetsp2reverse
execute if score spellnumber spells matches 31 run execute at @n[type=armor_stand,name=slot6] run particle dust{color:[0.639,0.008,0.008],scale:1} ~ ~1 ~ 0.9 0.9 0.9 0.1 400
execute if score spellnumber spells matches 31 run tellraw @a[tag=game1] ["",{"selector":"@p[tag=p1]"}," used Life Leech on Slot 6!"]
execute if score spellnumber spells matches 31 run scoreboard players set spellnumber spells -2

#Decimate
execute if score spellnumber spells matches 32 run scoreboard players operation spellDmg saves = decimate spellStats
execute if score spellnumber spells matches 32 run scoreboard players operation spellDmg saves += spellbuffsp1 spells
execute if score spellnumber spells matches 32 run scoreboard players operation spellDmg saves += marks slot6
execute if score spellnumber spells matches 32 run scoreboard players operation spellDmg saves /= atkmultiplier slot6
execute if score spellnumber spells matches 32 run execute if score ward slot6 matches 0 if score character# slot6 matches ..-1 run scoreboard players operation shield slot6 -= spellDmg saves
execute if score spellnumber spells matches 32 run execute if score ward slot6 matches 0 if score character# slot6 matches ..-1 if score shield slot6 matches ..0 run scoreboard players operation slot6 hp += shield slot6
execute if score spellnumber spells matches 32 run execute if score ward slot6 matches 1.. if score character# slot6 matches ..-1 run function ch:wardslot6
execute if score spellnumber spells matches 32 run execute at @n[type=armor_stand,name=slot6] run particle block{block_state:"minecraft:dripstone_block"} ~ ~ ~ 0.9 2 0.9 1 250 normal
execute if score spellnumber spells matches 32 run tellraw @a[tag=game1] ["",{"selector":"@p[tag=p1]"}," used Decimate on Slot 6!"]
execute if score spellnumber spells matches 32 run scoreboard players set spellbuffsp1 spells 0
execute if score spellnumber spells matches 32 run scoreboard players set attackIsOngoingGame1 booleans 0

#cannibalize token

execute if score spellnumber spells matches -3 if score slot6bleeding booleaneffects matches 0 run scoreboard players operation slot6 hp += cannibalize spellStats
execute if score spellnumber spells matches -3 if score slot6bleeding booleaneffects matches 0 run scoreboard players operation slot6 hp += spellbuffsp1 spells
execute if score spellnumber spells matches -3 run function ch:spellphasep1
execute if score spellnumber spells matches -3 run execute at @n[type=armor_stand,name=slot6] run particle dust{color:[0.639,0.008,0.008],scale:1} ~ ~1 ~ 0.9 0.9 0.9 0.1 400
execute if score spellnumber spells matches -3 run tellraw @a[tag=game1] ["",{"selector":"@p[tag=p2]"}," used Cannibalize to heal Slot 6!"]
execute if score spellnumber spells matches -3 run scoreboard players set spellbuffsp1 spells 0

#cannibalize
execute if score spellnumber spells matches 34 run scoreboard players operation slot6 hp -= cannibalize spellStats
execute if score spellnumber spells matches 34 run scoreboard players operation slot6bleeding booleaneffects += cannibalizeDuration spellStats
execute if score spellnumber spells matches 34 run function ch:spellgivetargetsp1reverse
execute if score spellnumber spells matches 34 run execute at @n[type=armor_stand,name=slot6] run particle dust{color:[0.639,0.008,0.008],scale:1} ~ ~1 ~ 0.9 0.9 0.9 0.1 400
execute if score spellnumber spells matches 34 run tellraw @a[tag=game1] ["",{"selector":"@p[tag=p2]"}," used Cannibalize on Slot 6!"]
execute if score spellnumber spells matches 34 run scoreboard players set spellnumber spells -3

#Dark Ritual
execute if score spellnumber spells matches 40 run execute if score buffDurationSlot6 atkmodifiers < darkpowerDuration spellStats run scoreboard players operation buffDurationSlot6 atkmodifiers = darkpowerDuration spellStats
execute if score spellnumber spells matches 40 run scoreboard players operation attackBuffSlot6 atkmodifiers += darkpower spellStats
execute if score spellnumber spells matches 40 run scoreboard players operation attackBuffSlot6 atkmodifiers += darkritual player2spells
execute if score spellnumber spells matches 40 at @e[name=slot6] run particle minecraft:trial_omen ~ ~1 ~ 0.9 0.9 0.9 0.5 40
execute if score spellnumber spells matches 40 run function ch:spellphasep1
execute if score spellnumber spells matches 40 run tellraw @a[tag=game1] ["",{"selector":"@p[tag=p2]"}," used Dark Ritual on Slot 6!"]

#Monkey's Paw
execute if score spellnumber spells matches 43 run scoreboard players operation invincibleSlot6 booleaneffects = monkeyspaw spellStats
execute if score spellnumber spells matches 43 run scoreboard players operation savehp6 saves = slot6 hp
execute if score spellnumber spells matches 43 run scoreboard players set curse slot6 5
execute if score spellnumber spells matches 43 run scoreboard players set curseStacks slot6 0
execute if score spellnumber spells matches 43 run scoreboard players operation curseDuration slot6 = monkeyspaw spellStats
execute if score spellnumber spells matches 43 at @e[name=slot6] run particle minecraft:raid_omen ~ ~1 ~ 0.9 0.9 0.9 0.00000001 200
execute if score spellnumber spells matches 43 run playsound minecraft:ambient.cave player @a[tag=game1] ~ ~ ~ 500 2
execute if score spellnumber spells matches 43 run function ch:spellphasep1
execute if score spellnumber spells matches 43 run tellraw @a[tag=game1] ["",{"selector":"@p[tag=p2]"}," used Monkey's Paw on Slot 6!"]

#Slimed!
execute if score spellnumber spells matches 35 if score ward slot6 matches 0 run scoreboard players operation disarmedslot6 booleaneffects += slimed spellStats
execute if score spellnumber spells matches 35 if score ward slot6 matches 1.. run function ch:wardslot6
execute if score spellnumber spells matches 35 run scoreboard players set attackIsOngoingGame1 booleans 0
execute if score spellnumber spells matches 35 run execute at @n[type=armor_stand,name=slot6] run particle minecraft:item_slime ~ ~1 ~ 0.7 0.7 0.7 0.3 150
execute if score spellnumber spells matches 35 run tellraw @a[tag=game1] ["",{"selector":"@p[tag=p1]"}," used Slimed! on Slot 6!"]

#Vampire Mark
execute if score spellnumber spells matches 36 run scoreboard players operation lifesteal slot6 = vampiremark spellStats
execute if score spellnumber spells matches 36 run execute at @n[type=armor_stand,name=slot6] run particle minecraft:crimson_spore ~ ~1 ~ 0.6 0.4 0.6 0 200
execute if score spellnumber spells matches 36 run tellraw @a[tag=game1] ["",{"selector":"@p[tag=p2]"}," used Vampire Mark on Slot 6!"]
execute if score spellnumber spells matches 36 run function ch:spellphasep1

#Butchering
execute if score spellnumber spells matches 37 run scoreboard players operation spellDmg saves = butchering spellStats
execute if score spellnumber spells matches 37 run scoreboard players operation spellDmg saves += spellbuffsp1 spells
execute if score spellnumber spells matches 37 run scoreboard players operation spellDmg saves += marks slot6
execute if score spellnumber spells matches 37 run scoreboard players operation spellDmg saves /= atkmultiplier slot6
execute if score spellnumber spells matches 37 run execute if score ward slot6 matches 0 run scoreboard players operation shield slot6 -= spellDmg saves
execute if score spellnumber spells matches 37 run execute if score ward slot6 matches 0 if score shield slot6 matches ..0 run scoreboard players operation slot6 hp += shield slot6
execute if score spellnumber spells matches 37 at @e[name=slot6] run particle minecraft:damage_indicator ~ ~1 ~ 0.6 0.6 0.6 0 100
execute if score spellnumber spells matches 37 run execute if score ward slot6 matches 1.. run function ch:wardslot6
execute if score spellnumber spells matches 37 run scoreboard players set spellbuffsp1 spells 0
execute if score spellnumber spells matches 37 run scoreboard players set attackIsOngoingGame1 booleans 0
execute if score spellnumber spells matches 37 run tellraw @a[tag=game1] ["",{"selector":"@p[tag=p1]"}," used Butchering on Slot 6!"]

#Will O' Wisp
execute if score spellnumber spells matches 38 run execute if score ward slot6 matches 0 if score durationSlot6 burn < willowispDuration spellStats run scoreboard players operation durationSlot6 burn = willowispDuration spellStats
execute if score spellnumber spells matches 38 run execute if score ward slot6 matches 0 run scoreboard players operation slot6Burn burn += willowisp spellStats
execute if score spellnumber spells matches 38 run scoreboard players operation spellDmg saves = slot6Burn burn
execute if score spellnumber spells matches 38 run scoreboard players operation spellDmg saves += spellbuffsp1 spells
execute if score spellnumber spells matches 38 run scoreboard players operation spellDmg saves += marks slot6
execute if score spellnumber spells matches 38 run scoreboard players operation spellDmg saves /= atkmultiplier slot6
execute if score spellnumber spells matches 38 run execute if score ward slot6 matches 0 run scoreboard players operation shield slot6 -= spellDmg saves
execute if score spellnumber spells matches 38 run execute if score ward slot6 matches 0 if score shield slot6 matches ..0 run scoreboard players operation slot6 hp += shield slot6
execute if score spellnumber spells matches 38 at @e[name=slot6] run particle minecraft:glow ~ ~1 ~ 0.7 0.7 0.7 0.1 100
execute if score spellnumber spells matches 38 at @e[name=slot6] run particle minecraft:soul_fire_flame ~ ~1 ~ 0.6 0.6 0.6 0.1 100
execute if score spellnumber spells matches 38 run execute if score ward slot6 matches 1.. run function ch:wardslot6
execute if score spellnumber spells matches 38 run scoreboard players set spellbuffsp1 spells 0
execute if score spellnumber spells matches 38 run scoreboard players set attackIsOngoingGame1 booleans 0
execute if score spellnumber spells matches 38 run tellraw @a[tag=game1] ["",{"selector":"@p[tag=p1]"}," used Will O' Wisp on Slot 6!"]

#Curse of Bats
execute if score spellnumber spells matches 42 if score ward slot6 matches ..0 unless score curse slot6 matches 5 unless score curse slot6 matches 6 run scoreboard players set curseStacks slot6 0
execute if score spellnumber spells matches 42 if score ward slot6 matches ..0 unless score curse slot6 matches 5 unless score curse slot6 matches 6 run scoreboard players set curseDuration slot6 -1
execute if score spellnumber spells matches 42 if score ward slot6 matches ..0 unless score curse slot6 matches 5 run scoreboard players set curse slot6 6
execute if score spellnumber spells matches 42 if score ward slot6 matches ..0 unless score curse slot6 matches 5 if score curse slot6 matches 6 run scoreboard players add curseStacks slot6 1
execute if score spellnumber spells matches 42 run execute at @n[name=slot6] run particle shriek{delay:0} ~ ~1 ~ 0.3 0.5 0.3 0.1 200 normal
execute if score spellnumber spells matches 42 run tellraw @a[tag=game1] ["",{"selector":"@p[tag=p1]"}," used Curse of Bats on Slot 6!"]
execute if score spellnumber spells matches 42 if score ward slot6 matches 1.. run function ch:wardslot6
execute if score spellnumber spells matches 42 run scoreboard players set attackIsOngoingGame1 booleans 0


#This goes at the bottom
execute if score shield slot5 matches ..0 run scoreboard players set shield slot5 0
execute if score shield slot6 matches ..0 run scoreboard players set shield slot6 0
execute if score shield slot7 matches ..0 run scoreboard players set shield slot7 0
execute if score shield slot8 matches ..0 run scoreboard players set shield slot8 0
#Death
execute if score game1Ongoing ongoinggames matches 1 if score invincibleSlot1 booleaneffects matches 0 run execute if score slot1 hp matches ..0 run execute unless score speed slot1 matches ..-900000 run function ch:death1
execute if score game1Ongoing ongoinggames matches 1 if score invincibleSlot2 booleaneffects matches 0 run execute if score slot2 hp matches ..0 run execute unless score speed slot2 matches ..-900000 run function ch:death2
execute if score game1Ongoing ongoinggames matches 1 if score invincibleSlot3 booleaneffects matches 0 run execute if score slot3 hp matches ..0 run execute unless score speed slot3 matches ..-900000 run function ch:death3
execute if score game1Ongoing ongoinggames matches 1 if score invincibleSlot4 booleaneffects matches 0 unless score character# slot4 matches 0 run execute if score slot4 hp matches ..0 run execute unless score speed slot4 matches ..-900000 run function ch:death4
execute if score game1Ongoing ongoinggames matches 1 if score invincibleSlot5 booleaneffects matches 0 run execute if score slot5 hp matches ..0 run execute unless score speed slot5 matches ..-900000 run function ch:death5
execute if score game1Ongoing ongoinggames matches 1 if score invincibleSlot6 booleaneffects matches 0 run execute if score slot6 hp matches ..0 run execute unless score speed slot6 matches ..-900000 run function ch:death6
execute if score game1Ongoing ongoinggames matches 1 if score invincibleSlot7 booleaneffects matches 0 run execute if score slot7 hp matches ..0 run execute unless score speed slot7 matches ..-900000 run function ch:death7
execute if score game1Ongoing ongoinggames matches 1 if score invincibleSlot8 booleaneffects matches 0 unless score character# slot8 matches 0 run execute if score slot8 hp matches ..0 run execute unless score speed slot8 matches ..-900000 run function ch:death8





