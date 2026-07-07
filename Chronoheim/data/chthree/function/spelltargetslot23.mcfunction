effect clear @a[tag=game3] weakness
clear @a[tag=game3]

#Dragonforge
execute if score spellnumber3 spells matches 26 run execute if score durationSlot23 shield < dragonforgeDuration spellStats run scoreboard players operation durationSlot23 shield = dragonforgeDuration spellStats 
execute if score spellnumber3 spells matches 26 run scoreboard players operation shield slot23 += dragonforge spellStats
execute if score spellnumber3 spells matches 26 run execute if score slot22 hp matches ..0 if score slot21 hp matches ..0 if score slot24 hp matches ..0 run scoreboard players operation shield slot23 += dragonforge spellStats
execute if score spellnumber3 spells matches 26 run function chthree:spellphasep5
execute if score spellnumber3 spells matches 26 run execute if score slot22 hp matches ..0 if score slot21 hp matches ..0 if score slot24 hp matches ..0 run execute at @n[type=armor_stand,name=slot22] run particle dragon_breath ~ ~1 ~ 0.9 0.9 0.9 0.1 400
execute if score spellnumber3 spells matches 26 run execute at @n[type=armor_stand,name=slot22] run particle dragon_breath ~ ~1 ~ 0.9 0.9 0.9 0.1 100
execute if score spellnumber3 spells matches 26 run tellraw @a[tag=game3] ["",{"selector":"@p[tag=p6]"}," used Dragonforge on Slot 7!"]

#Embiggen
execute if score spellnumber3 spells matches 13 run execute if score buffDurationSlot23 atkmodifiers < embiggenDuration spellStats run scoreboard players operation buffDurationSlot23 atkmodifiers = embiggenDuration spellStats
execute if score spellnumber3 spells matches 13 run scoreboard players operation attackBuffSlot23 atkmodifiers += embiggenBuff spellStats
execute if score spellnumber3 spells matches 13 run scoreboard players operation maxhp slot23 += embiggen spellStats
execute if score spellnumber3 spells matches 13 run scoreboard players operation slot23 hp += embiggen spellStats
execute if score spellnumber3 spells matches 13 run function chthree:spellphasep5
execute if score spellnumber3 spells matches 13 run execute at @n[type=armor_stand,name=slot23] run particle minecraft:egg_crack ~ ~1 ~ 0.9 0.9 0.9 0.1 100
execute if score spellnumber3 spells matches 13 run tellraw @a[tag=game3] ["",{"selector":"@p[tag=p6]"}," used Embiggen on Slot 7!"]

#Embrittle
execute if score spellnumber3 spells matches 12 if score ward slot23 matches 0 run execute if score debuffDurationSlot23 atkmodifiers < embrittleDuration spellStats run scoreboard players operation debuffDurationSlot23 atkmodifiers = embrittleDuration spellStats
execute if score spellnumber3 spells matches 12 if score ward slot23 matches 0 run scoreboard players operation attackDebuffSlot23 atkmodifiers += embrittle spellStats
execute if score spellnumber3 spells matches 12 if score ward slot23 matches 1.. run function chthree:wardslot23
execute if score spellnumber3 spells matches 12 run scoreboard players set attackIsOngoingGame3 booleans 0
execute if score spellnumber3 spells matches 12 run execute at @n[type=armor_stand,name=slot23] run particle minecraft:block_crumble{block_state:"minecraft:ice"} ~ ~1 ~ 0.9 0.9 0.9 0.1 200
execute if score spellnumber3 spells matches 12 run tellraw @a[tag=game3] ["",{"selector":"@p[tag=p5]"}," used Embrittle on Slot 7!"]

#Evil Eye
execute if score spellnumber3 spells matches 15 if score ward slot23 matches 0 run execute if score durationSlot23 mark < evilEyeDuration spellStats run scoreboard players operation durationSlot23 mark = evilEyeDuration spellStats
execute if score spellnumber3 spells matches 15 if score ward slot23 matches 0 run scoreboard players operation marks slot23 += evilEye spellStats
execute if score spellnumber3 spells matches 15 if score ward slot23 matches 1.. run function chthree:wardslot23
execute if score spellnumber3 spells matches 15 run scoreboard players set attackIsOngoingGame3 booleans 0
execute if score spellnumber3 spells matches 15 run execute at @n[type=armor_stand,name=slot23] run particle minecraft:effect ~ ~1 ~ 0.7 0.7 0.7 0.1 200
execute if score spellnumber3 spells matches 6 run execute at @n[type=armor_stand,name=slot23] run particle minecraft:item_snowball ~ ~1 ~ 0.7 0.7 0.7 0.1 200
execute if score spellnumber3 spells matches 15 run tellraw @a[tag=game3] ["",{"selector":"@p[tag=p5]"}," used Evil Eye on Slot 7!"]

#Frostbolt
execute if score spellnumber3 spells matches 6 run scoreboard players operation spellDmg3 saves = frostbolt spellStats
execute if score spellnumber3 spells matches 6 run scoreboard players operation spellDmg3 saves += spellbuffsp5 spells
execute if score spellnumber3 spells matches 6 run scoreboard players operation spellDmg3 saves += marks slot23
execute if score spellnumber3 spells matches 6 run scoreboard players operation spellDmg3 saves /= atkmultiplier slot23
execute if score spellnumber3 spells matches 6 run execute if score ward slot23 matches 0 run scoreboard players operation shield slot23 -= spellDmg3 saves
execute if score spellnumber3 spells matches 6 run execute if score ward slot23 matches 0 if score frostboltDuration spellStats > durationSlot23 speedDebuffs run scoreboard players operation durationSlot23 speedDebuffs = frostboltDuration spellStats
execute if score spellnumber3 spells matches 6 run execute if score ward slot23 matches 0 if score frostboltDuration spellStats > debuffDurationSlot23 atkmodifiers run scoreboard players operation debuffDurationSlot23 atkmodifiers = frostboltDuration spellStats
execute if score spellnumber3 spells matches 6 run execute if score ward slot23 matches 0 run scoreboard players operation speedDebuffSlot23 speedDebuffs += frostboltSpDebuff spellStats
execute if score spellnumber3 spells matches 6 run execute if score ward slot23 matches 0 run scoreboard players operation attackDebuffSlot23 atkmodifiers += frostboltDmgDebuff spellStats
execute if score spellnumber3 spells matches 6 run execute if score ward slot23 matches 0 run scoreboard players operation speed slot23 -= frostboltSpDebuff spellStats
execute if score spellnumber3 spells matches 6 run execute if score ward slot23 matches 0 if score shield slot23 matches ..0 run scoreboard players operation slot23 hp += shield slot23
execute if score spellnumber3 spells matches 6 run execute if score ward slot23 matches 1.. run function chthree:wardslot23
execute if score spellnumber3 spells matches 6 run scoreboard players set spellbuffsp5 spells 0
execute if score spellnumber3 spells matches 6 run scoreboard players set attackIsOngoingGame3 booleans 0
execute if score spellnumber3 spells matches 6 run execute at @n[type=armor_stand,name=slot23] run particle minecraft:item_snowball ~ ~1 ~ 0.7 0.7 0.7 0.1 200
execute if score spellnumber3 spells matches 6 run tellraw @a[tag=game3] ["",{"selector":"@p[tag=p5]"}," used Frostbolt on Slot 7!"]

#Heal
execute if score spellnumber3 spells matches 2 run scoreboard players operation spellHeal saves = heal spellStats
execute if score spellnumber3 spells matches 2 run scoreboard players operation spellHeal saves += spellbuffsp6 spells
execute if score spellnumber3 spells matches 2 unless score slot23bleeding booleaneffects matches 1.. run scoreboard players operation slot23 hp += spellHeal saves
execute if score spellnumber3 spells matches 2 run function chthree:cleanseslot23
execute if score spellnumber3 spells matches 2 run scoreboard players set spellbuffsp6 spells 0
execute if score spellnumber3 spells matches 2 run function chthree:spellphasep5
execute if score spellnumber3 spells matches 2 run execute at @n[type=armor_stand,name=slot23] run particle minecraft:composter ~ ~1 ~ 0.9 0.9 0.9 0.5 100
execute if score spellnumber3 spells matches 2 run tellraw @a[tag=game3] ["",{"selector":"@p[tag=p6]"}," used Heal on Slot 7!"]

#Miracle
execute if score spellnumber3 spells matches 17 run function chthree:cleanseslot23
execute if score spellnumber3 spells matches 17 run function chthree:spellphasep5
execute if score spellnumber3 spells matches 17 run tellraw @a[tag=game3] ["",{"selector":"@p[tag=p6]"}," used Miracle on Slot 7!"]

#Magic Missile! Magic Missile! I smite thee with Magic Missile!
execute if score spellnumber3 spells matches 4 run scoreboard players operation spellDmg saves = magicmissile spellStats
execute if score spellnumber3 spells matches 4 run scoreboard players operation spellDmg saves += spellbuffsp5 spells
execute if score spellnumber3 spells matches 4 run scoreboard players operation spellDmg saves += marks slot23
execute if score spellnumber3 spells matches 4 run scoreboard players operation spellDmg saves /= atkmultiplier slot23
execute if score spellnumber3 spells matches 4 run execute if score ward slot23 matches 0 run scoreboard players operation shield slot23 -= spellDmg saves
execute if score spellnumber3 spells matches 4 run execute if score ward slot23 matches 0 if score shield slot23 matches ..0 run scoreboard players operation slot23 hp += shield slot23
execute if score spellnumber3 spells matches 4 at @e[name=slot23] run particle minecraft:enchanted_hit ~ ~1 ~ 0.9 0.9 0.9 0.5 300
execute if score spellnumber3 spells matches 4 at @e[name=slot22] run particle minecraft:enchanted_hit ~ ~1 ~ 0.9 0.9 0.9 0.5 150
execute if score spellnumber3 spells matches 4 at @e[name=slot24] run particle minecraft:enchanted_hit ~ ~1 ~ 0.9 0.9 0.9 0.5 150
execute if score spellnumber3 spells matches 4 run execute if score ward slot23 matches 1.. run function chthree:wardslot23
execute if score spellnumber3 spells matches 4 run scoreboard players operation spellDmg saves = magicmissile spellStats
execute if score spellnumber3 spells matches 4 run scoreboard players operation spellDmg saves += spellbuffsp5 spells
execute if score spellnumber3 spells matches 4 run scoreboard players operation spellDmg saves /= magicmissileSplash spellStats
execute if score spellnumber3 spells matches 4 run scoreboard players operation spellDmg saves += marks slot22
execute if score spellnumber3 spells matches 4 run scoreboard players operation spellDmg saves /= atkmultiplier slot22
execute if score spellnumber3 spells matches 4 run execute if score ward slot22 matches 0 run scoreboard players operation shield slot22 -= spellDmg saves
execute if score spellnumber3 spells matches 4 run execute if score ward slot22 matches 0 if score shield slot22 matches ..0 run scoreboard players operation slot22 hp += shield slot22
execute if score spellnumber3 spells matches 4 run execute if score ward slot22 matches 1.. run function chthree:wardslot22
execute if score spellnumber3 spells matches 4 run scoreboard players operation spellDmg saves = magicmissile spellStats
execute if score spellnumber3 spells matches 4 run scoreboard players operation spellDmg saves += spellbuffsp5 spells
execute if score spellnumber3 spells matches 4 run scoreboard players operation spellDmg saves /= magicmissileSplash spellStats
execute if score spellnumber3 spells matches 4 run scoreboard players operation spellDmg saves += marks slot24
execute if score spellnumber3 spells matches 4 run scoreboard players operation spellDmg saves /= atkmultiplier slot24
execute if score spellnumber3 spells matches 4 run execute if score ward slot24 matches 0 run scoreboard players operation shield slot24 -= spellDmg saves
execute if score spellnumber3 spells matches 4 run execute if score ward slot24 matches 0 if score shield slot24 matches ..0 run scoreboard players operation slot24 hp += shield slot24
execute if score spellnumber3 spells matches 4 run execute if score ward slot24 matches 1.. run function chthree:wardslot24
execute if score spellnumber3 spells matches 4 run scoreboard players set spellbuffsp5 spells 0
execute if score spellnumber3 spells matches 4 run scoreboard players set attackIsOngoingGame1 booleans 0
execute if score spellnumber3 spells matches 4 run tellraw @a[tag=game1] ["",{"selector":"@p[tag=p5]"}," used Magic Missile on Slot 7!"]

#Protector's Rune
execute if score spellnumber3 spells matches 16 if score protectorsrune spellStats > durationSlot23 taunt run scoreboard players operation durationSlot23 taunt = protectorsrune spellStats
execute if score spellnumber3 spells matches 16 if score protectorsrune spellStats > durationSlot23 taunt if score ward slot23 matches 0 run scoreboard players operation marks slot23 += protectorsruneMarks spellStats
execute if score spellnumber3 spells matches 16 if score protectorsrune spellStats > durationSlot23 taunt if score ward slot23 matches 1.. run function chthree:wardslot23
execute if score spellnumber3 spells matches 16 run function chthree:spellphasep5
execute if score spellnumber3 spells matches 16 run execute at @n[type=armor_stand,name=slot23] run particle minecraft:block_crumble{block_state:"minecraft:emerald_ore"} ~ ~1 ~ 0.7 0.7 0.7 1 400
execute if score spellnumber3 spells matches 16 run tellraw @a[tag=game3] ["",{"selector":"@p[tag=p6]"}," used Protector's Rune on Slot 7!"]

#Shield
execute if score spellnumber3 spells matches 8 run execute if score durationSlot23 shield < shieldDuration spellStats run scoreboard players operation durationSlot23 shield = shieldDuration spellStats 
execute if score spellnumber3 spells matches 8 run scoreboard players operation shield slot23 += shield spellStats
execute if score spellnumber3 spells matches 8 run function chthree:spellphasep5
execute if score spellnumber3 spells matches 8 run execute at @n[type=armor_stand,name=slot23] run particle wax_off ~ ~1 ~ 0.7 0.7 0.7 0.1 400
execute if score spellnumber3 spells matches 8 run tellraw @a[tag=game3] ["",{"selector":"@p[tag=p6]"}," used Shield on Slot 7!"]

#Ball Lightning
execute if score spellnumber3 spells matches 9 if score ward slot23 matches 0 run scoreboard players operation slot23 stun += shockOrb spellStats
execute if score spellnumber3 spells matches 9 if score ward slot23 matches 1.. run function chthree:wardslot23
execute if score spellnumber3 spells matches 9 run scoreboard players set attackIsOngoingGame3 booleans 0
execute if score spellnumber3 spells matches 9 run execute at @n[type=armor_stand,name=slot23] run particle flash{color:[1.000,1.000,1.000,1.00]} ~ ~1 ~ 0.9 0.9 0.9 0.1 10
execute if score spellnumber3 spells matches 9 run tellraw @a[tag=game3] ["",{"selector":"@p[tag=p5]"}," used Ball Lightning on Slot 7!"]

#Witches Brew
execute if score spellnumber3 spells matches 23 run execute if score ward slot23 matches 0 if score witchesBrewDuration spellStats > durationSlot23 speedDebuffs run scoreboard players operation durationSlot23 speedDebuffs = witchesBrewDuration spellStats
execute if score spellnumber3 spells matches 23 run execute if score ward slot23 matches 0 if score witchesBrewDuration spellStats > debuffDurationSlot23 atkmodifiers run scoreboard players operation debuffDurationSlot23 atkmodifiers = witchesBrewDuration spellStats
execute if score spellnumber3 spells matches 23 run execute if score ward slot23 matches 0 if score witchesBrewDuration spellStats > durationSlot23 poison run scoreboard players operation durationSlot23 poison = witchesBrewDuration spellStats
execute if score spellnumber3 spells matches 23 run execute if score ward slot23 matches 0 if score witchesBrewDuration spellStats > durationSlot23 burn run scoreboard players operation durationSlot23 burn = witchesBrewDuration spellStats
execute if score spellnumber3 spells matches 23 run execute if score ward slot23 matches 0 run scoreboard players operation speedDebuffSlot23 speedDebuffs += witchesBrewSpDebuff spellStats
execute if score spellnumber3 spells matches 23 run execute if score ward slot23 matches 0 run scoreboard players operation attackDebuffSlot23 atkmodifiers += witchesBrewDmgDebuff spellStats
execute if score spellnumber3 spells matches 23 run execute if score ward slot23 matches 0 run scoreboard players operation slot23Poison poison += witchesBrew spellStats
execute if score spellnumber3 spells matches 23 run execute if score ward slot23 matches 0 run scoreboard players operation slot23Burn burn += witchesBrewBurn spellStats
execute if score spellnumber3 spells matches 23 run execute if score ward slot23 matches 0 run scoreboard players operation speed slot23 -= witchesBrewSpDebuff spellStats
execute if score spellnumber3 spells matches 23 run execute if score ward slot23 matches 1.. run function chthree:wardslot23
execute if score spellnumber3 spells matches 23 run scoreboard players set attackIsOngoingGame3 booleans 0
execute if score spellnumber3 spells matches 23 run tellraw @a[tag=game3] ["",{"selector":"@p[tag=p5]"}," used Witches Brew on Slot 7!"]

#Shifting Shadows Token
execute if score spellnumber3 spells matches -1 if score shadowsPart1 spells matches 1 if score ward slot23 matches 0 run scoreboard players set durationSlot17-23 fear 1 
execute if score spellnumber3 spells matches -1 if score shadowsPart1 spells matches 2 if score ward slot23 matches 0 run scoreboard players set durationSlot18-23 fear 1 
execute if score spellnumber3 spells matches -1 if score shadowsPart1 spells matches 3 if score ward slot23 matches 0 run scoreboard players set durationSlot19-23 fear 1 
execute if score spellnumber3 spells matches -1 if score shadowsPart1 spells matches 4 if score ward slot23 matches 0 run scoreboard players set durationSlot20-23 fear 1
execute if score spellnumber3 spells matches -1 if score ward slot23 matches 1.. run function chthree:wardslot23
execute if score spellnumber3 spells matches -1 run scoreboard players set attackIsOngoingGame3 booleans 0
execute if score spellnumber3 spells matches -1 run execute at @n[type=armor_stand,name=slot23] run particle trial_omen ~ ~1 ~ 0.9 0.9 0.9 0.1 400
execute if score spellnumber3 spells matches -1 run tellraw @a[tag=game3] ["",{"selector":"@p[tag=p5]"}," used Shifting Shadows to fear Slot 7!"]

#Shifting Shadows
execute if score spellnumber3 spells matches 28 run scoreboard players set shadowsPart1 spells 7
execute if score spellnumber3 spells matches 28 run function chthree:spellgivetargetsp6
execute if score spellnumber3 spells matches 28 run scoreboard players set spellnumber3 spells -1
execute if score spellnumber3 spells matches 28 run execute at @n[type=armor_stand,name=slot23] run particle raid_omen ~ ~1 ~ 0.9 0.9 0.9 0.1 400
execute if score spellnumber3 spells matches 28 run tellraw @a[tag=game3] ["",{"selector":"@p[tag=p6]"}," used Shifting Shadows to make Slot 7 scary!"]

#fireball
execute if score spellnumber3 spells matches 1 run scoreboard players operation spellDmg3 saves = fireball spellStats
execute if score spellnumber3 spells matches 1 run scoreboard players operation spellDmg3 saves += spellbuffsp5 spells
execute if score spellnumber3 spells matches 1 run scoreboard players operation spellDmg3 saves += marks slot23
execute if score spellnumber3 spells matches 1 run scoreboard players operation spellDmg3 saves /= atkmultiplier slot23
execute if score spellnumber3 spells matches 1 run execute if score ward slot23 matches 0 run scoreboard players operation shield slot23 -= spellDmg3 saves
execute if score spellnumber3 spells matches 1 run execute if score ward slot23 matches 0 run scoreboard players operation slot23 hp += shield slot23
execute if score spellnumber3 spells matches 1 run execute if score ward slot23 matches 0 if score durationSlot23 burn < fireballDuration spellStats run scoreboard players operation durationSlot23 burn = fireballDuration spellStats
execute if score spellnumber3 spells matches 1 run execute if score ward slot23 matches 0 run scoreboard players operation slot23Burn burn += fireballBurn spellStats
execute if score spellnumber3 spells matches 1 at @e[name=slot23] run particle minecraft:flame ~ ~1 ~ 0.9 0.9 0.9 0.5 100
execute if score spellnumber3 spells matches 1 run execute if score ward slot23 matches 1.. run function chthree:wardslot23
execute if score spellnumber3 spells matches 1 run scoreboard players set spellbuffsp5 spells 0
execute if score spellnumber3 spells matches 1 run scoreboard players set attackIsOngoingGame3 booleans 0
execute if score spellnumber3 spells matches 1 run tellraw @a[tag=game3] ["",{"selector":"@p[tag=p5]"}," used Fireball on Slot 7!"]

#meteor
execute if score spellnumber3 spells matches 7 run scoreboard players operation spellDmg3 saves = meteor spellStats
execute if score spellnumber3 spells matches 7 run scoreboard players operation spellDmg3 saves += spellbuffsp5 spells
execute if score spellnumber3 spells matches 7 run scoreboard players operation spellDmg3 saves += marks slot23
execute if score spellnumber3 spells matches 7 run scoreboard players operation spellDmg3 saves /= atkmultiplier slot23
execute if score spellnumber3 spells matches 7 run execute if score ward slot23 matches 0 run scoreboard players operation shield slot23 -= spellDmg3 saves
execute if score spellnumber3 spells matches 7 run execute if score ward slot23 matches 0 if score shield slot23 matches ..0 run scoreboard players operation slot23 hp += shield slot23
execute if score spellnumber3 spells matches 7 at @e[name=slot23] run particle minecraft:lava ~ ~1 ~ 0.9 0.9 0.9 0.5 100
execute if score spellnumber3 spells matches 7 at @e[name=slot22] run particle minecraft:lava ~ ~1 ~ 0.9 0.9 0.9 0.5 50
execute if score spellnumber3 spells matches 7 at @e[name=slot24] run particle minecraft:lava ~ ~1 ~ 0.9 0.9 0.9 0.5 50
execute if score spellnumber3 spells matches 7 run execute if score ward slot23 matches 1.. run function chthree:wardslot23
execute if score spellnumber3 spells matches 7 run scoreboard players operation spellDmg3 saves = meteor spellStats
execute if score spellnumber3 spells matches 7 run scoreboard players operation spellDmg3 saves += spellbuffsp6 spells
execute if score spellnumber3 spells matches 7 run scoreboard players operation spellDmg3 saves /= meteorSplash spellStats
execute if score spellnumber3 spells matches 7 run scoreboard players operation spellDmg3 saves += marks slot22
execute if score spellnumber3 spells matches 7 run scoreboard players operation spellDmg3 saves /= atkmultiplier slot22
execute if score spellnumber3 spells matches 7 run execute if score ward slot22 matches 0 run scoreboard players operation shield slot22 -= spellDmg3 saves
execute if score spellnumber3 spells matches 7 run execute if score ward slot22 matches 0 if score shield slot22 matches ..0 run scoreboard players operation slot22 hp += shield slot22
execute if score spellnumber3 spells matches 7 run execute if score ward slot22 matches 1.. run function chthree:wardslot22
execute if score spellnumber3 spells matches 7 run scoreboard players operation spellDmg3 saves = meteor spellStats
execute if score spellnumber3 spells matches 7 run scoreboard players operation spellDmg3 saves += spellbuffsp6 spells
execute if score spellnumber3 spells matches 7 run scoreboard players operation spellDmg3 saves /= meteorSplash spellStats
execute if score spellnumber3 spells matches 7 run scoreboard players operation spellDmg3 saves += marks slot24
execute if score spellnumber3 spells matches 7 run scoreboard players operation spellDmg3 saves /= atkmultiplier slot24
execute if score spellnumber3 spells matches 7 run execute if score ward slot24 matches 0 run scoreboard players operation shield slot24 -= spellDmg3 saves
execute if score spellnumber3 spells matches 7 run execute if score ward slot24 matches 0 if score shield slot24 matches ..0 run scoreboard players operation slot24 hp += shield slot24
execute if score spellnumber3 spells matches 7 run execute if score ward slot24 matches 1.. run function chthree:wardslot24
execute if score spellnumber3 spells matches 7 run scoreboard players set spellbuffsp5 spells 0
execute if score spellnumber3 spells matches 7 run scoreboard players set attackIsOngoingGame3 booleans 0
execute if score spellnumber3 spells matches 7 run tellraw @a[tag=game3] ["",{"selector":"@p[tag=p5]"}," used Meteor on Slot 7!"]

#witchbolt
execute if score spellnumber3 spells matches 10 run scoreboard players operation spellDmg3 saves = witchbolt spellStats
execute if score spellnumber3 spells matches 10 run scoreboard players operation spellDmg3 saves += spellbuffsp5 spells
execute if score spellnumber3 spells matches 10 run scoreboard players operation spellDmg3 saves += marks slot23
execute if score spellnumber3 spells matches 10 run scoreboard players operation spellDmg3 saves /= atkmultiplier slot23
execute if score spellnumber3 spells matches 10 run execute if score ward slot23 matches 0 run scoreboard players operation shield slot23 -= spellDmg3 saves
execute if score spellnumber3 spells matches 10 run execute if score ward slot23 matches 0 if score shield slot23 matches ..0 run scoreboard players operation slot23 hp += shield slot23
execute if score spellnumber3 spells matches 10 at @e[name=slot23] run particle minecraft:enchanted_hit ~ ~1 ~ 0.9 0.9 0.9 0.5 200
execute if score spellnumber3 spells matches 10 run execute if score ward slot23 matches 1.. run function chthree:wardslot23
execute if score spellnumber3 spells matches 10 run scoreboard players set spellbuffsp5 spells 0
execute if score spellnumber3 spells matches 10 run scoreboard players set attackIsOngoingGame3 booleans 0
execute if score spellnumber3 spells matches 10 run tellraw @a[tag=game3] ["",{"selector":"@p[tag=p5]"}," used Witch Bolt on Slot 7!"]
#ward
execute if score spellnumber3 spells matches 19 run scoreboard players set ward slot23 1
execute if score spellnumber3 spells matches 19 at @e[name=slot23] run particle minecraft:ominous_spawning ~ ~1 ~ 0.9 0.9 0.9 0.1 100
execute if score spellnumber3 spells matches 19 run function chthree:spellphasep5
execute if score spellnumber3 spells matches 19 run tellraw @a[tag=game3] ["",{"selector":"@p[tag=p6]"}," used Ward on Slot 7!"]

#plague
execute if score spellnumber3 spells matches 21 if score ward slot23 matches 0 run scoreboard players operation slot23Disease disease += plague spellStats
execute if score spellnumber3 spells matches 21 at @e[name=slot23] run particle minecraft:trial_omen ~ ~1 ~ 0.9 0.9 0.9 0.5 100
execute if score spellnumber3 spells matches 21 if score ward slot23 matches 1.. run function chthree:wardslot23
execute if score spellnumber3 spells matches 21 run scoreboard players set attackIsOngoingGame3 booleans 0
execute if score spellnumber3 spells matches 21 run tellraw @a[tag=game3] ["",{"selector":"@p[tag=p5]"}," used Plague on Slot 7!"]

#Second wind
execute if score spellnumber3 spells matches 22 run execute if score durationSlot23 speedBuffs < secondWindDuration spellStats run scoreboard players operation durationSlot23 speedBuffs = secondWindDuration spellStats
execute if score spellnumber3 spells matches 22 run scoreboard players operation speedBuffSlot23 speedBuffs += secondWindSpeed spellStats
execute if score spellnumber3 spells matches 22 run scoreboard players operation speed slot23 += secondWindSpeed spellStats
execute if score spellnumber3 spells matches 22 if score slot23bleeding booleaneffects matches 0 run scoreboard players operation slot23 hp += secondWind spellStats
execute if score spellnumber3 spells matches 22 if score slot23bleeding booleaneffects matches 0 run scoreboard players operation slot23 hp += spellbuffsp6 spells
execute if score spellnumber3 spells matches 22 at @e[name=slot23] run particle minecraft:trial_spawner_detection_ominous ~ ~1 ~ 0.9 0.9 0.9 0.5 100
execute if score spellnumber3 spells matches 22 run function chthree:spellphasep5
execute if score spellnumber3 spells matches 22 run scoreboard players set spellbuffsp6 spells 0
execute if score spellnumber3 spells matches 22 run tellraw @a[tag=game3] ["",{"selector":"@p[tag=p6]"}," used Second Wind on Slot 7!"]

#fountain of youth
execute if score spellnumber3 spells matches 25 run execute if score disarmedslot23 booleaneffects < fountainOfYouthDuration spellStats run scoreboard players operation disarmedslot23 booleaneffects = fountainOfYouthDuration spellStats
execute if score spellnumber3 spells matches 25 if score slot23bleeding booleaneffects matches 0 run scoreboard players operation slot23 hp += fountainOfYouth spellStats
execute if score spellnumber3 spells matches 25 if score slot23bleeding booleaneffects matches 0 run scoreboard players operation slot23 hp += spellbuffsp6 spells
execute if score spellnumber3 spells matches 25 at @e[name=slot23] run particle minecraft:composter ~ ~1 ~ 0.9 0.9 0.9 0.5 500
execute if score spellnumber3 spells matches 25 run function chthree:spellphasep5
execute if score spellnumber3 spells matches 25 run scoreboard players set spellbuffsp6 spells 0
execute if score spellnumber3 spells matches 25 run tellraw @a[tag=game3] ["",{"selector":"@p[tag=p6]"}," used Fountain of Youth on Slot 7!"]

#overclock
execute if score spellnumber3 spells matches 27 run execute if score buffDurationSlot23 atkmodifiers < overclockDuration spellStats run scoreboard players operation buffDurationSlot23 atkmodifiers = overclockDuration spellStats
execute if score spellnumber3 spells matches 27 run scoreboard players operation attackBuffSlot23 atkmodifiers += overclock spellStats
execute if score spellnumber3 spells matches 27 run scoreboard players operation shield slot23 -= overclockAtk spellStats
execute if score spellnumber3 spells matches 27 if score shield slot23 matches ..0 run scoreboard players operation slot23 hp += shield slot23
execute if score spellnumber3 spells matches 27 at @e[name=slot23] run particle minecraft:trial_spawner_detection ~ ~1 ~ 0.9 0.9 0.9 0.5 400
execute if score spellnumber3 spells matches 27 run function chthree:spellphasep5
execute if score spellnumber3 spells matches 27 run tellraw @a[tag=game3] ["",{"selector":"@p[tag=p6]"}," used Overclock on Slot 7!"]

#Life Leech Token

execute if score spellnumber3 spells matches -2 if score slot23bleeding booleaneffects matches 0 run scoreboard players operation slot23 hp += lifeLeechHeal spellStats
execute if score spellnumber3 spells matches -2 if score slot23bleeding booleaneffects matches 0 run scoreboard players operation slot23 hp += spellbuffsp6 spells
execute if score spellnumber3 spells matches -2 run function chthree:spellphasep5
execute if score spellnumber3 spells matches -2 run execute at @n[type=armor_stand,name=slot23] run particle dust{color:[0.639,0.008,0.008],scale:1} ~ ~1 ~ 0.9 0.9 0.9 0.1 400
execute if score spellnumber3 spells matches -2 run tellraw @a[tag=game3] ["",{"selector":"@p[tag=p6]"}," used Life Leech to heal Slot 7!"]
execute if score spellnumber3 spells matches -2 run scoreboard players set spellbuffsp6 spells 0

#Life Leech
execute if score spellnumber3 spells matches 31 run scoreboard players operation spellDmg saves = lifeLeech spellStats
execute if score spellnumber3 spells matches 31 run scoreboard players operation spellDmg saves += spellbuffsp5 spells
execute if score spellnumber3 spells matches 31 run scoreboard players operation spellDmg saves += marks slot23
execute if score spellnumber3 spells matches 31 run scoreboard players operation spellDmg saves /= atkmultiplier slot23
execute if score spellnumber3 spells matches 31 run execute if score ward slot23 matches 0 run scoreboard players operation shield slot23 -= spellDmg saves
execute if score spellnumber3 spells matches 31 run execute if score ward slot23 matches 0 if score shield slot23 matches ..0 run scoreboard players operation slot23 hp += shield slot23
execute if score spellnumber3 spells matches 31 run execute if score ward slot23 matches 1.. run function chthree:wardslot23
execute if score spellnumber3 spells matches 31 run function chthree:spellgivetargetsp6reverse
execute if score spellnumber3 spells matches 31 run execute at @n[type=armor_stand,name=slot23] run particle dust{color:[0.639,0.008,0.008],scale:1} ~ ~1 ~ 0.9 0.9 0.9 0.1 400
execute if score spellnumber3 spells matches 31 run tellraw @a[tag=game3] ["",{"selector":"@p[tag=p5]"}," used Life Leech on Slot 7!"]
execute if score spellnumber3 spells matches 31 run scoreboard players set spellnumber3 spells -2

#Decimate
execute if score spellnumber3 spells matches 32 run scoreboard players operation spellDmg saves = decimate spellStats
execute if score spellnumber3 spells matches 32 run scoreboard players operation spellDmg saves += spellbuffsp5 spells
execute if score spellnumber3 spells matches 32 run scoreboard players operation spellDmg saves += marks slot23
execute if score spellnumber3 spells matches 32 run scoreboard players operation spellDmg saves /= atkmultiplier slot23
execute if score spellnumber3 spells matches 32 run execute if score ward slot23 matches 0 if score character# slot23 matches ..-1 run scoreboard players operation shield slot23 -= spellDmg saves
execute if score spellnumber3 spells matches 32 run execute if score ward slot23 matches 0 if score character# slot23 matches ..-1 if score shield slot23 matches ..0 run scoreboard players operation slot23 hp += shield slot23
execute if score spellnumber3 spells matches 32 run execute if score ward slot23 matches 1.. if score character# slot23 matches ..-1 run function chthree:wardslot23
execute if score spellnumber3 spells matches 32 run execute at @n[type=armor_stand,name=slot23] run particle block{block_state:"minecraft:dripstone_block"} ~ ~ ~ 0.9 2 0.9 1 250 normal
execute if score spellnumber3 spells matches 32 run tellraw @a[tag=game3] ["",{"selector":"@p[tag=p5]"}," used Decimate on Slot 7!"]
execute if score spellnumber3 spells matches 32 run scoreboard players set spellbuffsp5 spells 0
execute if score spellnumber3 spells matches 32 run scoreboard players set attackIsOngoingGame3 booleans 0

#cannibalize token

execute if score spellnumber3 spells matches -3 if score slot23bleeding booleaneffects matches 0 run scoreboard players operation slot23 hp += cannibalize spellStats
execute if score spellnumber3 spells matches -3 if score slot23bleeding booleaneffects matches 0 run scoreboard players operation slot23 hp += spellbuffsp5 spells
execute if score spellnumber3 spells matches -3 run function chthree:spellphasep5
execute if score spellnumber3 spells matches -3 run execute at @n[type=armor_stand,name=slot23] run particle dust{color:[0.639,0.008,0.008],scale:1} ~ ~1 ~ 0.9 0.9 0.9 0.1 400
execute if score spellnumber3 spells matches -3 run tellraw @a[tag=game3] ["",{"selector":"@p[tag=p6]"}," used Cannibalize to heal Slot 7!"]
execute if score spellnumber3 spells matches -3 run scoreboard players set spellbuffsp5 spells 0

#cannibalize
execute if score spellnumber3 spells matches 34 run scoreboard players operation slot23 hp -= cannibalize spellStats
execute if score spellnumber3 spells matches 34 run scoreboard players operation slot23bleeding booleaneffects += cannibalizeDuration spellStats
execute if score spellnumber3 spells matches 34 run function chthree:spellgivetargetsp5reverse
execute if score spellnumber3 spells matches 34 run execute at @n[type=armor_stand,name=slot23] run particle dust{color:[0.639,0.008,0.008],scale:1} ~ ~1 ~ 0.9 0.9 0.9 0.1 400
execute if score spellnumber3 spells matches 34 run tellraw @a[tag=game3] ["",{"selector":"@p[tag=p6]"}," used Cannibalize on Slot 7!"]
execute if score spellnumber3 spells matches 34 run scoreboard players set spellnumber3 spells -3

#Dark Ritual
execute if score spellnumber3 spells matches 40 run execute if score buffDurationSlot23 atkmodifiers < darkpowerDuration spellStats run scoreboard players operation buffDurationSlot23 atkmodifiers = darkpowerDuration spellStats
execute if score spellnumber3 spells matches 40 run scoreboard players operation attackBuffSlot23 atkmodifiers += darkpower spellStats
execute if score spellnumber3 spells matches 40 run scoreboard players operation attackBuffSlot23 atkmodifiers += darkritual player6spells
execute if score spellnumber3 spells matches 40 at @e[name=slot23] run particle minecraft:trial_omen ~ ~1 ~ 0.9 0.9 0.9 0.5 40
execute if score spellnumber3 spells matches 40 run function chthree:spellphasep5
execute if score spellnumber3 spells matches 40 run tellraw @a[tag=game3] ["",{"selector":"@p[tag=p6]"}," used Dark Ritual on Slot 7!"]

#Monkey's Paw
execute if score spellnumber3 spells matches 43 run scoreboard players operation invincibleSlot23 booleaneffects = monkeyspaw spellStats
execute if score spellnumber3 spells matches 43 run scoreboard players operation savehp23 saves = slot23 hp
execute if score spellnumber3 spells matches 43 run scoreboard players set curse slot23 5
execute if score spellnumber3 spells matches 43 run scoreboard players set curseStacks slot23 0
execute if score spellnumber3 spells matches 43 run scoreboard players operation curseDuration slot23 = monkeyspaw spellStats
execute if score spellnumber3 spells matches 43 at @e[name=slot23] run particle minecraft:raid_omen ~ ~1 ~ 0.9 0.9 0.9 0.00000001 200
execute if score spellnumber3 spells matches 43 run playsound minecraft:ambient.cave player @a[tag=game3] ~ ~ ~ 500 2
execute if score spellnumber3 spells matches 43 run scoreboard players set attackIsOngoingGame3 booleans 0
execute if score spellnumber3 spells matches 43 run tellraw @a[tag=game3] ["",{"selector":"@p[tag=p6]"}," used Monkey's Paw on Slot 7!"]

#Slimed!
execute if score spellnumber3 spells matches 35 if score ward slot23 matches 0 run scoreboard players operation disarmedslot23 booleaneffects += slimed spellStats
execute if score spellnumber3 spells matches 35 if score ward slot23 matches 1.. run function chthree:wardslot23
execute if score spellnumber3 spells matches 35 run scoreboard players set attackIsOngoingGame3 booleans 0
execute if score spellnumber3 spells matches 35 run execute at @n[type=armor_stand,name=slot23] run particle minecraft:item_slime ~ ~1 ~ 0.7 0.7 0.7 0.3 150
execute if score spellnumber3 spells matches 35 run tellraw @a[tag=game3] ["",{"selector":"@p[tag=p6]"}," used Slimed! on Slot 7!"]

#Vampire Mark
execute if score spellnumber3 spells matches 36 run scoreboard players operation lifesteal slot23 = vampiremark spellStats
execute if score spellnumber3 spells matches 36 run execute at @n[type=armor_stand,name=slot23] run particle minecraft:crimson_spore ~ ~1 ~ 0.6 0.4 0.6 0 200
execute if score spellnumber3 spells matches 36 run tellraw @a[tag=game3] ["",{"selector":"@p[tag=p6]"}," used Vampire Mark on Slot 7!"]
execute if score spellnumber3 spells matches 36 run function chthree:spellphasep5

#Butchering
execute if score spellnumber3 spells matches 37 run scoreboard players operation spellDmg saves = butchering spellStats
execute if score spellnumber3 spells matches 37 run scoreboard players operation spellDmg saves += spellbuffsp5 spells
execute if score spellnumber3 spells matches 37 run scoreboard players operation spellDmg saves += marks slot23
execute if score spellnumber3 spells matches 37 run scoreboard players operation spellDmg saves /= atkmultiplier slot23
execute if score spellnumber3 spells matches 37 run execute if score ward slot23 matches 0 run scoreboard players operation shield slot23 -= spellDmg saves
execute if score spellnumber3 spells matches 37 run execute if score ward slot23 matches 0 if score shield slot23 matches ..0 run scoreboard players operation slot23 hp += shield slot23
execute if score spellnumber3 spells matches 37 at @e[name=slot23] run particle minecraft:damage_indicator ~ ~1 ~ 0.6 0.6 0.6 0 100
execute if score spellnumber3 spells matches 37 run execute if score ward slot23 matches 1.. run function chthree:wardslot23
execute if score spellnumber3 spells matches 37 run scoreboard players set spellbuffsp5 spells 0
execute if score spellnumber3 spells matches 37 run scoreboard players set attackIsOngoingGame3 booleans 0
execute if score spellnumber3 spells matches 37 run tellraw @a[tag=game3] ["",{"selector":"@p[tag=p5]"}," used Butchering on Slot 7!"]

#Will O' Wisp
execute if score spellnumber3 spells matches 38 run execute if score ward slot23 matches 0 if score durationSlot23 burn < willowispDuration spellStats run scoreboard players operation durationSlot23 burn = willowispDuration spellStats
execute if score spellnumber3 spells matches 38 run execute if score ward slot23 matches 0 run scoreboard players operation slot23Burn burn += willowisp spellStats
execute if score spellnumber3 spells matches 38 run scoreboard players operation spellDmg saves = slot23Burn burn
execute if score spellnumber3 spells matches 38 run scoreboard players operation spellDmg saves += spellbuffsp5 spells
execute if score spellnumber3 spells matches 38 run scoreboard players operation spellDmg saves += marks slot23
execute if score spellnumber3 spells matches 38 run scoreboard players operation spellDmg saves /= atkmultiplier slot23
execute if score spellnumber3 spells matches 38 run execute if score ward slot23 matches 0 run scoreboard players operation shield slot23 -= spellDmg saves
execute if score spellnumber3 spells matches 38 run execute if score ward slot23 matches 0 if score shield slot23 matches ..0 run scoreboard players operation slot23 hp += shield slot23
execute if score spellnumber3 spells matches 38 at @e[name=slot23] run particle minecraft:glow ~ ~1 ~ 0.7 0.7 0.7 0.1 100
execute if score spellnumber3 spells matches 38 at @e[name=slot23] run particle minecraft:soul_fire_flame ~ ~1 ~ 0.6 0.6 0.6 0.1 100
execute if score spellnumber3 spells matches 38 run execute if score ward slot23 matches 1.. run function chthree:wardslot23
execute if score spellnumber3 spells matches 38 run scoreboard players set spellbuffsp5 spells 0
execute if score spellnumber3 spells matches 38 run scoreboard players set attackIsOngoingGame3 booleans 0
execute if score spellnumber3 spells matches 38 run tellraw @a[tag=game3] ["",{"selector":"@p[tag=p5]"}," used Will O' Wisp on Slot 7!"]

#Curse of Bats
execute if score spellnumber3 spells matches 42 if score ward slot23 matches ..0 unless score curse slot23 matches 5 unless score curse slot23 matches 6 run scoreboard players set curseStacks slot23 0
execute if score spellnumber3 spells matches 42 if score ward slot23 matches ..0 unless score curse slot23 matches 5 unless score curse slot23 matches 6 run scoreboard players set curseDuration slot23 -1
execute if score spellnumber3 spells matches 42 if score ward slot23 matches ..0 unless score curse slot23 matches 5 run scoreboard players set curse slot23 6
execute if score spellnumber3 spells matches 42 if score ward slot23 matches ..0 unless score curse slot23 matches 5 if score curse slot23 matches 6 run scoreboard players add curseStacks slot23 1
execute if score spellnumber3 spells matches 42 run execute at @n[name=slot23] run particle shriek{delay:0} ~ ~1 ~ 0.3 0.5 0.3 0.1 200 normal
execute if score spellnumber3 spells matches 42 run tellraw @a[tag=game3] ["",{"selector":"@p[tag=p5]"}," used Curse of Bats on Slot 7!"]
execute if score spellnumber3 spells matches 42 if score ward slot23 matches 1.. run function chthree:wardslot23
execute if score spellnumber3 spells matches 42 run scoreboard players set attackIsOngoingGame3 booleans 0


#This goes at the bottom
execute if score shield slot21 matches ..0 run scoreboard players set shield slot21 0
execute if score shield slot22 matches ..0 run scoreboard players set shield slot22 0
execute if score shield slot23 matches ..0 run scoreboard players set shield slot23 0
execute if score shield slot24 matches ..0 run scoreboard players set shield slot24 0

execute if score game3Ongoing ongoinggames matches 1 if score invincibleSlot17 booleaneffects matches 0 run execute if score slot17 hp matches ..0 run execute unless score speed slot17 matches ..-900000 run function chthree:death1
execute if score game3Ongoing ongoinggames matches 1 if score invincibleSlot18 booleaneffects matches 0 run execute if score slot18 hp matches ..0 run execute unless score speed slot18 matches ..-900000 run function chthree:death2
execute if score game3Ongoing ongoinggames matches 1 if score invincibleSlot19 booleaneffects matches 0 run execute if score slot19 hp matches ..0 run execute unless score speed slot19 matches ..-900000 run function chthree:death3
execute if score game3Ongoing ongoinggames matches 1 if score invincibleSlot20 booleaneffects matches 0 unless score character# slot20 matches 0 run execute if score slot20 hp matches ..0 run execute unless score speed slot20 matches ..-900000 run function chthree:death4
execute if score game3Ongoing ongoinggames matches 1 if score invincibleSlot21 booleaneffects matches 0 run execute if score slot21 hp matches ..0 run execute unless score speed slot21 matches ..-900000 run function chthree:death5
execute if score game3Ongoing ongoinggames matches 1 if score invincibleSlot22 booleaneffects matches 0 run execute if score slot22 hp matches ..0 run execute unless score speed slot22 matches ..-900000 run function chthree:death6
execute if score game3Ongoing ongoinggames matches 1 if score invincibleSlot23 booleaneffects matches 0 run execute if score slot23 hp matches ..0 run execute unless score speed slot23 matches ..-900000 run function chthree:death7
execute if score game3Ongoing ongoinggames matches 1 if score invincibleSlot24 booleaneffects matches 0 unless score character# slot24 matches 0 run execute if score slot24 hp matches ..0 run execute unless score speed slot24 matches ..-900000 run function chthree:death8