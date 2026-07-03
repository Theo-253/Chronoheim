#Barley
execute if score abilitynumber abilities matches -36 if score barleyPart1 abilities matches 5 if score ward slot1 matches ..0 run scoreboard players operation durationSlot5-1 fear = barleyDuration abilityStats 
execute if score abilitynumber abilities matches -36 if score barleyPart1 abilities matches 6 if score ward slot1 matches ..0 run scoreboard players operation durationSlot6-1 fear = barleyDuration abilityStats 
execute if score abilitynumber abilities matches -36 if score barleyPart1 abilities matches 7 if score ward slot1 matches ..0 run scoreboard players operation durationSlot7-1 fear = barleyDuration abilityStats 
execute if score abilitynumber abilities matches -36 if score barleyPart1 abilities matches 8 if score ward slot1 matches ..0 run scoreboard players operation durationSlot8-1 fear = barleyDuration abilityStats 
execute if score abilitynumber abilities matches -36 if score ward slot1 matches ..0 if score debuffDurationSlot1 atkmodifiers < barleyDuration abilityStats run scoreboard players operation debuffDurationSlot1 atkmodifiers = barleyDuration abilityStats
execute if score abilitynumber abilities matches -36 if score ward slot1 matches ..0 run scoreboard players operation debuffDurationSlot1 atkmodifiers += barley abilityStats
execute if score abilitynumber abilities matches -36 if score ward slot1 matches 1.. run function ch:wardslot1
execute if score abilitynumber abilities matches -36 run execute at @n[type=armor_stand,name=slot1] run particle trial_omen ~ ~1 ~ 0.9 0.9 0.9 0.1 400
execute if score abilitynumber abilities matches -36 run tellraw @a[tag=game1] ["",{"selector":"@p[tag=p2]"}," used Spookcrow to fear Slot 1!"]

execute if score abilitynumber abilities matches 36 run scoreboard players set barleyPart1 abilities 1
execute if score abilitynumber abilities matches 36 if score buffDurationSlot1 atkmodifiers < barleyDuration abilityStats run scoreboard players operation buffDurationSlot1 atkmodifiers = barleyDuration abilityStats
execute if score abilitynumber abilities matches 36 run scoreboard players operation attackBuffSlot1 atkmodifiers += barley abilityStats
execute if score abilitynumber abilities matches 36 run function ch:abilitygivetargetsp1
execute if score abilitynumber abilities matches 36 run execute at @n[type=armor_stand,name=slot1] run particle raid_omen ~ ~1 ~ 0.9 0.9 0.9 0.1 400
execute if score abilitynumber abilities matches 36 run tellraw @a[tag=game1] ["",{"selector":"@p[tag=p1]"}," used Spookcrow to make Slot 1 scary!"]

#Igor
execute if score abilitynumber abilities matches 38 run scoreboard players operation cooldown slot1 -= igor abilityStats
execute if score abilitynumber abilities matches 38 run execute at @e[type=armor_stand,name=slot1] run particle witch ~ ~1 ~ 0.5 0.8 0.5 0.1 100
execute if score abilitynumber abilities matches 38 run execute if score durationSlot1 speedBuffs > igorDuration abilityStats run scoreboard players operation durationSlot1 speedBuffs = igorDuration abilityStats
execute if score abilitynumber abilities matches 38 run scoreboard players operation speedBuffSlot1 speedBuffs += igorSpBuff abilityStats
execute if score abilitynumber abilities matches 38 if score slot2isatk booleans matches 1 run execute if score invincibleSlot1 booleaneffects > igorDuration abilityStats run scoreboard players operation invincibleSlot1 booleaneffects = igorDuration abilityStats

#Zeebo
execute if score abilitynumber abilities matches 40 if score ward slot1 matches ..0 unless score curse slot1 matches 5 unless score curse slot1 matches 2 run scoreboard players set curseStacks slot1 0
execute if score abilitynumber abilities matches 40 if score ward slot1 matches ..0 unless score curse slot1 matches 5 unless score curse slot1 matches 2 run scoreboard players set curseDuration slot1 0
execute if score abilitynumber abilities matches 40 if score ward slot1 matches ..0 unless score curse slot1 matches 5 run scoreboard players set curse slot1 2
execute if score abilitynumber abilities matches 40 if score ward slot1 matches ..0 unless score curse slot1 matches 5 if score curse slot1 matches 2 run scoreboard players add curseStacks slot1 1
execute if score abilitynumber abilities matches 40 if score ward slot1 matches ..0 run execute if score durationSlot1 burn > zeeboDuration abilityStats run scoreboard players operation durationSlot1 burn = zeeboDuration abilityStats
execute if score abilitynumber abilities matches 40 if score ward slot1 matches ..0 run scoreboard players operation slot1Burn burn += zeebo abilityStats
execute if score abilitynumber abilities matches 40 run execute at @e[type=armor_stand,name=slot1] run summon firework_rocket ~ ~2 ~ {LifeTime:1,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"burst",has_twinkle:true,has_trail:true,colors:[I;13894251,16746496,16770560],fade_colors:[I;10224278]}]}}}}
execute if score abilitynumber abilities matches 40 run execute at @e[type=armor_stand,name=slot1] run summon firework_rocket ~ ~2 ~ {LifeTime:1,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"burst",has_twinkle:true,has_trail:true,colors:[I;13894251,16746496,16770560],fade_colors:[I;10224278]}]}}}}
execute if score abilitynumber abilities matches 40 if score ward slot1 matches 1.. run function ch:wardslot1

#Fenrir
execute if score abilitynumber abilities matches 41 if score ward slot1 matches ..0 unless score curse slot1 matches 5 unless score curse slot1 matches 3 run scoreboard players set curseStacks slot1 0
execute if score abilitynumber abilities matches 41 if score ward slot1 matches ..0 unless score curse slot1 matches 5 unless score curse slot1 matches 3 run scoreboard players set curseDuration slot1 0
execute if score abilitynumber abilities matches 41 if score ward slot1 matches ..0 unless score curse slot1 matches 5 run scoreboard players set curse slot1 3
execute if score abilitynumber abilities matches 41 run scoreboard players operation abilityDmg saves = fenrir abilityStats
execute if score abilitynumber abilities matches 41 if score slot5isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot5 atkmodifiers
execute if score abilitynumber abilities matches 41 if score slot6isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot6 atkmodifiers
execute if score abilitynumber abilities matches 41 if score slot7isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot7 atkmodifiers
execute if score abilitynumber abilities matches 41 run scoreboard players operation abilityDmg saves += marks slot1
execute if score abilitynumber abilities matches 41 run scoreboard players operation abilityDmg saves /= atkmultiplier slot1
execute if score abilitynumber abilities matches 41 run execute if score ward slot1 matches ..0 run scoreboard players operation shield slot1 -= abilityDmg saves
execute if score abilitynumber abilities matches 41 run execute at @n[type=armor_stand,name=slot1] run particle enchanted_hit ~ ~1 ~ 0.9 0.9 0.9 0.1 400

execute if score abilitynumber abilities matches 41 if score ward slot1 matches 1.. run function ch:wardslot1

#Grendel
execute if score abilitynumber abilities matches 43 run scoreboard players operation abilityDmg saves = grendel abilityStats
execute if score abilitynumber abilities matches 43 if score slot5isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot5 atkmodifiers
execute if score abilitynumber abilities matches 43 if score slot6isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot6 atkmodifiers
execute if score abilitynumber abilities matches 43 if score slot7isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot7 atkmodifiers
execute if score abilitynumber abilities matches 43 run scoreboard players operation abilityDmg saves += marks slot1
execute if score abilitynumber abilities matches 43 run scoreboard players operation abilityDmg saves /= atkmultiplier slot1
execute if score abilitynumber abilities matches 43 run execute if score ward slot1 matches ..0 run scoreboard players operation shield slot1 -= abilityDmg saves
execute if score abilitynumber abilities matches 43 run execute if score ward slot1 matches ..0 run scoreboard players operation slot1Disease disease += grendelDisease abilityStats
execute if score abilitynumber abilities matches 43 run execute at @e[type=armor_stand,name=slot1] run particle minecraft:noxious_gas ~ ~1 ~ 0.7 0.7 0.7 0.05 200
execute if score abilitynumber abilities matches 43 if score ward slot1 matches 1.. run function ch:wardslot1
execute if score abilitynumber abilities matches 43 run function ch:abilitygivetargetsp2
execute if score abilitynumber abilities matches -43 run scoreboard players operation abilityDmg saves = grendel abilityStats
execute if score abilitynumber abilities matches -43 if score slot5isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot5 atkmodifiers
execute if score abilitynumber abilities matches -43 if score slot6isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot6 atkmodifiers
execute if score abilitynumber abilities matches -43 if score slot7isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot7 atkmodifiers
execute if score abilitynumber abilities matches -43 run scoreboard players operation abilityDmg saves += marks slot1
execute if score abilitynumber abilities matches -43 run scoreboard players operation abilityDmg saves /= atkmultiplier slot1
execute if score abilitynumber abilities matches -43 run execute if score ward slot1 matches ..0 run scoreboard players operation shield slot1 -= abilityDmg saves
execute if score abilitynumber abilities matches -43 run execute if score ward slot1 matches ..0 run scoreboard players operation slot1Disease disease += grendelDisease abilityStats
execute if score abilitynumber abilities matches -43 run execute at @e[type=armor_stand,name=slot1] run particle minecraft:noxious_gas ~ ~1 ~ 0.7 0.7 0.7 0.05 200
execute if score abilitynumber abilities matches -43 if score ward slot1 matches 1.. run function ch:wardslot1

#Frank
execute if score abilitynumber abilities matches 34 run scoreboard players operation abilityDmg saves = frank abilityStats
execute if score abilitynumber abilities matches 34 run scoreboard players operation shield slot1 -= abilityDmg saves
execute if score abilitynumber abilities matches 34 run scoreboard players operation slot1 hp += shield slot1
execute if score abilitynumber abilities matches 34 run execute at @e[name=slot1,type=armor_stand] run particle minecraft:angry_villager ~ ~1 ~ 0.9 0.9 0.9 0.5 15
execute if score abilitynumber abilities matches 34 run tellraw @a[tag=game1] ["",{"selector":"@p[tag=p2]"}," used IT'S ALIVE! to damage Slot 1!"]
execute if score abilitynumber abilities matches 34 run function ch:abilitygivetargetsp2

execute if score abilitynumber abilities matches -34 run execute if score ward slot1 matches 0 run scoreboard players operation slot1 stun = frankDuration abilityStats
execute if score abilitynumber abilities matches -34 run execute if score ward slot1 matches 1.. run function ch:wardslot1
execute if score abilitynumber abilities matches -34 run execute at @e[name=slot1,type=armor_stand] run particle minecraft:flash{color:[1.000,1.000,1.000,1.00]} ~ ~1 ~ 0.9 0.9 0.9 0.5 100
execute if score abilitynumber abilities matches -34 run tellraw @a[tag=game1] ["",{"selector":"@p[tag=p1]"}," used IT'S ALIVE! to stun Slot 1!"]

#Stein
execute if score abilitynumber abilities matches 35 run scoreboard players operation abilityDmg saves = stein abilityStats
execute if score abilitynumber abilities matches 35 if score slot5isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot1 atkmodifiers
execute if score abilitynumber abilities matches 35 if score slot6isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot2 atkmodifiers
execute if score abilitynumber abilities matches 35 if score slot7isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot3 atkmodifiers
execute if score abilitynumber abilities matches 35 run scoreboard players operation abilityDmg saves += marks slot1
execute if score abilitynumber abilities matches 35 run scoreboard players operation abilityDmg saves /= atkmultiplier slot1
execute if score abilitynumber abilities matches 35 run execute if score ward slot1 matches 0 run scoreboard players operation shield slot1 -= abilityDmg saves
execute if score abilitynumber abilities matches 35 run execute if score ward slot1 matches 0 if score shield slot1 matches ..0 run scoreboard players operation slot1 hp += shield slot1
execute if score abilitynumber abilities matches 35 run execute if score ward slot1 matches 1.. run function ch:wardslot1
execute if score abilitynumber abilities matches 35 run execute at @e[name=slot1,type=armor_stand] run particle raid_omen ~ ~1 ~ 0.9 0.9 0.9 2 100
execute if score abilitynumber abilities matches 35 run tellraw @a[tag=game1] ["",{"selector":"@p[tag=p1]"}," used Reanimation Beam to damage Slot 1!"]
execute if score abilitynumber abilities matches 35 run function ch:abilitygivetargetsp2reverse

execute if score abilitynumber abilities matches -35 if score slot1bleeding booleaneffects matches 0 run scoreboard players operation slot1 hp += abilityDmg saves
execute if score abilitynumber abilities matches -35 if score character# slot2 matches 35 run function ch:cleanseslot1
execute if score abilitynumber abilities matches -35 run execute at @e[name=slot1,type=armor_stand] run particle trial_omen ~ ~1 ~ 0.9 0.9 0.9 2 100
execute if score abilitynumber abilities matches -35 run tellraw @a[tag=game1] ["",{"selector":"@p[tag=p2]"}," used Reanimation Beam to heal Slot 1!"]

#Boogaloo
execute if score abilitynumber abilities matches 37 if score curseDuration slot1 matches 1.. unless score curse slot1 matches 5 run scoreboard players set curseDuration slot1 0
execute if score abilitynumber abilities matches 37 if score curseStacks slot1 matches 1.. unless score curse slot1 matches 5 run scoreboard players set curseStacks slot1 0
execute if score abilitynumber abilities matches 37 unless score curse slot1 matches 5 run scoreboard players set curse slot1 1
execute if score abilitynumber abilities matches 37 run execute at @e[name=slot1,type=armor_stand] run particle minecraft:sculk_soul ~ ~1 ~ 0.9 0.9 0.9 0.15 30
execute if score abilitynumber abilities matches 37 run tellraw @a[tag=game1] ["",{"selector":"@p[tag=p1]"}," used Devour Soul on Slot 1!"]

#Dolly
execute if score abilitynumber abilities matches 42 if score ward slot1 matches 0 unless score curse slot1 matches 5 run scoreboard players set curseDuration slot1 3
execute if score abilitynumber abilities matches 42 if score ward slot1 matches 0 unless score curse slot1 matches 5 if score curseStacks slot1 matches 1.. run scoreboard players set curseStacks slot1 0
execute if score abilitynumber abilities matches 42 if score ward slot1 matches 0 unless score curse slot1 matches 5 run scoreboard players set curse slot1 4
execute if score abilitynumber abilities matches 42 if score ward slot1 matches 1.. run function ch:wardslot1
execute if score abilitynumber abilities matches 42 run execute at @e[name=slot1,type=armor_stand] run particle effect{color:[0.725,0.180,1.000]} ~ ~1 ~ 0.9 0.9 0.9 0.05 100
execute if score abilitynumber abilities matches 42 run tellraw @a[tag=game1] ["",{"selector":"@p[tag=p1]"}," used Life Link on Slot 1!"]
execute if score abilitynumber abilities matches 42 run function ch:abilitygivetargetsp1

execute if score abilitynumber abilities matches -42 if score ward slot1 matches 0 unless score curse slot1 matches 5 run scoreboard players set curseDuration slot1 3
execute if score abilitynumber abilities matches -42 if score ward slot1 matches 0 unless score curse slot1 matches 5 if score curseStacks slot1 matches 1.. run scoreboard players set curseStacks slot1 0
execute if score abilitynumber abilities matches -42 if score ward slot1 matches 0 unless score curse slot1 matches 5 run scoreboard players set curse slot1 4

execute if score abilitynumber abilities matches -42 if score ward slot1 matches 1.. run function ch:wardslot1
execute if score abilitynumber abilities matches -42 run execute at @e[name=slot1,type=armor_stand] run particle effect{color:[0.725,0.180,1.000]} ~ ~1 ~ 0.9 0.9 0.9 0.05 100
execute if score abilitynumber abilities matches -42 run tellraw @a[tag=game1] ["",{"selector":"@p[tag=p1]"}," used Life Link on Slot 1!"]

#Barley
execute if score abilitynumber abilities matches -36 if score barleyPart1 abilities matches 5 if score ward slot2 matches ..0 run scoreboard players operation durationSlot5-1 fear = barleyDuration abilityStats 
execute if score abilitynumber abilities matches -36 if score barleyPart1 abilities matches 6 if score ward slot2 matches ..0 run scoreboard players operation durationSlot6-1 fear = barleyDuration abilityStats 
execute if score abilitynumber abilities matches -36 if score barleyPart1 abilities matches 7 if score ward slot2 matches ..0 run scoreboard players operation durationSlot7-1 fear = barleyDuration abilityStats 
execute if score abilitynumber abilities matches -36 if score barleyPart1 abilities matches 8 if score ward slot2 matches ..0 run scoreboard players operation durationSlot8-1 fear = barleyDuration abilityStats 
execute if score abilitynumber abilities matches -36 if score ward slot2 matches ..0 if score debuffDurationSlot2 atkmodifiers < barleyDuration abilityStats run scoreboard players operation debuffDurationSlot2 atkmodifiers = barleyDuration abilityStats
execute if score abilitynumber abilities matches -36 if score ward slot2 matches ..0 run scoreboard players operation debuffDurationSlot2 atkmodifiers += barley abilityStats
execute if score abilitynumber abilities matches -36 if score ward slot2 matches 1.. run function ch:wardslot2
execute if score abilitynumber abilities matches -36 run execute at @n[type=armor_stand,name=slot2] run particle trial_omen ~ ~1 ~ 0.9 0.9 0.9 0.1 400
execute if score abilitynumber abilities matches -36 run tellraw @a[tag=game1] ["",{"selector":"@p[tag=p2]"}," used Spookcrow to fear Slot 2!"]

execute if score abilitynumber abilities matches 36 run scoreboard players set barleyPart1 abilities 1
execute if score abilitynumber abilities matches 36 if score buffDurationSlot2 atkmodifiers < barleyDuration abilityStats run scoreboard players operation buffDurationSlot2 atkmodifiers = barleyDuration abilityStats
execute if score abilitynumber abilities matches 36 run scoreboard players operation attackBuffSlot2 atkmodifiers += barley abilityStats
execute if score abilitynumber abilities matches 36 run function ch:abilitygivetargetsp1
execute if score abilitynumber abilities matches 36 run execute at @n[type=armor_stand,name=slot2] run particle raid_omen ~ ~1 ~ 0.9 0.9 0.9 0.1 400
execute if score abilitynumber abilities matches 36 run tellraw @a[tag=game1] ["",{"selector":"@p[tag=p1]"}," used Spookcrow to make Slot 2 scary!"]

#Igor
execute if score abilitynumber abilities matches 38 run scoreboard players operation cooldown slot2 -= igor abilityStats
execute if score abilitynumber abilities matches 38 run execute at @e[type=armor_stand,name=slot2] run particle witch ~ ~1 ~ 0.5 0.8 0.5 0.1 100
execute if score abilitynumber abilities matches 38 run execute if score durationSlot2 speedBuffs > igorDuration abilityStats run scoreboard players operation durationSlot2 speedBuffs = igorDuration abilityStats
execute if score abilitynumber abilities matches 38 run scoreboard players operation speedBuffSlot2 speedBuffs += igorSpBuff abilityStats
execute if score abilitynumber abilities matches 38 if score slot2isatk booleans matches 1 run execute if score invincibleSlot2 booleaneffects > igorDuration abilityStats run scoreboard players operation invincibleSlot2 booleaneffects = igorDuration abilityStats

#Zeebo
execute if score abilitynumber abilities matches 40 if score ward slot2 matches ..0 unless score curse slot2 matches 5 unless score curse slot2 matches 2 run scoreboard players set curseStacks slot2 0
execute if score abilitynumber abilities matches 40 if score ward slot2 matches ..0 unless score curse slot2 matches 5 unless score curse slot2 matches 2 run scoreboard players set curseDuration slot2 0
execute if score abilitynumber abilities matches 40 if score ward slot2 matches ..0 unless score curse slot2 matches 5 run scoreboard players set curse slot2 2
execute if score abilitynumber abilities matches 40 if score ward slot2 matches ..0 unless score curse slot2 matches 5 if score curse slot2 matches 2 run scoreboard players add curseStacks slot2 1
execute if score abilitynumber abilities matches 40 if score ward slot2 matches ..0 run execute if score durationSlot2 burn > zeeboDuration abilityStats run scoreboard players operation durationSlot2 burn = zeeboDuration abilityStats
execute if score abilitynumber abilities matches 40 if score ward slot2 matches ..0 run scoreboard players operation slot2Burn burn += zeebo abilityStats
execute if score abilitynumber abilities matches 40 run execute at @e[type=armor_stand,name=slot2] run summon firework_rocket ~ ~2 ~ {LifeTime:1,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"burst",has_twinkle:true,has_trail:true,colors:[I;13894251,16746496,16770560],fade_colors:[I;10224278]}]}}}}
execute if score abilitynumber abilities matches 40 run execute at @e[type=armor_stand,name=slot2] run summon firework_rocket ~ ~2 ~ {LifeTime:1,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"burst",has_twinkle:true,has_trail:true,colors:[I;13894251,16746496,16770560],fade_colors:[I;10224278]}]}}}}
execute if score abilitynumber abilities matches 40 if score ward slot2 matches 1.. run function ch:wardslot2

#Fenrir
execute if score abilitynumber abilities matches 41 if score ward slot2 matches ..0 unless score curse slot2 matches 5 unless score curse slot2 matches 3 run scoreboard players set curseStacks slot2 0
execute if score abilitynumber abilities matches 41 if score ward slot2 matches ..0 unless score curse slot2 matches 5 unless score curse slot2 matches 3 run scoreboard players set curseDuration slot2 0
execute if score abilitynumber abilities matches 41 if score ward slot2 matches ..0 unless score curse slot2 matches 5 run scoreboard players set curse slot2 3
execute if score abilitynumber abilities matches 41 run scoreboard players operation abilityDmg saves = fenrir abilityStats
execute if score abilitynumber abilities matches 41 if score slot5isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot5 atkmodifiers
execute if score abilitynumber abilities matches 41 if score slot6isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot6 atkmodifiers
execute if score abilitynumber abilities matches 41 if score slot7isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot7 atkmodifiers
execute if score abilitynumber abilities matches 41 run scoreboard players operation abilityDmg saves += marks slot2
execute if score abilitynumber abilities matches 41 run scoreboard players operation abilityDmg saves /= atkmultiplier slot2
execute if score abilitynumber abilities matches 41 run execute if score ward slot2 matches ..0 run scoreboard players operation shield slot2 -= abilityDmg saves
execute if score abilitynumber abilities matches 41 run execute at @n[type=armor_stand,name=slot2] run particle enchanted_hit ~ ~1 ~ 0.9 0.9 0.9 0.1 400

execute if score abilitynumber abilities matches 41 if score ward slot2 matches 1.. run function ch:wardslot2

#Grendel
execute if score abilitynumber abilities matches 43 run scoreboard players operation abilityDmg saves = grendel abilityStats
execute if score abilitynumber abilities matches 43 if score slot5isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot5 atkmodifiers
execute if score abilitynumber abilities matches 43 if score slot6isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot6 atkmodifiers
execute if score abilitynumber abilities matches 43 if score slot7isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot7 atkmodifiers
execute if score abilitynumber abilities matches 43 run scoreboard players operation abilityDmg saves += marks slot2
execute if score abilitynumber abilities matches 43 run scoreboard players operation abilityDmg saves /= atkmultiplier slot2
execute if score abilitynumber abilities matches 43 run execute if score ward slot2 matches ..0 run scoreboard players operation shield slot2 -= abilityDmg saves
execute if score abilitynumber abilities matches 43 run execute if score ward slot2 matches ..0 run scoreboard players operation slot2Disease disease += grendelDisease abilityStats
execute if score abilitynumber abilities matches 43 run execute at @e[type=armor_stand,name=slot2] run particle minecraft:noxious_gas ~ ~1 ~ 0.7 0.7 0.7 0.05 200
execute if score abilitynumber abilities matches 43 if score ward slot2 matches 1.. run function ch:wardslot2
execute if score abilitynumber abilities matches 43 run function ch:abilitygivetargetsp2
execute if score abilitynumber abilities matches -43 run scoreboard players operation abilityDmg saves = grendel abilityStats
execute if score abilitynumber abilities matches -43 if score slot5isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot5 atkmodifiers
execute if score abilitynumber abilities matches -43 if score slot6isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot6 atkmodifiers
execute if score abilitynumber abilities matches -43 if score slot7isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot7 atkmodifiers
execute if score abilitynumber abilities matches -43 run scoreboard players operation abilityDmg saves += marks slot2
execute if score abilitynumber abilities matches -43 run scoreboard players operation abilityDmg saves /= atkmultiplier slot2
execute if score abilitynumber abilities matches -43 run execute if score ward slot2 matches ..0 run scoreboard players operation shield slot2 -= abilityDmg saves
execute if score abilitynumber abilities matches -43 run execute if score ward slot2 matches ..0 run scoreboard players operation slot2Disease disease += grendelDisease abilityStats
execute if score abilitynumber abilities matches -43 run execute at @e[type=armor_stand,name=slot2] run particle minecraft:noxious_gas ~ ~1 ~ 0.7 0.7 0.7 0.05 200
execute if score abilitynumber abilities matches -43 if score ward slot2 matches 1.. run function ch:wardslot2

#Frank
execute if score abilitynumber abilities matches 34 run scoreboard players operation abilityDmg saves = frank abilityStats
execute if score abilitynumber abilities matches 34 run scoreboard players operation shield slot2 -= abilityDmg saves
execute if score abilitynumber abilities matches 34 run scoreboard players operation slot2 hp += shield slot2
execute if score abilitynumber abilities matches 34 run execute at @e[name=slot2,type=armor_stand] run particle minecraft:angry_villager ~ ~1 ~ 0.9 0.9 0.9 0.5 15
execute if score abilitynumber abilities matches 34 run tellraw @a[tag=game1] ["",{"selector":"@p[tag=p2]"}," used IT'S ALIVE! to damage Slot 2!"]
execute if score abilitynumber abilities matches 34 run function ch:abilitygivetargetsp2

execute if score abilitynumber abilities matches -34 run execute if score ward slot2 matches 0 run scoreboard players operation slot2 stun = frankDuration abilityStats
execute if score abilitynumber abilities matches -34 run execute if score ward slot2 matches 1.. run function ch:wardslot2
execute if score abilitynumber abilities matches -34 run execute at @e[name=slot2,type=armor_stand] run particle minecraft:flash{color:[1.000,1.000,1.000,1.00]} ~ ~1 ~ 0.9 0.9 0.9 0.5 100
execute if score abilitynumber abilities matches -34 run tellraw @a[tag=game1] ["",{"selector":"@p[tag=p1]"}," used IT'S ALIVE! to stun Slot 2!"]

#Stein
execute if score abilitynumber abilities matches 35 run scoreboard players operation abilityDmg saves = stein abilityStats
execute if score abilitynumber abilities matches 35 if score slot5isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot2 atkmodifiers
execute if score abilitynumber abilities matches 35 if score slot6isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot2 atkmodifiers
execute if score abilitynumber abilities matches 35 if score slot7isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot3 atkmodifiers
execute if score abilitynumber abilities matches 35 run scoreboard players operation abilityDmg saves += marks slot2
execute if score abilitynumber abilities matches 35 run scoreboard players operation abilityDmg saves /= atkmultiplier slot2
execute if score abilitynumber abilities matches 35 run execute if score ward slot2 matches 0 run scoreboard players operation shield slot2 -= abilityDmg saves
execute if score abilitynumber abilities matches 35 run execute if score ward slot2 matches 0 if score shield slot2 matches ..0 run scoreboard players operation slot2 hp += shield slot2
execute if score abilitynumber abilities matches 35 run execute if score ward slot2 matches 1.. run function ch:wardslot2
execute if score abilitynumber abilities matches 35 run execute at @e[name=slot2,type=armor_stand] run particle raid_omen ~ ~1 ~ 0.9 0.9 0.9 2 100
execute if score abilitynumber abilities matches 35 run tellraw @a[tag=game1] ["",{"selector":"@p[tag=p1]"}," used Reanimation Beam to damage Slot 2!"]
execute if score abilitynumber abilities matches 35 run function ch:abilitygivetargetsp2reverse

execute if score abilitynumber abilities matches -35 if score slot2bleeding booleaneffects matches 0 run scoreboard players operation slot2 hp += abilityDmg saves
execute if score abilitynumber abilities matches -35 if score character# slot2 matches 35 run function ch:cleanseslot2
execute if score abilitynumber abilities matches -35 run execute at @e[name=slot2,type=armor_stand] run particle trial_omen ~ ~1 ~ 0.9 0.9 0.9 2 100
execute if score abilitynumber abilities matches -35 run tellraw @a[tag=game1] ["",{"selector":"@p[tag=p2]"}," used Reanimation Beam to heal Slot 2!"]

#Boogaloo
execute if score abilitynumber abilities matches 37 if score curseDuration slot2 matches 1.. unless score curse slot2 matches 5 run scoreboard players set curseDuration slot2 0
execute if score abilitynumber abilities matches 37 if score curseStacks slot2 matches 1.. unless score curse slot2 matches 5 run scoreboard players set curseStacks slot2 0
execute if score abilitynumber abilities matches 37 unless score curse slot2 matches 5 run scoreboard players set curse slot2 1
execute if score abilitynumber abilities matches 37 run execute at @e[name=slot2,type=armor_stand] run particle minecraft:sculk_soul ~ ~1 ~ 0.9 0.9 0.9 0.15 30
execute if score abilitynumber abilities matches 37 run tellraw @a[tag=game1] ["",{"selector":"@p[tag=p1]"}," used Devour Soul on Slot 2!"]

#Dolly
execute if score abilitynumber abilities matches 42 if score ward slot2 matches 0 unless score curse slot2 matches 5 run scoreboard players set curseDuration slot2 3
execute if score abilitynumber abilities matches 42 if score ward slot2 matches 0 unless score curse slot2 matches 5 if score curseStacks slot2 matches 1.. run scoreboard players set curseStacks slot2 0
execute if score abilitynumber abilities matches 42 if score ward slot2 matches 0 unless score curse slot2 matches 5 run scoreboard players set curse slot2 4
execute if score abilitynumber abilities matches 42 if score ward slot2 matches 1.. run function ch:wardslot2
execute if score abilitynumber abilities matches 42 run execute at @e[name=slot2,type=armor_stand] run particle effect{color:[0.725,0.180,1.000]} ~ ~1 ~ 0.9 0.9 0.9 0.05 100
execute if score abilitynumber abilities matches 42 run tellraw @a[tag=game1] ["",{"selector":"@p[tag=p1]"}," used Life Link on Slot 2!"]
execute if score abilitynumber abilities matches 42 run function ch:abilitygivetargetsp1

execute if score abilitynumber abilities matches -42 if score ward slot2 matches 0 unless score curse slot2 matches 5 run scoreboard players set curseDuration slot2 3
execute if score abilitynumber abilities matches -42 if score ward slot2 matches 0 unless score curse slot2 matches 5 if score curseStacks slot2 matches 1.. run scoreboard players set curseStacks slot2 0
execute if score abilitynumber abilities matches -42 if score ward slot2 matches 0 unless score curse slot2 matches 5 run scoreboard players set curse slot2 4

execute if score abilitynumber abilities matches -42 if score ward slot2 matches 1.. run function ch:wardslot2
execute if score abilitynumber abilities matches -42 run execute at @e[name=slot2,type=armor_stand] run particle effect{color:[0.725,0.180,1.000]} ~ ~1 ~ 0.9 0.9 0.9 0.05 100
execute if score abilitynumber abilities matches -42 run tellraw @a[tag=game1] ["",{"selector":"@p[tag=p1]"}," used Life Link on Slot 2!"]

#Barley
execute if score abilitynumber abilities matches -36 if score barleyPart1 abilities matches 5 if score ward slot3 matches ..0 run scoreboard players operation durationSlot5-1 fear = barleyDuration abilityStats 
execute if score abilitynumber abilities matches -36 if score barleyPart1 abilities matches 6 if score ward slot3 matches ..0 run scoreboard players operation durationSlot6-1 fear = barleyDuration abilityStats 
execute if score abilitynumber abilities matches -36 if score barleyPart1 abilities matches 7 if score ward slot3 matches ..0 run scoreboard players operation durationSlot7-1 fear = barleyDuration abilityStats 
execute if score abilitynumber abilities matches -36 if score barleyPart1 abilities matches 8 if score ward slot3 matches ..0 run scoreboard players operation durationSlot8-1 fear = barleyDuration abilityStats 
execute if score abilitynumber abilities matches -36 if score ward slot3 matches ..0 if score debuffDurationSlot3 atkmodifiers < barleyDuration abilityStats run scoreboard players operation debuffDurationSlot3 atkmodifiers = barleyDuration abilityStats
execute if score abilitynumber abilities matches -36 if score ward slot3 matches ..0 run scoreboard players operation debuffDurationSlot3 atkmodifiers += barley abilityStats
execute if score abilitynumber abilities matches -36 if score ward slot3 matches 1.. run function ch:wardslot3
execute if score abilitynumber abilities matches -36 run execute at @n[type=armor_stand,name=slot3] run particle trial_omen ~ ~1 ~ 0.9 0.9 0.9 0.1 400
execute if score abilitynumber abilities matches -36 run tellraw @a[tag=game1] ["",{"selector":"@p[tag=p2]"}," used Spookcrow to fear Slot 3!"]

execute if score abilitynumber abilities matches 36 run scoreboard players set barleyPart1 abilities 1
execute if score abilitynumber abilities matches 36 if score buffDurationSlot3 atkmodifiers < barleyDuration abilityStats run scoreboard players operation buffDurationSlot3 atkmodifiers = barleyDuration abilityStats
execute if score abilitynumber abilities matches 36 run scoreboard players operation attackBuffSlot3 atkmodifiers += barley abilityStats
execute if score abilitynumber abilities matches 36 run function ch:abilitygivetargetsp1
execute if score abilitynumber abilities matches 36 run execute at @n[type=armor_stand,name=slot3] run particle raid_omen ~ ~1 ~ 0.9 0.9 0.9 0.1 400
execute if score abilitynumber abilities matches 36 run tellraw @a[tag=game1] ["",{"selector":"@p[tag=p1]"}," used Spookcrow to make Slot 3 scary!"]

#Igor
execute if score abilitynumber abilities matches 38 run scoreboard players operation cooldown slot3 -= igor abilityStats
execute if score abilitynumber abilities matches 38 run execute at @e[type=armor_stand,name=slot3] run particle witch ~ ~1 ~ 0.5 0.8 0.5 0.1 100
execute if score abilitynumber abilities matches 38 run execute if score durationSlot3 speedBuffs > igorDuration abilityStats run scoreboard players operation durationSlot3 speedBuffs = igorDuration abilityStats
execute if score abilitynumber abilities matches 38 run scoreboard players operation speedBuffSlot3 speedBuffs += igorSpBuff abilityStats
execute if score abilitynumber abilities matches 38 if score slot2isatk booleans matches 1 run execute if score invincibleSlot3 booleaneffects > igorDuration abilityStats run scoreboard players operation invincibleSlot3 booleaneffects = igorDuration abilityStats

#Zeebo
execute if score abilitynumber abilities matches 40 if score ward slot3 matches ..0 unless score curse slot3 matches 5 unless score curse slot3 matches 2 run scoreboard players set curseStacks slot3 0
execute if score abilitynumber abilities matches 40 if score ward slot3 matches ..0 unless score curse slot3 matches 5 unless score curse slot3 matches 2 run scoreboard players set curseDuration slot3 0
execute if score abilitynumber abilities matches 40 if score ward slot3 matches ..0 unless score curse slot3 matches 5 run scoreboard players set curse slot3 2
execute if score abilitynumber abilities matches 40 if score ward slot3 matches ..0 unless score curse slot3 matches 5 if score curse slot3 matches 2 run scoreboard players add curseStacks slot3 1
execute if score abilitynumber abilities matches 40 if score ward slot3 matches ..0 run execute if score durationSlot3 burn > zeeboDuration abilityStats run scoreboard players operation durationSlot3 burn = zeeboDuration abilityStats
execute if score abilitynumber abilities matches 40 if score ward slot3 matches ..0 run scoreboard players operation slot3Burn burn += zeebo abilityStats
execute if score abilitynumber abilities matches 40 run execute at @e[type=armor_stand,name=slot3] run summon firework_rocket ~ ~2 ~ {LifeTime:1,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"burst",has_twinkle:true,has_trail:true,colors:[I;13894251,16746496,16770560],fade_colors:[I;10224278]}]}}}}
execute if score abilitynumber abilities matches 40 run execute at @e[type=armor_stand,name=slot3] run summon firework_rocket ~ ~2 ~ {LifeTime:1,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"burst",has_twinkle:true,has_trail:true,colors:[I;13894251,16746496,16770560],fade_colors:[I;10224278]}]}}}}
execute if score abilitynumber abilities matches 40 if score ward slot3 matches 1.. run function ch:wardslot3

#Fenrir
execute if score abilitynumber abilities matches 41 if score ward slot3 matches ..0 unless score curse slot3 matches 5 unless score curse slot3 matches 3 run scoreboard players set curseStacks slot3 0
execute if score abilitynumber abilities matches 41 if score ward slot3 matches ..0 unless score curse slot3 matches 5 unless score curse slot3 matches 3 run scoreboard players set curseDuration slot3 0
execute if score abilitynumber abilities matches 41 if score ward slot3 matches ..0 unless score curse slot3 matches 5 run scoreboard players set curse slot3 3
execute if score abilitynumber abilities matches 41 run scoreboard players operation abilityDmg saves = fenrir abilityStats
execute if score abilitynumber abilities matches 41 if score slot5isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot5 atkmodifiers
execute if score abilitynumber abilities matches 41 if score slot6isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot6 atkmodifiers
execute if score abilitynumber abilities matches 41 if score slot7isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot7 atkmodifiers
execute if score abilitynumber abilities matches 41 run scoreboard players operation abilityDmg saves += marks slot3
execute if score abilitynumber abilities matches 41 run scoreboard players operation abilityDmg saves /= atkmultiplier slot3
execute if score abilitynumber abilities matches 41 run execute if score ward slot3 matches ..0 run scoreboard players operation shield slot3 -= abilityDmg saves
execute if score abilitynumber abilities matches 41 run execute at @n[type=armor_stand,name=slot3] run particle enchanted_hit ~ ~1 ~ 0.9 0.9 0.9 0.1 400

execute if score abilitynumber abilities matches 41 if score ward slot3 matches 1.. run function ch:wardslot3

#Grendel
execute if score abilitynumber abilities matches 43 run scoreboard players operation abilityDmg saves = grendel abilityStats
execute if score abilitynumber abilities matches 43 if score slot5isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot5 atkmodifiers
execute if score abilitynumber abilities matches 43 if score slot6isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot6 atkmodifiers
execute if score abilitynumber abilities matches 43 if score slot7isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot7 atkmodifiers
execute if score abilitynumber abilities matches 43 run scoreboard players operation abilityDmg saves += marks slot3
execute if score abilitynumber abilities matches 43 run scoreboard players operation abilityDmg saves /= atkmultiplier slot3
execute if score abilitynumber abilities matches 43 run execute if score ward slot3 matches ..0 run scoreboard players operation shield slot3 -= abilityDmg saves
execute if score abilitynumber abilities matches 43 run execute if score ward slot3 matches ..0 run scoreboard players operation slot3Disease disease += grendelDisease abilityStats
execute if score abilitynumber abilities matches 43 run execute at @e[type=armor_stand,name=slot3] run particle minecraft:noxious_gas ~ ~1 ~ 0.7 0.7 0.7 0.05 200
execute if score abilitynumber abilities matches 43 if score ward slot3 matches 1.. run function ch:wardslot3
execute if score abilitynumber abilities matches 43 run function ch:abilitygivetargetsp2
execute if score abilitynumber abilities matches -43 run scoreboard players operation abilityDmg saves = grendel abilityStats
execute if score abilitynumber abilities matches -43 if score slot5isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot5 atkmodifiers
execute if score abilitynumber abilities matches -43 if score slot6isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot6 atkmodifiers
execute if score abilitynumber abilities matches -43 if score slot7isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot7 atkmodifiers
execute if score abilitynumber abilities matches -43 run scoreboard players operation abilityDmg saves += marks slot3
execute if score abilitynumber abilities matches -43 run scoreboard players operation abilityDmg saves /= atkmultiplier slot3
execute if score abilitynumber abilities matches -43 run execute if score ward slot3 matches ..0 run scoreboard players operation shield slot3 -= abilityDmg saves
execute if score abilitynumber abilities matches -43 run execute if score ward slot3 matches ..0 run scoreboard players operation slot3Disease disease += grendelDisease abilityStats
execute if score abilitynumber abilities matches -43 run execute at @e[type=armor_stand,name=slot3] run particle minecraft:noxious_gas ~ ~1 ~ 0.7 0.7 0.7 0.05 200
execute if score abilitynumber abilities matches -43 if score ward slot3 matches 1.. run function ch:wardslot3

#Frank
execute if score abilitynumber abilities matches 34 run scoreboard players operation abilityDmg saves = frank abilityStats
execute if score abilitynumber abilities matches 34 run scoreboard players operation shield slot3 -= abilityDmg saves
execute if score abilitynumber abilities matches 34 run scoreboard players operation slot3 hp += shield slot3
execute if score abilitynumber abilities matches 34 run execute at @e[name=slot3,type=armor_stand] run particle minecraft:angry_villager ~ ~1 ~ 0.9 0.9 0.9 0.5 15
execute if score abilitynumber abilities matches 34 run tellraw @a[tag=game1] ["",{"selector":"@p[tag=p2]"}," used IT'S ALIVE! to damage Slot 3!"]
execute if score abilitynumber abilities matches 34 run function ch:abilitygivetargetsp2

execute if score abilitynumber abilities matches -34 run execute if score ward slot3 matches 0 run scoreboard players operation slot3 stun = frankDuration abilityStats
execute if score abilitynumber abilities matches -34 run execute if score ward slot3 matches 1.. run function ch:wardslot3
execute if score abilitynumber abilities matches -34 run execute at @e[name=slot3,type=armor_stand] run particle minecraft:flash{color:[1.000,1.000,1.000,1.00]} ~ ~1 ~ 0.9 0.9 0.9 0.5 100
execute if score abilitynumber abilities matches -34 run tellraw @a[tag=game1] ["",{"selector":"@p[tag=p1]"}," used IT'S ALIVE! to stun Slot 3!"]

#Stein
execute if score abilitynumber abilities matches 35 run scoreboard players operation abilityDmg saves = stein abilityStats
execute if score abilitynumber abilities matches 35 if score slot5isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot3 atkmodifiers
execute if score abilitynumber abilities matches 35 if score slot6isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot2 atkmodifiers
execute if score abilitynumber abilities matches 35 if score slot7isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot3 atkmodifiers
execute if score abilitynumber abilities matches 35 run scoreboard players operation abilityDmg saves += marks slot3
execute if score abilitynumber abilities matches 35 run scoreboard players operation abilityDmg saves /= atkmultiplier slot3
execute if score abilitynumber abilities matches 35 run execute if score ward slot3 matches 0 run scoreboard players operation shield slot3 -= abilityDmg saves
execute if score abilitynumber abilities matches 35 run execute if score ward slot3 matches 0 if score shield slot3 matches ..0 run scoreboard players operation slot3 hp += shield slot3
execute if score abilitynumber abilities matches 35 run execute if score ward slot3 matches 1.. run function ch:wardslot3
execute if score abilitynumber abilities matches 35 run execute at @e[name=slot3,type=armor_stand] run particle raid_omen ~ ~1 ~ 0.9 0.9 0.9 2 100
execute if score abilitynumber abilities matches 35 run tellraw @a[tag=game1] ["",{"selector":"@p[tag=p1]"}," used Reanimation Beam to damage Slot 3!"]
execute if score abilitynumber abilities matches 35 run function ch:abilitygivetargetsp2reverse

execute if score abilitynumber abilities matches -35 if score slot3bleeding booleaneffects matches 0 run scoreboard players operation slot3 hp += abilityDmg saves
execute if score abilitynumber abilities matches -35 if score character# slot2 matches 35 run function ch:cleanseslot3
execute if score abilitynumber abilities matches -35 run execute at @e[name=slot3,type=armor_stand] run particle trial_omen ~ ~1 ~ 0.9 0.9 0.9 2 100
execute if score abilitynumber abilities matches -35 run tellraw @a[tag=game1] ["",{"selector":"@p[tag=p2]"}," used Reanimation Beam to heal Slot 3!"]

#Boogaloo
execute if score abilitynumber abilities matches 37 if score curseDuration slot3 matches 1.. unless score curse slot3 matches 5 run scoreboard players set curseDuration slot3 0
execute if score abilitynumber abilities matches 37 if score curseStacks slot3 matches 1.. unless score curse slot3 matches 5 run scoreboard players set curseStacks slot3 0
execute if score abilitynumber abilities matches 37 unless score curse slot3 matches 5 run scoreboard players set curse slot3 1
execute if score abilitynumber abilities matches 37 run execute at @e[name=slot3,type=armor_stand] run particle minecraft:sculk_soul ~ ~1 ~ 0.9 0.9 0.9 0.15 30
execute if score abilitynumber abilities matches 37 run tellraw @a[tag=game1] ["",{"selector":"@p[tag=p1]"}," used Devour Soul on Slot 3!"]

#Dolly
execute if score abilitynumber abilities matches 42 if score ward slot3 matches 0 unless score curse slot3 matches 5 run scoreboard players set curseDuration slot3 3
execute if score abilitynumber abilities matches 42 if score ward slot3 matches 0 unless score curse slot3 matches 5 if score curseStacks slot3 matches 1.. run scoreboard players set curseStacks slot3 0
execute if score abilitynumber abilities matches 42 if score ward slot3 matches 0 unless score curse slot3 matches 5 run scoreboard players set curse slot3 4
execute if score abilitynumber abilities matches 42 if score ward slot3 matches 1.. run function ch:wardslot3
execute if score abilitynumber abilities matches 42 run execute at @e[name=slot3,type=armor_stand] run particle effect{color:[0.725,0.180,1.000]} ~ ~1 ~ 0.9 0.9 0.9 0.05 100
execute if score abilitynumber abilities matches 42 run tellraw @a[tag=game1] ["",{"selector":"@p[tag=p1]"}," used Life Link on Slot 3!"]
execute if score abilitynumber abilities matches 42 run function ch:abilitygivetargetsp1

execute if score abilitynumber abilities matches -42 if score ward slot3 matches 0 unless score curse slot3 matches 5 run scoreboard players set curseDuration slot3 3
execute if score abilitynumber abilities matches -42 if score ward slot3 matches 0 unless score curse slot3 matches 5 if score curseStacks slot3 matches 1.. run scoreboard players set curseStacks slot3 0
execute if score abilitynumber abilities matches -42 if score ward slot3 matches 0 unless score curse slot3 matches 5 run scoreboard players set curse slot3 4

execute if score abilitynumber abilities matches -42 if score ward slot3 matches 1.. run function ch:wardslot3
execute if score abilitynumber abilities matches -42 run execute at @e[name=slot3,type=armor_stand] run particle effect{color:[0.725,0.180,1.000]} ~ ~1 ~ 0.9 0.9 0.9 0.05 100
execute if score abilitynumber abilities matches -42 run tellraw @a[tag=game1] ["",{"selector":"@p[tag=p1]"}," used Life Link on Slot 3!"]

#Barley
execute if score abilitynumber abilities matches -36 if score barleyPart1 abilities matches 5 if score ward slot4 matches ..0 run scoreboard players operation durationSlot5-1 fear = barleyDuration abilityStats 
execute if score abilitynumber abilities matches -36 if score barleyPart1 abilities matches 6 if score ward slot4 matches ..0 run scoreboard players operation durationSlot6-1 fear = barleyDuration abilityStats 
execute if score abilitynumber abilities matches -36 if score barleyPart1 abilities matches 7 if score ward slot4 matches ..0 run scoreboard players operation durationSlot7-1 fear = barleyDuration abilityStats 
execute if score abilitynumber abilities matches -36 if score barleyPart1 abilities matches 8 if score ward slot4 matches ..0 run scoreboard players operation durationSlot8-1 fear = barleyDuration abilityStats 
execute if score abilitynumber abilities matches -36 if score ward slot4 matches ..0 if score debuffDurationSlot4 atkmodifiers < barleyDuration abilityStats run scoreboard players operation debuffDurationSlot4 atkmodifiers = barleyDuration abilityStats
execute if score abilitynumber abilities matches -36 if score ward slot4 matches ..0 run scoreboard players operation debuffDurationSlot4 atkmodifiers += barley abilityStats
execute if score abilitynumber abilities matches -36 if score ward slot4 matches 1.. run function ch:wardslot4
execute if score abilitynumber abilities matches -36 run execute at @n[type=armor_stand,name=slot4] run particle trial_omen ~ ~1 ~ 0.9 0.9 0.9 0.1 400
execute if score abilitynumber abilities matches -36 run tellraw @a[tag=game1] ["",{"selector":"@p[tag=p2]"}," used Spookcrow to fear Slot 4!"]

execute if score abilitynumber abilities matches 36 run scoreboard players set barleyPart1 abilities 1
execute if score abilitynumber abilities matches 36 if score buffDurationSlot4 atkmodifiers < barleyDuration abilityStats run scoreboard players operation buffDurationSlot4 atkmodifiers = barleyDuration abilityStats
execute if score abilitynumber abilities matches 36 run scoreboard players operation attackBuffSlot4 atkmodifiers += barley abilityStats
execute if score abilitynumber abilities matches 36 run function ch:abilitygivetargetsp1
execute if score abilitynumber abilities matches 36 run execute at @n[type=armor_stand,name=slot4] run particle raid_omen ~ ~1 ~ 0.9 0.9 0.9 0.1 400
execute if score abilitynumber abilities matches 36 run tellraw @a[tag=game1] ["",{"selector":"@p[tag=p1]"}," used Spookcrow to make Slot 4 scary!"]

#Igor
execute if score abilitynumber abilities matches 38 run scoreboard players operation cooldown slot4 -= igor abilityStats
execute if score abilitynumber abilities matches 38 run execute at @e[type=armor_stand,name=slot4] run particle witch ~ ~1 ~ 0.5 0.8 0.5 0.1 100
execute if score abilitynumber abilities matches 38 run execute if score durationSlot4 speedBuffs > igorDuration abilityStats run scoreboard players operation durationSlot4 speedBuffs = igorDuration abilityStats
execute if score abilitynumber abilities matches 38 run scoreboard players operation speedBuffSlot4 speedBuffs += igorSpBuff abilityStats
execute if score abilitynumber abilities matches 38 if score slot2isatk booleans matches 1 run execute if score invincibleSlot4 booleaneffects > igorDuration abilityStats run scoreboard players operation invincibleSlot4 booleaneffects = igorDuration abilityStats

#Zeebo
execute if score abilitynumber abilities matches 40 if score ward slot4 matches ..0 unless score curse slot4 matches 5 unless score curse slot4 matches 2 run scoreboard players set curseStacks slot4 0
execute if score abilitynumber abilities matches 40 if score ward slot4 matches ..0 unless score curse slot4 matches 5 unless score curse slot4 matches 2 run scoreboard players set curseDuration slot4 0
execute if score abilitynumber abilities matches 40 if score ward slot4 matches ..0 unless score curse slot4 matches 5 run scoreboard players set curse slot4 2
execute if score abilitynumber abilities matches 40 if score ward slot4 matches ..0 unless score curse slot4 matches 5 if score curse slot4 matches 2 run scoreboard players add curseStacks slot4 1
execute if score abilitynumber abilities matches 40 if score ward slot4 matches ..0 run execute if score durationSlot4 burn > zeeboDuration abilityStats run scoreboard players operation durationSlot4 burn = zeeboDuration abilityStats
execute if score abilitynumber abilities matches 40 if score ward slot4 matches ..0 run scoreboard players operation slot4Burn burn += zeebo abilityStats
execute if score abilitynumber abilities matches 40 run execute at @e[type=armor_stand,name=slot4] run summon firework_rocket ~ ~2 ~ {LifeTime:1,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"burst",has_twinkle:true,has_trail:true,colors:[I;13894251,16746496,16770560],fade_colors:[I;10224278]}]}}}}
execute if score abilitynumber abilities matches 40 run execute at @e[type=armor_stand,name=slot4] run summon firework_rocket ~ ~2 ~ {LifeTime:1,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"burst",has_twinkle:true,has_trail:true,colors:[I;13894251,16746496,16770560],fade_colors:[I;10224278]}]}}}}
execute if score abilitynumber abilities matches 40 if score ward slot4 matches 1.. run function ch:wardslot4

#Fenrir
execute if score abilitynumber abilities matches 41 if score ward slot4 matches ..0 unless score curse slot4 matches 5 unless score curse slot4 matches 3 run scoreboard players set curseStacks slot4 0
execute if score abilitynumber abilities matches 41 if score ward slot4 matches ..0 unless score curse slot4 matches 5 unless score curse slot4 matches 3 run scoreboard players set curseDuration slot4 0
execute if score abilitynumber abilities matches 41 if score ward slot4 matches ..0 unless score curse slot4 matches 5 run scoreboard players set curse slot4 3
execute if score abilitynumber abilities matches 41 run scoreboard players operation abilityDmg saves = fenrir abilityStats
execute if score abilitynumber abilities matches 41 if score slot5isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot5 atkmodifiers
execute if score abilitynumber abilities matches 41 if score slot6isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot6 atkmodifiers
execute if score abilitynumber abilities matches 41 if score slot7isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot7 atkmodifiers
execute if score abilitynumber abilities matches 41 run scoreboard players operation abilityDmg saves += marks slot4
execute if score abilitynumber abilities matches 41 run scoreboard players operation abilityDmg saves /= atkmultiplier slot4
execute if score abilitynumber abilities matches 41 run execute if score ward slot4 matches ..0 run scoreboard players operation shield slot4 -= abilityDmg saves
execute if score abilitynumber abilities matches 41 run execute at @n[type=armor_stand,name=slot4] run particle enchanted_hit ~ ~1 ~ 0.9 0.9 0.9 0.1 400

execute if score abilitynumber abilities matches 41 if score ward slot4 matches 1.. run function ch:wardslot4

#Grendel
execute if score abilitynumber abilities matches 43 run scoreboard players operation abilityDmg saves = grendel abilityStats
execute if score abilitynumber abilities matches 43 if score slot5isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot5 atkmodifiers
execute if score abilitynumber abilities matches 43 if score slot6isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot6 atkmodifiers
execute if score abilitynumber abilities matches 43 if score slot7isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot7 atkmodifiers
execute if score abilitynumber abilities matches 43 run scoreboard players operation abilityDmg saves += marks slot4
execute if score abilitynumber abilities matches 43 run scoreboard players operation abilityDmg saves /= atkmultiplier slot4
execute if score abilitynumber abilities matches 43 run execute if score ward slot4 matches ..0 run scoreboard players operation shield slot4 -= abilityDmg saves
execute if score abilitynumber abilities matches 43 run execute if score ward slot4 matches ..0 run scoreboard players operation slot4Disease disease += grendelDisease abilityStats
execute if score abilitynumber abilities matches 43 run execute at @e[type=armor_stand,name=slot4] run particle minecraft:noxious_gas ~ ~1 ~ 0.7 0.7 0.7 0.05 200
execute if score abilitynumber abilities matches 43 if score ward slot4 matches 1.. run function ch:wardslot4
execute if score abilitynumber abilities matches 43 run function ch:abilitygivetargetsp2
execute if score abilitynumber abilities matches -43 run scoreboard players operation abilityDmg saves = grendel abilityStats
execute if score abilitynumber abilities matches -43 if score slot5isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot5 atkmodifiers
execute if score abilitynumber abilities matches -43 if score slot6isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot6 atkmodifiers
execute if score abilitynumber abilities matches -43 if score slot7isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot7 atkmodifiers
execute if score abilitynumber abilities matches -43 run scoreboard players operation abilityDmg saves += marks slot4
execute if score abilitynumber abilities matches -43 run scoreboard players operation abilityDmg saves /= atkmultiplier slot4
execute if score abilitynumber abilities matches -43 run execute if score ward slot4 matches ..0 run scoreboard players operation shield slot4 -= abilityDmg saves
execute if score abilitynumber abilities matches -43 run execute if score ward slot4 matches ..0 run scoreboard players operation slot4Disease disease += grendelDisease abilityStats
execute if score abilitynumber abilities matches -43 run execute at @e[type=armor_stand,name=slot4] run particle minecraft:noxious_gas ~ ~1 ~ 0.7 0.7 0.7 0.05 200
execute if score abilitynumber abilities matches -43 if score ward slot4 matches 1.. run function ch:wardslot4

#Frank
execute if score abilitynumber abilities matches 34 run scoreboard players operation abilityDmg saves = frank abilityStats
execute if score abilitynumber abilities matches 34 run scoreboard players operation shield slot4 -= abilityDmg saves
execute if score abilitynumber abilities matches 34 run scoreboard players operation slot4 hp += shield slot4
execute if score abilitynumber abilities matches 34 run execute at @e[name=slot4,type=armor_stand] run particle minecraft:angry_villager ~ ~1 ~ 0.9 0.9 0.9 0.5 15
execute if score abilitynumber abilities matches 34 run tellraw @a[tag=game1] ["",{"selector":"@p[tag=p2]"}," used IT'S ALIVE! to damage Slot 4!"]
execute if score abilitynumber abilities matches 34 run function ch:abilitygivetargetsp2

execute if score abilitynumber abilities matches -34 run execute if score ward slot4 matches 0 run scoreboard players operation slot4 stun = frankDuration abilityStats
execute if score abilitynumber abilities matches -34 run execute if score ward slot4 matches 1.. run function ch:wardslot4
execute if score abilitynumber abilities matches -34 run execute at @e[name=slot4,type=armor_stand] run particle minecraft:flash{color:[1.000,1.000,1.000,1.00]} ~ ~1 ~ 0.9 0.9 0.9 0.5 100
execute if score abilitynumber abilities matches -34 run tellraw @a[tag=game1] ["",{"selector":"@p[tag=p1]"}," used IT'S ALIVE! to stun Slot 4!"]

#Stein
execute if score abilitynumber abilities matches 35 run scoreboard players operation abilityDmg saves = stein abilityStats
execute if score abilitynumber abilities matches 35 if score slot5isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot4 atkmodifiers
execute if score abilitynumber abilities matches 35 if score slot6isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot2 atkmodifiers
execute if score abilitynumber abilities matches 35 if score slot7isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot3 atkmodifiers
execute if score abilitynumber abilities matches 35 run scoreboard players operation abilityDmg saves += marks slot4
execute if score abilitynumber abilities matches 35 run scoreboard players operation abilityDmg saves /= atkmultiplier slot4
execute if score abilitynumber abilities matches 35 run execute if score ward slot4 matches 0 run scoreboard players operation shield slot4 -= abilityDmg saves
execute if score abilitynumber abilities matches 35 run execute if score ward slot4 matches 0 if score shield slot4 matches ..0 run scoreboard players operation slot4 hp += shield slot4
execute if score abilitynumber abilities matches 35 run execute if score ward slot4 matches 1.. run function ch:wardslot4
execute if score abilitynumber abilities matches 35 run execute at @e[name=slot4,type=armor_stand] run particle raid_omen ~ ~1 ~ 0.9 0.9 0.9 2 100
execute if score abilitynumber abilities matches 35 run tellraw @a[tag=game1] ["",{"selector":"@p[tag=p1]"}," used Reanimation Beam to damage Slot 4!"]
execute if score abilitynumber abilities matches 35 run function ch:abilitygivetargetsp2reverse

execute if score abilitynumber abilities matches -35 if score slot4bleeding booleaneffects matches 0 run scoreboard players operation slot4 hp += abilityDmg saves
execute if score abilitynumber abilities matches -35 if score character# slot2 matches 35 run function ch:cleanseslot4
execute if score abilitynumber abilities matches -35 run execute at @e[name=slot4,type=armor_stand] run particle trial_omen ~ ~1 ~ 0.9 0.9 0.9 2 100
execute if score abilitynumber abilities matches -35 run tellraw @a[tag=game1] ["",{"selector":"@p[tag=p2]"}," used Reanimation Beam to heal Slot 4!"]

#Boogaloo
execute if score abilitynumber abilities matches 37 if score curseDuration slot4 matches 1.. unless score curse slot4 matches 5 run scoreboard players set curseDuration slot4 0
execute if score abilitynumber abilities matches 37 if score curseStacks slot4 matches 1.. unless score curse slot4 matches 5 run scoreboard players set curseStacks slot4 0
execute if score abilitynumber abilities matches 37 unless score curse slot4 matches 5 run scoreboard players set curse slot4 1
execute if score abilitynumber abilities matches 37 run execute at @e[name=slot4,type=armor_stand] run particle minecraft:sculk_soul ~ ~1 ~ 0.9 0.9 0.9 0.15 30
execute if score abilitynumber abilities matches 37 run tellraw @a[tag=game1] ["",{"selector":"@p[tag=p1]"}," used Devour Soul on Slot 4!"]

#Dolly
execute if score abilitynumber abilities matches 42 if score ward slot4 matches 0 unless score curse slot4 matches 5 run scoreboard players set curseDuration slot4 3
execute if score abilitynumber abilities matches 42 if score ward slot4 matches 0 unless score curse slot4 matches 5 if score curseStacks slot4 matches 1.. run scoreboard players set curseStacks slot4 0
execute if score abilitynumber abilities matches 42 if score ward slot4 matches 0 unless score curse slot4 matches 5 run scoreboard players set curse slot4 4
execute if score abilitynumber abilities matches 42 if score ward slot4 matches 1.. run function ch:wardslot4
execute if score abilitynumber abilities matches 42 run execute at @e[name=slot4,type=armor_stand] run particle effect{color:[0.725,0.180,1.000]} ~ ~1 ~ 0.9 0.9 0.9 0.05 100
execute if score abilitynumber abilities matches 42 run tellraw @a[tag=game1] ["",{"selector":"@p[tag=p1]"}," used Life Link on Slot 4!"]
execute if score abilitynumber abilities matches 42 run function ch:abilitygivetargetsp1

execute if score abilitynumber abilities matches -42 if score ward slot4 matches 0 unless score curse slot4 matches 5 run scoreboard players set curseDuration slot4 3
execute if score abilitynumber abilities matches -42 if score ward slot4 matches 0 unless score curse slot4 matches 5 if score curseStacks slot4 matches 1.. run scoreboard players set curseStacks slot4 0
execute if score abilitynumber abilities matches -42 if score ward slot4 matches 0 unless score curse slot4 matches 5 run scoreboard players set curse slot4 4

execute if score abilitynumber abilities matches -42 if score ward slot4 matches 1.. run function ch:wardslot4
execute if score abilitynumber abilities matches -42 run execute at @e[name=slot4,type=armor_stand] run particle effect{color:[0.725,0.180,1.000]} ~ ~1 ~ 0.9 0.9 0.9 0.05 100
execute if score abilitynumber abilities matches -42 run tellraw @a[tag=game1] ["",{"selector":"@p[tag=p1]"}," used Life Link on Slot 4!"]