effect clear @a[tag=game3] weakness
clear @a[tag=game3]

#Dragonforge
execute if score spellnumber3 spells matches 26 run execute if score durationSlot24 shield < dragonforgeDuration spellStats run scoreboard players operation durationSlot24 shield = dragonforgeDuration spellStats
execute if score spellnumber3 spells matches 26 run scoreboard players operation shield slot24 += dragonforge spellStats
execute if score spellnumber3 spells matches 26 run execute if score alivep6 deaths matches 1 run scoreboard players operation shield slot24 += dragonforge spellStats
execute if score spellnumber3 spells matches 26 run function ch:spellphasep5
execute if score spellnumber3 spells matches 26 run execute if score alivep6 deaths matches 1 run execute at @n[type=armor_stand,name=slot24] run particle dragon_breath ~ ~1 ~ 0.9 0.9 0.9 0.1 400
execute if score spellnumber3 spells matches 26 run execute if score alivep6 deaths matches 2.. run execute at @n[type=armor_stand,name=slot24] run particle dragon_breath ~ ~1 ~ 0.9 0.9 0.9 0.1 100
execute if score spellnumber3 spells matches 26 run tellraw @a[tag=game3] ["",{"selector":"@p[tag=p6]"}," used Dragonforge on Slot 24!"]

#Embiggen
execute if score spellnumber3 spells matches 13 run execute if score buffDurationSlot24 atkmodifiers < embiggenDuration spellStats run scoreboard players operation buffDurationSlot24 atkmodifiers = embiggenDuration spellStats
execute if score spellnumber3 spells matches 13 run scoreboard players operation attackBuffSlot24 atkmodifiers += embiggenBuff spellStats
execute if score spellnumber3 spells matches 13 run execute if score durationSlot24 shield < embiggenDuration spellStats run scoreboard players operation durationSlot24 shield = embiggenDuration spellStats
execute if score spellnumber3 spells matches 13 run scoreboard players operation shield slot24 += embiggen spellStats
execute if score spellnumber3 spells matches 13 run function ch:spellphasep5
execute if score spellnumber3 spells matches 13 run execute at @n[type=armor_stand,name=slot24] run particle minecraft:egg_crack ~ ~1 ~ 0.9 0.9 0.9 0.1 100
execute if score spellnumber3 spells matches 13 run tellraw @a[tag=game3] ["",{"selector":"@p[tag=p6]"}," used Embiggen on Slot 24!"]

#Embrittle
execute if score spellnumber3 spells matches 12 if score ward slot24 matches 0 run execute if score debuffDurationSlot24 atkmodifiers < embrittleDuration spellStats run scoreboard players operation debuffDurationSlot24 atkmodifiers = embrittleDuration spellStats
execute if score spellnumber3 spells matches 12 if score ward slot24 matches 0 run scoreboard players operation attackDebuffSlot24 atkmodifiers += embrittle spellStats
execute if score spellnumber3 spells matches 12 if score ward slot24 matches 1.. run function ch:wardslot24
execute if score spellnumber3 spells matches 12 run scoreboard players set attackIsOngoingGame2 booleans 0
execute if score spellnumber3 spells matches 12 run execute at @n[type=armor_stand,name=slot24] run particle minecraft:block_crumble{block_state:"minecraft:ice"} ~ ~1 ~ 0.9 0.9 0.9 0.1 200
 execute if score spellnumber3 spells matches 12 run tellraw @a[tag=game3] ["",{"selector":"@p[tag=p5]"}," used Embrittle on Slot 24!"]

#Evil Eye
execute if score spellnumber3 spells matches 15 if score ward slot24 matches 0 run scoreboard players operation marks slot24 += evilEye spellStats
execute if score spellnumber3 spells matches 15 if score ward slot24 matches 1.. run function ch:wardslot24
execute if score spellnumber3 spells matches 15 run scoreboard players set attackIsOngoingGame2 booleans 0
execute if score spellnumber3 spells matches 15 run execute at @n[type=armor_stand,name=slot24] run particle minecraft:effect ~ ~1 ~ 0.7 0.7 0.7 0.1 200
execute if score spellnumber3 spells matches 15 run tellraw @a[tag=game3] ["",{"selector":"@p[tag=p5]"}," used Evil Eye on Slot 24!"]

#Frostbolt
execute if score spellnumber3 spells matches 6 run scoreboard players operation spelldmg32 saves = frostbolt spellStats
execute if score spellnumber3 spells matches 6 run scoreboard players operation spelldmg32 saves += spellbuffsp5 spells
execute if score spellnumber3 spells matches 6 run scoreboard players operation spelldmg32 saves += marks slot24
execute if score spellnumber3 spells matches 6 run scoreboard players operation spelldmg32 saves /= atkmultiplier slot24
execute if score spellnumber3 spells matches 6 run execute if score ward slot24 matches 0 run scoreboard players operation shield slot24 -= spelldmg32 saves
execute if score spellnumber3 spells matches 6 run execute if score ward slot24 matches 0 if score frostboltDuration spellStats > durationSlot24 speedDebuffs run scoreboard players operation durationSlot24 speedDebuffs = frostboltDuration spellStats
execute if score spellnumber3 spells matches 6 run execute if score ward slot24 matches 0 if score frostboltDuration spellStats > debuffDurationSlot24 atkmodifiers run scoreboard players operation debuffDurationSlot24 atkmodifiers = frostboltDuration spellStats
execute if score spellnumber3 spells matches 6 run execute if score ward slot24 matches 0 run scoreboard players operation speedDebuffSlot24 speedDebuffs += frostboltSpDebuff spellStats
execute if score spellnumber3 spells matches 6 run execute if score ward slot24 matches 0 run scoreboard players operation attackDebuffSlot24 atkmodifiers += frostboltDmgDebuff spellStats
execute if score spellnumber3 spells matches 6 run execute if score ward slot24 matches 0 run scoreboard players operation speed slot24 -= frostboltSpDebuff spellStats
execute if score spellnumber3 spells matches 6 run execute if score ward slot24 matches 0 if score shield slot24 matches ..0 run scoreboard players operation slot24 hp += shield slot24
execute if score spellnumber3 spells matches 6 run execute if score ward slot24 matches 1.. run function ch:wardslot24
execute if score spellnumber3 spells matches 6 run scoreboard players set spellbuffsp5 spells 0
execute if score spellnumber3 spells matches 6 run scoreboard players set attackIsOngoingGame2 booleans 0
execute if score spellnumber3 spells matches 6 run execute at @n[type=armor_stand,name=slot24] run particle minecraft:item_snowball ~ ~1 ~ 0.7 0.7 0.7 0.1 200
execute if score spellnumber3 spells matches 6 run tellraw @a[tag=game3] ["",{"selector":"@p[tag=p5]"}," used Frostbolt on Slot 24!"]

#Heal
execute if score spellnumber3 spells matches 2 run scoreboard players operation spellHeal saves = heal spellStats
execute if score spellnumber3 spells matches 2 run scoreboard players operation spellHeal saves += spellbuffsp6 spells
execute if score spellnumber3 spells matches 2 run scoreboard players operation slot24 hp += spellHeal saves
execute if score spellnumber3 spells matches 2 run function ch:cleanseslot24
execute if score spellnumber3 spells matches 2 run scoreboard players set spellbuffsp6 spells 0
execute if score spellnumber3 spells matches 2 run function ch:spellphasep5
execute if score spellnumber3 spells matches 2 run execute at @n[type=armor_stand,name=slot24] run particle minecraft:composter ~ ~1 ~ 0.9 0.9 0.9 0.5 100
execute if score spellnumber3 spells matches 2 run tellraw @a[tag=game3] ["",{"selector":"@p[tag=p6]"}," used Heal on Slot 24!"]

#Magic Missile
execute if score spellnumber3 spells matches 4 run scoreboard players add magicMissilex2 spells 1
execute if score spellnumber3 spells matches 4 run scoreboard players operation spelldmg32 saves = magicMissile spellStats
execute if score spellnumber3 spells matches 4 run scoreboard players operation spelldmg32 saves += spellbuffsp5 spells
execute if score spellnumber3 spells matches 4 run scoreboard players operation spelldmg32 saves += marks slot24
execute if score spellnumber3 spells matches 4 run scoreboard players operation spelldmg32 saves /= atkmultiplier slot24
execute if score spellnumber3 spells matches 4 run execute if score ward slot24 matches 0 run scoreboard players operation shield slot24 -= spelldmg32 saves
execute if score spellnumber3 spells matches 4 run execute if score ward slot24 matches 0 if score shield slot24 matches ..0 run scoreboard players operation slot24 hp += shield slot24
execute if score spellnumber3 spells matches 4 run execute if score ward slot24 matches 1.. run function ch:wardslot24
execute if score spellnumber3 spells matches 4 run execute at @n[type=armor_stand,name=slot24] run particle minecraft:enchanted_hit ~ ~1 ~ 0.7 0.7 0.7 0.5 300
execute if score spellnumber3 spells matches 4 run tellraw @a[tag=game3] ["",{"selector":"@p[tag=p5]"}," smited Slot 24 with Magic Missle!"]
execute if score spellnumber3 spells matches 4 run execute if score magicMissilex2 spells matches 1 run function ch:spellgivetargetsp5
execute if score spellnumber3 spells matches 4 run execute if score magicMissilex2 spells matches 2 run scoreboard players set spellbuffsp5 spells 0
execute if score spellnumber3 spells matches 4 run execute if score magicMissilex2 spells matches 2 run clear @a[tag=p5] target
execute if score spellnumber3 spells matches 4 run execute if score magicMissilex2 spells matches 2 run scoreboard players set attackIsOngoingGame2 booleans 0
execute if score spellnumber3 spells matches 4 run execute if score magicMissilex2 spells matches 2 run scoreboard players set magicMissilex2 spells 0

#Protector's Rune
execute if score spellnumber3 spells matches 16 if score protectorsrune spellStats > durationSlot24 taunt run scoreboard players operation durationSlot24 taunt = protectorsrune spellStats
execute if score spellnumber3 spells matches 16 if score protectorsrune spellStats > durationSlot24 taunt if score ward slot24 matches 0 run scoreboard players operation marks slot24 += protectorsruneMarks spellStats
execute if score spellnumber3 spells matches 16 if score protectorsrune spellStats > durationSlot24 taunt if score ward slot24 matches 1.. run function ch:wardslot24
execute if score spellnumber3 spells matches 16 run function ch:spellphasep5
execute if score spellnumber3 spells matches 16 run execute at @n[type=armor_stand,name=slot24] run particle minecraft:block_crumble{block_state:"minecraft:emerald_ore"} ~ ~1 ~ 0.7 0.7 0.7 1 400
execute if score spellnumber3 spells matches 16 run tellraw @a[tag=game3] ["",{"selector":"@p[tag=p6]"}," used Protector's Rune on Slot 24!"]

#Shield
execute if score spellnumber3 spells matches 8 run execute if score durationSlot24 shield < shieldDuration spellStats run scoreboard players operation durationSlot24 shield = shieldDuration spellStats
execute if score spellnumber3 spells matches 8 run scoreboard players operation shield slot24 += shield spellStats
execute if score spellnumber3 spells matches 8 run function ch:spellphasep5
execute if score spellnumber3 spells matches 8 run execute at @n[type=armor_stand,name=slot24] run particle wax_off ~ ~1 ~ 0.7 0.7 0.7 0.1 400
execute if score spellnumber3 spells matches 8 run tellraw @a[tag=game3] ["",{"selector":"@p[tag=p6]"}," used Shield on Slot 24!"]

#Ball Lightning
execute if score spellnumber3 spells matches 9 if score ward slot24 matches 0 run scoreboard players operation slot24 stun += shockOrb spellStats
execute if score spellnumber3 spells matches 9 if score ward slot24 matches 1.. run function ch:wardslot24
execute if score spellnumber3 spells matches 9 run scoreboard players set attackIsOngoingGame2 booleans 0
execute if score spellnumber3 spells matches 9 run execute at @n[type=armor_stand,name=slot24] run particle flash ~ ~1 ~ 0.9 0.9 0.9 0.1 10
execute if score spellnumber3 spells matches 9 run tellraw @a[tag=game3] ["",{"selector":"@p[tag=p5]"}," used Ball Lightning on Slot 24!"]

#Witches Brew
execute if score spellnumber3 spells matches 23 run execute if score ward slot24 matches 0 if score witchesBrewDuration spellStats > durationSlot24 speedDebuffs run scoreboard players operation durationSlot24 speedDebuffs = witchesBrewDuration spellStats
execute if score spellnumber3 spells matches 23 run execute if score ward slot24 matches 0 if score witchesBrewDuration spellStats > debuffDurationSlot24 atkmodifiers run scoreboard players operation debuffDurationSlot24 atkmodifiers = witchesBrewDuration spellStats
execute if score spellnumber3 spells matches 23 run execute if score ward slot24 matches 0 if score witchesBrewDuration spellStats > durationSlot24 poison run scoreboard players operation durationSlot24 poison = witchesBrewDuration spellStats
execute if score spellnumber3 spells matches 23 run execute if score ward slot24 matches 0 if score witchesBrewDuration spellStats > durationSlot24 burn run scoreboard players operation durationSlot24 burn = witchesBrewDuration spellStats
execute if score spellnumber3 spells matches 23 run execute if score ward slot24 matches 0 run scoreboard players operation speedDebuffSlot24 speedDebuffs += witchesBrewSpDebuff spellStats
execute if score spellnumber3 spells matches 23 run execute if score ward slot24 matches 0 run scoreboard players operation attackDebuffSlot24 atkmodifiers += witchesBrewDmgDebuff spellStats
execute if score spellnumber3 spells matches 23 run execute if score ward slot24 matches 0 run scoreboard players operation slot24Poison poison += witchesBrew spellStats
execute if score spellnumber3 spells matches 23 run execute if score ward slot24 matches 0 run scoreboard players operation slot24Burn burn += witchesBrewBurn spellStats
execute if score spellnumber3 spells matches 23 run execute if score ward slot24 matches 0 run scoreboard players operation speed slot24 -= witchesBrewSpDebuff spellStats
execute if score spellnumber3 spells matches 23 run execute if score ward slot24 matches 1.. run function ch:wardslot24
execute if score spellnumber3 spells matches 23 run scoreboard players set attackIsOngoingGame2 booleans 0
execute if score spellnumber3 spells matches 23 run tellraw @a[tag=game3] ["",{"selector":"@p[tag=p5]"}," used Witches Brew on Slot 24!"]

#Shifting Shadows Token
execute if score spellnumber3 spells matches -1 if score shadowsPart1 spells matches 1 if score ward slot24 matches 0 run scoreboard players set durationSlot17-24 fear 1
execute if score spellnumber3 spells matches -1 if score shadowsPart1 spells matches 2 if score ward slot24 matches 0 run scoreboard players set durationSlot18-24 fear 1
execute if score spellnumber3 spells matches -1 if score shadowsPart1 spells matches 3 if score ward slot24 matches 0 run scoreboard players set durationSlot19-24 fear 1
execute if score spellnumber3 spells matches -1 if score shadowsPart1 spells matches 4 if score ward slot24 matches 0 run scoreboard players set durationSlot20-24 fear 1
execute if score spellnumber3 spells matches -1 if score ward slot24 matches 1.. run function ch:wardslot24
execute if score spellnumber3 spells matches -1 run scoreboard players set attackIsOngoingGame2 booleans 0
execute if score spellnumber3 spells matches -1 run execute at @n[type=armor_stand,name=slot24] run particle trial_omen ~ ~1 ~ 0.9 0.9 0.9 0.1 400
execute if score spellnumber3 spells matches -1 run tellraw @a[tag=game3] ["",{"selector":"@p[tag=p5]"}," used Shifting Shadows to fear Slot 24!"]

#Shifting Shadows
execute if score spellnumber3 spells matches 28 run scoreboard players set shadowsPart1 spells 8
execute if score spellnumber3 spells matches 28 run function ch:spellgivetargetsp6
execute if score spellnumber3 spells matches 28 run scoreboard players set spellnumber3 spells -1
execute if score spellnumber3 spells matches 28 run execute at @n[type=armor_stand,name=slot24] run particle raid_omen ~ ~1 ~ 0.9 0.9 0.9 0.1 400
execute if score spellnumber3 spells matches 28 run tellraw @a[tag=game3] ["",{"selector":"@p[tag=p6]"}," used Shifting Shadows to make Slot 24 scary!"]

#fireball
execute if score spellnumber3 spells matches 1 run scoreboard players operation spelldmg32 saves = fireball spellStats
execute if score spellnumber3 spells matches 1 run scoreboard players operation spelldmg32 saves += spellbuffsp5 spells
execute if score spellnumber3 spells matches 1 run scoreboard players operation spelldmg32 saves += marks slot24
execute if score spellnumber3 spells matches 1 run scoreboard players operation spelldmg32 saves /= atkmultiplier slot24
execute if score spellnumber3 spells matches 1 run execute if score ward slot24 matches 0 run scoreboard players operation shield slot24 -= spelldmg32 saves
execute if score spellnumber3 spells matches 1 run execute if score ward slot24 matches 0 run scoreboard players operation slot24 hp += shield slot24
execute if score spellnumber3 spells matches 1 run execute if score ward slot24 matches 0 if score durationSlot24 burn < fireballDuration spellStats run scoreboard players operation durationSlot24 burn = fireballDuration spellStats
execute if score spellnumber3 spells matches 1 run execute if score ward slot24 matches 0 run scoreboard players operation slot24Burn burn += fireballBurn spellStats
execute if score spellnumber3 spells matches 1 at @e[name=slot24] run particle minecraft:flame ~ ~1 ~ 0.9 0.9 0.9 0.5 100
execute if score spellnumber3 spells matches 1 run execute if score ward slot24 matches 1.. run function ch:wardslot24
execute if score spellnumber3 spells matches 1 run scoreboard players set spellbuffsp5 spells 0
execute if score spellnumber3 spells matches 1 run scoreboard players set attackIsOngoingGame2 booleans 0
execute if score spellnumber3 spells matches 1 run tellraw @a[tag=game3] ["",{"selector":"@p[tag=p5]"}," used Fireball on Slot 24!"]

#meteor
execute if score spellnumber3 spells matches 7 run scoreboard players operation spelldmg32 saves = meteor spellStats
execute if score spellnumber3 spells matches 7 run scoreboard players operation spelldmg32 saves += spellbuffsp5 spells
execute if score spellnumber3 spells matches 7 run scoreboard players operation spelldmg32 saves += marks slot24
execute if score spellnumber3 spells matches 7 run scoreboard players operation spelldmg32 saves /= atkmultiplier slot24
execute if score spellnumber3 spells matches 7 run execute if score ward slot24 matches 0 run scoreboard players operation shield slot24 -= spelldmg32 saves
execute if score spellnumber3 spells matches 7 run execute if score ward slot24 matches 0 if score shield slot24 matches ..0 run scoreboard players operation slot24 hp += shield slot24
execute if score spellnumber3 spells matches 7 at @e[name=slot24] run particle minecraft:lava ~ ~1 ~ 0.9 0.9 0.9 0.5 100
execute if score spellnumber3 spells matches 7 at @e[name=slot23] run particle minecraft:lava ~ ~1 ~ 0.9 0.9 0.9 0.5 50
execute if score spellnumber3 spells matches 7 run execute if score ward slot24 matches 1.. run function ch:wardslot24
execute if score spellnumber3 spells matches 7 run scoreboard players operation spelldmg32 saves = meteor spellStats
execute if score spellnumber3 spells matches 7 run scoreboard players operation spelldmg32 saves += spellbuffsp6 spells
execute if score spellnumber3 spells matches 7 run scoreboard players operation spelldmg32 saves /= meteorSplash spellStats
execute if score spellnumber3 spells matches 7 run scoreboard players operation spelldmg32 saves += marks slot23
execute if score spellnumber3 spells matches 7 run scoreboard players operation spelldmg32 saves /= atkmultiplier slot23
execute if score spellnumber3 spells matches 7 run execute if score ward slot23 matches 0 run scoreboard players operation shield slot23 -= spelldmg32 saves
execute if score spellnumber3 spells matches 7 run execute if score ward slot23 matches 0 if score shield slot23 matches ..0 run scoreboard players operation slot23 hp += shield slot23
execute if score spellnumber3 spells matches 7 run execute if score ward slot23 matches 1.. run function ch:wardslot23
execute if score spellnumber3 spells matches 7 run scoreboard players set spellbuffsp5 spells 0
execute if score spellnumber3 spells matches 7 run scoreboard players set attackIsOngoingGame2 booleans 0
execute if score spellnumber3 spells matches 7 run tellraw @a[tag=game3] ["",{"selector":"@p[tag=p5]"}," used Meteor on Slot 24!"]

#witchbolt
execute if score spellnumber3 spells matches 10 run scoreboard players operation spelldmg32 saves = witchbolt spellStats
execute if score spellnumber3 spells matches 10 run scoreboard players operation spelldmg32 saves += spellbuffsp5 spells
execute if score spellnumber3 spells matches 10 run scoreboard players operation spelldmg32 saves += marks slot24
execute if score spellnumber3 spells matches 10 run scoreboard players operation spelldmg32 saves /= atkmultiplier slot24
execute if score spellnumber3 spells matches 10 run execute if score ward slot24 matches 0 run scoreboard players operation shield slot24 -= spelldmg32 saves
execute if score spellnumber3 spells matches 10 run execute if score ward slot24 matches 0 if score shield slot18 matches ..0 run scoreboard players operation slot24 hp += shield slot24
execute if score spellnumber3 spells matches 10 at @e[name=slot24] run particle minecraft:enchanted_hit ~ ~1 ~ 0.9 0.9 0.9 0.5 200
execute if score spellnumber3 spells matches 10 run execute if score ward slot24 matches 1.. run function ch:wardslot24
execute if score spellnumber3 spells matches 10 run scoreboard players set spellbuffsp5 spells 0
execute if score spellnumber3 spells matches 10 run scoreboard players set attackIsOngoingGame2 booleans 0
execute if score spellnumber3 spells matches 10 run tellraw @a[tag=game3] ["",{"selector":"@p[tag=p5]"}," used Witch Bolt on Slot 24!"]
#ward
execute if score spellnumber3 spells matches 19 run scoreboard players set ward slot24 1
execute if score spellnumber3 spells matches 19 at @e[name=slot24] run particle minecraft:ominous_spawning ~ ~1 ~ 0.9 0.9 0.9 0.1 100
execute if score spellnumber3 spells matches 19 run function ch:spellphasep5
execute if score spellnumber3 spells matches 19 run tellraw @a[tag=game3] ["",{"selector":"@p[tag=p6]"}," used Ward on Slot 24!"]

#plague
execute if score spellnumber3 spells matches 21 if score ward slot24 matches 0 run scoreboard players operation slot24Disease disease += plague spellStats
execute if score spellnumber3 spells matches 21 at @e[name=slot24] run particle minecraft:trial_omen ~ ~1 ~ 0.9 0.9 0.9 0.5 100
execute if score spellnumber3 spells matches 21 if score ward slot24 matches 1.. run function ch:wardslot24
execute if score spellnumber3 spells matches 21 run scoreboard players set attackIsOngoingGame2 booleans 0
execute if score spellnumber3 spells matches 21 run tellraw @a[tag=game3] ["",{"selector":"@p[tag=p5]"}," used Plague on Slot 24!"]

#Second wind
execute if score spellnumber3 spells matches 22 run execute if score durationSlot24 speedBuffs < secondWindDuration spellStats run scoreboard players operation durationSlot24 speedBuffs = secondWindDuration spellStats
execute if score spellnumber3 spells matches 22 run scoreboard players operation speedBuffSlot24 speedBuffs += secondWindSpeed spellStats
execute if score spellnumber3 spells matches 22 run scoreboard players operation speed slot24 += secondWindSpeed spellStats
execute if score spellnumber3 spells matches 22 if score slot24bleeding booleaneffects matches 0 run scoreboard players operation slot24 hp += secondWind spellStats
execute if score spellnumber3 spells matches 22 if score slot24bleeding booleaneffects matches 0 run scoreboard players operation slot24 hp += spellbuffsp6 spells
execute if score spellnumber3 spells matches 22 at @e[name=slot24] run particle minecraft:trial_spawner_detection_ominous ~ ~1 ~ 0.9 0.9 0.9 0.5 100
execute if score spellnumber3 spells matches 22 run function ch:spellphasep5
execute if score spellnumber3 spells matches 22 run scoreboard players set spellbuffsp6 spells 0
execute if score spellnumber3 spells matches 22 run tellraw @a[tag=game3] ["",{"selector":"@p[tag=p6]"}," used Second Wind on Slot 24!"]

#fountain of youth
execute if score spellnumber3 spells matches 25 run execute if score disarmedslot24 booleaneffects < fountainOfYouthDuration spellStats run scoreboard players operation disarmedslot24 booleaneffects = fountainOfYouthDuration spellStats
execute if score spellnumber3 spells matches 25 if score slot24bleeding booleaneffects matches 0 run scoreboard players operation slot24 hp += fountainOfYouth spellStats
execute if score spellnumber3 spells matches 25 if score slot24bleeding booleaneffects matches 0 run scoreboard players operation slot24 hp += spellbuffsp6 spells
execute if score spellnumber3 spells matches 25 at @e[name=slot24] run particle minecraft:composter ~ ~1 ~ 0.9 0.9 0.9 0.5 500
execute if score spellnumber3 spells matches 25 run function ch:spellphasep5
execute if score spellnumber3 spells matches 25 run scoreboard players set spellbuffsp6 spells 0
execute if score spellnumber3 spells matches 25 run tellraw @a[tag=game3] ["",{"selector":"@p[tag=p6]"}," used Fountain of Youth on Slot 24!"]

#overclock
execute if score spellnumber3 spells matches 27 run execute if score buffDurationSlot24 atkmodifiers < overclockDuration spellStats run scoreboard players operation buffDurationSlot24 atkmodifiers = overclockDuration spellStats
execute if score spellnumber3 spells matches 27 run scoreboard players operation attackBuffSlot24 atkmodifiers += overclock spellStats
execute if score spellnumber3 spells matches 27 run scoreboard players operation shield slot24 -= overclockAtk spellStats
execute if score spellnumber3 spells matches 27 if score shield slot24 matches ..0 run scoreboard players operation slot24 hp += shield slot24
execute if score spellnumber3 spells matches 27 at @e[name=slot24] run particle minecraft:trial_spawner_detection ~ ~1 ~ 0.9 0.9 0.9 0.5 400
execute if score spellnumber3 spells matches 27 run function ch:spellphasep5
execute if score spellnumber3 spells matches 27 run tellraw @a[tag=game3] ["",{"selector":"@p[tag=p6]"}," used Overclock on Slot 24!"]

#This goes at the bottom
execute if score shield slot21 matches ..0 run scoreboard players set shield slot21 0
execute if score shield slot23 matches ..0 run scoreboard players set shield slot23 0
execute if score shield slot23 matches ..0 run scoreboard players set shield slot23 0
execute if score shield slot24 matches ..0 run scoreboard players set shield slot24 0







