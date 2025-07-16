effect clear @a[tag=game3] weakness
clear @a[tag=game3]

#Dragonforge
execute if score spellnumber3 spells matches 26 run execute if score durationSlot22 shield < dragonforgeDuration spellStats run scoreboard players operation durationSlot22 shield = dragonforgeDuration spellStats
execute if score spellnumber3 spells matches 26 run scoreboard players operation shield slot23 += dragonforge spellStats
execute if score spellnumber3 spells matches 26 run execute if score alivep6 deaths matches 1 run scoreboard players operation shield slot23 += dragonforge spellStats
execute if score spellnumber3 spells matches 26 run function chthree:spellphasep5
execute if score spellnumber3 spells matches 26 run execute if score alivep6 deaths matches 1 run execute at @n[type=armor_stand,name=slot23] run particle dragon_breath ~ ~1 ~ 0.9 0.9 0.9 0.1 400
execute if score spellnumber3 spells matches 26 run execute if score alivep6 deaths matches 2.. run execute at @n[type=armor_stand,name=slot23] run particle dragon_breath ~ ~1 ~ 0.9 0.9 0.9 0.1 100
execute if score spellnumber3 spells matches 26 run tellraw @a[tag=game3] ["",{"selector":"@p[tag=p6]"}," used Dragonforge on Slot 22!"]

#Embiggen
execute if score spellnumber3 spells matches 13 run execute if score buffDurationSlot22 atkmodifiers < embiggenDuration spellStats run scoreboard players operation buffDurationSlot22 atkmodifiers = embiggenDuration spellStats
execute if score spellnumber3 spells matches 13 run scoreboard players operation attackBuffSlot22 atkmodifiers += embiggenBuff spellStats
execute if score spellnumber3 spells matches 13 run execute if score durationSlot22 shield < embiggenDuration spellStats run scoreboard players operation durationSlot22 shield = embiggenDuration spellStats
execute if score spellnumber3 spells matches 13 run scoreboard players operation shield slot23 += embiggen spellStats
execute if score spellnumber3 spells matches 13 run function chthree:spellphasep5
execute if score spellnumber3 spells matches 13 run execute at @n[type=armor_stand,name=slot23] run particle minecraft:egg_crack ~ ~1 ~ 0.9 0.9 0.9 0.1 100
execute if score spellnumber3 spells matches 13 run tellraw @a[tag=game3] ["",{"selector":"@p[tag=p6]"}," used Embiggen on Slot 22!"]

#Embrittle
execute if score spellnumber3 spells matches 12 if score ward slot23 matches 0 run execute if score debuffDurationSlot22 atkmodifiers < embrittleDuration spellStats run scoreboard players operation debuffDurationSlot22 atkmodifiers = embrittleDuration spellStats
execute if score spellnumber3 spells matches 12 if score ward slot23 matches 0 run scoreboard players operation attackDebuffSlot22 atkmodifiers += embrittle spellStats
execute if score spellnumber3 spells matches 12 if score ward slot23 matches 1.. run function chthree:wardslot23
execute if score spellnumber3 spells matches 12 run scoreboard players set attackIsOngoingGame3 booleans 0
execute if score spellnumber3 spells matches 12 run execute at @n[type=armor_stand,name=slot23] run particle minecraft:block_crumble{block_state:"minecraft:ice"} ~ ~1 ~ 0.9 0.9 0.9 0.1 200
execute if score spellnumber3 spells matches 12 run tellraw @a[tag=game3] ["",{"selector":"@p[tag=p5]"}," used Embrittle on Slot 22!"]

#Evil Eye
execute if score spellnumber3 spells matches 15 if score ward slot23 matches 0 run scoreboard players operation marks slot23 += evilEye spellStats
execute if score spellnumber3 spells matches 15 if score ward slot23 matches 1.. run function chthree:wardslot23
execute if score spellnumber3 spells matches 15 run scoreboard players set attackIsOngoingGame3 booleans 0
execute if score spellnumber3 spells matches 15 run execute at @n[type=armor_stand,name=slot23] run particle minecraft:effect ~ ~1 ~ 0.7 0.7 0.7 0.1 200
execute if score spellnumber3 spells matches 6 run execute at @n[type=armor_stand,name=slot23] run particle minecraft:item_snowball ~ ~1 ~ 0.7 0.7 0.7 0.1 200
execute if score spellnumber3 spells matches 15 run tellraw @a[tag=game3] ["",{"selector":"@p[tag=p5]"}," used Evil Eye on Slot 22!"]

#Frostbolt
execute if score spellnumber3 spells matches 6 run scoreboard players operation spelldmg3 saves = frostbolt spellStats
execute if score spellnumber3 spells matches 6 run scoreboard players operation spelldmg3 saves += spellbuffsp5 spells
execute if score spellnumber3 spells matches 6 run scoreboard players operation spelldmg3 saves += marks slot23
execute if score spellnumber3 spells matches 6 run scoreboard players operation spelldmg3 saves /= atkmultiplier slot23
execute if score spellnumber3 spells matches 6 run execute if score ward slot23 matches 0 run scoreboard players operation shield slot23 -= spelldmg3 saves
execute if score spellnumber3 spells matches 6 run execute if score ward slot23 matches 0 if score frostboltDuration spellStats > durationSlot22 speedDebuffs run scoreboard players operation durationSlot22 speedDebuffs = frostboltDuration spellStats
execute if score spellnumber3 spells matches 6 run execute if score ward slot23 matches 0 if score frostboltDuration spellStats > debuffDurationSlot22 atkmodifiers run scoreboard players operation debuffDurationSlot22 atkmodifiers = frostboltDuration spellStats
execute if score spellnumber3 spells matches 6 run execute if score ward slot23 matches 0 run scoreboard players operation speedDebuffSlot22 speedDebuffs += frostboltSpDebuff spellStats
execute if score spellnumber3 spells matches 6 run execute if score ward slot23 matches 0 run scoreboard players operation attackDebuffSlot22 atkmodifiers += frostboltDmgDebuff spellStats
execute if score spellnumber3 spells matches 6 run execute if score ward slot23 matches 0 run scoreboard players operation speed slot23 -= frostboltSpDebuff spellStats
execute if score spellnumber3 spells matches 6 run execute if score ward slot23 matches 0 if score shield slot23 matches ..0 run scoreboard players operation slot23 hp += shield slot23
execute if score spellnumber3 spells matches 6 run execute if score ward slot23 matches 1.. run function chthree:wardslot23
execute if score spellnumber3 spells matches 6 run scoreboard players set spellbuffsp5 spells 0
execute if score spellnumber3 spells matches 6 run scoreboard players set attackIsOngoingGame3 booleans 0
execute if score spellnumber3 spells matches 6 run execute at @n[type=armor_stand,name=slot23] run particle minecraft:item_snowball ~ ~1 ~ 0.7 0.7 0.7 0.1 200
execute if score spellnumber3 spells matches 6 run tellraw @a[tag=game3] ["",{"selector":"@p[tag=p5]"}," used Frostbolt on Slot 22!"]

#Heal
execute if score spellnumber3 spells matches 2 run scoreboard players operation spellHeal saves = heal spellStats
execute if score spellnumber3 spells matches 2 run scoreboard players operation spellHeal saves += spellbuffsp6 spells
execute if score spellnumber3 spells matches 2 run scoreboard players operation slot23 hp += spellHeal saves
execute if score spellnumber3 spells matches 2 run function chthree:cleanseslot23
execute if score spellnumber3 spells matches 2 run scoreboard players set spellbuffsp6 spells 0
execute if score spellnumber3 spells matches 2 run function chthree:spellphasep5
execute if score spellnumber3 spells matches 2 run execute at @n[type=armor_stand,name=slot23] run particle minecraft:composter ~ ~1 ~ 0.9 0.9 0.9 0.5 100
execute if score spellnumber3 spells matches 2 run tellraw @a[tag=game3] ["",{"selector":"@p[tag=p6]"}," used Heal on Slot 22!"]

#Magic Missile
execute if score spellnumber3 spells matches 4 run scoreboard players add magicMissilex4 spells 1
execute if score spellnumber3 spells matches 4 run scoreboard players operation spelldmg3 saves = magicMissile spellStats
execute if score spellnumber3 spells matches 4 run scoreboard players operation spelldmg3 saves += spellbuffsp5 spells
execute if score spellnumber3 spells matches 4 run scoreboard players operation spelldmg3 saves += marks slot23
execute if score spellnumber3 spells matches 4 run scoreboard players operation spelldmg3 saves /= atkmultiplier slot23
execute if score spellnumber3 spells matches 4 run execute if score ward slot23 matches 0 run scoreboard players operation shield slot23 -= spelldmg3 saves
execute if score spellnumber3 spells matches 4 run execute if score ward slot23 matches 0 if score shield slot23 matches ..0 run scoreboard players operation slot23 hp += shield slot23
execute if score spellnumber3 spells matches 4 run execute if score ward slot23 matches 1.. run function chthree:wardslot23
execute if score spellnumber3 spells matches 4 run execute at @n[type=armor_stand,name=slot23] run particle minecraft:enchanted_hit ~ ~1 ~ 0.7 0.7 0.7 0.5 300
execute if score spellnumber3 spells matches 4 run tellraw @a[tag=game3] ["",{"selector":"@p[tag=p5]"}," smited Slot 22 with Magic Missle!"]
execute if score spellnumber3 spells matches 4 run execute if score magicMissilex4 spells matches 1 run function chthree:spellgivetargetsp5
execute if score spellnumber3 spells matches 4 run execute if score magicMissilex4 spells matches 2 run scoreboard players set spellbuffsp5 spells 0
execute if score spellnumber3 spells matches 4 run execute if score magicMissilex4 spells matches 2 run clear @a[tag=p5] target
execute if score spellnumber3 spells matches 4 run execute if score magicMissilex4 spells matches 2 run scoreboard players set attackIsOngoingGame3 booleans 0
execute if score spellnumber3 spells matches 4 run execute if score magicMissilex4 spells matches 2 run scoreboard players set magicMissilex4 spells 0

#Protector's Rune
execute if score spellnumber3 spells matches 16 if score protectorsrune spellStats > durationSlot22 taunt run scoreboard players operation durationSlot22 taunt = protectorsrune spellStats
execute if score spellnumber3 spells matches 16 if score protectorsrune spellStats > durationSlot22 taunt if score ward slot23 matches 0 run scoreboard players operation marks slot23 += protectorsruneMarks spellStats
execute if score spellnumber3 spells matches 16 if score protectorsrune spellStats > durationSlot22 taunt if score ward slot23 matches 1.. run function chthree:wardslot23
execute if score spellnumber3 spells matches 16 run function chthree:spellphasep5
execute if score spellnumber3 spells matches 16 run execute at @n[type=armor_stand,name=slot23] run particle minecraft:block_crumble{block_state:"minecraft:emerald_ore"} ~ ~1 ~ 0.7 0.7 0.7 1 400
execute if score spellnumber3 spells matches 16 run tellraw @a[tag=game3] ["",{"selector":"@p[tag=p6]"}," used Protector's Rune on Slot 22!"]

#Shield
execute if score spellnumber3 spells matches 8 run execute if score durationSlot22 shield < shieldDuration spellStats run scoreboard players operation durationSlot22 shield = shieldDuration spellStats
execute if score spellnumber3 spells matches 8 run scoreboard players operation shield slot23 += shield spellStats
execute if score spellnumber3 spells matches 8 run function chthree:spellphasep5
execute if score spellnumber3 spells matches 8 run execute at @n[type=armor_stand,name=slot23] run particle wax_off ~ ~1 ~ 0.7 0.7 0.7 0.1 400
execute if score spellnumber3 spells matches 8 run tellraw @a[tag=game3] ["",{"selector":"@p[tag=p6]"}," used Shield on Slot 22!"]

#Ball Lightning
execute if score spellnumber3 spells matches 9 if score ward slot23 matches 0 run scoreboard players operation slot23 stun += shockOrb spellStats
execute if score spellnumber3 spells matches 9 if score ward slot23 matches 1.. run function chthree:wardslot23
execute if score spellnumber3 spells matches 9 run scoreboard players set attackIsOngoingGame3 booleans 0
execute if score spellnumber3 spells matches 9 run execute at @n[type=armor_stand,name=slot23] run particle flash ~ ~1 ~ 0.9 0.9 0.9 0.1 10
execute if score spellnumber3 spells matches 9 run tellraw @a[tag=game3] ["",{"selector":"@p[tag=p5]"}," used Ball Lightning on Slot 22!"]

#Witches Brew
execute if score spellnumber3 spells matches 23 run execute if score ward slot23 matches 0 if score witchesBrewDuration spellStats > durationSlot22 speedDebuffs run scoreboard players operation durationSlot22 speedDebuffs = witchesBrewDuration spellStats
execute if score spellnumber3 spells matches 23 run execute if score ward slot23 matches 0 if score witchesBrewDuration spellStats > debuffDurationSlot22 atkmodifiers run scoreboard players operation debuffDurationSlot22 atkmodifiers = witchesBrewDuration spellStats
execute if score spellnumber3 spells matches 23 run execute if score ward slot23 matches 0 if score witchesBrewDuration spellStats > durationSlot22 poison run scoreboard players operation durationSlot22 poison = witchesBrewDuration spellStats
execute if score spellnumber3 spells matches 23 run execute if score ward slot23 matches 0 if score witchesBrewDuration spellStats > durationSlot22 burn run scoreboard players operation durationSlot22 burn = witchesBrewDuration spellStats
execute if score spellnumber3 spells matches 23 run execute if score ward slot23 matches 0 run scoreboard players operation speedDebuffSlot22 speedDebuffs += witchesBrewSpDebuff spellStats
execute if score spellnumber3 spells matches 23 run execute if score ward slot23 matches 0 run scoreboard players operation attackDebuffSlot22 atkmodifiers += witchesBrewDmgDebuff spellStats
execute if score spellnumber3 spells matches 23 run execute if score ward slot23 matches 0 run scoreboard players operation slot23Poison poison += witchesBrew spellStats
execute if score spellnumber3 spells matches 23 run execute if score ward slot23 matches 0 run scoreboard players operation slot23Burn burn += witchesBrewBurn spellStats
execute if score spellnumber3 spells matches 23 run execute if score ward slot23 matches 0 run scoreboard players operation speed slot23 -= witchesBrewSpDebuff spellStats
execute if score spellnumber3 spells matches 23 run execute if score ward slot23 matches 1.. run function chthree:wardslot23
execute if score spellnumber3 spells matches 23 run scoreboard players set attackIsOngoingGame3 booleans 0
execute if score spellnumber3 spells matches 23 run tellraw @a[tag=game3] ["",{"selector":"@p[tag=p5]"}," used Witches Brew on Slot 22!"]

#Shifting Shadows Token
execute if score spellnumber3 spells matches -1 if score shadowsPart1 spells matches 1 if score ward slot23 matches 0 run scoreboard players set durationSlot17-22 fear 1
execute if score spellnumber3 spells matches -1 if score shadowsPart1 spells matches 2 if score ward slot23 matches 0 run scoreboard players set durationSlot18-22 fear 1
execute if score spellnumber3 spells matches -1 if score shadowsPart1 spells matches 3 if score ward slot23 matches 0 run scoreboard players set durationSlot19-22 fear 1
execute if score spellnumber3 spells matches -1 if score shadowsPart1 spells matches 4 if score ward slot23 matches 0 run scoreboard players set durationSlot20-22 fear 1
execute if score spellnumber3 spells matches -1 if score ward slot23 matches 1.. run function chthree:wardslot23
execute if score spellnumber3 spells matches -1 run scoreboard players set attackIsOngoingGame3 booleans 0
execute if score spellnumber3 spells matches -1 run execute at @n[type=armor_stand,name=slot23] run particle trial_omen ~ ~1 ~ 0.9 0.9 0.9 0.1 400
execute if score spellnumber3 spells matches -1 run tellraw @a[tag=game3] ["",{"selector":"@p[tag=p5]"}," used Shifting Shadows to fear Slot 22!"]

#Shifting Shadows
execute if score spellnumber3 spells matches 28 run scoreboard players set shadowsPart1 spells 6
execute if score spellnumber3 spells matches 28 run function chthree:spellgivetargetsp6
execute if score spellnumber3 spells matches 28 run scoreboard players set spellnumber3 spells -1
execute if score spellnumber3 spells matches 28 run execute at @n[type=armor_stand,name=slot23] run particle raid_omen ~ ~1 ~ 0.9 0.9 0.9 0.1 400
execute if score spellnumber3 spells matches 28 run tellraw @a[tag=game3] ["",{"selector":"@p[tag=p6]"}," used Shifting Shadows to make Slot 22 scary!"]

#fireball
execute if score spellnumber3 spells matches 1 run scoreboard players operation spelldmg3 saves = fireball spellStats
execute if score spellnumber3 spells matches 1 run scoreboard players operation spelldmg3 saves += spellbuffsp5 spells
execute if score spellnumber3 spells matches 1 run scoreboard players operation spelldmg3 saves += marks slot23
execute if score spellnumber3 spells matches 1 run scoreboard players operation spelldmg3 saves /= atkmultiplier slot23
execute if score spellnumber3 spells matches 1 run execute if score ward slot23 matches 0 run scoreboard players operation shield slot23 -= spelldmg3 saves
execute if score spellnumber3 spells matches 1 run execute if score ward slot23 matches 0 run scoreboard players operation slot23 hp += shield slot23
execute if score spellnumber3 spells matches 1 run execute if score ward slot23 matches 0 if score durationSlot22 burn < fireballDuration spellStats run scoreboard players operation durationSlot22 burn = fireballDuration spellStats
execute if score spellnumber3 spells matches 1 run execute if score ward slot23 matches 0 run scoreboard players operation slot23Burn burn += fireballBurn spellStats
execute if score spellnumber3 spells matches 1 at @e[name=slot23] run particle minecraft:flame ~ ~1 ~ 0.9 0.9 0.9 0.5 100
execute if score spellnumber3 spells matches 1 run execute if score ward slot23 matches 1.. run function chthree:wardslot23
execute if score spellnumber3 spells matches 1 run scoreboard players set spellbuffsp5 spells 0
execute if score spellnumber3 spells matches 1 run scoreboard players set attackIsOngoingGame3 booleans 0
execute if score spellnumber3 spells matches 1 run tellraw @a[tag=game3] ["",{"selector":"@p[tag=p5]"}," used Fireball on Slot 22!"]

#meteor
execute if score spellnumber3 spells matches 7 run scoreboard players operation spelldmg3 saves = meteor spellStats
execute if score spellnumber3 spells matches 7 run scoreboard players operation spelldmg3 saves += spellbuffsp5 spells
execute if score spellnumber3 spells matches 7 run scoreboard players operation spelldmg3 saves += marks slot23
execute if score spellnumber3 spells matches 7 run scoreboard players operation spelldmg3 saves /= atkmultiplier slot23
execute if score spellnumber3 spells matches 7 run execute if score ward slot23 matches 0 run scoreboard players operation shield slot23 -= spelldmg3 saves
execute if score spellnumber3 spells matches 7 run execute if score ward slot23 matches 0 if score shield slot23 matches ..0 run scoreboard players operation slot23 hp += shield slot23
execute if score spellnumber3 spells matches 7 at @e[name=slot23] run particle minecraft:lava ~ ~1 ~ 0.9 0.9 0.9 0.5 100
execute if score spellnumber3 spells matches 7 at @e[name=slot21] run particle minecraft:lava ~ ~1 ~ 0.9 0.9 0.9 0.5 50
execute if score spellnumber3 spells matches 7 at @e[name=slot23] run particle minecraft:lava ~ ~1 ~ 0.9 0.9 0.9 0.5 50
execute if score spellnumber3 spells matches 7 run execute if score ward slot23 matches 1.. run function chthree:wardslot23
execute if score spellnumber3 spells matches 7 run scoreboard players operation spelldmg3 saves = meteor spellStats
execute if score spellnumber3 spells matches 7 run scoreboard players operation spelldmg3 saves += spellbuffsp6 spells
execute if score spellnumber3 spells matches 7 run scoreboard players operation spelldmg3 saves /= meteorSplash spellStats
execute if score spellnumber3 spells matches 7 run scoreboard players operation spelldmg3 saves += marks slot21
execute if score spellnumber3 spells matches 7 run scoreboard players operation spelldmg3 saves /= atkmultiplier slot21
execute if score spellnumber3 spells matches 7 run execute if score ward slot21 matches 0 run scoreboard players operation shield slot21 -= spelldmg3 saves
execute if score spellnumber3 spells matches 7 run execute if score ward slot21 matches 0 if score shield slot21 matches ..0 run scoreboard players operation slot21 hp += shield slot21
execute if score spellnumber3 spells matches 7 run execute if score ward slot21 matches 1.. run function chthree:wardslot21
execute if score spellnumber3 spells matches 7 run scoreboard players operation spelldmg3 saves = meteor spellStats
execute if score spellnumber3 spells matches 7 run scoreboard players operation spelldmg3 saves += spellbuffsp6 spells
execute if score spellnumber3 spells matches 7 run scoreboard players operation spelldmg3 saves /= meteorSplash spellStats
execute if score spellnumber3 spells matches 7 run scoreboard players operation spelldmg3 saves += marks slot23
execute if score spellnumber3 spells matches 7 run scoreboard players operation spelldmg3 saves /= atkmultiplier slot23
execute if score spellnumber3 spells matches 7 run execute if score ward slot23 matches 0 run scoreboard players operation shield slot23 -= spelldmg3 saves
execute if score spellnumber3 spells matches 7 run execute if score ward slot23 matches 0 if score shield slot23 matches ..0 run scoreboard players operation slot23 hp += shield slot23
execute if score spellnumber3 spells matches 7 run execute if score ward slot23 matches 1.. run function chthree:wardslot23
execute if score spellnumber3 spells matches 7 run scoreboard players set spellbuffsp5 spells 0
execute if score spellnumber3 spells matches 7 run scoreboard players set attackIsOngoingGame3 booleans 0
execute if score spellnumber3 spells matches 7 run tellraw @a[tag=game3] ["",{"selector":"@p[tag=p5]"}," used Meteor on Slot 22!"]

#witchbolt
execute if score spellnumber3 spells matches 10 run scoreboard players operation spelldmg3 saves = witchbolt spellStats
execute if score spellnumber3 spells matches 10 run scoreboard players operation spelldmg3 saves += spellbuffsp5 spells
execute if score spellnumber3 spells matches 10 run scoreboard players operation spelldmg3 saves += marks slot23
execute if score spellnumber3 spells matches 10 run scoreboard players operation spelldmg3 saves /= atkmultiplier slot23
execute if score spellnumber3 spells matches 10 run execute if score ward slot23 matches 0 run scoreboard players operation shield slot23 -= spelldmg3 saves
execute if score spellnumber3 spells matches 10 run execute if score ward slot23 matches 0 if score shield slot23 matches ..0 run scoreboard players operation slot23 hp += shield slot23
execute if score spellnumber3 spells matches 10 at @e[name=slot23] run particle minecraft:enchanted_hit ~ ~1 ~ 0.9 0.9 0.9 0.5 200
execute if score spellnumber3 spells matches 10 run execute if score ward slot23 matches 1.. run function chthree:wardslot23
execute if score spellnumber3 spells matches 10 run scoreboard players set spellbuffsp5 spells 0
execute if score spellnumber3 spells matches 10 run scoreboard players set attackIsOngoingGame3 booleans 0
execute if score spellnumber3 spells matches 10 run tellraw @a[tag=game3] ["",{"selector":"@p[tag=p5]"}," used Witch Bolt on Slot 22!"]
#ward
execute if score spellnumber3 spells matches 19 run scoreboard players set ward slot23 1
execute if score spellnumber3 spells matches 19 at @e[name=slot23] run particle minecraft:ominous_spawning ~ ~1 ~ 0.9 0.9 0.9 0.1 100
execute if score spellnumber3 spells matches 19 run function chthree:spellphasep5
execute if score spellnumber3 spells matches 19 run tellraw @a[tag=game3] ["",{"selector":"@p[tag=p6]"}," used Ward on Slot 22!"]

#plague
execute if score spellnumber3 spells matches 21 if score ward slot23 matches 0 run scoreboard players operation slot23Disease disease += plague spellStats
execute if score spellnumber3 spells matches 21 at @e[name=slot23] run particle minecraft:trial_omen ~ ~1 ~ 0.9 0.9 0.9 0.5 100
execute if score spellnumber3 spells matches 21 if score ward slot23 matches 1.. run function chthree:wardslot23
execute if score spellnumber3 spells matches 21 run scoreboard players set attackIsOngoingGame3 booleans 0
execute if score spellnumber3 spells matches 21 run tellraw @a[tag=game3] ["",{"selector":"@p[tag=p5]"}," used Plague on Slot 22!"]

#Second wind
execute if score spellnumber3 spells matches 22 run execute if score durationSlot22 speedBuffs < secondWindDuration spellStats run scoreboard players operation durationSlot22 speedBuffs = secondWindDuration spellStats
execute if score spellnumber3 spells matches 22 run scoreboard players operation speedBuffSlot22 speedBuffs += secondWindSpeed spellStats
execute if score spellnumber3 spells matches 22 run scoreboard players operation speed slot23 += secondWindSpeed spellStats
execute if score spellnumber3 spells matches 22 if score slot23bleeding booleaneffects matches 0 run scoreboard players operation slot23 hp += secondWind spellStats
execute if score spellnumber3 spells matches 22 if score slot23bleeding booleaneffects matches 0 run scoreboard players operation slot23 hp += spellbuffsp6 spells
execute if score spellnumber3 spells matches 22 at @e[name=slot23] run particle minecraft:trial_spawner_detection_ominous ~ ~1 ~ 0.9 0.9 0.9 0.5 100
execute if score spellnumber3 spells matches 22 run function chthree:spellphasep5
execute if score spellnumber3 spells matches 22 run scoreboard players set spellbuffsp6 spells 0
execute if score spellnumber3 spells matches 22 run tellraw @a[tag=game3] ["",{"selector":"@p[tag=p6]"}," used Second Wind on Slot 22!"]

#fountain of youth
execute if score spellnumber3 spells matches 25 run execute if score disarmedslot23 booleaneffects < fountainOfYouthDuration spellStats run scoreboard players operation disarmedslot23 booleaneffects = fountainOfYouthDuration spellStats
execute if score spellnumber3 spells matches 25 if score slot23bleeding booleaneffects matches 0 run scoreboard players operation slot23 hp += fountainOfYouth spellStats
execute if score spellnumber3 spells matches 25 if score slot23bleeding booleaneffects matches 0 run scoreboard players operation slot23 hp += spellbuffsp6 spells
execute if score spellnumber3 spells matches 25 at @e[name=slot23] run particle minecraft:composter ~ ~1 ~ 0.9 0.9 0.9 0.5 500
execute if score spellnumber3 spells matches 25 run function chthree:spellphasep5
execute if score spellnumber3 spells matches 25 run scoreboard players set spellbuffsp6 spells 0
execute if score spellnumber3 spells matches 25 run tellraw @a[tag=game3] ["",{"selector":"@p[tag=p6]"}," used Fountain of Youth on Slot 22!"]

#overclock
execute if score spellnumber3 spells matches 27 run execute if score buffDurationSlot22 atkmodifiers < overclockDuration spellStats run scoreboard players operation buffDurationSlot22 atkmodifiers = overclockDuration spellStats
execute if score spellnumber3 spells matches 27 run scoreboard players operation attackBuffSlot22 atkmodifiers += overclock spellStats
execute if score spellnumber3 spells matches 27 run scoreboard players operation shield slot23 -= overclockAtk spellStats
execute if score spellnumber3 spells matches 27 if score shield slot23 matches ..0 run scoreboard players operation slot23 hp += shield slot23
execute if score spellnumber3 spells matches 27 at @e[name=slot23] run particle minecraft:trial_spawner_detection ~ ~1 ~ 0.9 0.9 0.9 0.5 400
execute if score spellnumber3 spells matches 27 run function chthree:spellphasep5
execute if score spellnumber3 spells matches 27 run tellraw @a[tag=game3] ["",{"selector":"@p[tag=p6]"}," used Overclock on Slot 22!"]

#This goes at the bottom
execute if score shield slot21 matches ..0 run scoreboard players set shield slot21 0
execute if score shield slot23 matches ..0 run scoreboard players set shield slot23 0
execute if score shield slot23 matches ..0 run scoreboard players set shield slot23 0
execute if score shield slot24 matches ..0 run scoreboard players set shield slot24 0







