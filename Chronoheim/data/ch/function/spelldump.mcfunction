#cannibalize token

execute if score spellnumber spells matches -3 if score slot2bleeding booleaneffects matches 0 run scoreboard players operation slot2 hp += cannibalize spellStats
execute if score spellnumber spells matches -3 if score slot2bleeding booleaneffects matches 0 run scoreboard players operation slot2 hp += spellbuffsp1 spells
execute if score spellnumber spells matches -3 run scoreboard players set attackIsOngoingGame1 booleans 0
execute if score spellnumber spells matches -3 run execute at @n[type=armor_stand,name=slot2] run particle dust{color:[0.639,0.008,0.008],scale:1} ~ ~1 ~ 0.9 0.9 0.9 0.1 400
execute if score spellnumber spells matches -3 run tellraw @a[tag=game1] ["",{"selector":"@p[tag=p1]"}," used Cannibalize to heal Slot 2!"]
execute if score spellnumber spells matches -3 run scoreboard players set spellbuffsp1 spells 0

#cannibalize
execute if score spellnumber spells matches 34 run scoreboard players operation slot2 hp -= cannibalize spellStats
execute if score spellnumber spells matches 34 run scoreboard players operation slot2bleeding booleaneffects += cannibalizeDuration spellStats
execute if score spellnumber spells matches 34 run function ch:spellgivetargetsp1
execute if score spellnumber spells matches 34 run execute at @n[type=armor_stand,name=slot2] run particle dust{color:[0.639,0.008,0.008],scale:1} ~ ~1 ~ 0.9 0.9 0.9 0.1 400
execute if score spellnumber spells matches 34 run tellraw @a[tag=game1] ["",{"selector":"@p[tag=p1]"}," used Cannibalize on Slot 2!"]
execute if score spellnumber spells matches 34 run scoreboard players set spellnumber spells -3

#Dark Ritual
execute if score spellnumber spells matches 40 run execute if score buffDurationSlot2 atkmodifiers < darkpowerDuration spellStats run scoreboard players operation buffDurationSlot2 atkmodifiers = darkpowerDuration spellStats
execute if score spellnumber spells matches 40 run scoreboard players operation attackBuffSlot2 atkmodifiers += darkpower spellStats
execute if score spellnumber spells matches 40 run scoreboard players operation attackBuffSlot2 atkmodifiers += darkritual player1spells
execute if score spellnumber spells matches 40 at @e[name=slot2] run particle minecraft:trial_omen ~ ~1 ~ 0.9 0.9 0.9 0.5 40
execute if score spellnumber spells matches 40 run scoreboard players set attackIsOngoingGame1 booleans 0
execute if score spellnumber spells matches 40 run tellraw @a[tag=game1] ["",{"selector":"@p[tag=p1]"}," used Dark Ritual on Slot 2!"]

#Monkey's Paw
execute if score spellnumber spells matches 43 run scoreboard players operation invincibleSlot2 booleaneffects = monkeyspaw spellStats
execute if score spellnumber spells matches 43 run scoreboard players set curse slot2 5
execute if score spellnumber spells matches 43 run scoreboard players set curseStacks slot2 0
execute if score spellnumber spells matches 43 run scoreboard players operation curseDuration slot2 = monkeyspaw spellStats
execute if score spellnumber spells matches 43 at @e[name=slot2] run particle minecraft:raid_omen ~ ~1 ~ 0.9 0.9 0.9 0.00000001 200
execute if score spellnumber spells matches 43 run playsound minecraft:ambient.cave player @a[tag=game1] ~ ~ ~ 500 2
execute if score spellnumber spells matches 43 run scoreboard players set attackIsOngoingGame1 booleans 0
execute if score spellnumber spells matches 43 run tellraw @a[tag=game1] ["",{"selector":"@p[tag=p1]"}," used Monkey's Paw on Slot 2!"]

#Slimed!
execute if score spellnumber spells matches 35 if score ward slot2 matches 0 run scoreboard players operation disarmedslot2 booleaneffects += slimed spellStats
execute if score spellnumber spells matches 35 if score ward slot2 matches 1.. run function ch:wardslot2
execute if score spellnumber spells matches 35 run scoreboard players set attackIsOngoingGame1 booleans 0
execute if score spellnumber spells matches 35 run execute at @n[type=armor_stand,name=slot2] run particle minecraft:item_slime ~ ~1 ~ 0.7 0.7 0.7 0.3 150
execute if score spellnumber spells matches 35 run tellraw @a[tag=game1] ["",{"selector":"@p[tag=p2]"}," used Slimed! on Slot 2!"]

#Vampire Mark
execute if score spellnumber spells matches 36 run scoreboard players operation lifesteal slot2 = vampiremark spellStats
execute if score spellnumber spells matches 36 run execute at @n[type=armor_stand,name=slot2] run particle minecraft:crimson_spore ~ ~1 ~ 0.6 0.4 0.6 0 200
execute if score spellnumber spells matches 36 run tellraw @a[tag=game1] ["",{"selector":"@p[tag=p1]"}," used Vampire Mark on Slot 2!"]

#Butchering
execute if score spellnumber spells matches 37 run scoreboard players operation spellDmg saves = butchering spellStats
execute if score spellnumber spells matches 37 run scoreboard players operation spellDmg saves += spellbuffsp1 spells
execute if score spellnumber spells matches 37 run scoreboard players operation spellDmg saves += marks slot2
execute if score spellnumber spells matches 37 run scoreboard players operation spellDmg saves /= atkmultiplier slot2
execute if score spellnumber spells matches 37 run execute if score ward slot2 matches 0 run scoreboard players operation shield slot2 -= spellDmg saves
execute if score spellnumber spells matches 37 run execute if score ward slot2 matches 0 if score shield slot2 matches ..0 run scoreboard players operation slot2 hp += shield slot2
execute if score spellnumber spells matches 37 at @e[name=slot2] run particle minecraft:damage_indicator ~ ~1 ~ 0.6 0.6 0.6 0 100
execute if score spellnumber spells matches 37 run execute if score ward slot2 matches 1.. run function ch:wardslot2
execute if score spellnumber spells matches 37 run scoreboard players set spellbuffsp1 spells 0
execute if score spellnumber spells matches 37 run scoreboard players set attackIsOngoingGame1 booleans 0
execute if score spellnumber spells matches 37 run tellraw @a[tag=game1] ["",{"selector":"@p[tag=p2]"}," used Butchering on Slot 2!"]

#Will O' Wisp
execute if score spellnumber spells matches 38 run execute if score ward slot2 matches 0 if score durationSlot5 burn < willowispDuration spellStats run scoreboard players operation durationSlot5 burn = willowispDuration spellStats
execute if score spellnumber spells matches 38 run execute if score ward slot2 matches 0 run scoreboard players operation slot2Burn burn += willowisp spellStats
execute if score spellnumber spells matches 38 run scoreboard players operation spellDmg saves = slot2Burn burn
execute if score spellnumber spells matches 38 run scoreboard players operation spellDmg saves += spellbuffsp1 spells
execute if score spellnumber spells matches 38 run scoreboard players operation spellDmg saves += marks slot2
execute if score spellnumber spells matches 38 run scoreboard players operation spellDmg saves /= atkmultiplier slot2
execute if score spellnumber spells matches 38 run execute if score ward slot2 matches 0 run scoreboard players operation shield slot2 -= spellDmg saves
execute if score spellnumber spells matches 38 run execute if score ward slot2 matches 0 if score shield slot2 matches ..0 run scoreboard players operation slot2 hp += shield slot2
execute if score spellnumber spells matches 38 at @e[name=slot2] run particle minecraft:glow ~ ~1 ~ 0.7 0.7 0.7 0.1 100
execute if score spellnumber spells matches 38 at @e[name=slot2] run particle minecraft:soul_fire_flame ~ ~1 ~ 0.6 0.6 0.6 0.1 100
execute if score spellnumber spells matches 38 run execute if score ward slot2 matches 1.. run function ch:wardslot2
execute if score spellnumber spells matches 38 run scoreboard players set spellbuffsp1 spells 0
execute if score spellnumber spells matches 38 run scoreboard players set attackIsOngoingGame1 booleans 0
execute if score spellnumber spells matches 38 run tellraw @a[tag=game1] ["",{"selector":"@p[tag=p1]"}," used Will O' Wisp on Slot 2!"]

#Curse of Bats
execute if score spellnumber spells matches 42 if score ward slot2 matches ..0 unless score curse slot2 matches 5 unless score curse slot2 matches 6 run scoreboard players set curseStacks slot2 0
execute if score spellnumber spells matches 42 if score ward slot2 matches ..0 unless score curse slot2 matches 5 unless score curse slot2 matches 6 run scoreboard players set curseDuration slot2 0
execute if score spellnumber spells matches 42 if score ward slot2 matches ..0 unless score curse slot2 matches 5 run scoreboard players set curse slot2 6
execute if score spellnumber spells matches 42 if score ward slot2 matches ..0 unless score curse slot2 matches 5 if score curse slot2 matches 6 run scoreboard players add curseStacks slot2 1
execute if score spellnumber spells matches 42 run execute at @n[name=slot2] run particle shriek{delay:0} ~ ~1 ~ 0.3 0.5 0.3 0.1 200 normal
execute if score spellnumber spells matches 42 run tellraw @a[tag=game1] ["",{"selector":"@p[tag=p1]"}," used Curse of Bats on Slot 2!"]
execute if score spellnumber spells matches 42 if score ward slot2 matches 1.. run function ch:wardslot2

#cannibalize token

execute if score spellnumber spells matches -3 if score slot3bleeding booleaneffects matches 0 run scoreboard players operation slot3 hp += cannibalize spellStats
execute if score spellnumber spells matches -3 if score slot3bleeding booleaneffects matches 0 run scoreboard players operation slot3 hp += spellbuffsp1 spells
execute if score spellnumber spells matches -3 run scoreboard players set attackIsOngoingGame1 booleans 0
execute if score spellnumber spells matches -3 run execute at @n[type=armor_stand,name=slot3] run particle dust{color:[0.639,0.008,0.008],scale:1} ~ ~1 ~ 0.9 0.9 0.9 0.1 400
execute if score spellnumber spells matches -3 run tellraw @a[tag=game1] ["",{"selector":"@p[tag=p1]"}," used Cannibalize to heal Slot 3!"]
execute if score spellnumber spells matches -3 run scoreboard players set spellbuffsp1 spells 0

#cannibalize
execute if score spellnumber spells matches 34 run scoreboard players operation slot3 hp -= cannibalize spellStats
execute if score spellnumber spells matches 34 run scoreboard players operation slot3bleeding booleaneffects += cannibalizeDuration spellStats
execute if score spellnumber spells matches 34 run function ch:spellgivetargetsp1
execute if score spellnumber spells matches 34 run execute at @n[type=armor_stand,name=slot3] run particle dust{color:[0.639,0.008,0.008],scale:1} ~ ~1 ~ 0.9 0.9 0.9 0.1 400
execute if score spellnumber spells matches 34 run tellraw @a[tag=game1] ["",{"selector":"@p[tag=p1]"}," used Cannibalize on Slot 3!"]
execute if score spellnumber spells matches 34 run scoreboard players set spellnumber spells -3

#Dark Ritual
execute if score spellnumber spells matches 40 run execute if score buffDurationSlot3 atkmodifiers < darkpowerDuration spellStats run scoreboard players operation buffDurationSlot3 atkmodifiers = darkpowerDuration spellStats
execute if score spellnumber spells matches 40 run scoreboard players operation attackBuffSlot3 atkmodifiers += darkpower spellStats
execute if score spellnumber spells matches 40 run scoreboard players operation attackBuffSlot3 atkmodifiers += darkritual player1spells
execute if score spellnumber spells matches 40 at @e[name=slot3] run particle minecraft:trial_omen ~ ~1 ~ 0.9 0.9 0.9 0.5 40
execute if score spellnumber spells matches 40 run scoreboard players set attackIsOngoingGame1 booleans 0
execute if score spellnumber spells matches 40 run tellraw @a[tag=game1] ["",{"selector":"@p[tag=p1]"}," used Dark Ritual on Slot 3!"]

#Monkey's Paw
execute if score spellnumber spells matches 43 run scoreboard players operation invincibleSlot3 booleaneffects = monkeyspaw spellStats
execute if score spellnumber spells matches 43 run scoreboard players set curse slot3 5
execute if score spellnumber spells matches 43 run scoreboard players set curseStacks slot3 0
execute if score spellnumber spells matches 43 run scoreboard players operation curseDuration slot3 = monkeyspaw spellStats
execute if score spellnumber spells matches 43 at @e[name=slot3] run particle minecraft:raid_omen ~ ~1 ~ 0.9 0.9 0.9 0.00000001 200
execute if score spellnumber spells matches 43 run playsound minecraft:ambient.cave player @a[tag=game1] ~ ~ ~ 500 2
execute if score spellnumber spells matches 43 run scoreboard players set attackIsOngoingGame1 booleans 0
execute if score spellnumber spells matches 43 run tellraw @a[tag=game1] ["",{"selector":"@p[tag=p1]"}," used Monkey's Paw on Slot 3!"]

#Slimed!
execute if score spellnumber spells matches 35 if score ward slot3 matches 0 run scoreboard players operation disarmedslot3 booleaneffects += slimed spellStats
execute if score spellnumber spells matches 35 if score ward slot3 matches 1.. run function ch:wardslot3
execute if score spellnumber spells matches 35 run scoreboard players set attackIsOngoingGame1 booleans 0
execute if score spellnumber spells matches 35 run execute at @n[type=armor_stand,name=slot3] run particle minecraft:item_slime ~ ~1 ~ 0.7 0.7 0.7 0.3 150
execute if score spellnumber spells matches 35 run tellraw @a[tag=game1] ["",{"selector":"@p[tag=p2]"}," used Slimed! on Slot 3!"]

#Vampire Mark
execute if score spellnumber spells matches 36 run scoreboard players operation lifesteal slot3 = vampiremark spellStats
execute if score spellnumber spells matches 36 run execute at @n[type=armor_stand,name=slot3] run particle minecraft:crimson_spore ~ ~1 ~ 0.6 0.4 0.6 0 200
execute if score spellnumber spells matches 36 run tellraw @a[tag=game1] ["",{"selector":"@p[tag=p1]"}," used Vampire Mark on Slot 3!"]

#Butchering
execute if score spellnumber spells matches 37 run scoreboard players operation spellDmg saves = butchering spellStats
execute if score spellnumber spells matches 37 run scoreboard players operation spellDmg saves += spellbuffsp1 spells
execute if score spellnumber spells matches 37 run scoreboard players operation spellDmg saves += marks slot3
execute if score spellnumber spells matches 37 run scoreboard players operation spellDmg saves /= atkmultiplier slot3
execute if score spellnumber spells matches 37 run execute if score ward slot3 matches 0 run scoreboard players operation shield slot3 -= spellDmg saves
execute if score spellnumber spells matches 37 run execute if score ward slot3 matches 0 if score shield slot3 matches ..0 run scoreboard players operation slot3 hp += shield slot3
execute if score spellnumber spells matches 37 at @e[name=slot3] run particle minecraft:damage_indicator ~ ~1 ~ 0.6 0.6 0.6 0 100
execute if score spellnumber spells matches 37 run execute if score ward slot3 matches 1.. run function ch:wardslot3
execute if score spellnumber spells matches 37 run scoreboard players set spellbuffsp1 spells 0
execute if score spellnumber spells matches 37 run scoreboard players set attackIsOngoingGame1 booleans 0
execute if score spellnumber spells matches 37 run tellraw @a[tag=game1] ["",{"selector":"@p[tag=p2]"}," used Butchering on Slot 3!"]

#Will O' Wisp
execute if score spellnumber spells matches 38 run execute if score ward slot3 matches 0 if score durationSlot5 burn < willowispDuration spellStats run scoreboard players operation durationSlot5 burn = willowispDuration spellStats
execute if score spellnumber spells matches 38 run execute if score ward slot3 matches 0 run scoreboard players operation slot3Burn burn += willowisp spellStats
execute if score spellnumber spells matches 38 run scoreboard players operation spellDmg saves = slot3Burn burn
execute if score spellnumber spells matches 38 run scoreboard players operation spellDmg saves += spellbuffsp1 spells
execute if score spellnumber spells matches 38 run scoreboard players operation spellDmg saves += marks slot3
execute if score spellnumber spells matches 38 run scoreboard players operation spellDmg saves /= atkmultiplier slot3
execute if score spellnumber spells matches 38 run execute if score ward slot3 matches 0 run scoreboard players operation shield slot3 -= spellDmg saves
execute if score spellnumber spells matches 38 run execute if score ward slot3 matches 0 if score shield slot3 matches ..0 run scoreboard players operation slot3 hp += shield slot3
execute if score spellnumber spells matches 38 at @e[name=slot3] run particle minecraft:glow ~ ~1 ~ 0.7 0.7 0.7 0.1 100
execute if score spellnumber spells matches 38 at @e[name=slot3] run particle minecraft:soul_fire_flame ~ ~1 ~ 0.6 0.6 0.6 0.1 100
execute if score spellnumber spells matches 38 run execute if score ward slot3 matches 1.. run function ch:wardslot3
execute if score spellnumber spells matches 38 run scoreboard players set spellbuffsp1 spells 0
execute if score spellnumber spells matches 38 run scoreboard players set attackIsOngoingGame1 booleans 0
execute if score spellnumber spells matches 38 run tellraw @a[tag=game1] ["",{"selector":"@p[tag=p1]"}," used Will O' Wisp on Slot 3!"]

#Curse of Bats
execute if score spellnumber spells matches 42 if score ward slot3 matches ..0 unless score curse slot3 matches 5 unless score curse slot3 matches 6 run scoreboard players set curseStacks slot3 0
execute if score spellnumber spells matches 42 if score ward slot3 matches ..0 unless score curse slot3 matches 5 unless score curse slot3 matches 6 run scoreboard players set curseDuration slot3 0
execute if score spellnumber spells matches 42 if score ward slot3 matches ..0 unless score curse slot3 matches 5 run scoreboard players set curse slot3 6
execute if score spellnumber spells matches 42 if score ward slot3 matches ..0 unless score curse slot3 matches 5 if score curse slot3 matches 6 run scoreboard players add curseStacks slot3 1
execute if score spellnumber spells matches 42 run execute at @n[name=slot3] run particle shriek{delay:0} ~ ~1 ~ 0.3 0.5 0.3 0.1 200 normal
execute if score spellnumber spells matches 42 run tellraw @a[tag=game1] ["",{"selector":"@p[tag=p1]"}," used Curse of Bats on Slot 3!"]
execute if score spellnumber spells matches 42 if score ward slot3 matches 1.. run function ch:wardslot3

#cannibalize token

execute if score spellnumber spells matches -3 if score slot4bleeding booleaneffects matches 0 run scoreboard players operation slot4 hp += cannibalize spellStats
execute if score spellnumber spells matches -3 if score slot4bleeding booleaneffects matches 0 run scoreboard players operation slot4 hp += spellbuffsp1 spells
execute if score spellnumber spells matches -3 run scoreboard players set attackIsOngoingGame1 booleans 0
execute if score spellnumber spells matches -3 run execute at @n[type=armor_stand,name=slot4] run particle dust{color:[0.639,0.008,0.008],scale:1} ~ ~1 ~ 0.9 0.9 0.9 0.1 400
execute if score spellnumber spells matches -3 run tellraw @a[tag=game1] ["",{"selector":"@p[tag=p1]"}," used Cannibalize to heal Slot 4!"]
execute if score spellnumber spells matches -3 run scoreboard players set spellbuffsp1 spells 0

#cannibalize
execute if score spellnumber spells matches 34 run scoreboard players operation slot4 hp -= cannibalize spellStats
execute if score spellnumber spells matches 34 run scoreboard players operation slot4bleeding booleaneffects += cannibalizeDuration spellStats
execute if score spellnumber spells matches 34 run function ch:spellgivetargetsp1
execute if score spellnumber spells matches 34 run execute at @n[type=armor_stand,name=slot4] run particle dust{color:[0.639,0.008,0.008],scale:1} ~ ~1 ~ 0.9 0.9 0.9 0.1 400
execute if score spellnumber spells matches 34 run tellraw @a[tag=game1] ["",{"selector":"@p[tag=p1]"}," used Cannibalize on Slot 4!"]
execute if score spellnumber spells matches 34 run scoreboard players set spellnumber spells -3

#Dark Ritual
execute if score spellnumber spells matches 40 run execute if score buffDurationSlot4 atkmodifiers < darkpowerDuration spellStats run scoreboard players operation buffDurationSlot4 atkmodifiers = darkpowerDuration spellStats
execute if score spellnumber spells matches 40 run scoreboard players operation attackBuffSlot4 atkmodifiers += darkpower spellStats
execute if score spellnumber spells matches 40 run scoreboard players operation attackBuffSlot4 atkmodifiers += darkritual player1spells
execute if score spellnumber spells matches 40 at @e[name=slot4] run particle minecraft:trial_omen ~ ~1 ~ 0.9 0.9 0.9 0.5 40
execute if score spellnumber spells matches 40 run scoreboard players set attackIsOngoingGame1 booleans 0
execute if score spellnumber spells matches 40 run tellraw @a[tag=game1] ["",{"selector":"@p[tag=p1]"}," used Dark Ritual on Slot 4!"]

#Monkey's Paw
execute if score spellnumber spells matches 43 run scoreboard players operation invincibleSlot4 booleaneffects = monkeyspaw spellStats
execute if score spellnumber spells matches 43 run scoreboard players set curse slot4 5
execute if score spellnumber spells matches 43 run scoreboard players set curseStacks slot4 0
execute if score spellnumber spells matches 43 run scoreboard players operation curseDuration slot4 = monkeyspaw spellStats
execute if score spellnumber spells matches 43 at @e[name=slot4] run particle minecraft:raid_omen ~ ~1 ~ 0.9 0.9 0.9 0.00000001 200
execute if score spellnumber spells matches 43 run playsound minecraft:ambient.cave player @a[tag=game1] ~ ~ ~ 500 2
execute if score spellnumber spells matches 43 run scoreboard players set attackIsOngoingGame1 booleans 0
execute if score spellnumber spells matches 43 run tellraw @a[tag=game1] ["",{"selector":"@p[tag=p1]"}," used Monkey's Paw on Slot 4!"]

#Slimed!
execute if score spellnumber spells matches 35 if score ward slot4 matches 0 run scoreboard players operation disarmedslot4 booleaneffects += slimed spellStats
execute if score spellnumber spells matches 35 if score ward slot4 matches 1.. run function ch:wardslot4
execute if score spellnumber spells matches 35 run scoreboard players set attackIsOngoingGame1 booleans 0
execute if score spellnumber spells matches 35 run execute at @n[type=armor_stand,name=slot4] run particle minecraft:item_slime ~ ~1 ~ 0.7 0.7 0.7 0.3 150
execute if score spellnumber spells matches 35 run tellraw @a[tag=game1] ["",{"selector":"@p[tag=p2]"}," used Slimed! on Slot 4!"]

#Vampire Mark
execute if score spellnumber spells matches 36 run scoreboard players operation lifesteal slot4 = vampiremark spellStats
execute if score spellnumber spells matches 36 run execute at @n[type=armor_stand,name=slot4] run particle minecraft:crimson_spore ~ ~1 ~ 0.6 0.4 0.6 0 200
execute if score spellnumber spells matches 36 run tellraw @a[tag=game1] ["",{"selector":"@p[tag=p1]"}," used Vampire Mark on Slot 4!"]

#Butchering
execute if score spellnumber spells matches 37 run scoreboard players operation spellDmg saves = butchering spellStats
execute if score spellnumber spells matches 37 run scoreboard players operation spellDmg saves += spellbuffsp1 spells
execute if score spellnumber spells matches 37 run scoreboard players operation spellDmg saves += marks slot4
execute if score spellnumber spells matches 37 run scoreboard players operation spellDmg saves /= atkmultiplier slot4
execute if score spellnumber spells matches 37 run execute if score ward slot4 matches 0 run scoreboard players operation shield slot4 -= spellDmg saves
execute if score spellnumber spells matches 37 run execute if score ward slot4 matches 0 if score shield slot4 matches ..0 run scoreboard players operation slot4 hp += shield slot4
execute if score spellnumber spells matches 37 at @e[name=slot4] run particle minecraft:damage_indicator ~ ~1 ~ 0.6 0.6 0.6 0 100
execute if score spellnumber spells matches 37 run execute if score ward slot4 matches 1.. run function ch:wardslot4
execute if score spellnumber spells matches 37 run scoreboard players set spellbuffsp1 spells 0
execute if score spellnumber spells matches 37 run scoreboard players set attackIsOngoingGame1 booleans 0
execute if score spellnumber spells matches 37 run tellraw @a[tag=game1] ["",{"selector":"@p[tag=p2]"}," used Butchering on Slot 4!"]

#Will O' Wisp
execute if score spellnumber spells matches 38 run execute if score ward slot4 matches 0 if score durationSlot5 burn < willowispDuration spellStats run scoreboard players operation durationSlot5 burn = willowispDuration spellStats
execute if score spellnumber spells matches 38 run execute if score ward slot4 matches 0 run scoreboard players operation slot4Burn burn += willowisp spellStats
execute if score spellnumber spells matches 38 run scoreboard players operation spellDmg saves = slot4Burn burn
execute if score spellnumber spells matches 38 run scoreboard players operation spellDmg saves += spellbuffsp1 spells
execute if score spellnumber spells matches 38 run scoreboard players operation spellDmg saves += marks slot4
execute if score spellnumber spells matches 38 run scoreboard players operation spellDmg saves /= atkmultiplier slot4
execute if score spellnumber spells matches 38 run execute if score ward slot4 matches 0 run scoreboard players operation shield slot4 -= spellDmg saves
execute if score spellnumber spells matches 38 run execute if score ward slot4 matches 0 if score shield slot4 matches ..0 run scoreboard players operation slot4 hp += shield slot4
execute if score spellnumber spells matches 38 at @e[name=slot4] run particle minecraft:glow ~ ~1 ~ 0.7 0.7 0.7 0.1 100
execute if score spellnumber spells matches 38 at @e[name=slot4] run particle minecraft:soul_fire_flame ~ ~1 ~ 0.6 0.6 0.6 0.1 100
execute if score spellnumber spells matches 38 run execute if score ward slot4 matches 1.. run function ch:wardslot4
execute if score spellnumber spells matches 38 run scoreboard players set spellbuffsp1 spells 0
execute if score spellnumber spells matches 38 run scoreboard players set attackIsOngoingGame1 booleans 0
execute if score spellnumber spells matches 38 run tellraw @a[tag=game1] ["",{"selector":"@p[tag=p1]"}," used Will O' Wisp on Slot 4!"]

#Curse of Bats
execute if score spellnumber spells matches 42 if score ward slot4 matches ..0 unless score curse slot4 matches 5 unless score curse slot4 matches 6 run scoreboard players set curseStacks slot4 0
execute if score spellnumber spells matches 42 if score ward slot4 matches ..0 unless score curse slot4 matches 5 unless score curse slot4 matches 6 run scoreboard players set curseDuration slot4 0
execute if score spellnumber spells matches 42 if score ward slot4 matches ..0 unless score curse slot4 matches 5 run scoreboard players set curse slot4 6
execute if score spellnumber spells matches 42 if score ward slot4 matches ..0 unless score curse slot4 matches 5 if score curse slot4 matches 6 run scoreboard players add curseStacks slot4 1
execute if score spellnumber spells matches 42 run execute at @n[name=slot4] run particle shriek{delay:0} ~ ~1 ~ 0.3 0.5 0.3 0.1 200 normal
execute if score spellnumber spells matches 42 run tellraw @a[tag=game1] ["",{"selector":"@p[tag=p1]"}," used Curse of Bats on Slot 4!"]
execute if score spellnumber spells matches 42 if score ward slot4 matches 1.. run function ch:wardslot4