effect clear @a[tag=game3] strength
clear @p[tag=game3]
#Arthur Ability
execute if score abilitynumber3 abilities matches 2 run function chthree:cleanseslot20
#Deuce ability
execute if score abilitynumber3 abilities matches 3 run scoreboard players operation abilityDmg3 saves = deuce heroattack
execute if score abilitynumber3 abilities matches 3 if score slot21isatk booleans matches 1 run scoreboard players operation abilityDmg3 saves += slot21 atkmodifiers
execute if score abilitynumber3 abilities matches 3 if score slot22isatk booleans matches 1 run scoreboard players operation abilityDmg3 saves += slot22 atkmodifiers
execute if score abilitynumber3 abilities matches 3 if score slot23isatk booleans matches 1 run scoreboard players operation abilityDmg3 saves += slot23 atkmodifiers
execute if score abilitynumber3 abilities matches 3 run scoreboard players operation abilityDmg3 saves += marks slot20
execute if score abilitynumber3 abilities matches 3 if score slot22isatk booleans matches 1 run scoreboard players operation abilityDmg3 saves *= deuceMultLeader abilityStats
execute if score abilitynumber3 abilities matches 3 if score slot22isatk booleans matches 0 run scoreboard players operation abilityDmg3 saves *= deuceMult abilityStats
execute if score abilitynumber3 abilities matches 3 run scoreboard players operation abilityDmg3 saves /= atkmultiplier slot20
execute if score abilitynumber3 abilities matches 3 run execute if score ward slot20 matches 0 run scoreboard players operation shield slot20 -= abilityDmg3 saves
execute if score abilitynumber3 abilities matches 3 run execute if score ward slot20 matches 0 if score shield slot20 matches ..0 run scoreboard players operation slot20 hp += shield slot20
execute if score abilitynumber3 abilities matches 3 run execute if score ward slot20 matches 1.. run function chthree:wardslot20
execute if score abilitynumber3 abilities matches 3 run execute at @e[name=slot20,type=armor_stand] run particle crit ~ ~1 ~ 0.3 0.3 0.3 2 100

execute if score abilitynumber3 abilities matches 3 run tellraw @a[tag=game3] ["",{"selector":"@p[tag=p6]"}," used Double Punch on Slot 4!"]

#Garabaldi Ability
execute if score abilitynumber3 abilities matches 24 if score slot20 hp matches 1.. if score slot20bleeding booleaneffects matches 0 run scoreboard players operation slot20 hp += garabaldiHeal abilityStats
execute if score abilitynumber3 abilities matches 24 if score slot20 hp matches 1.. if score slot20bleeding booleaneffects matches 0 if score character# slot18 matches 24 run scoreboard players operation slot20 hp += garabaldiLeader abilityStats
execute if score abilitynumber3 abilities matches 24 if score slot20 hp matches 1.. run scoreboard players set ward slot20 2
execute if score abilitynumber3 abilities matches 24 run execute at @n[type=armor_stand,name=slot20] run particle minecraft:composter ~ ~1 ~ 0.9 0.9 0.9 0.5 100

execute if score abilitynumber3 abilities matches 24 run tellraw @a[tag=game3] ["",{"selector":"@p[tag=p5]"}," used Bubble Shield on Slot 4!"]

#Juniper Ability
execute if score abilitynumber3 abilities matches 27 run scoreboard players operation abilityDmg3 saves = juniper abilityStats
execute if score abilitynumber3 abilities matches 27 if score slot21isatk booleans matches 1 run scoreboard players operation abilityDmg3 saves += slot21 atkmodifiers
execute if score abilitynumber3 abilities matches 27 if score slot22isatk booleans matches 1 run scoreboard players operation abilityDmg3 saves += slot22 atkmodifiers
execute if score abilitynumber3 abilities matches 27 if score slot23isatk booleans matches 1 run scoreboard players operation abilityDmg3 saves += slot23 atkmodifiers
execute if score abilitynumber3 abilities matches 27 run scoreboard players operation abilityDmg3 saves += marks slot20
execute if score abilitynumber3 abilities matches 27 run scoreboard players operation abilityDmg3 saves /= atkmultiplier slot20
execute if score abilitynumber3 abilities matches 27 run execute if score ward slot20 matches 0 run scoreboard players operation shield slot20 -= abilityDmg3 saves
execute if score abilitynumber3 abilities matches 27 run execute if score ward slot20 matches 0 run scoreboard players operation slot20 stun = juniperStun abilityStats
execute if score abilitynumber3 abilities matches 27 run execute if score ward slot20 matches 0 if score shield slot20 matches ..0 run scoreboard players operation slot20 hp += shield slot20
execute if score abilitynumber3 abilities matches 27 run execute if score ward slot20 matches 1.. run function chthree:wardslot20
execute if score abilitynumber3 abilities matches 27 run execute at @e[name=slot20,type=armor_stand] run particle firefly ~ ~1 ~ 0.3 0.3 0.3 1 100

execute if score abilitynumber3 abilities matches 27 run tellraw @a[tag=game3] ["",{"selector":"@p[tag=p6]"}," used Pixie Dust on Slot 4!"]

#Juniper Basic
execute if score abilitynumber3 abilities matches -2 run execute if score slot20bleeding booleaneffects matches 0 run scoreboard players operation slot20 hp += juniper heroattack
execute if score abilitynumber3 abilities matches -2 run execute at @n[type=armor_stand,name=slot20] run particle minecraft:composter ~ ~1 ~ 0.9 0.9 0.9 0.5 100
execute if score abilitynumber3 abilities matches -2 run execute if score slot20bleeding booleaneffects matches 0 if score slot18isatk booleans matches 1 run scoreboard players operation slot20 hp += juniperLeader heroattack

#K.O.N.G ability
execute if score abilitynumber3 abilities matches 7 run scoreboard players operation abilityDmg3 saves = kong abilityStats
execute if score abilitynumber3 abilities matches 7 if score slot21isatk booleans matches 1 run scoreboard players operation abilityDmg3 saves += slot21 atkmodifiers
execute if score abilitynumber3 abilities matches 7 if score slot22isatk booleans matches 1 run scoreboard players operation abilityDmg3 saves += slot22 atkmodifiers
execute if score abilitynumber3 abilities matches 7 if score slot23isatk booleans matches 1 run scoreboard players operation abilityDmg3 saves += slot23 atkmodifiers
execute if score abilitynumber3 abilities matches 7 run scoreboard players operation abilityDmg3 saves += marks slot20
execute if score abilitynumber3 abilities matches 7 run scoreboard players operation abilityDmg3 saves /= atkmultiplier slot20
execute if score abilitynumber3 abilities matches 7 run execute if score ward slot20 matches 0 run scoreboard players operation shield slot20 -= abilityDmg3 saves
execute if score abilitynumber3 abilities matches 7 run execute if score ward slot20 matches 0 if score kongSpDebuffDuration abilityStats > durationSlot20 speedDebuffs run scoreboard players operation durationSlot20 speedDebuffs = kongSpDebuffDuration abilityStats
execute if score abilitynumber3 abilities matches 7 run execute if score ward slot20 matches 0 if score kongDmgDebuffDuration abilityStats > debuffDurationSlot20 atkmodifiers run scoreboard players operation debuffDurationSlot20 atkmodifiers = kongDmgDebuffDuration abilityStats
execute if score abilitynumber3 abilities matches 7 run execute if score ward slot20 matches 0 run scoreboard players operation speedDebuffSlot20 speedDebuffs += kongSpDebuff abilityStats
execute if score abilitynumber3 abilities matches 7 run execute if score ward slot20 matches 0 run scoreboard players operation attackDebuffSlot20 atkmodifiers += kongDmgDebuff abilityStats
execute if score abilitynumber3 abilities matches 7 run execute if score ward slot20 matches 0 run execute if score slot22isatk booleans matches 1 run scoreboard players operation attackDebuffSlot20 atkmodifiers += kongLeaderDmgDebuff abilityStats
execute if score abilitynumber3 abilities matches 7 run execute if score ward slot20 matches 0 run execute if score slot22isatk booleans matches 1 run scoreboard players operation speedDebuffSlot20 speedDebuffs += kongLeaderSpDebuff abilityStats
execute if score abilitynumber3 abilities matches 7 run execute if score ward slot20 matches 0 run execute if score slot22isatk booleans matches 1 run scoreboard players operation speed slot20 -= kongLeaderSpDebuff abilityStats
execute if score abilitynumber3 abilities matches 7 run execute if score ward slot20 matches 0 run scoreboard players operation speed slot20 -= kongSpDebuff abilityStats
execute if score abilitynumber3 abilities matches 7 run execute if score ward slot20 matches 0 if score shield slot20 matches ..0 run scoreboard players operation slot20 hp += shield slot20
execute if score abilitynumber3 abilities matches 7 run execute if score ward slot20 matches 1.. run function chthree:wardslot20
execute if score abilitynumber3 abilities matches 7 run execute at @n[type=armor_stand,name=slot20] run particle minecraft:explosion_emitter ~ ~1 ~
execute if score abilitynumber3 abilities matches 9 run execute at @n[type=armor_stand,name=slot20] run particle minecraft:angry_villager ~ ~1 ~ 0.9 0.9 0.9 1 50
execute if score abilitynumber3 abilities matches 7 run tellraw @a[tag=game3] ["",{"selector":"@p[tag=p6]"}," used B.A.N.A.N.A S.L.A.M.M.A! on Slot 4!"]

#Robyn Ability
execute if score abilitynumber3 abilities matches 9 if score ward slot20 matches 0 run scoreboard players operation marks slot20 += robyn abilityStats
execute if score abilitynumber3 abilities matches 9 if score ward slot20 matches 1 run function chthree:wardslot20
execute if score abilitynumber3 abilities matches 9 run tellraw @a[tag=game3] ["",{"selector":"@p[tag=p6]"}," used Most Wanted on Slot 4!"]
#Robo
execute if score abilitynumber3 abilities matches 5 if score durationSlot20 shield < roboDuration abilityStats run scoreboard players operation durationSlot20 shield = roboDuration abilityStats
execute if score abilitynumber3 abilities matches 5 run scoreboard players operation shield slot20 += robo abilityStats
execute if score abilitynumber3 abilities matches 5 if score slot20isatk booleans matches 1 run scoreboard players operation shield slot20 += roboLeader abilityStats
execute if score abilitynumber3 abilities matches 5 run execute at @n[name=slot20,type=armor_stand] run particle minecraft:wax_off ~ ~1 ~ 0.6 0.6 0.6 0.0001 400
execute if score abilitynumber3 abilities matches 5 run tellraw @a[tag=game3] ["",{"selector":"@p[tag=p5]"}," used Force Field on Slot 4!"]

#Kirin
execute if score abilitynumber3 abilities matches 8 if score buffDurationSlot20 atkmodifiers < kirinDuration abilityStats run scoreboard players operation buffDurationSlot20 atkmodifiers = kirinDuration abilityStats
execute if score abilitynumber3 abilities matches 8 run scoreboard players operation attackBuffSlot20 atkmodifiers += kirin abilityStats
execute if score abilitynumber3 abilities matches 8 if score slot20isatk booleans matches 1 if score slot20bleeding booleaneffects matches 0 run scoreboard players operation slot20 hp += kirinLeader abilityStats
execute if score abilitynumber3 abilities matches 8 run tellraw @a[tag=game3] ["",{"selector":"@p[tag=p5]"}," used Mythical Empowerment on Slot 4!"]
execute if score abilitynumber3 abilities matches 8 at @e[name=slot20] run particle minecraft:trial_spawner_detection ~ ~1 ~ 0.9 0.9 0.9 0.1 100

#Ace
execute if score abilitynumber3 abilities matches 12 if score ward slot20 matches 0 run scoreboard players operation cooldown slot20 = aceSetCooldown abilityStats
execute if score abilitynumber3 abilities matches 12 run tellraw @a[tag=game3] ["",{"selector":"@p[tag=p6]"}," used Ace of Spades on Slot 4!"]
execute if score abilitynumber3 abilities matches 12 if score ward slot20 matches 1.. run function chthree:wardslot20
execute if score abilitynumber3 abilities matches 12 at @e[name=slot20] run particle minecraft:enchanted_hit ~ ~1 ~ 0.9 0.9 0.9 0.5 100
execute if score abilitynumber3 abilities matches 12 run execute if score character# slot22 matches 12 run scoreboard players operation durationSlot20 speedDebuffs = aceLeaderDuration abilityStats
execute if score abilitynumber3 abilities matches 12 run execute if score character# slot22 matches 12 run scoreboard players operation speedDebuffSlot20 speedDebuffs = aceLeader abilityStats
execute if score abilitynumber3 abilities matches 12 run execute if score character# slot22 matches 12 run scoreboard players operation speed slot20 -= aceLeader abilityStats
#Gabriel
execute if score abilitynumber3 abilities matches 22 run scoreboard players operation abilityDmg3 saves = gabriel abilityStats
execute if score abilitynumber3 abilities matches 22 if score slot21isatk booleans matches 1 run scoreboard players operation abilityDmg3 saves += slot21 atkmodifiers
execute if score abilitynumber3 abilities matches 22 if score slot22isatk booleans matches 1 run scoreboard players operation abilityDmg3 saves += slot22 atkmodifiers
execute if score abilitynumber3 abilities matches 22 if score slot23isatk booleans matches 1 run scoreboard players operation abilityDmg3 saves += slot23 atkmodifiers
execute if score abilitynumber3 abilities matches 22 if score slot21 hp matches ..0 run scoreboard players operation abilityDmg3 saves += gabrielDeath abilityStats
execute if score abilitynumber3 abilities matches 22 if score slot22 hp matches ..0 run scoreboard players operation abilityDmg3 saves += gabrielDeath abilityStats
execute if score abilitynumber3 abilities matches 22 if score slot23 hp matches ..0 run scoreboard players operation abilityDmg3 saves += gabrielDeath abilityStats
execute if score abilitynumber3 abilities matches 22 run scoreboard players operation abilityDmg3 saves += marks slot20
execute if score abilitynumber3 abilities matches 22 run scoreboard players operation abilityDmg3 saves /= atkmultiplier slot20
execute if score abilitynumber3 abilities matches 22 run execute if score ward slot20 matches 0 run scoreboard players operation shield slot20 -= abilityDmg3 saves
execute if score abilitynumber3 abilities matches 22 run execute if score ward slot20 matches 0 if score shield slot20 matches ..0 run scoreboard players operation slot20 hp += shield slot20
execute if score abilitynumber3 abilities matches 22 if score slot22isatk booleans matches 1 if score ward slot20 matches 0 run scoreboard players operation abilityDmg3 saves /= gabrielLeader abilityStats
execute if score abilitynumber3 abilities matches 22 if score slot22isatk booleans matches 1 if score ward slot20 matches 0 run scoreboard players operation slot22 hp += abilityDmg3 saves
execute if score abilitynumber3 abilities matches 22 at @e[name=slot20] run particle minecraft:flash ~ ~1 ~ 0.9 0.9 0.9 0.5 100
execute if score abilitynumber3 abilities matches 22 run execute if score ward slot20 matches 1.. run function chthree:wardslot20
#Gatsby
execute if score abilitynumber3 abilities matches 23 if score ward slot20 matches 0 run scoreboard players operation slot20 stun = gatsbyDuration abilityStats
execute if score abilitynumber3 abilities matches 23 if score ward slot20 matches 0 run scoreboard players operation savehp20 saves = slot20 hp
execute if score abilitynumber3 abilities matches 23 if score ward slot20 matches 0 run scoreboard players operation invincibleSlot20 booleaneffects = gatsbyDuration abilityStats
execute if score abilitynumber3 abilities matches 23 if score ward slot20 matches 0 run scoreboard players operation slot20EatenDuration abilities = gatsbyDuration abilityStats
execute if score abilitynumber3 abilities matches 23 if score ward slot20 matches 0 at @e[name=slot20] run execute at @e[distance=..4,type=!player] run tp @n[type=!minecraft:player,distance=..4] ~ ~-20 ~
execute if score abilitynumber3 abilities matches 23 run execute if score ward slot20 matches 1.. run function chthree:wardslot20
execute if score abilitynumber3 abilities matches 23 if score durationSlot20-21 fear < gatsbyDuration abilityStats run scoreboard players operation durationSlot20-21 fear = gatsbyDuration abilityStats
execute if score abilitynumber3 abilities matches 23 if score durationSlot20-22 fear < gatsbyDuration abilityStats run scoreboard players operation durationSlot20-22 fear = gatsbyDuration abilityStats
execute if score abilitynumber3 abilities matches 23 if score durationSlot20-23 fear < gatsbyDuration abilityStats run scoreboard players operation durationSlot20-23 fear = gatsbyDuration abilityStats
execute if score abilitynumber3 abilities matches 23 if score durationSlot20-24 fear < gatsbyDuration abilityStats run scoreboard players operation durationSlot20-24 fear = gatsbyDuration abilityStats
execute if score abilitynumber3 abilities matches 23 if score ward slot18 matches 0 if score slot22isatk booleans matches 1 if score debuffDurationSlot18 atkmodifiers < gatsbyDuration abilityStats run scoreboard players operation debuffDurationSlot18 atkmodifiers = gatsbyDuration abilityStats
execute if score abilitynumber3 abilities matches 23 if score ward slot19 matches 0 if score slot22isatk booleans matches 1 if score debuffDurationSlot19 atkmodifiers < gatsbyDuration abilityStats run scoreboard players operation debuffDurationSlot19 atkmodifiers = gatsbyDuration abilityStats
execute if score abilitynumber3 abilities matches 23 if score ward slot17 matches 0 if score slot22isatk booleans matches 1 if score debuffDurationSlot17 atkmodifiers < gatsbyDuration abilityStats run scoreboard players operation debuffDurationSlot17 atkmodifiers = gatsbyDuration abilityStats
execute if score abilitynumber3 abilities matches 23 if score ward slot18 matches 0 if score slot22isatk booleans matches 1 run scoreboard players operation attackDebuffSlot18 atkmodifiers = gatsbyLeader abilityStats
execute if score abilitynumber3 abilities matches 23 if score ward slot19 matches 0 if score slot22isatk booleans matches 1 run scoreboard players operation attackDebuffSlot19 atkmodifiers = gatsbyLeader abilityStats
execute if score abilitynumber3 abilities matches 23 if score ward slot17 matches 0 if score slot22isatk booleans matches 1 run scoreboard players operation attackDebuffSlot17 atkmodifiers = gatsbyLeader abilityStats
execute if score abilitynumber3 abilities matches 23 if score ward slot18 matches 1.. if score slot22isatk booleans matches 1 run function chthree:wardslot18
execute if score abilitynumber3 abilities matches 23 if score ward slot19 matches 1.. if score slot22isatk booleans matches 1 run function chthree:wardslot19
execute if score abilitynumber3 abilities matches 23 if score ward slot17 matches 1.. if score slot22isatk booleans matches 1 run function chthree:wardslot17
execute if score abilitynumber3 abilities matches 23 run tellraw @a[tag=game3] ["",{"selector":"@p[tag=p6]"}," used Consume on Slot 4!"]
execute if score abilitynumber3 abilities matches 23 at @e[name=slot20] run particle minecraft:falling_nectar ~ ~1 ~ 0.9 0.9 0.9 0.1 100
execute if score abilitynumber3 abilities matches 23 if score slot22isatk booleans matches 1 at @e[name=slot18] run particle minecraft:falling_nectar ~ ~1 ~ 0.9 0.9 0.9 0.1 50
execute if score abilitynumber3 abilities matches 23 if score slot22isatk booleans matches 1 at @e[name=slot19] run particle minecraft:falling_nectar ~ ~1 ~ 0.9 0.9 0.9 0.1 50
execute if score abilitynumber3 abilities matches 23 if score slot22isatk booleans matches 1 at @e[name=slot17] run particle minecraft:falling_nectar ~ ~1 ~ 0.9 0.9 0.9 0.1 50
#Boomer
execute if score abilitynumber3 abilities matches 25 run scoreboard players operation abilityDmg3 saves = boomer abilityStats
execute if score abilitynumber3 abilities matches 25 if score slot21isatk booleans matches 1 run scoreboard players operation abilityDmg3 saves += slot21 atkmodifiers
execute if score abilitynumber3 abilities matches 25 if score slot22isatk booleans matches 1 run scoreboard players operation abilityDmg3 saves += slot22 atkmodifiers
execute if score abilitynumber3 abilities matches 25 if score slot23isatk booleans matches 1 run scoreboard players operation abilityDmg3 saves += slot23 atkmodifiers
execute if score abilitynumber3 abilities matches 25 run scoreboard players operation abilityDmg3 saves += marks slot20
execute if score abilitynumber3 abilities matches 25 run scoreboard players operation abilityDmg3 saves /= atkmultiplier slot20
execute if score abilitynumber3 abilities matches 25 run execute if score ward slot20 matches 0 run scoreboard players operation shield slot20 -= abilityDmg3 saves
execute if score abilitynumber3 abilities matches 25 run execute if score ward slot20 matches 0 if score shield slot20 matches ..0 run scoreboard players operation slot20 hp += shield slot20
execute if score abilitynumber3 abilities matches 25 run execute if score ward slot20 matches 1.. run function chthree:wardslot20
execute if score abilitynumber3 abilities matches 25 at @e[name=slot20] run particle minecraft:explosion ~ ~1 ~ 0.9 0.9 0.9 0.1 100
execute if score abilitynumber3 abilities matches 25 if score slot22isatk booleans matches 1 at @e[name=slot19] run particle minecraft:explosion ~ ~1 ~ 0.9 0.9 0.9 0.1 50
execute if score abilitynumber3 abilities matches 25 run tellraw @a[tag=game3] ["",{"selector":"@p[tag=p6]"}," used KABOOM! on Slot 4!"]
execute if score abilitynumber3 abilities matches 25 if score slot22isatk booleans matches 1 run scoreboard players operation abilityDmg3 saves = boomer abilityStats
execute if score abilitynumber3 abilities matches 25 if score slot22isatk booleans matches 1 run scoreboard players operation abilityDmg3 saves += slot22 atkmodifiers
execute if score abilitynumber3 abilities matches 25 if score slot22isatk booleans matches 1 run scoreboard players operation abilityDmg3 saves /= boomerLeader abilityStats
execute if score abilitynumber3 abilities matches 25 if score slot22isatk booleans matches 1 run scoreboard players operation abilityDmg3 saves += marks slot19
execute if score abilitynumber3 abilities matches 25 if score slot22isatk booleans matches 1 run scoreboard players operation abilityDmg3 saves /= atkmultiplier slot19
execute if score abilitynumber3 abilities matches 25 if score slot22isatk booleans matches 1 run execute if score ward slot19 matches 0 run scoreboard players operation shield slot19 -= abilityDmg3 saves
execute if score abilitynumber3 abilities matches 25 if score slot22isatk booleans matches 1 run execute if score ward slot19 matches 0 if score shield slot19 matches ..0 run scoreboard players operation slot19 hp += shield slot19
execute if score abilitynumber3 abilities matches 25 if score slot22isatk booleans matches 1 run execute if score ward slot19 matches 1.. run function chthree:wardslot19

#Ripper
execute if score abilitynumber3 abilities matches 29 if score slot20 hp <= ripper abilityStats if score ward slot20 matches 0 if score invincibleSlot20 booleaneffects matches 0 run scoreboard players set slot20 hp 0
execute if score abilitynumber3 abilities matches 29 if score slot20 hp <= ripper abilityStats if score invincibleSlot20 booleaneffects matches 0 if score ward slot20 matches 1.. run function chthree:wardslot20
execute if score abilitynumber3 abilities matches 29 run tellraw @a[tag=game3] ["",{"selector":"@p[tag=p6]"}," used Execute on Slot 4!"]
execute if score abilitynumber3 abilities matches 29 at @e[name=slot20] run particle minecraft:raid_omen ~ ~1 ~ 0.9 0.9 0.9 0.1 100


#Domino
execute if score abilitynumber3 abilities matches 30 run scoreboard players operation abilityDmg3 saves = domino abilityStats
execute if score abilitynumber3 abilities matches 30 if score slot21isatk booleans matches 1 run scoreboard players operation abilityDmg3 saves += slot21 atkmodifiers
execute if score abilitynumber3 abilities matches 30 if score slot22isatk booleans matches 1 run scoreboard players operation abilityDmg3 saves += slot22 atkmodifiers
execute if score abilitynumber3 abilities matches 30 if score slot23isatk booleans matches 1 run scoreboard players operation abilityDmg3 saves += slot23 atkmodifiers
execute if score abilitynumber3 abilities matches 30 run scoreboard players operation abilityDmg3 saves += marks slot20
execute if score abilitynumber3 abilities matches 30 run scoreboard players operation abilityDmg3 saves /= atkmultiplier slot20
execute if score abilitynumber3 abilities matches 30 run execute if score ward slot20 matches 0 run scoreboard players operation shield slot20 -= abilityDmg3 saves
execute if score abilitynumber3 abilities matches 30 run execute if score ward slot20 matches 0 if score shield slot20 matches ..0 run scoreboard players operation slot20 hp += shield slot20
execute if score abilitynumber3 abilities matches 30 if score ward slot20 matches 0 if score durationSlot20 poison < dominoDuration abilityStats run scoreboard players operation durationSlot20 poison = dominoDuration abilityStats
execute if score abilitynumber3 abilities matches 30 if score ward slot20 matches 0 run scoreboard players operation slot20Poison poison += dominoPoison abilityStats
execute if score abilitynumber3 abilities matches 30 run execute if score ward slot20 matches 1.. run function chthree:wardslot20
execute if score abilitynumber3 abilities matches 30 at @e[name=slot20] run particle minecraft:trial_omen ~ ~1 ~ 0.9 0.9 0.9 0.1 100
execute if score abilitynumber3 abilities matches 30 run tellraw @a[tag=game3] ["",{"selector":"@p[tag=p6]"}," used Poison Dart on Slot 4!"]
#Doc Basic Attack
execute if score abilitynumber3 abilities matches -1 run scoreboard players operation slot20Disease disease += doc heroattack
execute if score abilitynumber3 abilities matches -1 if score slot22isatk booleans matches 1 run scoreboard players operation slot20Disease disease += docLeader heroattack
execute if score abilitynumber3 abilities matches -1 at @e[name=slot20] run particle minecraft:trial_omen ~ ~1 ~ 0.9 0.9 0.9 0.1 50

#Healing Totem
execute if score abilitynumber3 abilities matches -3 run execute if score slot20bleeding booleaneffects matches 0 run scoreboard players operation slot20 hp += healingTotemHeal spellStats
execute if score abilitynumber3 abilities matches -3 at @e[name=slot20] run particle minecraft:composter ~ ~1 ~ 0.9 0.9 0.9 0.1 50

#Eidolon Basic Attack
execute if score abilitynumber3 abilities matches -4 run execute if score ward slot20 matches 0 if score durationSlot21-20 fear <= eidolonFearDuration abilityStats if score slot21isatk booleans matches 1 run scoreboard players operation durationSlot21-20 fear = eidolonFearDuration abilityStats
execute if score abilitynumber3 abilities matches -4 run execute if score ward slot20 matches 0 if score durationSlot22-20 fear <= eidolonFearDuration abilityStats if score slot22isatk booleans matches 1 run scoreboard players operation durationSlot22-20 fear = eidolonFearDuration abilityStats
execute if score abilitynumber3 abilities matches -4 run execute if score ward slot20 matches 0 if score durationSlot23-20 fear <= eidolonFearDuration abilityStats if score slot23isatk booleans matches 1 run scoreboard players operation durationSlot23-20 fear = eidolonFearDuration abilityStats
execute if score abilitynumber3 abilities matches -4 run scoreboard players operation abilityDmg3 saves = eidolon heroattack
execute if score abilitynumber3 abilities matches -4 if score slot21isatk booleans matches 1 run scoreboard players operation abilityDmg3 saves += slot21 atkmodifiers
execute if score abilitynumber3 abilities matches -4 if score slot22isatk booleans matches 1 run scoreboard players operation abilityDmg3 saves += slot22 atkmodifiers
execute if score abilitynumber3 abilities matches -4 if score slot23isatk booleans matches 1 run scoreboard players operation abilityDmg3 saves += slot23 atkmodifiers
execute if score abilitynumber3 abilities matches -4 run scoreboard players operation abilityDmg3 saves += marks slot20
execute if score abilitynumber3 abilities matches -4 run scoreboard players operation abilityDmg3 saves /= atkmultiplier slot20
execute if score abilitynumber3 abilities matches -4 run execute if score ward slot20 matches 0 run scoreboard players operation shield slot20 -= abilityDmg3 saves
execute if score abilitynumber3 abilities matches -4 run execute if score ward slot20 matches 0 if score shield slot20 matches ..0 run scoreboard players operation slot20 hp += shield slot20
execute if score abilitynumber3 abilities matches -4 run execute if score ward slot20 matches 1.. run function chthree:wardslot20
execute if score abilitynumber3 abilities matches -4 run execute at @e[name=slot20,type=armor_stand] run particle minecraft:crit ~ ~1 ~ 0.9 0.9 0.9 0.5 100



#This goes at the bottom
execute if score shield slot17 matches ..0 run scoreboard players set shield slot17 0
execute if score shield slot18 matches ..0 run scoreboard players set shield slot18 0
execute if score shield slot19 matches ..0 run scoreboard players set shield slot19 0
execute if score shield slot20 matches ..0 run scoreboard players set shield slot20 0
function chthree:turnend
#Make sure to add burn to your abilities
