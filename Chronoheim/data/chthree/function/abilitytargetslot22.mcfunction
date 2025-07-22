effect clear @a[tag=game3] strength
clear @p[tag=game3]
#Arthur Ability
execute if score abilitynumber3 abilities matches 2 run function chthree:cleanseslot22
#Deuce ability
execute if score abilitynumber3 abilities matches 3 run scoreboard players operation abilityDmg3 saves = deuce heroattack
execute if score abilitynumber3 abilities matches 3 if score slot17isatk booleans matches 1 run scoreboard players operation abilityDmg3 saves += slot17 atkmodifiers
execute if score abilitynumber3 abilities matches 3 if score slot18isatk booleans matches 1 run scoreboard players operation abilityDmg3 saves += slot18 atkmodifiers
execute if score abilitynumber3 abilities matches 3 if score slot19isatk booleans matches 1 run scoreboard players operation abilityDmg3 saves += slot19 atkmodifiers
execute if score abilitynumber3 abilities matches 3 run scoreboard players operation abilityDmg3 saves += marks slot22
execute if score abilitynumber3 abilities matches 3 if score slot18isatk booleans matches 1 run scoreboard players operation abilityDmg3 saves *= deuceMultLeader abilityStats
execute if score abilitynumber3 abilities matches 3 if score slot18isatk booleans matches 0 run scoreboard players operation abilityDmg3 saves *= deuceMult abilityStats
execute if score abilitynumber3 abilities matches 3 run scoreboard players operation abilityDmg3 saves /= atkmultiplier slot22
execute if score abilitynumber3 abilities matches 3 run execute if score ward slot22 matches 0 run scoreboard players operation shield slot22 -= abilityDmg3 saves
execute if score abilitynumber3 abilities matches 3 run execute if score ward slot22 matches 0 if score shield slot22 matches ..0 run scoreboard players operation slot22 hp += shield slot22
execute if score abilitynumber3 abilities matches 3 run execute if score ward slot22 matches 1.. run function chthree:wardslot22
execute if score abilitynumber3 abilities matches 3 run execute at @e[name=slot22,type=armor_stand] run particle crit ~ ~1 ~ 0.3 0.3 0.3 2 100

execute if score abilitynumber3 abilities matches 3 run tellraw @a[tag=game3] ["",{"selector":"@p[tag=p5]"}," used Double Punch on Slot 6!"]

#Garabaldi Ability
execute if score abilitynumber3 abilities matches 24 if score slot22 hp matches 1.. if score slot22bleeding booleaneffects matches 0 run scoreboard players operation slot22 hp += garabaldiHeal abilityStats
execute if score abilitynumber3 abilities matches 24 if score slot22 hp matches 1.. if score slot22bleeding booleaneffects matches 0 if score character# slot22 matches 24 run scoreboard players operation slot22 hp += garabaldiLeader abilityStats
execute if score abilitynumber3 abilities matches 24 if score slot22 hp matches 1.. run scoreboard players set ward slot22 2
execute if score abilitynumber3 abilities matches 24 run execute at @n[type=armor_stand,name=slot22] run particle minecraft:composter ~ ~1 ~ 0.9 0.9 0.9 0.5 100
execute if score abilitynumber3 abilities matches 24 run tellraw @a[tag=game3] ["",{"selector":"@p[tag=p6]"}," used Bubble Shield on Slot 6!"]


#Juniper Ability
execute if score abilitynumber3 abilities matches 27 run scoreboard players operation abilityDmg3 saves = juniper abilityStats
execute if score abilitynumber3 abilities matches 27 if score slot17isatk booleans matches 1 run scoreboard players operation abilityDmg3 saves += slot17 atkmodifiers
execute if score abilitynumber3 abilities matches 27 if score slot18isatk booleans matches 1 run scoreboard players operation abilityDmg3 saves += slot18 atkmodifiers
execute if score abilitynumber3 abilities matches 27 if score slot19isatk booleans matches 1 run scoreboard players operation abilityDmg3 saves += slot19 atkmodifiers
execute if score abilitynumber3 abilities matches 27 run scoreboard players operation abilityDmg3 saves += marks slot22
execute if score abilitynumber3 abilities matches 27 run scoreboard players operation abilityDmg3 saves /= atkmultiplier slot22
execute if score abilitynumber3 abilities matches 27 run execute if score ward slot22 matches 0 run scoreboard players operation shield slot22 -= abilityDmg3 saves
execute if score abilitynumber3 abilities matches 27 run execute if score ward slot22 matches 0 run scoreboard players operation slot22 stun = juniperStun abilityStats
execute if score abilitynumber3 abilities matches 27 run execute if score ward slot22 matches 0 if score shield slot22 matches ..0 run scoreboard players operation slot22 hp += shield slot22
execute if score abilitynumber3 abilities matches 27 run execute if score ward slot22 matches 1.. run function chthree:wardslot22
execute if score abilitynumber3 abilities matches 27 run execute at @e[name=slot22,type=armor_stand] run particle firefly ~ ~1 ~ 0.3 0.3 0.3 1 100

execute if score abilitynumber3 abilities matches -2 if score abilitynumber3 abilities matches 27 run tellraw @a[tag=game3] ["",{"selector":"@p[tag=p5]"}," used Pixie Dust on Slot 6!"]

#Juniper Basic
execute if score abilitynumber3 abilities matches -2 run execute if score slot22bleeding booleaneffects matches 0 run scoreboard players operation slot22 hp += juniper heroattack
execute if score abilitynumber3 abilities matches -2 run execute at @n[type=armor_stand,name=slot22] run particle minecraft:composter ~ ~1 ~ 0.9 0.9 0.9 0.5 100
execute if score abilitynumber3 abilities matches -2 run execute if score slot22bleeding booleaneffects matches 0 if score slot22isatk booleans matches 1 run scoreboard players operation slot22 hp += juniperLeader heroattack

#K.O.N.G ability
execute if score abilitynumber3 abilities matches 7 run scoreboard players operation abilityDmg3 saves = kong abilityStats
execute if score abilitynumber3 abilities matches 7 if score slot17isatk booleans matches 1 run scoreboard players operation abilityDmg3 saves += slot17 atkmodifiers
execute if score abilitynumber3 abilities matches 7 if score slot18isatk booleans matches 1 run scoreboard players operation abilityDmg3 saves += slot18 atkmodifiers
execute if score abilitynumber3 abilities matches 7 if score slot19isatk booleans matches 1 run scoreboard players operation abilityDmg3 saves += slot19 atkmodifiers
execute if score abilitynumber3 abilities matches 7 run scoreboard players operation abilityDmg3 saves += marks slot22
execute if score abilitynumber3 abilities matches 7 run scoreboard players operation abilityDmg3 saves /= atkmultiplier slot22
execute if score abilitynumber3 abilities matches 7 run execute if score ward slot22 matches 0 run scoreboard players operation shield slot22 -= abilityDmg3 saves
execute if score abilitynumber3 abilities matches 7 run execute if score ward slot22 matches 0 if score kongSpDebuffDuration abilityStats > durationSlot22 speedDebuffs run scoreboard players operation durationSlot22 speedDebuffs = kongSpDebuffDuration abilityStats
execute if score abilitynumber3 abilities matches 7 run execute if score ward slot22 matches 0 if score kongDmgDebuffDuration abilityStats > debuffDurationSlot22 atkmodifiers run scoreboard players operation debuffDurationSlot22 atkmodifiers = kongDmgDebuffDuration abilityStats
execute if score abilitynumber3 abilities matches 7 run execute if score ward slot22 matches 0 run scoreboard players operation speedDebuffSlot22 speedDebuffs += kongSpDebuff abilityStats
execute if score abilitynumber3 abilities matches 7 run execute if score ward slot22 matches 0 run scoreboard players operation attackDebuffSlot22 atkmodifiers += kongDmgDebuff abilityStats
execute if score abilitynumber3 abilities matches 7 run execute if score ward slot22 matches 0 run execute if score slot18isatk booleans matches 1 run scoreboard players operation attackDebuffSlot22 atkmodifiers += kongLeaderDmgDebuff abilityStats
execute if score abilitynumber3 abilities matches 7 run execute if score ward slot22 matches 0 run execute if score slot18isatk booleans matches 1 run scoreboard players operation speedDebuffSlot22 speedDebuffs += kongLeaderSpDebuff abilityStats
execute if score abilitynumber3 abilities matches 7 run execute if score ward slot22 matches 0 run execute if score slot18isatk booleans matches 1 run scoreboard players operation speed slot22 -= kongLeaderSpDebuff abilityStats
execute if score abilitynumber3 abilities matches 7 run execute if score ward slot22 matches 0 run scoreboard players operation speed slot22 -= kongSpDebuff abilityStats
execute if score abilitynumber3 abilities matches 7 run execute if score ward slot22 matches 0 if score shield slot22 matches ..0 run scoreboard players operation slot22 hp += shield slot22
execute if score abilitynumber3 abilities matches 7 run execute if score ward slot22 matches 1.. run function chthree:wardslot22
execute if score abilitynumber3 abilities matches 7 run execute at @n[type=armor_stand,name=slot22] run particle minecraft:explosion_emitter ~ ~1 ~
execute if score abilitynumber3 abilities matches 9 run execute at @n[type=armor_stand,name=slot22] run particle minecraft:angry_villager ~ ~1 ~ 0.9 0.9 0.9 1 50
execute if score abilitynumber3 abilities matches 7 run tellraw @a[tag=game3] ["",{"selector":"@p[tag=p5]"}," used B.A.N.A.N.A S.L.A.M.M.A! on Slot 6!"]

#Robyn Ability
execute if score abilitynumber3 abilities matches 9 if score ward slot22 matches 0 run scoreboard players operation marks slot22 += robyn abilityStats
execute if score abilitynumber3 abilities matches 9 if score ward slot22 matches 1 run function chthree:wardslot22
execute if score abilitynumber3 abilities matches 9 run tellraw @a[tag=game3] ["",{"selector":"@p[tag=p5]"}," used Most Wanted on Slot 6!"]

#Robo
execute if score abilitynumber3 abilities matches 5 if score durationSlot22 shield < roboDuration abilityStats run scoreboard players operation durationSlot22 shield = roboDuration abilityStats
execute if score abilitynumber3 abilities matches 5 run scoreboard players operation shield slot22 += robo abilityStats
execute if score abilitynumber3 abilities matches 5 if score slot22isatk booleans matches 1 run scoreboard players operation shield slot22 += roboLeader abilityStats
execute if score abilitynumber3 abilities matches 5 run execute at @n[name=slot22,type=armor_stand] run particle minecraft:wax_off ~ ~1 ~ 0.6 0.6 0.6 0.0001 400
execute if score abilitynumber3 abilities matches 5 run tellraw @a[tag=game3] ["",{"selector":"@p[tag=p6]"}," used Force Field on Slot 6!"]
#Kirin
execute if score abilitynumber3 abilities matches 8 if score buffDurationSlot22 atkmodifiers < kirinDuration abilityStats run scoreboard players operation buffDurationSlot22 atkmodifiers = kirinDuration abilityStats
execute if score abilitynumber3 abilities matches 8 run scoreboard players operation attackBuffSlot22 atkmodifiers += kirin abilityStats
execute if score abilitynumber3 abilities matches 8 if score slot22isatk booleans matches 1 if score slot22bleeding booleaneffects matches 0 run scoreboard players operation slot22 hp += kirinLeader abilityStats
execute if score abilitynumber3 abilities matches 8 run tellraw @a[tag=game3] ["",{"selector":"@p[tag=p6]"}," used Mythical Empowerment on Slot 6!"]
execute if score abilitynumber3 abilities matches 8 at @e[name=slot22] run particle minecraft:trial_spawner_detection ~ ~1 ~ 0.9 0.9 0.9 0.1 100

#Ace
execute if score abilitynumber3 abilities matches 12 if score ward slot22 matches 0 run scoreboard players operation cooldown slot22 = aceSetCooldown abilityStats
execute if score abilitynumber3 abilities matches 12 run tellraw @a[tag=game3] ["",{"selector":"@p[tag=p5]"}," used Ace of Spades on Slot 6!"]
execute if score abilitynumber3 abilities matches 12 if score ward slot22 matches 1.. run function chthree:wardslot22
execute if score abilitynumber3 abilities matches 12 at @e[name=slot22] run particle minecraft:enchanted_hit ~ ~1 ~ 0.9 0.9 0.9 0.5 100
execute if score abilitynumber3 abilities matches 12 run execute if score character# slot18 matches 12 run scoreboard players operation durationSlot22 speedDebuffs = aceLeaderDuration abilityStats
execute if score abilitynumber3 abilities matches 12 run execute if score character# slot18 matches 12 run scoreboard players operation speedDebuffSlot22 speedDebuffs = aceLeader abilityStats
execute if score abilitynumber3 abilities matches 12 run execute if score character# slot18 matches 12 run scoreboard players operation speed slot22 -= aceLeader abilityStats
#Gabriel
execute if score abilitynumber3 abilities matches 22 run scoreboard players operation abilityDmg3 saves = gabriel abilityStats
execute if score abilitynumber3 abilities matches 22 if score slot17isatk booleans matches 1 run scoreboard players operation abilityDmg3 saves += slot17 atkmodifiers
execute if score abilitynumber3 abilities matches 22 if score slot18isatk booleans matches 1 run scoreboard players operation abilityDmg3 saves += slot18 atkmodifiers
execute if score abilitynumber3 abilities matches 22 if score slot19isatk booleans matches 1 run scoreboard players operation abilityDmg3 saves += slot19 atkmodifiers
execute if score abilitynumber3 abilities matches 22 if score slot17 hp matches ..0 run scoreboard players operation abilityDmg3 saves += gabrielDeath abilityStats
execute if score abilitynumber3 abilities matches 22 if score slot18 hp matches ..0 run scoreboard players operation abilityDmg3 saves += gabrielDeath abilityStats
execute if score abilitynumber3 abilities matches 22 if score slot19 hp matches ..0 run scoreboard players operation abilityDmg3 saves += gabrielDeath abilityStats
execute if score abilitynumber3 abilities matches 22 run scoreboard players operation abilityDmg3 saves += marks slot22
execute if score abilitynumber3 abilities matches 22 run scoreboard players operation abilityDmg3 saves /= atkmultiplier slot22
execute if score abilitynumber3 abilities matches 22 run execute if score ward slot22 matches 0 run scoreboard players operation shield slot22 -= abilityDmg3 saves
execute if score abilitynumber3 abilities matches 22 run execute if score ward slot22 matches 0 if score shield slot22 matches ..0 run scoreboard players operation slot22 hp += shield slot22
execute if score abilitynumber3 abilities matches 22 if score slot18isatk booleans matches 1 if score ward slot22 matches 0 run scoreboard players operation abilityDmg3 saves /= gabrielLeader abilityStats
execute if score abilitynumber3 abilities matches 22 if score slot18isatk booleans matches 1 if score ward slot22 matches 0 run scoreboard players operation slot18 hp += abilityDmg3 saves
execute if score abilitynumber3 abilities matches 22 at @e[name=slot22] run particle minecraft:flash ~ ~1 ~ 0.9 0.9 0.9 0.5 100
execute if score abilitynumber3 abilities matches 22 run execute if score ward slot22 matches 1.. run function chthree:wardslot22
#Gatsby
execute if score abilitynumber3 abilities matches 23 if score ward slot22 matches 0 run scoreboard players operation slot22 stun = gatsbyDuration abilityStats
execute if score abilitynumber3 abilities matches 23 if score ward slot22 matches 0 run scoreboard players operation savehp14 saves = slot22 hp
execute if score abilitynumber3 abilities matches 23 if score ward slot22 matches 0 run scoreboard players operation invincibleSlot22 booleaneffects = gatsbyDuration abilityStats
execute if score abilitynumber3 abilities matches 23 if score ward slot22 matches 0 run scoreboard players operation slot22EatenDuration abilities = gatsbyDuration abilityStats
execute if score abilitynumber3 abilities matches 23 if score ward slot22 matches 0 at @e[name=slot22] run execute at @e[distance=..4,type=!player] run tp @n[type=!minecraft:player,distance=..4] ~ ~-20 ~
execute if score abilitynumber3 abilities matches 23 run execute if score ward slot22 matches 1.. run function chthree:wardslot22
execute if score abilitynumber3 abilities matches 23 if score durationSlot22-17 fear < gatsbyDuration abilityStats run scoreboard players operation durationSlot22-17 fear = gatsbyDuration abilityStats
execute if score abilitynumber3 abilities matches 23 if score durationSlot22-18 fear < gatsbyDuration abilityStats run scoreboard players operation durationSlot22-18 fear = gatsbyDuration abilityStats
execute if score abilitynumber3 abilities matches 23 if score durationSlot22-19 fear < gatsbyDuration abilityStats run scoreboard players operation durationSlot22-19 fear = gatsbyDuration abilityStats
execute if score abilitynumber3 abilities matches 23 if score durationSlot22-20 fear < gatsbyDuration abilityStats run scoreboard players operation durationSlot22-20 fear = gatsbyDuration abilityStats
execute if score abilitynumber3 abilities matches 23 if score ward slot21 matches 0 if score slot18isatk booleans matches 1 if score debuffDurationSlot21 atkmodifiers < gatsbyDuration abilityStats run scoreboard players operation debuffDurationSlot21 atkmodifiers = gatsbyDuration abilityStats
execute if score abilitynumber3 abilities matches 23 if score ward slot23 matches 0 if score slot18isatk booleans matches 1 if score debuffDurationSlot23 atkmodifiers < gatsbyDuration abilityStats run scoreboard players operation debuffDurationSlot23 atkmodifiers = gatsbyDuration abilityStats
execute if score abilitynumber3 abilities matches 23 if score ward slot24 matches 0 if score slot18isatk booleans matches 1 if score debuffDurationSlot24 atkmodifiers < gatsbyDuration abilityStats run scoreboard players operation debuffDurationSlot24 atkmodifiers = gatsbyDuration abilityStats
execute if score abilitynumber3 abilities matches 23 if score ward slot21 matches 0 if score slot18isatk booleans matches 1 run scoreboard players operation attackDebuffSlot21 atkmodifiers = gatsbyLeader abilityStats
execute if score abilitynumber3 abilities matches 23 if score ward slot23 matches 0 if score slot18isatk booleans matches 1 run scoreboard players operation attackDebuffSlot23 atkmodifiers = gatsbyLeader abilityStats
execute if score abilitynumber3 abilities matches 23 if score ward slot24 matches 0 if score slot18isatk booleans matches 1 run scoreboard players operation attackDebuffSlot24 atkmodifiers = gatsbyLeader abilityStats
execute if score abilitynumber3 abilities matches 23 if score ward slot21 matches 1.. if score slot18isatk booleans matches 1 run function chthree:wardslot21
execute if score abilitynumber3 abilities matches 23 if score ward slot23 matches 1.. if score slot18isatk booleans matches 1 run function chthree:wardslot23
execute if score abilitynumber3 abilities matches 23 if score ward slot24 matches 1.. if score slot18isatk booleans matches 1 run function chthree:wardslot24
execute if score abilitynumber3 abilities matches 23 run tellraw @a[tag=game3] ["",{"selector":"@p[tag=p5]"}," used Consume on Slot 6!"]
execute if score abilitynumber3 abilities matches 23 at @e[name=slot22] run particle minecraft:falling_nectar ~ ~1 ~ 0.9 0.9 0.9 0.1 100
execute if score abilitynumber3 abilities matches 23 if score slot18isatk booleans matches 1 at @e[name=slot21] run particle minecraft:falling_nectar ~ ~1 ~ 0.9 0.9 0.9 0.1 50
execute if score abilitynumber3 abilities matches 23 if score slot18isatk booleans matches 1 at @e[name=slot23] run particle minecraft:falling_nectar ~ ~1 ~ 0.9 0.9 0.9 0.1 50
execute if score abilitynumber3 abilities matches 23 if score slot18isatk booleans matches 1 at @e[name=slot24] run particle minecraft:falling_nectar ~ ~1 ~ 0.9 0.9 0.9 0.1 50
#Boomer
execute if score abilitynumber3 abilities matches 25 run scoreboard players operation abilityDmg3 saves = boomer abilityStats
execute if score abilitynumber3 abilities matches 25 if score slot17isatk booleans matches 1 run scoreboard players operation abilityDmg3 saves += slot17 atkmodifiers
execute if score abilitynumber3 abilities matches 25 if score slot18isatk booleans matches 1 run scoreboard players operation abilityDmg3 saves += slot18 atkmodifiers
execute if score abilitynumber3 abilities matches 25 if score slot19isatk booleans matches 1 run scoreboard players operation abilityDmg3 saves += slot19 atkmodifiers
execute if score abilitynumber3 abilities matches 25 run scoreboard players operation abilityDmg3 saves += marks slot22
execute if score abilitynumber3 abilities matches 25 run scoreboard players operation abilityDmg3 saves /= atkmultiplier slot22
execute if score abilitynumber3 abilities matches 25 run execute if score ward slot22 matches 0 run scoreboard players operation shield slot22 -= abilityDmg3 saves
execute if score abilitynumber3 abilities matches 25 run execute if score ward slot22 matches 0 if score shield slot22 matches ..0 run scoreboard players operation slot22 hp += shield slot22
execute if score abilitynumber3 abilities matches 25 run execute if score ward slot22 matches 1.. run function chthree:wardslot22
execute if score abilitynumber3 abilities matches 25 at @e[name=slot22] run particle minecraft:explosion ~ ~1 ~ 0.9 0.9 0.9 0.1 100
execute if score abilitynumber3 abilities matches 25 if score slot18isatk booleans matches 1 at @e[name=slot23] run particle minecraft:explosion ~ ~1 ~ 0.9 0.9 0.9 0.1 50
execute if score abilitynumber3 abilities matches 25 if score slot18isatk booleans matches 1 at @e[name=slot21] run particle minecraft:explosion ~ ~1 ~ 0.9 0.9 0.9 0.1 50
execute if score abilitynumber3 abilities matches 25 run tellraw @a[tag=game3] ["",{"selector":"@p[tag=p5]"}," used KABOOM! on Slot 6!"]
execute if score abilitynumber3 abilities matches 25 if score slot18isatk booleans matches 1 run scoreboard players operation abilityDmg3 saves = boomer abilityStats
execute if score abilitynumber3 abilities matches 25 if score slot18isatk booleans matches 1 run scoreboard players operation abilityDmg3 saves += slot18 atkmodifiers
execute if score abilitynumber3 abilities matches 25 if score slot18isatk booleans matches 1 run scoreboard players operation abilityDmg3 saves /= boomerLeader abilityStats
execute if score abilitynumber3 abilities matches 25 if score slot18isatk booleans matches 1 run scoreboard players operation abilityDmg3 saves += marks slot21
execute if score abilitynumber3 abilities matches 25 if score slot18isatk booleans matches 1 run scoreboard players operation abilityDmg3 saves /= atkmultiplier slot21
execute if score abilitynumber3 abilities matches 25 if score slot18isatk booleans matches 1 run execute if score ward slot21 matches 0 run scoreboard players operation shield slot21 -= abilityDmg3 saves
execute if score abilitynumber3 abilities matches 25 if score slot18isatk booleans matches 1 run execute if score ward slot21 matches 0 if score shield slot21 matches ..0 run scoreboard players operation slot21 hp += shield slot21
execute if score abilitynumber3 abilities matches 25 if score slot18isatk booleans matches 1 run execute if score ward slot21 matches 1.. run function chthree:wardslot21
execute if score abilitynumber3 abilities matches 25 if score slot18isatk booleans matches 1 run scoreboard players operation abilityDmg3 saves = boomer abilityStats
execute if score abilitynumber3 abilities matches 25 if score slot18isatk booleans matches 1 run scoreboard players operation abilityDmg3 saves += slot18 atkmodifiers
execute if score abilitynumber3 abilities matches 25 if score slot18isatk booleans matches 1 run scoreboard players operation abilityDmg3 saves /= boomerLeader abilityStats
execute if score abilitynumber3 abilities matches 25 if score slot18isatk booleans matches 1 run scoreboard players operation abilityDmg3 saves += marks slot23
execute if score abilitynumber3 abilities matches 25 if score slot18isatk booleans matches 1 run scoreboard players operation abilityDmg3 saves /= atkmultiplier slot23
execute if score abilitynumber3 abilities matches 25 if score slot18isatk booleans matches 1 run execute if score ward slot23 matches 0 run scoreboard players operation shield slot23 -= abilityDmg3 saves
execute if score abilitynumber3 abilities matches 25 if score slot18isatk booleans matches 1 run execute if score ward slot23 matches 0 if score shield slot23 matches ..0 run scoreboard players operation slot23 hp += shield slot23
execute if score abilitynumber3 abilities matches 25 if score slot18isatk booleans matches 1 run execute if score ward slot23 matches 1.. run function chthree:wardslot23


#Ripper
execute if score abilitynumber3 abilities matches 29 if score slot22 hp <= ripper abilityStats if score ward slot22 matches 0 if score invincibleSlot22 booleaneffects matches 0 run scoreboard players set slot22 hp 0
execute if score abilitynumber3 abilities matches 29 if score slot22 hp <= ripper abilityStats if score invincibleSlot22 booleaneffects matches 0 if score ward slot22 matches 1.. run function chthree:wardslot22
execute if score abilitynumber3 abilities matches 29 run tellraw @a[tag=game3] ["",{"selector":"@p[tag=p5]"}," used Execute on Slot 6!"]
execute if score abilitynumber3 abilities matches 29 at @e[name=slot22] run particle minecraft:raid_omen ~ ~1 ~ 0.9 0.9 0.9 0.1 100


#Domino
execute if score abilitynumber3 abilities matches 30 run scoreboard players operation abilityDmg3 saves = domino abilityStats
execute if score abilitynumber3 abilities matches 30 if score slot17isatk booleans matches 1 run scoreboard players operation abilityDmg3 saves += slot17 atkmodifiers
execute if score abilitynumber3 abilities matches 30 if score slot18isatk booleans matches 1 run scoreboard players operation abilityDmg3 saves += slot18 atkmodifiers
execute if score abilitynumber3 abilities matches 30 if score slot19isatk booleans matches 1 run scoreboard players operation abilityDmg3 saves += slot19 atkmodifiers
execute if score abilitynumber3 abilities matches 30 run scoreboard players operation abilityDmg3 saves += marks slot22
execute if score abilitynumber3 abilities matches 30 run scoreboard players operation abilityDmg3 saves /= atkmultiplier slot22
execute if score abilitynumber3 abilities matches 30 run execute if score ward slot22 matches 0 run scoreboard players operation shield slot22 -= abilityDmg3 saves
execute if score abilitynumber3 abilities matches 30 run execute if score ward slot22 matches 0 if score shield slot22 matches ..0 run scoreboard players operation slot22 hp += shield slot22
execute if score abilitynumber3 abilities matches 30 if score ward slot22 matches 0 if score durationSlot22 poison < dominoDuration abilityStats run scoreboard players operation durationSlot22 poison = dominoDuration abilityStats
execute if score abilitynumber3 abilities matches 30 if score ward slot22 matches 0 run scoreboard players operation slot22Poison poison += dominoPoisonLeader abilityStats
execute if score abilitynumber3 abilities matches 30 run execute if score ward slot22 matches 1.. run function chthree:wardslot22
execute if score abilitynumber3 abilities matches 30 at @e[name=slot22] run particle minecraft:trial_omen ~ ~1 ~ 0.9 0.9 0.9 0.1 100
execute if score abilitynumber3 abilities matches 30 run tellraw @a[tag=game3] ["",{"selector":"@p[tag=p5]"}," used Poison Dart on Slot 6!"]

#Doc Basic Attack
execute if score abilitynumber3 abilities matches -1 run scoreboard players operation slot22Disease disease += doc heroattack
execute if score abilitynumber3 abilities matches -1 if score slot18isatk booleans matches 1 run scoreboard players operation slot22Disease disease += docLeader heroattack
execute if score abilitynumber3 abilities matches -1 at @e[name=slot22] run particle minecraft:trial_omen ~ ~1 ~ 0.9 0.9 0.9 0.1 50

#Healing Totem
execute if score abilitynumber3 abilities matches -3 run execute if score slot22bleeding booleaneffects matches 0 run scoreboard players operation slot22 hp += healingTotemHeal spellStats
execute if score abilitynumber3 abilities matches -3 at @e[name=slot22] run particle minecraft:composter ~ ~1 ~ 0.9 0.9 0.9 0.1 50

#Eidolon Basic Attack
execute if score abilitynumber3 abilities matches -4 run execute if score ward slot22 matches 0 if score durationSlot17-22 fear <= eidolonFearDuration abilityStats if score slot17isatk booleans matches 1 run scoreboard players operation durationSlot17-22 fear = eidolonFearDuration abilityStats
execute if score abilitynumber3 abilities matches -4 run execute if score ward slot22 matches 0 if score durationSlot18-22 fear <= eidolonFearDuration abilityStats if score slot18isatk booleans matches 1 run scoreboard players operation durationSlot18-22 fear = eidolonFearDuration abilityStats
execute if score abilitynumber3 abilities matches -4 run execute if score ward slot22 matches 0 if score durationSlot19-22 fear <= eidolonFearDuration abilityStats if score slot19isatk booleans matches 1 run scoreboard players operation durationSlot19-22 fear = eidolonFearDuration abilityStats
execute if score abilitynumber3 abilities matches -4 run scoreboard players operation abilityDmg3 saves = eidolon heroattack
execute if score abilitynumber3 abilities matches -4 if score slot17isatk booleans matches 1 run scoreboard players operation abilityDmg3 saves += slot17 atkmodifiers
execute if score abilitynumber3 abilities matches -4 if score slot18isatk booleans matches 1 run scoreboard players operation abilityDmg3 saves += slot18 atkmodifiers
execute if score abilitynumber3 abilities matches -4 if score slot19isatk booleans matches 1 run scoreboard players operation abilityDmg3 saves += slot19 atkmodifiers
execute if score abilitynumber3 abilities matches -4 run scoreboard players operation abilityDmg3 saves += marks slot22
execute if score abilitynumber3 abilities matches -4 run scoreboard players operation abilityDmg3 saves /= atkmultiplier slot22
execute if score abilitynumber3 abilities matches -4 run execute if score ward slot22 matches 0 run scoreboard players operation shield slot22 -= abilityDmg3 saves
execute if score abilitynumber3 abilities matches -4 run execute if score ward slot22 matches 0 if score shield slot22 matches ..0 run scoreboard players operation slot22 hp += shield slot22
execute if score abilitynumber3 abilities matches -4 run execute if score ward slot22 matches 1.. run function chthree:wardslot22
execute if score abilitynumber3 abilities matches -4 run execute at @e[name=slot22,type=armor_stand] run particle minecraft:crit ~ ~1 ~ 0.9 0.9 0.9 0.5 100

#This goes at the bottom
execute if score shield slot21 matches ..0 run scoreboard players set shield slot21 0
execute if score shield slot22 matches ..0 run scoreboard players set shield slot22 0
execute if score shield slot23 matches ..0 run scoreboard players set shield slot23 0
execute if score shield slot24 matches ..0 run scoreboard players set shield slot24 0
function chthree:turnend
#Make sure to add burn to your abilities







