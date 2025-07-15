effect clear @a[tag=game2] weakness
clear @a[tag=game2]

#Dragonforge
execute if score spellnumber3 spells matches 26 run execute if score durationSlot18 shield < dragonforgeDuration spellStats run scoreboard players operation durationSlot18 shield = dragonforgeDuration spellStats
execute if score spellnumber3 spells matches 26 run scoreboard players operation shield slot18 += dragonforge spellStats
execute if score spellnumber3 spells matches 26 run execute if score alivep5 deaths matches 1 run scoreboard players operation shield slot18 += dragonforge spellStats
execute if score spellnumber3 spells matches 26 run scoreboard players set attackIsOngoingGame2 booleans 0
execute if score spellnumber3 spells matches 26 run execute if score alivep5 deaths matches 1 run execute at @n[type=armor_stand,name=slot18] run particle dragon_breath ~ ~1 ~ 0.9 0.9 0.9 0.1 400
execute if score spellnumber3 spells matches 26 run execute if score alivep5 deaths matches 2.. run execute at @n[type=armor_stand,name=slot18] run particle dragon_breath ~ ~1 ~ 0.9 0.9 0.9 0.1 100
execute if score spellnumber3 spells matches 26 run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p5]"}," used Dragonforge on Slot 18!"]

#Embiggen
execute if score spellnumber3 spells matches 13 run execute if score buffDurationSlot18 atkmodifiers < embiggenDuration spellStats run scoreboard players operation buffDurationSlot18 atkmodifiers = embiggenDuration spellStats
execute if score spellnumber3 spells matches 13 run scoreboard players operation attackBuffSlot18 atkmodifiers += embiggenBuff spellStats
execute if score spellnumber3 spells matches 13 run execute if score durationSlot18 shield < embiggenDuration spellStats run scoreboard players operation durationSlot18 shield = embiggenDuration spellStats
execute if score spellnumber3 spells matches 13 run scoreboard players operation shield slot18 += embiggen spellStats
execute if score spellnumber3 spells matches 13 run scoreboard players set attackIsOngoingGame2 booleans 0
execute if score spellnumber3 spells matches 13 run execute at @n[type=armor_stand,name=slot18] run particle minecraft:egg_crack ~ ~1 ~ 0.9 0.9 0.9 0.1 100
execute if score spellnumber3 spells matches 26 run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p5]"}," used Embiggen on Slot 18!"]

#Embrittle
execute if score spellnumber3 spells matches 12 if score ward slot18 matches 0 run execute if score debuffDurationSlot18 atkmodifiers < embrittleDuration spellStats run scoreboard players operation debuffDurationSlot18 atkmodifiers = embrittleDuration spellStats
execute if score spellnumber3 spells matches 12 if score ward slot18 matches 0 run scoreboard players operation attackDebuffSlot18 atkmodifiers += embrittle spellStats
execute if score spellnumber3 spells matches 12 if score ward slot18 matches 1.. run function ch:wardslot18
execute if score spellnumber3 spells matches 12 run function ch:spellphasep5
execute if score spellnumber3 spells matches 12 run execute at @n[type=armor_stand,name=slot18] run particle minecraft:block_crumble{block_state:"minecraft:ice"} ~ ~1 ~ 0.9 0.9 0.9 0.1 200
execute if score spellnumber3 spells matches 12 run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p6]"}," used Embrittle on Slot 18!"]
#Evil Eye
execute if score spellnumber3 spells matches 15 if score ward slot18 matches 0 run scoreboard players operation marks slot18 += evilEye spellStats
execute if score spellnumber3 spells matches 15 if score ward slot18 matches 1.. run function ch:wardslot18
execute if score spellnumber3 spells matches 15 run function ch:spellphasep5
execute if score spellnumber3 spells matches 15 run execute at @n[type=armor_stand,name=slot18] run particle minecraft:effect ~ ~1 ~ 0.7 0.7 0.7 0.1 200
execute if score spellnumber3 spells matches 15 run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p6]"}," used Evil Eye on Slot 18!"]

#Frostbolt
execute if score spellnumber3 spells matches 6 run scoreboard players operation spelldmg32 saves = frostbolt spellStats
execute if score spellnumber3 spells matches 6 run scoreboard players operation spelldmg32 saves += spellbuffsp6 spells
execute if score spellnumber3 spells matches 6 run scoreboard players operation spelldmg32 saves += marks slot18
execute if score spellnumber3 spells matches 6 run scoreboard players operation spelldmg32 saves /= atkmultiplier slot18
execute if score spellnumber3 spells matches 6 run execute if score ward slot18 matches 0 run scoreboard players operation shield slot18 -= spelldmg32 saves
execute if score spellnumber3 spells matches 6 run execute if score ward slot18 matches 0 if score frostboltDuration spellStats > durationSlot18 speedDebuffs run scoreboard players operation durationSlot18 speedDebuffs = frostboltDuration spellStats
execute if score spellnumber3 spells matches 6 run execute if score ward slot18 matches 0 if score frostboltDuration spellStats > debuffDurationSlot18 atkmodifiers run scoreboard players operation debuffDurationSlot18 atkmodifiers = frostboltDuration spellStats
execute if score spellnumber3 spells matches 6 run execute if score ward slot18 matches 0 run scoreboard players operation speedDebuffSlot18 speedDebuffs += frostboltSpDebuff spellStats
execute if score spellnumber3 spells matches 6 run execute if score ward slot18 matches 0 run scoreboard players operation attackDebuffSlot18 atkmodifiers += frostboltDmgDebuff spellStats
execute if score spellnumber3 spells matches 6 run execute if score ward slot18 matches 0 run scoreboard players operation speed slot18 -= frostboltSpDebuff spellStats
execute if score spellnumber3 spells matches 6 run execute if score ward slot18 matches 0 if score shield slot18 matches ..0 run scoreboard players operation slot18 hp += shield slot18
execute if score spellnumber3 spells matches 6 run execute if score ward slot18 matches 1.. run function ch:wardslot18
execute if score spellnumber3 spells matches 6 run scoreboard players set spellbuffsp6 spells 0
execute if score spellnumber3 spells matches 6 run function ch:spellphasep5
execute if score spellnumber3 spells matches 6 run execute at @n[type=armor_stand,name=slot18] run particle minecraft:item_snowball ~ ~1 ~ 0.7 0.7 0.7 0.1 200
execute if score spellnumber3 spells matches 6 run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p6]"}," used Frostbolt on Slot 18!"]

#Heal
execute if score spellnumber3 spells matches 2 run scoreboard players operation spellHeal saves = heal spellStats
execute if score spellnumber3 spells matches 2 run scoreboard players operation spellHeal saves += spellbuffsp5 spells
execute if score spellnumber3 spells matches 2 run scoreboard players operation slot18 hp += spellHeal saves
execute if score spellnumber3 spells matches 2 run function ch:cleanseslot18
execute if score spellnumber3 spells matches 2 run scoreboard players set spellbuffsp5 spells 0
execute if score spellnumber3 spells matches 2 run scoreboard players set attackIsOngoingGame2 booleans 0
execute if score spellnumber3 spells matches 2 run execute at @n[type=armor_stand,name=slot18] run particle minecraft:composter ~ ~1 ~ 0.9 0.9 0.9 0.5 100
execute if score spellnumber3 spells matches 2 run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p5]"}," used Heal on Slot 18!"]

#Magic Missile
execute if score spellnumber3 spells matches 4 run scoreboard players add magicMissilex2 spells 1
execute if score spellnumber3 spells matches 4 run scoreboard players operation spelldmg32 saves = magicMissile spellStats
execute if score spellnumber3 spells matches 4 run scoreboard players operation spelldmg32 saves += spellbuffsp6 spells
execute if score spellnumber3 spells matches 4 run scoreboard players operation spelldmg32 saves += marks slot18
execute if score spellnumber3 spells matches 4 run scoreboard players operation spelldmg32 saves /= atkmultiplier slot18
execute if score spellnumber3 spells matches 4 run execute if score ward slot18 matches 0 run scoreboard players operation shield slot18 -= spelldmg32 saves
execute if score spellnumber3 spells matches 4 run execute if score ward slot18 matches 0 if score shield slot18 matches ..0 run scoreboard players operation slot18 hp += shield slot18
execute if score spellnumber3 spells matches 4 run execute if score ward slot18 matches 1.. run function ch:wardslot18
execute if score spellnumber3 spells matches 4 run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p6]"}," smited Slot 18 with Magic Missle!"]
execute if score spellnumber3 spells matches 4 run execute at @n[type=armor_stand,name=slot18] run particle minecraft:enchanted_hit ~ ~1 ~ 0.7 0.7 0.7 0.5 300
execute if score spellnumber3 spells matches 4 run execute if score magicMissilex2 spells matches 1 run function ch:spellgivetargetsp6
execute if score spellnumber3 spells matches 4 run execute if score magicMissilex2 spells matches 2 run scoreboard players set spellbuffsp6 spells 0
execute if score spellnumber3 spells matches 4 run execute if score magicMissilex2 spells matches 2 run clear @a[tag=p6] target
execute if score spellnumber3 spells matches 4 run execute if score magicMissilex2 spells matches 2 run function ch:spellphasep5
execute if score spellnumber3 spells matches 4 run execute if score magicMissilex2 spells matches 2 run scoreboard players set magicMissilex2 spells 0

#Protector's Rune
execute if score spellnumber3 spells matches 16 if score protectorsrune spellStats > durationSlot18 taunt run scoreboard players operation durationSlot18 taunt = protectorsrune spellStats
execute if score spellnumber3 spells matches 16 if score protectorsrune spellStats > durationSlot18 taunt if score ward slot18 matches 0 run scoreboard players operation marks slot18 += protectorsruneMarks spellStats
execute if score spellnumber3 spells matches 16 if score protectorsrune spellStats > durationSlot18 taunt if score ward slot18 matches 1.. run function ch:wardslot18
execute if score spellnumber3 spells matches 16 run scoreboard players set attackIsOngoingGame2 booleans 0
execute if score spellnumber3 spells matches 16 run execute at @n[type=armor_stand,name=slot18] run particle minecraft:block_crumble{block_state:"minecraft:emerald_ore"} ~ ~1 ~ 0.7 0.7 0.7 1 400
execute if score spellnumber3 spells matches 16 run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p5]"}," used Protector's Rune on Slot 18!"]

#Shield
execute if score spellnumber3 spells matches 8 run execute if score durationSlot18 shield < shieldDuration spellStats run scoreboard players operation durationSlot18 shield = shieldDuration spellStats
execute if score spellnumber3 spells matches 8 run scoreboard players operation shield slot18 += shield spellStats
execute if score spellnumber3 spells matches 8 run scoreboard players set attackIsOngoingGame2 booleans 0
execute if score spellnumber3 spells matches 8 run execute at @n[type=armor_stand,name=slot18] run particle wax_off ~ ~1 ~ 0.7 0.7 0.7 0.1 400
execute if score spellnumber3 spells matches 8 run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p5]"}," used Shield on Slot 18!"]

#Ball Lightning
execute if score spellnumber3 spells matches 9 if score ward slot18 matches 0 run scoreboard players operation slot18 stun += shockOrb spellStats
execute if score spellnumber3 spells matches 9 if score ward slot18 matches 1.. run function ch:wardslot18
execute if score spellnumber3 spells matches 9 run function ch:spellphasep5
execute if score spellnumber3 spells matches 9 run execute at @n[type=armor_stand,name=slot18] run particle flash ~ ~1 ~ 0.9 0.9 0.9 0.1 10
execute if score spellnumber3 spells matches 9 run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p6]"}," used Ball Lightning on Slot 18!"]

#Witches Brew
execute if score spellnumber3 spells matches 23 run execute if score ward slot18 matches 0 if score witchesBrewDuration spellStats > durationSlot18 speedDebuffs run scoreboard players operation durationSlot18 speedDebuffs = witchesBrewDuration spellStats
execute if score spellnumber3 spells matches 23 run execute if score ward slot18 matches 0 if score witchesBrewDuration spellStats > debuffDurationSlot18 atkmodifiers run scoreboard players operation debuffDurationSlot18 atkmodifiers = witchesBrewDuration spellStats
execute if score spellnumber3 spells matches 23 run execute if score ward slot18 matches 0 if score witchesBrewDuration spellStats > durationSlot18 poison run scoreboard players operation durationSlot18 poison = witchesBrewDuration spellStats
execute if score spellnumber3 spells matches 23 run execute if score ward slot18 matches 0 if score witchesBrewDuration spellStats > durationSlot18 burn run scoreboard players operation durationSlot18 burn = witchesBrewDuration spellStats
execute if score spellnumber3 spells matches 23 run execute if score ward slot18 matches 0 run scoreboard players operation speedDebuffSlot18 speedDebuffs += witchesBrewSpDebuff spellStats
execute if score spellnumber3 spells matches 23 run execute if score ward slot18 matches 0 run scoreboard players operation attackDebuffSlot18 atkmodifiers += witchesBrewDmgDebuff spellStats
execute if score spellnumber3 spells matches 23 run execute if score ward slot18 matches 0 run scoreboard players operation slot18Poison poison += witchesBrew spellStats
execute if score spellnumber3 spells matches 23 run execute if score ward slot18 matches 0 run scoreboard players operation slot18Burn burn += witchesBrewBurn spellStats
execute if score spellnumber3 spells matches 23 run execute if score ward slot18 matches 0 run scoreboard players operation speed slot18 -= witchesBrewSpDebuff spellStats
execute if score spellnumber3 spells matches 23 run execute if score ward slot18 matches 1.. run function ch:wardslot18
execute if score spellnumber3 spells matches 23 run function ch:spellphasep5
execute if score spellnumber3 spells matches 23 run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p6]"}," used Witches Brew on Slot 18!"]
#Shifting Shadows Token
execute if score spellnumber3 spells matches -1 if score shadowsPart1 spells matches 5 if score ward slot18 matches 0 run scoreboard players set durationSlot21-18 fear 1
execute if score spellnumber3 spells matches -1 if score shadowsPart1 spells matches 6 if score ward slot18 matches 0 run scoreboard players set durationSlot22-18 fear 1
execute if score spellnumber3 spells matches -1 if score shadowsPart1 spells matches 7 if score ward slot18 matches 0 run scoreboard players set durationSlot23-18 fear 1
execute if score spellnumber3 spells matches -1 if score shadowsPart1 spells matches 8 if score ward slot18 matches 0 run scoreboard players set durationSlot24-18 fear 1
execute if score spellnumber3 spells matches -1 if score ward slot18 matches 1.. run function ch:wardslot18
execute if score spellnumber3 spells matches -1 run function ch:spellphasep5
execute if score spellnumber3 spells matches -1 run execute at @n[type=armor_stand,name=slot18] run particle trial_omen ~ ~1 ~ 0.9 0.9 0.9 0.1 400
execute if score spellnumber3 spells matches -1 run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p6]"}," used Shifting Shadows to fear Slot 18!"]

#Shifting Shadows
execute if score spellnumber3 spells matches 28 run scoreboard players set shadowsPart1 spells 2
execute if score spellnumber3 spells matches 28 run function ch:spellgivetargetsp5
execute if score spellnumber3 spells matches 28 run scoreboard players set spellnumber3 spells -1
execute if score spellnumber3 spells matches 28 run execute at @n[type=armor_stand,name=slot18] run particle raid_omen ~ ~1 ~ 0.9 0.9 0.9 0.1 400
execute if score spellnumber3 spells matches 28 run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p5]"}," used Shifting Shadows to make Slot 18 scary!"]
#fireball
execute if score spellnumber3 spells matches 1 run scoreboard players operation spelldmg32 saves = fireball spellStats
execute if score spellnumber3 spells matches 1 run scoreboard players operation spelldmg32 saves += spellbuffsp6 spells
execute if score spellnumber3 spells matches 1 run scoreboard players operation spelldmg32 saves += marks slot18
execute if score spellnumber3 spells matches 1 run scoreboard players operation spelldmg32 saves /= atkmultiplier slot18
execute if score spellnumber3 spells matches 1 run execute if score ward slot18 matches 0 run scoreboard players operation shield slot18 -= spelldmg32 saves
execute if score spellnumber3 spells matches 1 run execute if score ward slot18 matches 0 run scoreboard players operation slot18 hp += shield slot18
execute if score spellnumber3 spells matches 1 run execute if score ward slot18 matches 0 if score durationSlot18 burn < fireballDuration spellStats run scoreboard players operation durationSlot18 burn = fireballDuration spellStats
execute if score spellnumber3 spells matches 1 run execute if score ward slot18 matches 0 run scoreboard players operation slot18Burn burn += fireballBurn spellStats
execute if score spellnumber3 spells matches 1 at @e[name=slot18] run particle minecraft:flame ~ ~1 ~ 0.9 0.9 0.9 0.5 100
execute if score spellnumber3 spells matches 1 run execute if score ward slot18 matches 1.. run function ch:wardslot18
execute if score spellnumber3 spells matches 1 run scoreboard players set spellbuffsp6 spells 0
execute if score spellnumber3 spells matches 1 run function ch:spellphasep5
execute if score spellnumber3 spells matches 1 run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p6]"}," used Fireball on Slot 18!"]
#meteor
execute if score spellnumber3 spells matches 7 run scoreboard players operation spelldmg32 saves = meteor spellStats
execute if score spellnumber3 spells matches 7 run scoreboard players operation spelldmg32 saves += spellbuffsp6 spells
execute if score spellnumber3 spells matches 7 run scoreboard players operation spelldmg32 saves += marks slot18
execute if score spellnumber3 spells matches 7 run scoreboard players operation spelldmg32 saves /= atkmultiplier slot18
execute if score spellnumber3 spells matches 7 run execute if score ward slot18 matches 0 run scoreboard players operation shield slot18 -= spelldmg32 saves
execute if score spellnumber3 spells matches 7 run execute if score ward slot18 matches 0 if score shield slot18 matches ..0 run scoreboard players operation slot18 hp += shield slot18
execute if score spellnumber3 spells matches 7 run execute if score ward slot18 matches 1.. run function ch:wardslot18
execute if score spellnumber3 spells matches 7 at @e[name=slot18] run particle minecraft:lava ~ ~1 ~ 0.9 0.9 0.9 0.5 100
execute if score spellnumber3 spells matches 7 at @e[name=slot17] run particle minecraft:lava ~ ~1 ~ 0.9 0.9 0.9 0.5 50
execute if score spellnumber3 spells matches 7 at @e[name=slot19] run particle minecraft:lava ~ ~1 ~ 0.9 0.9 0.9 0.5 50
execute if score spellnumber3 spells matches 7 run scoreboard players operation spelldmg32 saves = meteor spellStats
execute if score spellnumber3 spells matches 7 run scoreboard players operation spelldmg32 saves += spellbuffsp6 spells
execute if score spellnumber3 spells matches 7 run scoreboard players operation spelldmg32 saves /= meteorSplash spellStats
execute if score spellnumber3 spells matches 7 run scoreboard players operation spelldmg32 saves += marks slot17
execute if score spellnumber3 spells matches 7 run scoreboard players operation spelldmg32 saves /= atkmultiplier slot17
execute if score spellnumber3 spells matches 7 run execute if score ward slot17 matches 0 run scoreboard players operation shield slot17 -= spelldmg32 saves
execute if score spellnumber3 spells matches 7 run execute if score ward slot17 matches 0 if score shield slot17 matches ..0 run scoreboard players operation slot17 hp += shield slot17
execute if score spellnumber3 spells matches 7 run execute if score ward slot17 matches 1.. run function ch:wardslot17
execute if score spellnumber3 spells matches 7 run scoreboard players operation spelldmg32 saves = meteor spellStats
execute if score spellnumber3 spells matches 7 run scoreboard players operation spelldmg32 saves += spellbuffsp6 spells
execute if score spellnumber3 spells matches 7 run scoreboard players operation spelldmg32 saves /= meteorSplash spellStats
execute if score spellnumber3 spells matches 7 run scoreboard players operation spelldmg32 saves += marks slot19
execute if score spellnumber3 spells matches 7 run scoreboard players operation spelldmg32 saves /= atkmultiplier slot19
execute if score spellnumber3 spells matches 7 run execute if score ward slot19 matches 0 run scoreboard players operation shield slot19 -= spelldmg32 saves
execute if score spellnumber3 spells matches 7 run execute if score ward slot19 matches 0 if score shield slot19 matches ..0 run scoreboard players operation slot19 hp += shield slot19
execute if score spellnumber3 spells matches 7 run execute if score ward slot19 matches 1.. run function ch:wardslot19
execute if score spellnumber3 spells matches 7 run scoreboard players set spellbuffsp6 spells 0
execute if score spellnumber3 spells matches 7 run function ch:spellphasep5
execute if score spellnumber3 spells matches 7 run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p6]"}," used Meteor on Slot 18!"]

#witchbolt
execute if score spellnumber3 spells matches 10 run scoreboard players operation spelldmg32 saves = witchbolt spellStats
execute if score spellnumber3 spells matches 10 run scoreboard players operation spelldmg32 saves += spellbuffsp6 spells
execute if score spellnumber3 spells matches 10 run scoreboard players operation spelldmg32 saves += marks slot18
execute if score spellnumber3 spells matches 10 run scoreboard players operation spelldmg32 saves /= atkmultiplier slot18
execute if score spellnumber3 spells matches 10 run execute if score ward slot18 matches 0 run scoreboard players operation shield slot18 -= spelldmg32 saves
execute if score spellnumber3 spells matches 10 run execute if score ward slot18 matches 0 if score shield slot18 matches ..0 run scoreboard players operation slot18 hp += shield slot18
execute if score spellnumber3 spells matches 10 at @e[name=slot18] run particle minecraft:enchanted_hit ~ ~1 ~ 0.9 0.9 0.9 0.5 200
execute if score spellnumber3 spells matches 10 run execute if score ward slot18 matches 1.. run function ch:wardslot18
execute if score spellnumber3 spells matches 10 run scoreboard players set spellbuffsp6 spells 0
execute if score spellnumber3 spells matches 10 run function ch:spellphasep5
execute if score spellnumber3 spells matches 10 run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p6]"}," used Witch Bolt on Slot 18!"]
#ward
execute if score spellnumber3 spells matches 19 run scoreboard players set ward slot18 1
execute if score spellnumber3 spells matches 19 at @e[name=slot18] run particle minecraft:ominous_spawning ~ ~1 ~ 0.9 0.9 0.9 0.1 100
execute if score spellnumber3 spells matches 19 run scoreboard players set attackIsOngoingGame2 booleans 0
execute if score spellnumber3 spells matches 19 run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p5]"}," used Ward on Slot 18!"]
#plague
execute if score spellnumber3 spells matches 21 if score ward slot18 matches 0 run scoreboard players operation slot18Disease disease += plague spellStats
execute if score spellnumber3 spells matches 21 at @e[name=slot18] run particle minecraft:trial_omen ~ ~1 ~ 0.9 0.9 0.9 0.5 100
execute if score spellnumber3 spells matches 21 if score ward slot18 matches 1.. run function ch:wardslot18
execute if score spellnumber3 spells matches 21 run function ch:spellphasep5
execute if score spellnumber3 spells matches 21 run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p6]"}," used Plague on Slot 18!"]

#Second wind
execute if score spellnumber3 spells matches 22 run execute if score durationSlot18 speedBuffs < secondWindDuration spellStats run scoreboard players operation durationSlot18 speedBuffs = secondWindDuration spellStats
execute if score spellnumber3 spells matches 22 run scoreboard players operation speedBuffSlot18 speedBuffs += secondWindSpeed spellStats
execute if score spellnumber3 spells matches 22 run scoreboard players operation speed slot18 += secondWindSpeed spellStats
execute if score spellnumber3 spells matches 22 if score slot18bleeding booleaneffects matches 0 run scoreboard players operation slot18 hp += secondWind spellStats
execute if score spellnumber3 spells matches 22 if score slot18bleeding booleaneffects matches 0 run scoreboard players operation slot18 hp += spellbuffsp5 spells
execute if score spellnumber3 spells matches 22 at @e[name=slot18] run particle minecraft:trial_spawner_detection_ominous ~ ~1 ~ 0.9 0.9 0.9 0.5 100
execute if score spellnumber3 spells matches 22 run scoreboard players set attackIsOngoingGame2 booleans 0
execute if score spellnumber3 spells matches 22 run scoreboard players set spellbuffsp5 spells 0
execute if score spellnumber3 spells matches 22 run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p5]"}," used Second Wind on Slot 18!"]
#fountain of youth
execute if score spellnumber3 spells matches 25 run execute if score disarmedslot18 booleaneffects < fountainOfYouthDuration spellStats run scoreboard players operation disarmedslot18 booleaneffects = fountainOfYouthDuration spellStats
execute if score spellnumber3 spells matches 25 if score slot18bleeding booleaneffects matches 0 run scoreboard players operation slot18 hp += fountainOfYouth spellStats
execute if score spellnumber3 spells matches 25 if score slot18bleeding booleaneffects matches 0 run scoreboard players operation slot18 hp += spellbuffsp5 spells
execute if score spellnumber3 spells matches 25 at @e[name=slot18] run particle minecraft:composter ~ ~1 ~ 0.9 0.9 0.9 0.5 500
execute if score spellnumber3 spells matches 25 run scoreboard players set attackIsOngoingGame2 booleans 0
execute if score spellnumber3 spells matches 25 run scoreboard players set spellbuffsp5 spells 0
execute if score spellnumber3 spells matches 25 run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p5]"}," used Fountain of Youth on Slot 18!"]
#overclock
execute if score spellnumber3 spells matches 27 run execute if score buffDurationSlot18 atkmodifiers < overclockDuration spellStats run scoreboard players operation buffDurationSlot18 atkmodifiers = overclockDuration spellStats
execute if score spellnumber3 spells matches 27 run scoreboard players operation attackBuffSlot18 atkmodifiers += overclock spellStats
execute if score spellnumber3 spells matches 27 run scoreboard players operation shield slot18 -= overclockAtk spellStats
execute if score spellnumber3 spells matches 27 if score shield slot18 matches ..0 run scoreboard players operation slot18 hp += shield slot18
execute if score spellnumber3 spells matches 27 at @e[name=slot18] run particle minecraft:trial_spawner_detection ~ ~1 ~ 0.9 0.9 0.9 0.5 400
execute if score spellnumber3 spells matches 27 run scoreboard players set attackIsOngoingGame2 booleans 0
execute if score spellnumber3 spells matches 27 run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p5]"}," used Overclock on Slot 18!"]

#This goes at the bottom
execute if score shield slot17 matches ..0 run scoreboard players set shield slot17 0
execute if score shield slot18 matches ..0 run scoreboard players set shield slot18 0
execute if score shield slot19 matches ..0 run scoreboard players set shield slot19 0
execute if score shield slot20 matches ..0 run scoreboard players set shield slot20 0