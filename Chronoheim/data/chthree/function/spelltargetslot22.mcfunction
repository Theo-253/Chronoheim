effect clear @a[tag=game3] weakness
clear @a[tag=game3]

#Dragonforge
execute if score spellnumber3 spells matches 26 run execute if score durationSlot22 shield < dragonforgeDuration spellStats run scoreboard players operation durationSlot22 shield = dragonforgeDuration spellStats
execute if score spellnumber3 spells matches 26 run scoreboard players operation shield slot22 += dragonforge spellStats
execute if score spellnumber3 spells matches 26 run execute if score slot21 hp matches ..0 if score slot23 hp matches ..0 if score slot24 hp matches ..0 run scoreboard players operation shield slot22 += dragonforge spellStats
execute if score spellnumber3 spells matches 26 run function chthree:spellphasep5
execute if score spellnumber3 spells matches 26 run execute if score slot21 hp matches ..0 if score slot23 hp matches ..0 if score slot24 hp matches ..0 run execute at @n[type=armor_stand,name=slot22] run particle dragon_breath ~ ~1 ~ 0.9 0.9 0.9 0.1 400
execute if score spellnumber3 spells matches 26 run execute at @n[type=armor_stand,name=slot22] run particle dragon_breath ~ ~1 ~ 0.9 0.9 0.9 0.1 100
execute if score spellnumber3 spells matches 26 run tellraw @a[tag=game3] ["",{"selector":"@p[tag=p6]"}," used Dragonforge on Slot 6!"]

#Embiggen
execute if score spellnumber3 spells matches 13 run execute if score buffDurationSlot22 atkmodifiers < embiggenDuration spellStats run scoreboard players operation buffDurationSlot22 atkmodifiers = embiggenDuration spellStats
execute if score spellnumber3 spells matches 13 run scoreboard players operation attackBuffSlot22 atkmodifiers += embiggenBuff spellStats
execute if score spellnumber3 spells matches 13 run execute if score durationSlot22 shield < embiggenDuration spellStats run scoreboard players operation durationSlot22 shield = embiggenDuration spellStats
execute if score spellnumber3 spells matches 13 run scoreboard players operation shield slot22 += embiggen spellStats
execute if score spellnumber3 spells matches 13 run function chthree:spellphasep5
execute if score spellnumber3 spells matches 13 run execute at @n[type=armor_stand,name=slot22] run particle minecraft:egg_crack ~ ~1 ~ 0.9 0.9 0.9 0.1 100
execute if score spellnumber3 spells matches 13 run tellraw @a[tag=game3] ["",{"selector":"@p[tag=p6]"}," used Embiggen on Slot 6!"]

#Embrittle
execute if score spellnumber3 spells matches 12 if score ward slot22 matches 0 run execute if score debuffDurationSlot22 atkmodifiers < embrittleDuration spellStats run scoreboard players operation debuffDurationSlot22 atkmodifiers = embrittleDuration spellStats
execute if score spellnumber3 spells matches 12 if score ward slot22 matches 0 run scoreboard players operation attackDebuffSlot22 atkmodifiers += embrittle spellStats
execute if score spellnumber3 spells matches 12 if score ward slot22 matches 1.. run function chthree:wardslot22
execute if score spellnumber3 spells matches 12 run scoreboard players set attackIsOngoingGame3 booleans 0
execute if score spellnumber3 spells matches 12 run execute at @n[type=armor_stand,name=slot22] run particle minecraft:block_crumble{block_state:"minecraft:ice"} ~ ~1 ~ 0.9 0.9 0.9 0.1 200
execute if score spellnumber3 spells matches 12 run tellraw @a[tag=game3] ["",{"selector":"@p[tag=p5]"}," used Embrittle on Slot 6!"]

#Evil Eye
execute if score spellnumber3 spells matches 15 if score ward slot22 matches 0 run scoreboard players operation marks slot22 += evilEye spellStats
execute if score spellnumber3 spells matches 15 if score ward slot22 matches 1.. run function chthree:wardslot22
execute if score spellnumber3 spells matches 15 run scoreboard players set attackIsOngoingGame3 booleans 0
execute if score spellnumber3 spells matches 15 run execute at @n[type=armor_stand,name=slot22] run particle minecraft:effect ~ ~1 ~ 0.7 0.7 0.7 0.1 200
execute if score spellnumber3 spells matches 6 run execute at @n[type=armor_stand,name=slot22] run particle minecraft:item_snowball ~ ~1 ~ 0.7 0.7 0.7 0.1 200
execute if score spellnumber3 spells matches 15 run tellraw @a[tag=game3] ["",{"selector":"@p[tag=p5]"}," used Evil Eye on Slot 6!"]

#Frostbolt
execute if score spellnumber3 spells matches 6 run scoreboard players operation spellDmg3 saves = frostbolt spellStats
execute if score spellnumber3 spells matches 6 run scoreboard players operation spellDmg3 saves += spellbuffsp5 spells
execute if score spellnumber3 spells matches 6 run scoreboard players operation spellDmg3 saves += marks slot22
execute if score spellnumber3 spells matches 6 run scoreboard players operation spellDmg3 saves /= atkmultiplier slot22
execute if score spellnumber3 spells matches 6 run execute if score ward slot22 matches 0 run scoreboard players operation shield slot22 -= spellDmg3 saves
execute if score spellnumber3 spells matches 6 run execute if score ward slot22 matches 0 if score frostboltDuration spellStats > durationSlot22 speedDebuffs run scoreboard players operation durationSlot22 speedDebuffs = frostboltDuration spellStats
execute if score spellnumber3 spells matches 6 run execute if score ward slot22 matches 0 if score frostboltDuration spellStats > debuffDurationSlot22 atkmodifiers run scoreboard players operation debuffDurationSlot22 atkmodifiers = frostboltDuration spellStats
execute if score spellnumber3 spells matches 6 run execute if score ward slot22 matches 0 run scoreboard players operation speedDebuffSlot22 speedDebuffs += frostboltSpDebuff spellStats
execute if score spellnumber3 spells matches 6 run execute if score ward slot22 matches 0 run scoreboard players operation attackDebuffSlot22 atkmodifiers += frostboltDmgDebuff spellStats
execute if score spellnumber3 spells matches 6 run execute if score ward slot22 matches 0 run scoreboard players operation speed slot22 -= frostboltSpDebuff spellStats
execute if score spellnumber3 spells matches 6 run execute if score ward slot22 matches 0 if score shield slot22 matches ..0 run scoreboard players operation slot22 hp += shield slot22
execute if score spellnumber3 spells matches 6 run execute if score ward slot22 matches 1.. run function chthree:wardslot22
execute if score spellnumber3 spells matches 6 run scoreboard players set spellbuffsp5 spells 0
execute if score spellnumber3 spells matches 6 run scoreboard players set attackIsOngoingGame3 booleans 0
execute if score spellnumber3 spells matches 6 run execute at @n[type=armor_stand,name=slot22] run particle minecraft:item_snowball ~ ~1 ~ 0.7 0.7 0.7 0.1 200
execute if score spellnumber3 spells matches 6 run tellraw @a[tag=game3] ["",{"selector":"@p[tag=p5]"}," used Frostbolt on Slot 6!"]

#Heal
execute if score spellnumber3 spells matches 2 run scoreboard players operation spellHeal saves = heal spellStats
execute if score spellnumber3 spells matches 2 run scoreboard players operation spellHeal saves += spellbuffsp6 spells
execute if score spellnumber3 spells matches 2 unless score slot22bleeding booleaneffects matches 1.. run scoreboard players operation slot22 hp += spellHeal saves
execute if score spellnumber3 spells matches 2 run function chthree:cleanseslot22
execute if score spellnumber3 spells matches 2 run scoreboard players set spellbuffsp6 spells 0
execute if score spellnumber3 spells matches 2 run function chthree:spellphasep5
execute if score spellnumber3 spells matches 2 run execute at @n[type=armor_stand,name=slot22] run particle minecraft:composter ~ ~1 ~ 0.9 0.9 0.9 0.5 100
execute if score spellnumber3 spells matches 2 run tellraw @a[tag=game3] ["",{"selector":"@p[tag=p6]"}," used Heal on Slot 6!"]

#Magic Missile! Magic Missile! I smite thee with Magic Missile!
execute if score spellnumber3 spells matches 4 run scoreboard players add magicmissilex4 spells 1
execute if score spellnumber3 spells matches 4 run scoreboard players operation spellDmg3 saves = magicMissile spellStats
execute if score spellnumber3 spells matches 4 run scoreboard players operation spellDmg3 saves += spellbuffsp5 spells
execute if score spellnumber3 spells matches 4 run scoreboard players operation spellDmg3 saves += marks slot22
execute if score spellnumber3 spells matches 4 run scoreboard players operation spellDmg3 saves /= atkmultiplier slot22
execute if score spellnumber3 spells matches 4 run execute if score ward slot22 matches 0 run scoreboard players operation shield slot22 -= spellDmg3 saves
execute if score spellnumber3 spells matches 4 run execute if score ward slot22 matches 0 if score shield slot22 matches ..0 run scoreboard players operation slot22 hp += shield slot22
execute if score spellnumber3 spells matches 4 run execute if score ward slot22 matches 1.. run function chthree:wardslot22
execute if score spellnumber3 spells matches 4 run execute at @n[type=armor_stand,name=slot22] run particle minecraft:enchanted_hit ~ ~1 ~ 0.7 0.7 0.7 0.5 300
execute if score spellnumber3 spells matches 4 run tellraw @a[tag=game3] ["",{"selector":"@p[tag=p5]"}," smited Slot 6 with Magic Missle!"]
execute if score spellnumber3 spells matches 4 run execute if score magicmissilex4 spells matches 1 run function chthree:spellgivetargetsp5
execute if score spellnumber3 spells matches 4 run execute if score magicmissilex4 spells matches 2 run scoreboard players set spellbuffsp5 spells 0
execute if score spellnumber3 spells matches 4 run execute if score magicmissilex4 spells matches 2 run clear @a[tag=p5] target
execute if score spellnumber3 spells matches 4 run execute if score magicmissilex4 spells matches 2 run scoreboard players set attackIsOngoingGame3 booleans 0
execute if score spellnumber3 spells matches 4 run execute if score magicmissilex4 spells matches 2 run scoreboard players set magicmissilex4 spells 0

#Protector's Rune
execute if score spellnumber3 spells matches 16 if score protectorsrune spellStats > durationSlot22 taunt run scoreboard players operation durationSlot22 taunt = protectorsrune spellStats
execute if score spellnumber3 spells matches 16 if score protectorsrune spellStats > durationSlot22 taunt if score ward slot22 matches 0 run scoreboard players operation marks slot22 += protectorsruneMarks spellStats
execute if score spellnumber3 spells matches 16 if score protectorsrune spellStats > durationSlot22 taunt if score ward slot22 matches 1.. run function chthree:wardslot22
execute if score spellnumber3 spells matches 16 run function chthree:spellphasep5
execute if score spellnumber3 spells matches 16 run execute at @n[type=armor_stand,name=slot22] run particle minecraft:block_crumble{block_state:"minecraft:emerald_ore"} ~ ~1 ~ 0.7 0.7 0.7 1 400
execute if score spellnumber3 spells matches 16 run tellraw @a[tag=game3] ["",{"selector":"@p[tag=p6]"}," used Protector's Rune on Slot 6!"]

#Shield
execute if score spellnumber3 spells matches 8 run execute if score durationSlot22 shield < shieldDuration spellStats run scoreboard players operation durationSlot22 shield = shieldDuration spellStats
execute if score spellnumber3 spells matches 8 run scoreboard players operation shield slot22 += shield spellStats
execute if score spellnumber3 spells matches 8 run function chthree:spellphasep5
execute if score spellnumber3 spells matches 8 run execute at @n[type=armor_stand,name=slot22] run particle wax_off ~ ~1 ~ 0.7 0.7 0.7 0.1 400
execute if score spellnumber3 spells matches 8 run tellraw @a[tag=game3] ["",{"selector":"@p[tag=p6]"}," used Shield on Slot 6!"]

#Ball Lightning
execute if score spellnumber3 spells matches 9 if score ward slot22 matches 0 run scoreboard players operation slot22 stun += shockOrb spellStats
execute if score spellnumber3 spells matches 9 if score ward slot22 matches 1.. run function chthree:wardslot22
execute if score spellnumber3 spells matches 9 run scoreboard players set attackIsOngoingGame3 booleans 0
execute if score spellnumber3 spells matches 9 run execute at @n[type=armor_stand,name=slot22] run particle flash ~ ~1 ~ 0.9 0.9 0.9 0.1 10
execute if score spellnumber3 spells matches 9 run tellraw @a[tag=game3] ["",{"selector":"@p[tag=p5]"}," used Ball Lightning on Slot 6!"]

#Witches Brew
execute if score spellnumber3 spells matches 23 run execute if score ward slot22 matches 0 if score witchesBrewDuration spellStats > durationSlot22 speedDebuffs run scoreboard players operation durationSlot22 speedDebuffs = witchesBrewDuration spellStats
execute if score spellnumber3 spells matches 23 run execute if score ward slot22 matches 0 if score witchesBrewDuration spellStats > debuffDurationSlot22 atkmodifiers run scoreboard players operation debuffDurationSlot22 atkmodifiers = witchesBrewDuration spellStats
execute if score spellnumber3 spells matches 23 run execute if score ward slot22 matches 0 if score witchesBrewDuration spellStats > durationSlot22 poison run scoreboard players operation durationSlot22 poison = witchesBrewDuration spellStats
execute if score spellnumber3 spells matches 23 run execute if score ward slot22 matches 0 if score witchesBrewDuration spellStats > durationSlot22 burn run scoreboard players operation durationSlot22 burn = witchesBrewDuration spellStats
execute if score spellnumber3 spells matches 23 run execute if score ward slot22 matches 0 run scoreboard players operation speedDebuffSlot22 speedDebuffs += witchesBrewSpDebuff spellStats
execute if score spellnumber3 spells matches 23 run execute if score ward slot22 matches 0 run scoreboard players operation attackDebuffSlot22 atkmodifiers += witchesBrewDmgDebuff spellStats
execute if score spellnumber3 spells matches 23 run execute if score ward slot22 matches 0 run scoreboard players operation slot22Poison poison += witchesBrew spellStats
execute if score spellnumber3 spells matches 23 run execute if score ward slot22 matches 0 run scoreboard players operation slot22Burn burn += witchesBrewBurn spellStats
execute if score spellnumber3 spells matches 23 run execute if score ward slot22 matches 0 run scoreboard players operation speed slot22 -= witchesBrewSpDebuff spellStats
execute if score spellnumber3 spells matches 23 run execute if score ward slot22 matches 1.. run function chthree:wardslot22
execute if score spellnumber3 spells matches 23 run scoreboard players set attackIsOngoingGame3 booleans 0
execute if score spellnumber3 spells matches 23 run tellraw @a[tag=game3] ["",{"selector":"@p[tag=p5]"}," used Witches Brew on Slot 6!"]

#Shifting Shadows Token
execute if score spellnumber3 spells matches -1 if score shadowsPart1 spells matches 1 if score ward slot22 matches 0 run scoreboard players set durationSlot17-22 fear 1
execute if score spellnumber3 spells matches -1 if score shadowsPart1 spells matches 2 if score ward slot22 matches 0 run scoreboard players set durationSlot18-22 fear 1
execute if score spellnumber3 spells matches -1 if score shadowsPart1 spells matches 3 if score ward slot22 matches 0 run scoreboard players set durationSlot19-22 fear 1
execute if score spellnumber3 spells matches -1 if score shadowsPart1 spells matches 4 if score ward slot22 matches 0 run scoreboard players set durationSlot20-22 fear 1
execute if score spellnumber3 spells matches -1 if score ward slot22 matches 1.. run function chthree:wardslot22
execute if score spellnumber3 spells matches -1 run scoreboard players set attackIsOngoingGame3 booleans 0
execute if score spellnumber3 spells matches -1 run execute at @n[type=armor_stand,name=slot22] run particle trial_omen ~ ~1 ~ 0.9 0.9 0.9 0.1 400
execute if score spellnumber3 spells matches -1 run tellraw @a[tag=game3] ["",{"selector":"@p[tag=p5]"}," used Shifting Shadows to fear Slot 6!"]

#Shifting Shadows
execute if score spellnumber3 spells matches 28 run scoreboard players set shadowsPart1 spells 6
execute if score spellnumber3 spells matches 28 run function chthree:spellgivetargetsp6
execute if score spellnumber3 spells matches 28 run scoreboard players set spellnumber3 spells -1
execute if score spellnumber3 spells matches 28 run execute at @n[type=armor_stand,name=slot22] run particle raid_omen ~ ~1 ~ 0.9 0.9 0.9 0.1 400
execute if score spellnumber3 spells matches 28 run tellraw @a[tag=game3] ["",{"selector":"@p[tag=p6]"}," used Shifting Shadows to make Slot 6 scary!"]

#fireball
execute if score spellnumber3 spells matches 1 run scoreboard players operation spellDmg3 saves = fireball spellStats
execute if score spellnumber3 spells matches 1 run scoreboard players operation spellDmg3 saves += spellbuffsp5 spells
execute if score spellnumber3 spells matches 1 run scoreboard players operation spellDmg3 saves += marks slot22
execute if score spellnumber3 spells matches 1 run scoreboard players operation spellDmg3 saves /= atkmultiplier slot22
execute if score spellnumber3 spells matches 1 run execute if score ward slot22 matches 0 run scoreboard players operation shield slot22 -= spellDmg3 saves
execute if score spellnumber3 spells matches 1 run execute if score ward slot22 matches 0 run scoreboard players operation slot22 hp += shield slot22
execute if score spellnumber3 spells matches 1 run execute if score ward slot22 matches 0 if score durationSlot22 burn < fireballDuration spellStats run scoreboard players operation durationSlot22 burn = fireballDuration spellStats
execute if score spellnumber3 spells matches 1 run execute if score ward slot22 matches 0 run scoreboard players operation slot22Burn burn += fireballBurn spellStats
execute if score spellnumber3 spells matches 1 at @e[name=slot22] run particle minecraft:flame ~ ~1 ~ 0.9 0.9 0.9 0.5 100
execute if score spellnumber3 spells matches 1 run execute if score ward slot22 matches 1.. run function chthree:wardslot22
execute if score spellnumber3 spells matches 1 run scoreboard players set spellbuffsp5 spells 0
execute if score spellnumber3 spells matches 1 run scoreboard players set attackIsOngoingGame3 booleans 0
execute if score spellnumber3 spells matches 1 run tellraw @a[tag=game3] ["",{"selector":"@p[tag=p5]"}," used Fireball on Slot 6!"]

#meteor
execute if score spellnumber3 spells matches 7 run scoreboard players operation spellDmg3 saves = meteor spellStats
execute if score spellnumber3 spells matches 7 run scoreboard players operation spellDmg3 saves += spellbuffsp5 spells
execute if score spellnumber3 spells matches 7 run scoreboard players operation spellDmg3 saves += marks slot22
execute if score spellnumber3 spells matches 7 run scoreboard players operation spellDmg3 saves /= atkmultiplier slot22
execute if score spellnumber3 spells matches 7 run execute if score ward slot22 matches 0 run scoreboard players operation shield slot22 -= spellDmg3 saves
execute if score spellnumber3 spells matches 7 run execute if score ward slot22 matches 0 if score shield slot22 matches ..0 run scoreboard players operation slot22 hp += shield slot22
execute if score spellnumber3 spells matches 7 at @e[name=slot22] run particle minecraft:lava ~ ~1 ~ 0.9 0.9 0.9 0.5 100
execute if score spellnumber3 spells matches 7 at @e[name=slot21] run particle minecraft:lava ~ ~1 ~ 0.9 0.9 0.9 0.5 50
execute if score spellnumber3 spells matches 7 at @e[name=slot23] run particle minecraft:lava ~ ~1 ~ 0.9 0.9 0.9 0.5 50
execute if score spellnumber3 spells matches 7 run execute if score ward slot22 matches 1.. run function chthree:wardslot22
execute if score spellnumber3 spells matches 7 run scoreboard players operation spellDmg3 saves = meteor spellStats
execute if score spellnumber3 spells matches 7 run scoreboard players operation spellDmg3 saves += spellbuffsp6 spells
execute if score spellnumber3 spells matches 7 run scoreboard players operation spellDmg3 saves /= meteorSplash spellStats
execute if score spellnumber3 spells matches 7 run scoreboard players operation spellDmg3 saves += marks slot21
execute if score spellnumber3 spells matches 7 run scoreboard players operation spellDmg3 saves /= atkmultiplier slot21
execute if score spellnumber3 spells matches 7 run execute if score ward slot21 matches 0 run scoreboard players operation shield slot21 -= spellDmg3 saves
execute if score spellnumber3 spells matches 7 run execute if score ward slot21 matches 0 if score shield slot21 matches ..0 run scoreboard players operation slot21 hp += shield slot21
execute if score spellnumber3 spells matches 7 run execute if score ward slot21 matches 1.. run function chthree:wardslot21
execute if score spellnumber3 spells matches 7 run scoreboard players operation spellDmg3 saves = meteor spellStats
execute if score spellnumber3 spells matches 7 run scoreboard players operation spellDmg3 saves += spellbuffsp6 spells
execute if score spellnumber3 spells matches 7 run scoreboard players operation spellDmg3 saves /= meteorSplash spellStats
execute if score spellnumber3 spells matches 7 run scoreboard players operation spellDmg3 saves += marks slot23
execute if score spellnumber3 spells matches 7 run scoreboard players operation spellDmg3 saves /= atkmultiplier slot23
execute if score spellnumber3 spells matches 7 run execute if score ward slot23 matches 0 run scoreboard players operation shield slot23 -= spellDmg3 saves
execute if score spellnumber3 spells matches 7 run execute if score ward slot23 matches 0 if score shield slot23 matches ..0 run scoreboard players operation slot23 hp += shield slot23
execute if score spellnumber3 spells matches 7 run execute if score ward slot23 matches 1.. run function chthree:wardslot23
execute if score spellnumber3 spells matches 7 run scoreboard players set spellbuffsp5 spells 0
execute if score spellnumber3 spells matches 7 run scoreboard players set attackIsOngoingGame3 booleans 0
execute if score spellnumber3 spells matches 7 run tellraw @a[tag=game3] ["",{"selector":"@p[tag=p5]"}," used Meteor on Slot 6!"]

#witchbolt
execute if score spellnumber3 spells matches 10 run scoreboard players operation spellDmg3 saves = witchbolt spellStats
execute if score spellnumber3 spells matches 10 run scoreboard players operation spellDmg3 saves += spellbuffsp5 spells
execute if score spellnumber3 spells matches 10 run scoreboard players operation spellDmg3 saves += marks slot22
execute if score spellnumber3 spells matches 10 run scoreboard players operation spellDmg3 saves /= atkmultiplier slot22
execute if score spellnumber3 spells matches 10 run execute if score ward slot22 matches 0 run scoreboard players operation shield slot22 -= spellDmg3 saves
execute if score spellnumber3 spells matches 10 run execute if score ward slot22 matches 0 if score shield slot22 matches ..0 run scoreboard players operation slot22 hp += shield slot22
execute if score spellnumber3 spells matches 10 at @e[name=slot22] run particle minecraft:enchanted_hit ~ ~1 ~ 0.9 0.9 0.9 0.5 200
execute if score spellnumber3 spells matches 10 run execute if score ward slot22 matches 1.. run function chthree:wardslot22
execute if score spellnumber3 spells matches 10 run scoreboard players set spellbuffsp5 spells 0
execute if score spellnumber3 spells matches 10 run scoreboard players set attackIsOngoingGame3 booleans 0
execute if score spellnumber3 spells matches 10 run tellraw @a[tag=game3] ["",{"selector":"@p[tag=p5]"}," used Witch Bolt on Slot 6!"]
#ward
execute if score spellnumber3 spells matches 19 run scoreboard players set ward slot22 1
execute if score spellnumber3 spells matches 19 at @e[name=slot22] run particle minecraft:ominous_spawning ~ ~1 ~ 0.9 0.9 0.9 0.1 100
execute if score spellnumber3 spells matches 19 run function chthree:spellphasep5
execute if score spellnumber3 spells matches 19 run tellraw @a[tag=game3] ["",{"selector":"@p[tag=p6]"}," used Ward on Slot 6!"]

#plague
execute if score spellnumber3 spells matches 21 if score ward slot22 matches 0 run scoreboard players operation slot22Disease disease += plague spellStats
execute if score spellnumber3 spells matches 21 at @e[name=slot22] run particle minecraft:trial_omen ~ ~1 ~ 0.9 0.9 0.9 0.5 100
execute if score spellnumber3 spells matches 21 if score ward slot22 matches 1.. run function chthree:wardslot22
execute if score spellnumber3 spells matches 21 run scoreboard players set attackIsOngoingGame3 booleans 0
execute if score spellnumber3 spells matches 21 run tellraw @a[tag=game3] ["",{"selector":"@p[tag=p5]"}," used Plague on Slot 6!"]

#Second wind
execute if score spellnumber3 spells matches 22 run execute if score durationSlot22 speedBuffs < secondWindDuration spellStats run scoreboard players operation durationSlot22 speedBuffs = secondWindDuration spellStats
execute if score spellnumber3 spells matches 22 run scoreboard players operation speedBuffSlot22 speedBuffs += secondWindSpeed spellStats
execute if score spellnumber3 spells matches 22 run scoreboard players operation speed slot22 += secondWindSpeed spellStats
execute if score spellnumber3 spells matches 22 if score slot22bleeding booleaneffects matches 0 run scoreboard players operation slot22 hp += secondWind spellStats
execute if score spellnumber3 spells matches 22 if score slot22bleeding booleaneffects matches 0 run scoreboard players operation slot22 hp += spellbuffsp6 spells
execute if score spellnumber3 spells matches 22 at @e[name=slot22] run particle minecraft:trial_spawner_detection_ominous ~ ~1 ~ 0.9 0.9 0.9 0.5 100
execute if score spellnumber3 spells matches 22 run function chthree:spellphasep5
execute if score spellnumber3 spells matches 22 run scoreboard players set spellbuffsp6 spells 0
execute if score spellnumber3 spells matches 22 run tellraw @a[tag=game3] ["",{"selector":"@p[tag=p6]"}," used Second Wind on Slot 6!"]

#fountain of youth
execute if score spellnumber3 spells matches 25 run execute if score disarmedslot22 booleaneffects < fountainOfYouthDuration spellStats run scoreboard players operation disarmedslot22 booleaneffects = fountainOfYouthDuration spellStats
execute if score spellnumber3 spells matches 25 if score slot22bleeding booleaneffects matches 0 run scoreboard players operation slot22 hp += fountainOfYouth spellStats
execute if score spellnumber3 spells matches 25 if score slot22bleeding booleaneffects matches 0 run scoreboard players operation slot22 hp += spellbuffsp6 spells
execute if score spellnumber3 spells matches 25 at @e[name=slot22] run particle minecraft:composter ~ ~1 ~ 0.9 0.9 0.9 0.5 500
execute if score spellnumber3 spells matches 25 run function chthree:spellphasep5
execute if score spellnumber3 spells matches 25 run scoreboard players set spellbuffsp6 spells 0
execute if score spellnumber3 spells matches 25 run tellraw @a[tag=game3] ["",{"selector":"@p[tag=p6]"}," used Fountain of Youth on Slot 6!"]

#overclock
execute if score spellnumber3 spells matches 27 run execute if score buffDurationSlot22 atkmodifiers < overclockDuration spellStats run scoreboard players operation buffDurationSlot22 atkmodifiers = overclockDuration spellStats
execute if score spellnumber3 spells matches 27 run scoreboard players operation attackBuffSlot22 atkmodifiers += overclock spellStats
execute if score spellnumber3 spells matches 27 run scoreboard players operation shield slot22 -= overclockAtk spellStats
execute if score spellnumber3 spells matches 27 if score shield slot22 matches ..0 run scoreboard players operation slot22 hp += shield slot22
execute if score spellnumber3 spells matches 27 at @e[name=slot22] run particle minecraft:trial_spawner_detection ~ ~1 ~ 0.9 0.9 0.9 0.5 400
execute if score spellnumber3 spells matches 27 run function chthree:spellphasep5
execute if score spellnumber3 spells matches 27 run tellraw @a[tag=game3] ["",{"selector":"@p[tag=p6]"}," used Overclock on Slot 6!"]


#Life Leech Token

execute if score spellnumber3 spells matches -2 if score slot22bleeding booleaneffects matches 0 run scoreboard players operation slot22 hp += lifeLeechHeal spellStats
execute if score spellnumber3 spells matches -2 run function chthree:spellphasep5
execute if score spellnumber3 spells matches -2 run execute at @n[type=armor_stand,name=slot22] run particle dust{color:[0.639,0.008,0.008],scale:1} ~ ~1 ~ 0.9 0.9 0.9 0.1 400
execute if score spellnumber3 spells matches -2 run tellraw @a[tag=game3] ["",{"selector":"@p[tag=p6]"}," used Life Leech to heal Slot 6!"]
execute if score spellnumber3 spells matches -2 run scoreboard players set spellbuffsp6 spells 0

#Life Leech
execute if score spellnumber3 spells matches 31 run scoreboard players operation spellDmg saves = lifeLeech spellStats
execute if score spellnumber3 spells matches 31 run scoreboard players operation spellDmg saves += spellbuffsp5 spells
execute if score spellnumber3 spells matches 31 run scoreboard players operation spellDmg saves += marks slot22
execute if score spellnumber3 spells matches 31 run scoreboard players operation spellDmg saves /= atkmultiplier slot22
execute if score spellnumber3 spells matches 31 run execute if score ward slot22 matches 0 run scoreboard players operation shield slot22 -= spellDmg saves
execute if score spellnumber3 spells matches 31 run execute if score ward slot22 matches 0 if score shield slot22 matches ..0 run scoreboard players operation slot22 hp += shield slot22
execute if score spellnumber3 spells matches 31 run execute if score ward slot22 matches 1.. run function chthree:wardslot22
execute if score spellnumber3 spells matches 31 run function chthree:spellgivetargetsp5reverse
execute if score spellnumber3 spells matches 31 run execute at @n[type=armor_stand,name=slot22] run particle dust{color:[0.639,0.008,0.008],scale:1} ~ ~1 ~ 0.9 0.9 0.9 0.1 400
execute if score spellnumber3 spells matches 31 run tellraw @a[tag=game3] ["",{"selector":"@p[tag=p5]"}," used Life Leech on Slot 6!"]
execute if score spellnumber3 spells matches 31 run scoreboard players set spellnumber3 spells -2

#Decimate
execute if score spellnumber3 spells matches 32 run scoreboard players operation spellDmg saves = decimate spellStats
execute if score spellnumber3 spells matches 32 run scoreboard players operation spellDmg saves += spellbuffsp5 spells
execute if score spellnumber3 spells matches 32 run scoreboard players operation spellDmg saves += marks slot22
execute if score spellnumber3 spells matches 32 run scoreboard players operation spellDmg saves /= atkmultiplier slot22
execute if score spellnumber3 spells matches 32 run execute if score ward slot22 matches 0 if score character# slot22 matches ..-1 run scoreboard players operation shield slot22 -= spellDmg saves
execute if score spellnumber3 spells matches 32 run execute if score ward slot22 matches 0 if score character# slot22 matches ..-1 if score shield slot22 matches ..0 run scoreboard players operation slot22 hp += shield slot22
execute if score spellnumber3 spells matches 32 run execute if score ward slot22 matches 1.. if score character# slot22 matches ..-1 run function chthree:wardslot22
execute if score spellnumber3 spells matches 32 run execute at @n[type=armor_stand,name=slot22] run particle block{block_state:"minecraft:dripstone_block"} ~ ~ ~ 0.9 2 0.9 1 250 normal
execute if score spellnumber3 spells matches 32 run tellraw @a[tag=game3] ["",{"selector":"@p[tag=p5]"}," used Decimate on Slot 6!"]
execute if score spellnumber3 spells matches 32 run scoreboard players set spellbuffsp5 spells 0
execute if score spellnumber3 spells matches 32 run scoreboard players set attackIsOngoingGame3 booleans 0

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
