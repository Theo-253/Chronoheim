effect clear @a[tag=game1] weakness
clear @a[tag=game1]

#Dragonforge
execute if score spellnumber spells matches 26 run execute if score durationSlot3 shield < dragonforgeDuration spellStats run scoreboard players operation durationSlot3 shield = dragonforgeDuration spellStats 
execute if score spellnumber spells matches 26 run scoreboard players operation shield slot3 += dragonforge spellStats
execute if score spellnumber spells matches 26 run execute if score slot2 hp matches ..0 if score slot1 hp matches ..0 if score slot4 hp matches ..0 run scoreboard players operation shield slot3 += dragonforge spellStats
execute if score spellnumber spells matches 26 run scoreboard players set attackIsOngoingGame1 booleans 0
execute if score spellnumber spells matches 26 run execute if score slot2 hp matches ..0 if score slot1 hp matches ..0 if score slot4 hp matches ..0 run execute at @n[type=armor_stand,name=slot3] run particle dragon_breath ~ ~1 ~ 0.9 0.9 0.9 0.1 400
execute if score spellnumber spells matches 26 run execute at @n[type=armor_stand,name=slot3] run particle dragon_breath ~ ~1 ~ 0.9 0.9 0.9 0.1 100
execute if score spellnumber spells matches 26 run tellraw @a[tag=game1] ["",{"selector":"@p[tag=p1]"}," used Dragonforge on Slot 3!"]

#Embiggen
execute if score spellnumber spells matches 13 run execute if score buffDurationSlot3 atkmodifiers < embiggenDuration spellStats run scoreboard players operation buffDurationSlot3 atkmodifiers = embiggenDuration spellStats
execute if score spellnumber spells matches 13 run scoreboard players operation attackBuffSlot3 atkmodifiers += embiggenBuff spellStats
execute if score spellnumber spells matches 13 run execute if score durationSlot3 shield < embiggenDuration spellStats run scoreboard players operation durationSlot3 shield = embiggenDuration spellStats 
execute if score spellnumber spells matches 13 run scoreboard players operation shield slot3 += embiggen spellStats
execute if score spellnumber spells matches 13 run scoreboard players set attackIsOngoingGame1 booleans 0
execute if score spellnumber spells matches 13 run execute at @n[type=armor_stand,name=slot3] run particle minecraft:egg_crack ~ ~1 ~ 0.9 0.9 0.9 0.1 100
execute if score spellnumber spells matches 13 run tellraw @a[tag=game1] ["",{"selector":"@p[tag=p1]"}," used Embiggen on Slot 3!"]

#Embrittle
execute if score spellnumber spells matches 12 if score ward slot3 matches 0 run execute if score debuffDurationSlot3 atkmodifiers < embrittleDuration spellStats run scoreboard players operation debuffDurationSlot3 atkmodifiers = embrittleDuration spellStats
execute if score spellnumber spells matches 12 if score ward slot3 matches 0 run scoreboard players operation attackDebuffSlot3 atkmodifiers += embrittle spellStats
execute if score spellnumber spells matches 12 if score ward slot3 matches 1.. run function ch:wardslot3
execute if score spellnumber spells matches 12 run function ch:spellphasep1
execute if score spellnumber spells matches 12 run execute at @n[type=armor_stand,name=slot3] run particle minecraft:block_crumble{block_state:"minecraft:ice"} ~ ~1 ~ 0.9 0.9 0.9 0.1 200
execute if score spellnumber spells matches 12 run tellraw @a[tag=game1] ["",{"selector":"@p[tag=p2]"}," used Embrittle on Slot 3!"]
#Evil Eye
execute if score spellnumber spells matches 15 if score ward slot3 matches 0 run scoreboard players operation marks slot3 += evilEye spellStats
execute if score spellnumber spells matches 15 if score ward slot3 matches 1.. run function ch:wardslot3
execute if score spellnumber spells matches 15 run function ch:spellphasep1
execute if score spellnumber spells matches 15 run execute at @n[type=armor_stand,name=slot3] run particle minecraft:effect ~ ~1 ~ 0.7 0.7 0.7 0.1 200
execute if score spellnumber spells matches 15 run tellraw @a[tag=game1] ["",{"selector":"@p[tag=p2]"}," used Evil Eye on Slot 3!"]

#Frostbolt
execute if score spellnumber spells matches 6 run scoreboard players operation spellDmg saves = frostbolt spellStats
execute if score spellnumber spells matches 6 run scoreboard players operation spellDmg saves += spellbuffsp2 spells
execute if score spellnumber spells matches 6 run scoreboard players operation spellDmg saves += marks slot3
execute if score spellnumber spells matches 6 run scoreboard players operation spellDmg saves /= atkmultiplier slot3
execute if score spellnumber spells matches 6 run execute if score ward slot3 matches 0 run scoreboard players operation shield slot3 -= spellDmg saves
execute if score spellnumber spells matches 6 run execute if score ward slot3 matches 0 if score frostboltDuration spellStats > durationSlot3 speedDebuffs run scoreboard players operation durationSlot3 speedDebuffs = frostboltDuration spellStats
execute if score spellnumber spells matches 6 run execute if score ward slot3 matches 0 if score frostboltDuration spellStats > debuffDurationSlot3 atkmodifiers run scoreboard players operation debuffDurationSlot3 atkmodifiers = frostboltDuration spellStats
execute if score spellnumber spells matches 6 run execute if score ward slot3 matches 0 run scoreboard players operation speedDebuffSlot3 speedDebuffs += frostboltSpDebuff spellStats
execute if score spellnumber spells matches 6 run execute if score ward slot3 matches 0 run scoreboard players operation attackDebuffSlot3 atkmodifiers += frostboltDmgDebuff spellStats
execute if score spellnumber spells matches 6 run execute if score ward slot3 matches 0 run scoreboard players operation speed slot3 -= frostboltSpDebuff spellStats
execute if score spellnumber spells matches 6 run execute if score ward slot3 matches 0 if score shield slot3 matches ..0 run scoreboard players operation slot3 hp += shield slot3
execute if score spellnumber spells matches 6 run execute if score ward slot3 matches 1.. run function ch:wardslot3
execute if score spellnumber spells matches 6 run scoreboard players set spellbuffsp2 spells 0
execute if score spellnumber spells matches 6 run function ch:spellphasep1
execute if score spellnumber spells matches 6 run execute at @n[type=armor_stand,name=slot3] run particle minecraft:item_snowball ~ ~1 ~ 0.7 0.7 0.7 0.1 200
execute if score spellnumber spells matches 6 run tellraw @a[tag=game1] ["",{"selector":"@p[tag=p2]"}," used Frostbolt on Slot 3!"]

#Heal
execute if score spellnumber spells matches 2 run scoreboard players operation spellHeal saves = heal spellStats
execute if score spellnumber spells matches 2 run scoreboard players operation spellHeal saves += spellbuffsp1 spells
execute if score spellnumber spells matches 2 run scoreboard players operation slot3 hp += spellHeal saves
execute if score spellnumber spells matches 2 run function ch:cleanseslot3
execute if score spellnumber spells matches 2 run scoreboard players set spellbuffsp1 spells 0
execute if score spellnumber spells matches 2 run scoreboard players set attackIsOngoingGame1 booleans 0
execute if score spellnumber spells matches 2 run execute at @n[type=armor_stand,name=slot3] run particle minecraft:composter ~ ~1 ~ 0.9 0.9 0.9 0.5 100
execute if score spellnumber spells matches 2 run tellraw @a[tag=game1] ["",{"selector":"@p[tag=p1]"}," used Heal on Slot 3!"]

#Magic Missile! Magic Missile! I smite thee with Magic Missile!
execute if score spellnumber spells matches 4 run scoreboard players add magicMissilex2 spells 1
execute if score spellnumber spells matches 4 run scoreboard players operation spellDmg saves = magicMissile spellStats
execute if score spellnumber spells matches 4 run scoreboard players operation spellDmg saves += spellbuffsp2 spells
execute if score spellnumber spells matches 4 run scoreboard players operation spellDmg saves += marks slot3
execute if score spellnumber spells matches 4 run scoreboard players operation spellDmg saves /= atkmultiplier slot3
execute if score spellnumber spells matches 4 run execute if score ward slot3 matches 0 run scoreboard players operation shield slot3 -= spellDmg saves
execute if score spellnumber spells matches 4 run execute if score ward slot3 matches 0 if score shield slot3 matches ..0 run scoreboard players operation slot3 hp += shield slot3
execute if score spellnumber spells matches 4 run execute if score ward slot3 matches 1.. run function ch:wardslot3
execute if score spellnumber spells matches 4 run tellraw @a[tag=game1] ["",{"selector":"@p[tag=p2]"}," smited Slot 3 with Magic Missle!"]
execute if score spellnumber spells matches 4 run execute at @n[type=armor_stand,name=slot3] run particle minecraft:enchanted_hit ~ ~1 ~ 0.7 0.7 0.7 0.5 300
execute if score spellnumber spells matches 4 run execute if score magicMissilex2 spells matches 1 run function ch:spellgivetargetsp2
execute if score spellnumber spells matches 4 run execute if score magicMissilex2 spells matches 2 run scoreboard players set spellbuffsp2 spells 0
execute if score spellnumber spells matches 4 run execute if score magicMissilex2 spells matches 2 run clear @a[tag=p2] target
execute if score spellnumber spells matches 4 run execute if score magicMissilex2 spells matches 2 run function ch:spellphasep1
execute if score spellnumber spells matches 4 run execute if score magicMissilex2 spells matches 2 run scoreboard players set magicMissilex2 spells 0

#Protector's Rune
execute if score spellnumber spells matches 16 if score protectorsrune spellStats > durationSlot3 taunt run scoreboard players operation durationSlot3 taunt = protectorsrune spellStats
execute if score spellnumber spells matches 16 if score protectorsrune spellStats > durationSlot3 taunt if score ward slot3 matches 0 run scoreboard players operation marks slot3 += protectorsruneMarks spellStats
execute if score spellnumber spells matches 16 if score protectorsrune spellStats > durationSlot3 taunt if score ward slot3 matches 1.. run function ch:wardslot3
execute if score spellnumber spells matches 16 run scoreboard players set attackIsOngoingGame1 booleans 0
execute if score spellnumber spells matches 16 run execute at @n[type=armor_stand,name=slot3] run particle minecraft:block_crumble{block_state:"minecraft:emerald_ore"} ~ ~1 ~ 0.7 0.7 0.7 1 400
execute if score spellnumber spells matches 16 run tellraw @a[tag=game1] ["",{"selector":"@p[tag=p1]"}," used Protector's Rune on Slot 3!"]

#Shield
execute if score spellnumber spells matches 8 run execute if score durationSlot3 shield < shieldDuration spellStats run scoreboard players operation durationSlot3 shield = shieldDuration spellStats 
execute if score spellnumber spells matches 8 run scoreboard players operation shield slot3 += shield spellStats
execute if score spellnumber spells matches 8 run scoreboard players set attackIsOngoingGame1 booleans 0
execute if score spellnumber spells matches 8 run execute at @n[type=armor_stand,name=slot3] run particle wax_off ~ ~1 ~ 0.7 0.7 0.7 0.1 400
execute if score spellnumber spells matches 8 run tellraw @a[tag=game1] ["",{"selector":"@p[tag=p1]"}," used Shield on Slot 3!"]

#Ball Lightning
execute if score spellnumber spells matches 9 if score ward slot3 matches 0 run scoreboard players operation slot3 stun += shockOrb spellStats
execute if score spellnumber spells matches 9 if score ward slot3 matches 1.. run function ch:wardslot3
execute if score spellnumber spells matches 9 run function ch:spellphasep1
execute if score spellnumber spells matches 9 run execute at @n[type=armor_stand,name=slot3] run particle flash ~ ~1 ~ 0.9 0.9 0.9 0.1 10
execute if score spellnumber spells matches 9 run tellraw @a[tag=game1] ["",{"selector":"@p[tag=p2]"}," used Ball Lightning on Slot 3!"]

#Witches Brew
execute if score spellnumber spells matches 23 run execute if score ward slot3 matches 0 if score witchesBrewDuration spellStats > durationSlot3 speedDebuffs run scoreboard players operation durationSlot3 speedDebuffs = witchesBrewDuration spellStats
execute if score spellnumber spells matches 23 run execute if score ward slot3 matches 0 if score witchesBrewDuration spellStats > debuffDurationSlot3 atkmodifiers run scoreboard players operation debuffDurationSlot3 atkmodifiers = witchesBrewDuration spellStats
execute if score spellnumber spells matches 23 run execute if score ward slot3 matches 0 if score witchesBrewDuration spellStats > durationSlot3 poison run scoreboard players operation durationSlot3 poison = witchesBrewDuration spellStats
execute if score spellnumber spells matches 23 run execute if score ward slot3 matches 0 if score witchesBrewDuration spellStats > durationSlot3 burn run scoreboard players operation durationSlot3 burn = witchesBrewDuration spellStats
execute if score spellnumber spells matches 23 run execute if score ward slot3 matches 0 run scoreboard players operation speedDebuffSlot3 speedDebuffs += witchesBrewSpDebuff spellStats
execute if score spellnumber spells matches 23 run execute if score ward slot3 matches 0 run scoreboard players operation attackDebuffSlot3 atkmodifiers += witchesBrewDmgDebuff spellStats
execute if score spellnumber spells matches 23 run execute if score ward slot3 matches 0 run scoreboard players operation slot3Poison poison += witchesBrew spellStats
execute if score spellnumber spells matches 23 run execute if score ward slot3 matches 0 run scoreboard players operation slot3Burn burn += witchesBrewBurn spellStats
execute if score spellnumber spells matches 23 run execute if score ward slot3 matches 0 run scoreboard players operation speed slot3 -= witchesBrewSpDebuff spellStats
execute if score spellnumber spells matches 23 run execute if score ward slot3 matches 1.. run function ch:wardslot3
execute if score spellnumber spells matches 23 run function ch:spellphasep1
execute if score spellnumber spells matches 23 run tellraw @a[tag=game1] ["",{"selector":"@p[tag=p2]"}," used Witches Brew on Slot 3!"]

#Shifting Shadows Token
execute if score spellnumber spells matches -1 if score shadowsPart1 spells matches 5 if score ward slot3 matches 0 run scoreboard players set durationSlot5-3 fear 1 
execute if score spellnumber spells matches -1 if score shadowsPart1 spells matches 6 if score ward slot3 matches 0 run scoreboard players set durationSlot6-3 fear 1 
execute if score spellnumber spells matches -1 if score shadowsPart1 spells matches 7 if score ward slot3 matches 0 run scoreboard players set durationSlot7-3 fear 1 
execute if score spellnumber spells matches -1 if score shadowsPart1 spells matches 8 if score ward slot3 matches 0 run scoreboard players set durationSlot8-3 fear 1
execute if score spellnumber spells matches -1 if score ward slot3 matches 1.. run function ch:wardslot3
execute if score spellnumber spells matches -1 run function ch:spellphasep1
execute if score spellnumber spells matches -1 run execute at @n[type=armor_stand,name=slot3] run particle trial_omen ~ ~1 ~ 0.9 0.9 0.9 0.1 400
execute if score spellnumber spells matches -1 run tellraw @a[tag=game1] ["",{"selector":"@p[tag=p2]"}," used Shifting Shadows to fear Slot 3!"]

#Shifting Shadows
execute if score spellnumber spells matches 28 run scoreboard players set shadowsPart1 spells 3
execute if score spellnumber spells matches 28 run function ch:spellgivetargetsp1
execute if score spellnumber spells matches 28 run scoreboard players set spellnumber spells -1
execute if score spellnumber spells matches 28 run execute at @n[type=armor_stand,name=slot3] run particle raid_omen ~ ~1 ~ 0.9 0.9 0.9 0.1 400
execute if score spellnumber spells matches 28 run tellraw @a[tag=game1] ["",{"selector":"@p[tag=p1]"}," used Shifting Shadows to make Slot 3 scary!"]

#fireball
execute if score spellnumber spells matches 1 run scoreboard players operation spellDmg saves = fireball spellStats
execute if score spellnumber spells matches 1 run scoreboard players operation spellDmg saves += spellbuffsp2 spells
execute if score spellnumber spells matches 1 run scoreboard players operation spellDmg saves += marks slot3
execute if score spellnumber spells matches 1 run scoreboard players operation spellDmg saves /= atkmultiplier slot3
execute if score spellnumber spells matches 1 run execute if score ward slot3 matches 0 run scoreboard players operation shield slot3 -= spellDmg saves
execute if score spellnumber spells matches 1 run execute if score ward slot3 matches 0 run scoreboard players operation slot3 hp += shield slot3
execute if score spellnumber spells matches 1 run execute if score ward slot3 matches 0 if score durationSlot3 burn < fireballDuration spellStats run scoreboard players operation durationSlot3 burn = fireballDuration spellStats
execute if score spellnumber spells matches 1 run execute if score ward slot3 matches 0 run scoreboard players operation slot3Burn burn += fireballBurn spellStats
execute if score spellnumber spells matches 1 at @e[name=slot3] run particle minecraft:flame ~ ~1 ~ 0.9 0.9 0.9 0.5 100
execute if score spellnumber spells matches 1 run execute if score ward slot3 matches 1.. run function ch:wardslot3
execute if score spellnumber spells matches 1 run scoreboard players set spellbuffsp2 spells 0
execute if score spellnumber spells matches 1 run function ch:spellphasep1
execute if score spellnumber spells matches 1 run tellraw @a[tag=game1] ["",{"selector":"@p[tag=p2]"}," used Fireball on Slot 3!"]
#meteor
execute if score spellnumber spells matches 7 run scoreboard players operation spellDmg saves = meteor spellStats
execute if score spellnumber spells matches 7 if score slot7isatk booleans matches 1 run scoreboard players operation spellDmg saves += spellbuffsp2 spells
execute if score spellnumber spells matches 7 run scoreboard players operation spellDmg saves += marks slot3
execute if score spellnumber spells matches 7 run scoreboard players operation spellDmg saves /= atkmultiplier slot3
execute if score spellnumber spells matches 7 run execute if score ward slot3 matches 0 run scoreboard players operation shield slot3 -= spellDmg saves
execute if score spellnumber spells matches 7 run execute if score ward slot3 matches 0 if score shield slot3 matches ..0 run scoreboard players operation slot3 hp += shield slot3
execute if score spellnumber spells matches 7 at @e[name=slot3] run particle minecraft:lava ~ ~1 ~ 0.9 0.9 0.9 0.5 100
execute if score spellnumber spells matches 7 at @e[name=slot2] run particle minecraft:lava ~ ~1 ~ 0.9 0.9 0.9 0.5 50
execute if score spellnumber spells matches 7 at @e[name=slot4] run particle minecraft:lava ~ ~1 ~ 0.9 0.9 0.9 0.5 50
execute if score spellnumber spells matches 7 run execute if score ward slot3 matches 1.. run function ch:wardslot3
execute if score spellnumber spells matches 7 run scoreboard players operation spellDmg saves = meteor spellStats
execute if score spellnumber spells matches 7 run scoreboard players operation spellDmg saves += spellbuffsp2 spells
execute if score spellnumber spells matches 7 run scoreboard players operation spellDmg saves /= meteorSplash spellStats
execute if score spellnumber spells matches 7 run scoreboard players operation spellDmg saves += marks slot2
execute if score spellnumber spells matches 7 run scoreboard players operation spellDmg saves /= atkmultiplier slot2
execute if score spellnumber spells matches 7 run execute if score ward slot2 matches 0 run scoreboard players operation shield slot2 -= spellDmg saves
execute if score spellnumber spells matches 7 run execute if score ward slot2 matches 0 if score shield slot2 matches ..0 run scoreboard players operation slot2 hp += shield slot2
execute if score spellnumber spells matches 7 run execute if score ward slot2 matches 1.. run function ch:wardslot2
execute if score spellnumber spells matches 7 run scoreboard players operation spellDmg saves = meteor spellStats
execute if score spellnumber spells matches 7 run scoreboard players operation spellDmg saves += spellbuffsp2 spells
execute if score spellnumber spells matches 7 run scoreboard players operation spellDmg saves += marks slot4
execute if score spellnumber spells matches 7 run scoreboard players operation spellDmg saves /= atkmultiplier slot4
execute if score spellnumber spells matches 7 run scoreboard players operation spellDmg saves /= meteorSplash spellStats
execute if score spellnumber spells matches 7 run execute if score ward slot4 matches 0 run scoreboard players operation shield slot4 -= spellDmg saves
execute if score spellnumber spells matches 7 run execute if score ward slot4 matches 0 if score shield slot4 matches ..0 run scoreboard players operation slot4 hp += shield slot4
execute if score spellnumber spells matches 7 run execute if score ward slot4 matches 1.. run function ch:wardslot4
execute if score spellnumber spells matches 7 run scoreboard players set spellbuffsp2 spells 0
execute if score spellnumber spells matches 7 run function ch:spellphasep1
execute if score spellnumber spells matches 7 run tellraw @a[tag=game1] ["",{"selector":"@p[tag=p2]"}," used Meteor on Slot 3!"]

#witchbolt
execute if score spellnumber spells matches 10 run scoreboard players operation spellDmg saves = witchbolt spellStats
execute if score spellnumber spells matches 10 run scoreboard players operation spellDmg saves += spellbuffsp2 spells
execute if score spellnumber spells matches 10 run scoreboard players operation spellDmg saves += marks slot3
execute if score spellnumber spells matches 10 run scoreboard players operation spellDmg saves /= atkmultiplier slot3
execute if score spellnumber spells matches 10 run execute if score ward slot3 matches 0 run scoreboard players operation shield slot3 -= spellDmg saves
execute if score spellnumber spells matches 10 run execute if score ward slot3 matches 0 if score shield slot3 matches ..0 run scoreboard players operation slot3 hp += shield slot3
execute if score spellnumber spells matches 10 at @e[name=slot3] run particle minecraft:enchanted_hit ~ ~1 ~ 0.9 0.9 0.9 0.5 200
execute if score spellnumber spells matches 10 run execute if score ward slot3 matches 1.. run function ch:wardslot3
execute if score spellnumber spells matches 10 run scoreboard players set spellbuffsp2 spells 0
execute if score spellnumber spells matches 10 run function ch:spellphasep1
execute if score spellnumber spells matches 10 run tellraw @a[tag=game1] ["",{"selector":"@p[tag=p2]"}," used Witch Bolt on Slot 3!"]
#ward
execute if score spellnumber spells matches 19 run scoreboard players set ward slot3 1
execute if score spellnumber spells matches 19 at @e[name=slot3] run particle minecraft:ominous_spawning ~ ~1 ~ 0.9 0.9 0.9 0.1 100
execute if score spellnumber spells matches 19 run scoreboard players set attackIsOngoingGame1 booleans 0
execute if score spellnumber spells matches 19 run tellraw @a[tag=game1] ["",{"selector":"@p[tag=p1]"}," used Ward on Slot 3!"]
#plague
execute if score spellnumber spells matches 21 if score ward slot3 matches 0 run scoreboard players operation slot3Disease disease += plague spellStats
execute if score spellnumber spells matches 21 at @e[name=slot3] run particle minecraft:trial_omen ~ ~1 ~ 0.9 0.9 0.9 0.5 100
execute if score spellnumber spells matches 21 if score ward slot3 matches 1.. run function ch:wardslot3
execute if score spellnumber spells matches 21 run function ch:spellphasep1
execute if score spellnumber spells matches 21 run tellraw @a[tag=game1] ["",{"selector":"@p[tag=p2]"}," used Plague on Slot 3!"]

#Second wind
execute if score spellnumber spells matches 22 run execute if score durationSlot3 speedBuffs < secondWindDuration spellStats run scoreboard players operation durationSlot3 speedBuffs = secondWindDuration spellStats
execute if score spellnumber spells matches 22 run scoreboard players operation speedBuffSlot3 speedBuffs += secondWindSpeed spellStats
execute if score spellnumber spells matches 22 run scoreboard players operation speed slot3 += secondWindSpeed spellStats
execute if score spellnumber spells matches 22 if score slot3bleeding booleaneffects matches 0 run scoreboard players operation slot3 hp += secondWind spellStats
execute if score spellnumber spells matches 22 if score slot3bleeding booleaneffects matches 0 run scoreboard players operation slot3 hp += spellbuffsp1 spells
execute if score spellnumber spells matches 22 at @e[name=slot3] run particle minecraft:trial_spawner_detection_ominous ~ ~1 ~ 0.9 0.9 0.9 0.5 100
execute if score spellnumber spells matches 22 run scoreboard players set attackIsOngoingGame1 booleans 0
execute if score spellnumber spells matches 22 run scoreboard players set spellbuffsp1 spells 0
execute if score spellnumber spells matches 22 run tellraw @a[tag=game1] ["",{"selector":"@p[tag=p1]"}," used Second Wind on Slot 3!"]
#fountain of youth
execute if score spellnumber spells matches 25 run execute if score disarmedslot3 booleaneffects < fountainOfYouthDuration spellStats run scoreboard players operation disarmedslot3 booleaneffects = fountainOfYouthDuration spellStats
execute if score spellnumber spells matches 25 if score slot3bleeding booleaneffects matches 0 run scoreboard players operation slot3 hp += fountainOfYouth spellStats
execute if score spellnumber spells matches 25 if score slot3bleeding booleaneffects matches 0 run scoreboard players operation slot3 hp += spellbuffsp1 spells
execute if score spellnumber spells matches 25 at @e[name=slot3] run particle minecraft:composter ~ ~1 ~ 0.9 0.9 0.9 0.5 500
execute if score spellnumber spells matches 25 run scoreboard players set attackIsOngoingGame1 booleans 0
execute if score spellnumber spells matches 25 run scoreboard players set spellbuffsp1 spells 0
execute if score spellnumber spells matches 25 run tellraw @a[tag=game1] ["",{"selector":"@p[tag=p1]"}," used Fountain of Youth on Slot 3!"]
#overclock
execute if score spellnumber spells matches 27 run execute if score buffDurationSlot3 atkmodifiers < overclockDuration spellStats run scoreboard players operation buffDurationSlot3 atkmodifiers = overclockDuration spellStats
execute if score spellnumber spells matches 27 run scoreboard players operation attackBuffSlot3 atkmodifiers += overclock spellStats
execute if score spellnumber spells matches 27 run scoreboard players operation shield slot3 -= overclockAtk spellStats
execute if score spellnumber spells matches 27 if score shield slot3 matches ..0 run scoreboard players operation slot3 hp += shield slot3
execute if score spellnumber spells matches 27 at @e[name=slot3] run particle minecraft:trial_spawner_detection ~ ~1 ~ 0.9 0.9 0.9 0.5 400
execute if score spellnumber spells matches 27 run scoreboard players set attackIsOngoingGame1 booleans 0
execute if score spellnumber spells matches 27 run tellraw @a[tag=game1] ["",{"selector":"@p[tag=p1]"}," used Overclock on Slot 3!"]


#This goes at the bottom
execute if score shield slot1 matches ..0 run scoreboard players set shield slot1 0
execute if score shield slot2 matches ..0 run scoreboard players set shield slot2 0
execute if score shield slot3 matches ..0 run scoreboard players set shield slot3 0
execute if score shield slot4 matches ..0 run scoreboard players set shield slot4 0
#Death
execute if score game1Ongoing ongoinggames matches 1 run execute if score slot1 hp matches ..0 run execute unless score speed slot1 matches ..-900000 run function ch:death1
execute if score game1Ongoing ongoinggames matches 1 run execute if score slot2 hp matches ..0 run execute unless score speed slot2 matches ..-900000 run function ch:death2
execute if score game1Ongoing ongoinggames matches 1 run execute if score slot3 hp matches ..0 run execute unless score speed slot3 matches ..-900000 run function ch:death3
execute if score game1Ongoing ongoinggames matches 1 unless score character# slot4 matches 0 run execute if score slot4 hp matches ..0 run execute unless score speed slot4 matches ..-900000 run function ch:death4
execute if score game1Ongoing ongoinggames matches 1 run execute if score slot5 hp matches ..0 run execute unless score speed slot5 matches ..-900000 run function ch:death5
execute if score game1Ongoing ongoinggames matches 1 run execute if score slot6 hp matches ..0 run execute unless score speed slot6 matches ..-900000 run function ch:death6
execute if score game1Ongoing ongoinggames matches 1 run execute if score slot7 hp matches ..0 run execute unless score speed slot7 matches ..-900000 run function ch:death7
execute if score game1Ongoing ongoinggames matches 1 unless score character# slot8 matches 0 run execute if score slot8 hp matches ..0 run execute unless score speed slot8 matches ..-900000 run function ch:death8
