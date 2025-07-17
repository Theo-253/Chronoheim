effect clear @a[tag=game3] weakness
clear @a[tag=game3]

#Dragonforge
execute if score spellnumber3 spells matches 26 run execute if score durationSlot20 shield < dragonforgeDuration spellStats run scoreboard players operation durationSlot20 shield = dragonforgeDuration spellStats
execute if score spellnumber3 spells matches 26 run scoreboard players operation shield slot20 += dragonforge spellStats
execute if score spellnumber3 spells matches 26 run execute if score alivep5 deaths matches 1 run scoreboard players operation shield slot20 += dragonforge spellStats
execute if score spellnumber3 spells matches 26 run scoreboard players set attackIsOngoingGame2 booleans 0
execute if score spellnumber3 spells matches 26 run execute if score alivep5 deaths matches 1 run execute at @n[type=armor_stand,name=slot20] run particle dragon_breath ~ ~1 ~ 0.9 0.9 0.9 0.1 400
execute if score spellnumber3 spells matches 26 run execute if score alivep5 deaths matches 2.. run execute at @n[type=armor_stand,name=slot20] run particle dragon_breath ~ ~1 ~ 0.9 0.9 0.9 0.1 100
execute if score spellnumber3 spells matches 26 run tellraw @a[tag=game3] ["",{"selector":"@p[tag=p5]"}," used Dragonforge on Slot 4!"]

#Embiggen
execute if score spellnumber3 spells matches 13 run execute if score buffDurationSlot20 atkmodifiers < embiggenDuration spellStats run scoreboard players operation buffDurationSlot20 atkmodifiers = embiggenDuration spellStats
execute if score spellnumber3 spells matches 13 run scoreboard players operation attackBuffSlot20 atkmodifiers += embiggenBuff spellStats
execute if score spellnumber3 spells matches 13 run execute if score durationSlot20 shield < embiggenDuration spellStats run scoreboard players operation durationSlot20 shield = embiggenDuration spellStats
execute if score spellnumber3 spells matches 13 run scoreboard players operation shield slot20 += embiggen spellStats
execute if score spellnumber3 spells matches 13 run scoreboard players set attackIsOngoingGame2 booleans 0
execute if score spellnumber3 spells matches 13 run execute at @n[type=armor_stand,name=slot20] run particle minecraft:egg_crack ~ ~1 ~ 0.9 0.9 0.9 0.1 100
execute if score spellnumber3 spells matches 13 run tellraw @a[tag=game3] ["",{"selector":"@p[tag=p5]"}," used Embiggen on Slot 4!"]

#Embrittle
execute if score spellnumber3 spells matches 12 if score ward slot20 matches 0 run execute if score debuffDurationSlot20 atkmodifiers < embrittleDuration spellStats run scoreboard players operation debuffDurationSlot20 atkmodifiers = embrittleDuration spellStats
execute if score spellnumber3 spells matches 12 if score ward slot20 matches 0 run scoreboard players operation attackDebuffSlot20 atkmodifiers += embrittle spellStats
execute if score spellnumber3 spells matches 12 if score ward slot20 matches 1.. run function chthree:wardslot20
execute if score spellnumber3 spells matches 12 run function chthree:spellphasep5
execute if score spellnumber3 spells matches 12 run execute at @n[type=armor_stand,name=slot20] run particle minecraft:block_crumble{block_state:"minecraft:ice"} ~ ~1 ~ 0.9 0.9 0.9 0.1 200
execute if score spellnumber3 spells matches 12 run tellraw @a[tag=game3] ["",{"selector":"@p[tag=p6]"}," used Embrittle on Slot 4!"]
#Evil Eye
execute if score spellnumber3 spells matches 15 if score ward slot20 matches 0 run scoreboard players operation marks slot20 += evilEye spellStats
execute if score spellnumber3 spells matches 15 if score ward slot20 matches 1.. run function chthree:wardslot20
execute if score spellnumber3 spells matches 15 run function chthree:spellphasep5
execute if score spellnumber3 spells matches 15 run execute at @n[type=armor_stand,name=slot20] run particle minecraft:effect ~ ~1 ~ 0.7 0.7 0.7 0.1 200
execute if score spellnumber3 spells matches 15 run tellraw @a[tag=game3] ["",{"selector":"@p[tag=p6]"}," used Evil Eye on Slot 4!"]

#Frostbolt
execute if score spellnumber3 spells matches 6 run scoreboard players operation spellDmg3 saves = frostbolt spellStats
execute if score spellnumber3 spells matches 6 run scoreboard players operation spellDmg3 saves += spellbuffsp6 spells
execute if score spellnumber3 spells matches 6 run scoreboard players operation spellDmg3 saves += marks slot20
execute if score spellnumber3 spells matches 6 run scoreboard players operation spellDmg3 saves /= atkmultiplier slot20
execute if score spellnumber3 spells matches 6 run execute if score ward slot20 matches 0 run scoreboard players operation shield slot20 -= spellDmg3 saves
execute if score spellnumber3 spells matches 6 run execute if score ward slot20 matches 0 if score frostboltDuration spellStats > durationSlot20 speedDebuffs run scoreboard players operation durationSlot20 speedDebuffs = frostboltDuration spellStats
execute if score spellnumber3 spells matches 6 run execute if score ward slot20 matches 0 if score frostboltDuration spellStats > debuffDurationSlot20 atkmodifiers run scoreboard players operation debuffDurationSlot20 atkmodifiers = frostboltDuration spellStats
execute if score spellnumber3 spells matches 6 run execute if score ward slot20 matches 0 run scoreboard players operation speedDebuffSlot20 speedDebuffs += frostboltSpDebuff spellStats
execute if score spellnumber3 spells matches 6 run execute if score ward slot20 matches 0 run scoreboard players operation attackDebuffSlot20 atkmodifiers += frostboltDmgDebuff spellStats
execute if score spellnumber3 spells matches 6 run execute if score ward slot20 matches 0 run scoreboard players operation speed slot20 -= frostboltSpDebuff spellStats
execute if score spellnumber3 spells matches 6 run execute if score ward slot20 matches 0 if score shield slot20 matches ..0 run scoreboard players operation slot20 hp += shield slot20
execute if score spellnumber3 spells matches 6 run execute if score ward slot20 matches 1.. run function chthree:wardslot20
execute if score spellnumber3 spells matches 6 run scoreboard players set spellbuffsp6 spells 0
execute if score spellnumber3 spells matches 6 run function chthree:spellphasep5
execute if score spellnumber3 spells matches 6 run execute at @n[type=armor_stand,name=slot20] run particle minecraft:item_snowball ~ ~1 ~ 0.7 0.7 0.7 0.1 200
execute if score spellnumber3 spells matches 6 run tellraw @a[tag=game3] ["",{"selector":"@p[tag=p6]"}," used Frostbolt on Slot 4!"]

#Heal
execute if score spellnumber3 spells matches 2 run scoreboard players operation spellHeal saves = heal spellStats
execute if score spellnumber3 spells matches 2 run scoreboard players operation spellHeal saves += spellbuffsp5 spells
execute if score spellnumber3 spells matches 2 run scoreboard players operation slot20 hp += spellHeal saves
execute if score spellnumber3 spells matches 2 run function chthree:cleanseslot20
execute if score spellnumber3 spells matches 2 run scoreboard players set spellbuffsp5 spells 0
execute if score spellnumber3 spells matches 2 run scoreboard players set attackIsOngoingGame2 booleans 0
execute if score spellnumber3 spells matches 2 run execute at @n[type=armor_stand,name=slot20] run particle minecraft:composter ~ ~1 ~ 0.9 0.9 0.9 0.5 100
execute if score spellnumber3 spells matches 2 run tellraw @a[tag=game3] ["",{"selector":"@p[tag=p5]"}," used Heal on Slot 4!"]

#Magic Missile
execute if score spellnumber3 spells matches 4 run scoreboard players add magicmissilex4 spells 1
execute if score spellnumber3 spells matches 4 run scoreboard players operation spellDmg3 saves = magicMissile spellStats
execute if score spellnumber3 spells matches 4 run scoreboard players operation spellDmg3 saves += spellbuffsp6 spells
execute if score spellnumber3 spells matches 4 run scoreboard players operation spellDmg3 saves += marks slot20
execute if score spellnumber3 spells matches 4 run scoreboard players operation spellDmg3 saves /= atkmultiplier slot20
execute if score spellnumber3 spells matches 4 run execute if score ward slot20 matches 0 run scoreboard players operation shield slot20 -= spellDmg3 saves
execute if score spellnumber3 spells matches 4 run execute if score ward slot20 matches 0 if score shield slot20 matches ..0 run scoreboard players operation slot20 hp += shield slot20
execute if score spellnumber3 spells matches 4 run execute if score ward slot20 matches 1.. run function chthree:wardslot20
execute if score spellnumber3 spells matches 4 run execute at @n[type=armor_stand,name=slot20] run particle minecraft:enchanted_hit ~ ~1 ~ 0.7 0.7 0.7 0.5 300
execute if score spellnumber3 spells matches 4 run tellraw @a[tag=game3] ["",{"selector":"@p[tag=p6]"}," smited Slot 4 with Magic Missle!"]
execute if score spellnumber3 spells matches 4 run execute if score magicmissilex4 spells matches 1 run function chthree:spellgivetargetsp6
execute if score spellnumber3 spells matches 4 run execute if score magicmissilex4 spells matches 2 run scoreboard players set spellbuffsp6 spells 0
execute if score spellnumber3 spells matches 4 run execute if score magicmissilex4 spells matches 2 run clear @a[tag=p6] target
execute if score spellnumber3 spells matches 4 run execute if score magicmissilex4 spells matches 2 run function chthree:spellphasep5
execute if score spellnumber3 spells matches 4 run execute if score magicmissilex4 spells matches 2 run scoreboard players set magicmissilex4 spells 0

#Protector's Rune
execute if score spellnumber3 spells matches 16 if score protectorsrune spellStats > durationSlot20 taunt run scoreboard players operation durationSlot20 taunt = protectorsrune spellStats
execute if score spellnumber3 spells matches 16 if score protectorsrune spellStats > durationSlot20 taunt if score ward slot20 matches 0 run scoreboard players operation marks slot20 += protectorsruneMarks spellStats
execute if score spellnumber3 spells matches 16 if score protectorsrune spellStats > durationSlot20 taunt if score ward slot20 matches 1.. run function chthree:wardslot20
execute if score spellnumber3 spells matches 16 run scoreboard players set attackIsOngoingGame2 booleans 0
execute if score spellnumber3 spells matches 16 run execute at @n[type=armor_stand,name=slot20] run particle minecraft:block_crumble{block_state:"minecraft:emerald_ore"} ~ ~1 ~ 0.7 0.7 0.7 1 400
execute if score spellnumber3 spells matches 16 run tellraw @a[tag=game3] ["",{"selector":"@p[tag=p5]"}," used Protector's Rune on Slot 4!"]

#Shield
execute if score spellnumber3 spells matches 8 run execute if score durationSlot20 shield < shieldDuration spellStats run scoreboard players operation durationSlot20 shield = shieldDuration spellStats
execute if score spellnumber3 spells matches 8 run scoreboard players operation shield slot20 += shield spellStats
execute if score spellnumber3 spells matches 8 run scoreboard players set attackIsOngoingGame2 booleans 0
execute if score spellnumber3 spells matches 8 run execute at @n[type=armor_stand,name=slot20] run particle wax_off ~ ~1 ~ 0.7 0.7 0.7 0.1 400
execute if score spellnumber3 spells matches 8 run tellraw @a[tag=game3] ["",{"selector":"@p[tag=p5]"}," used Shield on Slot 4!"]

#Ball Lightning
execute if score spellnumber3 spells matches 9 if score ward slot20 matches 0 run scoreboard players operation slot20 stun += shockOrb spellStats
execute if score spellnumber3 spells matches 9 if score ward slot20 matches 1.. run function chthree:wardslot20
execute if score spellnumber3 spells matches 9 run function chthree:spellphasep5
execute if score spellnumber3 spells matches 9 run execute at @n[type=armor_stand,name=slot20] run particle flash ~ ~1 ~ 0.9 0.9 0.9 0.1 10
execute if score spellnumber3 spells matches 9 run tellraw @a[tag=game3] ["",{"selector":"@p[tag=p6]"}," used Ball Lightning on Slot 4!"]

#Witches Brew
execute if score spellnumber3 spells matches 23 run execute if score ward slot20 matches 0 if score witchesBrewDuration spellStats > durationSlot20 speedDebuffs run scoreboard players operation durationSlot20 speedDebuffs = witchesBrewDuration spellStats
execute if score spellnumber3 spells matches 23 run execute if score ward slot20 matches 0 if score witchesBrewDuration spellStats > debuffDurationSlot20 atkmodifiers run scoreboard players operation debuffDurationSlot20 atkmodifiers = witchesBrewDuration spellStats
execute if score spellnumber3 spells matches 23 run execute if score ward slot20 matches 0 if score witchesBrewDuration spellStats > durationSlot20 poison run scoreboard players operation durationSlot20 poison = witchesBrewDuration spellStats
execute if score spellnumber3 spells matches 23 run execute if score ward slot20 matches 0 if score witchesBrewDuration spellStats > durationSlot20 burn run scoreboard players operation durationSlot20 burn = witchesBrewDuration spellStats
execute if score spellnumber3 spells matches 23 run execute if score ward slot20 matches 0 run scoreboard players operation speedDebuffSlot20 speedDebuffs += witchesBrewSpDebuff spellStats
execute if score spellnumber3 spells matches 23 run execute if score ward slot20 matches 0 run scoreboard players operation attackDebuffSlot20 atkmodifiers += witchesBrewDmgDebuff spellStats
execute if score spellnumber3 spells matches 23 run execute if score ward slot20 matches 0 run scoreboard players operation slot20Poison poison += witchesBrew spellStats
execute if score spellnumber3 spells matches 23 run execute if score ward slot20 matches 0 run scoreboard players operation slot20Burn burn += witchesBrewBurn spellStats
execute if score spellnumber3 spells matches 23 run execute if score ward slot20 matches 0 run scoreboard players operation speed slot20 -= witchesBrewSpDebuff spellStats
execute if score spellnumber3 spells matches 23 run execute if score ward slot20 matches 1.. run function chthree:wardslot20
execute if score spellnumber3 spells matches 23 run function chthree:spellphasep5
execute if score spellnumber3 spells matches 23 run tellraw @a[tag=game3] ["",{"selector":"@p[tag=p6]"}," used Witches Brew on Slot 4!"]
#Shifting Shadows Token
execute if score spellnumber3 spells matches -1 if score shadowsPart1 spells matches 5 if score ward slot20 matches 0 run scoreboard players set durationSlot21-20 fear 1
execute if score spellnumber3 spells matches -1 if score shadowsPart1 spells matches 6 if score ward slot20 matches 0 run scoreboard players set durationSlot22-20 fear 1
execute if score spellnumber3 spells matches -1 if score shadowsPart1 spells matches 7 if score ward slot20 matches 0 run scoreboard players set durationSlot23-20 fear 1
execute if score spellnumber3 spells matches -1 if score shadowsPart1 spells matches 8 if score ward slot20 matches 0 run scoreboard players set durationSlot24-20 fear 1
execute if score spellnumber3 spells matches -1 if score ward slot20 matches 1.. run function chthree:wardslot20
execute if score spellnumber3 spells matches -1 run function chthree:spellphasep5
execute if score spellnumber3 spells matches -1 run execute at @n[type=armor_stand,name=slot20] run particle trial_omen ~ ~1 ~ 0.9 0.9 0.9 0.1 400
execute if score spellnumber3 spells matches -1 run tellraw @a[tag=game3] ["",{"selector":"@p[tag=p6]"}," used Shifting Shadows to fear Slot 4!"]

#Shifting Shadows
execute if score spellnumber3 spells matches 28 run scoreboard players set shadowsPart1 spells 4
execute if score spellnumber3 spells matches 28 run function chthree:spellgivetargetsp5
execute if score spellnumber3 spells matches 28 run scoreboard players set spellnumber3 spells -1
execute if score spellnumber3 spells matches 28 run execute at @n[type=armor_stand,name=slot20] run particle raid_omen ~ ~1 ~ 0.9 0.9 0.9 0.1 400
execute if score spellnumber3 spells matches 28 run tellraw @a[tag=game3] ["",{"selector":"@p[tag=p5]"}," used Shifting Shadows to make Slot 4 scary!"]
clear @p[tag=game3]
#fireball
execute if score spellnumber3 spells matches 1 run scoreboard players operation spellDmg3 saves = fireball spellStats
execute if score spellnumber3 spells matches 1 run scoreboard players operation spellDmg3 saves += spellbuffsp6 spells
execute if score spellnumber3 spells matches 1 run scoreboard players operation spellDmg3 saves += marks slot20
execute if score spellnumber3 spells matches 1 run scoreboard players operation spellDmg3 saves /= atkmultiplier slot20
execute if score spellnumber3 spells matches 1 run execute if score ward slot20 matches 0 run scoreboard players operation shield slot20 -= spellDmg3 saves
execute if score spellnumber3 spells matches 1 run execute if score ward slot20 matches 0 run scoreboard players operation slot20 hp += shield slot20
execute if score spellnumber3 spells matches 1 run execute if score ward slot20 matches 0 if score durationSlot20 burn < fireballDuration spellStats run scoreboard players operation durationSlot20 burn = fireballDuration spellStats
execute if score spellnumber3 spells matches 1 run execute if score ward slot20 matches 0 run scoreboard players operation slot20Burn burn += fireballBurn spellStats
execute if score spellnumber3 spells matches 1 at @e[name=slot20] run particle minecraft:flame ~ ~1 ~ 0.9 0.9 0.9 0.5 100
execute if score spellnumber3 spells matches 1 run execute if score ward slot20 matches 1.. run function chthree:wardslot20
execute if score spellnumber3 spells matches 1 run scoreboard players set spellbuffsp6 spells 0
execute if score spellnumber3 spells matches 1 run function chthree:spellphasep5
execute if score spellnumber3 spells matches 1 run tellraw @a[tag=game3] ["",{"selector":"@p[tag=p6]"}," used Fireball on Slot 4!"]
#meteor
execute if score spellnumber3 spells matches 7 run scoreboard players operation spellDmg3 saves = meteor spellStats
execute if score spellnumber3 spells matches 7 if score slot23isatk booleans matches 1 run scoreboard players operation spellDmg3 saves += spellbuffsp6 spells
execute if score spellnumber3 spells matches 7 run scoreboard players operation spellDmg3 saves += marks slot20
execute if score spellnumber3 spells matches 7 run scoreboard players operation spellDmg3 saves /= atkmultiplier slot20
execute if score spellnumber3 spells matches 7 run execute if score ward slot20 matches 0 run scoreboard players operation shield slot20 -= spellDmg3 saves
execute if score spellnumber3 spells matches 7 run execute if score ward slot20 matches 0 if score shield slot20 matches ..0 run scoreboard players operation slot20 hp += shield slot20
execute if score spellnumber3 spells matches 7 at @e[name=slot20] run particle minecraft:lava ~ ~1 ~ 0.9 0.9 0.9 0.5 100
execute if score spellnumber3 spells matches 7 at @e[name=slot19] run particle minecraft:lava ~ ~1 ~ 0.9 0.9 0.9 0.5 50
execute if score spellnumber3 spells matches 7 run execute if score ward slot20 matches 1.. run function chthree:wardslot20
execute if score spellnumber3 spells matches 7 run scoreboard players operation spellDmg3 saves = meteor spellStats
execute if score spellnumber3 spells matches 7 run scoreboard players operation spellDmg3 saves += spellbuffsp6 spells
execute if score spellnumber3 spells matches 7 run scoreboard players operation spellDmg3 saves /= meteorSplash spellStats
execute if score spellnumber3 spells matches 7 run scoreboard players operation spellDmg3 saves += marks slot19
execute if score spellnumber3 spells matches 7 run scoreboard players operation spellDmg3 saves /= atkmultiplier slot19
execute if score spellnumber3 spells matches 7 run execute if score ward slot19 matches 0 run scoreboard players operation shield slot19 -= spellDmg3 saves
execute if score spellnumber3 spells matches 7 run execute if score ward slot19 matches 0 if score shield slot19 matches ..0 run scoreboard players operation slot19 hp += shield slot19
execute if score spellnumber3 spells matches 7 run execute if score ward slot19 matches 1.. run function chthree:wardslot19
execute if score spellnumber3 spells matches 7 run scoreboard players set spellbuffsp6 spells 0
execute if score spellnumber3 spells matches 7 run function chthree:spellphasep5
execute if score spellnumber3 spells matches 7 run tellraw @a[tag=game3] ["",{"selector":"@p[tag=p6]"}," used Meteor on Slot 4!"]

#witchbolt
execute if score spellnumber3 spells matches 10 run scoreboard players operation spellDmg3 saves = witchbolt spellStats
execute if score spellnumber3 spells matches 10 run scoreboard players operation spellDmg3 saves += spellbuffsp6 spells
execute if score spellnumber3 spells matches 10 run scoreboard players operation spellDmg3 saves += marks slot20
execute if score spellnumber3 spells matches 10 run scoreboard players operation spellDmg3 saves /= atkmultiplier slot20
execute if score spellnumber3 spells matches 10 run execute if score ward slot20 matches 0 run scoreboard players operation shield slot20 -= spellDmg3 saves
execute if score spellnumber3 spells matches 10 run execute if score ward slot20 matches 0 if score shield slot20 matches ..0 run scoreboard players operation slot20 hp += shield slot20
execute if score spellnumber3 spells matches 10 at @e[name=slot20] run particle minecraft:enchanted_hit ~ ~1 ~ 0.9 0.9 0.9 0.5 200
execute if score spellnumber3 spells matches 10 run execute if score ward slot20 matches 1.. run function chthree:wardslot20
execute if score spellnumber3 spells matches 10 run scoreboard players set spellbuffsp6 spells 0
execute if score spellnumber3 spells matches 10 run function chthree:spellphasep5
execute if score spellnumber3 spells matches 10 run tellraw @a[tag=game3] ["",{"selector":"@p[tag=p6]"}," used Witch Bolt on Slot 4!"]
#ward
execute if score spellnumber3 spells matches 19 run scoreboard players set ward slot20 1
execute if score spellnumber3 spells matches 19 at @e[name=slot20] run particle minecraft:ominous_spawning ~ ~1 ~ 0.9 0.9 0.9 0.1 100
execute if score spellnumber3 spells matches 19 run scoreboard players set attackIsOngoingGame2 booleans 0
execute if score spellnumber3 spells matches 26 run tellraw @a[tag=game3] ["",{"selector":"@p[tag=p5]"}," used Ward on Slot 4!"]
#plague
execute if score spellnumber3 spells matches 21 if score ward slot20 matches 0 run scoreboard players operation slot20Disease disease += plague spellStats
execute if score spellnumber3 spells matches 21 at @e[name=slot20] run particle minecraft:trial_omen ~ ~1 ~ 0.9 0.9 0.9 0.5 100
execute if score spellnumber3 spells matches 21 if score ward slot20 matches 1.. run function chthree:wardslot20
execute if score spellnumber3 spells matches 21 run function chthree:spellphasep5
execute if score spellnumber3 spells matches 21 run tellraw @a[tag=game3] ["",{"selector":"@p[tag=p6]"}," used Plague on Slot 4!"]

#Second wind
execute if score spellnumber3 spells matches 22 run execute if score durationSlot20 speedBuffs < secondWindDuration spellStats run scoreboard players operation durationSlot20 speedBuffs = secondWindDuration spellStats
execute if score spellnumber3 spells matches 22 run scoreboard players operation speedBuffSlot20 speedBuffs += secondWindSpeed spellStats
execute if score spellnumber3 spells matches 22 run scoreboard players operation speed slot20 += secondWindSpeed spellStats
execute if score spellnumber3 spells matches 22 if score slot20bleeding booleaneffects matches 0 run scoreboard players operation slot20 hp += secondWind spellStats
execute if score spellnumber3 spells matches 22 if score slot20bleeding booleaneffects matches 0 run scoreboard players operation slot20 hp += spellbuffsp5 spells
execute if score spellnumber3 spells matches 22 at @e[name=slot20] run particle minecraft:trial_spawner_detection_ominous ~ ~1 ~ 0.9 0.9 0.9 0.5 100
execute if score spellnumber3 spells matches 22 run scoreboard players set attackIsOngoingGame2 booleans 0
execute if score spellnumber3 spells matches 22 run scoreboard players set spellbuffsp5 spells 0
execute if score spellnumber3 spells matches 22 run tellraw @a[tag=game3] ["",{"selector":"@p[tag=p5]"}," used Second Wind on Slot 4!"]
#fountain of youth
execute if score spellnumber3 spells matches 25 run execute if score disarmedslot20 booleaneffects < fountainOfYouthDuration spellStats run scoreboard players operation disarmedslot20 booleaneffects = fountainOfYouthDuration spellStats
execute if score spellnumber3 spells matches 25 if score slot20bleeding booleaneffects matches 0 run scoreboard players operation slot20 hp += fountainOfYouth spellStats
execute if score spellnumber3 spells matches 25 if score slot20bleeding booleaneffects matches 0 run scoreboard players operation slot20 hp += spellbuffsp5 spells
execute if score spellnumber3 spells matches 25 at @e[name=slot20] run particle minecraft:composter ~ ~1 ~ 0.9 0.9 0.9 0.5 500
execute if score spellnumber3 spells matches 25 run scoreboard players set attackIsOngoingGame2 booleans 0
execute if score spellnumber3 spells matches 25 run scoreboard players set spellbuffsp5 spells 0
execute if score spellnumber3 spells matches 25 run tellraw @a[tag=game3] ["",{"selector":"@p[tag=p5]"}," used Fountain of Youth on Slot 4!"]
#overclock
execute if score spellnumber3 spells matches 27 run execute if score buffDurationSlot20 atkmodifiers < overclockDuration spellStats run scoreboard players operation buffDurationSlot20 atkmodifiers = overclockDuration spellStats
execute if score spellnumber3 spells matches 27 run scoreboard players operation attackBuffSlot20 atkmodifiers += overclock spellStats
execute if score spellnumber3 spells matches 27 run scoreboard players operation shield slot20 -= overclockAtk spellStats
execute if score spellnumber3 spells matches 27 if score shield slot20 matches ..0 run scoreboard players operation slot20 hp += shield slot20
execute if score spellnumber3 spells matches 27 at @e[name=slot20] run particle minecraft:trial_spawner_detection ~ ~1 ~ 0.9 0.9 0.9 0.5 400
execute if score spellnumber3 spells matches 27 run scoreboard players set attackIsOngoingGame2 booleans 0
execute if score spellnumber3 spells matches 27 run tellraw @a[tag=game3] ["",{"selector":"@p[tag=p5]"}," used Overclock on Slot 4!"]

#This goes at the bottom
execute if score shield slot17 matches ..0 run scoreboard players set shield slot17 0
execute if score shield slot18 matches ..0 run scoreboard players set shield slot18 0
execute if score shield slot19 matches ..0 run scoreboard players set shield slot19 0
execute if score shield slot20 matches ..0 run scoreboard players set shield slot20 0







