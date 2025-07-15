effect clear @a[tag=game3] weakness
clear @a[tag=game3]

#Dragonforge
execute if score spellnumber3 spells matches 26 run execute if score durationSlot19 shield < dragonforgeDuration spellStats run scoreboard players operation durationSlot19 shield = dragonforgeDuration spellStats 
execute if score spellnumber3 spells matches 26 run scoreboard players operation shield slot19 += dragonforge spellStats
execute if score spellnumber3 spells matches 26 run execute if score alivep5 deaths matches 1 run scoreboard players operation shield slot19 += dragonforge spellStats
execute if score spellnumber3 spells matches 26 run scoreboard players set attackIsOngoingGame2 booleans 0
execute if score spellnumber3 spells matches 26 run execute if score alivep5 deaths matches 1 run execute at @n[type=armor_stand,name=slot19] run particle dragon_breath ~ ~1 ~ 0.9 0.9 0.9 0.1 400
execute if score spellnumber3 spells matches 26 run execute if score alivep5 deaths matches 2.. run execute at @n[type=armor_stand,name=slot19] run particle dragon_breath ~ ~1 ~ 0.9 0.9 0.9 0.1 100
execute if score spellnumber3 spells matches 26 run tellraw @a[tag=game3] ["",{"selector":"@p[tag=p5]"}," used Dragonforge on Slot 19!"]

#Embiggen
execute if score spellnumber3 spells matches 13 run execute if score buffDurationSlot19 atkmodifiers < embiggenDuration spellStats run scoreboard players operation buffDurationSlot19 atkmodifiers = embiggenDuration spellStats
execute if score spellnumber3 spells matches 13 run scoreboard players operation attackBuffSlot19 atkmodifiers += embiggenBuff spellStats
execute if score spellnumber3 spells matches 13 run execute if score durationSlot19 shield < embiggenDuration spellStats run scoreboard players operation durationSlot19 shield = embiggenDuration spellStats 
execute if score spellnumber3 spells matches 13 run scoreboard players operation shield slot19 += embiggen spellStats
execute if score spellnumber3 spells matches 13 run scoreboard players set attackIsOngoingGame2 booleans 0
execute if score spellnumber3 spells matches 13 run execute at @n[type=armor_stand,name=slot19] run particle minecraft:egg_crack ~ ~1 ~ 0.9 0.9 0.9 0.1 100
execute if score spellnumber3 spells matches 13 run tellraw @a[tag=game3] ["",{"selector":"@p[tag=p5]"}," used Embiggen on Slot 19!"]

#Embrittle
execute if score spellnumber3 spells matches 12 if score ward slot19 matches 0 run execute if score debuffDurationSlot19 atkmodifiers < embrittleDuration spellStats run scoreboard players operation debuffDurationSlot19 atkmodifiers = embrittleDuration spellStats
execute if score spellnumber3 spells matches 12 if score ward slot19 matches 0 run scoreboard players operation attackDebuffSlot19 atkmodifiers += embrittle spellStats
execute if score spellnumber3 spells matches 12 if score ward slot19 matches 1.. run function ch:wardslot19
execute if score spellnumber3 spells matches 12 run function ch:spellphasep5
execute if score spellnumber3 spells matches 12 run execute at @n[type=armor_stand,name=slot19] run particle minecraft:block_crumble{block_state:"minecraft:ice"} ~ ~1 ~ 0.9 0.9 0.9 0.1 200
execute if score spellnumber3 spells matches 12 run tellraw @a[tag=game3] ["",{"selector":"@p[tag=p6]"}," used Embrittle on Slot 19!"]
#Evil Eye
execute if score spellnumber3 spells matches 15 if score ward slot19 matches 0 run scoreboard players operation marks slot19 += evilEye spellStats
execute if score spellnumber3 spells matches 15 if score ward slot19 matches 1.. run function ch:wardslot19
execute if score spellnumber3 spells matches 15 run function ch:spellphasep5
execute if score spellnumber3 spells matches 15 run execute at @n[type=armor_stand,name=slot19] run particle minecraft:effect ~ ~1 ~ 0.7 0.7 0.7 0.1 200
execute if score spellnumber3 spells matches 15 run tellraw @a[tag=game3] ["",{"selector":"@p[tag=p6]"}," used Evil Eye on Slot 19!"]

#Frostbolt
execute if score spellnumber3 spells matches 6 run scoreboard players operation spelldmg32 saves = frostbolt spellStats
execute if score spellnumber3 spells matches 6 run scoreboard players operation spelldmg32 saves += spellbuffsp6 spells
execute if score spellnumber3 spells matches 6 run scoreboard players operation spelldmg32 saves += marks slot19
execute if score spellnumber3 spells matches 6 run scoreboard players operation spelldmg32 saves /= atkmultiplier slot19
execute if score spellnumber3 spells matches 6 run execute if score ward slot19 matches 0 run scoreboard players operation shield slot19 -= spelldmg32 saves
execute if score spellnumber3 spells matches 6 run execute if score ward slot19 matches 0 if score frostboltDuration spellStats > durationSlot19 speedDebuffs run scoreboard players operation durationSlot19 speedDebuffs = frostboltDuration spellStats
execute if score spellnumber3 spells matches 6 run execute if score ward slot19 matches 0 if score frostboltDuration spellStats > debuffDurationSlot19 atkmodifiers run scoreboard players operation debuffDurationSlot19 atkmodifiers = frostboltDuration spellStats
execute if score spellnumber3 spells matches 6 run execute if score ward slot19 matches 0 run scoreboard players operation speedDebuffSlot19 speedDebuffs += frostboltSpDebuff spellStats
execute if score spellnumber3 spells matches 6 run execute if score ward slot19 matches 0 run scoreboard players operation attackDebuffSlot19 atkmodifiers += frostboltDmgDebuff spellStats
execute if score spellnumber3 spells matches 6 run execute if score ward slot19 matches 0 run scoreboard players operation speed slot19 -= frostboltSpDebuff spellStats
execute if score spellnumber3 spells matches 6 run execute if score ward slot19 matches 0 if score shield slot19 matches ..0 run scoreboard players operation slot19 hp += shield slot19
execute if score spellnumber3 spells matches 6 run execute if score ward slot19 matches 1.. run function ch:wardslot19
execute if score spellnumber3 spells matches 6 run scoreboard players set spellbuffsp6 spells 0
execute if score spellnumber3 spells matches 6 run function ch:spellphasep5
execute if score spellnumber3 spells matches 6 run execute at @n[type=armor_stand,name=slot19] run particle minecraft:item_snowball ~ ~1 ~ 0.7 0.7 0.7 0.1 200
execute if score spellnumber3 spells matches 6 run tellraw @a[tag=game3] ["",{"selector":"@p[tag=p6]"}," used Frostbolt on Slot 19!"]

#Heal
execute if score spellnumber3 spells matches 2 run scoreboard players operation spellHeal saves = heal spellStats
execute if score spellnumber3 spells matches 2 run scoreboard players operation spellHeal saves += spellbuffsp5 spells
execute if score spellnumber3 spells matches 2 run scoreboard players operation slot19 hp += spellHeal saves
execute if score spellnumber3 spells matches 2 run function ch:cleanseslot19
execute if score spellnumber3 spells matches 2 run scoreboard players set spellbuffsp5 spells 0
execute if score spellnumber3 spells matches 2 run scoreboard players set attackIsOngoingGame2 booleans 0
execute if score spellnumber3 spells matches 2 run execute at @n[type=armor_stand,name=slot19] run particle minecraft:composter ~ ~1 ~ 0.9 0.9 0.9 0.5 100
execute if score spellnumber3 spells matches 2 run tellraw @a[tag=game3] ["",{"selector":"@p[tag=p5]"}," used Heal on Slot 19!"]

#Magic Missile
execute if score spellnumber3 spells matches 4 run scoreboard players add magicMissilex2 spells 1
execute if score spellnumber3 spells matches 4 run scoreboard players operation spelldmg32 saves = magicMissile spellStats
execute if score spellnumber3 spells matches 4 run scoreboard players operation spelldmg32 saves += spellbuffsp6 spells
execute if score spellnumber3 spells matches 4 run scoreboard players operation spelldmg32 saves += marks slot19
execute if score spellnumber3 spells matches 4 run scoreboard players operation spelldmg32 saves /= atkmultiplier slot19
execute if score spellnumber3 spells matches 4 run execute if score ward slot19 matches 0 run scoreboard players operation shield slot19 -= spelldmg32 saves
execute if score spellnumber3 spells matches 4 run execute if score ward slot19 matches 0 if score shield slot19 matches ..0 run scoreboard players operation slot19 hp += shield slot19
execute if score spellnumber3 spells matches 4 run execute if score ward slot19 matches 1.. run function ch:wardslot19
execute if score spellnumber3 spells matches 4 run tellraw @a[tag=game3] ["",{"selector":"@p[tag=p6]"}," smited Slot 19 with Magic Missle!"]
execute if score spellnumber3 spells matches 4 run execute at @n[type=armor_stand,name=slot19] run particle minecraft:enchanted_hit ~ ~1 ~ 0.7 0.7 0.7 0.5 300
execute if score spellnumber3 spells matches 4 run execute if score magicMissilex2 spells matches 1 run function ch:spellgivetargetsp6
execute if score spellnumber3 spells matches 4 run execute if score magicMissilex2 spells matches 2 run scoreboard players set spellbuffsp6 spells 0
execute if score spellnumber3 spells matches 4 run execute if score magicMissilex2 spells matches 2 run clear @a[tag=p6] target
execute if score spellnumber3 spells matches 4 run execute if score magicMissilex2 spells matches 2 run function ch:spellphasep5
execute if score spellnumber3 spells matches 4 run execute if score magicMissilex2 spells matches 2 run scoreboard players set magicMissilex2 spells 0

#Protector's Rune
execute if score spellnumber3 spells matches 16 if score protectorsrune spellStats > durationSlot19 taunt run scoreboard players operation durationSlot19 taunt = protectorsrune spellStats
execute if score spellnumber3 spells matches 16 if score protectorsrune spellStats > durationSlot19 taunt if score ward slot19 matches 0 run scoreboard players operation marks slot19 += protectorsruneMarks spellStats
execute if score spellnumber3 spells matches 16 if score protectorsrune spellStats > durationSlot19 taunt if score ward slot19 matches 1.. run function ch:wardslot19
execute if score spellnumber3 spells matches 16 run scoreboard players set attackIsOngoingGame2 booleans 0
execute if score spellnumber3 spells matches 16 run execute at @n[type=armor_stand,name=slot19] run particle minecraft:block_crumble{block_state:"minecraft:emerald_ore"} ~ ~1 ~ 0.7 0.7 0.7 1 400
execute if score spellnumber3 spells matches 16 run tellraw @a[tag=game3] ["",{"selector":"@p[tag=p5]"}," used Protector's Rune on Slot 19!"]

#Shield
execute if score spellnumber3 spells matches 8 run execute if score durationSlot19 shield < shieldDuration spellStats run scoreboard players operation durationSlot19 shield = shieldDuration spellStats 
execute if score spellnumber3 spells matches 8 run scoreboard players operation shield slot19 += shield spellStats
execute if score spellnumber3 spells matches 8 run scoreboard players set attackIsOngoingGame2 booleans 0
execute if score spellnumber3 spells matches 8 run execute at @n[type=armor_stand,name=slot19] run particle wax_off ~ ~1 ~ 0.7 0.7 0.7 0.1 400
execute if score spellnumber3 spells matches 8 run tellraw @a[tag=game3] ["",{"selector":"@p[tag=p5]"}," used Shield on Slot 19!"]

#Ball Lightning
execute if score spellnumber3 spells matches 9 if score ward slot19 matches 0 run scoreboard players operation slot19 stun += shockOrb spellStats
execute if score spellnumber3 spells matches 9 if score ward slot19 matches 1.. run function ch:wardslot19
execute if score spellnumber3 spells matches 9 run function ch:spellphasep5
execute if score spellnumber3 spells matches 9 run execute at @n[type=armor_stand,name=slot19] run particle flash ~ ~1 ~ 0.9 0.9 0.9 0.1 10
execute if score spellnumber3 spells matches 9 run tellraw @a[tag=game3] ["",{"selector":"@p[tag=p6]"}," used Ball Lightning on Slot 19!"]

#Witches Brew
execute if score spellnumber3 spells matches 23 run execute if score ward slot19 matches 0 if score witchesBrewDuration spellStats > durationSlot19 speedDebuffs run scoreboard players operation durationSlot19 speedDebuffs = witchesBrewDuration spellStats
execute if score spellnumber3 spells matches 23 run execute if score ward slot19 matches 0 if score witchesBrewDuration spellStats > debuffDurationSlot19 atkmodifiers run scoreboard players operation debuffDurationSlot19 atkmodifiers = witchesBrewDuration spellStats
execute if score spellnumber3 spells matches 23 run execute if score ward slot19 matches 0 if score witchesBrewDuration spellStats > durationSlot19 poison run scoreboard players operation durationSlot19 poison = witchesBrewDuration spellStats
execute if score spellnumber3 spells matches 23 run execute if score ward slot19 matches 0 if score witchesBrewDuration spellStats > durationSlot19 burn run scoreboard players operation durationSlot19 burn = witchesBrewDuration spellStats
execute if score spellnumber3 spells matches 23 run execute if score ward slot19 matches 0 run scoreboard players operation speedDebuffSlot19 speedDebuffs += witchesBrewSpDebuff spellStats
execute if score spellnumber3 spells matches 23 run execute if score ward slot19 matches 0 run scoreboard players operation attackDebuffSlot19 atkmodifiers += witchesBrewDmgDebuff spellStats
execute if score spellnumber3 spells matches 23 run execute if score ward slot19 matches 0 run scoreboard players operation slot19Poison poison += witchesBrew spellStats
execute if score spellnumber3 spells matches 23 run execute if score ward slot19 matches 0 run scoreboard players operation slot19Burn burn += witchesBrewBurn spellStats
execute if score spellnumber3 spells matches 23 run execute if score ward slot19 matches 0 run scoreboard players operation speed slot19 -= witchesBrewSpDebuff spellStats
execute if score spellnumber3 spells matches 23 run execute if score ward slot19 matches 1.. run function ch:wardslot19
execute if score spellnumber3 spells matches 23 run function ch:spellphasep5
execute if score spellnumber3 spells matches 23 run tellraw @a[tag=game3] ["",{"selector":"@p[tag=p6]"}," used Witches Brew on Slot 19!"]

#Shifting Shadows Token
execute if score spellnumber3 spells matches -1 if score shadowsPart1 spells matches 5 if score ward slot19 matches 0 run scoreboard players set durationSlot21-19 fear 1 
execute if score spellnumber3 spells matches -1 if score shadowsPart1 spells matches 6 if score ward slot19 matches 0 run scoreboard players set durationSlot22-19 fear 1 
execute if score spellnumber3 spells matches -1 if score shadowsPart1 spells matches 7 if score ward slot19 matches 0 run scoreboard players set durationSlot23-19 fear 1 
execute if score spellnumber3 spells matches -1 if score shadowsPart1 spells matches 8 if score ward slot19 matches 0 run scoreboard players set durationSlot24-19 fear 1
execute if score spellnumber3 spells matches -1 if score ward slot19 matches 1.. run function ch:wardslot19
execute if score spellnumber3 spells matches -1 run function ch:spellphasep5
execute if score spellnumber3 spells matches -1 run execute at @n[type=armor_stand,name=slot19] run particle trial_omen ~ ~1 ~ 0.9 0.9 0.9 0.1 400
execute if score spellnumber3 spells matches -1 run tellraw @a[tag=game3] ["",{"selector":"@p[tag=p6]"}," used Shifting Shadows to fear Slot 19!"]

#Shifting Shadows
execute if score spellnumber3 spells matches 28 run scoreboard players set shadowsPart1 spells 3
execute if score spellnumber3 spells matches 28 run function ch:spellgivetargetsp5
execute if score spellnumber3 spells matches 28 run scoreboard players set spellnumber3 spells -1
execute if score spellnumber3 spells matches 28 run execute at @n[type=armor_stand,name=slot19] run particle raid_omen ~ ~1 ~ 0.9 0.9 0.9 0.1 400
execute if score spellnumber3 spells matches 28 run tellraw @a[tag=game3] ["",{"selector":"@p[tag=p5]"}," used Shifting Shadows to make Slot 19 scary!"]

#fireball
execute if score spellnumber3 spells matches 1 run scoreboard players operation spelldmg32 saves = fireball spellStats
execute if score spellnumber3 spells matches 1 run scoreboard players operation spelldmg32 saves += spellbuffsp6 spells
execute if score spellnumber3 spells matches 1 run scoreboard players operation spelldmg32 saves += marks slot19
execute if score spellnumber3 spells matches 1 run scoreboard players operation spelldmg32 saves /= atkmultiplier slot19
execute if score spellnumber3 spells matches 1 run execute if score ward slot19 matches 0 run scoreboard players operation shield slot19 -= spelldmg32 saves
execute if score spellnumber3 spells matches 1 run execute if score ward slot19 matches 0 run scoreboard players operation slot19 hp += shield slot19
execute if score spellnumber3 spells matches 1 run execute if score ward slot19 matches 0 if score durationSlot19 burn < fireballDuration spellStats run scoreboard players operation durationSlot19 burn = fireballDuration spellStats
execute if score spellnumber3 spells matches 1 run execute if score ward slot19 matches 0 run scoreboard players operation slot19Burn burn += fireballBurn spellStats
execute if score spellnumber3 spells matches 1 at @e[name=slot19] run particle minecraft:flame ~ ~1 ~ 0.9 0.9 0.9 0.5 100
execute if score spellnumber3 spells matches 1 run execute if score ward slot19 matches 1.. run function ch:wardslot19
execute if score spellnumber3 spells matches 1 run scoreboard players set spellbuffsp6 spells 0
execute if score spellnumber3 spells matches 1 run function ch:spellphasep5
execute if score spellnumber3 spells matches 1 run tellraw @a[tag=game3] ["",{"selector":"@p[tag=p6]"}," used Fireball on Slot 19!"]
#meteor
execute if score spellnumber3 spells matches 7 run scoreboard players operation spelldmg32 saves = meteor spellStats
execute if score spellnumber3 spells matches 7 if score slot23isatk booleans matches 1 run scoreboard players operation spelldmg32 saves += spellbuffsp6 spells
execute if score spellnumber3 spells matches 7 run scoreboard players operation spelldmg32 saves += marks slot19
execute if score spellnumber3 spells matches 7 run scoreboard players operation spelldmg32 saves /= atkmultiplier slot19
execute if score spellnumber3 spells matches 7 run execute if score ward slot19 matches 0 run scoreboard players operation shield slot19 -= spelldmg32 saves
execute if score spellnumber3 spells matches 7 run execute if score ward slot19 matches 0 if score shield slot19 matches ..0 run scoreboard players operation slot19 hp += shield slot19
execute if score spellnumber3 spells matches 7 at @e[name=slot19] run particle minecraft:lava ~ ~1 ~ 0.9 0.9 0.9 0.5 100
execute if score spellnumber3 spells matches 7 at @e[name=slot18] run particle minecraft:lava ~ ~1 ~ 0.9 0.9 0.9 0.5 50
execute if score spellnumber3 spells matches 7 at @e[name=slot20] run particle minecraft:lava ~ ~1 ~ 0.9 0.9 0.9 0.5 50
execute if score spellnumber3 spells matches 7 run execute if score ward slot19 matches 1.. run function ch:wardslot19
execute if score spellnumber3 spells matches 7 run scoreboard players operation spelldmg32 saves = meteor spellStats
execute if score spellnumber3 spells matches 7 run scoreboard players operation spelldmg32 saves += spellbuffsp6 spells
execute if score spellnumber3 spells matches 7 run scoreboard players operation spelldmg32 saves /= meteorSplash spellStats
execute if score spellnumber3 spells matches 7 run scoreboard players operation spelldmg32 saves += marks slot18
execute if score spellnumber3 spells matches 7 run scoreboard players operation spelldmg32 saves /= atkmultiplier slot18
execute if score spellnumber3 spells matches 7 run execute if score ward slot18 matches 0 run scoreboard players operation shield slot18 -= spelldmg32 saves
execute if score spellnumber3 spells matches 7 run execute if score ward slot18 matches 0 if score shield slot18 matches ..0 run scoreboard players operation slot18 hp += shield slot18
execute if score spellnumber3 spells matches 7 run execute if score ward slot18 matches 1.. run function ch:wardslot18
execute if score spellnumber3 spells matches 7 run scoreboard players operation spelldmg32 saves = meteor spellStats
execute if score spellnumber3 spells matches 7 run scoreboard players operation spelldmg32 saves += spellbuffsp6 spells
execute if score spellnumber3 spells matches 7 run scoreboard players operation spelldmg32 saves += marks slot20
execute if score spellnumber3 spells matches 7 run scoreboard players operation spelldmg32 saves /= atkmultiplier slot20
execute if score spellnumber3 spells matches 7 run scoreboard players operation spelldmg32 saves /= meteorSplash spellStats
execute if score spellnumber3 spells matches 7 run execute if score ward slot20 matches 0 run scoreboard players operation shield slot20 -= spelldmg32 saves
execute if score spellnumber3 spells matches 7 run execute if score ward slot20 matches 0 if score shield slot20 matches ..0 run scoreboard players operation slot20 hp += shield slot20
execute if score spellnumber3 spells matches 7 run execute if score ward slot20 matches 1.. run function ch:wardslot20
execute if score spellnumber3 spells matches 7 run scoreboard players set spellbuffsp6 spells 0
execute if score spellnumber3 spells matches 7 run function ch:spellphasep5
execute if score spellnumber3 spells matches 7 run tellraw @a[tag=game3] ["",{"selector":"@p[tag=p6]"}," used Meteor on Slot 19!"]

#witchbolt
execute if score spellnumber3 spells matches 10 run scoreboard players operation spelldmg32 saves = witchbolt spellStats
execute if score spellnumber3 spells matches 10 run scoreboard players operation spelldmg32 saves += spellbuffsp6 spells
execute if score spellnumber3 spells matches 10 run scoreboard players operation spelldmg32 saves += marks slot19
execute if score spellnumber3 spells matches 10 run scoreboard players operation spelldmg32 saves /= atkmultiplier slot19
execute if score spellnumber3 spells matches 10 run execute if score ward slot19 matches 0 run scoreboard players operation shield slot19 -= spelldmg32 saves
execute if score spellnumber3 spells matches 10 run execute if score ward slot19 matches 0 if score shield slot19 matches ..0 run scoreboard players operation slot19 hp += shield slot19
execute if score spellnumber3 spells matches 10 at @e[name=slot19] run particle minecraft:enchanted_hit ~ ~1 ~ 0.9 0.9 0.9 0.5 200
execute if score spellnumber3 spells matches 10 run execute if score ward slot19 matches 1.. run function ch:wardslot19
execute if score spellnumber3 spells matches 10 run scoreboard players set spellbuffsp6 spells 0
execute if score spellnumber3 spells matches 10 run function ch:spellphasep5
execute if score spellnumber3 spells matches 10 run tellraw @a[tag=game3] ["",{"selector":"@p[tag=p6]"}," used Witch Bolt on Slot 19!"]
#ward
execute if score spellnumber3 spells matches 19 run scoreboard players set ward slot19 1
execute if score spellnumber3 spells matches 19 at @e[name=slot19] run particle minecraft:ominous_spawning ~ ~1 ~ 0.9 0.9 0.9 0.1 100
execute if score spellnumber3 spells matches 19 run scoreboard players set attackIsOngoingGame2 booleans 0
execute if score spellnumber3 spells matches 19 run tellraw @a[tag=game3] ["",{"selector":"@p[tag=p5]"}," used Ward on Slot 19!"]
#plague
execute if score spellnumber3 spells matches 21 if score ward slot19 matches 0 run scoreboard players operation slot19Disease disease += plague spellStats
execute if score spellnumber3 spells matches 21 at @e[name=slot19] run particle minecraft:trial_omen ~ ~1 ~ 0.9 0.9 0.9 0.5 100
execute if score spellnumber3 spells matches 21 if score ward slot19 matches 1.. run function ch:wardslot19
execute if score spellnumber3 spells matches 21 run function ch:spellphasep5
execute if score spellnumber3 spells matches 21 run tellraw @a[tag=game3] ["",{"selector":"@p[tag=p6]"}," used Plague on Slot 19!"]

#Second wind
execute if score spellnumber3 spells matches 22 run execute if score durationSlot19 speedBuffs < secondWindDuration spellStats run scoreboard players operation durationSlot19 speedBuffs = secondWindDuration spellStats
execute if score spellnumber3 spells matches 22 run scoreboard players operation speedBuffSlot19 speedBuffs += secondWindSpeed spellStats
execute if score spellnumber3 spells matches 22 run scoreboard players operation speed slot19 += secondWindSpeed spellStats
execute if score spellnumber3 spells matches 22 if score slot19bleeding booleaneffects matches 0 run scoreboard players operation slot19 hp += secondWind spellStats
execute if score spellnumber3 spells matches 22 if score slot19bleeding booleaneffects matches 0 run scoreboard players operation slot19 hp += spellbuffsp5 spells
execute if score spellnumber3 spells matches 22 at @e[name=slot19] run particle minecraft:trial_spawner_detection_ominous ~ ~1 ~ 0.9 0.9 0.9 0.5 100
execute if score spellnumber3 spells matches 22 run scoreboard players set attackIsOngoingGame2 booleans 0
execute if score spellnumber3 spells matches 22 run scoreboard players set spellbuffsp5 spells 0
execute if score spellnumber3 spells matches 22 run tellraw @a[tag=game3] ["",{"selector":"@p[tag=p5]"}," used Second Wind on Slot 19!"]
#fountain of youth
execute if score spellnumber3 spells matches 25 run execute if score disarmedslot19 booleaneffects < fountainOfYouthDuration spellStats run scoreboard players operation disarmedslot19 booleaneffects = fountainOfYouthDuration spellStats
execute if score spellnumber3 spells matches 25 if score slot19bleeding booleaneffects matches 0 run scoreboard players operation slot19 hp += fountainOfYouth spellStats
execute if score spellnumber3 spells matches 25 if score slot19bleeding booleaneffects matches 0 run scoreboard players operation slot19 hp += spellbuffsp5 spells
execute if score spellnumber3 spells matches 25 at @e[name=slot19] run particle minecraft:composter ~ ~1 ~ 0.9 0.9 0.9 0.5 500
execute if score spellnumber3 spells matches 25 run scoreboard players set attackIsOngoingGame2 booleans 0
execute if score spellnumber3 spells matches 25 run scoreboard players set spellbuffsp5 spells 0
execute if score spellnumber3 spells matches 25 run tellraw @a[tag=game3] ["",{"selector":"@p[tag=p5]"}," used Fountain of Youth on Slot 19!"]
#overclock
execute if score spellnumber3 spells matches 27 run execute if score buffDurationSlot19 atkmodifiers < overclockDuration spellStats run scoreboard players operation buffDurationSlot19 atkmodifiers = overclockDuration spellStats
execute if score spellnumber3 spells matches 27 run scoreboard players operation attackBuffSlot19 atkmodifiers += overclock spellStats
execute if score spellnumber3 spells matches 27 run scoreboard players operation shield slot19 -= overclockAtk spellStats
execute if score spellnumber3 spells matches 27 if score shield slot19 matches ..0 run scoreboard players operation slot19 hp += shield slot19
execute if score spellnumber3 spells matches 27 at @e[name=slot19] run particle minecraft:trial_spawner_detection ~ ~1 ~ 0.9 0.9 0.9 0.5 400
execute if score spellnumber3 spells matches 27 run scoreboard players set attackIsOngoingGame2 booleans 0
execute if score spellnumber3 spells matches 27 run tellraw @a[tag=game3] ["",{"selector":"@p[tag=p5]"}," used Overclock on Slot 19!"]


#This goes at the bottom
execute if score shield slot17 matches ..0 run scoreboard players set shield slot17 0
execute if score shield slot18 matches ..0 run scoreboard players set shield slot18 0
execute if score shield slot19 matches ..0 run scoreboard players set shield slot19 0
execute if score shield slot20 matches ..0 run scoreboard players set shield slot20 0

