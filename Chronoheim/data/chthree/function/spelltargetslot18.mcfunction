effect clear @a[tag=game3] weakness
clear @a[tag=game3]

#Dragonforge
execute if score spellnumber3 spells matches 26 run execute if score durationSlot18 shield < dragonforgeDuration spellStats run scoreboard players operation durationSlot18 shield = dragonforgeDuration spellStats
execute if score spellnumber3 spells matches 26 run scoreboard players operation shield slot18 += dragonforge spellStats
execute if score spellnumber3 spells matches 26 run execute if score slot17 hp matches ..0 if score slot19 hp matches ..0 if score slot20 hp matches ..0 run scoreboard players operation shield slot18 += dragonforge spellStats
execute if score spellnumber3 spells matches 26 run scoreboard players set attackIsOngoingGame3 booleans 0
execute if score spellnumber3 spells matches 26 run execute if score slot17 hp matches ..0 if score slot19 hp matches ..0 if score slot20 hp matches ..0 run execute at @n[type=armor_stand,name=slot18] run particle dragon_breath ~ ~1 ~ 0.9 0.9 0.9 0.1 400
execute if score spellnumber3 spells matches 26 run execute at @n[type=armor_stand,name=slot18] run particle dragon_breath ~ ~1 ~ 0.9 0.9 0.9 0.1 100
execute if score spellnumber3 spells matches 26 run tellraw @a[tag=game3] ["",{"selector":"@p[tag=p5]"}," used Dragonforge on Slot 2!"]

#Embiggen
execute if score spellnumber3 spells matches 13 run execute if score buffDurationSlot18 atkmodifiers < embiggenDuration spellStats run scoreboard players operation buffDurationSlot18 atkmodifiers = embiggenDuration spellStats
execute if score spellnumber3 spells matches 13 run scoreboard players operation attackBuffSlot18 atkmodifiers += embiggenBuff spellStats
execute if score spellnumber3 spells matches 13 run scoreboard players operation maxhp slot18 += embiggen spellStats
execute if score spellnumber3 spells matches 13 run scoreboard players operation slot18 hp += embiggen spellStats
execute if score spellnumber3 spells matches 13 run scoreboard players set attackIsOngoingGame3 booleans 0
execute if score spellnumber3 spells matches 13 run execute at @n[type=armor_stand,name=slot18] run particle minecraft:egg_crack ~ ~1 ~ 0.9 0.9 0.9 0.1 100
execute if score spellnumber3 spells matches 26 run tellraw @a[tag=game3] ["",{"selector":"@p[tag=p5]"}," used Embiggen on Slot 2!"]

#Embrittle
execute if score spellnumber3 spells matches 12 if score ward slot18 matches 0 run execute if score debuffDurationSlot18 atkmodifiers < embrittleDuration spellStats run scoreboard players operation debuffDurationSlot18 atkmodifiers = embrittleDuration spellStats
execute if score spellnumber3 spells matches 12 if score ward slot18 matches 0 run scoreboard players operation attackDebuffSlot18 atkmodifiers += embrittle spellStats
execute if score spellnumber3 spells matches 12 if score ward slot18 matches 1.. run function chthree:wardslot18
execute if score spellnumber3 spells matches 12 run function chthree:spellphasep5
execute if score spellnumber3 spells matches 12 run execute at @n[type=armor_stand,name=slot18] run particle minecraft:block_crumble{block_state:"minecraft:ice"} ~ ~1 ~ 0.9 0.9 0.9 0.1 200
execute if score spellnumber3 spells matches 12 run tellraw @a[tag=game3] ["",{"selector":"@p[tag=p6]"}," used Embrittle on Slot 2!"]
#Evil Eye
execute if score spellnumber3 spells matches 15 if score ward slot18 matches 0 run execute if score durationSlot18 mark < evilEyeDuration spellStats run scoreboard players operation durationSlot18 mark = evilEyeDuration spellStats
execute if score spellnumber3 spells matches 15 if score ward slot18 matches 0 run scoreboard players operation marks slot18 += evilEye spellStats
execute if score spellnumber3 spells matches 15 if score ward slot18 matches 1.. run function chthree:wardslot18
execute if score spellnumber3 spells matches 15 run function chthree:spellphasep5
execute if score spellnumber3 spells matches 15 run execute at @n[type=armor_stand,name=slot18] run particle minecraft:effect ~ ~1 ~ 0.7 0.7 0.7 0.1 200
execute if score spellnumber3 spells matches 15 run tellraw @a[tag=game3] ["",{"selector":"@p[tag=p6]"}," used Evil Eye on Slot 2!"]

#Frostbolt
execute if score spellnumber3 spells matches 6 run scoreboard players operation spellDmg3 saves = frostbolt spellStats
execute if score spellnumber3 spells matches 6 run scoreboard players operation spellDmg3 saves += spellbuffsp6 spells
execute if score spellnumber3 spells matches 6 run scoreboard players operation spellDmg3 saves += marks slot18
execute if score spellnumber3 spells matches 6 run scoreboard players operation spellDmg3 saves /= atkmultiplier slot18
execute if score spellnumber3 spells matches 6 run execute if score ward slot18 matches 0 run scoreboard players operation shield slot18 -= spellDmg3 saves
execute if score spellnumber3 spells matches 6 run execute if score ward slot18 matches 0 if score frostboltDuration spellStats > durationSlot18 speedDebuffs run scoreboard players operation durationSlot18 speedDebuffs = frostboltDuration spellStats
execute if score spellnumber3 spells matches 6 run execute if score ward slot18 matches 0 if score frostboltDuration spellStats > debuffDurationSlot18 atkmodifiers run scoreboard players operation debuffDurationSlot18 atkmodifiers = frostboltDuration spellStats
execute if score spellnumber3 spells matches 6 run execute if score ward slot18 matches 0 run scoreboard players operation speedDebuffSlot18 speedDebuffs += frostboltSpDebuff spellStats
execute if score spellnumber3 spells matches 6 run execute if score ward slot18 matches 0 run scoreboard players operation attackDebuffSlot18 atkmodifiers += frostboltDmgDebuff spellStats
execute if score spellnumber3 spells matches 6 run execute if score ward slot18 matches 0 run scoreboard players operation speed slot18 -= frostboltSpDebuff spellStats
execute if score spellnumber3 spells matches 6 run execute if score ward slot18 matches 0 if score shield slot18 matches ..0 run scoreboard players operation slot18 hp += shield slot18
execute if score spellnumber3 spells matches 6 run execute if score ward slot18 matches 1.. run function chthree:wardslot18
execute if score spellnumber3 spells matches 6 run scoreboard players set spellbuffsp6 spells 0
execute if score spellnumber3 spells matches 6 run function chthree:spellphasep5
execute if score spellnumber3 spells matches 6 run execute at @n[type=armor_stand,name=slot18] run particle minecraft:item_snowball ~ ~1 ~ 0.7 0.7 0.7 0.1 200
execute if score spellnumber3 spells matches 6 run tellraw @a[tag=game3] ["",{"selector":"@p[tag=p6]"}," used Frostbolt on Slot 2!"]

#Heal
execute if score spellnumber3 spells matches 2 run scoreboard players operation spellHeal saves = heal spellStats
execute if score spellnumber3 spells matches 2 run scoreboard players operation spellHeal saves += spellbuffsp5 spells
execute if score spellnumber3 spells matches 2 unless score slot18bleeding booleaneffects matches 1.. run scoreboard players operation slot18 hp += spellHeal saves
execute if score spellnumber3 spells matches 2 run function chthree:cleanseslot18
execute if score spellnumber3 spells matches 2 run scoreboard players set spellbuffsp5 spells 0
execute if score spellnumber3 spells matches 2 run scoreboard players set attackIsOngoingGame3 booleans 0
execute if score spellnumber3 spells matches 2 run execute at @n[type=armor_stand,name=slot18] run particle minecraft:composter ~ ~1 ~ 0.9 0.9 0.9 0.5 100
execute if score spellnumber3 spells matches 2 run tellraw @a[tag=game3] ["",{"selector":"@p[tag=p5]"}," used Heal on Slot 2!"]

#Miracle
execute if score spellnumber3 spells matches 17 run function chthree:cleanseslot18
execute if score spellnumber3 spells matches 17 run scoreboard players set attackIsOngoingGame3 booleans 0
execute if score spellnumber3 spells matches 17 run tellraw @a[tag=game3] ["",{"selector":"@p[tag=p5]"}," used Miracle on Slot 2!"]

#Magic Missile! Magic Missile! I smite thee with Magic Missile!
execute if score spellnumber3 spells matches 4 run scoreboard players add magicmissilex4 spells 1
execute if score spellnumber3 spells matches 4 run scoreboard players operation spellDmg3 saves = magicMissile spellStats
execute if score spellnumber3 spells matches 4 run scoreboard players operation spellDmg3 saves += spellbuffsp6 spells
execute if score spellnumber3 spells matches 4 run scoreboard players operation spellDmg3 saves += marks slot18
execute if score spellnumber3 spells matches 4 run scoreboard players operation spellDmg3 saves /= atkmultiplier slot18
execute if score spellnumber3 spells matches 4 run execute if score ward slot18 matches 0 run scoreboard players operation shield slot18 -= spellDmg3 saves
execute if score spellnumber3 spells matches 4 run execute if score ward slot18 matches 0 if score shield slot18 matches ..0 run scoreboard players operation slot18 hp += shield slot18
execute if score spellnumber3 spells matches 4 run execute if score ward slot18 matches 1.. run function chthree:wardslot18
execute if score spellnumber3 spells matches 4 run tellraw @a[tag=game3] ["",{"selector":"@p[tag=p6]"}," smited Slot 2 with Magic Missle!"]
execute if score spellnumber3 spells matches 4 run execute at @n[type=armor_stand,name=slot18] run particle minecraft:enchanted_hit ~ ~1 ~ 0.7 0.7 0.7 0.5 300
execute if score spellnumber3 spells matches 4 run execute if score magicmissilex4 spells matches 1 run function chthree:spellgivetargetsp6
execute if score spellnumber3 spells matches 4 run execute if score magicmissilex4 spells matches 2 run scoreboard players set spellbuffsp6 spells 0
execute if score spellnumber3 spells matches 4 run execute if score magicmissilex4 spells matches 2 run clear @a[tag=p6] target
execute if score spellnumber3 spells matches 4 run execute if score magicmissilex4 spells matches 2 run function chthree:spellphasep5
execute if score spellnumber3 spells matches 4 run execute if score magicmissilex4 spells matches 2 run scoreboard players set magicmissilex4 spells 0

#Protector's Rune
execute if score spellnumber3 spells matches 16 if score protectorsrune spellStats > durationSlot18 taunt run scoreboard players operation durationSlot18 taunt = protectorsrune spellStats
execute if score spellnumber3 spells matches 16 if score protectorsrune spellStats > durationSlot18 taunt if score ward slot18 matches 0 run scoreboard players operation marks slot18 += protectorsruneMarks spellStats
execute if score spellnumber3 spells matches 16 if score protectorsrune spellStats > durationSlot18 taunt if score ward slot18 matches 1.. run function chthree:wardslot18
execute if score spellnumber3 spells matches 16 run scoreboard players set attackIsOngoingGame3 booleans 0
execute if score spellnumber3 spells matches 16 run execute at @n[type=armor_stand,name=slot18] run particle minecraft:block_crumble{block_state:"minecraft:emerald_ore"} ~ ~1 ~ 0.7 0.7 0.7 1 400
execute if score spellnumber3 spells matches 16 run tellraw @a[tag=game3] ["",{"selector":"@p[tag=p5]"}," used Protector's Rune on Slot 2!"]

#Shield
execute if score spellnumber3 spells matches 8 run execute if score durationSlot18 shield < shieldDuration spellStats run scoreboard players operation durationSlot18 shield = shieldDuration spellStats
execute if score spellnumber3 spells matches 8 run scoreboard players operation shield slot18 += shield spellStats
execute if score spellnumber3 spells matches 8 run scoreboard players set attackIsOngoingGame3 booleans 0
execute if score spellnumber3 spells matches 8 run execute at @n[type=armor_stand,name=slot18] run particle wax_off ~ ~1 ~ 0.7 0.7 0.7 0.1 400
execute if score spellnumber3 spells matches 8 run tellraw @a[tag=game3] ["",{"selector":"@p[tag=p5]"}," used Shield on Slot 2!"]

#Ball Lightning
execute if score spellnumber3 spells matches 9 if score ward slot18 matches 0 run scoreboard players operation slot18 stun += shockOrb spellStats
execute if score spellnumber3 spells matches 9 if score ward slot18 matches 1.. run function chthree:wardslot18
execute if score spellnumber3 spells matches 9 run function chthree:spellphasep5
execute if score spellnumber3 spells matches 9 run execute at @n[type=armor_stand,name=slot18] run particle flash{color:[1.000,1.000,1.000,1.00]} ~ ~1 ~ 0.9 0.9 0.9 0.1 10
execute if score spellnumber3 spells matches 9 run tellraw @a[tag=game3] ["",{"selector":"@p[tag=p6]"}," used Ball Lightning on Slot 2!"]

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
execute if score spellnumber3 spells matches 23 run execute if score ward slot18 matches 1.. run function chthree:wardslot18
execute if score spellnumber3 spells matches 23 run function chthree:spellphasep5
execute if score spellnumber3 spells matches 23 run tellraw @a[tag=game3] ["",{"selector":"@p[tag=p6]"}," used Witches Brew on Slot 2!"]
#Shifting Shadows Token
execute if score spellnumber3 spells matches -1 if score shadowsPart1 spells matches 5 if score ward slot18 matches 0 run scoreboard players set durationSlot21-18 fear 1
execute if score spellnumber3 spells matches -1 if score shadowsPart1 spells matches 6 if score ward slot18 matches 0 run scoreboard players set durationSlot22-18 fear 1
execute if score spellnumber3 spells matches -1 if score shadowsPart1 spells matches 7 if score ward slot18 matches 0 run scoreboard players set durationSlot23-18 fear 1
execute if score spellnumber3 spells matches -1 if score shadowsPart1 spells matches 8 if score ward slot18 matches 0 run scoreboard players set durationSlot24-18 fear 1
execute if score spellnumber3 spells matches -1 if score ward slot18 matches 1.. run function chthree:wardslot18
execute if score spellnumber3 spells matches -1 run function chthree:spellphasep5
execute if score spellnumber3 spells matches -1 run execute at @n[type=armor_stand,name=slot18] run particle trial_omen ~ ~1 ~ 0.9 0.9 0.9 0.1 400
execute if score spellnumber3 spells matches -1 run tellraw @a[tag=game3] ["",{"selector":"@p[tag=p6]"}," used Shifting Shadows to fear Slot 2!"]

#Shifting Shadows
execute if score spellnumber3 spells matches 28 run scoreboard players set shadowsPart1 spells 2
execute if score spellnumber3 spells matches 28 run function chthree:spellgivetargetsp5
execute if score spellnumber3 spells matches 28 run scoreboard players set spellnumber3 spells -1
execute if score spellnumber3 spells matches 28 run execute at @n[type=armor_stand,name=slot18] run particle raid_omen ~ ~1 ~ 0.9 0.9 0.9 0.1 400
execute if score spellnumber3 spells matches 28 run tellraw @a[tag=game3] ["",{"selector":"@p[tag=p5]"}," used Shifting Shadows to make Slot 2 scary!"]
#fireball
execute if score spellnumber3 spells matches 1 run scoreboard players operation spellDmg3 saves = fireball spellStats
execute if score spellnumber3 spells matches 1 run scoreboard players operation spellDmg3 saves += spellbuffsp6 spells
execute if score spellnumber3 spells matches 1 run scoreboard players operation spellDmg3 saves += marks slot18
execute if score spellnumber3 spells matches 1 run scoreboard players operation spellDmg3 saves /= atkmultiplier slot18
execute if score spellnumber3 spells matches 1 run execute if score ward slot18 matches 0 run scoreboard players operation shield slot18 -= spellDmg3 saves
execute if score spellnumber3 spells matches 1 run execute if score ward slot18 matches 0 run scoreboard players operation slot18 hp += shield slot18
execute if score spellnumber3 spells matches 1 run execute if score ward slot18 matches 0 if score durationSlot18 burn < fireballDuration spellStats run scoreboard players operation durationSlot18 burn = fireballDuration spellStats
execute if score spellnumber3 spells matches 1 run execute if score ward slot18 matches 0 run scoreboard players operation slot18Burn burn += fireballBurn spellStats
execute if score spellnumber3 spells matches 1 at @e[name=slot18] run particle minecraft:flame ~ ~1 ~ 0.9 0.9 0.9 0.5 100
execute if score spellnumber3 spells matches 1 run execute if score ward slot18 matches 1.. run function chthree:wardslot18
execute if score spellnumber3 spells matches 1 run scoreboard players set spellbuffsp6 spells 0
execute if score spellnumber3 spells matches 1 run function chthree:spellphasep5
execute if score spellnumber3 spells matches 1 run tellraw @a[tag=game3] ["",{"selector":"@p[tag=p6]"}," used Fireball on Slot 2!"]
#meteor
execute if score spellnumber3 spells matches 7 run scoreboard players operation spellDmg3 saves = meteor spellStats
execute if score spellnumber3 spells matches 7 run scoreboard players operation spellDmg3 saves += spellbuffsp6 spells
execute if score spellnumber3 spells matches 7 run scoreboard players operation spellDmg3 saves += marks slot18
execute if score spellnumber3 spells matches 7 run scoreboard players operation spellDmg3 saves /= atkmultiplier slot18
execute if score spellnumber3 spells matches 7 run execute if score ward slot18 matches 0 run scoreboard players operation shield slot18 -= spellDmg3 saves
execute if score spellnumber3 spells matches 7 run execute if score ward slot18 matches 0 if score shield slot18 matches ..0 run scoreboard players operation slot18 hp += shield slot18
execute if score spellnumber3 spells matches 7 run execute if score ward slot18 matches 1.. run function chthree:wardslot18
execute if score spellnumber3 spells matches 7 at @e[name=slot18] run particle minecraft:lava ~ ~1 ~ 0.9 0.9 0.9 0.5 100
execute if score spellnumber3 spells matches 7 at @e[name=slot17] run particle minecraft:lava ~ ~1 ~ 0.9 0.9 0.9 0.5 50
execute if score spellnumber3 spells matches 7 at @e[name=slot19] run particle minecraft:lava ~ ~1 ~ 0.9 0.9 0.9 0.5 50
execute if score spellnumber3 spells matches 7 run scoreboard players operation spellDmg3 saves = meteor spellStats
execute if score spellnumber3 spells matches 7 run scoreboard players operation spellDmg3 saves += spellbuffsp6 spells
execute if score spellnumber3 spells matches 7 run scoreboard players operation spellDmg3 saves /= meteorSplash spellStats
execute if score spellnumber3 spells matches 7 run scoreboard players operation spellDmg3 saves += marks slot17
execute if score spellnumber3 spells matches 7 run scoreboard players operation spellDmg3 saves /= atkmultiplier slot17
execute if score spellnumber3 spells matches 7 run execute if score ward slot17 matches 0 run scoreboard players operation shield slot17 -= spellDmg3 saves
execute if score spellnumber3 spells matches 7 run execute if score ward slot17 matches 0 if score shield slot17 matches ..0 run scoreboard players operation slot17 hp += shield slot17
execute if score spellnumber3 spells matches 7 run execute if score ward slot17 matches 1.. run function chthree:wardslot17
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
execute if score spellnumber3 spells matches 7 run tellraw @a[tag=game3] ["",{"selector":"@p[tag=p6]"}," used Meteor on Slot 2!"]

#witchbolt
execute if score spellnumber3 spells matches 10 run scoreboard players operation spellDmg3 saves = witchbolt spellStats
execute if score spellnumber3 spells matches 10 run scoreboard players operation spellDmg3 saves += spellbuffsp6 spells
execute if score spellnumber3 spells matches 10 run scoreboard players operation spellDmg3 saves += marks slot18
execute if score spellnumber3 spells matches 10 run scoreboard players operation spellDmg3 saves /= atkmultiplier slot18
execute if score spellnumber3 spells matches 10 run execute if score ward slot18 matches 0 run scoreboard players operation shield slot18 -= spellDmg3 saves
execute if score spellnumber3 spells matches 10 run execute if score ward slot18 matches 0 if score shield slot18 matches ..0 run scoreboard players operation slot18 hp += shield slot18
execute if score spellnumber3 spells matches 10 at @e[name=slot18] run particle minecraft:enchanted_hit ~ ~1 ~ 0.9 0.9 0.9 0.5 200
execute if score spellnumber3 spells matches 10 run execute if score ward slot18 matches 1.. run function chthree:wardslot18
execute if score spellnumber3 spells matches 10 run scoreboard players set spellbuffsp6 spells 0
execute if score spellnumber3 spells matches 10 run function chthree:spellphasep5
execute if score spellnumber3 spells matches 10 run tellraw @a[tag=game3] ["",{"selector":"@p[tag=p6]"}," used Witch Bolt on Slot 2!"]
#ward
execute if score spellnumber3 spells matches 19 run scoreboard players set ward slot18 1
execute if score spellnumber3 spells matches 19 at @e[name=slot18] run particle minecraft:ominous_spawning ~ ~1 ~ 0.9 0.9 0.9 0.1 100
execute if score spellnumber3 spells matches 19 run scoreboard players set attackIsOngoingGame3 booleans 0
execute if score spellnumber3 spells matches 19 run tellraw @a[tag=game3] ["",{"selector":"@p[tag=p5]"}," used Ward on Slot 2!"]
#plague
execute if score spellnumber3 spells matches 21 if score ward slot18 matches 0 run scoreboard players operation slot18Disease disease += plague spellStats
execute if score spellnumber3 spells matches 21 at @e[name=slot18] run particle minecraft:trial_omen ~ ~1 ~ 0.9 0.9 0.9 0.5 100
execute if score spellnumber3 spells matches 21 if score ward slot18 matches 1.. run function chthree:wardslot18
execute if score spellnumber3 spells matches 21 run function chthree:spellphasep5
execute if score spellnumber3 spells matches 21 run tellraw @a[tag=game3] ["",{"selector":"@p[tag=p6]"}," used Plague on Slot 2!"]

#Second wind
execute if score spellnumber3 spells matches 22 run execute if score durationSlot18 speedBuffs < secondWindDuration spellStats run scoreboard players operation durationSlot18 speedBuffs = secondWindDuration spellStats
execute if score spellnumber3 spells matches 22 run scoreboard players operation speedBuffSlot18 speedBuffs += secondWindSpeed spellStats
execute if score spellnumber3 spells matches 22 run scoreboard players operation speed slot18 += secondWindSpeed spellStats
execute if score spellnumber3 spells matches 22 if score slot18bleeding booleaneffects matches 0 run scoreboard players operation slot18 hp += secondWind spellStats
execute if score spellnumber3 spells matches 22 if score slot18bleeding booleaneffects matches 0 run scoreboard players operation slot18 hp += spellbuffsp5 spells
execute if score spellnumber3 spells matches 22 at @e[name=slot18] run particle minecraft:trial_spawner_detection_ominous ~ ~1 ~ 0.9 0.9 0.9 0.5 100
execute if score spellnumber3 spells matches 22 run scoreboard players set attackIsOngoingGame3 booleans 0
execute if score spellnumber3 spells matches 22 run scoreboard players set spellbuffsp5 spells 0
execute if score spellnumber3 spells matches 22 run tellraw @a[tag=game3] ["",{"selector":"@p[tag=p5]"}," used Second Wind on Slot 2!"]
#fountain of youth
execute if score spellnumber3 spells matches 25 run execute if score disarmedslot18 booleaneffects < fountainOfYouthDuration spellStats run scoreboard players operation disarmedslot18 booleaneffects = fountainOfYouthDuration spellStats
execute if score spellnumber3 spells matches 25 if score slot18bleeding booleaneffects matches 0 run scoreboard players operation slot18 hp += fountainOfYouth spellStats
execute if score spellnumber3 spells matches 25 if score slot18bleeding booleaneffects matches 0 run scoreboard players operation slot18 hp += spellbuffsp5 spells
execute if score spellnumber3 spells matches 25 at @e[name=slot18] run particle minecraft:composter ~ ~1 ~ 0.9 0.9 0.9 0.5 500
execute if score spellnumber3 spells matches 25 run scoreboard players set attackIsOngoingGame3 booleans 0
execute if score spellnumber3 spells matches 25 run scoreboard players set spellbuffsp5 spells 0
execute if score spellnumber3 spells matches 25 run tellraw @a[tag=game3] ["",{"selector":"@p[tag=p5]"}," used Fountain of Youth on Slot 2!"]
#overclock
execute if score spellnumber3 spells matches 27 run execute if score buffDurationSlot18 atkmodifiers < overclockDuration spellStats run scoreboard players operation buffDurationSlot18 atkmodifiers = overclockDuration spellStats
execute if score spellnumber3 spells matches 27 run scoreboard players operation attackBuffSlot18 atkmodifiers += overclock spellStats
execute if score spellnumber3 spells matches 27 run scoreboard players operation shield slot18 -= overclockAtk spellStats
execute if score spellnumber3 spells matches 27 if score shield slot18 matches ..0 run scoreboard players operation slot18 hp += shield slot18
execute if score spellnumber3 spells matches 27 at @e[name=slot18] run particle minecraft:trial_spawner_detection ~ ~1 ~ 0.9 0.9 0.9 0.5 400
execute if score spellnumber3 spells matches 27 run scoreboard players set attackIsOngoingGame3 booleans 0
execute if score spellnumber3 spells matches 27 run tellraw @a[tag=game3] ["",{"selector":"@p[tag=p5]"}," used Overclock on Slot 2!"]

#Life Leech Token

execute if score spellnumber3 spells matches -2 if score slot18bleeding booleaneffects matches 0 run scoreboard players operation slot18 hp += lifeLeechHeal spellStats
execute if score spellnumber3 spells matches -2 if score slot18bleeding booleaneffects matches 0 run scoreboard players operation slot18 hp += spellbuffsp5 spells
execute if score spellnumber3 spells matches -2 run scoreboard players set attackIsOngoingGame3 booleans 0
execute if score spellnumber3 spells matches -2 run execute at @n[type=armor_stand,name=slot18] run particle dust{color:[0.639,0.008,0.008],scale:1} ~ ~1 ~ 0.9 0.9 0.9 0.1 400
execute if score spellnumber3 spells matches -2 run tellraw @a[tag=game3] ["",{"selector":"@p[tag=p5]"}," used Life Leech to heal Slot 2!"]
execute if score spellnumber3 spells matches -2 run scoreboard players set spellbuffsp5 spells 0

#Life Leech
execute if score spellnumber3 spells matches 31 run scoreboard players operation spellDmg saves = lifeLeech spellStats
execute if score spellnumber3 spells matches 31 run scoreboard players operation spellDmg saves += spellbuffsp6 spells
execute if score spellnumber3 spells matches 31 run scoreboard players operation spellDmg saves += marks slot18
execute if score spellnumber3 spells matches 31 run scoreboard players operation spellDmg saves /= atkmultiplier slot18
execute if score spellnumber3 spells matches 31 run execute if score ward slot18 matches 0 run scoreboard players operation shield slot18 -= spellDmg saves
execute if score spellnumber3 spells matches 31 run execute if score ward slot18 matches 0 if score shield slot18 matches ..0 run scoreboard players operation slot18 hp += shield slot18
execute if score spellnumber3 spells matches 31 run execute if score ward slot18 matches 1.. run function chthree:wardslot18
execute if score spellnumber3 spells matches 31 run function chthree:spellgivetargetsp5reverse
execute if score spellnumber3 spells matches 31 run execute at @n[type=armor_stand,name=slot18] run particle dust{color:[0.639,0.008,0.008],scale:1} ~ ~1 ~ 0.9 0.9 0.9 0.1 400
execute if score spellnumber3 spells matches 31 run tellraw @a[tag=game3] ["",{"selector":"@p[tag=p6]"}," used Life Leech on Slot 2!"]
execute if score spellnumber3 spells matches 31 run scoreboard players set spellnumber3 spells -2

#Decimate
execute if score spellnumber3 spells matches 32 run scoreboard players operation spellDmg saves = decimate spellStats
execute if score spellnumber3 spells matches 32 run scoreboard players operation spellDmg saves += spellbuffsp5 spells
execute if score spellnumber3 spells matches 32 run scoreboard players operation spellDmg saves += marks slot18
execute if score spellnumber3 spells matches 32 run scoreboard players operation spellDmg saves /= atkmultiplier slot18
execute if score spellnumber3 spells matches 32 run execute if score ward slot18 matches 0 if score character# slot18 matches ..-1 run scoreboard players operation shield slot18 -= spellDmg saves
execute if score spellnumber3 spells matches 32 run execute if score ward slot18 matches 0 if score character# slot18 matches ..-1 if score shield slot18 matches ..0 run scoreboard players operation slot18 hp += shield slot18
execute if score spellnumber3 spells matches 32 run execute if score ward slot18 matches 1.. if score character# slot18 matches ..-1 run function chthree:wardslot18
execute if score spellnumber3 spells matches 32 run execute at @n[type=armor_stand,name=slot18] run particle block{block_state:"minecraft:dripstone_block"} ~ ~ ~ 0.9 2 0.9 1 250 normal
execute if score spellnumber3 spells matches 32 run tellraw @a[tag=game3] ["",{"selector":"@p[tag=p6]"}," used Decimate on Slot 2!"]
execute if score spellnumber3 spells matches 32 run scoreboard players set spellbuffsp6 spells 0
execute if score spellnumber3 spells matches 32 run function chthree:spellphasep5

#This goes at the bottom
execute if score shield slot17 matches ..0 run scoreboard players set shield slot17 0
execute if score shield slot18 matches ..0 run scoreboard players set shield slot18 0
execute if score shield slot19 matches ..0 run scoreboard players set shield slot19 0
execute if score shield slot20 matches ..0 run scoreboard players set shield slot20 0
execute if score game3Ongoing ongoinggames matches 1 if score invincibleSlot17 booleaneffects matches 0 run execute if score slot17 hp matches ..0 run execute unless score speed slot17 matches ..-900000 run function chthree:death1
execute if score game3Ongoing ongoinggames matches 1 if score invincibleSlot18 booleaneffects matches 0 run execute if score slot18 hp matches ..0 run execute unless score speed slot18 matches ..-900000 run function chthree:death2
execute if score game3Ongoing ongoinggames matches 1 if score invincibleSlot19 booleaneffects matches 0 run execute if score slot19 hp matches ..0 run execute unless score speed slot19 matches ..-900000 run function chthree:death3
execute if score game3Ongoing ongoinggames matches 1 if score invincibleSlot20 booleaneffects matches 0 unless score character# slot20 matches 0 run execute if score slot20 hp matches ..0 run execute unless score speed slot20 matches ..-900000 run function chthree:death4
execute if score game3Ongoing ongoinggames matches 1 if score invincibleSlot21 booleaneffects matches 0 run execute if score slot21 hp matches ..0 run execute unless score speed slot21 matches ..-900000 run function chthree:death5
execute if score game3Ongoing ongoinggames matches 1 if score invincibleSlot22 booleaneffects matches 0 run execute if score slot22 hp matches ..0 run execute unless score speed slot22 matches ..-900000 run function chthree:death6
execute if score game3Ongoing ongoinggames matches 1 if score invincibleSlot23 booleaneffects matches 0 run execute if score slot23 hp matches ..0 run execute unless score speed slot23 matches ..-900000 run function chthree:death7
execute if score game3Ongoing ongoinggames matches 1 if score invincibleSlot24 booleaneffects matches 0 unless score character# slot24 matches 0 run execute if score slot24 hp matches ..0 run execute unless score speed slot24 matches ..-900000 run function chthree:death8