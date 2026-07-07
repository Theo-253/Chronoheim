effect clear @a[tag=game3] strength
clear @p[tag=game3]
#Arthur Ability
execute if score abilitynumber3 abilities matches 2 run function chthree:cleanseslot23
#Deuce ability
execute if score abilitynumber3 abilities matches 3 run scoreboard players operation abilityDmg3 saves = deuce heroattack
execute if score abilitynumber3 abilities matches 3 if score slot17isatk booleans matches 1 run scoreboard players operation abilityDmg3 saves += slot17 atkmodifiers
execute if score abilitynumber3 abilities matches 3 if score slot18isatk booleans matches 1 run scoreboard players operation abilityDmg3 saves += slot18 atkmodifiers
execute if score abilitynumber3 abilities matches 3 if score slot19isatk booleans matches 1 run scoreboard players operation abilityDmg3 saves += slot19 atkmodifiers
execute if score abilitynumber3 abilities matches 3 run scoreboard players operation abilityDmg3 saves += marks slot23
execute if score abilitynumber3 abilities matches 3 if score slot18isatk booleans matches 1 run scoreboard players operation abilityDmg3 saves *= deuceMultLeader abilityStats
execute if score abilitynumber3 abilities matches 3 if score slot18isatk booleans matches 0 run scoreboard players operation abilityDmg3 saves *= deuceMult abilityStats
execute if score abilitynumber3 abilities matches 3 run scoreboard players operation abilityDmg3 saves /= atkmultiplier slot23
execute if score abilitynumber3 abilities matches 3 run execute if score ward slot23 matches 0 run scoreboard players operation shield slot23 -= abilityDmg3 saves
execute if score abilitynumber3 abilities matches 3 run execute if score ward slot23 matches 0 if score shield slot23 matches ..0 run scoreboard players operation slot23 hp += shield slot23
execute if score abilitynumber3 abilities matches 3 run execute if score ward slot23 matches 1.. run function chthree:wardslot23
execute if score abilitynumber3 abilities matches 3 run execute at @e[name=slot23,type=armor_stand] run particle crit ~ ~1 ~ 0.3 0.3 0.3 2 100

execute if score abilitynumber3 abilities matches 3 run tellraw @a[tag=game3] ["",{"selector":"@p[tag=p5]"}," used Double Punch on Slot 7!"]

#Garabaldi Ability
execute if score abilitynumber3 abilities matches 24 if score slot23 hp matches 1.. if score slot23bleeding booleaneffects matches 0 run scoreboard players operation slot23 hp += garabaldiHeal abilityStats
execute if score abilitynumber3 abilities matches 24 if score slot23 hp matches 1.. if score slot23bleeding booleaneffects matches 0 if score character# slot22 matches 24 run scoreboard players operation slot23 hp += garabaldiLeader abilityStats
execute if score abilitynumber3 abilities matches 24 if score slot23 hp matches 1.. run scoreboard players set ward slot23 2
execute if score abilitynumber3 abilities matches 24 run execute at @n[type=armor_stand,name=slot23] run particle minecraft:composter ~ ~1 ~ 0.9 0.9 0.9 0.5 100
execute if score abilitynumber3 abilities matches 24 run tellraw @a[tag=game3] ["",{"selector":"@p[tag=p6]"}," used Bubble Shield on Slot 7!"]

#Juniper Ability
execute if score abilitynumber3 abilities matches 27 run scoreboard players operation abilityDmg3 saves = juniper abilityStats
execute if score abilitynumber3 abilities matches 27 if score slot17isatk booleans matches 1 run scoreboard players operation abilityDmg3 saves += slot17 atkmodifiers
execute if score abilitynumber3 abilities matches 27 if score slot18isatk booleans matches 1 run scoreboard players operation abilityDmg3 saves += slot18 atkmodifiers
execute if score abilitynumber3 abilities matches 27 if score slot19isatk booleans matches 1 run scoreboard players operation abilityDmg3 saves += slot19 atkmodifiers
execute if score abilitynumber3 abilities matches 27 run scoreboard players operation abilityDmg3 saves += marks slot23
execute if score abilitynumber3 abilities matches 27 run scoreboard players operation abilityDmg3 saves /= atkmultiplier slot23
execute if score abilitynumber3 abilities matches 27 run execute if score ward slot23 matches 0 run scoreboard players operation shield slot23 -= abilityDmg3 saves
execute if score abilitynumber3 abilities matches 27 run execute if score ward slot23 matches 0 run scoreboard players operation slot23 stun = juniperStun abilityStats
execute if score abilitynumber3 abilities matches 27 run execute if score ward slot23 matches 0 if score shield slot23 matches ..0 run scoreboard players operation slot23 hp += shield slot23
execute if score abilitynumber3 abilities matches 27 run execute if score ward slot23 matches 1.. run function chthree:wardslot23
execute if score abilitynumber3 abilities matches 27 run execute at @e[name=slot23,type=armor_stand] run particle firefly ~ ~1 ~ 0.3 0.3 0.3 1 100

execute if score abilitynumber3 abilities matches 27 run tellraw @a[tag=game3] ["",{"selector":"@p[tag=p5]"}," used Pixie Dust on Slot 7!"]

#Juniper Basic
execute if score abilitynumber3 abilities matches -2 run execute if score slot23bleeding booleaneffects matches 0 run scoreboard players operation slot23 hp += juniper heroattack
execute if score abilitynumber3 abilities matches -2 run execute at @n[type=armor_stand,name=slot23] run particle minecraft:composter ~ ~1 ~ 0.9 0.9 0.9 0.5 100
execute if score abilitynumber3 abilities matches -2 run execute if score slot23bleeding booleaneffects matches 0 if score slot22isatk booleans matches 1 run scoreboard players operation slot23 hp += juniperLeader heroattack

#K.O.N.G ability
execute if score abilitynumber3 abilities matches 7 run scoreboard players operation abilityDmg3 saves = kong abilityStats
execute if score abilitynumber3 abilities matches 7 if score slot17isatk booleans matches 1 run scoreboard players operation abilityDmg3 saves += slot17 atkmodifiers
execute if score abilitynumber3 abilities matches 7 if score slot18isatk booleans matches 1 run scoreboard players operation abilityDmg3 saves += slot18 atkmodifiers
execute if score abilitynumber3 abilities matches 7 if score slot19isatk booleans matches 1 run scoreboard players operation abilityDmg3 saves += slot19 atkmodifiers
execute if score abilitynumber3 abilities matches 7 run scoreboard players operation abilityDmg3 saves += marks slot23
execute if score abilitynumber3 abilities matches 7 run scoreboard players operation abilityDmg3 saves /= atkmultiplier slot23
execute if score abilitynumber3 abilities matches 7 run execute if score ward slot23 matches 0 run scoreboard players operation shield slot23 -= abilityDmg3 saves
execute if score abilitynumber3 abilities matches 7 run execute if score ward slot23 matches 0 if score kongSpDebuffDuration abilityStats > durationSlot23 speedDebuffs run scoreboard players operation durationSlot23 speedDebuffs = kongSpDebuffDuration abilityStats
execute if score abilitynumber3 abilities matches 7 run execute if score ward slot23 matches 0 if score kongDmgDebuffDuration abilityStats > debuffDurationSlot23 atkmodifiers run scoreboard players operation debuffDurationSlot23 atkmodifiers = kongDmgDebuffDuration abilityStats
execute if score abilitynumber3 abilities matches 7 run execute if score ward slot23 matches 0 run scoreboard players operation speedDebuffSlot23 speedDebuffs += kongSpDebuff abilityStats
execute if score abilitynumber3 abilities matches 7 run execute if score ward slot23 matches 0 run scoreboard players operation attackDebuffSlot23 atkmodifiers += kongDmgDebuff abilityStats
execute if score abilitynumber3 abilities matches 7 run execute if score ward slot23 matches 0 run execute if score slot18isatk booleans matches 1 run scoreboard players operation attackDebuffSlot23 atkmodifiers += kongLeaderDmgDebuff abilityStats
execute if score abilitynumber3 abilities matches 7 run execute if score ward slot23 matches 0 run execute if score slot18isatk booleans matches 1 run scoreboard players operation speedDebuffSlot23 speedDebuffs += kongLeaderSpDebuff abilityStats
execute if score abilitynumber3 abilities matches 7 run execute if score ward slot23 matches 0 run execute if score slot18isatk booleans matches 1 run scoreboard players operation speed slot23 -= kongLeaderSpDebuff abilityStats
execute if score abilitynumber3 abilities matches 7 run execute if score ward slot23 matches 0 run scoreboard players operation speed slot23 -= kongSpDebuff abilityStats
execute if score abilitynumber3 abilities matches 7 run execute if score ward slot23 matches 0 if score shield slot23 matches ..0 run scoreboard players operation slot23 hp += shield slot23
execute if score abilitynumber3 abilities matches 7 run execute if score ward slot23 matches 1.. run function chthree:wardslot23
execute if score abilitynumber3 abilities matches 7 run execute at @n[type=armor_stand,name=slot23] run particle minecraft:explosion_emitter ~ ~1 ~
execute if score abilitynumber3 abilities matches 7 run tellraw @a[tag=game3] ["",{"selector":"@p[tag=p5]"}," used B.A.N.A.N.A S.L.A.M.M.A! on Slot 7!"]

#Robyn Ability
execute if score abilitynumber3 abilities matches 9 if score ward slot23 matches 0 if score durationSlot23 mark < robynDuration abilityStats run scoreboard players operation durationSlot23 mark = robynDuration abilityStats
execute if score abilitynumber3 abilities matches 9 if score ward slot23 matches 0 run scoreboard players operation marks slot23 += robyn abilityStats
execute if score abilitynumber3 abilities matches 9 if score ward slot23 matches 1 run function chthree:wardslot23
execute if score abilitynumber3 abilities matches 9 run execute at @n[type=armor_stand,name=slot23] run particle minecraft:angry_villager ~ ~1 ~ 0.9 0.9 0.9 1 50
execute if score abilitynumber3 abilities matches 9 run tellraw @a[tag=game3] ["",{"selector":"@p[tag=p5]"}," used Most Wanted on Slot 7!"]

#Robo
execute if score abilitynumber3 abilities matches 5 if score durationSlot23 shield < roboDuration abilityStats run scoreboard players operation durationSlot23 shield = roboDuration abilityStats
execute if score abilitynumber3 abilities matches 5 run scoreboard players operation shield slot23 += robo abilityStats
execute if score abilitynumber3 abilities matches 5 if score slot22isatk booleans matches 1 run scoreboard players operation shield slot23 += roboLeader abilityStats
execute if score abilitynumber3 abilities matches 5 run execute at @n[name=slot23,type=armor_stand] run particle minecraft:wax_off ~ ~1 ~ 0.6 0.6 0.6 0.0001 400
execute if score abilitynumber3 abilities matches 5 run tellraw @a[tag=game3] ["",{"selector":"@p[tag=p6]"}," used Force Field on Slot 7!"]

#Kirin
execute if score abilitynumber3 abilities matches 8 if score buffDurationSlot23 atkmodifiers < kirinDuration abilityStats run scoreboard players operation buffDurationSlot23 atkmodifiers = kirinDuration abilityStats
execute if score abilitynumber3 abilities matches 8 run scoreboard players operation attackBuffSlot23 atkmodifiers += kirin abilityStats
execute if score abilitynumber3 abilities matches 8 if score slot22isatk booleans matches 1 if score slot23bleeding booleaneffects matches 0 run scoreboard players operation slot23 hp += kirinLeader abilityStats
execute if score abilitynumber3 abilities matches 8 run tellraw @a[tag=game3] ["",{"selector":"@p[tag=p6]"}," used Mythical Empowerment on Slot 7!"]
execute if score abilitynumber3 abilities matches 8 at @e[name=slot23] run particle minecraft:trial_spawner_detection ~ ~1 ~ 0.9 0.9 0.9 0.1 100

#Ace
execute if score abilitynumber3 abilities matches 12 if score ward slot23 matches 0 run scoreboard players operation cooldown slot23 = aceSetCooldown abilityStats
execute if score abilitynumber3 abilities matches 12 run tellraw @a[tag=game3] ["",{"selector":"@p[tag=p5]"}," used Ace of Spades on Slot 7!"]
execute if score abilitynumber3 abilities matches 12 if score ward slot23 matches 1.. run function chthree:wardslot23
execute if score abilitynumber3 abilities matches 12 at @e[name=slot23] run particle minecraft:enchanted_hit ~ ~1 ~ 0.9 0.9 0.9 0.5 100
execute if score abilitynumber3 abilities matches 12 run execute if score character# slot18 matches 12 run scoreboard players operation durationSlot23 speedDebuffs = aceLeaderDuration abilityStats
execute if score abilitynumber3 abilities matches 12 run execute if score character# slot18 matches 12 run scoreboard players operation speedDebuffSlot23 speedDebuffs = aceLeader abilityStats
execute if score abilitynumber3 abilities matches 12 run execute if score character# slot18 matches 12 run scoreboard players operation speed slot23 -= aceLeader abilityStats
#Gabriel
execute if score abilitynumber3 abilities matches 22 run scoreboard players operation abilityDmg3 saves = gabriel abilityStats
execute if score abilitynumber3 abilities matches 22 if score slot17isatk booleans matches 1 run scoreboard players operation abilityDmg3 saves += slot17 atkmodifiers
execute if score abilitynumber3 abilities matches 22 if score slot18isatk booleans matches 1 run scoreboard players operation abilityDmg3 saves += slot18 atkmodifiers
execute if score abilitynumber3 abilities matches 22 if score slot19isatk booleans matches 1 run scoreboard players operation abilityDmg3 saves += slot19 atkmodifiers
execute if score abilitynumber3 abilities matches 22 if score slot17 hp matches ..0 run scoreboard players operation abilityDmg3 saves += gabrielDeath abilityStats
execute if score abilitynumber3 abilities matches 22 if score slot18 hp matches ..0 run scoreboard players operation abilityDmg3 saves += gabrielDeath abilityStats
execute if score abilitynumber3 abilities matches 22 if score slot19 hp matches ..0 run scoreboard players operation abilityDmg3 saves += gabrielDeath abilityStats
execute if score abilitynumber3 abilities matches 22 run scoreboard players operation abilityDmg3 saves += marks slot23
execute if score abilitynumber3 abilities matches 22 run scoreboard players operation abilityDmg3 saves /= atkmultiplier slot23
execute if score abilitynumber3 abilities matches 22 run execute if score ward slot23 matches 0 run scoreboard players operation shield slot23 -= abilityDmg3 saves
execute if score abilitynumber3 abilities matches 22 run execute if score ward slot23 matches 0 if score shield slot23 matches ..0 run scoreboard players operation slot23 hp += shield slot23
execute if score abilitynumber3 abilities matches 22 if score slot18isatk booleans matches 1 if score ward slot23 matches 0 run scoreboard players operation abilityDmg3 saves /= gabrielLeader abilityStats
execute if score abilitynumber3 abilities matches 22 if score slot18isatk booleans matches 1 if score ward slot23 matches 0 run scoreboard players operation slot18 hp += abilityDmg3 saves
execute if score abilitynumber3 abilities matches 22 at @e[name=slot23] run particle minecraft:flash{color:[1.000,1.000,1.000,1.00]} ~ ~1 ~ 0.9 0.9 0.9 0.5 100
execute if score abilitynumber3 abilities matches 22 run execute if score ward slot23 matches 1.. run function chthree:wardslot23
#Gatsby
execute if score abilitynumber3 abilities matches 23 if score ward slot23 matches 0 run scoreboard players operation slot23 stun = gatsbyDuration abilityStats
execute if score abilitynumber3 abilities matches 23 if score ward slot23 matches 0 run scoreboard players operation savehp23 saves = slot23 hp
execute if score abilitynumber3 abilities matches 23 if score ward slot23 matches 0 run scoreboard players operation invincibleSlot23 booleaneffects = gatsbyDuration abilityStats
execute if score abilitynumber3 abilities matches 23 if score ward slot23 matches 0 run scoreboard players operation slot23EatenDuration abilities = gatsbyDuration abilityStats
execute if score abilitynumber3 abilities matches 23 if score ward slot23 matches 0 at @e[name=slot23] run execute at @e[distance=..4,type=!player] run tp @n[type=!minecraft:player,distance=..4] ~ ~-20 ~
execute if score abilitynumber3 abilities matches 23 run execute if score ward slot23 matches 1.. run function chthree:wardslot23
execute if score abilitynumber3 abilities matches 23 if score durationSlot23-17 fear < gatsbyDuration abilityStats run scoreboard players operation durationSlot23-17 fear = gatsbyDuration abilityStats
execute if score abilitynumber3 abilities matches 23 if score durationSlot23-18 fear < gatsbyDuration abilityStats run scoreboard players operation durationSlot23-18 fear = gatsbyDuration abilityStats
execute if score abilitynumber3 abilities matches 23 if score durationSlot23-19 fear < gatsbyDuration abilityStats run scoreboard players operation durationSlot23-19 fear = gatsbyDuration abilityStats
execute if score abilitynumber3 abilities matches 23 if score durationSlot23-20 fear < gatsbyDuration abilityStats run scoreboard players operation durationSlot23-20 fear = gatsbyDuration abilityStats
execute if score abilitynumber3 abilities matches 23 if score ward slot22 matches 0 if score slot18isatk booleans matches 1 if score debuffDurationSlot22 atkmodifiers < gatsbyDuration abilityStats run scoreboard players operation debuffDurationSlot22 atkmodifiers = gatsbyDuration abilityStats
execute if score abilitynumber3 abilities matches 23 if score ward slot21 matches 0 if score slot18isatk booleans matches 1 if score debuffDurationSlot21 atkmodifiers < gatsbyDuration abilityStats run scoreboard players operation debuffDurationSlot21 atkmodifiers = gatsbyDuration abilityStats
execute if score abilitynumber3 abilities matches 23 if score ward slot24 matches 0 if score slot18isatk booleans matches 1 if score debuffDurationSlot24 atkmodifiers < gatsbyDuration abilityStats run scoreboard players operation debuffDurationSlot24 atkmodifiers = gatsbyDuration abilityStats
execute if score abilitynumber3 abilities matches 23 if score ward slot22 matches 0 if score slot18isatk booleans matches 1 run scoreboard players operation attackDebuffSlot22 atkmodifiers = gatsbyLeader abilityStats
execute if score abilitynumber3 abilities matches 23 if score ward slot21 matches 0 if score slot18isatk booleans matches 1 run scoreboard players operation attackDebuffSlot21 atkmodifiers = gatsbyLeader abilityStats
execute if score abilitynumber3 abilities matches 23 if score ward slot24 matches 0 if score slot18isatk booleans matches 1 run scoreboard players operation attackDebuffSlot24 atkmodifiers = gatsbyLeader abilityStats
execute if score abilitynumber3 abilities matches 23 if score ward slot22 matches 1.. if score slot18isatk booleans matches 1 run function chthree:wardslot22
execute if score abilitynumber3 abilities matches 23 if score ward slot21 matches 1.. if score slot18isatk booleans matches 1 run function chthree:wardslot21
execute if score abilitynumber3 abilities matches 23 if score ward slot24 matches 1.. if score slot18isatk booleans matches 1 run function chthree:wardslot24
execute if score abilitynumber3 abilities matches 23 run tellraw @a[tag=game3] ["",{"selector":"@p[tag=p5]"}," used Consume on Slot 7!"]
execute if score abilitynumber3 abilities matches 23 at @e[name=slot23] run particle minecraft:falling_nectar ~ ~1 ~ 0.9 0.9 0.9 0.1 100
execute if score abilitynumber3 abilities matches 23 if score slot18isatk booleans matches 1 at @e[name=slot22] run particle minecraft:falling_nectar ~ ~1 ~ 0.9 0.9 0.9 0.1 50
execute if score abilitynumber3 abilities matches 23 if score slot18isatk booleans matches 1 at @e[name=slot21] run particle minecraft:falling_nectar ~ ~1 ~ 0.9 0.9 0.9 0.1 50
execute if score abilitynumber3 abilities matches 23 if score slot18isatk booleans matches 1 at @e[name=slot24] run particle minecraft:falling_nectar ~ ~1 ~ 0.9 0.9 0.9 0.1 50
#Old Boomer
execute if score abilitynumber3 abilities matches 25 run scoreboard players operation abilityDmg3 saves = boomer abilityStats
execute if score abilitynumber3 abilities matches 25 if score slot17isatk booleans matches 1 run scoreboard players operation abilityDmg3 saves += slot17 atkmodifiers
execute if score abilitynumber3 abilities matches 25 if score slot18isatk booleans matches 1 run scoreboard players operation abilityDmg3 saves += slot18 atkmodifiers
execute if score abilitynumber3 abilities matches 25 if score slot19isatk booleans matches 1 run scoreboard players operation abilityDmg3 saves += slot19 atkmodifiers
execute if score abilitynumber3 abilities matches 25 run scoreboard players operation abilityDmg3 saves += marks slot23
execute if score abilitynumber3 abilities matches 25 run scoreboard players operation abilityDmg3 saves /= atkmultiplier slot23
execute if score abilitynumber3 abilities matches 25 run execute if score ward slot23 matches 0 run scoreboard players operation shield slot23 -= abilityDmg3 saves
execute if score abilitynumber3 abilities matches 25 run execute if score ward slot23 matches 0 if score shield slot23 matches ..0 run scoreboard players operation slot23 hp += shield slot23
execute if score abilitynumber3 abilities matches 25 run execute if score ward slot23 matches 1.. run function chthree:wardslot23
execute if score abilitynumber3 abilities matches 25 at @e[name=slot23] run particle minecraft:explosion ~ ~1 ~ 0.9 0.9 0.9 0.1 100
execute if score abilitynumber3 abilities matches 25 if score slot18isatk booleans matches 1 at @e[name=slot22] run particle minecraft:explosion ~ ~1 ~ 0.9 0.9 0.9 0.1 50
execute if score abilitynumber3 abilities matches 25 if score slot18isatk booleans matches 1 at @e[name=slot24] run particle minecraft:explosion ~ ~1 ~ 0.9 0.9 0.9 0.1 50
execute if score abilitynumber3 abilities matches 25 run tellraw @a[tag=game3] ["",{"selector":"@p[tag=p5]"}," used KABOOM! on Slot 7!"]
execute if score abilitynumber3 abilities matches 25 if score slot18isatk booleans matches 1 run scoreboard players operation abilityDmg3 saves = boomer abilityStats
execute if score abilitynumber3 abilities matches 25 if score slot18isatk booleans matches 1 run scoreboard players operation abilityDmg3 saves += slot18 atkmodifiers
execute if score abilitynumber3 abilities matches 25 if score slot18isatk booleans matches 1 run scoreboard players operation abilityDmg3 saves /= boomerLeader abilityStats
execute if score abilitynumber3 abilities matches 25 if score slot18isatk booleans matches 1 run scoreboard players operation abilityDmg3 saves += marks slot22
execute if score abilitynumber3 abilities matches 25 if score slot18isatk booleans matches 1 run scoreboard players operation abilityDmg3 saves /= atkmultiplier slot22
execute if score abilitynumber3 abilities matches 25 if score slot18isatk booleans matches 1 run execute if score ward slot22 matches 0 run scoreboard players operation shield slot22 -= abilityDmg3 saves
execute if score abilitynumber3 abilities matches 25 if score slot18isatk booleans matches 1 run execute if score ward slot22 matches 0 if score shield slot22 matches ..0 run scoreboard players operation slot22 hp += shield slot22
execute if score abilitynumber3 abilities matches 25 if score slot18isatk booleans matches 1 run execute if score ward slot22 matches 1.. run function chthree:wardslot22
execute if score abilitynumber3 abilities matches 25 if score slot18isatk booleans matches 1 run scoreboard players operation abilityDmg3 saves = boomer abilityStats
execute if score abilitynumber3 abilities matches 25 if score slot18isatk booleans matches 1 run scoreboard players operation abilityDmg3 saves += slot18 atkmodifiers
execute if score abilitynumber3 abilities matches 25 if score slot18isatk booleans matches 1 run scoreboard players operation abilityDmg3 saves /= boomerLeader abilityStats
execute if score abilitynumber3 abilities matches 25 if score slot18isatk booleans matches 1 run scoreboard players operation abilityDmg3 saves += marks slot24
execute if score abilitynumber3 abilities matches 25 if score slot18isatk booleans matches 1 run scoreboard players operation abilityDmg3 saves /= atkmultiplier slot24
execute if score abilitynumber3 abilities matches 25 if score slot18isatk booleans matches 1 run execute if score ward slot24 matches 0 run scoreboard players operation shield slot24 -= abilityDmg3 saves
execute if score abilitynumber3 abilities matches 25 if score slot18isatk booleans matches 1 run execute if score ward slot24 matches 0 if score shield slot24 matches ..0 run scoreboard players operation slot24 hp += shield slot24
execute if score abilitynumber3 abilities matches 25 if score slot18isatk booleans matches 1 run execute if score ward slot24 matches 1.. run function chthree:wardslot24

#Ripper
execute if score abilitynumber3 abilities matches 29 if score slot23 hp <= ripper abilityStats if score ward slot23 matches 0 if score invincibleSlot23 booleaneffects matches 0 run scoreboard players set slot23 hp 0
execute if score abilitynumber3 abilities matches 29 if score slot23 hp <= ripper abilityStats if score invincibleSlot23 booleaneffects matches 0 if score ward slot23 matches 1.. run function chthree:wardslot23
execute if score abilitynumber3 abilities matches 29 run tellraw @a[tag=game3] ["",{"selector":"@p[tag=p5]"}," used Execute on Slot 7!"]
execute if score abilitynumber3 abilities matches 29 at @e[name=slot23] run particle minecraft:raid_omen ~ ~1 ~ 0.9 0.9 0.9 0.1 100


#Domino
execute if score abilitynumber3 abilities matches 30 run scoreboard players operation abilityDmg3 saves = domino abilityStats
execute if score abilitynumber3 abilities matches 30 if score slot17isatk booleans matches 1 run scoreboard players operation abilityDmg3 saves += slot17 atkmodifiers
execute if score abilitynumber3 abilities matches 30 if score slot18isatk booleans matches 1 run scoreboard players operation abilityDmg3 saves += slot18 atkmodifiers
execute if score abilitynumber3 abilities matches 30 if score slot19isatk booleans matches 1 run scoreboard players operation abilityDmg3 saves += slot19 atkmodifiers
execute if score abilitynumber3 abilities matches 30 run scoreboard players operation abilityDmg3 saves += marks slot23
execute if score abilitynumber3 abilities matches 30 run scoreboard players operation abilityDmg3 saves /= atkmultiplier slot23
execute if score abilitynumber3 abilities matches 30 run execute if score ward slot23 matches 0 run scoreboard players operation shield slot23 -= abilityDmg3 saves
execute if score abilitynumber3 abilities matches 30 run execute if score ward slot23 matches 0 if score shield slot23 matches ..0 run scoreboard players operation slot23 hp += shield slot23
execute if score abilitynumber3 abilities matches 30 if score ward slot23 matches 0 if score durationSlot23 poison < dominoDuration abilityStats run scoreboard players operation durationSlot23 poison = dominoDuration abilityStats 
execute if score abilitynumber3 abilities matches 30 if score ward slot23 matches 0 run scoreboard players operation slot23Poison poison += dominoPoison abilityStats 
execute if score abilitynumber3 abilities matches 30 run execute if score ward slot23 matches 1.. run function chthree:wardslot23
execute if score abilitynumber3 abilities matches 30 at @e[name=slot23] run particle minecraft:trial_omen ~ ~1 ~ 0.9 0.9 0.9 0.1 100
execute if score abilitynumber3 abilities matches 30 run tellraw @a[tag=game3] ["",{"selector":"@p[tag=p5]"}," used Poison Dart on Slot 7!"]

#Scythe
execute if score abilitynumber3 abilities matches 32 if score ward slot23 matches 0 run scoreboard players operation slot23 hp /= scytheDivide abilityStats
execute if score abilitynumber3 abilities matches 32 if score ward slot23 matches 0 run scoreboard players operation slot23 hp *= scytheMult abilityStats
execute if score abilitynumber3 abilities matches 32 if score ward slot23 matches 0 if score slot18isatk booleans matches 1 if score durationSlot23 mark < scytheDuration abilityStats run scoreboard players operation durationSlot23 mark = scytheDuration abilityStats
execute if score abilitynumber3 abilities matches 32 if score ward slot23 matches 0 if score slot18isatk booleans matches 1 run scoreboard players operation marks slot23 += scytheLeader abilityStats
execute if score abilitynumber3 abilities matches 32 if score ward slot23 matches 1.. run function chthree:wardslot23
execute if score abilitynumber3 abilities matches 32 at @e[name=slot23] run particle minecraft:sculk_soul ~ ~1 ~ 0.9 0.9 0.9 0.1 100
execute if score abilitynumber3 abilities matches 32 run tellraw @a[tag=game3] ["",{"selector":"@p[tag=p5]"}," used Cull the Weak on Slot 7!"]

#Doc Basic Attack
execute if score abilitynumber3 abilities matches -1 if score ward slot23 matches 0 run scoreboard players operation slot23Disease disease += doc heroattack
execute if score abilitynumber3 abilities matches -1 if score ward slot23 matches 0 if score slot18isatk booleans matches 1 run scoreboard players operation slot23Disease disease += docLeader heroattack
execute if score abilitynumber3 abilities matches -1 run execute if score ward slot23 matches 1.. run function chthree:wardslot23
execute if score abilitynumber3 abilities matches -1 at @e[name=slot23] run particle minecraft:trial_omen ~ ~1 ~ 0.9 0.9 0.9 0.1 50

#Subject ability
execute if score abilitynumber3 abilities matches 4 if score ward slot23 matches 0 if score durationSlot23 poison < subjectDuration abilityStats run scoreboard players operation durationSlot23 poison = subjectDuration abilityStats
execute if score abilitynumber3 abilities matches 4 if score ward slot23 matches 0 run scoreboard players operation slot23Poison poison += subject abilityStats
execute if score abilitynumber3 abilities matches 4 if score ward slot23 matches 0 if score slot18isatk booleans matches 1 run scoreboard players operation slot23Poison poison += subjectLeader abilityStats
execute if score abilitynumber3 abilities matches 4 at @e[name=slot23] run particle minecraft:trial_omen ~ ~1 ~ 0.9 0.9 0.9 0.1 50
execute if score abilitynumber3 abilities matches 4 run execute if score ward slot23 matches 1.. run function chthree:wardslot23
execute if score abilitynumber3 abilities matches 4 run tellraw @a[tag=game3] ["",{"selector":"@p[tag=p5]"}," used Contagion on Slot 7!"]

#Healing Totem
execute if score abilitynumber3 abilities matches -3 run execute if score slot23bleeding booleaneffects matches 0 run scoreboard players operation slot23 hp += healingTotemHeal spellStats
execute if score abilitynumber3 abilities matches -3 at @e[name=slot23] run particle minecraft:composter ~ ~1 ~ 0.9 0.9 0.9 0.1 50

#Eidolon Basic Attack
execute if score abilitynumber3 abilities matches -4 run execute if score ward slot23 matches 0 if score durationSlot17-23 fear <= eidolonFearDuration abilityStats if score slot17isatk booleans matches 1 run scoreboard players operation durationSlot17-23 fear = eidolonFearDuration abilityStats
execute if score abilitynumber3 abilities matches -4 run execute if score ward slot23 matches 0 if score durationSlot18-23 fear <= eidolonFearDuration abilityStats if score slot18isatk booleans matches 1 run scoreboard players operation durationSlot18-23 fear = eidolonFearDuration abilityStats
execute if score abilitynumber3 abilities matches -4 run execute if score ward slot23 matches 0 if score durationSlot19-23 fear <= eidolonFearDuration abilityStats if score slot19isatk booleans matches 1 run scoreboard players operation durationSlot19-23 fear = eidolonFearDuration abilityStats
execute if score abilitynumber3 abilities matches -4 run scoreboard players operation abilityDmg3 saves = eidolon heroattack
execute if score abilitynumber3 abilities matches -4 if score slot17isatk booleans matches 1 run scoreboard players operation abilityDmg3 saves += slot17 atkmodifiers
execute if score abilitynumber3 abilities matches -4 if score slot18isatk booleans matches 1 run scoreboard players operation abilityDmg3 saves += slot18 atkmodifiers
execute if score abilitynumber3 abilities matches -4 if score slot19isatk booleans matches 1 run scoreboard players operation abilityDmg3 saves += slot19 atkmodifiers
execute if score abilitynumber3 abilities matches -4 run scoreboard players operation abilityDmg3 saves += marks slot23
execute if score abilitynumber3 abilities matches -4 run scoreboard players operation abilityDmg3 saves /= atkmultiplier slot23
execute if score abilitynumber3 abilities matches -4 run execute if score ward slot23 matches 0 run scoreboard players operation shield slot23 -= abilityDmg3 saves
execute if score abilitynumber3 abilities matches -4 run execute if score ward slot23 matches 0 if score shield slot23 matches ..0 run scoreboard players operation slot23 hp += shield slot23
execute if score abilitynumber3 abilities matches -4 run execute if score ward slot23 matches 1.. run function chthree:wardslot23
execute if score abilitynumber3 abilities matches -4 run execute at @e[name=slot23,type=armor_stand] run particle minecraft:crit ~ ~1 ~ 0.9 0.9 0.9 0.5 100

#Jones Ability
execute if score abilitynumber3 abilities matches 31 run scoreboard players operation abilityDmg3 saves = jonesDmg abilityStats
execute if score abilitynumber3 abilities matches 31 if score slot17isatk booleans matches 1 run scoreboard players operation abilityDmg3 saves += slot17 atkmodifiers
execute if score abilitynumber3 abilities matches 31 if score slot18isatk booleans matches 1 run scoreboard players operation abilityDmg3 saves += slot18 atkmodifiers
execute if score abilitynumber3 abilities matches 31 if score slot19isatk booleans matches 1 run scoreboard players operation abilityDmg3 saves += slot19 atkmodifiers
execute if score abilitynumber3 abilities matches 31 run scoreboard players operation abilityDmg3 saves += marks slot23
execute if score abilitynumber3 abilities matches 31 run scoreboard players operation abilityDmg3 saves /= atkmultiplier slot23
execute if score abilitynumber3 abilities matches 31 run execute if score ward slot23 matches 0 run scoreboard players operation shield slot23 -= abilityDmg3 saves
execute if score abilitynumber3 abilities matches 31 run execute if score ward slot23 matches 0 if score shield slot23 matches ..0 run scoreboard players operation slot23 hp += shield slot23
execute if score abilitynumber3 abilities matches 31 run execute if score ward slot23 matches 0 run scoreboard players operation disarmedslot23 booleaneffects = jones abilityStats
execute if score abilitynumber3 abilities matches 31 run execute if score ward slot23 matches 1 run function chthree:wardslot23
execute if score abilitynumber3 abilities matches 31 run tellraw @a[tag=game3] ["",{"selector":"@p[tag=p5]"}," used Lasso on Slot 7!"]
execute if score abilitynumber3 abilities matches 31 at @e[name=slot23] run particle minecraft:crit ~ ~1 ~ 0.9 0.9 0.9 0.1 100


#Sherman Basic
execute if score abilitynumber3 abilities matches -5 run execute unless score slot23bleeding booleaneffects matches 1.. run scoreboard players operation slot23 hp += sherman heroattack
execute if score abilitynumber3 abilities matches -5 run tellraw @a[tag=game3] ["",{"selector":"@p[tag=p6]"}," healed Slot 7!"]
execute if score abilitynumber3 abilities matches -5 run execute at @n[type=armor_stand,name=slot23] run particle minecraft:composter ~ ~1 ~ 0.9 0.9 0.9 0.5 80


#Sherman Ability
execute if score abilitynumber3 abilities matches 33 run execute if score ward slot23 matches 0 if score debuffDurationSlot23 atkmodifiers < shermanDuration abilityStats run scoreboard players operation debuffDurationSlot23 atkmodifiers = shermanDuration abilityStats
execute if score abilitynumber3 abilities matches 33 run execute if score ward slot23 matches 0 run scoreboard players operation attackDebuffSlot23 atkmodifiers += shermanDebuff abilityStats
execute if score abilitynumber3 abilities matches 33 run scoreboard players operation abilityDmg saves = sherman abilityStats
execute if score abilitynumber3 abilities matches 33 if score slot17isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot17 atkmodifiers
execute if score abilitynumber3 abilities matches 33 if score slot18isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot18 atkmodifiers
execute if score abilitynumber3 abilities matches 33 if score slot19isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot19 atkmodifiers
execute if score abilitynumber3 abilities matches 33 run scoreboard players operation abilityDmg saves += marks slot23
execute if score abilitynumber3 abilities matches 33 run scoreboard players operation abilityDmg saves /= atkmultiplier slot23
execute if score abilitynumber3 abilities matches 33 run execute if score ward slot23 matches 0 run scoreboard players operation shield slot23 -= abilityDmg saves
execute if score abilitynumber3 abilities matches 33 run execute if score ward slot23 matches 0 if score shield slot23 matches ..0 run scoreboard players operation slot23 hp += shield slot23
execute if score abilitynumber3 abilities matches 33 run execute if score ward slot23 matches 1.. run function chthree:wardslot23
execute if score abilitynumber3 abilities matches 33 at @e[name=slot23] run particle minecraft:pale_oak_leaves ~ ~1 ~ 0.9 0.9 0.9 0.1 100
execute if score abilitynumber3 abilities matches 33 at @e[name=slot23] run particle minecraft:explosion ~ ~1 ~ 0.9 0.9 0.9 0.1 10
execute if score abilitynumber3 abilities matches 33 at @e[name=slot22] run particle minecraft:pale_oak_leaves ~ ~1 ~ 0.9 0.9 0.9 0.1 50
execute if score abilitynumber3 abilities matches 33 at @e[name=slot24] run particle minecraft:pale_oak_leaves ~ ~1 ~ 0.9 0.9 0.9 0.1 50
execute if score abilitynumber3 abilities matches 33 run tellraw @a[tag=game3] ["",{"selector":"@p[tag=p5]"}," used Grasping Roots on Slot 7!"]
execute if score abilitynumber3 abilities matches 33 run scoreboard players operation abilityDmg saves = sherman abilityStats
execute if score abilitynumber3 abilities matches 33 if score slot17isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot17 atkmodifiers
execute if score abilitynumber3 abilities matches 33 if score slot18isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot18 atkmodifiers
execute if score abilitynumber3 abilities matches 33 if score slot19isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot19 atkmodifiers
execute if score abilitynumber3 abilities matches 33 run scoreboard players operation abilityDmg saves /= shermanSplash abilityStats
execute if score abilitynumber3 abilities matches 33 run scoreboard players operation abilityDmg saves += marks slot22
execute if score abilitynumber3 abilities matches 33 run scoreboard players operation abilityDmg saves /= atkmultiplier slot22
execute if score abilitynumber3 abilities matches 33 run execute if score ward slot22 matches 0 run scoreboard players operation shield slot22 -= abilityDmg saves
execute if score abilitynumber3 abilities matches 33 run execute if score ward slot22 matches 0 if score shield slot22 matches ..0 run scoreboard players operation slot22 hp += shield slot22
execute if score abilitynumber3 abilities matches 33 run execute if score ward slot22 matches 1.. run function chthree:wardslot22
execute if score abilitynumber3 abilities matches 33 run scoreboard players operation abilityDmg saves = sherman abilityStats
execute if score abilitynumber3 abilities matches 33 if score slot17isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot17 atkmodifiers
execute if score abilitynumber3 abilities matches 33 if score slot18isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot18 atkmodifiers
execute if score abilitynumber3 abilities matches 33 if score slot19isatk booleans matches 1 run scoreboard players operation abilityDmg saves += slot19 atkmodifiers
execute if score abilitynumber3 abilities matches 33 run scoreboard players operation abilityDmg saves /= shermanSplash abilityStats
execute if score abilitynumber3 abilities matches 33 run scoreboard players operation abilityDmg saves += marks slot24
execute if score abilitynumber3 abilities matches 33 run scoreboard players operation abilityDmg saves /= atkmultiplier slot24
execute if score abilitynumber3 abilities matches 33 run execute if score ward slot24 matches 0 run scoreboard players operation shield slot24 -= abilityDmg saves
execute if score abilitynumber3 abilities matches 33 run execute if score ward slot24 matches 0 if score shield slot24 matches ..0 run scoreboard players operation slot24 hp += shield slot24
execute if score abilitynumber3 abilities matches 33 run execute if score ward slot24 matches 1.. run function chthree:wardslot24

#Eidolon Ability
execute if score abilitynumber3 abilities matches 28 run scoreboard players operation abilityDmg3 saves = eidolon abilityStats
execute if score abilitynumber3 abilities matches 28 if score slot17isatk booleans matches 1 run scoreboard players operation abilityDmg3 saves += slot17 atkmodifiers
execute if score abilitynumber3 abilities matches 28 if score slot18isatk booleans matches 1 run scoreboard players operation abilityDmg3 saves += slot18 atkmodifiers
execute if score abilitynumber3 abilities matches 28 if score slot19isatk booleans matches 1 run scoreboard players operation abilityDmg3 saves += slot19 atkmodifiers
execute if score abilitynumber3 abilities matches 28 run scoreboard players operation abilityDmg3 saves += marks slot23
execute if score abilitynumber3 abilities matches 28 run scoreboard players operation abilityDmg3 saves /= atkmultiplier slot23
execute if score abilitynumber3 abilities matches 28 run execute if score ward slot23 matches 0 run scoreboard players operation shield slot23 -= abilityDmg3 saves
execute if score abilitynumber3 abilities matches 28 run execute if score ward slot23 matches 0 if score slot18isatk booleans matches 1 if score durationSlot18-23 fear <= eidolonLeaderFearDuration abilityStats run scoreboard players operation durationSlot18-23 fear = eidolonLeaderFearDuration abilityStats
execute if score abilitynumber3 abilities matches 28 run execute if score ward slot23 matches 0 if score shield slot23 matches ..0 run scoreboard players operation slot23 hp += shield slot23
execute if score abilitynumber3 abilities matches 28 run execute if score ward slot23 matches 1.. run function chthree:wardslot23
execute if score abilitynumber3 abilities matches 28 run execute at @e[name=slot23,type=armor_stand] run particle raid_omen ~ ~1 ~ 0.3 0.3 0.3 2 100

#Barley
execute if score abilitynumber3 abilities matches -36 if score barleyPart1 abilities matches 1 if score ward slot23 matches ..0 run scoreboard players operation durationSlot17-23 fear = barleyDuration abilityStats 
execute if score abilitynumber3 abilities matches -36 if score barleyPart1 abilities matches 2 if score ward slot23 matches ..0 run scoreboard players operation durationSlot18-23 fear = barleyDuration abilityStats 
execute if score abilitynumber3 abilities matches -36 if score barleyPart1 abilities matches 3 if score ward slot23 matches ..0 run scoreboard players operation durationSlot19-23 fear = barleyDuration abilityStats 
execute if score abilitynumber3 abilities matches -36 if score barleyPart1 abilities matches 4 if score ward slot23 matches ..0 run scoreboard players operation durationSlot20-23 fear = barleyDuration abilityStats 
execute if score abilitynumber3 abilities matches -36 if score ward slot23 matches ..0 if score debuffDurationSlot23 atkmodifiers < barleyDuration abilityStats run scoreboard players operation debuffDurationSlot23 atkmodifiers = barleyDuration abilityStats
execute if score abilitynumber3 abilities matches -36 if score ward slot23 matches ..0 run scoreboard players operation attackDebuffSlot23 atkmodifiers += barley abilityStats
execute if score abilitynumber3 abilities matches -36 if score ward slot23 matches 1.. run function chthree:wardslot23
execute if score abilitynumber3 abilities matches -36 run execute at @n[type=armor_stand,name=slot23] run particle trial_omen ~ ~1 ~ 0.9 0.9 0.9 0.1 400
execute if score abilitynumber3 abilities matches -36 run tellraw @a[tag=game3] ["",{"selector":"@p[tag=p5]"}," used Spookcrow to fear Slot 7!"]

execute if score abilitynumber3 abilities matches 36 run scoreboard players set barleyPart1 abilities 7
execute if score abilitynumber3 abilities matches 36 if score buffDurationSlot23 atkmodifiers < barleyDuration abilityStats run scoreboard players operation buffDurationSlot23 atkmodifiers = barleyDuration abilityStats
execute if score abilitynumber3 abilities matches 36 run scoreboard players operation attackBuffSlot23 atkmodifiers += barley abilityStats
execute if score abilitynumber3 abilities matches 36 run function chthree:abilitygivetargetsp6
execute if score abilitynumber3 abilities matches 36 run execute at @n[type=armor_stand,name=slot23] run particle raid_omen ~ ~1 ~ 0.9 0.9 0.9 0.1 400
execute if score abilitynumber3 abilities matches 36 run tellraw @a[tag=game3] ["",{"selector":"@p[tag=p6]"}," used Spookcrow to make Slot 7 scary!"]

#Igor
execute if score abilitynumber3 abilities matches 38 if score cooldown slot23 matches 1.. run scoreboard players operation cooldown slot23 -= igor abilityStats
execute if score abilitynumber3 abilities matches 38 run execute at @e[type=armor_stand,name=slot23] run particle witch ~ ~1 ~ 0.5 0.8 0.5 0.1 100
execute if score abilitynumber3 abilities matches 38 run execute if score durationSlot23 speedBuffs < igorDuration abilityStats run scoreboard players operation durationSlot23 speedBuffs = igorDuration abilityStats
execute if score abilitynumber3 abilities matches 38 run tellraw @a[tag=game3] ["",{"selector":"@p[tag=p6]"}," used Black Lagoon Brew on Slot 7!"]
execute if score abilitynumber3 abilities matches 38 run scoreboard players operation speed slot23 += igorSpBuff abilityStats
execute if score abilitynumber3 abilities matches 38 run scoreboard players operation speedBuffSlot23 speedBuffs += igorSpBuff abilityStats
execute if score abilitynumber3 abilities matches 38 if score slot22isatk booleans matches 1 run execute if score invincibleSlot23 booleaneffects < igorDuration abilityStats run scoreboard players operation invincibleSlot23 booleaneffects = igorDuration abilityStats
execute if score abilitynumber3 abilities matches 38 if score slot22isatk booleans matches 1 run scoreboard players operation savehp63 saves = slot23 hp

#Zeebo
execute if score abilitynumber3 abilities matches 40 if score ward slot23 matches ..0 unless score curse slot23 matches 5 unless score curse slot23 matches 2 run scoreboard players set curseStacks slot23 0
execute if score abilitynumber3 abilities matches 40 if score ward slot23 matches ..0 unless score curse slot23 matches 5 unless score curse slot23 matches 2 run scoreboard players set curseDuration slot23 -1
execute if score abilitynumber3 abilities matches 40 if score ward slot23 matches ..0 unless score curse slot23 matches 5 run scoreboard players set curse slot23 2
execute if score abilitynumber3 abilities matches 40 if score ward slot23 matches ..0 unless score curse slot23 matches 5 if score curse slot23 matches 2 run scoreboard players add curseStacks slot23 1
execute if score abilitynumber3 abilities matches 40 if score ward slot23 matches ..0 run execute if score durationSlot23 burn < zeeboDuration abilityStats run scoreboard players operation durationSlot23 burn = zeeboDuration abilityStats
execute if score abilitynumber3 abilities matches 40 if score ward slot23 matches ..0 run scoreboard players operation slot23Burn burn += zeeboBurn abilityStats
execute if score abilitynumber3 abilities matches 40 run execute at @e[type=armor_stand,name=slot23] run summon firework_rocket ~ ~2 ~ {LifeTime:1,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"burst",has_twinkle:true,has_trail:true,colors:[I;13894251,16746496,16770560],fade_colors:[I;10224278]}]}}}}
execute if score abilitynumber3 abilities matches 40 run tellraw @a[tag=game3] ["",{"selector":"@p[tag=p5]"}," used Last Laugh on Slot 7!"]
execute if score abilitynumber3 abilities matches 40 run execute at @e[type=armor_stand,name=slot23] run summon firework_rocket ~ ~2 ~ {LifeTime:1,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"burst",has_twinkle:true,has_trail:true,colors:[I;13894251,16746496,16770560],fade_colors:[I;10224278]}]}}}}
execute if score abilitynumber3 abilities matches 40 if score ward slot23 matches 1.. run function chthree:wardslot23

#Fenrir
execute if score abilitynumber3 abilities matches 41 if score ward slot23 matches ..0 unless score curse slot23 matches 5 unless score curse slot23 matches 3 run scoreboard players set curseStacks slot23 0
execute if score abilitynumber3 abilities matches 41 if score ward slot23 matches ..0 unless score curse slot23 matches 5 unless score curse slot23 matches 3 run scoreboard players set curseDuration slot23 -1
execute if score abilitynumber3 abilities matches 41 if score ward slot23 matches ..0 unless score character# slot23 matches 41 unless score curse slot23 matches 5 run scoreboard players set curse slot23 3
execute if score abilitynumber3 abilities matches 41 run scoreboard players operation abilityDmg3 saves = fenrir abilityStats
execute if score abilitynumber3 abilities matches 41 if score slot17isatk booleans matches 1 run scoreboard players operation abilityDmg3 saves += slot17 atkmodifiers
execute if score abilitynumber3 abilities matches 41 if score slot18isatk booleans matches 1 run scoreboard players operation abilityDmg3 saves += slot18 atkmodifiers
execute if score abilitynumber3 abilities matches 41 if score slot19isatk booleans matches 1 run scoreboard players operation abilityDmg3 saves += slot19 atkmodifiers
execute if score abilitynumber3 abilities matches 41 run scoreboard players operation abilityDmg3 saves += marks slot23
execute if score abilitynumber3 abilities matches 41 run scoreboard players operation abilityDmg3 saves /= atkmultiplier slot23
execute if score abilitynumber3 abilities matches 41 run execute if score ward slot23 matches ..0 run scoreboard players operation shield slot23 -= abilityDmg3 saves
execute if score abilitynumber3 abilities matches 41 run execute at @n[type=armor_stand,name=slot23] run particle enchanted_hit ~ ~1 ~ 0.9 0.9 0.9 0.1 400
execute if score abilitynumber3 abilities matches 41 run tellraw @a[tag=game3] ["",{"selector":"@p[tag=p5]"}," used Mark of the Wolf on Slot 7!"]
execute if score abilitynumber3 abilities matches 41 run execute if score ward slot23 matches 0 if score shield slot23 matches ..0 run scoreboard players operation slot23 hp += shield slot23

execute if score abilitynumber3 abilities matches 41 if score ward slot23 matches 1.. run function chthree:wardslot23

#Grendel
execute if score abilitynumber3 abilities matches 43 run scoreboard players operation abilityDmg3 saves = grendel abilityStats
execute if score abilitynumber3 abilities matches 43 if score slot17isatk booleans matches 1 run scoreboard players operation abilityDmg3 saves += slot17 atkmodifiers
execute if score abilitynumber3 abilities matches 43 if score slot18isatk booleans matches 1 run scoreboard players operation abilityDmg3 saves += slot18 atkmodifiers
execute if score abilitynumber3 abilities matches 43 if score slot19isatk booleans matches 1 run scoreboard players operation abilityDmg3 saves += slot19 atkmodifiers
execute if score abilitynumber3 abilities matches 43 run scoreboard players operation abilityDmg3 saves += marks slot23
execute if score abilitynumber3 abilities matches 43 run scoreboard players operation abilityDmg3 saves /= atkmultiplier slot23
execute if score abilitynumber3 abilities matches 43 run execute if score ward slot23 matches ..0 run scoreboard players operation shield slot23 -= abilityDmg3 saves
execute if score abilitynumber3 abilities matches 43 run execute if score ward slot23 matches ..0 run scoreboard players operation slot23Disease disease += grendelDisease abilityStats
execute if score abilitynumber3 abilities matches 43 run execute at @e[type=armor_stand,name=slot23] run particle minecraft:noxious_gas ~ ~1 ~ 0.7 0.7 0.7 0.05 200
execute if score abilitynumber3 abilities matches 43 if score ward slot23 matches 1.. run function chthree:wardslot23
execute if score abilitynumber3 abilities matches 43 run function chthree:abilitygivetargetsp5
execute if score abilitynumber3 abilities matches -43 run scoreboard players operation abilityDmg3 saves = grendel abilityStats
execute if score abilitynumber3 abilities matches -43 if score slot17isatk booleans matches 1 run scoreboard players operation abilityDmg3 saves += slot17 atkmodifiers
execute if score abilitynumber3 abilities matches -43 if score slot18isatk booleans matches 1 run scoreboard players operation abilityDmg3 saves += slot18 atkmodifiers
execute if score abilitynumber3 abilities matches -43 if score slot19isatk booleans matches 1 run scoreboard players operation abilityDmg3 saves += slot19 atkmodifiers
execute if score abilitynumber3 abilities matches -43 run scoreboard players operation abilityDmg3 saves += marks slot23
execute if score abilitynumber3 abilities matches -43 run scoreboard players operation abilityDmg3 saves /= atkmultiplier slot23
execute if score abilitynumber3 abilities matches -43 run execute if score ward slot23 matches ..0 run scoreboard players operation shield slot23 -= abilityDmg3 saves
execute if score abilitynumber3 abilities matches -43 run execute if score ward slot23 matches ..0 run scoreboard players operation slot23Disease disease += grendelDisease abilityStats
execute if score abilitynumber3 abilities matches -43 run execute at @e[type=armor_stand,name=slot23] run particle minecraft:noxious_gas ~ ~1 ~ 0.7 0.7 0.7 0.05 200
execute if score abilitynumber3 abilities matches -43 if score ward slot23 matches 1.. run function chthree:wardslot23
execute if score abilitynumber3 abilities matches -43 run tellraw @a[tag=game3] ["",{"selector":"@p[tag=p5]"}," used Piercing Pestilence on Slot 7!"]
execute if score abilitynumber3 abilities matches 43 run tellraw @a[tag=game3] ["",{"selector":"@p[tag=p5]"}," used Piercing Pestilence on Slot 7!"]
execute if score abilitynumber3 abilities matches 43 run execute if score ward slot23 matches 0 if score shield slot23 matches ..0 run scoreboard players operation slot23 hp += shield slot23
execute if score abilitynumber3 abilities matches -43 run execute if score ward slot23 matches 0 if score shield slot23 matches ..0 run scoreboard players operation slot23 hp += shield slot23
#Frank
execute if score abilitynumber3 abilities matches 34 run scoreboard players operation abilityDmg3 saves = frank abilityStats
execute if score abilitynumber3 abilities matches 34 run scoreboard players operation shield slot23 -= abilityDmg3 saves
execute if score abilitynumber3 abilities matches 34 run scoreboard players operation slot23 hp += shield slot23
execute if score abilitynumber3 abilities matches 34 run execute at @e[name=slot23,type=armor_stand] run particle minecraft:angry_villager ~ ~1 ~ 0.9 0.9 0.9 0.5 15
execute if score abilitynumber3 abilities matches 34 run tellraw @a[tag=game3] ["",{"selector":"@p[tag=p6]"}," used IT'S ALIVE! to damage Slot 7!"]
execute if score abilitynumber3 abilities matches 34 run function chthree:abilitygivetargetsp6

execute if score abilitynumber3 abilities matches -34 run execute if score ward slot23 matches 0 run scoreboard players operation slot23 stun = frankDuration abilityStats
execute if score abilitynumber3 abilities matches -34 run execute if score ward slot23 matches 1.. run function chthree:wardslot23
execute if score abilitynumber3 abilities matches -34 run execute at @e[name=slot23,type=armor_stand] run particle minecraft:flash{color:[1.000,1.000,1.000,1.00]} ~ ~1 ~ 0.9 0.9 0.9 0.5 100
execute if score abilitynumber3 abilities matches -34 run tellraw @a[tag=game3] ["",{"selector":"@p[tag=p5]"}," used IT'S ALIVE! to stun Slot 7!"]

#Stein
execute if score abilitynumber3 abilities matches 35 run scoreboard players operation abilityDmg3 saves = stein abilityStats
execute if score abilitynumber3 abilities matches 35 if score slot17isatk booleans matches 1 run scoreboard players operation abilityDmg3 saves += slot23 atkmodifiers
execute if score abilitynumber3 abilities matches 35 if score slot18isatk booleans matches 1 run scoreboard players operation abilityDmg3 saves += slot22 atkmodifiers
execute if score abilitynumber3 abilities matches 35 if score slot19isatk booleans matches 1 run scoreboard players operation abilityDmg3 saves += slot23 atkmodifiers
execute if score abilitynumber3 abilities matches 35 run scoreboard players operation abilityDmg3 saves += marks slot23
execute if score abilitynumber3 abilities matches 35 run scoreboard players operation abilityDmg3 saves /= atkmultiplier slot23
execute if score abilitynumber3 abilities matches 35 run execute if score ward slot23 matches 0 run scoreboard players operation shield slot23 -= abilityDmg3 saves
execute if score abilitynumber3 abilities matches 35 run execute if score ward slot23 matches 0 if score shield slot23 matches ..0 run scoreboard players operation slot23 hp += shield slot23
execute if score abilitynumber3 abilities matches 35 run execute if score ward slot23 matches 1.. run function chthree:wardslot23
execute if score abilitynumber3 abilities matches 35 run execute at @e[name=slot23,type=armor_stand] run particle raid_omen ~ ~1 ~ 0.9 0.9 0.9 2 100
execute if score abilitynumber3 abilities matches 35 run tellraw @a[tag=game3] ["",{"selector":"@p[tag=p5]"}," used Reanimation Beam to damage Slot 7!"]
execute if score abilitynumber3 abilities matches 35 run function chthree:abilitygivetargetsp6reverse

execute if score abilitynumber3 abilities matches -35 if score slot23bleeding booleaneffects matches 0 run scoreboard players operation slot23 hp += abilityDmg3 saves
execute if score abilitynumber3 abilities matches -35 if score character# slot22 matches 35 run function chthree:cleanseslot23
execute if score abilitynumber3 abilities matches -35 if score character# slot22 matches 34 run function chthree:cleanseslot23
execute if score abilitynumber3 abilities matches -35 run execute at @e[name=slot23,type=armor_stand] run particle trial_omen ~ ~1 ~ 0.9 0.9 0.9 2 100
execute if score abilitynumber3 abilities matches -35 run tellraw @a[tag=game3] ["",{"selector":"@p[tag=p6]"}," used Reanimation Beam to heal Slot 7!"]

#Boogaloo
execute if score abilitynumber3 abilities matches 37 unless score curse slot23 matches 5 run scoreboard players set curseDuration slot23 -1
execute if score abilitynumber3 abilities matches 37 if score curseStacks slot23 matches 1.. unless score curse slot23 matches 5 run scoreboard players set curseStacks slot23 0
execute if score abilitynumber3 abilities matches 37 unless score curse slot23 matches 5 run scoreboard players set curse slot23 1
execute if score abilitynumber3 abilities matches 37 run execute at @e[name=slot23,type=armor_stand] run particle minecraft:sculk_soul ~ ~1 ~ 0.9 0.9 0.9 0.15 30
execute if score abilitynumber3 abilities matches 37 run tellraw @a[tag=game3] ["",{"selector":"@p[tag=p5]"}," used Devour Soul on Slot 7!"]

#Anubis
execute if score abilitynumber3 abilities matches 42 if score ward slot23 matches 0 run scoreboard players operation abilityDmg3 saves = anubis abilityStats
execute if score abilitynumber3 abilities matches 42 if score ward slot23 matches 0 run scoreboard players operation abilityDmg3 saves *= anubisUnusedP5 saves
execute if score abilitynumber3 abilities matches 42 run execute at @e[name=slot23,type=armor_stand] run particle minecraft:sonic_boom ~ ~2 ~ 0.03 0.03 0.03 0.01 100
execute if score abilitynumber3 abilities matches 42 run tellraw @a[tag=game3] ["",{"selector":"@p[tag=p6]"}," used Wrath of the Desert on Slot 7!"]
execute if score abilitynumber3 abilities matches 42 if score slot17isatk booleans matches 1 run scoreboard players operation abilityDmg3 saves += slot17 atkmodifiers
execute if score abilitynumber3 abilities matches 42 if score slot18isatk booleans matches 1 run scoreboard players operation abilityDmg3 saves += slot18 atkmodifiers
execute if score abilitynumber3 abilities matches 42 if score slot19isatk booleans matches 1 run scoreboard players operation abilityDmg3 saves += slot19 atkmodifiers
execute if score abilitynumber3 abilities matches 42 run scoreboard players operation abilityDmg3 saves += marks slot23
execute if score abilitynumber3 abilities matches 42 run scoreboard players operation abilityDmg3 saves /= atkmultiplier slot23
execute if score abilitynumber3 abilities matches 42 run execute if score ward slot23 matches 0 run scoreboard players operation shield slot23 -= abilityDmg3 saves
execute if score abilitynumber3 abilities matches 42 run execute if score ward slot23 matches 0 if score shield slot23 matches ..0 run scoreboard players operation slot23 hp += shield slot23
execute if score abilitynumber3 abilities matches 42 if score ward slot23 matches 1.. run function chthree:wardslot23


#This goes at the bottom
execute if score shield slot21 matches ..0 run scoreboard players set shield slot21 0
execute if score shield slot22 matches ..0 run scoreboard players set shield slot22 0
execute if score shield slot23 matches ..0 run scoreboard players set shield slot23 0
execute if score shield slot24 matches ..0 run scoreboard players set shield slot24 0
execute unless score abilitynumber3 abilities matches 34 unless score abilitynumber3 abilities matches 35 unless score abilitynumber3 abilities matches 36 unless score abilitynumber3 abilities matches 43 run function chthree:turnend
#Make sure to add burn to your abilities

#Token Abilities
execute if score abilitynumber3 abilities matches 34 run scoreboard players set abilitynumber3 abilities -34
execute if score abilitynumber3 abilities matches 35 run scoreboard players set abilitynumber3 abilities -35
execute if score abilitynumber3 abilities matches 36 run scoreboard players set abilitynumber3 abilities -36
execute if score abilitynumber3 abilities matches 43 run scoreboard players set abilitynumber3 abilities -43

