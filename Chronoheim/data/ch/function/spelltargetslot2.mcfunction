effect clear @a[tag=game1] weakness
clear @a[tag=game1]

#Dragonforge
execute if score spellnumber spells matches 26 run execute if score durationSlot2 shield < dragonforgeDuration spellStats run scoreboard players operation durationSlot2 shield = dragonforgeDuration spellStats
execute if score spellnumber spells matches 26 run scoreboard players operation shield slot2 += dragonforge spellStats
execute if score spellnumber spells matches 26 run execute if score slot1 hp matches ..0 if score slot3 hp matches ..0 if score slot4 hp matches ..0 run scoreboard players operation shield slot2 += dragonforge spellStats
execute if score spellnumber spells matches 26 run scoreboard players set attackIsOngoingGame1 booleans 0
execute if score spellnumber spells matches 26 run execute if score slot1 hp matches ..0 if score slot3 hp matches ..0 if score slot4 hp matches ..0 run execute at @n[type=armor_stand,name=slot2] run particle dragon_breath ~ ~1 ~ 0.9 0.9 0.9 0.1 400
execute if score spellnumber spells matches 26 run execute run execute at @n[type=armor_stand,name=slot2] run particle dragon_breath ~ ~1 ~ 0.9 0.9 0.9 0.1 100
execute if score spellnumber spells matches 26 run tellraw @a[tag=game1] ["",{"selector":"@p[tag=p1]"}," used Dragonforge on Slot 2!"]

#Embiggen
execute if score spellnumber spells matches 13 run execute if score buffDurationSlot2 atkmodifiers < embiggenDuration spellStats run scoreboard players operation buffDurationSlot2 atkmodifiers = embiggenDuration spellStats
execute if score spellnumber spells matches 13 run scoreboard players operation attackBuffSlot2 atkmodifiers += embiggenBuff spellStats
execute if score spellnumber spells matches 13 run scoreboard players operation maxhp slot2 += embiggen spellStats
execute if score spellnumber spells matches 13 run scoreboard players operation slot2 hp += embiggen spellStats
execute if score spellnumber spells matches 13 run scoreboard players set attackIsOngoingGame1 booleans 0
execute if score spellnumber spells matches 13 run execute at @n[type=armor_stand,name=slot2] run particle minecraft:egg_crack ~ ~1 ~ 0.9 0.9 0.9 0.1 100
execute if score spellnumber spells matches 26 run tellraw @a[tag=game1] ["",{"selector":"@p[tag=p1]"}," used Embiggen on Slot 2!"]

#Embrittle
execute if score spellnumber spells matches 12 if score ward slot2 matches 0 run execute if score debuffDurationSlot2 atkmodifiers < embrittleDuration spellStats run scoreboard players operation debuffDurationSlot2 atkmodifiers = embrittleDuration spellStats
execute if score spellnumber spells matches 12 if score ward slot2 matches 0 run scoreboard players operation attackDebuffSlot2 atkmodifiers += embrittle spellStats
execute if score spellnumber spells matches 12 if score ward slot2 matches 1.. run function ch:wardslot2
execute if score spellnumber spells matches 12 run function ch:spellphasep1
execute if score spellnumber spells matches 12 run execute at @n[type=armor_stand,name=slot2] run particle minecraft:block_crumble{block_state:"minecraft:ice"} ~ ~1 ~ 0.9 0.9 0.9 0.1 200
execute if score spellnumber spells matches 12 run tellraw @a[tag=game1] ["",{"selector":"@p[tag=p2]"}," used Embrittle on Slot 2!"]
#Evil Eye
execute if score spellnumber spells matches 15 if score ward slot2 matches 0 run execute if score durationSlot2 mark < evilEyeDuration spellStats run scoreboard players operation durationSlot2 mark = evilEyeDuration spellStats
execute if score spellnumber spells matches 15 if score ward slot2 matches 0 run scoreboard players operation marks slot2 += evilEye spellStats
execute if score spellnumber spells matches 15 if score ward slot2 matches 1.. run function ch:wardslot2
execute if score spellnumber spells matches 15 run function ch:spellphasep1
execute if score spellnumber spells matches 15 run execute at @n[type=armor_stand,name=slot2] run particle minecraft:effect ~ ~1 ~ 0.7 0.7 0.7 0.1 200
execute if score spellnumber spells matches 15 run tellraw @a[tag=game1] ["",{"selector":"@p[tag=p2]"}," used Evil Eye on Slot 2!"]

#Frostbolt
execute if score spellnumber spells matches 6 run scoreboard players operation spellDmg saves = frostbolt spellStats
execute if score spellnumber spells matches 6 run scoreboard players operation spellDmg saves += spellbuffsp2 spells
execute if score spellnumber spells matches 6 run scoreboard players operation spellDmg saves += marks slot2
execute if score spellnumber spells matches 6 run scoreboard players operation spellDmg saves /= atkmultiplier slot2
execute if score spellnumber spells matches 6 run execute if score ward slot2 matches 0 run scoreboard players operation shield slot2 -= spellDmg saves
execute if score spellnumber spells matches 6 run execute if score ward slot2 matches 0 if score frostboltDuration spellStats > durationSlot2 speedDebuffs run scoreboard players operation durationSlot2 speedDebuffs = frostboltDuration spellStats
execute if score spellnumber spells matches 6 run execute if score ward slot2 matches 0 if score frostboltDuration spellStats > debuffDurationSlot2 atkmodifiers run scoreboard players operation debuffDurationSlot2 atkmodifiers = frostboltDuration spellStats
execute if score spellnumber spells matches 6 run execute if score ward slot2 matches 0 run scoreboard players operation speedDebuffSlot2 speedDebuffs += frostboltSpDebuff spellStats
execute if score spellnumber spells matches 6 run execute if score ward slot2 matches 0 run scoreboard players operation attackDebuffSlot2 atkmodifiers += frostboltDmgDebuff spellStats
execute if score spellnumber spells matches 6 run execute if score ward slot2 matches 0 run scoreboard players operation speed slot2 -= frostboltSpDebuff spellStats
execute if score spellnumber spells matches 6 run execute if score ward slot2 matches 0 if score shield slot2 matches ..0 run scoreboard players operation slot2 hp += shield slot2
execute if score spellnumber spells matches 6 run execute if score ward slot2 matches 1.. run function ch:wardslot2
execute if score spellnumber spells matches 6 run scoreboard players set spellbuffsp2 spells 0
execute if score spellnumber spells matches 6 run function ch:spellphasep1
execute if score spellnumber spells matches 6 run execute at @n[type=armor_stand,name=slot2] run particle minecraft:item_snowball ~ ~1 ~ 0.7 0.7 0.7 0.1 200
execute if score spellnumber spells matches 6 run tellraw @a[tag=game1] ["",{"selector":"@p[tag=p2]"}," used Frostbolt on Slot 2!"]

#Heal
execute if score spellnumber spells matches 2 run scoreboard players operation spellHeal saves = heal spellStats
execute if score spellnumber spells matches 2 run scoreboard players operation spellHeal saves += spellbuffsp1 spells
execute if score spellnumber spells matches 2 unless score slot2bleeding booleaneffects matches 1.. run scoreboard players operation slot2 hp += spellHeal saves
execute if score spellnumber spells matches 2 run function ch:cleanseslot2
execute if score spellnumber spells matches 2 run scoreboard players set spellbuffsp1 spells 0
execute if score spellnumber spells matches 2 run scoreboard players set attackIsOngoingGame1 booleans 0
execute if score spellnumber spells matches 2 run execute at @n[type=armor_stand,name=slot2] run particle minecraft:composter ~ ~1 ~ 0.9 0.9 0.9 0.5 100
execute if score spellnumber spells matches 2 run tellraw @a[tag=game1] ["",{"selector":"@p[tag=p1]"}," used Heal on Slot 2!"]

#Miracle
execute if score spellnumber spells matches 17 run function ch:cleanseslot2
execute if score spellnumber spells matches 17 run scoreboard players set attackIsOngoingGame1 booleans 0
execute if score spellnumber spells matches 17 run tellraw @a[tag=game1] ["",{"selector":"@p[tag=p1]"}," used Miracle on Slot 2!"]

#Magic Missile! Magic Missile! I smite thee with Magic Missile!
execute if score spellnumber spells matches 4 run scoreboard players add magicMissilex2 spells 1
execute if score spellnumber spells matches 4 run scoreboard players operation spellDmg saves = magicMissile spellStats
execute if score spellnumber spells matches 4 run scoreboard players operation spellDmg saves += spellbuffsp2 spells
execute if score spellnumber spells matches 4 run scoreboard players operation spellDmg saves += marks slot2
execute if score spellnumber spells matches 4 run scoreboard players operation spellDmg saves /= atkmultiplier slot2
execute if score spellnumber spells matches 4 run execute if score ward slot2 matches 0 run scoreboard players operation shield slot2 -= spellDmg saves
execute if score spellnumber spells matches 4 run execute if score ward slot2 matches 0 if score shield slot2 matches ..0 run scoreboard players operation slot2 hp += shield slot2
execute if score spellnumber spells matches 4 run execute if score ward slot2 matches 1.. run function ch:wardslot2
execute if score spellnumber spells matches 4 run tellraw @a[tag=game1] ["",{"selector":"@p[tag=p2]"}," smited Slot 2 with Magic Missle!"]
execute if score spellnumber spells matches 4 run execute at @n[type=armor_stand,name=slot2] run particle minecraft:enchanted_hit ~ ~1 ~ 0.7 0.7 0.7 0.5 300
execute if score spellnumber spells matches 4 run execute if score magicMissilex2 spells matches 1 run function ch:spellgivetargetsp2
execute if score spellnumber spells matches 4 run execute if score magicMissilex2 spells matches 2 run scoreboard players set spellbuffsp2 spells 0
execute if score spellnumber spells matches 4 run execute if score magicMissilex2 spells matches 2 run clear @a[tag=p2] target
execute if score spellnumber spells matches 4 run execute if score magicMissilex2 spells matches 2 run function ch:spellphasep1
execute if score spellnumber spells matches 4 run execute if score magicMissilex2 spells matches 2 run scoreboard players set magicMissilex2 spells 0

#Protector's Rune
execute if score spellnumber spells matches 16 if score protectorsrune spellStats > durationSlot2 taunt run scoreboard players operation durationSlot2 taunt = protectorsrune spellStats
execute if score spellnumber spells matches 16 if score protectorsrune spellStats > durationSlot2 taunt if score ward slot2 matches 0 run scoreboard players operation marks slot2 += protectorsruneMarks spellStats
execute if score spellnumber spells matches 16 if score protectorsrune spellStats > durationSlot2 taunt if score ward slot2 matches 1.. run function ch:wardslot2
execute if score spellnumber spells matches 16 run scoreboard players set attackIsOngoingGame1 booleans 0
execute if score spellnumber spells matches 16 run execute at @n[type=armor_stand,name=slot2] run particle minecraft:block_crumble{block_state:"minecraft:emerald_ore"} ~ ~1 ~ 0.7 0.7 0.7 1 400
execute if score spellnumber spells matches 16 run tellraw @a[tag=game1] ["",{"selector":"@p[tag=p1]"}," used Protector's Rune on Slot 2!"]

#Shield
execute if score spellnumber spells matches 8 run execute if score durationSlot2 shield < shieldDuration spellStats run scoreboard players operation durationSlot2 shield = shieldDuration spellStats
execute if score spellnumber spells matches 8 run scoreboard players operation shield slot2 += shield spellStats
execute if score spellnumber spells matches 8 run scoreboard players set attackIsOngoingGame1 booleans 0
execute if score spellnumber spells matches 8 run execute at @n[type=armor_stand,name=slot2] run particle wax_off ~ ~1 ~ 0.7 0.7 0.7 0.1 400
execute if score spellnumber spells matches 8 run tellraw @a[tag=game1] ["",{"selector":"@p[tag=p1]"}," used Shield on Slot 2!"]

#Ball Lightning
execute if score spellnumber spells matches 9 if score ward slot2 matches 0 run scoreboard players operation slot2 stun += shockOrb spellStats
execute if score spellnumber spells matches 9 if score ward slot2 matches 1.. run function ch:wardslot2
execute if score spellnumber spells matches 9 run function ch:spellphasep1
execute if score spellnumber spells matches 9 run execute at @n[type=armor_stand,name=slot2] run particle flash{color:[1.000,1.000,1.000,1.00]} ~ ~1 ~ 0.9 0.9 0.9 0.1 10
execute if score spellnumber spells matches 9 run tellraw @a[tag=game1] ["",{"selector":"@p[tag=p2]"}," used Ball Lightning on Slot 2!"]

#Witches Brew
execute if score spellnumber spells matches 23 run execute if score ward slot2 matches 0 if score witchesBrewDuration spellStats > durationSlot2 speedDebuffs run scoreboard players operation durationSlot2 speedDebuffs = witchesBrewDuration spellStats
execute if score spellnumber spells matches 23 run execute if score ward slot2 matches 0 if score witchesBrewDuration spellStats > debuffDurationSlot2 atkmodifiers run scoreboard players operation debuffDurationSlot2 atkmodifiers = witchesBrewDuration spellStats
execute if score spellnumber spells matches 23 run execute if score ward slot2 matches 0 if score witchesBrewDuration spellStats > durationSlot2 poison run scoreboard players operation durationSlot2 poison = witchesBrewDuration spellStats
execute if score spellnumber spells matches 23 run execute if score ward slot2 matches 0 if score witchesBrewDuration spellStats > durationSlot2 burn run scoreboard players operation durationSlot2 burn = witchesBrewDuration spellStats
execute if score spellnumber spells matches 23 run execute if score ward slot2 matches 0 run scoreboard players operation speedDebuffSlot2 speedDebuffs += witchesBrewSpDebuff spellStats
execute if score spellnumber spells matches 23 run execute if score ward slot2 matches 0 run scoreboard players operation attackDebuffSlot2 atkmodifiers += witchesBrewDmgDebuff spellStats
execute if score spellnumber spells matches 23 run execute if score ward slot2 matches 0 run scoreboard players operation slot2Poison poison += witchesBrew spellStats
execute if score spellnumber spells matches 23 run execute if score ward slot2 matches 0 run scoreboard players operation slot2Burn burn += witchesBrewBurn spellStats
execute if score spellnumber spells matches 23 run execute if score ward slot2 matches 0 run scoreboard players operation speed slot2 -= witchesBrewSpDebuff spellStats
execute if score spellnumber spells matches 23 run execute if score ward slot2 matches 1.. run function ch:wardslot2
execute if score spellnumber spells matches 23 run function ch:spellphasep1
execute if score spellnumber spells matches 23 run tellraw @a[tag=game1] ["",{"selector":"@p[tag=p2]"}," used Witches Brew on Slot 2!"]
#Shifting Shadows Token
execute if score spellnumber spells matches -1 if score shadowsPart1 spells matches 5 if score ward slot2 matches 0 run scoreboard players set durationSlot5-2 fear 1
execute if score spellnumber spells matches -1 if score shadowsPart1 spells matches 6 if score ward slot2 matches 0 run scoreboard players set durationSlot6-2 fear 1
execute if score spellnumber spells matches -1 if score shadowsPart1 spells matches 7 if score ward slot2 matches 0 run scoreboard players set durationSlot7-2 fear 1
execute if score spellnumber spells matches -1 if score shadowsPart1 spells matches 8 if score ward slot2 matches 0 run scoreboard players set durationSlot8-2 fear 1
execute if score spellnumber spells matches -1 if score ward slot2 matches 1.. run function ch:wardslot2
execute if score spellnumber spells matches -1 run function ch:spellphasep1
execute if score spellnumber spells matches -1 run execute at @n[type=armor_stand,name=slot2] run particle trial_omen ~ ~1 ~ 0.9 0.9 0.9 0.1 400
execute if score spellnumber spells matches -1 run tellraw @a[tag=game1] ["",{"selector":"@p[tag=p2]"}," used Shifting Shadows to fear Slot 2!"]

#Shifting Shadows
execute if score spellnumber spells matches 28 run scoreboard players set shadowsPart1 spells 2
execute if score spellnumber spells matches 28 run function ch:spellgivetargetsp1
execute if score spellnumber spells matches 28 run scoreboard players set spellnumber spells -1
execute if score spellnumber spells matches 28 run execute at @n[type=armor_stand,name=slot2] run particle raid_omen ~ ~1 ~ 0.9 0.9 0.9 0.1 400
execute if score spellnumber spells matches 28 run tellraw @a[tag=game1] ["",{"selector":"@p[tag=p1]"}," used Shifting Shadows to make Slot 2 scary!"]
#fireball
execute if score spellnumber spells matches 1 run scoreboard players operation spellDmg saves = fireball spellStats
execute if score spellnumber spells matches 1 run scoreboard players operation spellDmg saves += spellbuffsp2 spells
execute if score spellnumber spells matches 1 run scoreboard players operation spellDmg saves += marks slot2
execute if score spellnumber spells matches 1 run scoreboard players operation spellDmg saves /= atkmultiplier slot2
execute if score spellnumber spells matches 1 run execute if score ward slot2 matches 0 run scoreboard players operation shield slot2 -= spellDmg saves
execute if score spellnumber spells matches 1 run execute if score ward slot2 matches 0 run scoreboard players operation slot2 hp += shield slot2
execute if score spellnumber spells matches 1 run execute if score ward slot2 matches 0 if score durationSlot2 burn < fireballDuration spellStats run scoreboard players operation durationSlot2 burn = fireballDuration spellStats
execute if score spellnumber spells matches 1 run execute if score ward slot2 matches 0 run scoreboard players operation slot2Burn burn += fireballBurn spellStats
execute if score spellnumber spells matches 1 at @e[name=slot2] run particle minecraft:flame ~ ~1 ~ 0.9 0.9 0.9 0.5 100
execute if score spellnumber spells matches 1 run execute if score ward slot2 matches 1.. run function ch:wardslot2
execute if score spellnumber spells matches 1 run scoreboard players set spellbuffsp2 spells 0
execute if score spellnumber spells matches 1 run function ch:spellphasep1
execute if score spellnumber spells matches 1 run tellraw @a[tag=game1] ["",{"selector":"@p[tag=p2]"}," used Fireball on Slot 2!"]
#meteor
execute if score spellnumber spells matches 7 run scoreboard players operation spellDmg saves = meteor spellStats
execute if score spellnumber spells matches 7 run scoreboard players operation spellDmg saves += spellbuffsp2 spells
execute if score spellnumber spells matches 7 run scoreboard players operation spellDmg saves += marks slot2
execute if score spellnumber spells matches 7 run scoreboard players operation spellDmg saves /= atkmultiplier slot2
execute if score spellnumber spells matches 7 run execute if score ward slot2 matches 0 run scoreboard players operation shield slot2 -= spellDmg saves
execute if score spellnumber spells matches 7 run execute if score ward slot2 matches 0 if score shield slot2 matches ..0 run scoreboard players operation slot2 hp += shield slot2
execute if score spellnumber spells matches 7 run execute if score ward slot2 matches 1.. run function ch:wardslot2
execute if score spellnumber spells matches 7 at @e[name=slot2] run particle minecraft:lava ~ ~1 ~ 0.9 0.9 0.9 0.5 100
execute if score spellnumber spells matches 7 at @e[name=slot1] run particle minecraft:lava ~ ~1 ~ 0.9 0.9 0.9 0.5 50
execute if score spellnumber spells matches 7 at @e[name=slot3] run particle minecraft:lava ~ ~1 ~ 0.9 0.9 0.9 0.5 50
execute if score spellnumber spells matches 7 run scoreboard players operation spellDmg saves = meteor spellStats
execute if score spellnumber spells matches 7 run scoreboard players operation spellDmg saves += spellbuffsp2 spells
execute if score spellnumber spells matches 7 run scoreboard players operation spellDmg saves /= meteorSplash spellStats
execute if score spellnumber spells matches 7 run scoreboard players operation spellDmg saves += marks slot1
execute if score spellnumber spells matches 7 run scoreboard players operation spellDmg saves /= atkmultiplier slot1
execute if score spellnumber spells matches 7 run execute if score ward slot1 matches 0 run scoreboard players operation shield slot1 -= spellDmg saves
execute if score spellnumber spells matches 7 run execute if score ward slot1 matches 0 if score shield slot1 matches ..0 run scoreboard players operation slot1 hp += shield slot1
execute if score spellnumber spells matches 7 run execute if score ward slot1 matches 1.. run function ch:wardslot1
execute if score spellnumber spells matches 7 run scoreboard players operation spellDmg saves = meteor spellStats
execute if score spellnumber spells matches 7 run scoreboard players operation spellDmg saves += spellbuffsp2 spells
execute if score spellnumber spells matches 7 run scoreboard players operation spellDmg saves /= meteorSplash spellStats
execute if score spellnumber spells matches 7 run scoreboard players operation spellDmg saves += marks slot3
execute if score spellnumber spells matches 7 run scoreboard players operation spellDmg saves /= atkmultiplier slot3
execute if score spellnumber spells matches 7 run execute if score ward slot3 matches 0 run scoreboard players operation shield slot3 -= spellDmg saves
execute if score spellnumber spells matches 7 run execute if score ward slot3 matches 0 if score shield slot3 matches ..0 run scoreboard players operation slot3 hp += shield slot3
execute if score spellnumber spells matches 7 run execute if score ward slot3 matches 1.. run function ch:wardslot3
execute if score spellnumber spells matches 7 run scoreboard players set spellbuffsp2 spells 0
execute if score spellnumber spells matches 7 run function ch:spellphasep1
execute if score spellnumber spells matches 7 run tellraw @a[tag=game1] ["",{"selector":"@p[tag=p2]"}," used Meteor on Slot 2!"]

#witchbolt
execute if score spellnumber spells matches 10 run scoreboard players operation spellDmg saves = witchbolt spellStats
execute if score spellnumber spells matches 10 run scoreboard players operation spellDmg saves += spellbuffsp2 spells
execute if score spellnumber spells matches 10 run scoreboard players operation spellDmg saves += marks slot2
execute if score spellnumber spells matches 10 run scoreboard players operation spellDmg saves /= atkmultiplier slot2
execute if score spellnumber spells matches 10 run execute if score ward slot2 matches 0 run scoreboard players operation shield slot2 -= spellDmg saves
execute if score spellnumber spells matches 10 run execute if score ward slot2 matches 0 if score shield slot2 matches ..0 run scoreboard players operation slot2 hp += shield slot2
execute if score spellnumber spells matches 10 at @e[name=slot2] run particle minecraft:enchanted_hit ~ ~1 ~ 0.9 0.9 0.9 0.5 200
execute if score spellnumber spells matches 10 run execute if score ward slot2 matches 1.. run function ch:wardslot2
execute if score spellnumber spells matches 10 run scoreboard players set spellbuffsp2 spells 0
execute if score spellnumber spells matches 10 run function ch:spellphasep1
execute if score spellnumber spells matches 10 run tellraw @a[tag=game1] ["",{"selector":"@p[tag=p2]"}," used Witch Bolt on Slot 2!"]
#ward
execute if score spellnumber spells matches 19 run scoreboard players set ward slot2 1
execute if score spellnumber spells matches 19 at @e[name=slot2] run particle minecraft:ominous_spawning ~ ~1 ~ 0.9 0.9 0.9 0.1 100
execute if score spellnumber spells matches 19 run scoreboard players set attackIsOngoingGame1 booleans 0
execute if score spellnumber spells matches 19 run tellraw @a[tag=game1] ["",{"selector":"@p[tag=p1]"}," used Ward on Slot 2!"]
#plague
execute if score spellnumber spells matches 21 if score ward slot2 matches 0 run scoreboard players operation slot2Disease disease += plague spellStats
execute if score spellnumber spells matches 21 at @e[name=slot2] run particle minecraft:trial_omen ~ ~1 ~ 0.9 0.9 0.9 0.5 100
execute if score spellnumber spells matches 21 if score ward slot2 matches 1.. run function ch:wardslot2
execute if score spellnumber spells matches 21 run function ch:spellphasep1
execute if score spellnumber spells matches 21 run tellraw @a[tag=game1] ["",{"selector":"@p[tag=p2]"}," used Plague on Slot 2!"]

#Second wind
execute if score spellnumber spells matches 22 run execute if score durationSlot2 speedBuffs < secondWindDuration spellStats run scoreboard players operation durationSlot2 speedBuffs = secondWindDuration spellStats
execute if score spellnumber spells matches 22 run scoreboard players operation speedBuffSlot2 speedBuffs += secondWindSpeed spellStats
execute if score spellnumber spells matches 22 run scoreboard players operation speed slot2 += secondWindSpeed spellStats
execute if score spellnumber spells matches 22 if score slot2bleeding booleaneffects matches 0 run scoreboard players operation slot2 hp += secondWind spellStats
execute if score spellnumber spells matches 22 if score slot2bleeding booleaneffects matches 0 run scoreboard players operation slot2 hp += spellbuffsp1 spells
execute if score spellnumber spells matches 22 at @e[name=slot2] run particle minecraft:trial_spawner_detection_ominous ~ ~1 ~ 0.9 0.9 0.9 0.5 100
execute if score spellnumber spells matches 22 run scoreboard players set attackIsOngoingGame1 booleans 0
execute if score spellnumber spells matches 22 run scoreboard players set spellbuffsp1 spells 0
execute if score spellnumber spells matches 22 run tellraw @a[tag=game1] ["",{"selector":"@p[tag=p1]"}," used Second Wind on Slot 2!"]
#fountain of youth
execute if score spellnumber spells matches 25 run execute if score disarmedslot2 booleaneffects < fountainOfYouthDuration spellStats run scoreboard players operation disarmedslot2 booleaneffects = fountainOfYouthDuration spellStats
execute if score spellnumber spells matches 25 if score slot2bleeding booleaneffects matches 0 run scoreboard players operation slot2 hp += fountainOfYouth spellStats
execute if score spellnumber spells matches 25 if score slot2bleeding booleaneffects matches 0 run scoreboard players operation slot2 hp += spellbuffsp1 spells
execute if score spellnumber spells matches 25 at @e[name=slot2] run particle minecraft:composter ~ ~1 ~ 0.9 0.9 0.9 0.5 500
execute if score spellnumber spells matches 25 run scoreboard players set attackIsOngoingGame1 booleans 0
execute if score spellnumber spells matches 25 run scoreboard players set spellbuffsp1 spells 0
execute if score spellnumber spells matches 25 run tellraw @a[tag=game1] ["",{"selector":"@p[tag=p1]"}," used Fountain of Youth on Slot 2!"]
#overclock
execute if score spellnumber spells matches 27 run execute if score buffDurationSlot2 atkmodifiers < overclockDuration spellStats run scoreboard players operation buffDurationSlot2 atkmodifiers = overclockDuration spellStats
execute if score spellnumber spells matches 27 run scoreboard players operation attackBuffSlot2 atkmodifiers += overclock spellStats
execute if score spellnumber spells matches 27 run scoreboard players operation shield slot2 -= overclockAtk spellStats
execute if score spellnumber spells matches 27 if score shield slot2 matches ..0 run scoreboard players operation slot2 hp += shield slot2
execute if score spellnumber spells matches 27 at @e[name=slot2] run particle minecraft:trial_spawner_detection ~ ~1 ~ 0.9 0.9 0.9 0.5 400
execute if score spellnumber spells matches 27 run scoreboard players set attackIsOngoingGame1 booleans 0
execute if score spellnumber spells matches 27 run tellraw @a[tag=game1] ["",{"selector":"@p[tag=p1]"}," used Overclock on Slot 2!"]

#Life Leech Token

execute if score spellnumber spells matches -2 if score slot2bleeding booleaneffects matches 0 run scoreboard players operation slot2 hp += lifeLeechHeal spellStats
execute if score spellnumber spells matches -2 if score slot2bleeding booleaneffects matches 0 run scoreboard players operation slot2 hp += spellbuffsp1 spells
execute if score spellnumber spells matches -2 run scoreboard players set attackIsOngoingGame1 booleans 0
execute if score spellnumber spells matches -2 run execute at @n[type=armor_stand,name=slot2] run particle dust{color:[0.639,0.008,0.008],scale:1} ~ ~1 ~ 0.9 0.9 0.9 0.1 400
execute if score spellnumber spells matches -2 run tellraw @a[tag=game1] ["",{"selector":"@p[tag=p1]"}," used Life Leech to heal Slot 2!"]
execute if score spellnumber spells matches -2 run scoreboard players set spellbuffsp1 spells 0

#Life Leech
execute if score spellnumber spells matches 31 run scoreboard players operation spellDmg saves = lifeLeech spellStats
execute if score spellnumber spells matches 31 run scoreboard players operation spellDmg saves += spellbuffsp2 spells
execute if score spellnumber spells matches 31 run scoreboard players operation spellDmg saves += marks slot2
execute if score spellnumber spells matches 31 run scoreboard players operation spellDmg saves /= atkmultiplier slot2
execute if score spellnumber spells matches 31 run execute if score ward slot2 matches 0 run scoreboard players operation shield slot2 -= spellDmg saves
execute if score spellnumber spells matches 31 run execute if score ward slot2 matches 0 if score shield slot2 matches ..0 run scoreboard players operation slot2 hp += shield slot2
execute if score spellnumber spells matches 31 run execute if score ward slot2 matches 1.. run function ch:wardslot2
execute if score spellnumber spells matches 31 run function ch:spellgivetargetsp1reverse
execute if score spellnumber spells matches 31 run execute at @n[type=armor_stand,name=slot2] run particle dust{color:[0.639,0.008,0.008],scale:1} ~ ~1 ~ 0.9 0.9 0.9 0.1 400
execute if score spellnumber spells matches 31 run tellraw @a[tag=game1] ["",{"selector":"@p[tag=p2]"}," used Life Leech on Slot 2!"]
execute if score spellnumber spells matches 31 run scoreboard players set spellnumber spells -2

#Decimate
execute if score spellnumber spells matches 32 run scoreboard players operation spellDmg saves = decimate spellStats
execute if score spellnumber spells matches 32 run scoreboard players operation spellDmg saves += spellbuffsp2 spells
execute if score spellnumber spells matches 32 run scoreboard players operation spellDmg saves += marks slot2
execute if score spellnumber spells matches 32 run scoreboard players operation spellDmg saves /= atkmultiplier slot2
execute if score spellnumber spells matches 32 run execute if score ward slot2 matches 0 if score character# slot2 matches ..-1 run scoreboard players operation shield slot2 -= spellDmg saves
execute if score spellnumber spells matches 32 run execute if score ward slot2 matches 0 if score character# slot2 matches ..-1 if score shield slot2 matches ..0 run scoreboard players operation slot2 hp += shield slot2
execute if score spellnumber spells matches 32 run execute if score ward slot2 matches 1.. if score character# slot2 matches ..-1 run function ch:wardslot2
execute if score spellnumber spells matches 32 run execute at @n[type=armor_stand,name=slot2] run particle block{block_state:"minecraft:dripstone_block"} ~ ~ ~ 0.9 2 0.9 1 250 normal
execute if score spellnumber spells matches 32 run tellraw @a[tag=game1] ["",{"selector":"@p[tag=p2]"}," used Decimate on Slot 2!"]
execute if score spellnumber spells matches 32 run scoreboard players set spellbuffsp2 spells 0
execute if score spellnumber spells matches 32 run function ch:spellphasep1

#cannibalize token

execute if score spellnumber spells matches -3 if score slot2bleeding booleaneffects matches 0 run scoreboard players operation slot2 hp += cannibalize spellStats
execute if score spellnumber spells matches -3 if score slot2bleeding booleaneffects matches 0 run scoreboard players operation slot2 hp += spellbuffsp1 spells
execute if score spellnumber spells matches -3 run scoreboard players set attackIsOngoingGame1 booleans 0
execute if score spellnumber spells matches -3 run execute at @n[type=armor_stand,name=slot2] run particle dust{color:[0.639,0.008,0.008],scale:1} ~ ~1 ~ 0.9 0.9 0.9 0.1 400
execute if score spellnumber spells matches -3 run tellraw @a[tag=game1] ["",{"selector":"@p[tag=p1]"}," used Cannibalize to heal Slot 2!"]
execute if score spellnumber spells matches -3 run scoreboard players set spellbuffsp1 spells 0

#cannibalize
execute if score spellnumber spells matches 34 run scoreboard players operation slot2 hp -= cannibalize spellStats
execute if score spellnumber spells matches 34 run scoreboard players operation slot2bleeding booleaneffects += cannibalizeDuration spellStats
execute if score spellnumber spells matches 34 run function ch:spellgivetargetsp2reverse
execute if score spellnumber spells matches 34 run execute at @n[type=armor_stand,name=slot2] run particle dust{color:[0.639,0.008,0.008],scale:1} ~ ~1 ~ 0.9 0.9 0.9 0.1 400
execute if score spellnumber spells matches 34 run tellraw @a[tag=game1] ["",{"selector":"@p[tag=p1]"}," used Cannibalize on Slot 2!"]
execute if score spellnumber spells matches 34 run scoreboard players set spellnumber spells -3

#Dark Ritual
execute if score spellnumber spells matches 40 run execute if score buffDurationSlot2 atkmodifiers < darkpowerDuration spellStats run scoreboard players operation buffDurationSlot2 atkmodifiers = darkpowerDuration spellStats
execute if score spellnumber spells matches 40 run scoreboard players operation attackBuffSlot2 atkmodifiers += darkpower spellStats
execute if score spellnumber spells matches 40 run scoreboard players operation attackBuffSlot2 atkmodifiers += darkritual player1spells
execute if score spellnumber spells matches 40 at @e[name=slot2] run particle minecraft:trial_omen ~ ~1 ~ 0.9 0.9 0.9 0.5 40
execute if score spellnumber spells matches 40 run scoreboard players set attackIsOngoingGame1 booleans 0
execute if score spellnumber spells matches 40 run tellraw @a[tag=game1] ["",{"selector":"@p[tag=p1]"}," used Dark Ritual on Slot 2!"]

#Monkey's Paw
execute if score spellnumber spells matches 43 run scoreboard players operation invincibleSlot2 booleaneffects = monkeyspaw spellStats
execute if score spellnumber spells matches 43 run scoreboard players operation savehp2 saves = slot2 hp
execute if score spellnumber spells matches 43 run scoreboard players set curse slot2 5
execute if score spellnumber spells matches 43 run scoreboard players set curseStacks slot2 0
execute if score spellnumber spells matches 43 run scoreboard players operation curseDuration slot2 = monkeyspaw spellStats
execute if score spellnumber spells matches 43 at @e[name=slot2] run particle minecraft:raid_omen ~ ~1 ~ 0.9 0.9 0.9 0.00000001 200
execute if score spellnumber spells matches 43 run playsound minecraft:ambient.cave player @a[tag=game1] ~ ~ ~ 500 2
execute if score spellnumber spells matches 43 run scoreboard players set attackIsOngoingGame1 booleans 0
execute if score spellnumber spells matches 43 run tellraw @a[tag=game1] ["",{"selector":"@p[tag=p1]"}," used Monkey's Paw on Slot 2!"]

#Slimed!
execute if score spellnumber spells matches 35 if score ward slot2 matches 0 run scoreboard players operation disarmedslot2 booleaneffects += slimed spellStats
execute if score spellnumber spells matches 35 if score ward slot2 matches 1.. run function ch:wardslot2
execute if score spellnumber spells matches 35 run function ch:spellphasep1
execute if score spellnumber spells matches 35 run execute at @n[type=armor_stand,name=slot2] run particle minecraft:item_slime ~ ~1 ~ 0.7 0.7 0.7 0.3 150
execute if score spellnumber spells matches 35 run tellraw @a[tag=game1] ["",{"selector":"@p[tag=p2]"}," used Slimed! on Slot 2!"]

#Vampire Mark
execute if score spellnumber spells matches 36 run scoreboard players operation lifesteal slot2 = vampiremark spellStats
execute if score spellnumber spells matches 36 run execute at @n[type=armor_stand,name=slot2] run particle minecraft:crimson_spore ~ ~1 ~ 0.6 0.4 0.6 0 200
execute if score spellnumber spells matches 36 run tellraw @a[tag=game1] ["",{"selector":"@p[tag=p1]"}," used Vampire Mark on Slot 2!"]
execute if score spellnumber spells matches 36 run scoreboard players set attackIsOngoingGame1 booleans 0

#Butchering
execute if score spellnumber spells matches 37 run scoreboard players operation spellDmg saves = butchering spellStats
execute if score spellnumber spells matches 37 run scoreboard players operation spellDmg saves += spellbuffsp1 spells
execute if score spellnumber spells matches 37 run scoreboard players operation spellDmg saves += marks slot2
execute if score spellnumber spells matches 37 run scoreboard players operation spellDmg saves /= atkmultiplier slot2
execute if score spellnumber spells matches 37 run execute if score ward slot2 matches 0 run scoreboard players operation shield slot2 -= spellDmg saves
execute if score spellnumber spells matches 37 run execute if score ward slot2 matches 0 if score shield slot2 matches ..0 run scoreboard players operation slot2 hp += shield slot2
execute if score spellnumber spells matches 37 at @e[name=slot2] run particle minecraft:damage_indicator ~ ~1 ~ 0.6 0.6 0.6 0 100
execute if score spellnumber spells matches 37 run execute if score ward slot2 matches 1.. run function ch:wardslot2
execute if score spellnumber spells matches 37 run scoreboard players set spellbuffsp1 spells 0
execute if score spellnumber spells matches 37 run function ch:spellphasep1
execute if score spellnumber spells matches 37 run tellraw @a[tag=game1] ["",{"selector":"@p[tag=p2]"}," used Butchering on Slot 2!"]

#Will O' Wisp
execute if score spellnumber spells matches 38 run execute if score ward slot2 matches 0 if score durationSlot2 burn < willowispDuration spellStats run scoreboard players operation durationSlot2 burn = willowispDuration spellStats
execute if score spellnumber spells matches 38 run execute if score ward slot2 matches 0 run scoreboard players operation slot2Burn burn += willowisp spellStats
execute if score spellnumber spells matches 38 run scoreboard players operation spellDmg saves = slot2Burn burn
execute if score spellnumber spells matches 38 run scoreboard players operation spellDmg saves += spellbuffsp1 spells
execute if score spellnumber spells matches 38 run scoreboard players operation spellDmg saves += marks slot2
execute if score spellnumber spells matches 38 run scoreboard players operation spellDmg saves /= atkmultiplier slot2
execute if score spellnumber spells matches 38 run execute if score ward slot2 matches 0 run scoreboard players operation shield slot2 -= spellDmg saves
execute if score spellnumber spells matches 38 run execute if score ward slot2 matches 0 if score shield slot2 matches ..0 run scoreboard players operation slot2 hp += shield slot2
execute if score spellnumber spells matches 38 at @e[name=slot2] run particle minecraft:glow ~ ~1 ~ 0.7 0.7 0.7 0.1 100
execute if score spellnumber spells matches 38 at @e[name=slot2] run particle minecraft:soul_fire_flame ~ ~1 ~ 0.6 0.6 0.6 0.1 100
execute if score spellnumber spells matches 38 run execute if score ward slot2 matches 1.. run function ch:wardslot2
execute if score spellnumber spells matches 38 run scoreboard players set spellbuffsp1 spells 0
execute if score spellnumber spells matches 38 run function ch:spellphasep1
execute if score spellnumber spells matches 38 run tellraw @a[tag=game1] ["",{"selector":"@p[tag=p1]"}," used Will O' Wisp on Slot 2!"]

#Curse of Bats
execute if score spellnumber spells matches 42 if score ward slot2 matches ..0 unless score curse slot2 matches 5 unless score curse slot2 matches 6 run scoreboard players set curseStacks slot2 0
execute if score spellnumber spells matches 42 if score ward slot2 matches ..0 unless score curse slot2 matches 5 unless score curse slot2 matches 6 run scoreboard players set curseDuration slot2 -1
execute if score spellnumber spells matches 42 if score ward slot2 matches ..0 unless score curse slot2 matches 5 run scoreboard players set curse slot2 6
execute if score spellnumber spells matches 42 if score ward slot2 matches ..0 unless score curse slot2 matches 5 if score curse slot2 matches 6 run scoreboard players add curseStacks slot2 1
execute if score spellnumber spells matches 42 run execute at @n[name=slot2] run particle shriek{delay:0} ~ ~1 ~ 0.3 0.5 0.3 0.1 200 normal
execute if score spellnumber spells matches 42 run tellraw @a[tag=game1] ["",{"selector":"@p[tag=p1]"}," used Curse of Bats on Slot 2!"]
execute if score spellnumber spells matches 42 if score ward slot2 matches 1.. run function ch:wardslot2
execute if score spellnumber spells matches 42 run function ch:spellphasep1

#This goes at the bottom
execute if score shield slot1 matches ..0 run scoreboard players set shield slot1 0
execute if score shield slot2 matches ..0 run scoreboard players set shield slot2 0
execute if score shield slot3 matches ..0 run scoreboard players set shield slot3 0
execute if score shield slot4 matches ..0 run scoreboard players set shield slot4 0
#Death
execute if score game1Ongoing ongoinggames matches 1 if score invincibleSlot1 booleaneffects matches 0 run execute if score slot1 hp matches ..0 run execute unless score speed slot1 matches ..-900000 run function ch:death1
execute if score game1Ongoing ongoinggames matches 1 if score invincibleSlot2 booleaneffects matches 0 run execute if score slot2 hp matches ..0 run execute unless score speed slot2 matches ..-900000 run function ch:death2
execute if score game1Ongoing ongoinggames matches 1 if score invincibleSlot3 booleaneffects matches 0 run execute if score slot3 hp matches ..0 run execute unless score speed slot3 matches ..-900000 run function ch:death3
execute if score game1Ongoing ongoinggames matches 1 if score invincibleSlot4 booleaneffects matches 0 unless score character# slot4 matches 0 run execute if score slot4 hp matches ..0 run execute unless score speed slot4 matches ..-900000 run function ch:death4
execute if score game1Ongoing ongoinggames matches 1 if score invincibleSlot5 booleaneffects matches 0 run execute if score slot5 hp matches ..0 run execute unless score speed slot5 matches ..-900000 run function ch:death5
execute if score game1Ongoing ongoinggames matches 1 if score invincibleSlot6 booleaneffects matches 0 run execute if score slot6 hp matches ..0 run execute unless score speed slot6 matches ..-900000 run function ch:death6
execute if score game1Ongoing ongoinggames matches 1 if score invincibleSlot7 booleaneffects matches 0 run execute if score slot7 hp matches ..0 run execute unless score speed slot7 matches ..-900000 run function ch:death7
execute if score game1Ongoing ongoinggames matches 1 if score invincibleSlot8 booleaneffects matches 0 unless score character# slot8 matches 0 run execute if score slot8 hp matches ..0 run execute unless score speed slot8 matches ..-900000 run function ch:death8