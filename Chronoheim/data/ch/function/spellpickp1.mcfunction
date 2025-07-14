#Spell Point Giver
execute if score character# slot23 matches 1.. run execute if score character# slot19 matches 1.. run execute if score Spell_Points_P1 Spell_Points matches -1 run scoreboard players set Spell_Points_P1 Spell_Points 7
execute if score character# slot23 matches 1.. run execute if score character# slot19 matches 1.. run execute if score Spell_Points_P2 Spell_Points matches -1 run scoreboard players set Spell_Points_P2 Spell_Points 7
execute if score character# slot23 matches 1.. run execute if score character# slot19 matches 1.. run execute if score Spell_Points_P1 Spell_Points matches -2 run scoreboard players set Spell_Points_P1 Spell_Points 9
execute if score character# slot23 matches 1.. run execute if score character# slot19 matches 1.. run execute if score Spell_Points_P1 Spell_Points matches -3 run scoreboard players set Spell_Points_P1 Spell_Points 11
execute if score character# slot23 matches 1.. run execute if score character# slot19 matches 1.. run execute if score Spell_Points_P2 Spell_Points matches -2 run scoreboard players set Spell_Points_P2 Spell_Points 9
execute if score character# slot23 matches 1.. run execute if score character# slot19 matches 1.. run execute if score Spell_Points_P2 Spell_Points matches -3 run scoreboard players set Spell_Points_P2 Spell_Points 11

scoreboard players operation spellpick1 drafts = Spell_Points_P1 Spell_Points

#Fireball Select P1
execute if score Spell_Points_P1 Spell_Points >= fireballSp spellStats run execute if items entity @p[tag=p5] container.* fire_charge[minecraft:custom_name={"text":"Fireball","bold":true,"color":"gray","italic":false}] run tag @p[tag=p5] add fireball
execute if score Spell_Points_P1 Spell_Points >= fireballSp spellStats run execute if items entity @p[tag=p5] container.* fire_charge[minecraft:custom_name={"text":"Fireball","bold":true,"color":"gray","italic":false}] run tellraw @a[tag=p5] ["",{"selector":"@p[tag=p5]"}," picked Fireball."]
execute if score Spell_Points_P1 Spell_Points < fireballSp spellStats run execute if items entity @p[tag=p5] container.* fire_charge[minecraft:custom_name={"text":"Fireball","bold":true,"color":"gray","italic":false}] run tellraw @a[tag=p5] ["",{"selector":"@p[tag=p5]"}," You dont have enough spell points to equip this spell."]
execute if score Spell_Points_P1 Spell_Points < fireballSp spellStats run execute if items entity @p[tag=p5] container.* fire_charge[minecraft:custom_name={"text":"Fireball","bold":true,"color":"gray","italic":false}] run clear @a[tag=p5]
execute if score Spell_Points_P1 Spell_Points >= fireballSp spellStats run execute if items entity @p[tag=p5] container.* fire_charge[minecraft:custom_name={"text":"Fireball","bold":true,"color":"gray","italic":false}] run scoreboard players operation Spell_Points_P1 Spell_Points -= fireballSp spellStats
execute if score Spell_Points_P1 Spell_Points >= fireballSp spellStats run execute if items entity @p[tag=p5] container.* fire_charge[minecraft:custom_name={"text":"Fireball","bold":true,"color":"gray","italic":false}] run effect clear @a[tag=p5] water_breathing


#Heal Select P1
execute if score Spell_Points_P1 Spell_Points >= healSp spellStats run execute if items entity @p[tag=p5] container.* emerald[minecraft:custom_name={"text":"Heal","bold":true,"color":"gray","italic":false}] run tag @p[tag=p5] add heal
execute if score Spell_Points_P1 Spell_Points >= healSp spellStats run execute if items entity @p[tag=p5] container.* emerald[minecraft:custom_name={"text":"Heal","bold":true,"color":"gray","italic":false}] run tellraw @a[tag=p5] ["",{"selector":"@p[tag=p5]"}," picked Heal."]
execute if score Spell_Points_P1 Spell_Points < healSp spellStats run execute if items entity @p[tag=p5] container.* emerald[minecraft:custom_name={"text":"Heal","bold":true,"color":"gray","italic":false}] run tellraw @a[tag=p5] ["",{"selector":"@p[tag=p5]"}," You dont have enough spell points to equip this spell."]
execute if score Spell_Points_P1 Spell_Points < healSp spellStats run execute if items entity @p[tag=p5] container.* emerald[minecraft:custom_name={"text":"Heal","bold":true,"color":"gray","italic":false}] run clear @a[tag=p5]
execute if score Spell_Points_P1 Spell_Points >= healSp spellStats run execute if items entity @p[tag=p5] container.* emerald[minecraft:custom_name={"text":"Heal","bold":true,"color":"gray","italic":false}] run scoreboard players operation Spell_Points_P1 Spell_Points -= healSp spellStats
execute if score Spell_Points_P1 Spell_Points >= healSp spellStats run execute if items entity @p[tag=p5] container.* emerald[minecraft:custom_name={"text":"Heal","bold":true,"color":"gray","italic":false}] run effect clear @a[tag=p5] water_breathing


#Chain Lightning Select P1
execute if score Spell_Points_P1 Spell_Points >= chainLightningSp spellStats run execute if items entity @p[tag=p5] container.* lightning_rod[minecraft:custom_name={"text":"Chain Lightning","bold":true,"color":"gray","italic":false}] run tag @p[tag=p5] add chainlightning
execute if score Spell_Points_P1 Spell_Points >= chainLightningSp spellStats run execute if items entity @p[tag=p5] container.* lightning_rod[minecraft:custom_name={"text":"Chain Lightning","bold":true,"color":"gray","italic":false}] run tellraw @a[tag=p5] ["",{"selector":"@p[tag=p5]"}," picked Chain Lightning."]
execute if score Spell_Points_P1 Spell_Points < chainLightningSp spellStats run execute if items entity @p[tag=p5] container.* lightning_rod[minecraft:custom_name={"text":"Chain Lightning","bold":true,"color":"gray","italic":false}] run tellraw @a[tag=p5] ["",{"selector":"@p[tag=p5]"}," You dont have enough spell points to equip this spell."]
execute if score Spell_Points_P1 Spell_Points < chainLightningSp spellStats run execute if items entity @p[tag=p5] container.* lightning_rod[minecraft:custom_name={"text":"Chain Lightning","bold":true,"color":"gray","italic":false}] run clear @a[tag=p5]
execute if score Spell_Points_P1 Spell_Points >= chainLightningSp spellStats run execute if items entity @p[tag=p5] container.* lightning_rod[minecraft:custom_name={"text":"Chain Lightning","bold":true,"color":"gray","italic":false}] run scoreboard players operation Spell_Points_P1 Spell_Points -= chainLightningSp spellStats
execute if score Spell_Points_P1 Spell_Points >= chainLightningSp spellStats run execute if items entity @p[tag=p5] container.* lightning_rod[minecraft:custom_name={"text":"Chain Lightning","bold":true,"color":"gray","italic":false}] run effect clear @a[tag=p5] water_breathing



#Magic Missile Lightning Select P1
execute if score Spell_Points_P1 Spell_Points >= magicMissileSp spellStats run execute if items entity @p[tag=p5,tag=magicmissileO] container.* spectral_arrow[minecraft:custom_name={"text":"Magic Missile","bold":true,"color":"dark_green","italic":false}] run tag @p[tag=p5] add magicmissile
execute if score Spell_Points_P1 Spell_Points >= magicMissileSp spellStats run execute if items entity @p[tag=p5,tag=magicmissileO] container.* spectral_arrow[minecraft:custom_name={"text":"Magic Missile","bold":true,"color":"dark_green","italic":false}] run tellraw @a[tag=p5] ["",{"selector":"@p[tag=p5]"}," picked Magic Missile."]
execute if score Spell_Points_P1 Spell_Points < magicMissileSp spellStats run execute if items entity @p[tag=p5,tag=magicmissileO] container.* spectral_arrow[minecraft:custom_name={"text":"Magic Missile","bold":true,"color":"dark_green","italic":false}] run tellraw @a[tag=p5] ["",{"selector":"@p[tag=p5]"}," You dont have enough spell points to equip this spell."]
execute if score Spell_Points_P1 Spell_Points < magicMissileSp spellStats run execute if items entity @p[tag=p5,tag=magicmissileO] container.* spectral_arrow[minecraft:custom_name={"text":"Magic Missile","bold":true,"color":"dark_green","italic":false}] run clear @a[tag=p5]
execute if score Spell_Points_P1 Spell_Points >= magicMissileSp spellStats run execute if items entity @p[tag=p5,tag=magicmissileO] container.* spectral_arrow[minecraft:custom_name={"text":"Magic Missile","bold":true,"color":"dark_green","italic":false}] run scoreboard players operation Spell_Points_P1 Spell_Points -= magicMissileSp spellStats
execute if score Spell_Points_P1 Spell_Points >= magicMissileSp spellStats run execute if items entity @p[tag=p5,tag=magicmissileO] container.* spectral_arrow[minecraft:custom_name={"text":"Magic Missile","bold":true,"color":"dark_green","italic":false}] run effect clear @a[tag=p5] water_breathing

execute if items entity @p[tag=p5,tag=!magicmissileO] container.* spectral_arrow[minecraft:custom_name={"text":"Magic Missile","bold":true,"color":"dark_green","italic":false}] run tellraw @a[tag=p5] ["Sorry, you don't own this spell."]
execute if items entity @p[tag=p5,tag=!magicmissileO] container.* spectral_arrow[minecraft:custom_name={"text":"Magic Missile","bold":true,"color":"dark_green","italic":false}] run clear @a[tag=p5]




#Ritual of Blood Select P1
execute if score Spell_Points_P1 Spell_Points >= ritualOfBloodSp spellStats run execute if items entity @p[tag=p5,tag=ritualofbloodO] container.* redstone[minecraft:custom_name={"text":"Ritual of Blood","bold":true,"color":"dark_green","italic":false}] run tag @p[tag=p5] add ritualofblood
execute if score Spell_Points_P1 Spell_Points >= ritualOfBloodSp spellStats run execute if items entity @p[tag=p5,tag=ritualofbloodO] container.* redstone[minecraft:custom_name={"text":"Ritual of Blood","bold":true,"color":"dark_green","italic":false}] run tellraw @a[tag=p5] ["",{"selector":"@p[tag=p5]"}," picked Ritual of Blood."]
execute if score Spell_Points_P1 Spell_Points < ritualOfBloodSp spellStats run execute if items entity @p[tag=p5,tag=ritualofbloodO] container.* redstone[minecraft:custom_name={"text":"Ritual of Blood","bold":true,"color":"dark_green","italic":false}] run tellraw @a[tag=p5] ["",{"selector":"@p[tag=p5]"}," You dont have enough spell points to equip this spell."]
execute if score Spell_Points_P1 Spell_Points < ritualOfBloodSp spellStats run execute if items entity @p[tag=p5,tag=ritualofbloodO] container.* redstone[minecraft:custom_name={"text":"Ritual of Blood","bold":true,"color":"dark_green","italic":false}] run clear @a[tag=p5]
execute if score Spell_Points_P1 Spell_Points >= ritualOfBloodSp spellStats run execute if items entity @p[tag=p5,tag=ritualofbloodO] container.* redstone[minecraft:custom_name={"text":"Ritual of Blood","bold":true,"color":"dark_green","italic":false}] run scoreboard players operation Spell_Points_P1 Spell_Points -= ritualOfBloodSp spellStats
execute if score Spell_Points_P1 Spell_Points >= ritualOfBloodSp spellStats run execute if items entity @p[tag=p5,tag=ritualofbloodO] container.* redstone[minecraft:custom_name={"text":"Ritual of Blood","bold":true,"color":"dark_green","italic":false}] run effect clear @a[tag=p5] water_breathing

execute if items entity @p[tag=p5,tag=!ritualofbloodO] container.* redstone[minecraft:custom_name={"text":"Ritual of Blood","bold":true,"color":"dark_green","italic":false}] run tellraw @a[tag=p5] ["Sorry, you don't own this spell."]
execute if items entity @p[tag=p5,tag=!ritualofbloodO] container.* redstone[minecraft:custom_name={"text":"Ritual of Blood","bold":true,"color":"dark_green","italic":false}] run clear @a[tag=p5]




#Frost Bolt Select P1
execute if score Spell_Points_P1 Spell_Points >= frostboltSp spellStats run execute if items entity @p[tag=p5,tag=frostboltO] container.* breeze_rod[minecraft:custom_name={"text":"Frostbolt","bold":true,"color":"dark_green","italic":false}] run tag @p[tag=p5] add frostbolt
execute if score Spell_Points_P1 Spell_Points >= frostboltSp spellStats run execute if items entity @p[tag=p5,tag=frostboltO] container.* breeze_rod[minecraft:custom_name={"text":"Frostbolt","bold":true,"color":"dark_green","italic":false}] run tellraw @a[tag=p5] ["",{"selector":"@p[tag=p5]"}," picked Frostbolt."]
execute if score Spell_Points_P1 Spell_Points < frostboltSp spellStats run execute if items entity @p[tag=p5,tag=frostboltO] container.* breeze_rod[minecraft:custom_name={"text":"Frostbolt","bold":true,"color":"dark_green","italic":false}] run tellraw @a[tag=p5] ["",{"selector":"@p[tag=p5]"}," You dont have enough spell points to equip this spell."]
execute if score Spell_Points_P1 Spell_Points < frostboltSp spellStats run execute if items entity @p[tag=p5,tag=frostboltO] container.* breeze_rod[minecraft:custom_name={"text":"Frostbolt","bold":true,"color":"dark_green","italic":false}] run clear @a[tag=p5]
execute if score Spell_Points_P1 Spell_Points >= frostboltSp spellStats run execute if items entity @p[tag=p5,tag=frostboltO] container.* breeze_rod[minecraft:custom_name={"text":"Frostbolt","bold":true,"color":"dark_green","italic":false}] run scoreboard players operation Spell_Points_P1 Spell_Points -= frostboltSp spellStats
execute if score Spell_Points_P1 Spell_Points >= frostboltSp spellStats run execute if items entity @p[tag=p5,tag=frostboltO] container.* breeze_rod[minecraft:custom_name={"text":"Frostbolt","bold":true,"color":"dark_green","italic":false}] run effect clear @a[tag=p5] water_breathing

execute if items entity @p[tag=p5,tag=!frostboltO] container.* breeze_rod[minecraft:custom_name={"text":"Frostbolt","bold":true,"color":"dark_green","italic":false}] run tellraw @a[tag=p5] ["Sorry, you don't own this spell."]
execute if items entity @p[tag=p5,tag=!frostboltO] container.* breeze_rod[minecraft:custom_name={"text":"Frostbolt","bold":true,"color":"dark_green","italic":false}] run clear @a[tag=p5]




#Meteor Select P1
execute if score Spell_Points_P1 Spell_Points >= meteorSp spellStats run execute if items entity @p[tag=p5,tag=meteorO] container.* dead_brain_coral_block[minecraft:custom_name={"text":"Meteor","bold":true,"color":"dark_green","italic":false}] run tag @p[tag=p5] add meteor
execute if score Spell_Points_P1 Spell_Points >= meteorSp spellStats run execute if items entity @p[tag=p5,tag=meteorO] container.* dead_brain_coral_block[minecraft:custom_name={"text":"Meteor","bold":true,"color":"dark_green","italic":false}] run tellraw @a[tag=p5] ["",{"selector":"@p[tag=p5]"}," picked Meteor."]
execute if score Spell_Points_P1 Spell_Points < meteorSp spellStats run execute if items entity @p[tag=p5,tag=meteorO] container.* dead_brain_coral_block[minecraft:custom_name={"text":"Meteor","bold":true,"color":"dark_green","italic":false}] run tellraw @a[tag=p5] ["",{"selector":"@p[tag=p5]"}," You dont have enough spell points to equip this spell."]
execute if score Spell_Points_P1 Spell_Points < meteorSp spellStats run execute if items entity @p[tag=p5,tag=meteorO] container.* dead_brain_coral_block[minecraft:custom_name={"text":"Meteor","bold":true,"color":"dark_green","italic":false}] run clear @a[tag=p5]
execute if score Spell_Points_P1 Spell_Points >= meteorSp spellStats run execute if items entity @p[tag=p5,tag=meteorO] container.* dead_brain_coral_block[minecraft:custom_name={"text":"Meteor","bold":true,"color":"dark_green","italic":false}] run scoreboard players operation Spell_Points_P1 Spell_Points -= meteorSp spellStats
execute if score Spell_Points_P1 Spell_Points >= meteorSp spellStats run execute if items entity @p[tag=p5,tag=meteorO] container.* dead_brain_coral_block[minecraft:custom_name={"text":"Meteor","bold":true,"color":"dark_green","italic":false}] run effect clear @a[tag=p5] water_breathing

execute if items entity @p[tag=p5,tag=!meteorO] container.* dead_brain_coral_block[minecraft:custom_name={"text":"Meteor","bold":true,"color":"dark_green","italic":false}] run tellraw @a[tag=p5] ["Sorry, you don't own this spell."]
execute if items entity @p[tag=p5,tag=!meteorO] container.* dead_brain_coral_block[minecraft:custom_name={"text":"Meteor","bold":true,"color":"dark_green","italic":false}] run clear @a[tag=p5]


#Shield Select P1
execute if score Spell_Points_P1 Spell_Points >= shieldSp spellStats run execute if items entity @p[tag=p5,tag=shieldO] container.* shield[minecraft:custom_name={"text":"Shield","bold":true,"color":"dark_green","italic":false}] run tag @p[tag=p5] add shield
execute if score Spell_Points_P1 Spell_Points >= shieldSp spellStats run execute if items entity @p[tag=p5,tag=shieldO] container.* shield[minecraft:custom_name={"text":"Shield","bold":true,"color":"dark_green","italic":false}] run tellraw @a[tag=p5] ["",{"selector":"@p[tag=p5]"}," picked Shield."]
execute if score Spell_Points_P1 Spell_Points < shieldSp spellStats run execute if items entity @p[tag=p5,tag=shieldO] container.* shield[minecraft:custom_name={"text":"Shield","bold":true,"color":"dark_green","italic":false}] run tellraw @a[tag=p5] ["",{"selector":"@p[tag=p5]"}," You dont have enough spell points to equip this spell."]
execute if score Spell_Points_P1 Spell_Points < shieldSp spellStats run execute if items entity @p[tag=p5,tag=shieldO] container.* shield[minecraft:custom_name={"text":"Shield","bold":true,"color":"dark_green","italic":false}] run clear @a[tag=p5]
execute if score Spell_Points_P1 Spell_Points >= shieldSp spellStats run execute if items entity @p[tag=p5,tag=shieldO] container.* shield[minecraft:custom_name={"text":"Shield","bold":true,"color":"dark_green","italic":false}] run scoreboard players operation Spell_Points_P1 Spell_Points -= shieldSp spellStats
execute if score Spell_Points_P1 Spell_Points >= shieldSp spellStats run execute if items entity @p[tag=p5,tag=shieldO] container.* shield[minecraft:custom_name={"text":"Shield","bold":true,"color":"dark_green","italic":false}] run effect clear @a[tag=p5] water_breathing

execute if items entity @p[tag=p5,tag=!shieldO] container.* shield[minecraft:custom_name={"text":"Shield","bold":true,"color":"dark_green","italic":false}] run tellraw @a[tag=p5] ["Sorry, you don't own this spell."]
execute if items entity @p[tag=p5,tag=!shieldO] container.* shield[minecraft:custom_name={"text":"Shield","bold":true,"color":"dark_green","italic":false}] run clear @a[tag=p5]



#Shock Orb Select P1
execute if score Spell_Points_P1 Spell_Points >= shockOrbSp spellStats run execute if items entity @p[tag=p5,tag=shockorbO] container.* heart_of_the_sea[minecraft:custom_name={"text":"Ball Lightning","bold":true,"color":"dark_green","italic":false}] run tag @p[tag=p5] add shockorb
execute if score Spell_Points_P1 Spell_Points >= shockOrbSp spellStats run execute if items entity @p[tag=p5,tag=shockorbO] container.* heart_of_the_sea[minecraft:custom_name={"text":"Ball Lightning","bold":true,"color":"dark_green","italic":false}] run tellraw @a[tag=p5] ["",{"selector":"@p[tag=p5]"}," picked Ball Lightning."]
execute if score Spell_Points_P1 Spell_Points < shockOrbSp spellStats run execute if items entity @p[tag=p5,tag=shockorbO] container.* heart_of_the_sea[minecraft:custom_name={"text":"Ball Lightning","bold":true,"color":"dark_green","italic":false}] run tellraw @a[tag=p5] ["",{"selector":"@p[tag=p5]"}," You dont have enough spell points to equip this spell."]
execute if score Spell_Points_P1 Spell_Points < shockOrbSp spellStats run execute if items entity @p[tag=p5,tag=shockorbO] container.* heart_of_the_sea[minecraft:custom_name={"text":"Ball Lightning","bold":true,"color":"dark_green","italic":false}] run clear @a[tag=p5]
execute if score Spell_Points_P1 Spell_Points >= shockOrbSp spellStats run execute if items entity @p[tag=p5,tag=shockorbO] container.* heart_of_the_sea[minecraft:custom_name={"text":"Ball Lightning","bold":true,"color":"dark_green","italic":false}] run scoreboard players operation Spell_Points_P1 Spell_Points -= shockOrbSp spellStats
execute if score Spell_Points_P1 Spell_Points >= shockOrbSp spellStats run execute if items entity @p[tag=p5,tag=shockorbO] container.* heart_of_the_sea[minecraft:custom_name={"text":"Ball Lightning","bold":true,"color":"dark_green","italic":false}] run effect clear @a[tag=p5] water_breathing

execute if items entity @p[tag=p5,tag=!shockorbO] container.* heart_of_the_sea[minecraft:custom_name={"text":"Ball Lightning","bold":true,"color":"dark_green","italic":false}] run tellraw @a[tag=p5] ["Sorry, you don't own this spell."]
execute if items entity @p[tag=p5,tag=!shockorbO] container.* heart_of_the_sea[minecraft:custom_name={"text":"Ball Lightning","bold":true,"color":"dark_green","italic":false}] run clear @a[tag=p5]




#Witch Bolt Select P1
execute if score Spell_Points_P1 Spell_Points >= witchBoltSp spellStats run execute if items entity @p[tag=p5,tag=witchboltO] container.* blaze_rod[minecraft:custom_name={"text":"Witch Bolt","bold":true,"color":"dark_green","italic":false}] run tag @p[tag=p5] add witchbolt
execute if score Spell_Points_P1 Spell_Points >= witchBoltSp spellStats run execute if items entity @p[tag=p5,tag=witchboltO] container.* blaze_rod[minecraft:custom_name={"text":"Witch Bolt","bold":true,"color":"dark_green","italic":false}] run tellraw @a[tag=p5] ["",{"selector":"@p[tag=p5]"}," picked Witch Bolt."]
execute if score Spell_Points_P1 Spell_Points < witchBoltSp spellStats run execute if items entity @p[tag=p5,tag=witchboltO] container.* blaze_rod[minecraft:custom_name={"text":"Witch Bolt","bold":true,"color":"dark_green","italic":false}] run tellraw @a[tag=p5] ["",{"selector":"@p[tag=p5]"}," You dont have enough spell points to equip this spell."]
execute if score Spell_Points_P1 Spell_Points < witchBoltSp spellStats run execute if items entity @p[tag=p5,tag=witchboltO] container.* blaze_rod[minecraft:custom_name={"text":"Witch Bolt","bold":true,"color":"dark_green","italic":false}] run clear @a[tag=p5]
execute if score Spell_Points_P1 Spell_Points >= witchBoltSp spellStats run execute if items entity @p[tag=p5,tag=witchboltO] container.* blaze_rod[minecraft:custom_name={"text":"Witch Bolt","bold":true,"color":"dark_green","italic":false}] run scoreboard players operation Spell_Points_P1 Spell_Points -= witchBoltSp spellStats
execute if score Spell_Points_P1 Spell_Points >= witchBoltSP spellStats run execute if items entity @p[tag=p5,tag=witchboltO] container.* blaze_rod[minecraft:custom_name={"text":"Witch Bolt","bold":true,"color":"dark_green","italic":false}] run effect clear @a[tag=p5] water_breathing

execute if items entity @p[tag=p5,tag=!witchboltO] container.* blaze_rod[minecraft:custom_name={"text":"Witch Bolt","bold":true,"color":"dark_green","italic":false}] run tellraw @a[tag=p5] ["Sorry, you don't own this spell."]
execute if items entity @p[tag=p5,tag=!witchboltO] container.* blaze_rod[minecraft:custom_name={"text":"Witch Bolt","bold":true,"color":"dark_green","italic":false}] run clear @a[tag=p5]
#Swiftness Select P1
execute if score Spell_Points_P1 Spell_Points >= swiftnessSp spellStats run execute if items entity @p[tag=p5,tag=swiftnessO] container.* rabbit_foot[minecraft:custom_name={"text":"Swiftness","bold":true,"color":"dark_green","italic":false}] run tag @p[tag=p5] add swiftness
execute if score Spell_Points_P1 Spell_Points >= swiftnessSp spellStats run execute if items entity @p[tag=p5,tag=swiftnessO] container.* rabbit_foot[minecraft:custom_name={"text":"Swiftness","bold":true,"color":"dark_green","italic":false}] run tellraw @a[tag=p5] ["",{"selector":"@p[tag=p5]"}," picked Swiftness."]
execute if score Spell_Points_P1 Spell_Points < swiftnessSp spellStats run execute if items entity @p[tag=p5,tag=swiftnessO] container.* rabbit_foot[minecraft:custom_name={"text":"Swiftness","bold":true,"color":"dark_green","italic":false}] run tellraw @a[tag=p5] ["",{"selector":"@p[tag=p5]"}," You dont have enough spell points to equip this spell."]
execute if score Spell_Points_P1 Spell_Points < swiftnessSp spellStats run execute if items entity @p[tag=p5,tag=swiftnessO] container.* rabbit_foot[minecraft:custom_name={"text":"Swiftness","bold":true,"color":"dark_green","italic":false}] run clear @a[tag=p5]
execute if score Spell_Points_P1 Spell_Points >= swiftnessSp spellStats run execute if items entity @p[tag=p5,tag=swiftnessO] container.* rabbit_foot[minecraft:custom_name={"text":"Swiftness","bold":true,"color":"dark_green","italic":false}] run scoreboard players operation Spell_Points_P1 Spell_Points -= swiftnessSp spellStats
execute if score Spell_Points_P1 Spell_Points >= swiftnessSp spellStats run execute if items entity @p[tag=p5,tag=swiftnessO] container.* rabbit_foot[minecraft:custom_name={"text":"Swiftness","bold":true,"color":"dark_green","italic":false}] run effect clear @a[tag=p5] water_breathing

execute if items entity @p[tag=p5,tag=!swiftnessO] container.* rabbit_foot[minecraft:custom_name={"text":"Swiftness","bold":true,"color":"dark_green","italic":false}] run tellraw @a[tag=p5] ["Sorry, you don't own this spell."]
execute if items entity @p[tag=p5,tag=!swiftnessO] container.* rabbit_foot[minecraft:custom_name={"text":"Swiftness","bold":true,"color":"dark_green","italic":false}] run clear @a[tag=p5]


#Embrittle Select P1
execute if score Spell_Points_P1 Spell_Points >= embrittleSp spellStats run execute if items entity @p[tag=p5,tag=embrittleO] container.* damaged_anvil[minecraft:custom_name={"text":"Embrittle","bold":true,"color":"dark_green","italic":false}] run tag @p[tag=p5] add embrittle
execute if score Spell_Points_P1 Spell_Points >= embrittleSp spellStats run execute if items entity @p[tag=p5,tag=embrittleO] container.* damaged_anvil[minecraft:custom_name={"text":"Embrittle","bold":true,"color":"dark_green","italic":false}] run tellraw @a[tag=p5] ["",{"selector":"@p[tag=p5]"}," picked Embrittle."]
execute if score Spell_Points_P1 Spell_Points < embrittleSp spellStats run execute if items entity @p[tag=p5,tag=embrittleO] container.* damaged_anvil[minecraft:custom_name={"text":"Embrittle","bold":true,"color":"dark_green","italic":false}] run tellraw @a[tag=p5] ["",{"selector":"@p[tag=p5]"}," You dont have enough spell points to equip this spell."]
execute if score Spell_Points_P1 Spell_Points < embrittleSp spellStats run execute if items entity @p[tag=p5,tag=embrittleO] container.* damaged_anvil[minecraft:custom_name={"text":"Embrittle","bold":true,"color":"dark_green","italic":false}] run clear @a[tag=p5]
execute if score Spell_Points_P1 Spell_Points >= embrittleSp spellStats run execute if items entity @p[tag=p5,tag=embrittleO] container.* damaged_anvil[minecraft:custom_name={"text":"Embrittle","bold":true,"color":"dark_green","italic":false}] run scoreboard players operation Spell_Points_P1 Spell_Points -= embrittleSp spellStats
execute if score Spell_Points_P1 Spell_Points >= embrittleSp spellStats run execute if items entity @p[tag=p5,tag=embrittleO] container.* damaged_anvil[minecraft:custom_name={"text":"Embrittle","bold":true,"color":"dark_green","italic":false}] run effect clear @a[tag=p5] water_breathing

execute if items entity @p[tag=p5,tag=!embrittleO] container.* damaged_anvil[minecraft:custom_name={"text":"Embrittle","bold":true,"color":"dark_green","italic":false}] run tellraw @a[tag=p5] ["Sorry, you don't own this spell."]
execute if items entity @p[tag=p5,tag=!embrittleO] container.* damaged_anvil[minecraft:custom_name={"text":"Embrittle","bold":true,"color":"dark_green","italic":false}] run clear @a[tag=p5]


#Embiggen Select P1
execute if score Spell_Points_P1 Spell_Points >= embiggenSp spellStats run execute if items entity @p[tag=p5,tag=embiggenO] container.* pufferfish[minecraft:custom_name={"text":"Embiggen","bold":true,"color":"dark_green","italic":false}] run tag @p[tag=p5] add embiggen
execute if score Spell_Points_P1 Spell_Points >= embiggenSp spellStats run execute if items entity @p[tag=p5,tag=embiggenO] container.* pufferfish[minecraft:custom_name={"text":"Embiggen","bold":true,"color":"dark_green","italic":false}] run tellraw @a[tag=p5] ["",{"selector":"@p[tag=p5]"}," picked Embiggen."]
execute if score Spell_Points_P1 Spell_Points < embiggenSp spellStats run execute if items entity @p[tag=p5,tag=embiggenO] container.* pufferfish[minecraft:custom_name={"text":"Embiggen","bold":true,"color":"dark_green","italic":false}] run tellraw @a[tag=p5] ["",{"selector":"@p[tag=p5]"}," You dont have enough spell points to equip this spell."]
execute if score Spell_Points_P1 Spell_Points < embiggenSp spellStats run execute if items entity @p[tag=p5,tag=embiggenO] container.* pufferfish[minecraft:custom_name={"text":"Embiggen","bold":true,"color":"dark_green","italic":false}] run clear @a[tag=p5]
execute if score Spell_Points_P1 Spell_Points >= embiggenSp spellStats run execute if items entity @p[tag=p5,tag=embiggenO] container.* pufferfish[minecraft:custom_name={"text":"Embiggen","bold":true,"color":"dark_green","italic":false}] run scoreboard players operation Spell_Points_P1 Spell_Points -= embiggenSp spellStats
execute if score Spell_Points_P1 Spell_Points >= embiggenSp spellStats run execute if items entity @p[tag=p5,tag=embiggenO] container.* pufferfish[minecraft:custom_name={"text":"Embiggen","bold":true,"color":"dark_green","italic":false}] run effect clear @a[tag=p5] water_breathing

execute if items entity @p[tag=p5,tag=!embiggenO] container.* pufferfish[minecraft:custom_name={"text":"Embiggen","bold":true,"color":"dark_green","italic":false}] run tellraw @a[tag=p5] ["Sorry, you don't own this spell."]
execute if items entity @p[tag=p5,tag=!embiggenO] container.* pufferfish[minecraft:custom_name={"text":"Embiggen","bold":true,"color":"dark_green","italic":false}] run clear @a[tag=p5]




#Immolate Select P1
execute if score Spell_Points_P1 Spell_Points >= immolateSp spellStats run execute if items entity @p[tag=p5,tag=immolateO] container.* blaze_powder[minecraft:custom_name={"text":"Immolate","bold":true,"color":"blue","italic":false}] run tag @p[tag=p5] add immolate
execute if score Spell_Points_P1 Spell_Points >= immolateSp spellStats run execute if items entity @p[tag=p5,tag=immolateO] container.* blaze_powder[minecraft:custom_name={"text":"Immolate","bold":true,"color":"blue","italic":false}] run tellraw @a[tag=p5] ["",{"selector":"@p[tag=p5]"}," picked Immolate."]
execute if score Spell_Points_P1 Spell_Points < immolateSp spellStats run execute if items entity @p[tag=p5,tag=immolateO] container.* blaze_powder[minecraft:custom_name={"text":"Immolate","bold":true,"color":"blue","italic":false}] run tellraw @a[tag=p5] ["",{"selector":"@p[tag=p5]"}," You dont have enough spell points to equip this spell."]
execute if score Spell_Points_P1 Spell_Points < immolateSp spellStats run execute if items entity @p[tag=p5,tag=immolateO] container.* blaze_powder[minecraft:custom_name={"text":"Immolate","bold":true,"color":"blue","italic":false}] run clear @a[tag=p5]
execute if score Spell_Points_P1 Spell_Points >= immolateSp spellStats run execute if items entity @p[tag=p5,tag=immolateO] container.* blaze_powder[minecraft:custom_name={"text":"Immolate","bold":true,"color":"blue","italic":false}] run scoreboard players operation Spell_Points_P1 Spell_Points -= immolateSp spellStats
execute if score Spell_Points_P1 Spell_Points >= immolateSp spellStats run execute if items entity @p[tag=p5,tag=immolateO] container.* blaze_powder[minecraft:custom_name={"text":"Immolate","bold":true,"color":"blue","italic":false}] run effect clear @a[tag=p5] water_breathing

execute if items entity @p[tag=p5,tag=!immolateO] container.* blaze_powder[minecraft:custom_name={"text":"Immolate","bold":true,"color":"blue","italic":false}] run tellraw @a[tag=p5] ["Sorry, you don't own this spell."]
execute if items entity @p[tag=p5,tag=!immolateO] container.* blaze_powder[minecraft:custom_name={"text":"Immolate","bold":true,"color":"blue","italic":false}] run clear @a[tag=p5]



#Evil Eye Select P1
execute if score Spell_Points_P1 Spell_Points >= evilEyeSp spellStats run execute if items entity @p[tag=p5,tag=evileyeO] container.* spider_eye[minecraft:custom_name={"text":"Evil Eye","bold":true,"color":"blue","italic":false}] run tag @p[tag=p5] add evileye
execute if score Spell_Points_P1 Spell_Points >= evilEyeSp spellStats run execute if items entity @p[tag=p5,tag=evileyeO] container.* spider_eye[minecraft:custom_name={"text":"Evil Eye","bold":true,"color":"blue","italic":false}] run tellraw @a[tag=p5] ["",{"selector":"@p[tag=p5]"}," picked Evil Eye."]
execute if score Spell_Points_P1 Spell_Points < evilEyeSp spellStats run execute if items entity @p[tag=p5,tag=evileyeO] container.* spider_eye[minecraft:custom_name={"text":"Evil Eye","bold":true,"color":"blue","italic":false}] run tellraw @a[tag=p5] ["",{"selector":"@p[tag=p5]"}," You dont have enough spell points to equip this spell."]
execute if score Spell_Points_P1 Spell_Points < evilEyeSp spellStats run execute if items entity @p[tag=p5,tag=evileyeO] container.* spider_eye[minecraft:custom_name={"text":"Evil Eye","bold":true,"color":"blue","italic":false}] run clear @a[tag=p5]
execute if score Spell_Points_P1 Spell_Points >= evilEyeSp spellStats run execute if items entity @p[tag=p5,tag=evileyeO] container.* spider_eye[minecraft:custom_name={"text":"Evil Eye","bold":true,"color":"blue","italic":false}] run scoreboard players operation Spell_Points_P1 Spell_Points -= evilEyeSp spellStats
execute if score Spell_Points_P1 Spell_Points >= evilEyeSp spellStats run execute if items entity @p[tag=p5,tag=evileyeO] container.* spider_eye[minecraft:custom_name={"text":"Evil Eye","bold":true,"color":"blue","italic":false}] run effect clear @a[tag=p5] water_breathing

execute if items entity @p[tag=p5,tag=!evileyeO] container.* spider_eye[minecraft:custom_name={"text":"Evil Eye","bold":true,"color":"blue","italic":false}] run tellraw @a[tag=p5] ["Sorry, you don't own this spell."]
execute if items entity @p[tag=p5,tag=!evileyeO] container.* spider_eye[minecraft:custom_name={"text":"Evil Eye","bold":true,"color":"blue","italic":false}] run clear @a[tag=p5]




#Protector's Rune Select P1
execute if score Spell_Points_P1 Spell_Points >= protectorsRuneSp spellStats run execute if items entity @p[tag=p5,tag=protectorsruneO] container.* chiseled_tuff[minecraft:custom_name={"text":"Protector's Rune","bold":true,"color":"blue","italic":false}] run tag @p[tag=p5] add protectorsrune
execute if score Spell_Points_P1 Spell_Points >= protectorsRuneSp spellStats run execute if items entity @p[tag=p5,tag=protectorsruneO] container.* chiseled_tuff[minecraft:custom_name={"text":"Protector's Rune","bold":true,"color":"blue","italic":false}] run tellraw @a[tag=p5] ["",{"selector":"@p[tag=p5]"}," picked Protector's Rune."]
execute if score Spell_Points_P1 Spell_Points < protectorsRuneSp spellStats run execute if items entity @p[tag=p5,tag=protectorsruneO] container.* chiseled_tuff[minecraft:custom_name={"text":"Protector's Rune","bold":true,"color":"blue","italic":false}] run tellraw @a[tag=p5] ["",{"selector":"@p[tag=p5]"}," You dont have enough spell points to equip this spell."]
execute if score Spell_Points_P1 Spell_Points < protectorsRuneSp spellStats run execute if items entity @p[tag=p5,tag=protectorsruneO] container.* chiseled_tuff[minecraft:custom_name={"text":"Protector's Rune","bold":true,"color":"blue","italic":false}] run clear @a[tag=p5]
execute if score Spell_Points_P1 Spell_Points >= protectorsRuneSp spellStats run execute if items entity @p[tag=p5,tag=protectorsruneO] container.* chiseled_tuff[minecraft:custom_name={"text":"Protector's Rune","bold":true,"color":"blue","italic":false}] run scoreboard players operation Spell_Points_P1 Spell_Points -= protectorsRuneSp spellStats
execute if score Spell_Points_P1 Spell_Points >= protectorsRuneSp spellStats run execute if items entity @p[tag=p5,tag=protectorsruneO] container.* chiseled_tuff[minecraft:custom_name={"text":"Protector's Rune","bold":true,"color":"blue","italic":false}] run effect clear @a[tag=p5] water_breathing

execute if items entity @p[tag=p5,tag=!protectorsruneO] container.* chiseled_tuff[minecraft:custom_name={"text":"Protector's Rune","bold":true,"color":"blue","italic":false}] run tellraw @a[tag=p5] ["Sorry, you don't own this spell."]
execute if items entity @p[tag=p5,tag=!protectorsruneO] container.* chiseled_tuff[minecraft:custom_name={"text":"Protector's Rune","bold":true,"color":"blue","italic":false}] run clear @a[tag=p5]




#Miracle Select P1
execute if score Spell_Points_P1 Spell_Points >= miracleSp spellStats run execute if items entity @p[tag=p5,tag=miracleO] container.* beacon[minecraft:custom_name={"text":"Miracle","bold":true,"color":"blue","italic":false}] run tag @p[tag=p5] add miracle
execute if score Spell_Points_P1 Spell_Points >= miracleSp spellStats run execute if items entity @p[tag=p5,tag=protectorsruneO] container.* chiseled_tuff[minecraft:custom_name={"text":"Protector's Rune","bold":true,"color":"blue","italic":false}] run tellraw @a[tag=p5] ["",{"selector":"@p[tag=p5]"}," picked Miracle."]
execute if score Spell_Points_P1 Spell_Points < miracleSp spellStats run execute if items entity @p[tag=p5,tag=protectorsruneO] container.* chiseled_tuff[minecraft:custom_name={"text":"Protector's Rune","bold":true,"color":"blue","italic":false}] run tellraw @a[tag=p5] ["",{"selector":"@p[tag=p5]"}," You dont have enough spell points to equip this spell."]
execute if score Spell_Points_P1 Spell_Points < miracleSp spellStats run execute if items entity @p[tag=p5,tag=protectorsruneO] container.* chiseled_tuff[minecraft:custom_name={"text":"Protector's Rune","bold":true,"color":"blue","italic":false}] run clear @a[tag=p5]
execute if score Spell_Points_P1 Spell_Points >= miracleSp spellStats run execute if items entity @p[tag=p5,tag=protectorsruneO] container.* chiseled_tuff[minecraft:custom_name={"text":"Protector's Rune","bold":true,"color":"blue","italic":false}] run scoreboard players operation Spell_Points_P1 Spell_Points -= miracleSp spellStats
execute if score Spell_Points_P1 Spell_Points >= miracleSp spellStats run execute if items entity @p[tag=p5,tag=protectorsruneO] container.* chiseled_tuff[minecraft:custom_name={"text":"Protector's Rune","bold":true,"color":"blue","italic":false}] run effect clear @a[tag=p5] water_breathing

execute if items entity @p[tag=p5,tag=!miracleO] container.* beacon[minecraft:custom_name={"text":"Miracle","bold":true,"color":"blue","italic":false}] run tellraw @a[tag=p5] ["Sorry, you don't own this spell."]
execute if items entity @p[tag=p5,tag=!miracleO] container.* beacon[minecraft:custom_name={"text":"Miracle","bold":true,"color":"blue","italic":false}] run clear @a[tag=p5]


#Miasma Select P1
execute if score Spell_Points_P1 Spell_Points >= miasmaSp spellStats run execute if items entity @p[tag=p5,tag=miasmaO] container.* sculk_vein[minecraft:custom_name={"text":"Miasma","bold":true,"color":"blue","italic":false}] run tag @p[tag=p5] add miasma
execute if score Spell_Points_P1 Spell_Points >= miasmaSp spellStats run execute if items entity @p[tag=p5,tag=miasmaO] container.* sculk_vein[minecraft:custom_name={"text":"Miasma","bold":true,"color":"blue","italic":false}] run tellraw @a[tag=p5] ["",{"selector":"@p[tag=p5]"}," picked Miasma."]
execute if score Spell_Points_P1 Spell_Points < miasmaSp spellStats run execute if items entity @p[tag=p5,tag=miasmaO] container.* sculk_vein[minecraft:custom_name={"text":"Miasma","bold":true,"color":"blue","italic":false}] run tellraw @a[tag=p5] ["",{"selector":"@p[tag=p5]"}," You dont have enough spell points to equip this spell."]
execute if score Spell_Points_P1 Spell_Points < miasmaSp spellStats run execute if items entity @p[tag=p5,tag=miasmaO] container.* sculk_vein[minecraft:custom_name={"text":"Miasma","bold":true,"color":"blue","italic":false}] run clear @a[tag=p5]
execute if score Spell_Points_P1 Spell_Points >= miasmaSp spellStats run execute if items entity @p[tag=p5,tag=miasmaO] container.* sculk_vein[minecraft:custom_name={"text":"Miasma","bold":true,"color":"blue","italic":false}] run scoreboard players operation Spell_Points_P1 Spell_Points -= miasmaSp spellStats
execute if score Spell_Points_P1 Spell_Points >= miasmaSp spellStats run execute if items entity @p[tag=p5,tag=miasmaO] container.* sculk_vein[minecraft:custom_name={"text":"Miasma","bold":true,"color":"blue","italic":false}] run effect clear @a[tag=p5] water_breathing

execute if items entity @p[tag=p5,tag=!miasmaO] container.* sculk_vein[minecraft:custom_name={"text":"Miasma","bold":true,"color":"blue","italic":false}] run tellraw @a[tag=p5] ["Sorry, you don't own this spell."]
execute if items entity @p[tag=p5,tag=!miasmaO] container.* sculk_vein[minecraft:custom_name={"text":"Miasma","bold":true,"color":"blue","italic":false}] run clear @a[tag=p5]


#Ward Select P1
execute if score Spell_Points_P1 Spell_Points >= wardSp spellStats run execute if items entity @p[tag=p5,tag=wardO] container.* blue_stained_glass[minecraft:custom_name={"text":"Ward","bold":true,"color":"blue","italic":false}] run tag @p[tag=p5] add ward
execute if score Spell_Points_P1 Spell_Points >= wardSp spellStats run execute if items entity @p[tag=p5,tag=wardO] container.* blue_stained_glass[minecraft:custom_name={"text":"Ward","bold":true,"color":"blue","italic":false}] run tellraw @a[tag=p5] ["",{"selector":"@p[tag=p5]"}," picked Ward."]
execute if score Spell_Points_P1 Spell_Points < wardSp spellStats run execute if items entity @p[tag=p5,tag=wardO] container.* blue_stained_glass[minecraft:custom_name={"text":"Ward","bold":true,"color":"blue","italic":false}] run tellraw @a[tag=p5] ["",{"selector":"@p[tag=p5]"}," You dont have enough spell points to equip this spell."]
execute if score Spell_Points_P1 Spell_Points < wardSp spellStats run execute if items entity @p[tag=p5,tag=wardO] container.* blue_stained_glass[minecraft:custom_name={"text":"Ward","bold":true,"color":"blue","italic":false}] run clear @a[tag=p5]
execute if score Spell_Points_P1 Spell_Points >= wardSp spellStats run execute if items entity @p[tag=p5,tag=wardO] container.* blue_stained_glass[minecraft:custom_name={"text":"Ward","bold":true,"color":"blue","italic":false}] run scoreboard players operation Spell_Points_P1 Spell_Points -= wardSp spellStats
execute if score Spell_Points_P1 Spell_Points >= wardSp spellStats run execute if items entity @p[tag=p5,tag=wardO] container.* blue_stained_glass[minecraft:custom_name={"text":"Ward","bold":true,"color":"blue","italic":false}] run effect clear @a[tag=p5] water_breathing

execute if items entity @p[tag=p5,tag=!wardO] container.* blue_stained_glass[minecraft:custom_name={"text":"Ward","bold":true,"color":"blue","italic":false}] run tellraw @a[tag=p5] ["Sorry, you don't own this spell."]
execute if items entity @p[tag=p5,tag=!wardO] container.* blue_stained_glass[minecraft:custom_name={"text":"Ward","bold":true,"color":"blue","italic":false}] run clear @a[tag=p5]

#Blizzard Select P1
execute if score Spell_Points_P1 Spell_Points >= blizzardSp spellStats run execute if items entity @p[tag=p5,tag=blizzardO] container.* blue_ice[minecraft:custom_name={"text":"Blizzard","bold":true,"color":"blue","italic":false}] run tag @p[tag=p5] add blizzard
execute if score Spell_Points_P1 Spell_Points >= blizzardSp spellStats run execute if items entity @p[tag=p5,tag=blizzardO] container.* blue_ice[minecraft:custom_name={"text":"Blizzard","bold":true,"color":"blue","italic":false}] run tellraw @a[tag=p5] ["",{"selector":"@p[tag=p5]"}," picked Blizzard."]
execute if score Spell_Points_P1 Spell_Points < blizzardSp spellStats run execute if items entity @p[tag=p5,tag=blizzardO] container.* blue_ice[minecraft:custom_name={"text":"Blizzard","bold":true,"color":"blue","italic":false}] run tellraw @a[tag=p5] ["",{"selector":"@p[tag=p5]"}," You dont have enough spell points to equip this spell."]
execute if score Spell_Points_P1 Spell_Points < blizzardSp spellStats run execute if items entity @p[tag=p5,tag=blizzardO] container.* blue_ice[minecraft:custom_name={"text":"Blizzard","bold":true,"color":"blue","italic":false}] run clear @a[tag=p5]
execute if score Spell_Points_P1 Spell_Points >= blizzardSp spellStats run execute if items entity @p[tag=p5,tag=blizzardO] container.* blue_ice[minecraft:custom_name={"text":"Blizzard","bold":true,"color":"blue","italic":false}] run scoreboard players operation Spell_Points_P1 Spell_Points -= blizzardSp spellStats
execute if score Spell_Points_P1 Spell_Points >= blizzardSp spellStats run execute if items entity @p[tag=p5,tag=blizzardO] container.* blue_ice[minecraft:custom_name={"text":"Blizzard","bold":true,"color":"blue","italic":false}] run effect clear @a[tag=p5] water_breathing

execute if items entity @p[tag=p5,tag=!blizzardO] container.* blue_ice[minecraft:custom_name={"text":"Blizzard","bold":true,"color":"blue","italic":false}] run tellraw @a[tag=p5] ["Sorry, you don't own this spell."]
execute if items entity @p[tag=p5,tag=!blizzardO] container.* blue_ice[minecraft:custom_name={"text":"Blizzard","bold":true,"color":"blue","italic":false}] run clear @a[tag=p5]

#Plague Select P1
execute if score Spell_Points_P1 Spell_Points >= plagueSp spellStats run execute if items entity @p[tag=p5,tag=plagueO] container.* fermented_spider_eye[minecraft:custom_name={"text":"Plague","bold":true,"color":"dark_purple","italic":false}] run tag @p[tag=p5] add plague
execute if score Spell_Points_P1 Spell_Points >= plagueSp spellStats run execute if items entity @p[tag=p5,tag=plagueO] container.* fermented_spider_eye[minecraft:custom_name={"text":"Plague","bold":true,"color":"dark_purple","italic":false}] run tellraw @a[tag=p5] ["",{"selector":"@p[tag=p5]"}," picked Plague."]
execute if score Spell_Points_P1 Spell_Points < plagueSp spellStats run execute if items entity @p[tag=p5,tag=plagueO] container.* fermented_spider_eye[minecraft:custom_name={"text":"Plague","bold":true,"color":"dark_purple","italic":false}] run tellraw @a[tag=p5] ["",{"selector":"@p[tag=p5]"}," You dont have enough spell points to equip this spell."]
execute if score Spell_Points_P1 Spell_Points < plagueSp spellStats run execute if items entity @p[tag=p5,tag=plagueO] container.* fermented_spider_eye[minecraft:custom_name={"text":"Plague","bold":true,"color":"dark_purple","italic":false}] run clear @a[tag=p5]
execute if score Spell_Points_P1 Spell_Points >= plagueSp spellStats run execute if items entity @p[tag=p5,tag=plagueO] container.* fermented_spider_eye[minecraft:custom_name={"text":"Plague","bold":true,"color":"dark_purple","italic":false}] run scoreboard players operation Spell_Points_P1 Spell_Points -= plagueSp spellStats
execute if score Spell_Points_P1 Spell_Points >= plagueSp spellStats run execute if items entity @p[tag=p5,tag=plagueO] container.* fermented_spider_eye[minecraft:custom_name={"text":"Plague","bold":true,"color":"dark_purple","italic":false}] run effect clear @a[tag=p5] water_breathing

execute if items entity @p[tag=p5,tag=!plagueO] container.* fermented_spider_eye[minecraft:custom_name={"text":"Plague","bold":true,"color":"dark_purple","italic":false}] run tellraw @a[tag=p5] ["Sorry, you don't own this spell."]
execute if items entity @p[tag=p5,tag=!plagueO] container.* fermented_spider_eye[minecraft:custom_name={"text":"Plague","bold":true,"color":"dark_purple","italic":false}] run clear @a[tag=p5]

#Second Wind Select P1
execute if score Spell_Points_P1 Spell_Points >= secondWindSp spellStats run execute if items entity @p[tag=p5,tag=secondwindO] container.* feather[minecraft:custom_name={"text":"Second Wind","bold":true,"color":"dark_purple","italic":false}] run tag @p[tag=p5] add secondwind
execute if score Spell_Points_P1 Spell_Points >= secondWindSp spellStats run execute if items entity @p[tag=p5,tag=secondwindO] container.* feather[minecraft:custom_name={"text":"Second Wind","bold":true,"color":"dark_purple","italic":false}] run tellraw @a[tag=p5] ["",{"selector":"@p[tag=p5]"}," picked Second Wind."]
execute if score Spell_Points_P1 Spell_Points < secondWindSp spellStats run execute if items entity @p[tag=p5,tag=secondwindO] container.* feather[minecraft:custom_name={"text":"Second Wind","bold":true,"color":"dark_purple","italic":false}] run tellraw @a[tag=p5] ["",{"selector":"@p[tag=p5]"}," You dont have enough spell points to equip this spell."]
execute if score Spell_Points_P1 Spell_Points < secondWindSp spellStats run execute if items entity @p[tag=p5,tag=secondwindO] container.* feather[minecraft:custom_name={"text":"Second Wind","bold":true,"color":"dark_purple","italic":false}] run clear @a[tag=p5]
execute if score Spell_Points_P1 Spell_Points >= secondWindSp spellStats run execute if items entity @p[tag=p5,tag=secondwindO] container.* feather[minecraft:custom_name={"text":"Second Wind","bold":true,"color":"dark_purple","italic":false}] run scoreboard players operation Spell_Points_P1 Spell_Points -= secondWindSp spellStats
execute if score Spell_Points_P1 Spell_Points >= secondWindSp spellStats run execute if items entity @p[tag=p5,tag=secondwindO] container.* feather[minecraft:custom_name={"text":"Second Wind","bold":true,"color":"dark_purple","italic":false}] run effect clear @a[tag=p5] water_breathing

execute if items entity @p[tag=p5,tag=!secondwindO] container.* feather[minecraft:custom_name={"text":"Second Wind","bold":true,"color":"dark_purple","italic":false}] run tellraw @a[tag=p5] ["Sorry, you don't own this spell."]
execute if items entity @p[tag=p5,tag=!secondwindO] container.* feather[minecraft:custom_name={"text":"Second Wind","bold":true,"color":"dark_purple","italic":false}] run clear @a[tag=p5]
#Witches Brew Select P1
execute if score Spell_Points_P1 Spell_Points >= witchesBrewSp spellStats run execute if items entity @p[tag=p5,tag=witchesbrewO] container.* minecraft:cauldron[minecraft:custom_name={"text":"Witches Brew","bold":true,"color":"dark_purple","italic":false}] run tag @p[tag=p5] add witchesbrew
execute if score Spell_Points_P1 Spell_Points >= witchesBrewSp spellStats run execute if items entity @p[tag=p5,tag=witchesbrewO] container.* minecraft:cauldron[minecraft:custom_name={"text":"Witches Brew","bold":true,"color":"dark_purple","italic":false}] run tellraw @a[tag=p5] ["",{"selector":"@p[tag=p5]"}," picked Witches Brew."]
execute if score Spell_Points_P1 Spell_Points < witchesBrewSp spellStats run execute if items entity @p[tag=p5,tag=witchesbrewO] container.* minecraft:cauldron[minecraft:custom_name={"text":"Witches Brew","bold":true,"color":"dark_purple","italic":false}] run tellraw @a[tag=p5] ["",{"selector":"@p[tag=p5]"}," You dont have enough spell points to equip this spell."]
execute if score Spell_Points_P1 Spell_Points < witchesBrewSp spellStats run execute if items entity @p[tag=p5,tag=witchesbrewO] container.* minecraft:cauldron[minecraft:custom_name={"text":"Witches Brew","bold":true,"color":"dark_purple","italic":false}] run clear @a[tag=p5]
execute if score Spell_Points_P1 Spell_Points >= witchesBrewSp spellStats run execute if items entity @p[tag=p5,tag=witchesbrewO] container.* minecraft:cauldron[minecraft:custom_name={"text":"Witches Brew","bold":true,"color":"dark_purple","italic":false}] run scoreboard players operation Spell_Points_P1 Spell_Points -= witchesBrewSp spellStats
execute if score Spell_Points_P1 Spell_Points >= witchesBrewSp spellStats run execute if items entity @p[tag=p5,tag=witchesbrewO] container.* minecraft:cauldron[minecraft:custom_name={"text":"Witches Brew","bold":true,"color":"dark_purple","italic":false}] run effect clear @a[tag=p5] water_breathing

execute if items entity @p[tag=p5,tag=!witchesbrewO] container.* minecraft:cauldron[minecraft:custom_name={"text":"Witches Brew","bold":true,"color":"dark_purple","italic":false}] run tellraw @a[tag=p5] ["Sorry, you don't own this spell."]
execute if items entity @p[tag=p5,tag=!witchesbrewO] container.* minecraft:cauldron[minecraft:custom_name={"text":"Witches Brew","bold":true,"color":"dark_purple","italic":false}] run clear @a[tag=p5]



#Font of Wisdom Select P1
execute if score Spell_Points_P1 Spell_Points >= fontOfWisdomSp spellStats run execute if items entity @p[tag=p5,tag=fontofwisdomO] container.* minecraft:enchanted_book[minecraft:custom_name={"text":"Font of Wisdom","bold":true,"color":"dark_purple","italic":false}] run tag @p[tag=p5] add fontofwisdom
execute if score Spell_Points_P1 Spell_Points >= fontOfWisdomSp spellStats run execute if items entity @p[tag=p5,tag=fontofwisdomO] container.* minecraft:enchanted_book[minecraft:custom_name={"text":"Font of Wisdom","bold":true,"color":"dark_purple","italic":false}] run tellraw @a[tag=p5] ["",{"selector":"@p[tag=p5]"}," picked Font of Wisdom."]
execute if score Spell_Points_P1 Spell_Points < fontOfWisdomSp spellStats run execute if items entity @p[tag=p5,tag=fontofwisdomO] container.* minecraft:enchanted_book[minecraft:custom_name={"text":"Font of Wisdom","bold":true,"color":"dark_purple","italic":false}] run tellraw @a[tag=p5] ["",{"selector":"@p[tag=p5]"}," You dont have enough spell points to equip this spell."]
execute if score Spell_Points_P1 Spell_Points < fontOfWisdomSp spellStats run execute if items entity @p[tag=p5,tag=fontofwisdomO] container.* minecraft:enchanted_book[minecraft:custom_name={"text":"Font of Wisdom","bold":true,"color":"dark_purple","italic":false}] run clear @a[tag=p5]
execute if score Spell_Points_P1 Spell_Points >= fontOfWisdomSp spellStats run execute if items entity @p[tag=p5,tag=fontofwisdomO] container.* minecraft:enchanted_book[minecraft:custom_name={"text":"Font of Wisdom","bold":true,"color":"dark_purple","italic":false}] run scoreboard players operation Spell_Points_P1 Spell_Points -= fontOfWisdomSp spellStats
execute if score Spell_Points_P1 Spell_Points >= fontOfWisdomSp spellStats run execute if items entity @p[tag=p5,tag=fontofwisdomO] container.* minecraft:enchanted_book[minecraft:custom_name={"text":"Font of Wisdom","bold":true,"color":"dark_purple","italic":false}] run effect clear @a[tag=p5] water_breathing

execute if items entity @p[tag=p5,tag=!fontofwisdomO] container.* minecraft:enchanted_book[minecraft:custom_name={"text":"Font of Wisdom","bold":true,"color":"dark_purple","italic":false}] run tellraw @a[tag=p5] ["Sorry, you don't own this spell."]
execute if items entity @p[tag=p5,tag=!fontofwisdomO] container.* minecraft:enchanted_book[minecraft:custom_name={"text":"Font of Wisdom","bold":true,"color":"dark_purple","italic":false}] run clear @a[tag=p5]

#Fountain of Youth Select P1
execute if score Spell_Points_P1 Spell_Points >= fountainOfYouthSp spellStats run execute if items entity @p[tag=p5,tag=fountainofyouthO] container.* minecraft:potion[minecraft:custom_name={"text":"Fountain of Youth","bold":true,"color":"dark_purple","italic":false}] run tag @p[tag=p5] add fountainofyouth
execute if score Spell_Points_P1 Spell_Points >= fountainOfYouthSp spellStats run execute if items entity @p[tag=p5,tag=fountainofyouthO] container.* minecraft:potion[minecraft:custom_name={"text":"Fountain of Youth","bold":true,"color":"dark_purple","italic":false}] run tellraw @a[tag=p5] ["",{"selector":"@p[tag=p5]"}," picked Fountain of Youth."]
execute if score Spell_Points_P1 Spell_Points < fountainOfYouthSp spellStats run execute if items entity @p[tag=p5,tag=fountainofyouthO] container.* minecraft:potion[minecraft:custom_name={"text":"Fountain of Youth","bold":true,"color":"dark_purple","italic":false}] run tellraw @a[tag=p5] ["",{"selector":"@p[tag=p5]"}," You dont have enough spell points to equip this spell."]
execute if score Spell_Points_P1 Spell_Points < fountainOfYouthSp spellStats run execute if items entity @p[tag=p5,tag=fountainofyouthO] container.* minecraft:potion[minecraft:custom_name={"text":"Fountain of Youth","bold":true,"color":"dark_purple","italic":false}] run clear @a[tag=p5]
execute if score Spell_Points_P1 Spell_Points >= fountainOfYouthSp spellStats run execute if items entity @p[tag=p5,tag=fountainofyouthO] container.* minecraft:potion[minecraft:custom_name={"text":"Fountain of Youth","bold":true,"color":"dark_purple","italic":false}] run scoreboard players operation Spell_Points_P1 Spell_Points -= fountainOfYouthSp spellStats
execute if score Spell_Points_P1 Spell_Points >= fountainOfYouthSp spellStats run execute if items entity @p[tag=p5,tag=fountainofyouthO] container.* minecraft:potion[minecraft:custom_name={"text":"Fountain of Youth","bold":true,"color":"dark_purple","italic":false}] run effect clear @a[tag=p5] water_breathing

execute if items entity @p[tag=p5,tag=!fountainofyouthO] container.* minecraft:potion[minecraft:custom_name={"text":"Fountain of Youth","bold":true,"color":"dark_purple","italic":false}] run tellraw @a[tag=p5] ["Sorry, you don't own this spell."]
execute if items entity @p[tag=p5,tag=!fountainofyouthO] container.* minecraft:potion[minecraft:custom_name={"text":"Fountain of Youth","bold":true,"color":"dark_purple","italic":false}] run clear @a[tag=p5]


#Dragonforge Select P1
execute if score Spell_Points_P1 Spell_Points >= dragonforgeSp spellStats run execute if items entity @p[tag=p5,tag=dragonforgeO] container.* minecraft:dragon_head[minecraft:custom_name={"text":"Dragonforge","bold":true,"color":"dark_purple","italic":false}] run tag @p[tag=p5] add dragonforge
execute if score Spell_Points_P1 Spell_Points >= dragonforgeSp spellStats run execute if items entity @p[tag=p5,tag=dragonforgeO] container.* minecraft:dragon_head[minecraft:custom_name={"text":"Dragonforge","bold":true,"color":"dark_purple","italic":false}] run tellraw @a[tag=p5] ["",{"selector":"@p[tag=p5]"}," picked Dragonforge."]
execute if score Spell_Points_P1 Spell_Points < dragonforgeSp spellStats run execute if items entity @p[tag=p5,tag=dragonforgeO] container.* minecraft:dragon_head[minecraft:custom_name={"text":"Dragonforge","bold":true,"color":"dark_purple","italic":false}] run tellraw @a[tag=p5] ["",{"selector":"@p[tag=p5]"}," You dont have enough spell points to equip this spell."]
execute if score Spell_Points_P1 Spell_Points < dragonforgeSp spellStats run execute if items entity @p[tag=p5,tag=dragonforgeO] container.* minecraft:dragon_head[minecraft:custom_name={"text":"Dragonforge","bold":true,"color":"dark_purple","italic":false}] run clear @a[tag=p5]
execute if score Spell_Points_P1 Spell_Points >= dragonforgeSp spellStats run execute if items entity @p[tag=p5,tag=dragonforgeO] container.* minecraft:dragon_head[minecraft:custom_name={"text":"Dragonforge","bold":true,"color":"dark_purple","italic":false}] run scoreboard players operation Spell_Points_P1 Spell_Points -= dragonforgeSp spellStats
execute if score Spell_Points_P1 Spell_Points >= dragonforgeSp spellStats run execute if items entity @p[tag=p5,tag=dragonforgeO] container.* minecraft:dragon_head[minecraft:custom_name={"text":"Dragonforge","bold":true,"color":"dark_purple","italic":false}] run effect clear @a[tag=p5] water_breathing

execute if items entity @p[tag=p5,tag=!dragonforgeO] container.* minecraft:dragon_head[minecraft:custom_name={"text":"Dragonforge","bold":true,"color":"dark_purple","italic":false}] run tellraw @a[tag=p5] ["Sorry, you don't own this spell."]
execute if items entity @p[tag=p5,tag=!dragonforgeO] container.* minecraft:dragon_head[minecraft:custom_name={"text":"Dragonforge","bold":true,"color":"dark_purple","italic":false}] run clear @a[tag=p5]

#Overclock Select P1
execute if score Spell_Points_P1 Spell_Points >= overclockSp spellStats run execute if items entity @p[tag=p5,tag=overclockO] container.* minecraft:heavy_core[minecraft:custom_name={"text":"Overclock","bold":true,"color":"dark_purple","italic":false}] run tag @p[tag=p5] add overclock
execute if score Spell_Points_P1 Spell_Points >= overclockSp spellStats run execute if items entity @p[tag=p5,tag=overclockO] container.* minecraft:heavy_core[minecraft:custom_name={"text":"Overclock","bold":true,"color":"dark_purple","italic":false}] run tellraw @a[tag=p5] ["",{"selector":"@p[tag=p5]"}," picked Overclock."]
execute if score Spell_Points_P1 Spell_Points < overclockSp spellStats run execute if items entity @p[tag=p5,tag=overclockO] container.* minecraft:heavy_core[minecraft:custom_name={"text":"Overclock","bold":true,"color":"dark_purple","italic":false}] run tellraw @a[tag=p5] ["",{"selector":"@p[tag=p5]"}," You dont have enough spell points to equip this spell."]
execute if score Spell_Points_P1 Spell_Points < overclockSp spellStats run execute if items entity @p[tag=p5,tag=overclockO] container.* minecraft:heavy_core[minecraft:custom_name={"text":"Overclock","bold":true,"color":"dark_purple","italic":false}] run clear @a[tag=p5]
execute if score Spell_Points_P1 Spell_Points >= overclockSp spellStats run execute if items entity @p[tag=p5,tag=overclockO] container.* minecraft:heavy_core[minecraft:custom_name={"text":"Overclock","bold":true,"color":"dark_purple","italic":false}] run scoreboard players operation Spell_Points_P1 Spell_Points -= overclockSp spellStats
execute if score Spell_Points_P1 Spell_Points >= overclockSp spellStats run execute if items entity @p[tag=p5,tag=overclockO] container.* minecraft:heavy_core[minecraft:custom_name={"text":"Overclock","bold":true,"color":"dark_purple","italic":false}] run effect clear @a[tag=p5] water_breathing

execute if items entity @p[tag=p5,tag=!overclockO] container.* minecraft:heavy_core[minecraft:custom_name={"text":"Overclock","bold":true,"color":"dark_purple","italic":false}] run tellraw @a[tag=p5] ["Sorry, you don't own this spell."]
execute if items entity @p[tag=p5,tag=!overclockO] container.* minecraft:heavy_core[minecraft:custom_name={"text":"Overclock","bold":true,"color":"dark_purple","italic":false}] run clear @a[tag=p5]


#Shifting Shadows Select P1
execute if score Spell_Points_P1 Spell_Points >= shiftingShadowsSp spellStats run execute if items entity @p[tag=p5,tag=shiftingshadowsO] container.* minecraft:echo_shard[minecraft:custom_name={"text":"Shifting Shadows","bold":true,"color":"gold","italic":false}] run tag @p[tag=p5] add shiftingshadows
execute if score Spell_Points_P1 Spell_Points >= shiftingShadowsSp spellStats run execute if items entity @p[tag=p5,tag=shiftingshadowsO] container.* minecraft:echo_shard[minecraft:custom_name={"text":"Shifting Shadows","bold":true,"color":"gold","italic":false}] run tellraw @a[tag=p5] ["",{"selector":"@p[tag=p5]"}," picked Shifting Shadows."]
execute if score Spell_Points_P1 Spell_Points < shiftingShadowsSp spellStats run execute if items entity @p[tag=p5,tag=shiftingshadowsO] container.* minecraft:echo_shard[minecraft:custom_name={"text":"Shifting Shadows","bold":true,"color":"gold","italic":false}] run tellraw @a[tag=p5] ["",{"selector":"@p[tag=p5]"}," You dont have enough spell points to equip this spell."]
execute if score Spell_Points_P1 Spell_Points < shiftingShadowsSp spellStats run execute if items entity @p[tag=p5,tag=shiftingshadowsO] container.* minecraft:echo_shard[minecraft:custom_name={"text":"Shifting Shadows","bold":true,"color":"gold","italic":false}] run clear @a[tag=p5]
execute if score Spell_Points_P1 Spell_Points >= shiftingShadowsSp spellStats run execute if items entity @p[tag=p5,tag=shiftingshadowsO] container.* minecraft:echo_shard[minecraft:custom_name={"text":"Shifting Shadows","bold":true,"color":"gold","italic":false}] run scoreboard players operation Spell_Points_P1 Spell_Points -= shiftingShadowsSp spellStats
execute if score Spell_Points_P1 Spell_Points >= shiftingShadowsSp spellStats run execute if items entity @p[tag=p5,tag=shiftingshadowsO] container.* minecraft:echo_shard[minecraft:custom_name={"text":"Shifting Shadows","bold":true,"color":"gold","italic":false}] run effect clear @a[tag=p5] water_breathing

execute if items entity @p[tag=p5,tag=!shiftingshadowsO] container.* minecraft:echo_shard[minecraft:custom_name={"text":"Shifting Shadows","bold":true,"color":"gold","italic":false}] run tellraw @a[tag=p5] ["Sorry, you don't own this spell."]
execute if items entity @p[tag=p5,tag=!shiftingshadowsO] container.* minecraft:echo_shard[minecraft:custom_name={"text":"Shifting Shadows","bold":true,"color":"gold","italic":false}] run clear @a[tag=p5]


#Chrono Warp Select P1
execute if score Spell_Points_P1 Spell_Points >= chronoWarpSp spellStats run execute if items entity @p[tag=p5,tag=chronowarpO] container.* minecraft:clock[minecraft:custom_name={"text":"Chrono Warp","bold":true,"color":"gold","italic":false}] run tag @p[tag=p5] add chronowarp
execute if score Spell_Points_P1 Spell_Points >= chronoWarpSp spellStats run execute if items entity @p[tag=p5,tag=chronowarpO] container.* minecraft:clock[minecraft:custom_name={"text":"Chrono Warp","bold":true,"color":"gold","italic":false}] run tellraw @a[tag=p5] ["",{"selector":"@p[tag=p5]"}," picked Chrono Warp."]
execute if score Spell_Points_P1 Spell_Points < chronoWarpSp spellStats run execute if items entity @p[tag=p5,tag=chronowarpO] container.* minecraft:clock[minecraft:custom_name={"text":"Chrono Warp","bold":true,"color":"gold","italic":false}] run tellraw @a[tag=p5] ["",{"selector":"@p[tag=p5]"}," You dont have enough spell points to equip this spell."]
execute if score Spell_Points_P1 Spell_Points < chronoWarpSp spellStats run execute if items entity @p[tag=p5,tag=chronowarpO] container.* minecraft:clock[minecraft:custom_name={"text":"Chrono Warp","bold":true,"color":"gold","italic":false}] run clear @a[tag=p5]
execute if score Spell_Points_P1 Spell_Points >= chronoWarpSp spellStats run execute if items entity @p[tag=p5,tag=chronowarpO] container.* minecraft:clock[minecraft:custom_name={"text":"Chrono Warp","bold":true,"color":"gold","italic":false}] run scoreboard players operation Spell_Points_P1 Spell_Points -= chronoWarpSp spellStats
execute if score Spell_Points_P1 Spell_Points >= chronoWarpSp spellStats run execute if items entity @p[tag=p5,tag=chronowarpO] container.* minecraft:clock[minecraft:custom_name={"text":"Chrono Warp","bold":true,"color":"gold","italic":false}] run effect clear @a[tag=p5] water_breathing

execute if items entity @p[tag=p5,tag=!chronowarpO] container.* minecraft:clock[minecraft:custom_name={"text":"Chrono Warp","bold":true,"color":"gold","italic":false}] run tellraw @a[tag=p5] ["Sorry, you don't own this spell."]
execute if items entity @p[tag=p5,tag=!chronowarpO] container.* minecraft:clock[minecraft:custom_name={"text":"Chrono Warp","bold":true,"color":"gold","italic":false}] run clear @a[tag=p5]


#Healing Totem Select P1
execute if score Spell_Points_P1 Spell_Points >= healingTotemSp spellStats run execute if items entity @p[tag=p5,tag=healingtotemO] container.* minecraft:totem_of_undying[minecraft:custom_name={"text":"Healing Totem","bold":true,"color":"gold","italic":false}] run tag @p[tag=p5] add healingtotem
execute if score Spell_Points_P1 Spell_Points >= healingTotemSp spellStats run execute if items entity @p[tag=p5,tag=healingtotemO] container.* minecraft:totem_of_undying[minecraft:custom_name={"text":"Healing Totem","bold":true,"color":"gold","italic":false}] run tellraw @a[tag=p5] ["",{"selector":"@p[tag=p5]"}," picked Healing Totem."]
execute if score Spell_Points_P1 Spell_Points < healingTotemSp spellStats run execute if items entity @p[tag=p5,tag=healingtotemO] container.* minecraft:totem_of_undying[minecraft:custom_name={"text":"Healing Totem","bold":true,"color":"gold","italic":false}] run tellraw @a[tag=p5] ["",{"selector":"@p[tag=p5]"}," You dont have enough spell points to equip this spell."]
execute if score Spell_Points_P1 Spell_Points < healingTotemSp spellStats run execute if items entity @p[tag=p5,tag=healingtotemO] container.* minecraft:totem_of_undying[minecraft:custom_name={"text":"Healing Totem","bold":true,"color":"gold","italic":false}] run clear @a[tag=p5]
execute if score Spell_Points_P1 Spell_Points >= healingTotemSp spellStats run execute if items entity @p[tag=p5,tag=healingtotemO] container.* minecraft:totem_of_undying[minecraft:custom_name={"text":"Healing Totem","bold":true,"color":"gold","italic":false}] run scoreboard players operation Spell_Points_P1 Spell_Points -= healingTotemSp spellStats
execute if score Spell_Points_P1 Spell_Points >= healingTotemSp spellStats run execute if items entity @p[tag=p5,tag=healingtotemO] container.* minecraft:totem_of_undying[minecraft:custom_name={"text":"Healing Totem","bold":true,"color":"gold","italic":false}] run effect clear @a[tag=p5] water_breathing


execute if items entity @p[tag=p5,tag=!healingtotemO] container.* minecraft:totem_of_undying[minecraft:custom_name={"text":"Healing Totem","bold":true,"color":"gold","italic":false}] run tellraw @a[tag=p5] ["Sorry, you don't own this spell."]
execute if items entity @p[tag=p5,tag=!healingtotemO] container.* minecraft:totem_of_undying[minecraft:custom_name={"text":"Healing Totem","bold":true,"color":"gold","italic":false}] run clear @a[tag=p5]


execute if score spellpick1 drafts > Spell_Points_P1 Spell_Points run clear @a[tag=p5]

execute if score Spell_Points_P1 Spell_Points matches 0 run execute if score Spell_Points_P2 Spell_Points matches 0 run function ch:game2start