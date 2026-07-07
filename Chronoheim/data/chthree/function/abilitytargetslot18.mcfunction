effect clear @a[tag=game3] strength
clear @p[tag=game3]
#Arthur Ability
execute if score abilitynumber3 abilities matches 2 run function chthree:cleanseslot18
#Deuce ability
execute if score abilitynumber3 abilities matches 3 run scoreboard players operation abilityDmg3 saves = deuce heroattack
execute if score abilitynumber3 abilities matches 3 if score slot21isatk booleans matches 1 run scoreboard players operation abilityDmg3 saves += slot21 atkmodifiers
execute if score abilitynumber3 abilities matches 3 if score slot22isatk booleans matches 1 run scoreboard players operation abilityDmg3 saves += slot22 atkmodifiers
execute if score abilitynumber3 abilities matches 3 if score slot23isatk booleans matches 1 run scoreboard players operation abilityDmg3 saves += slot23 atkmodifiers
execute if score abilitynumber3 abilities matches 3 run scoreboard players operation abilityDmg3 saves += marks slot18
execute if score abilitynumber3 abilities matches 3 if score slot22isatk booleans matches 1 run scoreboard players operation abilityDmg3 saves *= deuceMultLeader abilityStats
execute if score abilitynumber3 abilities matches 3 if score slot22isatk booleans matches 0 run scoreboard players operation abilityDmg3 saves *= deuceMult abilityStats
execute if score abilitynumber3 abilities matches 3 run scoreboard players operation abilityDmg3 saves /= atkmultiplier slot18
execute if score abilitynumber3 abilities matches 3 run execute if score ward slot18 matches 0 run scoreboard players operation shield slot18 -= abilityDmg3 saves
execute if score abilitynumber3 abilities matches 3 run execute if score ward slot18 matches 0 if score shield slot18 matches ..0 run scoreboard players operation slot18 hp += shield slot18
execute if score abilitynumber3 abilities matches 3 run execute if score ward slot18 matches 1.. run function chthree:wardslot18
execute if score abilitynumber3 abilities matches 3 run execute at @e[name=slot18,type=armor_stand] run particle crit ~ ~1 ~ 0.3 0.3 0.3 2 100
execute if score abilitynumber3 abilities matches 3 run tellraw @a[tag=game3] ["",{"selector":"@p[tag=p6]"}," used Double Punch on Slot 2!"]

#Garabaldi Ability
execute if score abilitynumber3 abilities matches 24 if score slot18 hp matches 1.. if score slot18bleeding booleaneffects matches 0 run scoreboard players operation slot18 hp += garabaldiHeal abilityStats
execute if score abilitynumber3 abilities matches 24 if score slot18 hp matches 1.. if score slot18bleeding booleaneffects matches 0 if score character# slot18 matches 24 run scoreboard players operation slot18 hp += garabaldiLeader abilityStats
execute if score abilitynumber3 abilities matches 24 if score slot18 hp matches 1.. run scoreboard players set ward slot18 2
execute if score abilitynumber3 abilities matches 24 run execute at @n[type=armor_stand,name=slot18] run particle minecraft:composter ~ ~1 ~ 0.9 0.9 0.9 0.5 100

execute if score abilitynumber3 abilities matches 24 run tellraw @a[tag=game3] ["",{"selector":"@p[tag=p5]"}," used Bubble Shield on Slot 2!"]

#Juniper Ability
execute if score abilitynumber3 abilities matches 27 run scoreboard players operation abilityDmg3 saves = juniper abilityStats
execute if score abilitynumber3 abilities matches 27 if score slot21isatk booleans matches 1 run scoreboard players operation abilityDmg3 saves += slot21 atkmodifiers
execute if score abilitynumber3 abilities matches 27 if score slot22isatk booleans matches 1 run scoreboard players operation abilityDmg3 saves += slot22 atkmodifiers
execute if score abilitynumber3 abilities matches 27 if score slot23isatk booleans matches 1 run scoreboard players operation abilityDmg3 saves += slot23 atkmodifiers
execute if score abilitynumber3 abilities matches 27 run scoreboard players operation abilityDmg3 saves += marks slot18
execute if score abilitynumber3 abilities matches 27 run scoreboard players operation abilityDmg3 saves /= atkmultiplier slot18
execute if score abilitynumber3 abilities matches 27 run execute if score ward slot18 matches 0 run scoreboard players operation shield slot18 -= abilityDmg3 saves
execute if score abilitynumber3 abilities matches 27 run execute if score ward slot18 matches 0 run scoreboard players operation slot18 stun = juniperStun abilityStats
execute if score abilitynumber3 abilities matches 27 run execute if score ward slot18 matches 0 if score shield slot18 matches ..0 run scoreboard players operation slot18 hp += shield slot18
execute if score abilitynumber3 abilities matches 27 run execute if score ward slot18 matches 1.. run function chthree:wardslot18
execute if score abilitynumber3 abilities matches 27 run execute at @e[name=slot18,type=armor_stand] run particle firefly ~ ~1 ~ 0.3 0.3 0.3 1 100

execute if score abilitynumber3 abilities matches 27 run tellraw @a[tag=game3] ["",{"selector":"@p[tag=p6]"}," used Pixie Dust on Slot 2!"]

#Juniper Basic
execute if score abilitynumber3 abilities matches -2 run execute if score slot18bleeding booleaneffects matches 0 run scoreboard players operation slot18 hp += juniper heroattack
execute if score abilitynumber3 abilities matches -2 run execute at @n[type=armor_stand,name=slot18] run particle minecraft:composter ~ ~1 ~ 0.9 0.9 0.9 0.5 100
execute if score abilitynumber3 abilities matches -2 run execute if score slot18bleeding booleaneffects matches 0 if score slot18isatk booleans matches 1 run scoreboard players operation slot18 hp += juniperLeader heroattack


#K.O.N.G ability
execute if score abilitynumber3 abilities matches 7 run scoreboard players operation abilityDmg3 saves = kong abilityStats
execute if score abilitynumber3 abilities matches 7 if score slot21isatk booleans matches 1 run scoreboard players operation abilityDmg3 saves += slot21 atkmodifiers
execute if score abilitynumber3 abilities matches 7 if score slot22isatk booleans matches 1 run scoreboard players operation abilityDmg3 saves += slot22 atkmodifiers
execute if score abilitynumber3 abilities matches 7 if score slot23isatk booleans matches 1 run scoreboard players operation abilityDmg3 saves += slot23 atkmodifiers
execute if score abilitynumber3 abilities matches 7 run scoreboard players operation abilityDmg3 saves += marks slot18
execute if score abilitynumber3 abilities matches 7 run scoreboard players operation abilityDmg3 saves /= atkmultiplier slot18
execute if score abilitynumber3 abilities matches 7 run execute if score ward slot18 matches 0 run scoreboard players operation shield slot18 -= abilityDmg3 saves
execute if score abilitynumber3 abilities matches 7 run execute if score ward slot18 matches 0 if score kongSpDebuffDuration abilityStats > durationSlot18 speedDebuffs run scoreboard players operation durationSlot18 speedDebuffs = kongSpDebuffDuration abilityStats
execute if score abilitynumber3 abilities matches 7 run execute if score ward slot18 matches 0 if score kongDmgDebuffDuration abilityStats > debuffDurationSlot18 atkmodifiers run scoreboard players operation debuffDurationSlot18 atkmodifiers = kongDmgDebuffDuration abilityStats
execute if score abilitynumber3 abilities matches 7 run execute if score ward slot18 matches 0 run scoreboard players operation speedDebuffSlot18 speedDebuffs += kongSpDebuff abilityStats
execute if score abilitynumber3 abilities matches 7 run execute if score ward slot18 matches 0 run scoreboard players operation attackDebuffSlot18 atkmodifiers += kongDmgDebuff abilityStats
execute if score abilitynumber3 abilities matches 7 run execute if score ward slot18 matches 0 run execute if score slot22isatk booleans matches 1 run scoreboard players operation attackDebuffSlot18 atkmodifiers += kongLeaderDmgDebuff abilityStats
execute if score abilitynumber3 abilities matches 7 run execute if score ward slot18 matches 0 run execute if score slot22isatk booleans matches 1 run scoreboard players operation speedDebuffSlot18 speedDebuffs += kongLeaderSpDebuff abilityStats
execute if score abilitynumber3 abilities matches 7 run execute if score ward slot18 matches 0 run execute if score slot22isatk booleans matches 1 run scoreboard players operation speed slot18 -= kongLeaderSpDebuff abilityStats
execute if score abilitynumber3 abilities matches 7 run execute if score ward slot18 matches 0 run scoreboard players operation speed slot18 -= kongSpDebuff abilityStats
execute if score abilitynumber3 abilities matches 7 run execute if score ward slot18 matches 0 if score shield slot18 matches ..0 run scoreboard players operation slot18 hp += shield slot18
execute if score abilitynumber3 abilities matches 7 run execute if score ward slot18 matches 1.. run function chthree:wardslot18
execute if score abilitynumber3 abilities matches 7 run execute at @n[type=armor_stand,name=slot18] run particle minecraft:explosion_emitter ~ ~1 ~
execute if score abilitynumber3 abilities matches 7 run tellraw @a[tag=game3] ["",{"selector":"@p[tag=p6]"}," used B.A.N.A.N.A S.L.A.M.M.A! on Slot 2!"]

#Robyn Ability
execute if score abilitynumber3 abilities matches 9 if score ward slot18 matches 0 if score durationSlot18 mark < robynDuration abilityStats run scoreboard players operation durationSlot18 mark = robynDuration abilityStats
execute if score abilitynumber3 abilities matches 9 if score ward slot18 matches 0 run scoreboard players operation marks slot18 += robyn abilityStats
execute if score abilitynumber3 abilities matches 9 if score ward slot18 matches 1 run function chthree:wardslot18
execute if score abilitynumber3 abilities matches 9 run execute at @n[type=armor_stand,name=slot18] run particle minecraft:angry_villager ~ ~1 ~ 0.9 0.9 0.9 1 50
execute if score abilitynumber3 abilities matches 9 run tellraw @a[tag=game3] ["",{"selector":"@p[tag=p6]"}," used Most Wanted on Slot 2!"]
#Robo
execute if score abilitynumber3 abilities matches 5 if score durationSlot18 shield < roboDuration abilityStats run scoreboard players operation durationSlot18 shield = roboDuration abilityStats
execute if score abilitynumber3 abilities matches 5 run scoreboard players operation shield slot18 += robo abilityStats
execute if score abilitynumber3 abilities matches 5 if score slot18isatk booleans matches 1 run scoreboard players operation shield slot18 += roboLeader abilityStats
execute if score abilitynumber3 abilities matches 5 run execute at @n[name=slot18,type=armor_stand] run particle minecraft:wax_off ~ ~1 ~ 0.6 0.6 0.6 0.0001 400
execute if score abilitynumber3 abilities matches 5 run tellraw @a[tag=game3] ["",{"selector":"@p[tag=p5]"}," used Force Field on Slot 2!"]

#Kirin
execute if score abilitynumber3 abilities matches 8 if score buffDurationSlot18 atkmodifiers < kirinDuration abilityStats run scoreboard players operation buffDurationSlot18 atkmodifiers = kirinDuration abilityStats
execute if score abilitynumber3 abilities matches 8 run scoreboard players operation attackBuffSlot18 atkmodifiers += kirin abilityStats
execute if score abilitynumber3 abilities matches 8 if score slot18isatk booleans matches 1 if score slot18bleeding booleaneffects matches 0 run scoreboard players operation slot18 hp += kirinLeader abilityStats
execute if score abilitynumber3 abilities matches 8 run tellraw @a[tag=game3] ["",{"selector":"@p[tag=p5]"}," used Mythical Empowerment on Slot 2!"]
execute if score abilitynumber3 abilities matches 8 at @e[name=slot18] run particle minecraft:trial_spawner_detection ~ ~1 ~ 0.9 0.9 0.9 0.1 100

#Ace
execute if score abilitynumber3 abilities matches 12 if score ward slot18 matches 0 run scoreboard players operation cooldown slot18 = aceSetCooldown abilityStats
execute if score abilitynumber3 abilities matches 12 if score ward slot18 matches 1.. run function chthree:wardslot18
execute if score abilitynumber3 abilities matches 12 at @e[name=slot18] run particle minecraft:enchanted_hit ~ ~1 ~ 0.9 0.9 0.9 0.5 100
execute if score abilitynumber3 abilities matches 12 run tellraw @a[tag=game3] ["",{"selector":"@p[tag=p6]"}," used Ace of Spades on Slot 2!"]
execute if score abilitynumber3 abilities matches 12 run execute if score character# slot22 matches 12 run scoreboard players operation durationSlot18 speedDebuffs = aceLeaderDuration abilityStats
execute if score abilitynumber3 abilities matches 12 run execute if score character# slot22 matches 12 run scoreboard players operation speedDebuffSlot18 speedDebuffs = aceLeader abilityStats
execute if score abilitynumber3 abilities matches 12 run execute if score character# slot22 matches 12 run scoreboard players operation speed slot18 -= aceLeader abilityStats
#Gabriel
execute if score abilitynumber3 abilities matches 22 run scoreboard players operation abilityDmg3 saves = gabriel abilityStats
execute if score abilitynumber3 abilities matches 22 if score slot21isatk booleans matches 1 run scoreboard players operation abilityDmg3 saves += slot21 atkmodifiers
execute if score abilitynumber3 abilities matches 22 if score slot22isatk booleans matches 1 run scoreboard players operation abilityDmg3 saves += slot22 atkmodifiers
execute if score abilitynumber3 abilities matches 22 if score slot23isatk booleans matches 1 run scoreboard players operation abilityDmg3 saves += slot23 atkmodifiers
execute if score abilitynumber3 abilities matches 22 if score slot21 hp matches ..0 run scoreboard players operation abilityDmg3 saves += gabrielDeath abilityStats
execute if score abilitynumber3 abilities matches 22 if score slot22 hp matches ..0 run scoreboard players operation abilityDmg3 saves += gabrielDeath abilityStats
execute if score abilitynumber3 abilities matches 22 if score slot23 hp matches ..0 run scoreboard players operation abilityDmg3 saves += gabrielDeath abilityStats
execute if score abilitynumber3 abilities matches 22 run scoreboard players operation abilityDmg3 saves += marks slot18
execute if score abilitynumber3 abilities matches 22 run scoreboard players operation abilityDmg3 saves /= atkmultiplier slot18
execute if score abilitynumber3 abilities matches 22 run execute if score ward slot18 matches 0 run scoreboard players operation shield slot18 -= abilityDmg3 saves
execute if score abilitynumber3 abilities matches 22 run execute if score ward slot18 matches 0 if score shield slot18 matches ..0 run scoreboard players operation slot18 hp += shield slot18
execute if score abilitynumber3 abilities matches 22 if score slot22isatk booleans matches 1 if score ward slot18 matches 0 run scoreboard players operation abilityDmg3 saves /= gabrielLeader abilityStats
execute if score abilitynumber3 abilities matches 22 if score slot22isatk booleans matches 1 if score ward slot18 matches 0 run scoreboard players operation slot22 hp += abilityDmg3 saves
execute if score abilitynumber3 abilities matches 22 at @e[name=slot18] run particle minecraft:flash{color:[1.000,1.000,1.000,1.00]} ~ ~1 ~ 0.9 0.9 0.9 0.5 100
execute if score abilitynumber3 abilities matches 22 run execute if score ward slot18 matches 1.. run function chthree:wardslot18
#Gatsby
execute if score abilitynumber3 abilities matches 23 if score ward slot18 matches 0 run scoreboard players operation slot18 stun = gatsbyDuration abilityStats
execute if score abilitynumber3 abilities matches 23 if score ward slot18 matches 0 run scoreboard players operation invincibleSlot18 booleaneffects = gatsbyDuration abilityStats
execute if score abilitynumber3 abilities matches 23 if score ward slot18 matches 0 run scoreboard players operation savehp18 saves = slot18 hp
execute if score abilitynumber3 abilities matches 23 if score ward slot18 matches 0 run scoreboard players operation slot18EatenDuration abilities = gatsbyDuration abilityStats
execute if score abilitynumber3 abilities matches 23 if score ward slot18 matches 0 at @e[name=slot18] run execute at @e[distance=..4,type=!player] run tp @n[type=!minecraft:player,distance=..4] ~ ~-20 ~
execute if score abilitynumber3 abilities matches 23 run execute if score ward slot18 matches 1.. run function chthree:wardslot18
execute if score abilitynumber3 abilities matches 23 if score durationSlot18-21 fear < gatsbyDuration abilityStats run scoreboard players operation durationSlot18-21 fear = gatsbyDuration abilityStats
execute if score abilitynumber3 abilities matches 23 if score durationSlot18-22 fear < gatsbyDuration abilityStats run scoreboard players operation durationSlot18-22 fear = gatsbyDuration abilityStats
execute if score abilitynumber3 abilities matches 23 if score durationSlot18-23 fear < gatsbyDuration abilityStats run scoreboard players operation durationSlot18-23 fear = gatsbyDuration abilityStats
execute if score abilitynumber3 abilities matches 23 if score durationSlot18-24 fear < gatsbyDuration abilityStats run scoreboard players operation durationSlot18-24 fear = gatsbyDuration abilityStats
execute if score abilitynumber3 abilities matches 23 if score ward slot17 matches 0 if score slot22isatk booleans matches 1 if score debuffDurationSlot17 atkmodifiers < gatsbyDuration abilityStats run scoreboard players operation debuffDurationSlot17 atkmodifiers = gatsbyDuration abilityStats
execute if score abilitynumber3 abilities matches 23 if score ward slot19 matches 0 if score slot22isatk booleans matches 1 if score debuffDurationSlot19 atkmodifiers < gatsbyDuration abilityStats run scoreboard players operation debuffDurationSlot19 atkmodifiers = gatsbyDuration abilityStats
execute if score abilitynumber3 abilities matches 23 if score ward slot20 matches 0 if score slot22isatk booleans matches 1 if score debuffDurationSlot20 atkmodifiers < gatsbyDuration abilityStats run scoreboard players operation debuffDurationSlot20 atkmodifiers = gatsbyDuration abilityStats
execute if score abilitynumber3 abilities matches 23 if score ward slot17 matches 0 if score slot22isatk booleans matches 1 run scoreboard players operation attackDebuffSlot17 atkmodifiers = gatsbyLeader abilityStats
execute if score abilitynumber3 abilities matches 23 if score ward slot19 matches 0 if score slot22isatk booleans matches 1 run scoreboard players operation attackDebuffSlot19 atkmodifiers = gatsbyLeader abilityStats
execute if score abilitynumber3 abilities matches 23 if score ward slot20 matches 0 if score slot22isatk booleans matches 1 run scoreboard players operation attackDebuffSlot20 atkmodifiers = gatsbyLeader abilityStats
execute if score abilitynumber3 abilities matches 23 if score ward slot17 matches 1.. if score slot22isatk booleans matches 1 run function chthree:wardslot17
execute if score abilitynumber3 abilities matches 23 if score ward slot19 matches 1.. if score slot22isatk booleans matches 1 run function chthree:wardslot19
execute if score abilitynumber3 abilities matches 23 if score ward slot20 matches 1.. if score slot22isatk booleans matches 1 run function chthree:wardslot20
execute if score abilitynumber3 abilities matches 23 run tellraw @a[tag=game3] ["",{"selector":"@p[tag=p6]"}," used Consume on Slot 2!"]
execute if score abilitynumber3 abilities matches 23 at @e[name=slot18] run particle minecraft:falling_nectar ~ ~1 ~ 0.9 0.9 0.9 0.1 100
execute if score abilitynumber3 abilities matches 23 if score slot22isatk booleans matches 1 at @e[name=slot17] run particle minecraft:falling_nectar ~ ~1 ~ 0.9 0.9 0.9 0.1 50
execute if score abilitynumber3 abilities matches 23 if score slot22isatk booleans matches 1 at @e[name=slot19] run particle minecraft:falling_nectar ~ ~1 ~ 0.9 0.9 0.9 0.1 50
execute if score abilitynumber3 abilities matches 23 if score slot22isatk booleans matches 1 at @e[name=slot20] run particle minecraft:falling_nectar ~ ~1 ~ 0.9 0.9 0.9 0.1 50
#Old Boomer
execute if score abilitynumber3 abilities matches 25 run scoreboard players operation abilityDmg3 saves = boomer abilityStats
execute if score abilitynumber3 abilities matches 25 if score slot21isatk booleans matches 1 run scoreboard players operation abilityDmg3 saves += slot21 atkmodifiers
execute if score abilitynumber3 abilities matches 25 if score slot22isatk booleans matches 1 run scoreboard players operation abilityDmg3 saves += slot22 atkmodifiers
execute if score abilitynumber3 abilities matches 25 if score slot23isatk booleans matches 1 run scoreboard players operation abilityDmg3 saves += slot23 atkmodifiers
execute if score abilitynumber3 abilities matches 25 run scoreboard players operation abilityDmg3 saves += marks slot18
execute if score abilitynumber3 abilities matches 25 run scoreboard players operation abilityDmg3 saves /= atkmultiplier slot18
execute if score abilitynumber3 abilities matches 25 run execute if score ward slot18 matches 0 run scoreboard players operation shield slot18 -= abilityDmg3 saves
execute if score abilitynumber3 abilities matches 25 run execute if score ward slot18 matches 0 if score shield slot18 matches ..0 run scoreboard players operation slot18 hp += shield slot18
execute if score abilitynumber3 abilities matches 25 run execute if score ward slot18 matches 1.. run function chthree:wardslot18
execute if score abilitynumber3 abilities matches 25 at @e[name=slot18] run particle minecraft:explosion ~ ~1 ~ 0.9 0.9 0.9 0.1 100
execute if score abilitynumber3 abilities matches 25 if score slot22isatk booleans matches 1 at @e[name=slot17] run particle minecraft:explosion ~ ~1 ~ 0.9 0.9 0.9 0.1 50
execute if score abilitynumber3 abilities matches 25 if score slot22isatk booleans matches 1 at @e[name=slot19] run particle minecraft:explosion ~ ~1 ~ 0.9 0.9 0.9 0.1 50
execute if score abilitynumber3 abilities matches 25 run tellraw @a[tag=game3] ["",{"selector":"@p[tag=p6]"}," used KABOOM! on Slot 2!"]
execute if score abilitynumber3 abilities matches 25 if score slot22isatk booleans matches 1 run scoreboard players operation abilityDmg3 saves = boomer abilityStats
execute if score abilitynumber3 abilities matches 25 if score slot22isatk booleans matches 1 run scoreboard players operation abilityDmg3 saves += slot18 atkmodifiers
execute if score abilitynumber3 abilities matches 25 if score slot22isatk booleans matches 1 run scoreboard players operation abilityDmg3 saves /= boomerLeader abilityStats
execute if score abilitynumber3 abilities matches 25 if score slot22isatk booleans matches 1 run scoreboard players operation abilityDmg3 saves += marks slot17
execute if score abilitynumber3 abilities matches 25 if score slot22isatk booleans matches 1 run scoreboard players operation abilityDmg3 saves /= atkmultiplier slot17
execute if score abilitynumber3 abilities matches 25 if score slot22isatk booleans matches 1 run execute if score ward slot17 matches 0 run scoreboard players operation shield slot17 -= abilityDmg3 saves
execute if score abilitynumber3 abilities matches 25 if score slot22isatk booleans matches 1 run execute if score ward slot17 matches 0 if score shield slot17 matches ..0 run scoreboard players operation slot17 hp += shield slot17
execute if score abilitynumber3 abilities matches 25 if score slot22isatk booleans matches 1 run execute if score ward slot17 matches 1.. run function chthree:wardslot17
execute if score abilitynumber3 abilities matches 25 if score slot22isatk booleans matches 1 run scoreboard players operation abilityDmg3 saves = boomer abilityStats
execute if score abilitynumber3 abilities matches 25 if score slot22isatk booleans matches 1 run scoreboard players operation abilityDmg3 saves += slot18 atkmodifiers
execute if score abilitynumber3 abilities matches 25 if score slot22isatk booleans matches 1 run scoreboard players operation abilityDmg3 saves /= boomerLeader abilityStats
execute if score abilitynumber3 abilities matches 25 if score slot22isatk booleans matches 1 run scoreboard players operation abilityDmg3 saves += marks slot19
execute if score abilitynumber3 abilities matches 25 if score slot22isatk booleans matches 1 run scoreboard players operation abilityDmg3 saves /= atkmultiplier slot19
execute if score abilitynumber3 abilities matches 25 if score slot22isatk booleans matches 1 run execute if score ward slot19 matches 0 run scoreboard players operation shield slot19 -= abilityDmg3 saves
execute if score abilitynumber3 abilities matches 25 if score slot22isatk booleans matches 1 run execute if score ward slot19 matches 0 if score shield slot19 matches ..0 run scoreboard players operation slot19 hp += shield slot19
execute if score abilitynumber3 abilities matches 25 if score slot22isatk booleans matches 1 run execute if score ward slot19 matches 1.. run function chthree:wardslot19

#Ripper
execute if score abilitynumber3 abilities matches 29 if score slot18 hp <= ripper abilityStats if score ward slot18 matches 0 if score invincibleSlot18 booleaneffects matches 0 run scoreboard players set slot18 hp 0
execute if score abilitynumber3 abilities matches 29 if score slot18 hp <= ripper abilityStats if score invincibleSlot18 booleaneffects matches 0 if score ward slot18 matches 1.. run function chthree:wardslot18
execute if score abilitynumber3 abilities matches 29 run tellraw @a[tag=game3] ["",{"selector":"@p[tag=p6]"}," used Execute on Slot 2!"]
execute if score abilitynumber3 abilities matches 29 at @e[name=slot18] run particle minecraft:raid_omen ~ ~1 ~ 0.9 0.9 0.9 0.1 100


#Domino
execute if score abilitynumber3 abilities matches 30 run scoreboard players operation abilityDmg3 saves = domino abilityStats
execute if score abilitynumber3 abilities matches 30 if score slot21isatk booleans matches 1 run scoreboard players operation abilityDmg3 saves += slot21 atkmodifiers
execute if score abilitynumber3 abilities matches 30 if score slot22isatk booleans matches 1 run scoreboard players operation abilityDmg3 saves += slot22 atkmodifiers
execute if score abilitynumber3 abilities matches 30 if score slot23isatk booleans matches 1 run scoreboard players operation abilityDmg3 saves += slot23 atkmodifiers
execute if score abilitynumber3 abilities matches 30 run scoreboard players operation abilityDmg3 saves += marks slot18
execute if score abilitynumber3 abilities matches 30 run scoreboard players operation abilityDmg3 saves /= atkmultiplier slot18
execute if score abilitynumber3 abilities matches 30 run execute if score ward slot18 matches 0 run scoreboard players operation shield slot18 -= abilityDmg3 saves
execute if score abilitynumber3 abilities matches 30 run execute if score ward slot18 matches 0 if score shield slot18 matches ..0 run scoreboard players operation slot18 hp += shield slot18
execute if score abilitynumber3 abilities matches 30 if score ward slot18 matches 0 if score durationSlot18 poison < dominoDuration abilityStats run scoreboard players operation durationSlot18 poison = dominoDuration abilityStats 
execute if score abilitynumber3 abilities matches 30 if score ward slot18 matches 0 run scoreboard players operation slot18Poison poison += dominoPoisonLeader abilityStats 
execute if score abilitynumber3 abilities matches 30 run execute if score ward slot18 matches 1.. run function chthree:wardslot18
execute if score abilitynumber3 abilities matches 30 at @e[name=slot18] run particle minecraft:trial_omen ~ ~1 ~ 0.9 0.9 0.9 0.1 100
execute if score abilitynumber3 abilities matches 30 run tellraw @a[tag=game3] ["",{"selector":"@p[tag=p6]"}," used Poison Dart on Slot 2!"]

#Scythe
execute if score abilitynumber3 abilities matches 32 if score ward slot18 matches 0 run scoreboard players operation slot18 hp /= scytheDivide abilityStats
execute if score abilitynumber3 abilities matches 32 if score ward slot18 matches 0 run scoreboard players operation slot18 hp *= scytheMult abilityStats
execute if score abilitynumber3 abilities matches 32 if score ward slot18 matches 0 if score slot22isatk booleans matches 1 if score durationSlot18 mark < scytheDuration abilityStats run scoreboard players operation durationSlot18 mark = scytheDuration abilityStats
execute if score abilitynumber3 abilities matches 32 if score ward slot18 matches 0 if score slot22isatk booleans matches 1 run scoreboard players operation marks slot18 += scytheLeader abilityStats
execute if score abilitynumber3 abilities matches 32 if score ward slot18 matches 1.. run function chthree:wardslot18
execute if score abilitynumber3 abilities matches 32 at @e[name=slot18] run particle minecraft:sculk_soul ~ ~1 ~ 0.9 0.9 0.9 0.1 100
execute if score abilitynumber3 abilities matches 32 run tellraw @a[tag=game3] ["",{"selector":"@p[tag=p6]"}," used Cull the Weak on Slot 2!"]

#Doc Basic Attack
execute if score abilitynumber3 abilities matches -1 if score ward slot18 matches 0 run scoreboard players operation slot18Disease disease += doc heroattack
execute if score abilitynumber3 abilities matches -1 if score ward slot18 matches 0 if score slot22isatk booleans matches 1 run scoreboard players operation slot18Disease disease += docLeader heroattack
execute if score abilitynumber3 abilities matches -1 run execute if score ward slot18 matches 1.. run function chthree:wardslot18
execute if score abilitynumber3 abilities matches -1 at @e[name=slot18] run particle minecraft:trial_omen ~ ~1 ~ 0.9 0.9 0.9 0.1 50

#Subject ability
execute if score abilitynumber3 abilities matches 4 if score ward slot18 matches 0 if score durationSlot18 poison < subjectDuration abilityStats run scoreboard players operation durationSlot18 poison = subjectDuration abilityStats
execute if score abilitynumber3 abilities matches 4 if score ward slot18 matches 0 run scoreboard players operation slot18Poison poison += subject abilityStats
execute if score abilitynumber3 abilities matches 4 if score ward slot18 matches 0 if score slot22isatk booleans matches 1 run scoreboard players operation slot18Poison poison += subjectLeader abilityStats
execute if score abilitynumber3 abilities matches 4 at @e[name=slot18] run particle minecraft:trial_omen ~ ~1 ~ 0.9 0.9 0.9 0.1 50
execute if score abilitynumber3 abilities matches 4 run execute if score ward slot18 matches 1.. run function chthree:wardslot18
execute if score abilitynumber3 abilities matches 4 run tellraw @a[tag=game3] ["",{"selector":"@p[tag=p6]"}," used Contagion on Slot 2!"]

#Healing Totem
execute if score abilitynumber3 abilities matches -3 run execute if score slot18bleeding booleaneffects matches 0 run scoreboard players operation slot18 hp += healingTotemHeal spellStats
execute if score abilitynumber3 abilities matches -3 at @e[name=slot18] run particle minecraft:composter ~ ~1 ~ 0.9 0.9 0.9 0.1 50

#Eidolon Basic Attack
execute if score abilitynumber3 abilities matches -4 run execute if score ward slot18 matches 0 if score durationSlot21-18 fear <= eidolonFearDuration abilityStats if score slot21isatk booleans matches 1 run scoreboard players operation durationSlot21-18 fear = eidolonFearDuration abilityStats
execute if score abilitynumber3 abilities matches -4 run execute if score ward slot18 matches 0 if score durationSlot22-18 fear <= eidolonFearDuration abilityStats if score slot22isatk booleans matches 1 run scoreboard players operation durationSlot22-18 fear = eidolonFearDuration abilityStats
execute if score abilitynumber3 abilities matches -4 run execute if score ward slot18 matches 0 if score durationSlot23-18 fear <= eidolonFearDuration abilityStats if score slot23isatk booleans matches 1 run scoreboard players operation durationSlot23-18 fear = eidolonFearDuration abilityStats
execute if score abilitynumber3 abilities matches -4 run scoreboard players operation abilityDmg3 saves = eidolon heroattack
execute if score abilitynumber3 abilities matches -4 if score slot21isatk booleans matches 1 run scoreboard players operation abilityDmg3 saves += slot21 atkmodifiers
execute if score abilitynumber3 abilities matches -4 if score slot22isatk booleans matches 1 run scoreboard players operation abilityDmg3 saves += slot22 atkmodifiers
execute if score abilitynumber3 abilities matches -4 if score slot23isatk booleans matches 1 run scoreboard players operation abilityDmg3 saves += slot23 atkmodifiers
execute if score abilitynumber3 abilities matches -4 run scoreboard players operation abilityDmg3 saves += marks slot18
execute if score abilitynumber3 abilities matches -4 run scoreboard players operation abilityDmg3 saves /= atkmultiplier slot18
execute if score abilitynumber3 abilities matches -4 run execute if score ward slot18 matches 0 run scoreboard players operation shield slot18 -= abilityDmg3 saves
execute if score abilitynumber3 abilities matches -4 run execute if score ward slot18 matches 0 if score shield slot18 matches ..0 run scoreboard players operation slot18 hp += shield slot18
execute if score abilitynumber3 abilities matches -4 run execute if score ward slot18 matches 1.. run function chthree:wardslot18
execute if score abilitynumber3 abilities matches -4 run execute at @e[name=slot18,type=armor_stand] run particle minecraft:crit ~ ~1 ~ 0.9 0.9 0.9 0.5 100

#Jones Ability
execute if score abilitynumber3 abilities matches 31 run scoreboard players operation abilityDmg3 saves = jonesDmg abilityStats
execute if score abilitynumber3 abilities matches 31 if score slot21isatk booleans matches 1 run scoreboard players operation abilityDmg3 saves += slot21 atkmodifiers
execute if score abilitynumber3 abilities matches 31 if score slot22isatk booleans matches 1 run scoreboard players operation abilityDmg3 saves += slot22 atkmodifiers
execute if score abilitynumber3 abilities matches 31 if score slot23isatk booleans matches 1 run scoreboard players operation abilityDmg3 saves += slot23 atkmodifiers
execute if score abilitynumber3 abilities matches 31 run scoreboard players operation abilityDmg3 saves += marks slot18
execute if score abilitynumber3 abilities matches 31 run scoreboard players operation abilityDmg3 saves /= atkmultiplier slot18
execute if score abilitynumber3 abilities matches 31 run execute if score ward slot18 matches 0 run scoreboard players operation shield slot18 -= abilityDmg3 saves
execute if score abilitynumber3 abilities matches 31 run execute if score ward slot18 matches 0 if score shield slot18 matches ..0 run scoreboard players operation slot18 hp += shield slot18
execute if score abilitynumber3 abilities matches 31 run execute if score ward slot18 matches 0 run scoreboard players operation disarmedslot18 booleaneffects = jones abilityStats
execute if score abilitynumber3 abilities matches 31 run execute if score ward slot18 matches 1 run function chthree:wardslot18
execute if score abilitynumber3 abilities matches 31 run tellraw @a[tag=game3] ["",{"selector":"@p[tag=p6]"}," used Lasso on Slot 2!"]
execute if score abilitynumber3 abilities matches 31 at @e[name=slot18] run particle minecraft:crit ~ ~1 ~ 0.9 0.9 0.9 0.1 100

#Sherman Basic
execute if score abilitynumber3 abilities matches -5 run execute unless score slot18bleeding booleaneffects matches 1.. run scoreboard players operation slot18 hp += sherman heroattack
execute if score abilitynumber3 abilities matches -5 run tellraw @a[tag=game3] ["",{"selector":"@p[tag=p5]"}," healed Slot 2!"]
execute if score abilitynumber3 abilities matches -5 run execute at @n[type=armor_stand,name=slot18] run particle minecraft:composter ~ ~1 ~ 0.9 0.9 0.9 0.5 80

#Sherman Ability
execute if score abilitynumber3 abilities matches 33 run execute if score ward slot18 matches 0 if score debuffDurationSlot18 atkmodifiers < shermanDuration abilityStats run scoreboard players operation debuffDurationSlot18 atkmodifiers = shermanDuration abilityStats
execute if score abilitynumber3 abilities matches 33 run execute if score ward slot18 matches 0 run scoreboard players operation attackDebuffSlot18 atkmodifiers += shermanDebuff abilityStats
execute if score abilitynumber3 abilities matches 33 run scoreboard players operation abilityDmg saves = sherman abilityStats
execute if score abilitynumber3 abilities matches 33 if score slot21isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot21 atkmodifiers
execute if score abilitynumber3 abilities matches 33 if score slot22isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot22 atkmodifiers
execute if score abilitynumber3 abilities matches 33 if score slot23isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot23 atkmodifiers
execute if score abilitynumber3 abilities matches 33 run scoreboard players operation abilityDmg saves += marks slot18
execute if score abilitynumber3 abilities matches 33 run scoreboard players operation abilityDmg saves /= atkmultiplier slot18
execute if score abilitynumber3 abilities matches 33 run execute if score ward slot18 matches 0 run scoreboard players operation shield slot18 -= abilityDmg saves
execute if score abilitynumber3 abilities matches 33 run execute if score ward slot18 matches 0 if score shield slot18 matches ..0 run scoreboard players operation slot18 hp += shield slot18
execute if score abilitynumber3 abilities matches 33 run execute if score ward slot18 matches 1.. run function chthree:wardslot18
execute if score abilitynumber3 abilities matches 33 at @e[name=slot18] run particle minecraft:pale_oak_leaves ~ ~1 ~ 0.9 0.9 0.9 0.1 100
execute if score abilitynumber3 abilities matches 33 at @e[name=slot18] run particle minecraft:explosion ~ ~1 ~ 0.9 0.9 0.9 0.1 10
execute if score abilitynumber3 abilities matches 33 at @e[name=slot17] run particle minecraft:pale_oak_leaves ~ ~1 ~ 0.9 0.9 0.9 0.1 50
execute if score abilitynumber3 abilities matches 33 at @e[name=slot19] run particle minecraft:pale_oak_leaves ~ ~1 ~ 0.9 0.9 0.9 0.1 50
execute if score abilitynumber3 abilities matches 33 run tellraw @a[tag=game3] ["",{"selector":"@p[tag=p6]"}," used Grasping Roots on Slot 2!"]
execute if score abilitynumber3 abilities matches 33 run scoreboard players operation abilityDmg saves = sherman abilityStats
execute if score abilitynumber3 abilities matches 33 if score slot21isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot21 atkmodifiers
execute if score abilitynumber3 abilities matches 33 if score slot22isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot22 atkmodifiers
execute if score abilitynumber3 abilities matches 33 if score slot23isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot23 atkmodifiers
execute if score abilitynumber3 abilities matches 33 run scoreboard players operation abilityDmg saves /= shermanSplash abilityStats
execute if score abilitynumber3 abilities matches 33 run scoreboard players operation abilityDmg saves += marks slot17
execute if score abilitynumber3 abilities matches 33 run scoreboard players operation abilityDmg saves /= atkmultiplier slot17
execute if score abilitynumber3 abilities matches 33 run execute if score ward slot17 matches 0 run scoreboard players operation shield slot17 -= abilityDmg saves
execute if score abilitynumber3 abilities matches 33 run execute if score ward slot17 matches 0 if score shield slot17 matches ..0 run scoreboard players operation slot17 hp += shield slot17
execute if score abilitynumber3 abilities matches 33 run execute if score ward slot17 matches 1.. run function chthree:wardslot17
execute if score abilitynumber3 abilities matches 33 run scoreboard players operation abilityDmg saves = sherman abilityStats
execute if score abilitynumber3 abilities matches 33 if score slot21isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot21 atkmodifiers
execute if score abilitynumber3 abilities matches 33 if score slot22isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot22 atkmodifiers
execute if score abilitynumber3 abilities matches 33 if score slot23isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot23 atkmodifiers
execute if score abilitynumber3 abilities matches 33 run scoreboard players operation abilityDmg saves /= shermanSplash abilityStats
execute if score abilitynumber3 abilities matches 33 run scoreboard players operation abilityDmg saves += marks slot19
execute if score abilitynumber3 abilities matches 33 run scoreboard players operation abilityDmg saves /= atkmultiplier slot19
execute if score abilitynumber3 abilities matches 33 run execute if score ward slot19 matches 0 run scoreboard players operation shield slot19 -= abilityDmg saves
execute if score abilitynumber3 abilities matches 33 run execute if score ward slot19 matches 0 if score shield slot19 matches ..0 run scoreboard players operation slot19 hp += shield slot19
execute if score abilitynumber3 abilities matches 33 run execute if score ward slot19 matches 1.. run function chthree:wardslot19

#Eidolon Ability
execute if score abilitynumber3 abilities matches 28 run scoreboard players operation abilityDmg3 saves = eidolon abilityStats
execute if score abilitynumber3 abilities matches 28 if score slot21isatk booleans matches 1 run scoreboard players operation abilityDmg3 saves += slot21 atkmodifiers
execute if score abilitynumber3 abilities matches 28 if score slot22isatk booleans matches 1 run scoreboard players operation abilityDmg3 saves += slot22 atkmodifiers
execute if score abilitynumber3 abilities matches 28 if score slot23isatk booleans matches 1 run scoreboard players operation abilityDmg3 saves += slot23 atkmodifiers
execute if score abilitynumber3 abilities matches 28 run scoreboard players operation abilityDmg3 saves += marks slot18
execute if score abilitynumber3 abilities matches 28 run scoreboard players operation abilityDmg3 saves /= atkmultiplier slot18
execute if score abilitynumber3 abilities matches 28 run execute if score ward slot18 matches 0 run scoreboard players operation shield slot18 -= abilityDmg3 saves
execute if score abilitynumber3 abilities matches 28 run execute if score ward slot18 matches 0 if score slot22isatk booleans matches 1 if score durationSlot22-18 fear <= eidolonLeaderFearDuration abilityStats run scoreboard players operation durationSlot22-18 fear = eidolonLeaderFearDuration abilityStats
execute if score abilitynumber3 abilities matches 28 run execute if score ward slot18 matches 0 if score shield slot18 matches ..0 run scoreboard players operation slot18 hp += shield slot18
execute if score abilitynumber3 abilities matches 28 run execute if score ward slot18 matches 1.. run function chthree:wardslot18
execute if score abilitynumber3 abilities matches 28 run execute at @e[name=slot18,type=armor_stand] run particle raid_omen ~ ~1 ~ 0.3 0.3 0.3 2 100

#Barley
execute if score abilitynumber3 abilities matches -36 if score barleyPart1 abilities matches 5 if score ward slot18 matches ..0 run scoreboard players operation durationSlot21-18 fear = barleyDuration abilityStats 
execute if score abilitynumber3 abilities matches -36 if score barleyPart1 abilities matches 6 if score ward slot18 matches ..0 run scoreboard players operation durationSlot22-18 fear = barleyDuration abilityStats 
execute if score abilitynumber3 abilities matches -36 if score barleyPart1 abilities matches 7 if score ward slot18 matches ..0 run scoreboard players operation durationSlot23-18 fear = barleyDuration abilityStats 
execute if score abilitynumber3 abilities matches -36 if score barleyPart1 abilities matches 8 if score ward slot18 matches ..0 run scoreboard players operation durationSlot24-18 fear = barleyDuration abilityStats 
execute if score abilitynumber3 abilities matches -36 if score ward slot18 matches ..0 if score debuffDurationSlot18 atkmodifiers < barleyDuration abilityStats run scoreboard players operation debuffDurationSlot18 atkmodifiers = barleyDuration abilityStats
execute if score abilitynumber3 abilities matches -36 if score ward slot18 matches ..0 run scoreboard players operation attackDebuffSlot18 atkmodifiers += barley abilityStats
execute if score abilitynumber3 abilities matches -36 if score ward slot18 matches 1.. run function chthree:wardslot18
execute if score abilitynumber3 abilities matches -36 run execute at @n[type=armor_stand,name=slot18] run particle trial_omen ~ ~1 ~ 0.9 0.9 0.9 0.1 400
execute if score abilitynumber3 abilities matches -36 run tellraw @a[tag=game3] ["",{"selector":"@p[tag=p6]"}," used Spookcrow to fear Slot 2!"]

execute if score abilitynumber3 abilities matches 36 run scoreboard players set barleyPart1 abilities 2
execute if score abilitynumber3 abilities matches 36 if score buffDurationSlot18 atkmodifiers < barleyDuration abilityStats run scoreboard players operation buffDurationSlot18 atkmodifiers = barleyDuration abilityStats
execute if score abilitynumber3 abilities matches 36 run scoreboard players operation attackBuffSlot18 atkmodifiers += barley abilityStats
execute if score abilitynumber3 abilities matches 36 run function chthree:abilitygivetargetsp5
execute if score abilitynumber3 abilities matches 36 run execute at @n[type=armor_stand,name=slot18] run particle raid_omen ~ ~1 ~ 0.9 0.9 0.9 0.1 400
execute if score abilitynumber3 abilities matches 36 run tellraw @a[tag=game3] ["",{"selector":"@p[tag=p5]"}," used Spookcrow to make Slot 2 scary!"]

#Igor
execute if score abilitynumber3 abilities matches 38 if score cooldown slot18 matches 1.. run scoreboard players operation cooldown slot18 -= igor abilityStats
execute if score abilitynumber3 abilities matches 38 run execute at @e[type=armor_stand,name=slot18] run particle witch ~ ~1 ~ 0.5 0.8 0.5 0.1 100
execute if score abilitynumber3 abilities matches 38 run execute if score durationSlot18 speedBuffs < igorDuration abilityStats run scoreboard players operation durationSlot18 speedBuffs = igorDuration abilityStats
execute if score abilitynumber3 abilities matches 38 run scoreboard players operation speed slot18 += igorSpBuff abilityStats
execute if score abilitynumber3 abilities matches 38 run scoreboard players operation speedBuffSlot18 speedBuffs += igorSpBuff abilityStats
execute if score abilitynumber3 abilities matches 38 run tellraw @a[tag=game3] ["",{"selector":"@p[tag=p5]"}," used Black Lagoon Brew on Slot 2!"]
execute if score abilitynumber3 abilities matches 38 if score slot18isatk booleans matches 1 run execute if score invincibleSlot18 booleaneffects < igorDuration abilityStats run scoreboard players operation invincibleSlot18 booleaneffects = igorDuration abilityStats
execute if score abilitynumber3 abilities matches 38 if score slot18isatk booleans matches 1 run scoreboard players operation savehp58 saves = slot18 hp

#Zeebo
execute if score abilitynumber3 abilities matches 40 if score ward slot18 matches ..0 unless score curse slot18 matches 5 unless score curse slot18 matches 2 run scoreboard players set curseStacks slot18 0
execute if score abilitynumber3 abilities matches 40 if score ward slot18 matches ..0 unless score curse slot18 matches 5 unless score curse slot18 matches 2 run scoreboard players set curseDuration slot18 -1
execute if score abilitynumber3 abilities matches 40 if score ward slot18 matches ..0 unless score curse slot18 matches 5 run scoreboard players set curse slot18 2
execute if score abilitynumber3 abilities matches 40 if score ward slot18 matches ..0 unless score curse slot18 matches 5 if score curse slot18 matches 2 run scoreboard players add curseStacks slot18 1
execute if score abilitynumber3 abilities matches 40 if score ward slot18 matches ..0 run execute if score durationSlot18 burn < zeeboDuration abilityStats run scoreboard players operation durationSlot18 burn = zeeboDuration abilityStats
execute if score abilitynumber3 abilities matches 40 if score ward slot18 matches ..0 run scoreboard players operation slot18Burn burn += zeeboBurn abilityStats
execute if score abilitynumber3 abilities matches 40 run execute at @e[type=armor_stand,name=slot18] run summon firework_rocket ~ ~2 ~ {LifeTime:1,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"burst",has_twinkle:true,has_trail:true,colors:[I;13894251,16746496,16770560],fade_colors:[I;10224278]}]}}}}
execute if score abilitynumber3 abilities matches 40 run tellraw @a[tag=game3] ["",{"selector":"@p[tag=p6]"}," used Last Laugh on Slot 2!"]
execute if score abilitynumber3 abilities matches 40 run execute at @e[type=armor_stand,name=slot18] run summon firework_rocket ~ ~2 ~ {LifeTime:1,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"burst",has_twinkle:true,has_trail:true,colors:[I;13894251,16746496,16770560],fade_colors:[I;10224278]}]}}}}
execute if score abilitynumber3 abilities matches 40 if score ward slot18 matches 1.. run function chthree:wardslot18

#Fenrir
execute if score abilitynumber3 abilities matches 41 if score ward slot18 matches ..0 unless score curse slot18 matches 5 unless score curse slot18 matches 3 run scoreboard players set curseStacks slot18 0
execute if score abilitynumber3 abilities matches 41 if score ward slot18 matches ..0 unless score curse slot18 matches 5 unless score curse slot18 matches 3 run scoreboard players set curseDuration slot18 -1
execute if score abilitynumber3 abilities matches 41 if score ward slot18 matches ..0 unless score character# slot18 matches 41 unless score curse slot18 matches 5 run scoreboard players set curse slot18 3
execute if score abilitynumber3 abilities matches 41 run scoreboard players operation abilityDmg3 saves = fenrir abilityStats
execute if score abilitynumber3 abilities matches 41 if score slot21isatk booleans matches 1 run scoreboard players operation abilityDmg3 saves += slot21 atkmodifiers
execute if score abilitynumber3 abilities matches 41 if score slot22isatk booleans matches 1 run scoreboard players operation abilityDmg3 saves += slot22 atkmodifiers
execute if score abilitynumber3 abilities matches 41 if score slot23isatk booleans matches 1 run scoreboard players operation abilityDmg3 saves += slot23 atkmodifiers
execute if score abilitynumber3 abilities matches 41 run scoreboard players operation abilityDmg3 saves += marks slot18
execute if score abilitynumber3 abilities matches 41 run scoreboard players operation abilityDmg3 saves /= atkmultiplier slot18
execute if score abilitynumber3 abilities matches 41 run execute if score ward slot18 matches ..0 run scoreboard players operation shield slot18 -= abilityDmg3 saves
execute if score abilitynumber3 abilities matches 41 run execute at @n[type=armor_stand,name=slot18] run particle enchanted_hit ~ ~1 ~ 0.9 0.9 0.9 0.1 400
execute if score abilitynumber3 abilities matches 41 run tellraw @a[tag=game3] ["",{"selector":"@p[tag=p6]"}," used Mark of the Wolf on Slot 2!"]
execute if score abilitynumber3 abilities matches 41 run execute if score ward slot18 matches 0 if score shield slot18 matches ..0 run scoreboard players operation slot18 hp += shield slot18
execute if score abilitynumber3 abilities matches 41 if score ward slot18 matches 1.. run function chthree:wardslot18

#Grendel
execute if score abilitynumber3 abilities matches 43 run scoreboard players operation abilityDmg3 saves = grendel abilityStats
execute if score abilitynumber3 abilities matches 43 if score slot21isatk booleans matches 1 run scoreboard players operation abilityDmg3 saves += slot21 atkmodifiers
execute if score abilitynumber3 abilities matches 43 if score slot22isatk booleans matches 1 run scoreboard players operation abilityDmg3 saves += slot22 atkmodifiers
execute if score abilitynumber3 abilities matches 43 if score slot23isatk booleans matches 1 run scoreboard players operation abilityDmg3 saves += slot23 atkmodifiers
execute if score abilitynumber3 abilities matches 43 run scoreboard players operation abilityDmg3 saves += marks slot18
execute if score abilitynumber3 abilities matches 43 run scoreboard players operation abilityDmg3 saves /= atkmultiplier slot18
execute if score abilitynumber3 abilities matches 43 run execute if score ward slot18 matches ..0 run scoreboard players operation shield slot18 -= abilityDmg3 saves
execute if score abilitynumber3 abilities matches 43 run execute if score ward slot18 matches ..0 run scoreboard players operation slot18Disease disease += grendelDisease abilityStats
execute if score abilitynumber3 abilities matches 43 run execute at @e[type=armor_stand,name=slot18] run particle minecraft:noxious_gas ~ ~1 ~ 0.7 0.7 0.7 0.05 200
execute if score abilitynumber3 abilities matches 43 if score ward slot18 matches 1.. run function chthree:wardslot18
execute if score abilitynumber3 abilities matches 43 run function chthree:abilitygivetargetsp6
execute if score abilitynumber3 abilities matches -43 run scoreboard players operation abilityDmg3 saves = grendel abilityStats
execute if score abilitynumber3 abilities matches -43 if score slot21isatk booleans matches 1 run scoreboard players operation abilityDmg3 saves += slot21 atkmodifiers
execute if score abilitynumber3 abilities matches -43 if score slot22isatk booleans matches 1 run scoreboard players operation abilityDmg3 saves += slot22 atkmodifiers
execute if score abilitynumber3 abilities matches -43 if score slot23isatk booleans matches 1 run scoreboard players operation abilityDmg3 saves += slot23 atkmodifiers
execute if score abilitynumber3 abilities matches -43 run scoreboard players operation abilityDmg3 saves += marks slot18
execute if score abilitynumber3 abilities matches -43 run scoreboard players operation abilityDmg3 saves /= atkmultiplier slot18
execute if score abilitynumber3 abilities matches -43 run execute if score ward slot18 matches ..0 run scoreboard players operation shield slot18 -= abilityDmg3 saves
execute if score abilitynumber3 abilities matches -43 run execute if score ward slot18 matches ..0 run scoreboard players operation slot18Disease disease += grendelDisease abilityStats
execute if score abilitynumber3 abilities matches -43 run execute at @e[type=armor_stand,name=slot18] run particle minecraft:noxious_gas ~ ~1 ~ 0.7 0.7 0.7 0.05 200
execute if score abilitynumber3 abilities matches -43 if score ward slot18 matches 1.. run function chthree:wardslot18
execute if score abilitynumber3 abilities matches -43 run tellraw @a[tag=game3] ["",{"selector":"@p[tag=p6]"}," used Piercing Pestilence on Slot 2!"]
execute if score abilitynumber3 abilities matches 43 run tellraw @a[tag=game3] ["",{"selector":"@p[tag=p6]"}," used Piercing Pestilence on Slot 2!"]
execute if score abilitynumber3 abilities matches 43 run execute if score ward slot18 matches 0 if score shield slot18 matches ..0 run scoreboard players operation slot18 hp += shield slot18
execute if score abilitynumber3 abilities matches -43 run execute if score ward slot18 matches 0 if score shield slot18 matches ..0 run scoreboard players operation slot18 hp += shield slot18
#Frank
execute if score abilitynumber3 abilities matches 34 run scoreboard players operation abilityDmg3 saves = frank abilityStats
execute if score abilitynumber3 abilities matches 34 run scoreboard players operation shield slot18 -= abilityDmg3 saves
execute if score abilitynumber3 abilities matches 34 run scoreboard players operation slot18 hp += shield slot18
execute if score abilitynumber3 abilities matches 34 run execute at @e[name=slot18,type=armor_stand] run particle minecraft:angry_villager ~ ~1 ~ 0.9 0.9 0.9 0.5 15
execute if score abilitynumber3 abilities matches 34 run tellraw @a[tag=game3] ["",{"selector":"@p[tag=p5]"}," used IT'S ALIVE! to damage Slot 2!"]
execute if score abilitynumber3 abilities matches 34 run function chthree:abilitygivetargetsp5

execute if score abilitynumber3 abilities matches -34 run execute if score ward slot18 matches 0 run scoreboard players operation slot18 stun = frankDuration abilityStats
execute if score abilitynumber3 abilities matches -34 run execute if score ward slot18 matches 1.. run function chthree:wardslot18
execute if score abilitynumber3 abilities matches -34 run execute at @e[name=slot18,type=armor_stand] run particle minecraft:flash{color:[1.000,1.000,1.000,1.00]} ~ ~1 ~ 0.9 0.9 0.9 0.5 100
execute if score abilitynumber3 abilities matches -34 run tellraw @a[tag=game3] ["",{"selector":"@p[tag=p6]"}," used IT'S ALIVE! to stun Slot 2!"]

#Stein
execute if score abilitynumber3 abilities matches 35 run scoreboard players operation abilityDmg3 saves = stein abilityStats
execute if score abilitynumber3 abilities matches 35 if score slot21isatk booleans matches 1 run scoreboard players operation abilityDmg3 saves += slot21 atkmodifiers
execute if score abilitynumber3 abilities matches 35 if score slot22isatk booleans matches 1 run scoreboard players operation abilityDmg3 saves += slot22 atkmodifiers
execute if score abilitynumber3 abilities matches 35 if score slot23isatk booleans matches 1 run scoreboard players operation abilityDmg3 saves += slot23 atkmodifiers
execute if score abilitynumber3 abilities matches 35 run scoreboard players operation abilityDmg3 saves += marks slot18
execute if score abilitynumber3 abilities matches 35 run scoreboard players operation abilityDmg3 saves /= atkmultiplier slot18
execute if score abilitynumber3 abilities matches 35 run execute if score ward slot18 matches 0 run scoreboard players operation shield slot18 -= abilityDmg3 saves
execute if score abilitynumber3 abilities matches 35 run execute if score ward slot18 matches 0 if score shield slot18 matches ..0 run scoreboard players operation slot18 hp += shield slot18
execute if score abilitynumber3 abilities matches 35 run execute if score ward slot18 matches 1.. run function chthree:wardslot18
execute if score abilitynumber3 abilities matches 35 run execute at @e[name=slot18,type=armor_stand] run particle raid_omen ~ ~1 ~ 0.9 0.9 0.9 2 100
execute if score abilitynumber3 abilities matches 35 run tellraw @a[tag=game3] ["",{"selector":"@p[tag=p6]"}," used Reanimation Beam to damage Slot 2!"]
execute if score abilitynumber3 abilities matches 35 run function chthree:abilitygivetargetsp5reverse

execute if score abilitynumber3 abilities matches -35 if score slot18bleeding booleaneffects matches 0 run scoreboard players operation slot18 hp += abilityDmg3 saves
execute if score abilitynumber3 abilities matches -35 if score character# slot18 matches 35 run function chthree:cleanseslot18
execute if score abilitynumber3 abilities matches -35 if score character# slot18 matches 34 run function chthree:cleanseslot18
execute if score abilitynumber3 abilities matches -35 run execute at @e[name=slot18,type=armor_stand] run particle trial_omen ~ ~1 ~ 0.9 0.9 0.9 2 100
execute if score abilitynumber3 abilities matches -35 run tellraw @a[tag=game3] ["",{"selector":"@p[tag=p5]"}," used Reanimation Beam to heal Slot 2!"]

#Boogaloo
execute if score abilitynumber3 abilities matches 37 unless score curse slot18 matches 5 run scoreboard players set curseDuration slot18 -1
execute if score abilitynumber3 abilities matches 37 if score curseStacks slot18 matches 1.. unless score curse slot18 matches 5 run scoreboard players set curseStacks slot18 0
execute if score abilitynumber3 abilities matches 37 unless score curse slot18 matches 5 run scoreboard players set curse slot18 1
execute if score abilitynumber3 abilities matches 37 run execute at @e[name=slot18,type=armor_stand] run particle minecraft:sculk_soul ~ ~1 ~ 0.9 0.9 0.9 0.15 30
execute if score abilitynumber3 abilities matches 37 run tellraw @a[tag=game3] ["",{"selector":"@p[tag=p6]"}," used Devour Soul on Slot 2!"]

#Anubis
execute if score abilitynumber3 abilities matches 42 if score ward slot18 matches 0 run scoreboard players operation abilityDmg3 saves = anubis abilityStats
execute if score abilitynumber3 abilities matches 42 if score ward slot18 matches 0 run scoreboard players operation abilityDmg3 saves *= anubisUnusedP6 saves
execute if score abilitynumber3 abilities matches 42 run execute at @e[name=slot18,type=armor_stand] run particle minecraft:sonic_boom ~ ~2 ~ 0.03 0.03 0.03 0.01 100
execute if score abilitynumber3 abilities matches 42 run tellraw @a[tag=game3] ["",{"selector":"@p[tag=p6]"}," used Wrath of the Desert on Slot 2!"]
execute if score abilitynumber3 abilities matches 42 if score slot21isatk booleans matches 1 run scoreboard players operation abilityDmg3 saves += slot21 atkmodifiers
execute if score abilitynumber3 abilities matches 42 if score slot22isatk booleans matches 1 run scoreboard players operation abilityDmg3 saves += slot22 atkmodifiers
execute if score abilitynumber3 abilities matches 42 if score slot23isatk booleans matches 1 run scoreboard players operation abilityDmg3 saves += slot23 atkmodifiers
execute if score abilitynumber3 abilities matches 42 run scoreboard players operation abilityDmg3 saves += marks slot18
execute if score abilitynumber3 abilities matches 42 run scoreboard players operation abilityDmg3 saves /= atkmultiplier slot18
execute if score abilitynumber3 abilities matches 42 run execute if score ward slot18 matches 0 run scoreboard players operation shield slot18 -= abilityDmg3 saves
execute if score abilitynumber3 abilities matches 42 run execute if score ward slot18 matches 0 if score shield slot18 matches ..0 run scoreboard players operation slot18 hp += shield slot18
execute if score abilitynumber3 abilities matches 42 if score ward slot18 matches 1.. run function chthree:wardslot18

#This goes at the bottom
execute if score shield slot17 matches ..0 run scoreboard players set shield slot17 0
execute if score shield slot18 matches ..0 run scoreboard players set shield slot18 0
execute if score shield slot19 matches ..0 run scoreboard players set shield slot19 0
execute if score shield slot20 matches ..0 run scoreboard players set shield slot20 0
execute unless score abilitynumber3 abilities matches 34 unless score abilitynumber3 abilities matches 35 unless score abilitynumber3 abilities matches 36 unless score abilitynumber3 abilities matches 43 run function chthree:turnend
#Make sure to add burn to your abilities

#Token Abilities
execute if score abilitynumber3 abilities matches 34 run scoreboard players set abilitynumber3 abilities -34
execute if score abilitynumber3 abilities matches 35 run scoreboard players set abilitynumber3 abilities -35
execute if score abilitynumber3 abilities matches 36 run scoreboard players set abilitynumber3 abilities -36
execute if score abilitynumber3 abilities matches 43 run scoreboard players set abilitynumber3 abilities -43
