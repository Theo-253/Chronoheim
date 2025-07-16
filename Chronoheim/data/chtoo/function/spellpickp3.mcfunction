#Spell Point Giver
execute if score character# slot15 matches 1.. run execute if score character# slot11 matches 1.. run execute if score Spell_Points_P3 Spell_Points matches -1 run scoreboard players set Spell_Points_P3 Spell_Points 7
execute if score character# slot15 matches 1.. run execute if score character# slot11 matches 1.. run execute if score Spell_Points_P4 Spell_Points matches -1 run scoreboard players set Spell_Points_P4 Spell_Points 7
execute if score character# slot15 matches 1.. run execute if score character# slot11 matches 1.. run execute if score Spell_Points_P3 Spell_Points matches -2 run scoreboard players set Spell_Points_P3 Spell_Points 9
execute if score character# slot15 matches 1.. run execute if score character# slot11 matches 1.. run execute if score Spell_Points_P3 Spell_Points matches -3 run scoreboard players set Spell_Points_P3 Spell_Points 11
execute if score character# slot15 matches 1.. run execute if score character# slot11 matches 1.. run execute if score Spell_Points_P4 Spell_Points matches -2 run scoreboard players set Spell_Points_P4 Spell_Points 9
execute if score character# slot15 matches 1.. run execute if score character# slot11 matches 1.. run execute if score Spell_Points_P4 Spell_Points matches -3 run scoreboard players set Spell_Points_P4 Spell_Points 11

scoreboard players operation spellpick3 drafts = Spell_Points_P3 Spell_Points

#Fireball Select P3
execute if score Spell_Points_P3 Spell_Points >= fireballSp spellStats run execute if items entity @p[tag=p3] container.* fire_charge[minecraft:custom_name={"text":"Fireball","bold":true,"color":"gray","italic":false}] run tag @p[tag=p3] add fireball
execute if score Spell_Points_P3 Spell_Points >= fireballSp spellStats run execute if items entity @p[tag=p3] container.* fire_charge[minecraft:custom_name={"text":"Fireball","bold":true,"color":"gray","italic":false}] run tellraw @a[tag=p3] ["",{"selector":"@p[tag=p3]"}," picked Fireball."]
execute if score Spell_Points_P3 Spell_Points < fireballSp spellStats run execute if items entity @p[tag=p3] container.* fire_charge[minecraft:custom_name={"text":"Fireball","bold":true,"color":"gray","italic":false}] run tellraw @a[tag=p3] ["",{"selector":"@p[tag=p3]"}," You dont have enough spell points to equip this spell."]
execute if score Spell_Points_P3 Spell_Points < fireballSp spellStats run execute if items entity @p[tag=p3] container.* fire_charge[minecraft:custom_name={"text":"Fireball","bold":true,"color":"gray","italic":false}] run clear @a[tag=p3]
execute if score Spell_Points_P3 Spell_Points >= fireballSp spellStats run execute if items entity @p[tag=p3] container.* fire_charge[minecraft:custom_name={"text":"Fireball","bold":true,"color":"gray","italic":false}] run scoreboard players operation Spell_Points_P3 Spell_Points -= fireballSp spellStats
execute if score Spell_Points_P3 Spell_Points >= fireballSp spellStats run execute if items entity @p[tag=p3] container.* fire_charge[minecraft:custom_name={"text":"Fireball","bold":true,"color":"gray","italic":false}] run effect clear @a[tag=p3] water_breathing


#Heal Select P3
execute if score Spell_Points_P3 Spell_Points >= healSp spellStats run execute if items entity @p[tag=p3] container.* emerald[minecraft:custom_name={"text":"Heal","bold":true,"color":"gray","italic":false}] run tag @p[tag=p3] add heal
execute if score Spell_Points_P3 Spell_Points >= healSp spellStats run execute if items entity @p[tag=p3] container.* emerald[minecraft:custom_name={"text":"Heal","bold":true,"color":"gray","italic":false}] run tellraw @a[tag=p3] ["",{"selector":"@p[tag=p3]"}," picked Heal."]
execute if score Spell_Points_P3 Spell_Points < healSp spellStats run execute if items entity @p[tag=p3] container.* emerald[minecraft:custom_name={"text":"Heal","bold":true,"color":"gray","italic":false}] run tellraw @a[tag=p3] ["",{"selector":"@p[tag=p3]"}," You dont have enough spell points to equip this spell."]
execute if score Spell_Points_P3 Spell_Points < healSp spellStats run execute if items entity @p[tag=p3] container.* emerald[minecraft:custom_name={"text":"Heal","bold":true,"color":"gray","italic":false}] run clear @a[tag=p3]
execute if score Spell_Points_P3 Spell_Points >= healSp spellStats run execute if items entity @p[tag=p3] container.* emerald[minecraft:custom_name={"text":"Heal","bold":true,"color":"gray","italic":false}] run scoreboard players operation Spell_Points_P3 Spell_Points -= healSp spellStats
execute if score Spell_Points_P3 Spell_Points >= healSp spellStats run execute if items entity @p[tag=p3] container.* emerald[minecraft:custom_name={"text":"Heal","bold":true,"color":"gray","italic":false}] run effect clear @a[tag=p3] water_breathing


#Chain Lightning Select P3
execute if score Spell_Points_P3 Spell_Points >= chainLightningSp spellStats run execute if items entity @p[tag=p3] container.* lightning_rod[minecraft:custom_name={"text":"Chain Lightning","bold":true,"color":"gray","italic":false}] run tag @p[tag=p3] add chainlightning
execute if score Spell_Points_P3 Spell_Points >= chainLightningSp spellStats run execute if items entity @p[tag=p3] container.* lightning_rod[minecraft:custom_name={"text":"Chain Lightning","bold":true,"color":"gray","italic":false}] run tellraw @a[tag=p3] ["",{"selector":"@p[tag=p3]"}," picked Chain Lightning."]
execute if score Spell_Points_P3 Spell_Points < chainLightningSp spellStats run execute if items entity @p[tag=p3] container.* lightning_rod[minecraft:custom_name={"text":"Chain Lightning","bold":true,"color":"gray","italic":false}] run tellraw @a[tag=p3] ["",{"selector":"@p[tag=p3]"}," You dont have enough spell points to equip this spell."]
execute if score Spell_Points_P3 Spell_Points < chainLightningSp spellStats run execute if items entity @p[tag=p3] container.* lightning_rod[minecraft:custom_name={"text":"Chain Lightning","bold":true,"color":"gray","italic":false}] run clear @a[tag=p3]
execute if score Spell_Points_P3 Spell_Points >= chainLightningSp spellStats run execute if items entity @p[tag=p3] container.* lightning_rod[minecraft:custom_name={"text":"Chain Lightning","bold":true,"color":"gray","italic":false}] run scoreboard players operation Spell_Points_P3 Spell_Points -= chainLightningSp spellStats
execute if score Spell_Points_P3 Spell_Points >= chainLightningSp spellStats run execute if items entity @p[tag=p3] container.* lightning_rod[minecraft:custom_name={"text":"Chain Lightning","bold":true,"color":"gray","italic":false}] run effect clear @a[tag=p3] water_breathing



#Magic Missile Lightning Select P3
execute if score Spell_Points_P3 Spell_Points >= magicMissileSp spellStats run execute if items entity @p[tag=p3,tag=magicmissileO] container.* spectral_arrow[minecraft:custom_name={"text":"Magic Missile","bold":true,"color":"dark_green","italic":false}] run tag @p[tag=p3] add magicmissile
execute if score Spell_Points_P3 Spell_Points >= magicMissileSp spellStats run execute if items entity @p[tag=p3,tag=magicmissileO] container.* spectral_arrow[minecraft:custom_name={"text":"Magic Missile","bold":true,"color":"dark_green","italic":false}] run tellraw @a[tag=p3] ["",{"selector":"@p[tag=p3]"}," picked Magic Missile."]
execute if score Spell_Points_P3 Spell_Points < magicMissileSp spellStats run execute if items entity @p[tag=p3,tag=magicmissileO] container.* spectral_arrow[minecraft:custom_name={"text":"Magic Missile","bold":true,"color":"dark_green","italic":false}] run tellraw @a[tag=p3] ["",{"selector":"@p[tag=p3]"}," You dont have enough spell points to equip this spell."]
execute if score Spell_Points_P3 Spell_Points < magicMissileSp spellStats run execute if items entity @p[tag=p3,tag=magicmissileO] container.* spectral_arrow[minecraft:custom_name={"text":"Magic Missile","bold":true,"color":"dark_green","italic":false}] run clear @a[tag=p3]
execute if score Spell_Points_P3 Spell_Points >= magicMissileSp spellStats run execute if items entity @p[tag=p3,tag=magicmissileO] container.* spectral_arrow[minecraft:custom_name={"text":"Magic Missile","bold":true,"color":"dark_green","italic":false}] run scoreboard players operation Spell_Points_P3 Spell_Points -= magicMissileSp spellStats
execute if score Spell_Points_P3 Spell_Points >= magicMissileSp spellStats run execute if items entity @p[tag=p3,tag=magicmissileO] container.* spectral_arrow[minecraft:custom_name={"text":"Magic Missile","bold":true,"color":"dark_green","italic":false}] run effect clear @a[tag=p3] water_breathing

execute if items entity @p[tag=p3,tag=!magicmissileO] container.* spectral_arrow[minecraft:custom_name={"text":"Magic Missile","bold":true,"color":"dark_green","italic":false}] run tellraw @a[tag=p3] ["Sorry, you don't own this spell."]
execute if items entity @p[tag=p3,tag=!magicmissileO] container.* spectral_arrow[minecraft:custom_name={"text":"Magic Missile","bold":true,"color":"dark_green","italic":false}] run clear @a[tag=p3]




#Ritual of Blood Select P3
execute if score Spell_Points_P3 Spell_Points >= ritualOfBloodSp spellStats run execute if items entity @p[tag=p3,tag=ritualofbloodO] container.* redstone[minecraft:custom_name={"text":"Ritual of Blood","bold":true,"color":"dark_green","italic":false}] run tag @p[tag=p3] add ritualofblood
execute if score Spell_Points_P3 Spell_Points >= ritualOfBloodSp spellStats run execute if items entity @p[tag=p3,tag=ritualofbloodO] container.* redstone[minecraft:custom_name={"text":"Ritual of Blood","bold":true,"color":"dark_green","italic":false}] run tellraw @a[tag=p3] ["",{"selector":"@p[tag=p3]"}," picked Ritual of Blood."]
execute if score Spell_Points_P3 Spell_Points < ritualOfBloodSp spellStats run execute if items entity @p[tag=p3,tag=ritualofbloodO] container.* redstone[minecraft:custom_name={"text":"Ritual of Blood","bold":true,"color":"dark_green","italic":false}] run tellraw @a[tag=p3] ["",{"selector":"@p[tag=p3]"}," You dont have enough spell points to equip this spell."]
execute if score Spell_Points_P3 Spell_Points < ritualOfBloodSp spellStats run execute if items entity @p[tag=p3,tag=ritualofbloodO] container.* redstone[minecraft:custom_name={"text":"Ritual of Blood","bold":true,"color":"dark_green","italic":false}] run clear @a[tag=p3]
execute if score Spell_Points_P3 Spell_Points >= ritualOfBloodSp spellStats run execute if items entity @p[tag=p3,tag=ritualofbloodO] container.* redstone[minecraft:custom_name={"text":"Ritual of Blood","bold":true,"color":"dark_green","italic":false}] run scoreboard players operation Spell_Points_P3 Spell_Points -= ritualOfBloodSp spellStats
execute if score Spell_Points_P3 Spell_Points >= ritualOfBloodSp spellStats run execute if items entity @p[tag=p3,tag=ritualofbloodO] container.* redstone[minecraft:custom_name={"text":"Ritual of Blood","bold":true,"color":"dark_green","italic":false}] run effect clear @a[tag=p3] water_breathing

execute if items entity @p[tag=p3,tag=!ritualofbloodO] container.* redstone[minecraft:custom_name={"text":"Ritual of Blood","bold":true,"color":"dark_green","italic":false}] run tellraw @a[tag=p3] ["Sorry, you don't own this spell."]
execute if items entity @p[tag=p3,tag=!ritualofbloodO] container.* redstone[minecraft:custom_name={"text":"Ritual of Blood","bold":true,"color":"dark_green","italic":false}] run clear @a[tag=p3]




#Frost Bolt Select P3
execute if score Spell_Points_P3 Spell_Points >= frostboltSp spellStats run execute if items entity @p[tag=p3,tag=frostboltO] container.* breeze_rod[minecraft:custom_name={"text":"Frostbolt","bold":true,"color":"dark_green","italic":false}] run tag @p[tag=p3] add frostbolt
execute if score Spell_Points_P3 Spell_Points >= frostboltSp spellStats run execute if items entity @p[tag=p3,tag=frostboltO] container.* breeze_rod[minecraft:custom_name={"text":"Frostbolt","bold":true,"color":"dark_green","italic":false}] run tellraw @a[tag=p3] ["",{"selector":"@p[tag=p3]"}," picked Frostbolt."]
execute if score Spell_Points_P3 Spell_Points < frostboltSp spellStats run execute if items entity @p[tag=p3,tag=frostboltO] container.* breeze_rod[minecraft:custom_name={"text":"Frostbolt","bold":true,"color":"dark_green","italic":false}] run tellraw @a[tag=p3] ["",{"selector":"@p[tag=p3]"}," You dont have enough spell points to equip this spell."]
execute if score Spell_Points_P3 Spell_Points < frostboltSp spellStats run execute if items entity @p[tag=p3,tag=frostboltO] container.* breeze_rod[minecraft:custom_name={"text":"Frostbolt","bold":true,"color":"dark_green","italic":false}] run clear @a[tag=p3]
execute if score Spell_Points_P3 Spell_Points >= frostboltSp spellStats run execute if items entity @p[tag=p3,tag=frostboltO] container.* breeze_rod[minecraft:custom_name={"text":"Frostbolt","bold":true,"color":"dark_green","italic":false}] run scoreboard players operation Spell_Points_P3 Spell_Points -= frostboltSp spellStats
execute if score Spell_Points_P3 Spell_Points >= frostboltSp spellStats run execute if items entity @p[tag=p3,tag=frostboltO] container.* breeze_rod[minecraft:custom_name={"text":"Frostbolt","bold":true,"color":"dark_green","italic":false}] run effect clear @a[tag=p3] water_breathing

execute if items entity @p[tag=p3,tag=!frostboltO] container.* breeze_rod[minecraft:custom_name={"text":"Frostbolt","bold":true,"color":"dark_green","italic":false}] run tellraw @a[tag=p3] ["Sorry, you don't own this spell."]
execute if items entity @p[tag=p3,tag=!frostboltO] container.* breeze_rod[minecraft:custom_name={"text":"Frostbolt","bold":true,"color":"dark_green","italic":false}] run clear @a[tag=p3]




#Meteor Select P3
execute if score Spell_Points_P3 Spell_Points >= meteorSp spellStats run execute if items entity @p[tag=p3,tag=meteorO] container.* dead_brain_coral_block[minecraft:custom_name={"text":"Meteor","bold":true,"color":"dark_green","italic":false}] run tag @p[tag=p3] add meteor
execute if score Spell_Points_P3 Spell_Points >= meteorSp spellStats run execute if items entity @p[tag=p3,tag=meteorO] container.* dead_brain_coral_block[minecraft:custom_name={"text":"Meteor","bold":true,"color":"dark_green","italic":false}] run tellraw @a[tag=p3] ["",{"selector":"@p[tag=p3]"}," picked Meteor."]
execute if score Spell_Points_P3 Spell_Points < meteorSp spellStats run execute if items entity @p[tag=p3,tag=meteorO] container.* dead_brain_coral_block[minecraft:custom_name={"text":"Meteor","bold":true,"color":"dark_green","italic":false}] run tellraw @a[tag=p3] ["",{"selector":"@p[tag=p3]"}," You dont have enough spell points to equip this spell."]
execute if score Spell_Points_P3 Spell_Points < meteorSp spellStats run execute if items entity @p[tag=p3,tag=meteorO] container.* dead_brain_coral_block[minecraft:custom_name={"text":"Meteor","bold":true,"color":"dark_green","italic":false}] run clear @a[tag=p3]
execute if score Spell_Points_P3 Spell_Points >= meteorSp spellStats run execute if items entity @p[tag=p3,tag=meteorO] container.* dead_brain_coral_block[minecraft:custom_name={"text":"Meteor","bold":true,"color":"dark_green","italic":false}] run scoreboard players operation Spell_Points_P3 Spell_Points -= meteorSp spellStats
execute if score Spell_Points_P3 Spell_Points >= meteorSp spellStats run execute if items entity @p[tag=p3,tag=meteorO] container.* dead_brain_coral_block[minecraft:custom_name={"text":"Meteor","bold":true,"color":"dark_green","italic":false}] run effect clear @a[tag=p3] water_breathing

execute if items entity @p[tag=p3,tag=!meteorO] container.* dead_brain_coral_block[minecraft:custom_name={"text":"Meteor","bold":true,"color":"dark_green","italic":false}] run tellraw @a[tag=p3] ["Sorry, you don't own this spell."]
execute if items entity @p[tag=p3,tag=!meteorO] container.* dead_brain_coral_block[minecraft:custom_name={"text":"Meteor","bold":true,"color":"dark_green","italic":false}] run clear @a[tag=p3]


#Shield Select P3
execute if score Spell_Points_P3 Spell_Points >= shieldSp spellStats run execute if items entity @p[tag=p3,tag=shieldO] container.* shield[minecraft:custom_name={"text":"Shield","bold":true,"color":"dark_green","italic":false}] run tag @p[tag=p3] add shield
execute if score Spell_Points_P3 Spell_Points >= shieldSp spellStats run execute if items entity @p[tag=p3,tag=shieldO] container.* shield[minecraft:custom_name={"text":"Shield","bold":true,"color":"dark_green","italic":false}] run tellraw @a[tag=p3] ["",{"selector":"@p[tag=p3]"}," picked Shield."]
execute if score Spell_Points_P3 Spell_Points < shieldSp spellStats run execute if items entity @p[tag=p3,tag=shieldO] container.* shield[minecraft:custom_name={"text":"Shield","bold":true,"color":"dark_green","italic":false}] run tellraw @a[tag=p3] ["",{"selector":"@p[tag=p3]"}," You dont have enough spell points to equip this spell."]
execute if score Spell_Points_P3 Spell_Points < shieldSp spellStats run execute if items entity @p[tag=p3,tag=shieldO] container.* shield[minecraft:custom_name={"text":"Shield","bold":true,"color":"dark_green","italic":false}] run clear @a[tag=p3]
execute if score Spell_Points_P3 Spell_Points >= shieldSp spellStats run execute if items entity @p[tag=p3,tag=shieldO] container.* shield[minecraft:custom_name={"text":"Shield","bold":true,"color":"dark_green","italic":false}] run scoreboard players operation Spell_Points_P3 Spell_Points -= shieldSp spellStats
execute if score Spell_Points_P3 Spell_Points >= shieldSp spellStats run execute if items entity @p[tag=p3,tag=shieldO] container.* shield[minecraft:custom_name={"text":"Shield","bold":true,"color":"dark_green","italic":false}] run effect clear @a[tag=p3] water_breathing

execute if items entity @p[tag=p3,tag=!shieldO] container.* shield[minecraft:custom_name={"text":"Shield","bold":true,"color":"dark_green","italic":false}] run tellraw @a[tag=p3] ["Sorry, you don't own this spell."]
execute if items entity @p[tag=p3,tag=!shieldO] container.* shield[minecraft:custom_name={"text":"Shield","bold":true,"color":"dark_green","italic":false}] run clear @a[tag=p3]



#Shock Orb Select P3
execute if score Spell_Points_P3 Spell_Points >= shockOrbSp spellStats run execute if items entity @p[tag=p3,tag=shockorbO] container.* heart_of_the_sea[minecraft:custom_name={"text":"Ball Lightning","bold":true,"color":"dark_green","italic":false}] run tag @p[tag=p3] add shockorb
execute if score Spell_Points_P3 Spell_Points >= shockOrbSp spellStats run execute if items entity @p[tag=p3,tag=shockorbO] container.* heart_of_the_sea[minecraft:custom_name={"text":"Ball Lightning","bold":true,"color":"dark_green","italic":false}] run tellraw @a[tag=p3] ["",{"selector":"@p[tag=p3]"}," picked Ball Lightning."]
execute if score Spell_Points_P3 Spell_Points < shockOrbSp spellStats run execute if items entity @p[tag=p3,tag=shockorbO] container.* heart_of_the_sea[minecraft:custom_name={"text":"Ball Lightning","bold":true,"color":"dark_green","italic":false}] run tellraw @a[tag=p3] ["",{"selector":"@p[tag=p3]"}," You dont have enough spell points to equip this spell."]
execute if score Spell_Points_P3 Spell_Points < shockOrbSp spellStats run execute if items entity @p[tag=p3,tag=shockorbO] container.* heart_of_the_sea[minecraft:custom_name={"text":"Ball Lightning","bold":true,"color":"dark_green","italic":false}] run clear @a[tag=p3]
execute if score Spell_Points_P3 Spell_Points >= shockOrbSp spellStats run execute if items entity @p[tag=p3,tag=shockorbO] container.* heart_of_the_sea[minecraft:custom_name={"text":"Ball Lightning","bold":true,"color":"dark_green","italic":false}] run scoreboard players operation Spell_Points_P3 Spell_Points -= shockOrbSp spellStats
execute if score Spell_Points_P3 Spell_Points >= shockOrbSp spellStats run execute if items entity @p[tag=p3,tag=shockorbO] container.* heart_of_the_sea[minecraft:custom_name={"text":"Ball Lightning","bold":true,"color":"dark_green","italic":false}] run effect clear @a[tag=p3] water_breathing

execute if items entity @p[tag=p3,tag=!shockorbO] container.* heart_of_the_sea[minecraft:custom_name={"text":"Ball Lightning","bold":true,"color":"dark_green","italic":false}] run tellraw @a[tag=p3] ["Sorry, you don't own this spell."]
execute if items entity @p[tag=p3,tag=!shockorbO] container.* heart_of_the_sea[minecraft:custom_name={"text":"Ball Lightning","bold":true,"color":"dark_green","italic":false}] run clear @a[tag=p3]




#Witch Bolt Select P3
execute if score Spell_Points_P3 Spell_Points >= witchBoltSp spellStats run execute if items entity @p[tag=p3,tag=witchboltO] container.* blaze_rod[minecraft:custom_name={"text":"Witch Bolt","bold":true,"color":"dark_green","italic":false}] run tag @p[tag=p3] add witchbolt
execute if score Spell_Points_P3 Spell_Points >= witchBoltSp spellStats run execute if items entity @p[tag=p3,tag=witchboltO] container.* blaze_rod[minecraft:custom_name={"text":"Witch Bolt","bold":true,"color":"dark_green","italic":false}] run tellraw @a[tag=p3] ["",{"selector":"@p[tag=p3]"}," picked Witch Bolt."]
execute if score Spell_Points_P3 Spell_Points < witchBoltSp spellStats run execute if items entity @p[tag=p3,tag=witchboltO] container.* blaze_rod[minecraft:custom_name={"text":"Witch Bolt","bold":true,"color":"dark_green","italic":false}] run tellraw @a[tag=p3] ["",{"selector":"@p[tag=p3]"}," You dont have enough spell points to equip this spell."]
execute if score Spell_Points_P3 Spell_Points < witchBoltSp spellStats run execute if items entity @p[tag=p3,tag=witchboltO] container.* blaze_rod[minecraft:custom_name={"text":"Witch Bolt","bold":true,"color":"dark_green","italic":false}] run clear @a[tag=p3]
execute if score Spell_Points_P3 Spell_Points >= witchBoltSp spellStats run execute if items entity @p[tag=p3,tag=witchboltO] container.* blaze_rod[minecraft:custom_name={"text":"Witch Bolt","bold":true,"color":"dark_green","italic":false}] run scoreboard players operation Spell_Points_P3 Spell_Points -= witchBoltSp spellStats
execute if score Spell_Points_P3 Spell_Points >= witchBoltSP spellStats run execute if items entity @p[tag=p3,tag=witchboltO] container.* blaze_rod[minecraft:custom_name={"text":"Witch Bolt","bold":true,"color":"dark_green","italic":false}] run effect clear @a[tag=p3] water_breathing

execute if items entity @p[tag=p3,tag=!witchboltO] container.* blaze_rod[minecraft:custom_name={"text":"Witch Bolt","bold":true,"color":"dark_green","italic":false}] run tellraw @a[tag=p3] ["Sorry, you don't own this spell."]
execute if items entity @p[tag=p3,tag=!witchboltO] container.* blaze_rod[minecraft:custom_name={"text":"Witch Bolt","bold":true,"color":"dark_green","italic":false}] run clear @a[tag=p3]
#Swiftness Select P3
execute if score Spell_Points_P3 Spell_Points >= swiftnessSp spellStats run execute if items entity @p[tag=p3,tag=swiftnessO] container.* rabbit_foot[minecraft:custom_name={"text":"Swiftness","bold":true,"color":"dark_green","italic":false}] run tag @p[tag=p3] add swiftness
execute if score Spell_Points_P3 Spell_Points >= swiftnessSp spellStats run execute if items entity @p[tag=p3,tag=swiftnessO] container.* rabbit_foot[minecraft:custom_name={"text":"Swiftness","bold":true,"color":"dark_green","italic":false}] run tellraw @a[tag=p3] ["",{"selector":"@p[tag=p3]"}," picked Swiftness."]
execute if score Spell_Points_P3 Spell_Points < swiftnessSp spellStats run execute if items entity @p[tag=p3,tag=swiftnessO] container.* rabbit_foot[minecraft:custom_name={"text":"Swiftness","bold":true,"color":"dark_green","italic":false}] run tellraw @a[tag=p3] ["",{"selector":"@p[tag=p3]"}," You dont have enough spell points to equip this spell."]
execute if score Spell_Points_P3 Spell_Points < swiftnessSp spellStats run execute if items entity @p[tag=p3,tag=swiftnessO] container.* rabbit_foot[minecraft:custom_name={"text":"Swiftness","bold":true,"color":"dark_green","italic":false}] run clear @a[tag=p3]
execute if score Spell_Points_P3 Spell_Points >= swiftnessSp spellStats run execute if items entity @p[tag=p3,tag=swiftnessO] container.* rabbit_foot[minecraft:custom_name={"text":"Swiftness","bold":true,"color":"dark_green","italic":false}] run scoreboard players operation Spell_Points_P3 Spell_Points -= swiftnessSp spellStats
execute if score Spell_Points_P3 Spell_Points >= swiftnessSp spellStats run execute if items entity @p[tag=p3,tag=swiftnessO] container.* rabbit_foot[minecraft:custom_name={"text":"Swiftness","bold":true,"color":"dark_green","italic":false}] run effect clear @a[tag=p3] water_breathing

execute if items entity @p[tag=p3,tag=!swiftnessO] container.* rabbit_foot[minecraft:custom_name={"text":"Swiftness","bold":true,"color":"dark_green","italic":false}] run tellraw @a[tag=p3] ["Sorry, you don't own this spell."]
execute if items entity @p[tag=p3,tag=!swiftnessO] container.* rabbit_foot[minecraft:custom_name={"text":"Swiftness","bold":true,"color":"dark_green","italic":false}] run clear @a[tag=p3]


#Embrittle Select P3
execute if score Spell_Points_P3 Spell_Points >= embrittleSp spellStats run execute if items entity @p[tag=p3,tag=embrittleO] container.* damaged_anvil[minecraft:custom_name={"text":"Embrittle","bold":true,"color":"dark_green","italic":false}] run tag @p[tag=p3] add embrittle
execute if score Spell_Points_P3 Spell_Points >= embrittleSp spellStats run execute if items entity @p[tag=p3,tag=embrittleO] container.* damaged_anvil[minecraft:custom_name={"text":"Embrittle","bold":true,"color":"dark_green","italic":false}] run tellraw @a[tag=p3] ["",{"selector":"@p[tag=p3]"}," picked Embrittle."]
execute if score Spell_Points_P3 Spell_Points < embrittleSp spellStats run execute if items entity @p[tag=p3,tag=embrittleO] container.* damaged_anvil[minecraft:custom_name={"text":"Embrittle","bold":true,"color":"dark_green","italic":false}] run tellraw @a[tag=p3] ["",{"selector":"@p[tag=p3]"}," You dont have enough spell points to equip this spell."]
execute if score Spell_Points_P3 Spell_Points < embrittleSp spellStats run execute if items entity @p[tag=p3,tag=embrittleO] container.* damaged_anvil[minecraft:custom_name={"text":"Embrittle","bold":true,"color":"dark_green","italic":false}] run clear @a[tag=p3]
execute if score Spell_Points_P3 Spell_Points >= embrittleSp spellStats run execute if items entity @p[tag=p3,tag=embrittleO] container.* damaged_anvil[minecraft:custom_name={"text":"Embrittle","bold":true,"color":"dark_green","italic":false}] run scoreboard players operation Spell_Points_P3 Spell_Points -= embrittleSp spellStats
execute if score Spell_Points_P3 Spell_Points >= embrittleSp spellStats run execute if items entity @p[tag=p3,tag=embrittleO] container.* damaged_anvil[minecraft:custom_name={"text":"Embrittle","bold":true,"color":"dark_green","italic":false}] run effect clear @a[tag=p3] water_breathing

execute if items entity @p[tag=p3,tag=!embrittleO] container.* damaged_anvil[minecraft:custom_name={"text":"Embrittle","bold":true,"color":"dark_green","italic":false}] run tellraw @a[tag=p3] ["Sorry, you don't own this spell."]
execute if items entity @p[tag=p3,tag=!embrittleO] container.* damaged_anvil[minecraft:custom_name={"text":"Embrittle","bold":true,"color":"dark_green","italic":false}] run clear @a[tag=p3]


#Embiggen Select P3
execute if score Spell_Points_P3 Spell_Points >= embiggenSp spellStats run execute if items entity @p[tag=p3,tag=embiggenO] container.* pufferfish[minecraft:custom_name={"text":"Embiggen","bold":true,"color":"dark_green","italic":false}] run tag @p[tag=p3] add embiggen
execute if score Spell_Points_P3 Spell_Points >= embiggenSp spellStats run execute if items entity @p[tag=p3,tag=embiggenO] container.* pufferfish[minecraft:custom_name={"text":"Embiggen","bold":true,"color":"dark_green","italic":false}] run tellraw @a[tag=p3] ["",{"selector":"@p[tag=p3]"}," picked Embiggen."]
execute if score Spell_Points_P3 Spell_Points < embiggenSp spellStats run execute if items entity @p[tag=p3,tag=embiggenO] container.* pufferfish[minecraft:custom_name={"text":"Embiggen","bold":true,"color":"dark_green","italic":false}] run tellraw @a[tag=p3] ["",{"selector":"@p[tag=p3]"}," You dont have enough spell points to equip this spell."]
execute if score Spell_Points_P3 Spell_Points < embiggenSp spellStats run execute if items entity @p[tag=p3,tag=embiggenO] container.* pufferfish[minecraft:custom_name={"text":"Embiggen","bold":true,"color":"dark_green","italic":false}] run clear @a[tag=p3]
execute if score Spell_Points_P3 Spell_Points >= embiggenSp spellStats run execute if items entity @p[tag=p3,tag=embiggenO] container.* pufferfish[minecraft:custom_name={"text":"Embiggen","bold":true,"color":"dark_green","italic":false}] run scoreboard players operation Spell_Points_P3 Spell_Points -= embiggenSp spellStats
execute if score Spell_Points_P3 Spell_Points >= embiggenSp spellStats run execute if items entity @p[tag=p3,tag=embiggenO] container.* pufferfish[minecraft:custom_name={"text":"Embiggen","bold":true,"color":"dark_green","italic":false}] run effect clear @a[tag=p3] water_breathing

execute if items entity @p[tag=p3,tag=!embiggenO] container.* pufferfish[minecraft:custom_name={"text":"Embiggen","bold":true,"color":"dark_green","italic":false}] run tellraw @a[tag=p3] ["Sorry, you don't own this spell."]
execute if items entity @p[tag=p3,tag=!embiggenO] container.* pufferfish[minecraft:custom_name={"text":"Embiggen","bold":true,"color":"dark_green","italic":false}] run clear @a[tag=p3]




#Immolate Select P3
execute if score Spell_Points_P3 Spell_Points >= immolateSp spellStats run execute if items entity @p[tag=p3,tag=immolateO] container.* blaze_powder[minecraft:custom_name={"text":"Immolate","bold":true,"color":"blue","italic":false}] run tag @p[tag=p3] add immolate
execute if score Spell_Points_P3 Spell_Points >= immolateSp spellStats run execute if items entity @p[tag=p3,tag=immolateO] container.* blaze_powder[minecraft:custom_name={"text":"Immolate","bold":true,"color":"blue","italic":false}] run tellraw @a[tag=p3] ["",{"selector":"@p[tag=p3]"}," picked Immolate."]
execute if score Spell_Points_P3 Spell_Points < immolateSp spellStats run execute if items entity @p[tag=p3,tag=immolateO] container.* blaze_powder[minecraft:custom_name={"text":"Immolate","bold":true,"color":"blue","italic":false}] run tellraw @a[tag=p3] ["",{"selector":"@p[tag=p3]"}," You dont have enough spell points to equip this spell."]
execute if score Spell_Points_P3 Spell_Points < immolateSp spellStats run execute if items entity @p[tag=p3,tag=immolateO] container.* blaze_powder[minecraft:custom_name={"text":"Immolate","bold":true,"color":"blue","italic":false}] run clear @a[tag=p3]
execute if score Spell_Points_P3 Spell_Points >= immolateSp spellStats run execute if items entity @p[tag=p3,tag=immolateO] container.* blaze_powder[minecraft:custom_name={"text":"Immolate","bold":true,"color":"blue","italic":false}] run scoreboard players operation Spell_Points_P3 Spell_Points -= immolateSp spellStats
execute if score Spell_Points_P3 Spell_Points >= immolateSp spellStats run execute if items entity @p[tag=p3,tag=immolateO] container.* blaze_powder[minecraft:custom_name={"text":"Immolate","bold":true,"color":"blue","italic":false}] run effect clear @a[tag=p3] water_breathing

execute if items entity @p[tag=p3,tag=!immolateO] container.* blaze_powder[minecraft:custom_name={"text":"Immolate","bold":true,"color":"blue","italic":false}] run tellraw @a[tag=p3] ["Sorry, you don't own this spell."]
execute if items entity @p[tag=p3,tag=!immolateO] container.* blaze_powder[minecraft:custom_name={"text":"Immolate","bold":true,"color":"blue","italic":false}] run clear @a[tag=p3]



#Evil Eye Select P3
execute if score Spell_Points_P3 Spell_Points >= evilEyeSp spellStats run execute if items entity @p[tag=p3,tag=evileyeO] container.* spider_eye[minecraft:custom_name={"text":"Evil Eye","bold":true,"color":"blue","italic":false}] run tag @p[tag=p3] add evileye
execute if score Spell_Points_P3 Spell_Points >= evilEyeSp spellStats run execute if items entity @p[tag=p3,tag=evileyeO] container.* spider_eye[minecraft:custom_name={"text":"Evil Eye","bold":true,"color":"blue","italic":false}] run tellraw @a[tag=p3] ["",{"selector":"@p[tag=p3]"}," picked Evil Eye."]
execute if score Spell_Points_P3 Spell_Points < evilEyeSp spellStats run execute if items entity @p[tag=p3,tag=evileyeO] container.* spider_eye[minecraft:custom_name={"text":"Evil Eye","bold":true,"color":"blue","italic":false}] run tellraw @a[tag=p3] ["",{"selector":"@p[tag=p3]"}," You dont have enough spell points to equip this spell."]
execute if score Spell_Points_P3 Spell_Points < evilEyeSp spellStats run execute if items entity @p[tag=p3,tag=evileyeO] container.* spider_eye[minecraft:custom_name={"text":"Evil Eye","bold":true,"color":"blue","italic":false}] run clear @a[tag=p3]
execute if score Spell_Points_P3 Spell_Points >= evilEyeSp spellStats run execute if items entity @p[tag=p3,tag=evileyeO] container.* spider_eye[minecraft:custom_name={"text":"Evil Eye","bold":true,"color":"blue","italic":false}] run scoreboard players operation Spell_Points_P3 Spell_Points -= evilEyeSp spellStats
execute if score Spell_Points_P3 Spell_Points >= evilEyeSp spellStats run execute if items entity @p[tag=p3,tag=evileyeO] container.* spider_eye[minecraft:custom_name={"text":"Evil Eye","bold":true,"color":"blue","italic":false}] run effect clear @a[tag=p3] water_breathing

execute if items entity @p[tag=p3,tag=!evileyeO] container.* spider_eye[minecraft:custom_name={"text":"Evil Eye","bold":true,"color":"blue","italic":false}] run tellraw @a[tag=p3] ["Sorry, you don't own this spell."]
execute if items entity @p[tag=p3,tag=!evileyeO] container.* spider_eye[minecraft:custom_name={"text":"Evil Eye","bold":true,"color":"blue","italic":false}] run clear @a[tag=p3]




#Protector's Rune Select P3
execute if score Spell_Points_P3 Spell_Points >= protectorsRuneSp spellStats run execute if items entity @p[tag=p3,tag=protectorsruneO] container.* chiseled_tuff[minecraft:custom_name={"text":"Protector's Rune","bold":true,"color":"blue","italic":false}] run tag @p[tag=p3] add protectorsrune
execute if score Spell_Points_P3 Spell_Points >= protectorsRuneSp spellStats run execute if items entity @p[tag=p3,tag=protectorsruneO] container.* chiseled_tuff[minecraft:custom_name={"text":"Protector's Rune","bold":true,"color":"blue","italic":false}] run tellraw @a[tag=p3] ["",{"selector":"@p[tag=p3]"}," picked Protector's Rune."]
execute if score Spell_Points_P3 Spell_Points < protectorsRuneSp spellStats run execute if items entity @p[tag=p3,tag=protectorsruneO] container.* chiseled_tuff[minecraft:custom_name={"text":"Protector's Rune","bold":true,"color":"blue","italic":false}] run tellraw @a[tag=p3] ["",{"selector":"@p[tag=p3]"}," You dont have enough spell points to equip this spell."]
execute if score Spell_Points_P3 Spell_Points < protectorsRuneSp spellStats run execute if items entity @p[tag=p3,tag=protectorsruneO] container.* chiseled_tuff[minecraft:custom_name={"text":"Protector's Rune","bold":true,"color":"blue","italic":false}] run clear @a[tag=p3]
execute if score Spell_Points_P3 Spell_Points >= protectorsRuneSp spellStats run execute if items entity @p[tag=p3,tag=protectorsruneO] container.* chiseled_tuff[minecraft:custom_name={"text":"Protector's Rune","bold":true,"color":"blue","italic":false}] run scoreboard players operation Spell_Points_P3 Spell_Points -= protectorsRuneSp spellStats
execute if score Spell_Points_P3 Spell_Points >= protectorsRuneSp spellStats run execute if items entity @p[tag=p3,tag=protectorsruneO] container.* chiseled_tuff[minecraft:custom_name={"text":"Protector's Rune","bold":true,"color":"blue","italic":false}] run effect clear @a[tag=p3] water_breathing

execute if items entity @p[tag=p3,tag=!protectorsruneO] container.* chiseled_tuff[minecraft:custom_name={"text":"Protector's Rune","bold":true,"color":"blue","italic":false}] run tellraw @a[tag=p3] ["Sorry, you don't own this spell."]
execute if items entity @p[tag=p3,tag=!protectorsruneO] container.* chiseled_tuff[minecraft:custom_name={"text":"Protector's Rune","bold":true,"color":"blue","italic":false}] run clear @a[tag=p3]




#Miracle Select P3
execute if score Spell_Points_P3 Spell_Points >= miracleSp spellStats run execute if items entity @p[tag=p3,tag=miracleO] container.* beacon[minecraft:custom_name={"text":"Miracle","bold":true,"color":"blue","italic":false}] run tag @p[tag=p3] add miracle
execute if score Spell_Points_P3 Spell_Points >= miracleSp spellStats run execute if items entity @p[tag=p3,tag=protectorsruneO] container.* chiseled_tuff[minecraft:custom_name={"text":"Protector's Rune","bold":true,"color":"blue","italic":false}] run tellraw @a[tag=p3] ["",{"selector":"@p[tag=p3]"}," picked Miracle."]
execute if score Spell_Points_P3 Spell_Points < miracleSp spellStats run execute if items entity @p[tag=p3,tag=protectorsruneO] container.* chiseled_tuff[minecraft:custom_name={"text":"Protector's Rune","bold":true,"color":"blue","italic":false}] run tellraw @a[tag=p3] ["",{"selector":"@p[tag=p3]"}," You dont have enough spell points to equip this spell."]
execute if score Spell_Points_P3 Spell_Points < miracleSp spellStats run execute if items entity @p[tag=p3,tag=protectorsruneO] container.* chiseled_tuff[minecraft:custom_name={"text":"Protector's Rune","bold":true,"color":"blue","italic":false}] run clear @a[tag=p3]
execute if score Spell_Points_P3 Spell_Points >= miracleSp spellStats run execute if items entity @p[tag=p3,tag=protectorsruneO] container.* chiseled_tuff[minecraft:custom_name={"text":"Protector's Rune","bold":true,"color":"blue","italic":false}] run scoreboard players operation Spell_Points_P3 Spell_Points -= miracleSp spellStats
execute if score Spell_Points_P3 Spell_Points >= miracleSp spellStats run execute if items entity @p[tag=p3,tag=protectorsruneO] container.* chiseled_tuff[minecraft:custom_name={"text":"Protector's Rune","bold":true,"color":"blue","italic":false}] run effect clear @a[tag=p3] water_breathing

execute if items entity @p[tag=p3,tag=!miracleO] container.* beacon[minecraft:custom_name={"text":"Miracle","bold":true,"color":"blue","italic":false}] run tellraw @a[tag=p3] ["Sorry, you don't own this spell."]
execute if items entity @p[tag=p3,tag=!miracleO] container.* beacon[minecraft:custom_name={"text":"Miracle","bold":true,"color":"blue","italic":false}] run clear @a[tag=p3]


#Miasma Select P3
execute if score Spell_Points_P3 Spell_Points >= miasmaSp spellStats run execute if items entity @p[tag=p3,tag=miasmaO] container.* sculk_vein[minecraft:custom_name={"text":"Miasma","bold":true,"color":"blue","italic":false}] run tag @p[tag=p3] add miasma
execute if score Spell_Points_P3 Spell_Points >= miasmaSp spellStats run execute if items entity @p[tag=p3,tag=miasmaO] container.* sculk_vein[minecraft:custom_name={"text":"Miasma","bold":true,"color":"blue","italic":false}] run tellraw @a[tag=p3] ["",{"selector":"@p[tag=p3]"}," picked Miasma."]
execute if score Spell_Points_P3 Spell_Points < miasmaSp spellStats run execute if items entity @p[tag=p3,tag=miasmaO] container.* sculk_vein[minecraft:custom_name={"text":"Miasma","bold":true,"color":"blue","italic":false}] run tellraw @a[tag=p3] ["",{"selector":"@p[tag=p3]"}," You dont have enough spell points to equip this spell."]
execute if score Spell_Points_P3 Spell_Points < miasmaSp spellStats run execute if items entity @p[tag=p3,tag=miasmaO] container.* sculk_vein[minecraft:custom_name={"text":"Miasma","bold":true,"color":"blue","italic":false}] run clear @a[tag=p3]
execute if score Spell_Points_P3 Spell_Points >= miasmaSp spellStats run execute if items entity @p[tag=p3,tag=miasmaO] container.* sculk_vein[minecraft:custom_name={"text":"Miasma","bold":true,"color":"blue","italic":false}] run scoreboard players operation Spell_Points_P3 Spell_Points -= miasmaSp spellStats
execute if score Spell_Points_P3 Spell_Points >= miasmaSp spellStats run execute if items entity @p[tag=p3,tag=miasmaO] container.* sculk_vein[minecraft:custom_name={"text":"Miasma","bold":true,"color":"blue","italic":false}] run effect clear @a[tag=p3] water_breathing

execute if items entity @p[tag=p3,tag=!miasmaO] container.* sculk_vein[minecraft:custom_name={"text":"Miasma","bold":true,"color":"blue","italic":false}] run tellraw @a[tag=p3] ["Sorry, you don't own this spell."]
execute if items entity @p[tag=p3,tag=!miasmaO] container.* sculk_vein[minecraft:custom_name={"text":"Miasma","bold":true,"color":"blue","italic":false}] run clear @a[tag=p3]


#Ward Select P3
execute if score Spell_Points_P3 Spell_Points >= wardSp spellStats run execute if items entity @p[tag=p3,tag=wardO] container.* blue_stained_glass[minecraft:custom_name={"text":"Ward","bold":true,"color":"blue","italic":false}] run tag @p[tag=p3] add ward
execute if score Spell_Points_P3 Spell_Points >= wardSp spellStats run execute if items entity @p[tag=p3,tag=wardO] container.* blue_stained_glass[minecraft:custom_name={"text":"Ward","bold":true,"color":"blue","italic":false}] run tellraw @a[tag=p3] ["",{"selector":"@p[tag=p3]"}," picked Ward."]
execute if score Spell_Points_P3 Spell_Points < wardSp spellStats run execute if items entity @p[tag=p3,tag=wardO] container.* blue_stained_glass[minecraft:custom_name={"text":"Ward","bold":true,"color":"blue","italic":false}] run tellraw @a[tag=p3] ["",{"selector":"@p[tag=p3]"}," You dont have enough spell points to equip this spell."]
execute if score Spell_Points_P3 Spell_Points < wardSp spellStats run execute if items entity @p[tag=p3,tag=wardO] container.* blue_stained_glass[minecraft:custom_name={"text":"Ward","bold":true,"color":"blue","italic":false}] run clear @a[tag=p3]
execute if score Spell_Points_P3 Spell_Points >= wardSp spellStats run execute if items entity @p[tag=p3,tag=wardO] container.* blue_stained_glass[minecraft:custom_name={"text":"Ward","bold":true,"color":"blue","italic":false}] run scoreboard players operation Spell_Points_P3 Spell_Points -= wardSp spellStats
execute if score Spell_Points_P3 Spell_Points >= wardSp spellStats run execute if items entity @p[tag=p3,tag=wardO] container.* blue_stained_glass[minecraft:custom_name={"text":"Ward","bold":true,"color":"blue","italic":false}] run effect clear @a[tag=p3] water_breathing

execute if items entity @p[tag=p3,tag=!wardO] container.* blue_stained_glass[minecraft:custom_name={"text":"Ward","bold":true,"color":"blue","italic":false}] run tellraw @a[tag=p3] ["Sorry, you don't own this spell."]
execute if items entity @p[tag=p3,tag=!wardO] container.* blue_stained_glass[minecraft:custom_name={"text":"Ward","bold":true,"color":"blue","italic":false}] run clear @a[tag=p3]

#Blizzard Select P3
execute if score Spell_Points_P3 Spell_Points >= blizzardSp spellStats run execute if items entity @p[tag=p3,tag=blizzardO] container.* blue_ice[minecraft:custom_name={"text":"Blizzard","bold":true,"color":"blue","italic":false}] run tag @p[tag=p3] add blizzard
execute if score Spell_Points_P3 Spell_Points >= blizzardSp spellStats run execute if items entity @p[tag=p3,tag=blizzardO] container.* blue_ice[minecraft:custom_name={"text":"Blizzard","bold":true,"color":"blue","italic":false}] run tellraw @a[tag=p3] ["",{"selector":"@p[tag=p3]"}," picked Blizzard."]
execute if score Spell_Points_P3 Spell_Points < blizzardSp spellStats run execute if items entity @p[tag=p3,tag=blizzardO] container.* blue_ice[minecraft:custom_name={"text":"Blizzard","bold":true,"color":"blue","italic":false}] run tellraw @a[tag=p3] ["",{"selector":"@p[tag=p3]"}," You dont have enough spell points to equip this spell."]
execute if score Spell_Points_P3 Spell_Points < blizzardSp spellStats run execute if items entity @p[tag=p3,tag=blizzardO] container.* blue_ice[minecraft:custom_name={"text":"Blizzard","bold":true,"color":"blue","italic":false}] run clear @a[tag=p3]
execute if score Spell_Points_P3 Spell_Points >= blizzardSp spellStats run execute if items entity @p[tag=p3,tag=blizzardO] container.* blue_ice[minecraft:custom_name={"text":"Blizzard","bold":true,"color":"blue","italic":false}] run scoreboard players operation Spell_Points_P3 Spell_Points -= blizzardSp spellStats
execute if score Spell_Points_P3 Spell_Points >= blizzardSp spellStats run execute if items entity @p[tag=p3,tag=blizzardO] container.* blue_ice[minecraft:custom_name={"text":"Blizzard","bold":true,"color":"blue","italic":false}] run effect clear @a[tag=p3] water_breathing

execute if items entity @p[tag=p3,tag=!blizzardO] container.* blue_ice[minecraft:custom_name={"text":"Blizzard","bold":true,"color":"blue","italic":false}] run tellraw @a[tag=p3] ["Sorry, you don't own this spell."]
execute if items entity @p[tag=p3,tag=!blizzardO] container.* blue_ice[minecraft:custom_name={"text":"Blizzard","bold":true,"color":"blue","italic":false}] run clear @a[tag=p3]

#Plague Select P3
execute if score Spell_Points_P3 Spell_Points >= plagueSp spellStats run execute if items entity @p[tag=p3,tag=plagueO] container.* fermented_spider_eye[minecraft:custom_name={"text":"Plague","bold":true,"color":"dark_purple","italic":false}] run tag @p[tag=p3] add plague
execute if score Spell_Points_P3 Spell_Points >= plagueSp spellStats run execute if items entity @p[tag=p3,tag=plagueO] container.* fermented_spider_eye[minecraft:custom_name={"text":"Plague","bold":true,"color":"dark_purple","italic":false}] run tellraw @a[tag=p3] ["",{"selector":"@p[tag=p3]"}," picked Plague."]
execute if score Spell_Points_P3 Spell_Points < plagueSp spellStats run execute if items entity @p[tag=p3,tag=plagueO] container.* fermented_spider_eye[minecraft:custom_name={"text":"Plague","bold":true,"color":"dark_purple","italic":false}] run tellraw @a[tag=p3] ["",{"selector":"@p[tag=p3]"}," You dont have enough spell points to equip this spell."]
execute if score Spell_Points_P3 Spell_Points < plagueSp spellStats run execute if items entity @p[tag=p3,tag=plagueO] container.* fermented_spider_eye[minecraft:custom_name={"text":"Plague","bold":true,"color":"dark_purple","italic":false}] run clear @a[tag=p3]
execute if score Spell_Points_P3 Spell_Points >= plagueSp spellStats run execute if items entity @p[tag=p3,tag=plagueO] container.* fermented_spider_eye[minecraft:custom_name={"text":"Plague","bold":true,"color":"dark_purple","italic":false}] run scoreboard players operation Spell_Points_P3 Spell_Points -= plagueSp spellStats
execute if score Spell_Points_P3 Spell_Points >= plagueSp spellStats run execute if items entity @p[tag=p3,tag=plagueO] container.* fermented_spider_eye[minecraft:custom_name={"text":"Plague","bold":true,"color":"dark_purple","italic":false}] run effect clear @a[tag=p3] water_breathing

execute if items entity @p[tag=p3,tag=!plagueO] container.* fermented_spider_eye[minecraft:custom_name={"text":"Plague","bold":true,"color":"dark_purple","italic":false}] run tellraw @a[tag=p3] ["Sorry, you don't own this spell."]
execute if items entity @p[tag=p3,tag=!plagueO] container.* fermented_spider_eye[minecraft:custom_name={"text":"Plague","bold":true,"color":"dark_purple","italic":false}] run clear @a[tag=p3]

#Second Wind Select P3
execute if score Spell_Points_P3 Spell_Points >= secondWindSp spellStats run execute if items entity @p[tag=p3,tag=secondwindO] container.* feather[minecraft:custom_name={"text":"Second Wind","bold":true,"color":"dark_purple","italic":false}] run tag @p[tag=p3] add secondwind
execute if score Spell_Points_P3 Spell_Points >= secondWindSp spellStats run execute if items entity @p[tag=p3,tag=secondwindO] container.* feather[minecraft:custom_name={"text":"Second Wind","bold":true,"color":"dark_purple","italic":false}] run tellraw @a[tag=p3] ["",{"selector":"@p[tag=p3]"}," picked Second Wind."]
execute if score Spell_Points_P3 Spell_Points < secondWindSp spellStats run execute if items entity @p[tag=p3,tag=secondwindO] container.* feather[minecraft:custom_name={"text":"Second Wind","bold":true,"color":"dark_purple","italic":false}] run tellraw @a[tag=p3] ["",{"selector":"@p[tag=p3]"}," You dont have enough spell points to equip this spell."]
execute if score Spell_Points_P3 Spell_Points < secondWindSp spellStats run execute if items entity @p[tag=p3,tag=secondwindO] container.* feather[minecraft:custom_name={"text":"Second Wind","bold":true,"color":"dark_purple","italic":false}] run clear @a[tag=p3]
execute if score Spell_Points_P3 Spell_Points >= secondWindSp spellStats run execute if items entity @p[tag=p3,tag=secondwindO] container.* feather[minecraft:custom_name={"text":"Second Wind","bold":true,"color":"dark_purple","italic":false}] run scoreboard players operation Spell_Points_P3 Spell_Points -= secondWindSp spellStats
execute if score Spell_Points_P3 Spell_Points >= secondWindSp spellStats run execute if items entity @p[tag=p3,tag=secondwindO] container.* feather[minecraft:custom_name={"text":"Second Wind","bold":true,"color":"dark_purple","italic":false}] run effect clear @a[tag=p3] water_breathing

execute if items entity @p[tag=p3,tag=!secondwindO] container.* feather[minecraft:custom_name={"text":"Second Wind","bold":true,"color":"dark_purple","italic":false}] run tellraw @a[tag=p3] ["Sorry, you don't own this spell."]
execute if items entity @p[tag=p3,tag=!secondwindO] container.* feather[minecraft:custom_name={"text":"Second Wind","bold":true,"color":"dark_purple","italic":false}] run clear @a[tag=p3]
#Witches Brew Select P3
execute if score Spell_Points_P3 Spell_Points >= witchesBrewSp spellStats run execute if items entity @p[tag=p3,tag=witchesbrewO] container.* minecraft:cauldron[minecraft:custom_name={"text":"Witches Brew","bold":true,"color":"dark_purple","italic":false}] run tag @p[tag=p3] add witchesbrew
execute if score Spell_Points_P3 Spell_Points >= witchesBrewSp spellStats run execute if items entity @p[tag=p3,tag=witchesbrewO] container.* minecraft:cauldron[minecraft:custom_name={"text":"Witches Brew","bold":true,"color":"dark_purple","italic":false}] run tellraw @a[tag=p3] ["",{"selector":"@p[tag=p3]"}," picked Witches Brew."]
execute if score Spell_Points_P3 Spell_Points < witchesBrewSp spellStats run execute if items entity @p[tag=p3,tag=witchesbrewO] container.* minecraft:cauldron[minecraft:custom_name={"text":"Witches Brew","bold":true,"color":"dark_purple","italic":false}] run tellraw @a[tag=p3] ["",{"selector":"@p[tag=p3]"}," You dont have enough spell points to equip this spell."]
execute if score Spell_Points_P3 Spell_Points < witchesBrewSp spellStats run execute if items entity @p[tag=p3,tag=witchesbrewO] container.* minecraft:cauldron[minecraft:custom_name={"text":"Witches Brew","bold":true,"color":"dark_purple","italic":false}] run clear @a[tag=p3]
execute if score Spell_Points_P3 Spell_Points >= witchesBrewSp spellStats run execute if items entity @p[tag=p3,tag=witchesbrewO] container.* minecraft:cauldron[minecraft:custom_name={"text":"Witches Brew","bold":true,"color":"dark_purple","italic":false}] run scoreboard players operation Spell_Points_P3 Spell_Points -= witchesBrewSp spellStats
execute if score Spell_Points_P3 Spell_Points >= witchesBrewSp spellStats run execute if items entity @p[tag=p3,tag=witchesbrewO] container.* minecraft:cauldron[minecraft:custom_name={"text":"Witches Brew","bold":true,"color":"dark_purple","italic":false}] run effect clear @a[tag=p3] water_breathing

execute if items entity @p[tag=p3,tag=!witchesbrewO] container.* minecraft:cauldron[minecraft:custom_name={"text":"Witches Brew","bold":true,"color":"dark_purple","italic":false}] run tellraw @a[tag=p3] ["Sorry, you don't own this spell."]
execute if items entity @p[tag=p3,tag=!witchesbrewO] container.* minecraft:cauldron[minecraft:custom_name={"text":"Witches Brew","bold":true,"color":"dark_purple","italic":false}] run clear @a[tag=p3]



#Font of Wisdom Select P3
execute if score Spell_Points_P3 Spell_Points >= fontOfWisdomSp spellStats run execute if items entity @p[tag=p3,tag=fontofwisdomO] container.* minecraft:enchanted_book[minecraft:custom_name={"text":"Font of Wisdom","bold":true,"color":"dark_purple","italic":false}] run tag @p[tag=p3] add fontofwisdom
execute if score Spell_Points_P3 Spell_Points >= fontOfWisdomSp spellStats run execute if items entity @p[tag=p3,tag=fontofwisdomO] container.* minecraft:enchanted_book[minecraft:custom_name={"text":"Font of Wisdom","bold":true,"color":"dark_purple","italic":false}] run tellraw @a[tag=p3] ["",{"selector":"@p[tag=p3]"}," picked Font of Wisdom."]
execute if score Spell_Points_P3 Spell_Points < fontOfWisdomSp spellStats run execute if items entity @p[tag=p3,tag=fontofwisdomO] container.* minecraft:enchanted_book[minecraft:custom_name={"text":"Font of Wisdom","bold":true,"color":"dark_purple","italic":false}] run tellraw @a[tag=p3] ["",{"selector":"@p[tag=p3]"}," You dont have enough spell points to equip this spell."]
execute if score Spell_Points_P3 Spell_Points < fontOfWisdomSp spellStats run execute if items entity @p[tag=p3,tag=fontofwisdomO] container.* minecraft:enchanted_book[minecraft:custom_name={"text":"Font of Wisdom","bold":true,"color":"dark_purple","italic":false}] run clear @a[tag=p3]
execute if score Spell_Points_P3 Spell_Points >= fontOfWisdomSp spellStats run execute if items entity @p[tag=p3,tag=fontofwisdomO] container.* minecraft:enchanted_book[minecraft:custom_name={"text":"Font of Wisdom","bold":true,"color":"dark_purple","italic":false}] run scoreboard players operation Spell_Points_P3 Spell_Points -= fontOfWisdomSp spellStats
execute if score Spell_Points_P3 Spell_Points >= fontOfWisdomSp spellStats run execute if items entity @p[tag=p3,tag=fontofwisdomO] container.* minecraft:enchanted_book[minecraft:custom_name={"text":"Font of Wisdom","bold":true,"color":"dark_purple","italic":false}] run effect clear @a[tag=p3] water_breathing

execute if items entity @p[tag=p3,tag=!fontofwisdomO] container.* minecraft:enchanted_book[minecraft:custom_name={"text":"Font of Wisdom","bold":true,"color":"dark_purple","italic":false}] run tellraw @a[tag=p3] ["Sorry, you don't own this spell."]
execute if items entity @p[tag=p3,tag=!fontofwisdomO] container.* minecraft:enchanted_book[minecraft:custom_name={"text":"Font of Wisdom","bold":true,"color":"dark_purple","italic":false}] run clear @a[tag=p3]

#Fountain of Youth Select P3
execute if score Spell_Points_P3 Spell_Points >= fountainOfYouthSp spellStats run execute if items entity @p[tag=p3,tag=fountainofyouthO] container.* minecraft:potion[minecraft:custom_name={"text":"Fountain of Youth","bold":true,"color":"dark_purple","italic":false}] run tag @p[tag=p3] add fountainofyouth
execute if score Spell_Points_P3 Spell_Points >= fountainOfYouthSp spellStats run execute if items entity @p[tag=p3,tag=fountainofyouthO] container.* minecraft:potion[minecraft:custom_name={"text":"Fountain of Youth","bold":true,"color":"dark_purple","italic":false}] run tellraw @a[tag=p3] ["",{"selector":"@p[tag=p3]"}," picked Fountain of Youth."]
execute if score Spell_Points_P3 Spell_Points < fountainOfYouthSp spellStats run execute if items entity @p[tag=p3,tag=fountainofyouthO] container.* minecraft:potion[minecraft:custom_name={"text":"Fountain of Youth","bold":true,"color":"dark_purple","italic":false}] run tellraw @a[tag=p3] ["",{"selector":"@p[tag=p3]"}," You dont have enough spell points to equip this spell."]
execute if score Spell_Points_P3 Spell_Points < fountainOfYouthSp spellStats run execute if items entity @p[tag=p3,tag=fountainofyouthO] container.* minecraft:potion[minecraft:custom_name={"text":"Fountain of Youth","bold":true,"color":"dark_purple","italic":false}] run clear @a[tag=p3]
execute if score Spell_Points_P3 Spell_Points >= fountainOfYouthSp spellStats run execute if items entity @p[tag=p3,tag=fountainofyouthO] container.* minecraft:potion[minecraft:custom_name={"text":"Fountain of Youth","bold":true,"color":"dark_purple","italic":false}] run scoreboard players operation Spell_Points_P3 Spell_Points -= fountainOfYouthSp spellStats
execute if score Spell_Points_P3 Spell_Points >= fountainOfYouthSp spellStats run execute if items entity @p[tag=p3,tag=fountainofyouthO] container.* minecraft:potion[minecraft:custom_name={"text":"Fountain of Youth","bold":true,"color":"dark_purple","italic":false}] run effect clear @a[tag=p3] water_breathing

execute if items entity @p[tag=p3,tag=!fountainofyouthO] container.* minecraft:potion[minecraft:custom_name={"text":"Fountain of Youth","bold":true,"color":"dark_purple","italic":false}] run tellraw @a[tag=p3] ["Sorry, you don't own this spell."]
execute if items entity @p[tag=p3,tag=!fountainofyouthO] container.* minecraft:potion[minecraft:custom_name={"text":"Fountain of Youth","bold":true,"color":"dark_purple","italic":false}] run clear @a[tag=p3]


#Dragonforge Select P3
execute if score Spell_Points_P3 Spell_Points >= dragonforgeSp spellStats run execute if items entity @p[tag=p3,tag=dragonforgeO] container.* minecraft:dragon_head[minecraft:custom_name={"text":"Dragonforge","bold":true,"color":"dark_purple","italic":false}] run tag @p[tag=p3] add dragonforge
execute if score Spell_Points_P3 Spell_Points >= dragonforgeSp spellStats run execute if items entity @p[tag=p3,tag=dragonforgeO] container.* minecraft:dragon_head[minecraft:custom_name={"text":"Dragonforge","bold":true,"color":"dark_purple","italic":false}] run tellraw @a[tag=p3] ["",{"selector":"@p[tag=p3]"}," picked Dragonforge."]
execute if score Spell_Points_P3 Spell_Points < dragonforgeSp spellStats run execute if items entity @p[tag=p3,tag=dragonforgeO] container.* minecraft:dragon_head[minecraft:custom_name={"text":"Dragonforge","bold":true,"color":"dark_purple","italic":false}] run tellraw @a[tag=p3] ["",{"selector":"@p[tag=p3]"}," You dont have enough spell points to equip this spell."]
execute if score Spell_Points_P3 Spell_Points < dragonforgeSp spellStats run execute if items entity @p[tag=p3,tag=dragonforgeO] container.* minecraft:dragon_head[minecraft:custom_name={"text":"Dragonforge","bold":true,"color":"dark_purple","italic":false}] run clear @a[tag=p3]
execute if score Spell_Points_P3 Spell_Points >= dragonforgeSp spellStats run execute if items entity @p[tag=p3,tag=dragonforgeO] container.* minecraft:dragon_head[minecraft:custom_name={"text":"Dragonforge","bold":true,"color":"dark_purple","italic":false}] run scoreboard players operation Spell_Points_P3 Spell_Points -= dragonforgeSp spellStats
execute if score Spell_Points_P3 Spell_Points >= dragonforgeSp spellStats run execute if items entity @p[tag=p3,tag=dragonforgeO] container.* minecraft:dragon_head[minecraft:custom_name={"text":"Dragonforge","bold":true,"color":"dark_purple","italic":false}] run effect clear @a[tag=p3] water_breathing

execute if items entity @p[tag=p3,tag=!dragonforgeO] container.* minecraft:dragon_head[minecraft:custom_name={"text":"Dragonforge","bold":true,"color":"dark_purple","italic":false}] run tellraw @a[tag=p3] ["Sorry, you don't own this spell."]
execute if items entity @p[tag=p3,tag=!dragonforgeO] container.* minecraft:dragon_head[minecraft:custom_name={"text":"Dragonforge","bold":true,"color":"dark_purple","italic":false}] run clear @a[tag=p3]

#Overclock Select P3
execute if score Spell_Points_P3 Spell_Points >= overclockSp spellStats run execute if items entity @p[tag=p3,tag=overclockO] container.* minecraft:heavy_core[minecraft:custom_name={"text":"Overclock","bold":true,"color":"dark_purple","italic":false}] run tag @p[tag=p3] add overclock
execute if score Spell_Points_P3 Spell_Points >= overclockSp spellStats run execute if items entity @p[tag=p3,tag=overclockO] container.* minecraft:heavy_core[minecraft:custom_name={"text":"Overclock","bold":true,"color":"dark_purple","italic":false}] run tellraw @a[tag=p3] ["",{"selector":"@p[tag=p3]"}," picked Overclock."]
execute if score Spell_Points_P3 Spell_Points < overclockSp spellStats run execute if items entity @p[tag=p3,tag=overclockO] container.* minecraft:heavy_core[minecraft:custom_name={"text":"Overclock","bold":true,"color":"dark_purple","italic":false}] run tellraw @a[tag=p3] ["",{"selector":"@p[tag=p3]"}," You dont have enough spell points to equip this spell."]
execute if score Spell_Points_P3 Spell_Points < overclockSp spellStats run execute if items entity @p[tag=p3,tag=overclockO] container.* minecraft:heavy_core[minecraft:custom_name={"text":"Overclock","bold":true,"color":"dark_purple","italic":false}] run clear @a[tag=p3]
execute if score Spell_Points_P3 Spell_Points >= overclockSp spellStats run execute if items entity @p[tag=p3,tag=overclockO] container.* minecraft:heavy_core[minecraft:custom_name={"text":"Overclock","bold":true,"color":"dark_purple","italic":false}] run scoreboard players operation Spell_Points_P3 Spell_Points -= overclockSp spellStats
execute if score Spell_Points_P3 Spell_Points >= overclockSp spellStats run execute if items entity @p[tag=p3,tag=overclockO] container.* minecraft:heavy_core[minecraft:custom_name={"text":"Overclock","bold":true,"color":"dark_purple","italic":false}] run effect clear @a[tag=p3] water_breathing

execute if items entity @p[tag=p3,tag=!overclockO] container.* minecraft:heavy_core[minecraft:custom_name={"text":"Overclock","bold":true,"color":"dark_purple","italic":false}] run tellraw @a[tag=p3] ["Sorry, you don't own this spell."]
execute if items entity @p[tag=p3,tag=!overclockO] container.* minecraft:heavy_core[minecraft:custom_name={"text":"Overclock","bold":true,"color":"dark_purple","italic":false}] run clear @a[tag=p3]


#Shifting Shadows Select P3
execute if score Spell_Points_P3 Spell_Points >= shiftingShadowsSp spellStats run execute if items entity @p[tag=p3,tag=shiftingshadowsO] container.* minecraft:echo_shard[minecraft:custom_name={"text":"Shifting Shadows","bold":true,"color":"gold","italic":false}] run tag @p[tag=p3] add shiftingshadows
execute if score Spell_Points_P3 Spell_Points >= shiftingShadowsSp spellStats run execute if items entity @p[tag=p3,tag=shiftingshadowsO] container.* minecraft:echo_shard[minecraft:custom_name={"text":"Shifting Shadows","bold":true,"color":"gold","italic":false}] run tellraw @a[tag=p3] ["",{"selector":"@p[tag=p3]"}," picked Shifting Shadows."]
execute if score Spell_Points_P3 Spell_Points < shiftingShadowsSp spellStats run execute if items entity @p[tag=p3,tag=shiftingshadowsO] container.* minecraft:echo_shard[minecraft:custom_name={"text":"Shifting Shadows","bold":true,"color":"gold","italic":false}] run tellraw @a[tag=p3] ["",{"selector":"@p[tag=p3]"}," You dont have enough spell points to equip this spell."]
execute if score Spell_Points_P3 Spell_Points < shiftingShadowsSp spellStats run execute if items entity @p[tag=p3,tag=shiftingshadowsO] container.* minecraft:echo_shard[minecraft:custom_name={"text":"Shifting Shadows","bold":true,"color":"gold","italic":false}] run clear @a[tag=p3]
execute if score Spell_Points_P3 Spell_Points >= shiftingShadowsSp spellStats run execute if items entity @p[tag=p3,tag=shiftingshadowsO] container.* minecraft:echo_shard[minecraft:custom_name={"text":"Shifting Shadows","bold":true,"color":"gold","italic":false}] run scoreboard players operation Spell_Points_P3 Spell_Points -= shiftingShadowsSp spellStats
execute if score Spell_Points_P3 Spell_Points >= shiftingShadowsSp spellStats run execute if items entity @p[tag=p3,tag=shiftingshadowsO] container.* minecraft:echo_shard[minecraft:custom_name={"text":"Shifting Shadows","bold":true,"color":"gold","italic":false}] run effect clear @a[tag=p3] water_breathing

execute if items entity @p[tag=p3,tag=!shiftingshadowsO] container.* minecraft:echo_shard[minecraft:custom_name={"text":"Shifting Shadows","bold":true,"color":"gold","italic":false}] run tellraw @a[tag=p3] ["Sorry, you don't own this spell."]
execute if items entity @p[tag=p3,tag=!shiftingshadowsO] container.* minecraft:echo_shard[minecraft:custom_name={"text":"Shifting Shadows","bold":true,"color":"gold","italic":false}] run clear @a[tag=p3]


#Chrono Warp Select P3
execute if score Spell_Points_P3 Spell_Points >= chronoWarpSp spellStats run execute if items entity @p[tag=p3,tag=chronowarpO] container.* minecraft:clock[minecraft:custom_name={"text":"Chrono Warp","bold":true,"color":"gold","italic":false}] run tag @p[tag=p3] add chronowarp
execute if score Spell_Points_P3 Spell_Points >= chronoWarpSp spellStats run execute if items entity @p[tag=p3,tag=chronowarpO] container.* minecraft:clock[minecraft:custom_name={"text":"Chrono Warp","bold":true,"color":"gold","italic":false}] run tellraw @a[tag=p3] ["",{"selector":"@p[tag=p3]"}," picked Chrono Warp."]
execute if score Spell_Points_P3 Spell_Points < chronoWarpSp spellStats run execute if items entity @p[tag=p3,tag=chronowarpO] container.* minecraft:clock[minecraft:custom_name={"text":"Chrono Warp","bold":true,"color":"gold","italic":false}] run tellraw @a[tag=p3] ["",{"selector":"@p[tag=p3]"}," You dont have enough spell points to equip this spell."]
execute if score Spell_Points_P3 Spell_Points < chronoWarpSp spellStats run execute if items entity @p[tag=p3,tag=chronowarpO] container.* minecraft:clock[minecraft:custom_name={"text":"Chrono Warp","bold":true,"color":"gold","italic":false}] run clear @a[tag=p3]
execute if score Spell_Points_P3 Spell_Points >= chronoWarpSp spellStats run execute if items entity @p[tag=p3,tag=chronowarpO] container.* minecraft:clock[minecraft:custom_name={"text":"Chrono Warp","bold":true,"color":"gold","italic":false}] run scoreboard players operation Spell_Points_P3 Spell_Points -= chronoWarpSp spellStats
execute if score Spell_Points_P3 Spell_Points >= chronoWarpSp spellStats run execute if items entity @p[tag=p3,tag=chronowarpO] container.* minecraft:clock[minecraft:custom_name={"text":"Chrono Warp","bold":true,"color":"gold","italic":false}] run effect clear @a[tag=p3] water_breathing

execute if items entity @p[tag=p3,tag=!chronowarpO] container.* minecraft:clock[minecraft:custom_name={"text":"Chrono Warp","bold":true,"color":"gold","italic":false}] run tellraw @a[tag=p3] ["Sorry, you don't own this spell."]
execute if items entity @p[tag=p3,tag=!chronowarpO] container.* minecraft:clock[minecraft:custom_name={"text":"Chrono Warp","bold":true,"color":"gold","italic":false}] run clear @a[tag=p3]


#Healing Totem Select P3
execute if score Spell_Points_P3 Spell_Points >= healingTotemSp spellStats run execute if items entity @p[tag=p3,tag=healingtotemO] container.* minecraft:totem_of_undying[minecraft:custom_name={"text":"Healing Totem","bold":true,"color":"gold","italic":false}] run tag @p[tag=p3] add healingtotem
execute if score Spell_Points_P3 Spell_Points >= healingTotemSp spellStats run execute if items entity @p[tag=p3,tag=healingtotemO] container.* minecraft:totem_of_undying[minecraft:custom_name={"text":"Healing Totem","bold":true,"color":"gold","italic":false}] run tellraw @a[tag=p3] ["",{"selector":"@p[tag=p3]"}," picked Healing Totem."]
execute if score Spell_Points_P3 Spell_Points < healingTotemSp spellStats run execute if items entity @p[tag=p3,tag=healingtotemO] container.* minecraft:totem_of_undying[minecraft:custom_name={"text":"Healing Totem","bold":true,"color":"gold","italic":false}] run tellraw @a[tag=p3] ["",{"selector":"@p[tag=p3]"}," You dont have enough spell points to equip this spell."]
execute if score Spell_Points_P3 Spell_Points < healingTotemSp spellStats run execute if items entity @p[tag=p3,tag=healingtotemO] container.* minecraft:totem_of_undying[minecraft:custom_name={"text":"Healing Totem","bold":true,"color":"gold","italic":false}] run clear @a[tag=p3]
execute if score Spell_Points_P3 Spell_Points >= healingTotemSp spellStats run execute if items entity @p[tag=p3,tag=healingtotemO] container.* minecraft:totem_of_undying[minecraft:custom_name={"text":"Healing Totem","bold":true,"color":"gold","italic":false}] run scoreboard players operation Spell_Points_P3 Spell_Points -= healingTotemSp spellStats
execute if score Spell_Points_P3 Spell_Points >= healingTotemSp spellStats run execute if items entity @p[tag=p3,tag=healingtotemO] container.* minecraft:totem_of_undying[minecraft:custom_name={"text":"Healing Totem","bold":true,"color":"gold","italic":false}] run effect clear @a[tag=p3] water_breathing


execute if items entity @p[tag=p3,tag=!healingtotemO] container.* minecraft:totem_of_undying[minecraft:custom_name={"text":"Healing Totem","bold":true,"color":"gold","italic":false}] run tellraw @a[tag=p3] ["Sorry, you don't own this spell."]
execute if items entity @p[tag=p3,tag=!healingtotemO] container.* minecraft:totem_of_undying[minecraft:custom_name={"text":"Healing Totem","bold":true,"color":"gold","italic":false}] run clear @a[tag=p3]


execute if score spellpick3 drafts > Spell_Points_P3 Spell_Points run clear @a[tag=p3]

execute if score Spell_Points_P3 Spell_Points matches 0 run execute if score Spell_Points_P4 Spell_Points matches 0 run function chtoo:game2start