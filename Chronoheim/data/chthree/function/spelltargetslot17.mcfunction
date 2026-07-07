effect clear @a[tag=game3] weakness
clear @a[tag=game3]

#Dragonforge
execute if score spellnumber3 spells matches 26 run execute if score durationSlot17 shield < dragonforgeDuration spellStats run scoreboard players operation durationSlot17 shield = dragonforgeDuration spellStats 
execute if score spellnumber3 spells matches 26 run scoreboard players operation shield slot17 += dragonforge spellStats
execute if score spellnumber3 spells matches 26 run execute if score slot18 hp matches ..0 if score slot19 hp matches ..0 if score slot20 hp matches ..0 run scoreboard players operation shield slot17 += dragonforge spellStats
execute if score spellnumber3 spells matches 26 run scoreboard players set attackIsOngoingGame3 booleans 0
execute if score spellnumber3 spells matches 26 run execute if score slot18 hp matches ..0 if score slot19 hp matches ..0 if score slot20 hp matches ..0 run execute at @n[type=armor_stand,name=slot17] run particle dragon_breath ~ ~1 ~ 0.9 0.9 0.9 0.1 400
execute if score spellnumber3 spells matches 26 run execute at @n[type=armor_stand,name=slot17] run particle dragon_breath ~ ~1 ~ 0.9 0.9 0.9 0.1 100
execute if score spellnumber3 spells matches 26 run tellraw @a[tag=game3] ["",{"selector":"@p[tag=p5]"}," used Dragonforge on Slot 1!"]

#Embiggen
execute if score spellnumber3 spells matches 13 run execute if score buffDurationSlot17 atkmodifiers < embiggenDuration spellStats run scoreboard players operation buffDurationSlot17 atkmodifiers = embiggenDuration spellStats
execute if score spellnumber3 spells matches 13 run scoreboard players operation attackBuffSlot17 atkmodifiers += embiggenBuff spellStats
execute if score spellnumber3 spells matches 13 run scoreboard players operation maxhp slot17 += embiggen spellStats
execute if score spellnumber3 spells matches 13 run scoreboard players operation slot17 hp += embiggen spellStats
execute if score spellnumber3 spells matches 13 run scoreboard players set attackIsOngoingGame3 booleans 0
execute if score spellnumber3 spells matches 13 run execute at @n[type=armor_stand,name=slot17] run particle minecraft:egg_crack ~ ~1 ~ 0.9 0.9 0.9 0.1 100
execute if score spellnumber3 spells matches 13 run tellraw @a[tag=game3] ["",{"selector":"@p[tag=p5]"}," used Embiggen on Slot 1!"]

#Embrittle
execute if score spellnumber3 spells matches 12 if score ward slot17 matches 0 run execute if score debuffDurationSlot17 atkmodifiers < embrittleDuration spellStats run scoreboard players operation debuffDurationSlot17 atkmodifiers = embrittleDuration spellStats
execute if score spellnumber3 spells matches 12 if score ward slot17 matches 0 run scoreboard players operation attackDebuffSlot17 atkmodifiers += embrittle spellStats
execute if score spellnumber3 spells matches 12 if score ward slot17 matches 1.. run function chthree:wardslot17
execute if score spellnumber3 spells matches 12 run function chthree:spellphasep5
execute if score spellnumber3 spells matches 12 run execute at @n[type=armor_stand,name=slot17] run particle minecraft:block_crumble{block_state:"minecraft:ice"} ~ ~1 ~ 0.9 0.9 0.9 0.1 200
execute if score spellnumber3 spells matches 12 run tellraw @a[tag=game3] ["",{"selector":"@p[tag=p6]"}," used Embrittle on Slot 1!"]

#Evil Eye
execute if score spellnumber3 spells matches 15 if score ward slot17 matches 0 run execute if score durationSlot17 mark < evilEyeDuration spellStats run scoreboard players operation durationSlot17 mark = evilEyeDuration spellStats
execute if score spellnumber3 spells matches 15 if score ward slot17 matches 0 run scoreboard players operation marks slot17 += evilEye spellStats
execute if score spellnumber3 spells matches 15 if score ward slot17 matches 1.. run function chthree:wardslot17
execute if score spellnumber3 spells matches 15 run function chthree:spellphasep5
execute if score spellnumber3 spells matches 15 run execute at @n[type=armor_stand,name=slot17] run particle minecraft:effect ~ ~1 ~ 0.7 0.7 0.7 0.1 200
execute if score spellnumber3 spells matches 15 run tellraw @a[tag=game3] ["",{"selector":"@p[tag=p6]"}," used Evil Eye on Slot 1!"]

#Frostbolt
execute if score spellnumber3 spells matches 6 run scoreboard players operation spellDmg3 saves = frostbolt spellStats
execute if score spellnumber3 spells matches 6 run scoreboard players operation spellDmg3 saves += spellbuffsp6 spells
execute if score spellnumber3 spells matches 6 run scoreboard players operation spellDmg3 saves += marks slot17
execute if score spellnumber3 spells matches 6 run scoreboard players operation spellDmg3 saves /= atkmultiplier slot17
execute if score spellnumber3 spells matches 6 run execute if score ward slot17 matches 0 run scoreboard players operation shield slot17 -= spellDmg3 saves
execute if score spellnumber3 spells matches 6 run execute if score ward slot17 matches 0 if score frostboltDuration spellStats > durationSlot17 speedDebuffs run scoreboard players operation durationSlot17 speedDebuffs = frostboltDuration spellStats
execute if score spellnumber3 spells matches 6 run execute if score ward slot17 matches 0 if score frostboltDuration spellStats > debuffDurationSlot17 atkmodifiers run scoreboard players operation debuffDurationSlot17 atkmodifiers = frostboltDuration spellStats
execute if score spellnumber3 spells matches 6 run execute if score ward slot17 matches 0 run scoreboard players operation speedDebuffSlot17 speedDebuffs += frostboltSpDebuff spellStats
execute if score spellnumber3 spells matches 6 run execute if score ward slot17 matches 0 run scoreboard players operation attackDebuffSlot17 atkmodifiers += frostboltDmgDebuff spellStats
execute if score spellnumber3 spells matches 6 run execute if score ward slot17 matches 0 run scoreboard players operation speed slot17 -= frostboltSpDebuff spellStats
execute if score spellnumber3 spells matches 6 run execute if score ward slot17 matches 0 if score shield slot17 matches ..0 run scoreboard players operation slot17 hp += shield slot17
execute if score spellnumber3 spells matches 6 run execute if score ward slot17 matches 1.. run function chthree:wardslot17
execute if score spellnumber3 spells matches 6 run scoreboard players set spellbuffsp6 spells 0
execute if score spellnumber3 spells matches 6 run function chthree:spellphasep5
execute if score spellnumber3 spells matches 6 run execute at @n[type=armor_stand,name=slot17] run particle minecraft:item_snowball ~ ~1 ~ 0.7 0.7 0.7 0.1 200
execute if score spellnumber3 spells matches 6 run tellraw @a[tag=game3] ["",{"selector":"@p[tag=p6]"}," used Frostbolt on Slot 1!"]

#Heal
execute if score spellnumber3 spells matches 2 run scoreboard players operation spellHeal saves = heal spellStats
execute if score spellnumber3 spells matches 2 run scoreboard players operation spellHeal saves += spellbuffsp5 spells
execute if score spellnumber3 spells matches 2 unless score slot17bleeding booleaneffects matches 1.. run scoreboard players operation slot17 hp += spellHeal saves
execute if score spellnumber3 spells matches 2 run function chthree:cleanseslot17
execute if score spellnumber3 spells matches 2 run scoreboard players set spellbuffsp5 spells 0
execute if score spellnumber3 spells matches 2 run scoreboard players set attackIsOngoingGame3 booleans 0
execute if score spellnumber3 spells matches 2 run execute at @n[type=armor_stand,name=slot17] run particle minecraft:composter ~ ~1 ~ 0.9 0.9 0.9 0.5 100
execute if score spellnumber3 spells matches 2 run tellraw @a[tag=game3] ["",{"selector":"@p[tag=p5]"}," used Heal on Slot 1!"]

#Miracle
execute if score spellnumber3 spells matches 17 run function chthree:cleanseslot17
execute if score spellnumber3 spells matches 17 run scoreboard players set attackIsOngoingGame3 booleans 0
execute if score spellnumber3 spells matches 17 run tellraw @a[tag=game3] ["",{"selector":"@p[tag=p5]"}," used Miracle on Slot 1!"]

#Magic Missile! Magic Missile! I smite thee with Magic Missile!
execute if score spellnumber3 spells matches 4 run scoreboard players operation spellDmg saves = magicmissile spellStats
execute if score spellnumber3 spells matches 4 run scoreboard players operation spellDmg saves += spellbuffsp6 spells
execute if score spellnumber3 spells matches 4 run scoreboard players operation spellDmg saves += marks slot17
execute if score spellnumber3 spells matches 4 run scoreboard players operation spellDmg saves /= atkmultiplier slot17
execute if score spellnumber3 spells matches 4 run execute if score ward slot17 matches 0 run scoreboard players operation shield slot17 -= spellDmg saves
execute if score spellnumber3 spells matches 4 run execute if score ward slot17 matches 0 if score shield slot17 matches ..0 run scoreboard players operation slot17 hp += shield slot17
execute if score spellnumber3 spells matches 4 run execute if score ward slot17 matches 1.. run function chthree:wardslot17
execute if score spellnumber3 spells matches 4 at @e[name=slot17] run particle minecraft:enchanted_hit ~ ~1 ~ 0.7 0.7 0.7 0.5 300
execute if score spellnumber3 spells matches 4 at @e[name=slot18] run particle minecraft:enchanted_hit ~ ~1 ~ 0.7 0.7 0.7 0.5 150
execute if score spellnumber3 spells matches 4 run scoreboard players operation spellDmg saves = meteor spellStats
execute if score spellnumber3 spells matches 4 run scoreboard players operation spellDmg saves += spellbuffsp6 spells
execute if score spellnumber3 spells matches 4 run scoreboard players operation spellDmg saves /= magicmissileSplash spellStats
execute if score spellnumber3 spells matches 4 run scoreboard players operation spellDmg saves += marks slot18
execute if score spellnumber3 spells matches 4 run scoreboard players operation spellDmg saves /= atkmultiplier slot18
execute if score spellnumber3 spells matches 4 run execute if score ward slot18 matches 0 run scoreboard players operation shield slot18 -= spellDmg saves
execute if score spellnumber3 spells matches 4 run execute if score ward slot18 matches 0 if score shield slot18 matches ..0 run scoreboard players operation slot18 hp += shield slot18
execute if score spellnumber3 spells matches 4 run execute if score ward slot18 matches 1.. run function chthree:wardslot18
execute if score spellnumber3 spells matches 4 run scoreboard players set spellbuffsp6 spells 0
execute if score spellnumber3 spells matches 4 run function chthree:spellphasep5
execute if score spellnumber3 spells matches 4 run tellraw @a[tag=game1] ["",{"selector":"@p[tag=p6]"}," used Magic Missile on Slot 1!"]

#Protector's Rune
execute if score spellnumber3 spells matches 16 if score protectorsrune spellStats > durationSlot17 taunt run scoreboard players operation durationSlot17 taunt = protectorsrune spellStats
execute if score spellnumber3 spells matches 16 if score protectorsrune spellStats > durationSlot17 taunt if score ward slot17 matches 0 run scoreboard players operation marks slot17 += protectorsruneMarks spellStats
execute if score spellnumber3 spells matches 16 if score protectorsrune spellStats > durationSlot17 taunt if score ward slot17 matches 1.. run function chthree:wardslot17
execute if score spellnumber3 spells matches 16 run scoreboard players set attackIsOngoingGame3 booleans 0
execute if score spellnumber3 spells matches 16 run execute at @n[type=armor_stand,name=slot17] run particle minecraft:block_crumble{block_state:"minecraft:emerald_ore"} ~ ~1 ~ 0.7 0.7 0.7 1 400
execute if score spellnumber3 spells matches 16 run tellraw @a[tag=game3] ["",{"selector":"@p[tag=p5]"}," used Protector's Rune on Slot 1!"]
#Shield
execute if score spellnumber3 spells matches 8 run execute if score durationSlot17 shield < shieldDuration spellStats run scoreboard players operation durationSlot17 shield = shieldDuration spellStats 
execute if score spellnumber3 spells matches 8 run scoreboard players operation shield slot17 += shield spellStats
execute if score spellnumber3 spells matches 8 run scoreboard players set attackIsOngoingGame3 booleans 0
execute if score spellnumber3 spells matches 8 run execute at @n[type=armor_stand,name=slot17] run particle wax_off ~ ~1 ~ 0.7 0.7 0.7 0.1 400
execute if score spellnumber3 spells matches 8 run tellraw @a[tag=game3] ["",{"selector":"@p[tag=p5]"}," used Shield on Slot 1!"]

#Ball Lightning
execute if score spellnumber3 spells matches 9 if score ward slot17 matches 0 run scoreboard players operation slot17 stun += shockOrb spellStats
execute if score spellnumber3 spells matches 9 if score ward slot17 matches 1.. run function chthree:wardslot17
execute if score spellnumber3 spells matches 9 run function chthree:spellphasep5
execute if score spellnumber3 spells matches 9 run execute at @n[type=armor_stand,name=slot17] run particle flash{color:[1.000,1.000,1.000,1.00]} ~ ~1 ~ 0.9 0.9 0.9 0.1 10
execute if score spellnumber3 spells matches 9 run tellraw @a[tag=game3] ["",{"selector":"@p[tag=p6]"}," used Ball Lightning on Slot 1!"]

#Witches Brew
execute if score spellnumber3 spells matches 23 run execute if score ward slot17 matches 0 if score witchesBrewDuration spellStats > durationSlot17 speedDebuffs run scoreboard players operation durationSlot17 speedDebuffs = witchesBrewDuration spellStats
execute if score spellnumber3 spells matches 23 run execute if score ward slot17 matches 0 if score witchesBrewDuration spellStats > debuffDurationSlot17 atkmodifiers run scoreboard players operation debuffDurationSlot17 atkmodifiers = witchesBrewDuration spellStats
execute if score spellnumber3 spells matches 23 run execute if score ward slot17 matches 0 if score witchesBrewDuration spellStats > durationSlot17 poison run scoreboard players operation durationSlot17 poison = witchesBrewDuration spellStats
execute if score spellnumber3 spells matches 23 run execute if score ward slot17 matches 0 if score witchesBrewDuration spellStats > durationSlot17 burn run scoreboard players operation durationSlot17 burn = witchesBrewDuration spellStats
execute if score spellnumber3 spells matches 23 run execute if score ward slot17 matches 0 run scoreboard players operation speedDebuffSlot17 speedDebuffs += witchesBrewSpDebuff spellStats
execute if score spellnumber3 spells matches 23 run execute if score ward slot17 matches 0 run scoreboard players operation attackDebuffSlot17 atkmodifiers += witchesBrewDmgDebuff spellStats
execute if score spellnumber3 spells matches 23 run execute if score ward slot17 matches 0 run scoreboard players operation slot17Poison poison += witchesBrew spellStats
execute if score spellnumber3 spells matches 23 run execute if score ward slot17 matches 0 run scoreboard players operation slot17Burn burn += witchesBrewBurn spellStats
execute if score spellnumber3 spells matches 23 run execute if score ward slot17 matches 0 run scoreboard players operation speed slot17 -= witchesBrewSpDebuff spellStats
execute if score spellnumber3 spells matches 23 run execute if score ward slot17 matches 1.. run function chthree:wardslot17
execute if score spellnumber3 spells matches 23 run function chthree:spellphasep5
execute if score spellnumber3 spells matches 23 run tellraw @a[tag=game3] ["",{"selector":"@p[tag=p6]"}," used Witches Brew on Slot 1!"]
#Shifting Shadows Token
execute if score spellnumber3 spells matches -1 if score shadowsPart1 spells matches 5 if score ward slot17 matches 0 run scoreboard players set durationSlot21-17 fear 1 
execute if score spellnumber3 spells matches -1 if score shadowsPart1 spells matches 6 if score ward slot17 matches 0 run scoreboard players set durationSlot22-17 fear 1 
execute if score spellnumber3 spells matches -1 if score shadowsPart1 spells matches 7 if score ward slot17 matches 0 run scoreboard players set durationSlot23-17 fear 1 
execute if score spellnumber3 spells matches -1 if score shadowsPart1 spells matches 8 if score ward slot17 matches 0 run scoreboard players set durationSlot24-17 fear 1
execute if score spellnumber3 spells matches -1 if score ward slot17 matches 1.. run function chthree:wardslot17
execute if score spellnumber3 spells matches -1 run function chthree:spellphasep5
execute if score spellnumber3 spells matches 28 run execute at @n[type=armor_stand,name=slot17] run particle trial_omen ~ ~1 ~ 0.9 0.9 0.9 0.1 400
execute if score spellnumber3 spells matches -1 run tellraw @a[tag=game3] ["",{"selector":"@p[tag=p6]"}," used Shifting Shadows to fear Slot 1!"]

#Shifting Shadows
execute if score spellnumber3 spells matches 28 run scoreboard players set shadowsPart1 spells 1
execute if score spellnumber3 spells matches 28 run function chthree:spellgivetargetsp5
execute if score spellnumber3 spells matches 28 run scoreboard players set spellnumber3 spells -1
execute if score spellnumber3 spells matches 28 run execute at @n[type=armor_stand,name=slot17] run particle raid_omen ~ ~1 ~ 0.9 0.9 0.9 0.1 400
execute if score spellnumber3 spells matches 28 run tellraw @a[tag=game3] ["",{"selector":"@p[tag=p5]"}," used Shifting Shadows to make Slot 1 scary!"]

#fireball
execute if score spellnumber3 spells matches 1 run scoreboard players operation spellDmg3 saves = fireball spellStats
execute if score spellnumber3 spells matches 1 run scoreboard players operation spellDmg3 saves += spellbuffsp6 spells
execute if score spellnumber3 spells matches 1 run scoreboard players operation spellDmg3 saves += marks slot17
execute if score spellnumber3 spells matches 1 run scoreboard players operation spellDmg3 saves /= atkmultiplier slot17
execute if score spellnumber3 spells matches 1 run execute if score ward slot17 matches 0 run scoreboard players operation shield slot17 -= spellDmg3 saves
execute if score spellnumber3 spells matches 1 run execute if score ward slot17 matches 0 run scoreboard players operation slot17 hp += shield slot17
execute if score spellnumber3 spells matches 1 run execute if score ward slot17 matches 0 if score durationSlot17 burn < fireballDuration spellStats run scoreboard players operation durationSlot17 burn = fireballDuration spellStats
execute if score spellnumber3 spells matches 1 run execute if score ward slot17 matches 0 run scoreboard players operation slot17Burn burn += fireballBurn spellStats
execute if score spellnumber3 spells matches 1 at @e[name=slot17] run particle minecraft:flame ~ ~1 ~ 0.9 0.9 0.9 0.5 100
execute if score spellnumber3 spells matches 1 run execute if score ward slot17 matches 1.. run function chthree:wardslot17
execute if score spellnumber3 spells matches 1 run scoreboard players set spellbuffsp6 spells 0
execute if score spellnumber3 spells matches 1 run function chthree:spellphasep5
execute if score spellnumber3 spells matches 1 run tellraw @a[tag=game3] ["",{"selector":"@p[tag=p6]"}," used Fireball on Slot 1!"]

#meteor
execute if score spellnumber3 spells matches 7 run scoreboard players operation spellDmg3 saves = meteor spellStats
execute if score spellnumber3 spells matches 7 run scoreboard players operation spellDmg3 saves += spellbuffsp6 spells
execute if score spellnumber3 spells matches 7 run scoreboard players operation spellDmg3 saves += marks slot17
execute if score spellnumber3 spells matches 7 run scoreboard players operation spellDmg3 saves /= atkmultiplier slot17
execute if score spellnumber3 spells matches 7 run execute if score ward slot17 matches 0 run scoreboard players operation shield slot17 -= spellDmg3 saves
execute if score spellnumber3 spells matches 7 run execute if score ward slot17 matches 0 if score shield slot17 matches ..0 run scoreboard players operation slot17 hp += shield slot17
execute if score spellnumber3 spells matches 7 run execute if score ward slot17 matches 1.. run function chthree:wardslot17
execute if score spellnumber3 spells matches 7 at @e[name=slot17] run particle minecraft:lava ~ ~1 ~ 0.9 0.9 0.9 0.5 100
execute if score spellnumber3 spells matches 7 at @e[name=slot18] run particle minecraft:lava ~ ~1 ~ 0.9 0.9 0.9 0.5 50
execute if score spellnumber3 spells matches 7 run scoreboard players operation spellDmg3 saves = meteor spellStats
execute if score spellnumber3 spells matches 7 run scoreboard players operation spellDmg3 saves += spellbuffsp6 spells
execute if score spellnumber3 spells matches 7 run scoreboard players operation spellDmg3 saves /= meteorSplash spellStats
execute if score spellnumber3 spells matches 7 run scoreboard players operation spellDmg3 saves += marks slot18
execute if score spellnumber3 spells matches 7 run scoreboard players operation spellDmg3 saves /= atkmultiplier slot18
execute if score spellnumber3 spells matches 7 run execute if score ward slot18 matches 0 run scoreboard players operation shield slot18 -= spellDmg3 saves
execute if score spellnumber3 spells matches 7 run execute if score ward slot18 matches 0 if score shield slot18 matches ..0 run scoreboard players operation slot18 hp += shield slot18
execute if score spellnumber3 spells matches 7 run execute if score ward slot18 matches 1.. run function chthree:wardslot18
execute if score spellnumber3 spells matches 7 run scoreboard players set spellbuffsp6 spells 0
execute if score spellnumber3 spells matches 7 run function chthree:spellphasep5
execute if score spellnumber3 spells matches 7 run tellraw @a[tag=game3] ["",{"selector":"@p[tag=p6]"}," used Meteor on Slot 1!"]

#witchbolt
execute if score spellnumber3 spells matches 10 run scoreboard players operation spellDmg3 saves = witchbolt spellStats
execute if score spellnumber3 spells matches 10 run scoreboard players operation spellDmg3 saves += spellbuffsp6 spells
execute if score spellnumber3 spells matches 10 run scoreboard players operation spellDmg3 saves += marks slot17
execute if score spellnumber3 spells matches 10 run scoreboard players operation spellDmg3 saves /= atkmultiplier slot17
execute if score spellnumber3 spells matches 10 run execute if score ward slot17 matches 0 run scoreboard players operation shield slot17 -= spellDmg3 saves
execute if score spellnumber3 spells matches 10 run execute if score ward slot17 matches 0 if score shield slot17 matches ..0 run scoreboard players operation slot17 hp += shield slot17
execute if score spellnumber3 spells matches 10 at @e[name=slot17] run particle minecraft:enchanted_hit ~ ~1 ~ 0.9 0.9 0.9 0.5 200
execute if score spellnumber3 spells matches 10 run execute if score ward slot17 matches 1.. run function chthree:wardslot17
execute if score spellnumber3 spells matches 10 run scoreboard players set spellbuffsp6 spells 0
execute if score spellnumber3 spells matches 10 run function chthree:spellphasep5
execute if score spellnumber3 spells matches 10 run tellraw @a[tag=game3] ["",{"selector":"@p[tag=p6]"}," used Witch Bolt on Slot 1!"]

#ward
execute if score spellnumber3 spells matches 19 run scoreboard players set ward slot17 1
execute if score spellnumber3 spells matches 19 at @e[name=slot17] run particle minecraft:ominous_spawning ~ ~1 ~ 0.9 0.9 0.9 0.1 100
execute if score spellnumber3 spells matches 19 run scoreboard players set attackIsOngoingGame3 booleans 0
execute if score spellnumber3 spells matches 19 run tellraw @a[tag=game3] ["",{"selector":"@p[tag=p5]"}," used Ward on Slot 1!"]

#plague
execute if score spellnumber3 spells matches 21 if score ward slot17 matches 0 run scoreboard players operation slot17Disease disease += plague spellStats
execute if score spellnumber3 spells matches 21 at @e[name=slot17] run particle minecraft:trial_omen ~ ~1 ~ 0.9 0.9 0.9 0.5 100
execute if score spellnumber3 spells matches 21 if score ward slot17 matches 1.. run function chthree:wardslot17
execute if score spellnumber3 spells matches 21 run function chthree:spellphasep5
execute if score spellnumber3 spells matches 21 run tellraw @a[tag=game3] ["",{"selector":"@p[tag=p6]"}," used Plague on Slot 1!"]

#Second wind
execute if score spellnumber3 spells matches 22 run execute if score durationSlot17 speedBuffs < secondWindDuration spellStats run scoreboard players operation durationSlot17 speedBuffs = secondWindDuration spellStats
execute if score spellnumber3 spells matches 22 run scoreboard players operation speedBuffSlot17 speedBuffs += secondWindSpeed spellStats
execute if score spellnumber3 spells matches 22 run scoreboard players operation speed slot17 += secondWindSpeed spellStats
execute if score spellnumber3 spells matches 22 if score slot17bleeding booleaneffects matches 0 run scoreboard players operation slot17 hp += secondWind spellStats
execute if score spellnumber3 spells matches 22 if score slot17bleeding booleaneffects matches 0 run scoreboard players operation slot17 hp += spellbuffsp5 spells
execute if score spellnumber3 spells matches 22 at @e[name=slot17] run particle minecraft:trial_spawner_detection_ominous ~ ~1 ~ 0.9 0.9 0.9 0.5 100
execute if score spellnumber3 spells matches 22 run scoreboard players set attackIsOngoingGame3 booleans 0
execute if score spellnumber3 spells matches 22 run scoreboard players set spellbuffsp5 spells 0
execute if score spellnumber3 spells matches 22 run tellraw @a[tag=game3] ["",{"selector":"@p[tag=p5]"}," used Second Wind on Slot 1!"]

#fountain of youth
execute if score spellnumber3 spells matches 25 run execute if score disarmedslot17 booleaneffects < fountainOfYouthDuration spellStats run scoreboard players operation disarmedslot17 booleaneffects = fountainOfYouthDuration spellStats
execute if score spellnumber3 spells matches 25 if score slot17bleeding booleaneffects matches 0 run scoreboard players operation slot17 hp += fountainOfYouth spellStats
execute if score spellnumber3 spells matches 25 if score slot17bleeding booleaneffects matches 0 run scoreboard players operation slot17 hp += spellbuffsp5 spells
execute if score spellnumber3 spells matches 25 at @e[name=slot17] run particle minecraft:composter ~ ~1 ~ 0.9 0.9 0.9 0.5 500
execute if score spellnumber3 spells matches 25 run scoreboard players set attackIsOngoingGame3 booleans 0
execute if score spellnumber3 spells matches 25 run scoreboard players set spellbuffsp5 spells 0
execute if score spellnumber3 spells matches 25 run tellraw @a[tag=game3] ["",{"selector":"@p[tag=p5]"}," used Fountain of Youth on Slot 1!"]

#overclock
execute if score spellnumber3 spells matches 27 run execute if score buffDurationSlot17 atkmodifiers < overclockDuration spellStats run scoreboard players operation buffDurationSlot17 atkmodifiers = overclockDuration spellStats
execute if score spellnumber3 spells matches 27 run scoreboard players operation attackBuffSlot17 atkmodifiers += overclock spellStats
execute if score spellnumber3 spells matches 27 run scoreboard players operation shield slot17 -= overclockAtk spellStats
execute if score spellnumber3 spells matches 27 if score shield slot17 matches ..0 run scoreboard players operation slot17 hp += shield slot17
execute if score spellnumber3 spells matches 27 at @e[name=slot17] run particle minecraft:trial_spawner_detection ~ ~1 ~ 0.9 0.9 0.9 0.5 400
execute if score spellnumber3 spells matches 27 run scoreboard players set attackIsOngoingGame3 booleans 0
execute if score spellnumber3 spells matches 27 run tellraw @a[tag=game3] ["",{"selector":"@p[tag=p5]"}," used Overclock on Slot 1!"]

#Life Leech Token

execute if score spellnumber3 spells matches -2 if score slot17bleeding booleaneffects matches 0 run scoreboard players operation slot17 hp += lifeLeechHeal spellStats
execute if score spellnumber3 spells matches -2 if score slot17bleeding booleaneffects matches 0 run scoreboard players operation slot17 hp += spellbuffsp5 spells
execute if score spellnumber3 spells matches -2 run scoreboard players set attackIsOngoingGame3 booleans 0
execute if score spellnumber3 spells matches -2 run execute at @n[type=armor_stand,name=slot17] run particle dust{color:[0.639,0.008,0.008],scale:1} ~ ~1 ~ 0.9 0.9 0.9 0.1 400
execute if score spellnumber3 spells matches -2 run tellraw @a[tag=game3] ["",{"selector":"@p[tag=p5]"}," used Life Leech to heal Slot 1!"]
execute if score spellnumber3 spells matches -2 run scoreboard players set spellbuffsp5 spells 0

#Life Leech
execute if score spellnumber3 spells matches 31 run scoreboard players operation spellDmg saves = lifeLeech spellStats
execute if score spellnumber3 spells matches 31 run scoreboard players operation spellDmg saves += spellbuffsp6 spells
execute if score spellnumber3 spells matches 31 run scoreboard players operation spellDmg saves += marks slot17
execute if score spellnumber3 spells matches 31 run scoreboard players operation spellDmg saves /= atkmultiplier slot17
execute if score spellnumber3 spells matches 31 run execute if score ward slot17 matches 0 run scoreboard players operation shield slot17 -= spellDmg saves
execute if score spellnumber3 spells matches 31 run execute if score ward slot17 matches 0 if score shield slot17 matches ..0 run scoreboard players operation slot17 hp += shield slot17
execute if score spellnumber3 spells matches 31 run execute if score ward slot17 matches 1.. run function chthree:wardslot17
execute if score spellnumber3 spells matches 31 run function chthree:spellgivetargetsp5reverse
execute if score spellnumber3 spells matches 31 run execute at @n[type=armor_stand,name=slot17] run particle dust{color:[0.639,0.008,0.008],scale:1} ~ ~1 ~ 0.9 0.9 0.9 0.1 400
execute if score spellnumber3 spells matches 31 run tellraw @a[tag=game3] ["",{"selector":"@p[tag=p6]"}," used Life Leech on Slot 1!"]
execute if score spellnumber3 spells matches 31 run scoreboard players set spellnumber3 spells -2

#Decimate
execute if score spellnumber3 spells matches 32 run scoreboard players operation spellDmg saves = decimate spellStats
execute if score spellnumber3 spells matches 32 run scoreboard players operation spellDmg saves += spellbuffsp6 spells
execute if score spellnumber3 spells matches 32 run scoreboard players operation spellDmg saves += marks slot17
execute if score spellnumber3 spells matches 32 run scoreboard players operation spellDmg saves /= atkmultiplier slot17
execute if score spellnumber3 spells matches 32 run execute if score ward slot17 matches 0 if score character# slot17 matches ..-1 run scoreboard players operation shield slot17 -= spellDmg saves
execute if score spellnumber3 spells matches 32 run execute if score ward slot17 matches 0 if score character# slot17 matches ..-1 if score shield slot17 matches ..0 run scoreboard players operation slot17 hp += shield slot17
execute if score spellnumber3 spells matches 32 run execute if score ward slot17 matches 1.. if score character# slot17 matches ..-1 run function chthree:wardslot17
execute if score spellnumber3 spells matches 32 run execute at @n[type=armor_stand,name=slot17] run particle block{block_state:"minecraft:dripstone_block"} ~ ~ ~ 0.9 2 0.9 1 250 normal
execute if score spellnumber3 spells matches 32 run tellraw @a[tag=game3] ["",{"selector":"@p[tag=p6]"}," used Decimate on Slot 1!"]
execute if score spellnumber3 spells matches 32 run scoreboard players set spellbuffsp6 spells 0
execute if score spellnumber3 spells matches 32 run function chthree:spellphasep5

#cannibalize token

execute if score spellnumber3 spells matches -3 if score slot17bleeding booleaneffects matches 0 run scoreboard players operation slot17 hp += cannibalize spellStats
execute if score spellnumber3 spells matches -3 if score slot17bleeding booleaneffects matches 0 run scoreboard players operation slot17 hp += spellbuffsp5 spells
execute if score spellnumber3 spells matches -3 run scoreboard players set attackIsOngoingGame3 booleans 0
execute if score spellnumber3 spells matches -3 run execute at @n[type=armor_stand,name=slot17] run particle dust{color:[0.639,0.008,0.008],scale:1} ~ ~1 ~ 0.9 0.9 0.9 0.1 400
execute if score spellnumber3 spells matches -3 run tellraw @a[tag=game3] ["",{"selector":"@p[tag=p5]"}," used Cannibalize to heal Slot 1!"]
execute if score spellnumber3 spells matches -3 run scoreboard players set spellbuffsp5 spells 0

#cannibalize
execute if score spellnumber3 spells matches 34 run scoreboard players operation slot17 hp -= cannibalize spellStats
execute if score spellnumber3 spells matches 34 run scoreboard players operation slot17bleeding booleaneffects += cannibalizeDuration spellStats
execute if score spellnumber3 spells matches 34 run function chthree:spellgivetargetsp6reverse
execute if score spellnumber3 spells matches 34 run execute at @n[type=armor_stand,name=slot17] run particle dust{color:[0.639,0.008,0.008],scale:1} ~ ~1 ~ 0.9 0.9 0.9 0.1 400
execute if score spellnumber3 spells matches 34 run tellraw @a[tag=game3] ["",{"selector":"@p[tag=p5]"}," used Cannibalize on Slot 1!"]
execute if score spellnumber3 spells matches 34 run scoreboard players set spellnumber3 spells -3

#Dark Ritual
execute if score spellnumber3 spells matches 40 run execute if score buffDurationSlot17 atkmodifiers < darkpowerDuration spellStats run scoreboard players operation buffDurationSlot17 atkmodifiers = darkpowerDuration spellStats
execute if score spellnumber3 spells matches 40 run scoreboard players operation attackBuffSlot17 atkmodifiers += darkpower spellStats
execute if score spellnumber3 spells matches 40 run scoreboard players operation attackBuffSlot17 atkmodifiers += darkritual player5spells
execute if score spellnumber3 spells matches 40 at @e[name=slot17] run particle minecraft:trial_omen ~ ~1 ~ 0.9 0.9 0.9 0.5 40
execute if score spellnumber3 spells matches 40 run scoreboard players set attackIsOngoingGame3 booleans 0
execute if score spellnumber3 spells matches 40 run tellraw @a[tag=game3] ["",{"selector":"@p[tag=p5]"}," used Dark Ritual on Slot 1!"]

#Monkey's Paw
execute if score spellnumber3 spells matches 43 run scoreboard players operation invincibleSlot17 booleaneffects = monkeyspaw spellStats
execute if score spellnumber3 spells matches 43 run scoreboard players operation savehp17 saves = slot17 hp
execute if score spellnumber3 spells matches 43 run scoreboard players set curse slot17 5
execute if score spellnumber3 spells matches 43 run scoreboard players set curseStacks slot17 0
execute if score spellnumber3 spells matches 43 run scoreboard players operation curseDuration slot17 = monkeyspaw spellStats
execute if score spellnumber3 spells matches 43 at @e[name=slot17] run particle minecraft:raid_omen ~ ~1 ~ 0.9 0.9 0.9 0.00000001 200
execute if score spellnumber3 spells matches 43 run playsound minecraft:ambient.cave player @a[tag=game3] ~ ~ ~ 500 2
execute if score spellnumber3 spells matches 43 run scoreboard players set attackIsOngoingGame3 booleans 0
execute if score spellnumber3 spells matches 43 run tellraw @a[tag=game3] ["",{"selector":"@p[tag=p5]"}," used Monkey's Paw on Slot 1!"]

#Slimed!
execute if score spellnumber3 spells matches 35 if score ward slot17 matches 0 run scoreboard players operation disarmedslot17 booleaneffects += slimed spellStats
execute if score spellnumber3 spells matches 35 if score ward slot17 matches 1.. run function chthree:wardslot17
execute if score spellnumber3 spells matches 35 run function chthree:spellphasep5
execute if score spellnumber3 spells matches 35 run execute at @n[type=armor_stand,name=slot17] run particle minecraft:item_slime ~ ~1 ~ 0.7 0.7 0.7 0.3 150
execute if score spellnumber3 spells matches 35 run tellraw @a[tag=game3] ["",{"selector":"@p[tag=p6]"}," used Slimed! on Slot 1!"]

#Vampire Mark
execute if score spellnumber3 spells matches 36 run scoreboard players operation lifesteal slot17 = vampiremark spellStats
execute if score spellnumber3 spells matches 36 run execute at @n[type=armor_stand,name=slot17] run particle minecraft:crimson_spore ~ ~1 ~ 0.6 0.4 0.6 0 200
execute if score spellnumber3 spells matches 36 run tellraw @a[tag=game3] ["",{"selector":"@p[tag=p5]"}," used Vampire Mark on Slot 1!"]
execute if score spellnumber3 spells matches 36 run scoreboard players set attackIsOngoingGame3 booleans 0

#Butchering
execute if score spellnumber3 spells matches 37 run scoreboard players operation spellDmg saves = butchering spellStats
execute if score spellnumber3 spells matches 37 run scoreboard players operation spellDmg saves += spellbuffsp5 spells
execute if score spellnumber3 spells matches 37 run scoreboard players operation spellDmg saves += marks slot17
execute if score spellnumber3 spells matches 37 run scoreboard players operation spellDmg saves /= atkmultiplier slot17
execute if score spellnumber3 spells matches 37 run execute if score ward slot17 matches 0 run scoreboard players operation shield slot17 -= spellDmg saves
execute if score spellnumber3 spells matches 37 run execute if score ward slot17 matches 0 if score shield slot17 matches ..0 run scoreboard players operation slot17 hp += shield slot17
execute if score spellnumber3 spells matches 37 at @e[name=slot17] run particle minecraft:damage_indicator ~ ~1 ~ 0.6 0.6 0.6 0 100
execute if score spellnumber3 spells matches 37 run execute if score ward slot17 matches 1.. run function chthree:wardslot17
execute if score spellnumber3 spells matches 37 run scoreboard players set spellbuffsp5 spells 0
execute if score spellnumber3 spells matches 37 run function chthree:spellphasep5
execute if score spellnumber3 spells matches 37 run tellraw @a[tag=game3] ["",{"selector":"@p[tag=p6]"}," used Butchering on Slot 1!"]

#Will O' Wisp
execute if score spellnumber3 spells matches 38 run execute if score ward slot17 matches 0 if score durationSlot17 burn < willowispDuration spellStats run scoreboard players operation durationSlot17 burn = willowispDuration spellStats
execute if score spellnumber3 spells matches 38 run execute if score ward slot17 matches 0 run scoreboard players operation slot17Burn burn += willowisp spellStats
execute if score spellnumber3 spells matches 38 run scoreboard players operation spellDmg saves = slot17Burn burn
execute if score spellnumber3 spells matches 38 run scoreboard players operation spellDmg saves += spellbuffsp5 spells
execute if score spellnumber3 spells matches 38 run scoreboard players operation spellDmg saves += marks slot17
execute if score spellnumber3 spells matches 38 run scoreboard players operation spellDmg saves /= atkmultiplier slot17
execute if score spellnumber3 spells matches 38 run execute if score ward slot17 matches 0 run scoreboard players operation shield slot17 -= spellDmg saves
execute if score spellnumber3 spells matches 38 run execute if score ward slot17 matches 0 if score shield slot17 matches ..0 run scoreboard players operation slot17 hp += shield slot17
execute if score spellnumber3 spells matches 38 at @e[name=slot17] run particle minecraft:glow ~ ~1 ~ 0.7 0.7 0.7 0.1 100
execute if score spellnumber3 spells matches 38 at @e[name=slot17] run particle minecraft:soul_fire_flame ~ ~1 ~ 0.6 0.6 0.6 0.1 100
execute if score spellnumber3 spells matches 38 run execute if score ward slot17 matches 1.. run function chthree:wardslot17
execute if score spellnumber3 spells matches 38 run scoreboard players set spellbuffsp5 spells 0
execute if score spellnumber3 spells matches 38 run function chthree:spellphasep5
execute if score spellnumber3 spells matches 38 run tellraw @a[tag=game3] ["",{"selector":"@p[tag=p6]"}," used Will O' Wisp on Slot 1!"]

#Curse of Bats
execute if score spellnumber3 spells matches 42 if score ward slot17 matches ..0 unless score curse slot17 matches 5 unless score curse slot17 matches 6 run scoreboard players set curseStacks slot17 0
execute if score spellnumber3 spells matches 42 if score ward slot17 matches ..0 unless score curse slot17 matches 5 unless score curse slot17 matches 6 run scoreboard players set curseDuration slot17 -1
execute if score spellnumber3 spells matches 42 if score ward slot17 matches ..0 unless score curse slot17 matches 5 run scoreboard players set curse slot17 6
execute if score spellnumber3 spells matches 42 if score ward slot17 matches ..0 unless score curse slot17 matches 5 if score curse slot17 matches 6 run scoreboard players add curseStacks slot17 1
execute if score spellnumber3 spells matches 42 run execute at @n[name=slot17] run particle shriek{delay:0} ~ ~1 ~ 0.3 0.5 0.3 0.1 200 normal
execute if score spellnumber3 spells matches 42 run tellraw @a[tag=game3] ["",{"selector":"@p[tag=p6]"}," used Curse of Bats on Slot 1!"]
execute if score spellnumber3 spells matches 42 if score ward slot17 matches 1.. run function chthree:wardslot17
execute if score spellnumber3 spells matches 42 run function chthree:spellphasep5



#This goes at the bottom
execute if score shield slot17 matches ..0 run scoreboard players set shield slot17 0
execute if score shield slot17 matches ..0 run scoreboard players set shield slot17 0
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