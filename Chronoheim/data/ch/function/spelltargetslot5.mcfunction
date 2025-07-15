effect clear @a[tag=game2] weakness
clear @a[tag=game2]

#Dragonforge
execute if score spellnumber3 spells matches 26 run execute if score durationSlot21 shield < dragonforgeDuration spellStats run scoreboard players operation durationSlot21 shield = dragonforgeDuration spellStats 
execute if score spellnumber3 spells matches 26 run scoreboard players operation shield slot21 += dragonforge spellStats
execute if score spellnumber3 spells matches 26 run execute if score alivep6 deaths matches 1 run scoreboard players operation shield slot21 += dragonforge spellStats
execute if score spellnumber3 spells matches 26 run function ch:spellphasep5
execute if score spellnumber3 spells matches 26 run execute if score alivep6 deaths matches 1 run execute at @n[type=armor_stand,name=slot21] run particle dragon_breath ~ ~1 ~ 0.9 0.9 0.9 0.1 400
execute if score spellnumber3 spells matches 26 run execute if score alivep6 deaths matches 2.. run execute at @n[type=armor_stand,name=slot21] run particle dragon_breath ~ ~1 ~ 0.9 0.9 0.9 0.1 100
execute if score spellnumber3 spells matches 26 run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p6]"}," used Dragonforge on Slot 21!"]

#Embiggen
execute if score spellnumber3 spells matches 13 run execute if score buffDurationSlot21 atkmodifiers < embiggenDuration spellStats run scoreboard players operation buffDurationSlot21 atkmodifiers = embiggenDuration spellStats
execute if score spellnumber3 spells matches 13 run scoreboard players operation attackBuffSlot21 atkmodifiers += embiggenBuff spellStats
execute if score spellnumber3 spells matches 13 run execute if score durationSlot21 shield < embiggenDuration spellStats run scoreboard players operation durationSlot21 shield = embiggenDuration spellStats 
execute if score spellnumber3 spells matches 13 run scoreboard players operation shield slot21 += embiggen spellStats
execute if score spellnumber3 spells matches 13 run function ch:spellphasep5
execute if score spellnumber3 spells matches 13 run execute at @n[type=armor_stand,name=slot21] run particle minecraft:egg_crack ~ ~1 ~ 0.9 0.9 0.9 0.1 100
execute if score spellnumber3 spells matches 13 run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p6]"}," used Embiggen on Slot 21!"]

#Embrittle
execute if score spellnumber3 spells matches 12 if score ward slot21 matches 0 run execute if score debuffDurationSlot21 atkmodifiers < embrittleDuration spellStats run scoreboard players operation debuffDurationSlot21 atkmodifiers = embrittleDuration spellStats
execute if score spellnumber3 spells matches 12 if score ward slot21 matches 0 run scoreboard players operation attackDebuffSlot21 atkmodifiers += embrittle spellStats
execute if score spellnumber3 spells matches 12 if score ward slot21 matches 1.. run function ch:wardslot21
execute if score spellnumber3 spells matches 12 run scoreboard players set attackIsOngoingGame2 booleans 0
execute if score spellnumber3 spells matches 12 run execute at @n[type=armor_stand,name=slot21] run particle minecraft:block_crumble{block_state:"minecraft:ice"} ~ ~1 ~ 0.9 0.9 0.9 0.1 200
execute if score spellnumber3 spells matches 12 run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p5]"}," used Embrittle on Slot 21!"]
#Evil Eye
execute if score spellnumber3 spells matches 15 if score ward slot21 matches 0 run scoreboard players operation marks slot21 += evilEye spellStats
execute if score spellnumber3 spells matches 15 if score ward slot21 matches 1.. run function ch:wardslot21
execute if score spellnumber3 spells matches 15 run scoreboard players set attackIsOngoingGame2 booleans 0
execute if score spellnumber3 spells matches 15 run execute at @n[type=armor_stand,name=slot21] run particle minecraft:effect ~ ~1 ~ 0.7 0.7 0.7 0.1 200
execute if score spellnumber3 spells matches 15 run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p5]"}," used Evil Eye on Slot 21!"]

#Frostbolt
execute if score spellnumber3 spells matches 6 run scoreboard players operation spelldmg32 saves = frostbolt spellStats
execute if score spellnumber3 spells matches 6 run scoreboard players operation spelldmg32 saves += spellbuffsp5 spells
execute if score spellnumber3 spells matches 6 run scoreboard players operation spelldmg32 saves += marks slot21
execute if score spellnumber3 spells matches 6 run scoreboard players operation spelldmg32 saves /= atkmultiplier slot21
execute if score spellnumber3 spells matches 6 run execute if score ward slot21 matches 0 run scoreboard players operation shield slot21 -= spelldmg32 saves
execute if score spellnumber3 spells matches 6 run execute if score ward slot21 matches 0 if score frostboltDuration spellStats > durationSlot21 speedDebuffs run scoreboard players operation durationSlot21 speedDebuffs = frostboltDuration spellStats
execute if score spellnumber3 spells matches 6 run execute if score ward slot21 matches 0 if score frostboltDuration spellStats > debuffDurationSlot21 atkmodifiers run scoreboard players operation debuffDurationSlot21 atkmodifiers = frostboltDuration spellStats
execute if score spellnumber3 spells matches 6 run execute if score ward slot21 matches 0 run scoreboard players operation speedDebuffSlot21 speedDebuffs += frostboltSpDebuff spellStats
execute if score spellnumber3 spells matches 6 run execute if score ward slot21 matches 0 run scoreboard players operation attackDebuffSlot21 atkmodifiers += frostboltDmgDebuff spellStats
execute if score spellnumber3 spells matches 6 run execute if score ward slot21 matches 0 run scoreboard players operation speed slot21 -= frostboltSpDebuff spellStats
execute if score spellnumber3 spells matches 6 run execute if score ward slot21 matches 0 if score shield slot21 matches ..0 run scoreboard players operation slot21 hp += shield slot21
execute if score spellnumber3 spells matches 6 run execute if score ward slot21 matches 1.. run function ch:wardslot21
execute if score spellnumber3 spells matches 6 run scoreboard players set spellbuffsp5 spells 0
execute if score spellnumber3 spells matches 6 run scoreboard players set attackIsOngoingGame2 booleans 0
execute if score spellnumber3 spells matches 6 run execute at @n[type=armor_stand,name=slot21] run particle minecraft:item_snowball ~ ~1 ~ 0.7 0.7 0.7 0.1 200
execute if score spellnumber3 spells matches 6 run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p5]"}," used Frostbolt on Slot 21!"]

#Heal
execute if score spellnumber3 spells matches 2 run scoreboard players operation spellHeal saves = heal spellStats
execute if score spellnumber3 spells matches 2 run scoreboard players operation spellHeal saves += spellbuffsp6 spells
execute if score spellnumber3 spells matches 2 run scoreboard players operation slot21 hp += spellHeal saves
execute if score spellnumber3 spells matches 2 run function ch:cleanseslot21
execute if score spellnumber3 spells matches 2 run scoreboard players set spellbuffsp6 spells 0
execute if score spellnumber3 spells matches 2 run function ch:spellphasep5
execute if score spellnumber3 spells matches 2 run execute at @n[type=armor_stand,name=slot21] run particle minecraft:composter ~ ~1 ~ 0.9 0.9 0.9 0.5 100
execute if score spellnumber3 spells matches 2 run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p6]"}," used Heal on Slot 21!"]

#Magic Missile
execute if score spellnumber3 spells matches 4 run scoreboard players add magicMissilex2 spells 1
execute if score spellnumber3 spells matches 4 run scoreboard players operation spelldmg32 saves = magicMissile spellStats
execute if score spellnumber3 spells matches 4 run scoreboard players operation spelldmg32 saves += spellbuffsp5 spells
execute if score spellnumber3 spells matches 4 run scoreboard players operation spelldmg32 saves += marks slot21
execute if score spellnumber3 spells matches 4 run scoreboard players operation spelldmg32 saves /= atkmultiplier slot21
execute if score spellnumber3 spells matches 4 run execute if score ward slot21 matches 0 run scoreboard players operation shield slot21 -= spelldmg32 saves
execute if score spellnumber3 spells matches 4 run execute if score ward slot21 matches 0 if score shield slot21 matches ..0 run scoreboard players operation slot21 hp += shield slot21
execute if score spellnumber3 spells matches 4 run execute if score ward slot21 matches 1.. run function ch:wardslot21
execute if score spellnumber3 spells matches 4 run execute at @n[type=armor_stand,name=slot21] run particle minecraft:enchanted_hit ~ ~1 ~ 0.7 0.7 0.7 0.5 300
execute if score spellnumber3 spells matches 4 run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p5]"}," smited Slot 21 with Magic Missle!"]
execute if score spellnumber3 spells matches 4 run execute if score magicMissilex2 spells matches 1 run function ch:spellgivetargetsp5
execute if score spellnumber3 spells matches 4 run execute if score magicMissilex2 spells matches 2 run scoreboard players set spellbuffsp5 spells 0
execute if score spellnumber3 spells matches 4 run execute if score magicMissilex2 spells matches 2 run clear @a[tag=p5] target
execute if score spellnumber3 spells matches 4 run execute if score magicMissilex2 spells matches 2 run scoreboard players set attackIsOngoingGame2 booleans 0
execute if score spellnumber3 spells matches 4 run execute if score magicMissilex2 spells matches 2 run scoreboard players set magicMissilex2 spells 0

#Protector's Rune
execute if score spellnumber3 spells matches 16 if score protectorsrune spellStats > durationSlot21 taunt run scoreboard players operation durationSlot21 taunt = protectorsrune spellStats
execute if score spellnumber3 spells matches 16 if score protectorsrune spellStats > durationSlot21 taunt if score ward slot21 matches 0 run scoreboard players operation marks slot21 += protectorsruneMarks spellStats
execute if score spellnumber3 spells matches 16 if score protectorsrune spellStats > durationSlot21 taunt if score ward slot21 matches 1.. run function ch:wardslot21
execute if score spellnumber3 spells matches 16 run function ch:spellphasep5
execute if score spellnumber3 spells matches 16 run execute at @n[type=armor_stand,name=slot21] run particle minecraft:block_crumble{block_state:"minecraft:emerald_ore"} ~ ~1 ~ 0.7 0.7 0.7 1 400
execute if score spellnumber3 spells matches 16 run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p6]"}," used Protector's Rune on Slot 21!"]

#Shield
execute if score spellnumber3 spells matches 8 run execute if score durationSlot21 shield < shieldDuration spellStats run scoreboard players operation durationSlot21 shield = shieldDuration spellStats 
execute if score spellnumber3 spells matches 8 run scoreboard players operation shield slot21 += shield spellStats
execute if score spellnumber3 spells matches 8 run function ch:spellphasep5
execute if score spellnumber3 spells matches 8 run execute at @n[type=armor_stand,name=slot21] run particle wax_off ~ ~1 ~ 0.7 0.7 0.7 0.1 400
execute if score spellnumber3 spells matches 8 run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p6]"}," used Shield on Slot 21!"]

#Ball Lightning
execute if score spellnumber3 spells matches 9 if score ward slot21 matches 0 run scoreboard players operation slot21 stun += shockOrb spellStats
execute if score spellnumber3 spells matches 9 if score ward slot21 matches 1.. run function ch:wardslot21
execute if score spellnumber3 spells matches 9 run scoreboard players set attackIsOngoingGame2 booleans 0
execute if score spellnumber3 spells matches 9 run execute at @n[type=armor_stand,name=slot21] run particle flash ~ ~1 ~ 0.9 0.9 0.9 0.1 10
execute if score spellnumber3 spells matches 9 run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p5]"}," used Ball Lightning on Slot 21!"]

#Witches Brew
execute if score spellnumber3 spells matches 23 run execute if score ward slot21 matches 0 if score witchesBrewDuration spellStats > durationSlot21 speedDebuffs run scoreboard players operation durationSlot21 speedDebuffs = witchesBrewDuration spellStats
execute if score spellnumber3 spells matches 23 run execute if score ward slot21 matches 0 if score witchesBrewDuration spellStats > debuffDurationSlot21 atkmodifiers run scoreboard players operation debuffDurationSlot21 atkmodifiers = witchesBrewDuration spellStats
execute if score spellnumber3 spells matches 23 run execute if score ward slot21 matches 0 if score witchesBrewDuration spellStats > durationSlot21 poison run scoreboard players operation durationSlot21 poison = witchesBrewDuration spellStats
execute if score spellnumber3 spells matches 23 run execute if score ward slot21 matches 0 if score witchesBrewDuration spellStats > durationSlot21 burn run scoreboard players operation durationSlot21 burn = witchesBrewDuration spellStats
execute if score spellnumber3 spells matches 23 run execute if score ward slot21 matches 0 run scoreboard players operation speedDebuffSlot21 speedDebuffs += witchesBrewSpDebuff spellStats
execute if score spellnumber3 spells matches 23 run execute if score ward slot21 matches 0 run scoreboard players operation attackDebuffSlot21 atkmodifiers += witchesBrewDmgDebuff spellStats
execute if score spellnumber3 spells matches 23 run execute if score ward slot21 matches 0 run scoreboard players operation slot21Poison poison += witchesBrew spellStats
execute if score spellnumber3 spells matches 23 run execute if score ward slot21 matches 0 run scoreboard players operation slot21Burn burn += witchesBrewBurn spellStats
execute if score spellnumber3 spells matches 23 run execute if score ward slot21 matches 0 run scoreboard players operation speed slot21 -= witchesBrewSpDebuff spellStats
execute if score spellnumber3 spells matches 23 run execute if score ward slot21 matches 1.. run function ch:wardslot21
execute if score spellnumber3 spells matches 23 run scoreboard players set attackIsOngoingGame2 booleans 0
execute if score spellnumber3 spells matches 23 run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p5]"}," used Witches Brew on Slot 21!"]

#Shifting Shadows Token
execute if score spellnumber3 spells matches -1 if score shadowsPart1 spells matches 1 if score ward slot21 matches 0 run scoreboard players set durationSlot17-21 fear 1 
execute if score spellnumber3 spells matches -1 if score shadowsPart1 spells matches 2 if score ward slot21 matches 0 run scoreboard players set durationSlot18-21 fear 1 
execute if score spellnumber3 spells matches -1 if score shadowsPart1 spells matches 3 if score ward slot21 matches 0 run scoreboard players set durationSlot19-21 fear 1 
execute if score spellnumber3 spells matches -1 if score shadowsPart1 spells matches 4 if score ward slot21 matches 0 run scoreboard players set durationSlot20-21 fear 1
execute if score spellnumber3 spells matches -1 if score ward slot21 matches 1.. run function ch:wardslot21
execute if score spellnumber3 spells matches -1 run scoreboard players set attackIsOngoingGame2 booleans 0
execute if score spellnumber3 spells matches -1 run execute at @n[type=armor_stand,name=slot21] run particle trial_omen ~ ~1 ~ 0.9 0.9 0.9 0.1 400
execute if score spellnumber3 spells matches -1 run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p5]"}," used Shifting Shadows to fear Slot 21!"]

#Shifting Shadows
execute if score spellnumber3 spells matches 28 run scoreboard players set shadowsPart1 spells 5
execute if score spellnumber3 spells matches 28 run function ch:spellgivetargetsp6
execute if score spellnumber3 spells matches 28 run scoreboard players set spellnumber3 spells -1
execute if score spellnumber3 spells matches 28 run execute at @n[type=armor_stand,name=slot21] run particle raid_omen ~ ~1 ~ 0.9 0.9 0.9 0.1 400
execute if score spellnumber3 spells matches 28 run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p6]"}," used Shifting Shadows to make Slot 21 scary!"]
#fireball
execute if score spellnumber3 spells matches 1 run scoreboard players operation spelldmg32 saves = fireball spellStats
execute if score spellnumber3 spells matches 1 run scoreboard players operation spelldmg32 saves += spellbuffsp5 spells
execute if score spellnumber3 spells matches 1 run scoreboard players operation spelldmg32 saves += marks slot21
execute if score spellnumber3 spells matches 1 run scoreboard players operation spelldmg32 saves /= atkmultiplier slot21
execute if score spellnumber3 spells matches 1 run execute if score ward slot21 matches 0 run scoreboard players operation shield slot21 -= spelldmg32 saves
execute if score spellnumber3 spells matches 1 run execute if score ward slot21 matches 0 run scoreboard players operation slot21 hp += shield slot21
execute if score spellnumber3 spells matches 1 run execute if score ward slot21 matches 0 if score durationSlot21 burn < fireballDuration spellStats run scoreboard players operation durationSlot21 burn = fireballDuration spellStats
execute if score spellnumber3 spells matches 1 run execute if score ward slot21 matches 0 run scoreboard players operation slot21Burn burn += fireballBurn spellStats
execute if score spellnumber3 spells matches 1 at @e[name=slot21] run particle minecraft:flame ~ ~1 ~ 0.9 0.9 0.9 0.5 100
execute if score spellnumber3 spells matches 1 run execute if score ward slot21 matches 1.. run function ch:wardslot21
execute if score spellnumber3 spells matches 1 run scoreboard players set spellbuffsp5 spells 0
execute if score spellnumber3 spells matches 1 run scoreboard players set attackIsOngoingGame2 booleans 0
execute if score spellnumber3 spells matches 1 run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p5]"}," used Fireball on Slot 21!"]
#meteor
execute if score spellnumber3 spells matches 7 run scoreboard players operation spelldmg32 saves = meteor spellStats
execute if score spellnumber3 spells matches 7 run scoreboard players operation spelldmg32 saves += spellbuffsp5 spells
execute if score spellnumber3 spells matches 7 run scoreboard players operation spelldmg32 saves += marks slot21
execute if score spellnumber3 spells matches 7 run scoreboard players operation spelldmg32 saves /= atkmultiplier slot21
execute if score spellnumber3 spells matches 7 run execute if score ward slot21 matches 0 run scoreboard players operation shield slot21 -= spelldmg32 saves
execute if score spellnumber3 spells matches 7 run execute if score ward slot21 matches 0 if score shield slot21 matches ..0 run scoreboard players operation slot21 hp += shield slot21
execute if score spellnumber3 spells matches 7 at @e[name=slot21] run particle minecraft:lava ~ ~1 ~ 0.9 0.9 0.9 0.5 100
execute if score spellnumber3 spells matches 7 at @e[name=slot23] run particle minecraft:lava ~ ~1 ~ 0.9 0.9 0.9 0.5 50
execute if score spellnumber3 spells matches 7 run execute if score ward slot21 matches 1.. run function ch:wardslot21
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
execute if score spellnumber3 spells matches 7 run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p5]"}," used Meteor on Slot 21!"]

#witchbolt
execute if score spellnumber3 spells matches 10 run scoreboard players operation spelldmg32 saves = witchbolt spellStats
execute if score spellnumber3 spells matches 10 run scoreboard players operation spelldmg32 saves += spellbuffsp5 spells
execute if score spellnumber3 spells matches 10 run scoreboard players operation spelldmg32 saves += marks slot21
execute if score spellnumber3 spells matches 10 run scoreboard players operation spelldmg32 saves /= atkmultiplier slot21
execute if score spellnumber3 spells matches 10 run execute if score ward slot21 matches 0 run scoreboard players operation shield slot21 -= spelldmg32 saves
execute if score spellnumber3 spells matches 10 run execute if score ward slot21 matches 0 if score shield slot21 matches ..0 run scoreboard players operation slot21 hp += shield slot21
execute if score spellnumber3 spells matches 10 at @e[name=slot21] run particle minecraft:enchanted_hit ~ ~1 ~ 0.9 0.9 0.9 0.5 200
execute if score spellnumber3 spells matches 10 run execute if score ward slot21 matches 1.. run function ch:wardslot21
execute if score spellnumber3 spells matches 10 run scoreboard players set spellbuffsp5 spells 0
execute if score spellnumber3 spells matches 10 run scoreboard players set attackIsOngoingGame2 booleans 0
execute if score spellnumber3 spells matches 10 run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p5]"}," used Witch Bolt on Slot 21!"]
#ward
execute if score spellnumber3 spells matches 19 run scoreboard players set ward slot21 1
execute if score spellnumber3 spells matches 19 at @e[name=slot21] run particle minecraft:ominous_spawning ~ ~1 ~ 0.9 0.9 0.9 0.1 100
execute if score spellnumber3 spells matches 19 run function ch:spellphasep5
execute if score spellnumber3 spells matches 19 run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p6]"}," used Ward on Slot 21!"]
#plague
execute if score spellnumber3 spells matches 21 if score ward slot21 matches 0 run scoreboard players operation slot21Disease disease += plague spellStats
execute if score spellnumber3 spells matches 21 at @e[name=slot21] run particle minecraft:trial_omen ~ ~1 ~ 0.9 0.9 0.9 0.5 100
execute if score spellnumber3 spells matches 21 if score ward slot21 matches 1.. run function ch:wardslot21
execute if score spellnumber3 spells matches 21 run scoreboard players set attackIsOngoingGame2 booleans 0
execute if score spellnumber3 spells matches 21 run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p5]"}," used Plague on Slot 21!"]

#Second wind
execute if score spellnumber3 spells matches 22 run execute if score durationSlot21 speedBuffs < secondWindDuration spellStats run scoreboard players operation durationSlot21 speedBuffs = secondWindDuration spellStats
execute if score spellnumber3 spells matches 22 run scoreboard players operation speedBuffSlot21 speedBuffs += secondWindSpeed spellStats
execute if score spellnumber3 spells matches 22 run scoreboard players operation speed slot21 += secondWindSpeed spellStats
execute if score spellnumber3 spells matches 22 if score slot21bleeding booleaneffects matches 0 run scoreboard players operation slot21 hp += secondWind spellStats
execute if score spellnumber3 spells matches 22 if score slot21bleeding booleaneffects matches 0 run scoreboard players operation slot21 hp += spellbuffsp6 spells
execute if score spellnumber3 spells matches 22 at @e[name=slot21] run particle minecraft:trial_spawner_detection_ominous ~ ~1 ~ 0.9 0.9 0.9 0.5 100
execute if score spellnumber3 spells matches 22 run function ch:spellphasep5
execute if score spellnumber3 spells matches 22 run scoreboard players set spellbuffsp6 spells 0
execute if score spellnumber3 spells matches 22 run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p6]"}," used Second Wind on Slot 21!"]
#fountain of youth
execute if score spellnumber3 spells matches 25 run execute if score disarmedslot21 booleaneffects < fountainOfYouthDuration spellStats run scoreboard players operation disarmedslot21 booleaneffects = fountainOfYouthDuration spellStats
execute if score spellnumber3 spells matches 25 if score slot21bleeding booleaneffects matches 0 run scoreboard players operation slot21 hp += fountainOfYouth spellStats
execute if score spellnumber3 spells matches 25 if score slot21bleeding booleaneffects matches 0 run scoreboard players operation slot21 hp += spellbuffsp6 spells
execute if score spellnumber3 spells matches 25 at @e[name=slot21] run particle minecraft:composter ~ ~1 ~ 0.9 0.9 0.9 0.5 500
execute if score spellnumber3 spells matches 25 run function ch:spellphasep5
execute if score spellnumber3 spells matches 25 run scoreboard players set spellbuffsp6 spells 0
execute if score spellnumber3 spells matches 25 run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p6]"}," used Fountain of Youth on Slot 21!"]
#overclock
execute if score spellnumber3 spells matches 27 run execute if score buffDurationSlot21 atkmodifiers < overclockDuration spellStats run scoreboard players operation buffDurationSlot21 atkmodifiers = overclockDuration spellStats
execute if score spellnumber3 spells matches 27 run scoreboard players operation attackBuffSlot21 atkmodifiers += overclock spellStats
execute if score spellnumber3 spells matches 27 run scoreboard players operation shield slot21 -= overclockAtk spellStats
execute if score spellnumber3 spells matches 27 if score shield slot21 matches ..0 run scoreboard players operation slot21 hp += shield slot21
execute if score spellnumber3 spells matches 27 at @e[name=slot21] run particle minecraft:trial_spawner_detection ~ ~1 ~ 0.9 0.9 0.9 0.5 400
execute if score spellnumber3 spells matches 27 run function ch:spellphasep5
execute if score spellnumber3 spells matches 27 run tellraw @a[tag=game2] ["",{"selector":"@p[tag=p6]"}," used Overclock on Slot 21!"]


#This goes at the bottom
execute if score shield slot21 matches ..0 run scoreboard players set shield slot21 0
execute if score shield slot23 matches ..0 run scoreboard players set shield slot23 0
execute if score shield slot23 matches ..0 run scoreboard players set shield slot23 0
execute if score shield slot24 matches ..0 run scoreboard players set shield slot24 0

