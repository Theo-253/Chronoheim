scoreboard players operation spellpick4 drafts = Spell_Points_P4 Spell_Points

#Fireball Select P3
execute if score Spell_Points_P4 Spell_Points >= fireballSp spellStats run execute if items entity @p[tag=p4] container.* fire_charge[minecraft:custom_name={"text":"Fireball","bold":true,"color":"gray","italic":false}] run tag @p[tag=p4] add fireball
execute if score Spell_Points_P4 Spell_Points >= fireballSp spellStats run execute if items entity @p[tag=p4] container.* fire_charge[minecraft:custom_name={"text":"Fireball","bold":true,"color":"gray","italic":false}] run tellraw @a[tag=p4] ["",{"selector":"@p[tag=p4]"}," picked Fireball."]
execute if score Spell_Points_P4 Spell_Points < fireballSp spellStats run execute if items entity @p[tag=p4] container.* fire_charge[minecraft:custom_name={"text":"Fireball","bold":true,"color":"gray","italic":false}] run tellraw @a[tag=p4] ["",{"selector":"@p[tag=p4]"}," You dont have enough spell points to equip this spell."]
execute if score Spell_Points_P4 Spell_Points < fireballSp spellStats run execute if items entity @p[tag=p4] container.* fire_charge[minecraft:custom_name={"text":"Fireball","bold":true,"color":"gray","italic":false}] run clear @a[tag=p4]
execute if score Spell_Points_P4 Spell_Points >= fireballSp spellStats run execute if items entity @p[tag=p4] container.* fire_charge[minecraft:custom_name={"text":"Fireball","bold":true,"color":"gray","italic":false}] run scoreboard players operation Spell_Points_P4 Spell_Points -= fireballSp spellStats
execute if score Spell_Points_P4 Spell_Points >= fireballSp spellStats run execute if items entity @p[tag=p4] container.* fire_charge[minecraft:custom_name={"text":"Fireball","bold":true,"color":"gray","italic":false}] run effect clear @a[tag=p4] water_breathing


#Heal Select P3
execute if score Spell_Points_P4 Spell_Points >= healSp spellStats run execute if items entity @p[tag=p4] container.* emerald[minecraft:custom_name={"text":"Heal","bold":true,"color":"gray","italic":false}] run tag @p[tag=p4] add heal
execute if score Spell_Points_P4 Spell_Points >= healSp spellStats run execute if items entity @p[tag=p4] container.* emerald[minecraft:custom_name={"text":"Heal","bold":true,"color":"gray","italic":false}] run tellraw @a[tag=p4] ["",{"selector":"@p[tag=p4]"}," picked Heal."]
execute if score Spell_Points_P4 Spell_Points < healSp spellStats run execute if items entity @p[tag=p4] container.* emerald[minecraft:custom_name={"text":"Heal","bold":true,"color":"gray","italic":false}] run tellraw @a[tag=p4] ["",{"selector":"@p[tag=p4]"}," You dont have enough spell points to equip this spell."]
execute if score Spell_Points_P4 Spell_Points < healSp spellStats run execute if items entity @p[tag=p4] container.* emerald[minecraft:custom_name={"text":"Heal","bold":true,"color":"gray","italic":false}] run clear @a[tag=p4]
execute if score Spell_Points_P4 Spell_Points >= healSp spellStats run execute if items entity @p[tag=p4] container.* emerald[minecraft:custom_name={"text":"Heal","bold":true,"color":"gray","italic":false}] run scoreboard players operation Spell_Points_P4 Spell_Points -= healSp spellStats
execute if score Spell_Points_P4 Spell_Points >= healSp spellStats run execute if items entity @p[tag=p4] container.* emerald[minecraft:custom_name={"text":"Heal","bold":true,"color":"gray","italic":false}] run effect clear @a[tag=p4] water_breathing


#Chain Lightning Select P3
execute if score Spell_Points_P4 Spell_Points >= chainLightningSp spellStats run execute if items entity @p[tag=p4] container.* lightning_rod[minecraft:custom_name={"text":"Chain Lightning","bold":true,"color":"gray","italic":false}] run tag @p[tag=p4] add chainlightning
execute if score Spell_Points_P4 Spell_Points >= chainLightningSp spellStats run execute if items entity @p[tag=p4] container.* lightning_rod[minecraft:custom_name={"text":"Chain Lightning","bold":true,"color":"gray","italic":false}] run tellraw @a[tag=p4] ["",{"selector":"@p[tag=p4]"}," picked Chain Lightning."]
execute if score Spell_Points_P4 Spell_Points < chainLightningSp spellStats run execute if items entity @p[tag=p4] container.* lightning_rod[minecraft:custom_name={"text":"Chain Lightning","bold":true,"color":"gray","italic":false}] run tellraw @a[tag=p4] ["",{"selector":"@p[tag=p4]"}," You dont have enough spell points to equip this spell."]
execute if score Spell_Points_P4 Spell_Points < chainLightningSp spellStats run execute if items entity @p[tag=p4] container.* lightning_rod[minecraft:custom_name={"text":"Chain Lightning","bold":true,"color":"gray","italic":false}] run clear @a[tag=p4]
execute if score Spell_Points_P4 Spell_Points >= chainLightningSp spellStats run execute if items entity @p[tag=p4] container.* lightning_rod[minecraft:custom_name={"text":"Chain Lightning","bold":true,"color":"gray","italic":false}] run scoreboard players operation Spell_Points_P4 Spell_Points -= chainLightningSp spellStats
execute if score Spell_Points_P4 Spell_Points >= chainLightningSp spellStats run execute if items entity @p[tag=p4] container.* lightning_rod[minecraft:custom_name={"text":"Chain Lightning","bold":true,"color":"gray","italic":false}] run effect clear @a[tag=p4] water_breathing



#Magic Missile! Magic Missile! I smite thee with Magic Missile! Lightning Select P3
execute if score Spell_Points_P4 Spell_Points >= magicMissileSp spellStats run execute if items entity @p[tag=p4,tag=magicmissileO] container.* spectral_arrow[minecraft:custom_name={"text":"Magic Missile","bold":true,"color":"dark_green","italic":false}] run tag @p[tag=p4] add magicmissile
execute if score Spell_Points_P4 Spell_Points >= magicMissileSp spellStats run execute if items entity @p[tag=p4,tag=magicmissileO] container.* spectral_arrow[minecraft:custom_name={"text":"Magic Missile","bold":true,"color":"dark_green","italic":false}] run tellraw @a[tag=p4] ["",{"selector":"@p[tag=p4]"}," picked Magic Missile."]
execute if score Spell_Points_P4 Spell_Points < magicMissileSp spellStats run execute if items entity @p[tag=p4,tag=magicmissileO] container.* spectral_arrow[minecraft:custom_name={"text":"Magic Missile","bold":true,"color":"dark_green","italic":false}] run tellraw @a[tag=p4] ["",{"selector":"@p[tag=p4]"}," You dont have enough spell points to equip this spell."]
execute if score Spell_Points_P4 Spell_Points < magicMissileSp spellStats run execute if items entity @p[tag=p4,tag=magicmissileO] container.* spectral_arrow[minecraft:custom_name={"text":"Magic Missile","bold":true,"color":"dark_green","italic":false}] run clear @a[tag=p4]
execute if score Spell_Points_P4 Spell_Points >= magicMissileSp spellStats run execute if items entity @p[tag=p4,tag=magicmissileO] container.* spectral_arrow[minecraft:custom_name={"text":"Magic Missile","bold":true,"color":"dark_green","italic":false}] run scoreboard players operation Spell_Points_P4 Spell_Points -= magicMissileSp spellStats
execute if score Spell_Points_P4 Spell_Points >= magicMissileSp spellStats run execute if items entity @p[tag=p4,tag=magicmissileO] container.* spectral_arrow[minecraft:custom_name={"text":"Magic Missile","bold":true,"color":"dark_green","italic":false}] run effect clear @a[tag=p4] water_breathing

execute if items entity @p[tag=p4,tag=!magicmissileO] container.* spectral_arrow[minecraft:custom_name={"text":"Magic Missile","bold":true,"color":"dark_green","italic":false}] run tellraw @a[tag=p4] ["Sorry, you don't own this spell."]
execute if items entity @p[tag=p4,tag=!magicmissileO] container.* spectral_arrow[minecraft:custom_name={"text":"Magic Missile","bold":true,"color":"dark_green","italic":false}] run clear @a[tag=p4]




#Ritual of Blood Select P3
execute if score Spell_Points_P4 Spell_Points >= ritualOfBloodSp spellStats run execute if items entity @p[tag=p4,tag=ritualofbloodO] container.* redstone[minecraft:custom_name={"text":"Ritual of Blood","bold":true,"color":"dark_green","italic":false}] run tag @p[tag=p4] add ritualofblood
execute if score Spell_Points_P4 Spell_Points >= ritualOfBloodSp spellStats run execute if items entity @p[tag=p4,tag=ritualofbloodO] container.* redstone[minecraft:custom_name={"text":"Ritual of Blood","bold":true,"color":"dark_green","italic":false}] run tellraw @a[tag=p4] ["",{"selector":"@p[tag=p4]"}," picked Ritual of Blood."]
execute if score Spell_Points_P4 Spell_Points < ritualOfBloodSp spellStats run execute if items entity @p[tag=p4,tag=ritualofbloodO] container.* redstone[minecraft:custom_name={"text":"Ritual of Blood","bold":true,"color":"dark_green","italic":false}] run tellraw @a[tag=p4] ["",{"selector":"@p[tag=p4]"}," You dont have enough spell points to equip this spell."]
execute if score Spell_Points_P4 Spell_Points < ritualOfBloodSp spellStats run execute if items entity @p[tag=p4,tag=ritualofbloodO] container.* redstone[minecraft:custom_name={"text":"Ritual of Blood","bold":true,"color":"dark_green","italic":false}] run clear @a[tag=p4]
execute if score Spell_Points_P4 Spell_Points >= ritualOfBloodSp spellStats run execute if items entity @p[tag=p4,tag=ritualofbloodO] container.* redstone[minecraft:custom_name={"text":"Ritual of Blood","bold":true,"color":"dark_green","italic":false}] run scoreboard players operation Spell_Points_P4 Spell_Points -= ritualOfBloodSp spellStats
execute if score Spell_Points_P4 Spell_Points >= ritualOfBloodSp spellStats run execute if items entity @p[tag=p4,tag=ritualofbloodO] container.* redstone[minecraft:custom_name={"text":"Ritual of Blood","bold":true,"color":"dark_green","italic":false}] run effect clear @a[tag=p4] water_breathing

execute if items entity @p[tag=p4,tag=!ritualofbloodO] container.* redstone[minecraft:custom_name={"text":"Ritual of Blood","bold":true,"color":"dark_green","italic":false}] run tellraw @a[tag=p4] ["Sorry, you don't own this spell."]
execute if items entity @p[tag=p4,tag=!ritualofbloodO] container.* redstone[minecraft:custom_name={"text":"Ritual of Blood","bold":true,"color":"dark_green","italic":false}] run clear @a[tag=p4]




#Frost Bolt Select P3
execute if score Spell_Points_P4 Spell_Points >= frostboltSp spellStats run execute if items entity @p[tag=p4,tag=frostboltO] container.* breeze_rod[minecraft:custom_name={"text":"Frostbolt","bold":true,"color":"dark_green","italic":false}] run tag @p[tag=p4] add frostbolt
execute if score Spell_Points_P4 Spell_Points >= frostboltSp spellStats run execute if items entity @p[tag=p4,tag=frostboltO] container.* breeze_rod[minecraft:custom_name={"text":"Frostbolt","bold":true,"color":"dark_green","italic":false}] run tellraw @a[tag=p4] ["",{"selector":"@p[tag=p4]"}," picked Frost Bolt."]
execute if score Spell_Points_P4 Spell_Points < frostboltSp spellStats run execute if items entity @p[tag=p4,tag=frostboltO] container.* breeze_rod[minecraft:custom_name={"text":"Frostbolt","bold":true,"color":"dark_green","italic":false}] run tellraw @a[tag=p4] ["",{"selector":"@p[tag=p4]"}," You dont have enough spell points to equip this spell."]
execute if score Spell_Points_P4 Spell_Points < frostboltSp spellStats run execute if items entity @p[tag=p4,tag=frostboltO] container.* breeze_rod[minecraft:custom_name={"text":"Frostbolt","bold":true,"color":"dark_green","italic":false}] run clear @a[tag=p4]
execute if score Spell_Points_P4 Spell_Points >= frostboltSp spellStats run execute if items entity @p[tag=p4,tag=frostboltO] container.* breeze_rod[minecraft:custom_name={"text":"Frostbolt","bold":true,"color":"dark_green","italic":false}] run scoreboard players operation Spell_Points_P4 Spell_Points -= frostboltSp spellStats
execute if score Spell_Points_P4 Spell_Points >= frostboltSp spellStats run execute if items entity @p[tag=p4,tag=frostboltO] container.* breeze_rod[minecraft:custom_name={"text":"Frostbolt","bold":true,"color":"dark_green","italic":false}] run effect clear @a[tag=p4] water_breathing

execute if items entity @p[tag=p4,tag=!frostboltO] container.* breeze_rod[minecraft:custom_name={"text":"Frostbolt","bold":true,"color":"dark_green","italic":false}] run tellraw @a[tag=p4] ["Sorry, you don't own this spell."]
execute if items entity @p[tag=p4,tag=!frostboltO] container.* breeze_rod[minecraft:custom_name={"text":"Frostbolt","bold":true,"color":"dark_green","italic":false}] run clear @a[tag=p4]




#Meteor Select P3
execute if score Spell_Points_P4 Spell_Points >= meteorSp spellStats run execute if items entity @p[tag=p4,tag=meteorO] container.* dead_brain_coral_block[minecraft:custom_name={"text":"Meteor","bold":true,"color":"dark_green","italic":false}] run tag @p[tag=p4] add meteor
execute if score Spell_Points_P4 Spell_Points >= meteorSp spellStats run execute if items entity @p[tag=p4,tag=meteorO] container.* dead_brain_coral_block[minecraft:custom_name={"text":"Meteor","bold":true,"color":"dark_green","italic":false}] run tellraw @a[tag=p4] ["",{"selector":"@p[tag=p4]"}," picked Meteor."]
execute if score Spell_Points_P4 Spell_Points < meteorSp spellStats run execute if items entity @p[tag=p4,tag=meteorO] container.* dead_brain_coral_block[minecraft:custom_name={"text":"Meteor","bold":true,"color":"dark_green","italic":false}] run tellraw @a[tag=p4] ["",{"selector":"@p[tag=p4]"}," You dont have enough spell points to equip this spell."]
execute if score Spell_Points_P4 Spell_Points < meteorSp spellStats run execute if items entity @p[tag=p4,tag=meteorO] container.* dead_brain_coral_block[minecraft:custom_name={"text":"Meteor","bold":true,"color":"dark_green","italic":false}] run clear @a[tag=p4]
execute if score Spell_Points_P4 Spell_Points >= meteorSp spellStats run execute if items entity @p[tag=p4,tag=meteorO] container.* dead_brain_coral_block[minecraft:custom_name={"text":"Meteor","bold":true,"color":"dark_green","italic":false}] run scoreboard players operation Spell_Points_P4 Spell_Points -= meteorSp spellStats
execute if score Spell_Points_P4 Spell_Points >= meteorSp spellStats run execute if items entity @p[tag=p4,tag=meteorO] container.* dead_brain_coral_block[minecraft:custom_name={"text":"Meteor","bold":true,"color":"dark_green","italic":false}] run effect clear @a[tag=p4] water_breathing

execute if items entity @p[tag=p4,tag=!meteorO] container.* dead_brain_coral_block[minecraft:custom_name={"text":"Meteor","bold":true,"color":"dark_green","italic":false}] run tellraw @a[tag=p4] ["Sorry, you don't own this spell."]
execute if items entity @p[tag=p4,tag=!meteorO] container.* dead_brain_coral_block[minecraft:custom_name={"text":"Meteor","bold":true,"color":"dark_green","italic":false}] run clear @a[tag=p4]


#Shield Select P3
execute if score Spell_Points_P4 Spell_Points >= shieldSp spellStats run execute if items entity @p[tag=p4,tag=shieldO] container.* shield[minecraft:custom_name={"text":"Shield","bold":true,"color":"dark_green","italic":false}] run tag @p[tag=p4] add shield
execute if score Spell_Points_P4 Spell_Points >= shieldSp spellStats run execute if items entity @p[tag=p4,tag=shieldO] container.* shield[minecraft:custom_name={"text":"Shield","bold":true,"color":"dark_green","italic":false}] run tellraw @a[tag=p4] ["",{"selector":"@p[tag=p4]"}," picked Shield."]
execute if score Spell_Points_P4 Spell_Points < shieldSp spellStats run execute if items entity @p[tag=p4,tag=shieldO] container.* shield[minecraft:custom_name={"text":"Shield","bold":true,"color":"dark_green","italic":false}] run tellraw @a[tag=p4] ["",{"selector":"@p[tag=p4]"}," You dont have enough spell points to equip this spell."]
execute if score Spell_Points_P4 Spell_Points < shieldSp spellStats run execute if items entity @p[tag=p4,tag=shieldO] container.* shield[minecraft:custom_name={"text":"Shield","bold":true,"color":"dark_green","italic":false}] run clear @a[tag=p4]
execute if score Spell_Points_P4 Spell_Points >= shieldSp spellStats run execute if items entity @p[tag=p4,tag=shieldO] container.* shield[minecraft:custom_name={"text":"Shield","bold":true,"color":"dark_green","italic":false}] run scoreboard players operation Spell_Points_P4 Spell_Points -= shieldSp spellStats
execute if score Spell_Points_P4 Spell_Points >= shieldSp spellStats run execute if items entity @p[tag=p4,tag=shieldO] container.* shield[minecraft:custom_name={"text":"Shield","bold":true,"color":"dark_green","italic":false}] run effect clear @a[tag=p4] water_breathing

execute if items entity @p[tag=p4,tag=!shieldO] container.* shield[minecraft:custom_name={"text":"Shield","bold":true,"color":"dark_green","italic":false}] run tellraw @a[tag=p4] ["Sorry, you don't own this spell."]
execute if items entity @p[tag=p4,tag=!shieldO] container.* shield[minecraft:custom_name={"text":"Shield","bold":true,"color":"dark_green","italic":false}] run clear @a[tag=p4]



#Shock Orb Select P3
execute if score Spell_Points_P4 Spell_Points >= shockOrbSp spellStats run execute if items entity @p[tag=p4,tag=shockorbO] container.* heart_of_the_sea[minecraft:custom_name={"text":"Ball Lightning","bold":true,"color":"dark_green","italic":false}] run tag @p[tag=p4] add shockorb
execute if score Spell_Points_P4 Spell_Points >= shockOrbSp spellStats run execute if items entity @p[tag=p4,tag=shockorbO] container.* heart_of_the_sea[minecraft:custom_name={"text":"Ball Lightning","bold":true,"color":"dark_green","italic":false}] run tellraw @a[tag=p4] ["",{"selector":"@p[tag=p4]"}," picked Ball Lightning."]
execute if score Spell_Points_P4 Spell_Points < shockOrbSp spellStats run execute if items entity @p[tag=p4,tag=shockorbO] container.* heart_of_the_sea[minecraft:custom_name={"text":"Ball Lightning","bold":true,"color":"dark_green","italic":false}] run tellraw @a[tag=p4] ["",{"selector":"@p[tag=p4]"}," You dont have enough spell points to equip this spell."]
execute if score Spell_Points_P4 Spell_Points < shockOrbSp spellStats run execute if items entity @p[tag=p4,tag=shockorbO] container.* heart_of_the_sea[minecraft:custom_name={"text":"Ball Lightning","bold":true,"color":"dark_green","italic":false}] run clear @a[tag=p4]
execute if score Spell_Points_P4 Spell_Points >= shockOrbSp spellStats run execute if items entity @p[tag=p4,tag=shockorbO] container.* heart_of_the_sea[minecraft:custom_name={"text":"Ball Lightning","bold":true,"color":"dark_green","italic":false}] run scoreboard players operation Spell_Points_P4 Spell_Points -= shockOrbSp spellStats
execute if score Spell_Points_P4 Spell_Points >= shockOrbSp spellStats run execute if items entity @p[tag=p4,tag=shockorbO] container.* heart_of_the_sea[minecraft:custom_name={"text":"Ball Lightning","bold":true,"color":"dark_green","italic":false}] run effect clear @a[tag=p4] water_breathing

execute if items entity @p[tag=p4,tag=!shockorbO] container.* heart_of_the_sea[minecraft:custom_name={"text":"Ball Lightning","bold":true,"color":"dark_green","italic":false}] run tellraw @a[tag=p4] ["Sorry, you don't own this spell."]
execute if items entity @p[tag=p4,tag=!shockorbO] container.* heart_of_the_sea[minecraft:custom_name={"text":"Ball Lightning","bold":true,"color":"dark_green","italic":false}] run clear @a[tag=p4]




#Witch Bolt Select P3
execute if score Spell_Points_P4 Spell_Points >= witchBoltSp spellStats run execute if items entity @p[tag=p4,tag=witchboltO] container.* blaze_rod[minecraft:custom_name={"text":"Witch Bolt","bold":true,"color":"dark_green","italic":false}] run tag @p[tag=p4] add witchbolt
execute if score Spell_Points_P4 Spell_Points >= witchBoltSp spellStats run execute if items entity @p[tag=p4,tag=witchboltO] container.* blaze_rod[minecraft:custom_name={"text":"Witch Bolt","bold":true,"color":"dark_green","italic":false}] run tellraw @a[tag=p4] ["",{"selector":"@p[tag=p4]"}," picked Witch Bolt."]
execute if score Spell_Points_P4 Spell_Points < witchBoltSp spellStats run execute if items entity @p[tag=p4,tag=witchboltO] container.* blaze_rod[minecraft:custom_name={"text":"Witch Bolt","bold":true,"color":"dark_green","italic":false}] run tellraw @a[tag=p4] ["",{"selector":"@p[tag=p4]"}," You dont have enough spell points to equip this spell."]
execute if score Spell_Points_P4 Spell_Points < witchBoltSp spellStats run execute if items entity @p[tag=p4,tag=witchboltO] container.* blaze_rod[minecraft:custom_name={"text":"Witch Bolt","bold":true,"color":"dark_green","italic":false}] run clear @a[tag=p4]
execute if score Spell_Points_P4 Spell_Points >= witchBoltSp spellStats run execute if items entity @p[tag=p4,tag=witchboltO] container.* blaze_rod[minecraft:custom_name={"text":"Witch Bolt","bold":true,"color":"dark_green","italic":false}] run scoreboard players operation Spell_Points_P4 Spell_Points -= witchBoltSp spellStats
execute if score Spell_Points_P4 Spell_Points >= witchBoltSP spellStats run execute if items entity @p[tag=p4,tag=witchboltO] container.* blaze_rod[minecraft:custom_name={"text":"Witch Bolt","bold":true,"color":"dark_green","italic":false}] run effect clear @a[tag=p4] water_breathing

execute if items entity @p[tag=p4,tag=!witchboltO] container.* blaze_rod[minecraft:custom_name={"text":"Witch Bolt","bold":true,"color":"dark_green","italic":false}] run tellraw @a[tag=p4] ["Sorry, you don't own this spell."]
execute if items entity @p[tag=p4,tag=!witchboltO] container.* blaze_rod[minecraft:custom_name={"text":"Witch Bolt","bold":true,"color":"dark_green","italic":false}] run clear @a[tag=p4]
#Swiftness Select P3
execute if score Spell_Points_P4 Spell_Points >= swiftnessSp spellStats run execute if items entity @p[tag=p4,tag=swiftnessO] container.* rabbit_foot[minecraft:custom_name={"text":"Swiftness","bold":true,"color":"dark_green","italic":false}] run tag @p[tag=p4] add swiftness
execute if score Spell_Points_P4 Spell_Points >= swiftnessSp spellStats run execute if items entity @p[tag=p4,tag=swiftnessO] container.* rabbit_foot[minecraft:custom_name={"text":"Swiftness","bold":true,"color":"dark_green","italic":false}] run tellraw @a[tag=p4] ["",{"selector":"@p[tag=p4]"}," picked Swiftness."]
execute if score Spell_Points_P4 Spell_Points < swiftnessSp spellStats run execute if items entity @p[tag=p4,tag=swiftnessO] container.* rabbit_foot[minecraft:custom_name={"text":"Swiftness","bold":true,"color":"dark_green","italic":false}] run tellraw @a[tag=p4] ["",{"selector":"@p[tag=p4]"}," You dont have enough spell points to equip this spell."]
execute if score Spell_Points_P4 Spell_Points < swiftnessSp spellStats run execute if items entity @p[tag=p4,tag=swiftnessO] container.* rabbit_foot[minecraft:custom_name={"text":"Swiftness","bold":true,"color":"dark_green","italic":false}] run clear @a[tag=p4]
execute if score Spell_Points_P4 Spell_Points >= swiftnessSp spellStats run execute if items entity @p[tag=p4,tag=swiftnessO] container.* rabbit_foot[minecraft:custom_name={"text":"Swiftness","bold":true,"color":"dark_green","italic":false}] run scoreboard players operation Spell_Points_P4 Spell_Points -= swiftnessSp spellStats
execute if score Spell_Points_P4 Spell_Points >= swiftnessSp spellStats run execute if items entity @p[tag=p4,tag=swiftnessO] container.* rabbit_foot[minecraft:custom_name={"text":"Swiftness","bold":true,"color":"dark_green","italic":false}] run effect clear @a[tag=p4] water_breathing

execute if items entity @p[tag=p4,tag=!swiftnessO] container.* rabbit_foot[minecraft:custom_name={"text":"Swiftness","bold":true,"color":"dark_green","italic":false}] run tellraw @a[tag=p4] ["Sorry, you don't own this spell."]
execute if items entity @p[tag=p4,tag=!swiftnessO] container.* rabbit_foot[minecraft:custom_name={"text":"Swiftness","bold":true,"color":"dark_green","italic":false}] run clear @a[tag=p4]


#Embrittle Select P3
execute if score Spell_Points_P4 Spell_Points >= embrittleSp spellStats run execute if items entity @p[tag=p4,tag=embrittleO] container.* damaged_anvil[minecraft:custom_name={"text":"Embrittle","bold":true,"color":"dark_green","italic":false}] run tag @p[tag=p4] add embrittle
execute if score Spell_Points_P4 Spell_Points >= embrittleSp spellStats run execute if items entity @p[tag=p4,tag=embrittleO] container.* damaged_anvil[minecraft:custom_name={"text":"Embrittle","bold":true,"color":"dark_green","italic":false}] run tellraw @a[tag=p4] ["",{"selector":"@p[tag=p4]"}," picked Embrittle."]
execute if score Spell_Points_P4 Spell_Points < embrittleSp spellStats run execute if items entity @p[tag=p4,tag=embrittleO] container.* damaged_anvil[minecraft:custom_name={"text":"Embrittle","bold":true,"color":"dark_green","italic":false}] run tellraw @a[tag=p4] ["",{"selector":"@p[tag=p4]"}," You dont have enough spell points to equip this spell."]
execute if score Spell_Points_P4 Spell_Points < embrittleSp spellStats run execute if items entity @p[tag=p4,tag=embrittleO] container.* damaged_anvil[minecraft:custom_name={"text":"Embrittle","bold":true,"color":"dark_green","italic":false}] run clear @a[tag=p4]
execute if score Spell_Points_P4 Spell_Points >= embrittleSp spellStats run execute if items entity @p[tag=p4,tag=embrittleO] container.* damaged_anvil[minecraft:custom_name={"text":"Embrittle","bold":true,"color":"dark_green","italic":false}] run scoreboard players operation Spell_Points_P4 Spell_Points -= embrittleSp spellStats
execute if score Spell_Points_P4 Spell_Points >= embrittleSp spellStats run execute if items entity @p[tag=p4,tag=embrittleO] container.* damaged_anvil[minecraft:custom_name={"text":"Embrittle","bold":true,"color":"dark_green","italic":false}] run effect clear @a[tag=p4] water_breathing

execute if items entity @p[tag=p4,tag=!embrittleO] container.* damaged_anvil[minecraft:custom_name={"text":"Embrittle","bold":true,"color":"dark_green","italic":false}] run tellraw @a[tag=p4] ["Sorry, you don't own this spell."]
execute if items entity @p[tag=p4,tag=!embrittleO] container.* damaged_anvil[minecraft:custom_name={"text":"Embrittle","bold":true,"color":"dark_green","italic":false}] run clear @a[tag=p4]


#Embiggen Select P3
execute if score Spell_Points_P4 Spell_Points >= embiggenSp spellStats run execute if items entity @p[tag=p4,tag=embiggenO] container.* pufferfish[minecraft:custom_name={"text":"Embiggen","bold":true,"color":"dark_green","italic":false}] run tag @p[tag=p4] add embiggen
execute if score Spell_Points_P4 Spell_Points >= embiggenSp spellStats run execute if items entity @p[tag=p4,tag=embiggenO] container.* pufferfish[minecraft:custom_name={"text":"Embiggen","bold":true,"color":"dark_green","italic":false}] run tellraw @a[tag=p4] ["",{"selector":"@p[tag=p4]"}," picked Embiggen."]
execute if score Spell_Points_P4 Spell_Points < embiggenSp spellStats run execute if items entity @p[tag=p4,tag=embiggenO] container.* pufferfish[minecraft:custom_name={"text":"Embiggen","bold":true,"color":"dark_green","italic":false}] run tellraw @a[tag=p4] ["",{"selector":"@p[tag=p4]"}," You dont have enough spell points to equip this spell."]
execute if score Spell_Points_P4 Spell_Points < embiggenSp spellStats run execute if items entity @p[tag=p4,tag=embiggenO] container.* pufferfish[minecraft:custom_name={"text":"Embiggen","bold":true,"color":"dark_green","italic":false}] run clear @a[tag=p4]
execute if score Spell_Points_P4 Spell_Points >= embiggenSp spellStats run execute if items entity @p[tag=p4,tag=embiggenO] container.* pufferfish[minecraft:custom_name={"text":"Embiggen","bold":true,"color":"dark_green","italic":false}] run scoreboard players operation Spell_Points_P4 Spell_Points -= embiggenSp spellStats
execute if score Spell_Points_P4 Spell_Points >= embiggenSp spellStats run execute if items entity @p[tag=p4,tag=embiggenO] container.* pufferfish[minecraft:custom_name={"text":"Embiggen","bold":true,"color":"dark_green","italic":false}] run effect clear @a[tag=p4] water_breathing

execute if items entity @p[tag=p4,tag=!embiggenO] container.* pufferfish[minecraft:custom_name={"text":"Embiggen","bold":true,"color":"dark_green","italic":false}] run tellraw @a[tag=p4] ["Sorry, you don't own this spell."]
execute if items entity @p[tag=p4,tag=!embiggenO] container.* pufferfish[minecraft:custom_name={"text":"Embiggen","bold":true,"color":"dark_green","italic":false}] run clear @a[tag=p4]




#Immolate Select P3
execute if score Spell_Points_P4 Spell_Points >= immolateSp spellStats run execute if items entity @p[tag=p4,tag=immolateO] container.* blaze_powder[minecraft:custom_name={"text":"Immolate","bold":true,"color":"blue","italic":false}] run tag @p[tag=p4] add immolate
execute if score Spell_Points_P4 Spell_Points >= immolateSp spellStats run execute if items entity @p[tag=p4,tag=immolateO] container.* blaze_powder[minecraft:custom_name={"text":"Immolate","bold":true,"color":"blue","italic":false}] run tellraw @a[tag=p4] ["",{"selector":"@p[tag=p4]"}," picked Immolate."]
execute if score Spell_Points_P4 Spell_Points < immolateSp spellStats run execute if items entity @p[tag=p4,tag=immolateO] container.* blaze_powder[minecraft:custom_name={"text":"Immolate","bold":true,"color":"blue","italic":false}] run tellraw @a[tag=p4] ["",{"selector":"@p[tag=p4]"}," You dont have enough spell points to equip this spell."]
execute if score Spell_Points_P4 Spell_Points < immolateSp spellStats run execute if items entity @p[tag=p4,tag=immolateO] container.* blaze_powder[minecraft:custom_name={"text":"Immolate","bold":true,"color":"blue","italic":false}] run clear @a[tag=p4]
execute if score Spell_Points_P4 Spell_Points >= immolateSp spellStats run execute if items entity @p[tag=p4,tag=immolateO] container.* blaze_powder[minecraft:custom_name={"text":"Immolate","bold":true,"color":"blue","italic":false}] run scoreboard players operation Spell_Points_P4 Spell_Points -= immolateSp spellStats
execute if score Spell_Points_P4 Spell_Points >= immolateSp spellStats run execute if items entity @p[tag=p4,tag=immolateO] container.* blaze_powder[minecraft:custom_name={"text":"Immolate","bold":true,"color":"blue","italic":false}] run effect clear @a[tag=p4] water_breathing

execute if items entity @p[tag=p4,tag=!immolateO] container.* blaze_powder[minecraft:custom_name={"text":"Immolate","bold":true,"color":"blue","italic":false}] run tellraw @a[tag=p4] ["Sorry, you don't own this spell."]
execute if items entity @p[tag=p4,tag=!immolateO] container.* blaze_powder[minecraft:custom_name={"text":"Immolate","bold":true,"color":"blue","italic":false}] run clear @a[tag=p4]



#Evil Eye Select P3
execute if score Spell_Points_P4 Spell_Points >= evilEyeSp spellStats run execute if items entity @p[tag=p4,tag=evileyeO] container.* spider_eye[minecraft:custom_name={"text":"Evil Eye","bold":true,"color":"blue","italic":false}] run tag @p[tag=p4] add evileye
execute if score Spell_Points_P4 Spell_Points >= evilEyeSp spellStats run execute if items entity @p[tag=p4,tag=evileyeO] container.* spider_eye[minecraft:custom_name={"text":"Evil Eye","bold":true,"color":"blue","italic":false}] run tellraw @a[tag=p4] ["",{"selector":"@p[tag=p4]"}," picked Evil Eye."]
execute if score Spell_Points_P4 Spell_Points < evilEyeSp spellStats run execute if items entity @p[tag=p4,tag=evileyeO] container.* spider_eye[minecraft:custom_name={"text":"Evil Eye","bold":true,"color":"blue","italic":false}] run tellraw @a[tag=p4] ["",{"selector":"@p[tag=p4]"}," You dont have enough spell points to equip this spell."]
execute if score Spell_Points_P4 Spell_Points < evilEyeSp spellStats run execute if items entity @p[tag=p4,tag=evileyeO] container.* spider_eye[minecraft:custom_name={"text":"Evil Eye","bold":true,"color":"blue","italic":false}] run clear @a[tag=p4]
execute if score Spell_Points_P4 Spell_Points >= evilEyeSp spellStats run execute if items entity @p[tag=p4,tag=evileyeO] container.* spider_eye[minecraft:custom_name={"text":"Evil Eye","bold":true,"color":"blue","italic":false}] run scoreboard players operation Spell_Points_P4 Spell_Points -= evilEyeSp spellStats
execute if score Spell_Points_P4 Spell_Points >= evilEyeSp spellStats run execute if items entity @p[tag=p4,tag=evileyeO] container.* spider_eye[minecraft:custom_name={"text":"Evil Eye","bold":true,"color":"blue","italic":false}] run effect clear @a[tag=p4] water_breathing

execute if items entity @p[tag=p4,tag=!evileyeO] container.* spider_eye[minecraft:custom_name={"text":"Evil Eye","bold":true,"color":"blue","italic":false}] run tellraw @a[tag=p4] ["Sorry, you don't own this spell."]
execute if items entity @p[tag=p4,tag=!evileyeO] container.* spider_eye[minecraft:custom_name={"text":"Evil Eye","bold":true,"color":"blue","italic":false}] run clear @a[tag=p4]




#Protector's Rune Select P3
execute if score Spell_Points_P4 Spell_Points >= protectorsRuneSp spellStats run execute if items entity @p[tag=p4,tag=protectorsruneO] container.* chiseled_tuff[minecraft:custom_name={"text":"Protector's Rune","bold":true,"color":"blue","italic":false}] run tag @p[tag=p4] add protectorsrune
execute if score Spell_Points_P4 Spell_Points >= protectorsRuneSp spellStats run execute if items entity @p[tag=p4,tag=protectorsruneO] container.* chiseled_tuff[minecraft:custom_name={"text":"Protector's Rune","bold":true,"color":"blue","italic":false}] run tellraw @a[tag=p4] ["",{"selector":"@p[tag=p4]"}," picked Protector's Rune."]
execute if score Spell_Points_P4 Spell_Points < protectorsRuneSp spellStats run execute if items entity @p[tag=p4,tag=protectorsruneO] container.* chiseled_tuff[minecraft:custom_name={"text":"Protector's Rune","bold":true,"color":"blue","italic":false}] run tellraw @a[tag=p4] ["",{"selector":"@p[tag=p4]"}," You dont have enough spell points to equip this spell."]
execute if score Spell_Points_P4 Spell_Points < protectorsRuneSp spellStats run execute if items entity @p[tag=p4,tag=protectorsruneO] container.* chiseled_tuff[minecraft:custom_name={"text":"Protector's Rune","bold":true,"color":"blue","italic":false}] run clear @a[tag=p4]
execute if score Spell_Points_P4 Spell_Points >= protectorsRuneSp spellStats run execute if items entity @p[tag=p4,tag=protectorsruneO] container.* chiseled_tuff[minecraft:custom_name={"text":"Protector's Rune","bold":true,"color":"blue","italic":false}] run scoreboard players operation Spell_Points_P4 Spell_Points -= protectorsRuneSp spellStats
execute if score Spell_Points_P4 Spell_Points >= protectorsRuneSp spellStats run execute if items entity @p[tag=p4,tag=protectorsruneO] container.* chiseled_tuff[minecraft:custom_name={"text":"Protector's Rune","bold":true,"color":"blue","italic":false}] run effect clear @a[tag=p4] water_breathing

execute if items entity @p[tag=p4,tag=!protectorsruneO] container.* chiseled_tuff[minecraft:custom_name={"text":"Protector's Rune","bold":true,"color":"blue","italic":false}] run tellraw @a[tag=p4] ["Sorry, you don't own this spell."]
execute if items entity @p[tag=p4,tag=!protectorsruneO] container.* chiseled_tuff[minecraft:custom_name={"text":"Protector's Rune","bold":true,"color":"blue","italic":false}] run clear @a[tag=p4]




#Miracle Select P3
execute if score Spell_Points_P4 Spell_Points >= miracleSp spellStats run execute if items entity @p[tag=p4,tag=miracleO] container.* beacon[minecraft:custom_name={"text":"Miracle","bold":true,"color":"blue","italic":false}] run tag @p[tag=p4] add miracle
execute if score Spell_Points_P4 Spell_Points >= miracleSp spellStats run execute if items entity @p[tag=p4,tag=miracleO] container.* beacon[minecraft:custom_name={"text":"Miracle","bold":true,"color":"blue","italic":false}] run tellraw @a[tag=p4] ["",{"selector":"@p[tag=p4]"}," picked Miracle."]
execute if score Spell_Points_P4 Spell_Points < miracleSp spellStats run execute if items entity @p[tag=p4,tag=miracleO] container.* beacon[minecraft:custom_name={"text":"Miracle","bold":true,"color":"blue","italic":false}] run tellraw @a[tag=p4] ["",{"selector":"@p[tag=p4]"}," You dont have enough spell points to equip this spell."]
execute if score Spell_Points_P4 Spell_Points < miracleSp spellStats run execute if items entity @p[tag=p4,tag=miracleO] container.* beacon[minecraft:custom_name={"text":"Miracle","bold":true,"color":"blue","italic":false}] run clear @a[tag=p4]
execute if score Spell_Points_P4 Spell_Points >= miracleSp spellStats run execute if items entity @p[tag=p4,tag=miracleO] container.* beacon[minecraft:custom_name={"text":"Miracle","bold":true,"color":"blue","italic":false}] run scoreboard players operation Spell_Points_P4 Spell_Points -= miracleSp spellStats
execute if score Spell_Points_P4 Spell_Points >= miracleSp spellStats run execute if items entity @p[tag=p4,tag=miracleO] container.* beacon[minecraft:custom_name={"text":"Miracle","bold":true,"color":"blue","italic":false}] run effect clear @a[tag=p4] water_breathing

execute if items entity @p[tag=p4,tag=!miracleO] container.* beacon[minecraft:custom_name={"text":"Miracle","bold":true,"color":"blue","italic":false}] run tellraw @a[tag=p4] ["Sorry, you don't own this spell."]
execute if items entity @p[tag=p4,tag=!miracleO] container.* beacon[minecraft:custom_name={"text":"Miracle","bold":true,"color":"blue","italic":false}] run clear @a[tag=p4]


#Miasma Select P3
execute if score Spell_Points_P4 Spell_Points >= miasmaSp spellStats run execute if items entity @p[tag=p4,tag=miasmaO] container.* sculk_vein[minecraft:custom_name={"text":"Miasma","bold":true,"color":"blue","italic":false}] run tag @p[tag=p4] add miasma
execute if score Spell_Points_P4 Spell_Points >= miasmaSp spellStats run execute if items entity @p[tag=p4,tag=miasmaO] container.* sculk_vein[minecraft:custom_name={"text":"Miasma","bold":true,"color":"blue","italic":false}] run tellraw @a[tag=p4] ["",{"selector":"@p[tag=p4]"}," picked Miasma."]
execute if score Spell_Points_P4 Spell_Points < miasmaSp spellStats run execute if items entity @p[tag=p4,tag=miasmaO] container.* sculk_vein[minecraft:custom_name={"text":"Miasma","bold":true,"color":"blue","italic":false}] run tellraw @a[tag=p4] ["",{"selector":"@p[tag=p4]"}," You dont have enough spell points to equip this spell."]
execute if score Spell_Points_P4 Spell_Points < miasmaSp spellStats run execute if items entity @p[tag=p4,tag=miasmaO] container.* sculk_vein[minecraft:custom_name={"text":"Miasma","bold":true,"color":"blue","italic":false}] run clear @a[tag=p4]
execute if score Spell_Points_P4 Spell_Points >= miasmaSp spellStats run execute if items entity @p[tag=p4,tag=miasmaO] container.* sculk_vein[minecraft:custom_name={"text":"Miasma","bold":true,"color":"blue","italic":false}] run scoreboard players operation Spell_Points_P4 Spell_Points -= miasmaSp spellStats
execute if score Spell_Points_P4 Spell_Points >= miasmaSp spellStats run execute if items entity @p[tag=p4,tag=miasmaO] container.* sculk_vein[minecraft:custom_name={"text":"Miasma","bold":true,"color":"blue","italic":false}] run effect clear @a[tag=p4] water_breathing

execute if items entity @p[tag=p4,tag=!miasmaO] container.* sculk_vein[minecraft:custom_name={"text":"Miasma","bold":true,"color":"blue","italic":false}] run tellraw @a[tag=p4] ["Sorry, you don't own this spell."]
execute if items entity @p[tag=p4,tag=!miasmaO] container.* sculk_vein[minecraft:custom_name={"text":"Miasma","bold":true,"color":"blue","italic":false}] run clear @a[tag=p4]


#Ward Select P3
execute if score Spell_Points_P4 Spell_Points >= wardSp spellStats run execute if items entity @p[tag=p4,tag=wardO] container.* blue_stained_glass[minecraft:custom_name={"text":"Ward","bold":true,"color":"blue","italic":false}] run tag @p[tag=p4] add ward
execute if score Spell_Points_P4 Spell_Points >= wardSp spellStats run execute if items entity @p[tag=p4,tag=wardO] container.* blue_stained_glass[minecraft:custom_name={"text":"Ward","bold":true,"color":"blue","italic":false}] run tellraw @a[tag=p4] ["",{"selector":"@p[tag=p4]"}," picked Ward."]
execute if score Spell_Points_P4 Spell_Points < wardSp spellStats run execute if items entity @p[tag=p4,tag=wardO] container.* blue_stained_glass[minecraft:custom_name={"text":"Ward","bold":true,"color":"blue","italic":false}] run tellraw @a[tag=p4] ["",{"selector":"@p[tag=p4]"}," You dont have enough spell points to equip this spell."]
execute if score Spell_Points_P4 Spell_Points < wardSp spellStats run execute if items entity @p[tag=p4,tag=wardO] container.* blue_stained_glass[minecraft:custom_name={"text":"Ward","bold":true,"color":"blue","italic":false}] run clear @a[tag=p4]
execute if score Spell_Points_P4 Spell_Points >= wardSp spellStats run execute if items entity @p[tag=p4,tag=wardO] container.* blue_stained_glass[minecraft:custom_name={"text":"Ward","bold":true,"color":"blue","italic":false}] run scoreboard players operation Spell_Points_P4 Spell_Points -= wardSp spellStats
execute if score Spell_Points_P4 Spell_Points >= wardSp spellStats run execute if items entity @p[tag=p4,tag=wardO] container.* blue_stained_glass[minecraft:custom_name={"text":"Ward","bold":true,"color":"blue","italic":false}] run effect clear @a[tag=p4] water_breathing

execute if items entity @p[tag=p4,tag=!wardO] container.* blue_stained_glass[minecraft:custom_name={"text":"Ward","bold":true,"color":"blue","italic":false}] run tellraw @a[tag=p4] ["Sorry, you don't own this spell."]
execute if items entity @p[tag=p4,tag=!wardO] container.* blue_stained_glass[minecraft:custom_name={"text":"Ward","bold":true,"color":"blue","italic":false}] run clear @a[tag=p4]

#Blizzard Select P3
execute if score Spell_Points_P4 Spell_Points >= blizzardSp spellStats run execute if items entity @p[tag=p4,tag=blizzardO] container.* blue_ice[minecraft:custom_name={"text":"Blizzard","bold":true,"color":"blue","italic":false}] run tag @p[tag=p4] add blizzard
execute if score Spell_Points_P4 Spell_Points >= blizzardSp spellStats run execute if items entity @p[tag=p4,tag=blizzardO] container.* blue_ice[minecraft:custom_name={"text":"Blizzard","bold":true,"color":"blue","italic":false}] run tellraw @a[tag=p4] ["",{"selector":"@p[tag=p4]"}," picked Blizzard."]
execute if score Spell_Points_P4 Spell_Points < blizzardSp spellStats run execute if items entity @p[tag=p4,tag=blizzardO] container.* blue_ice[minecraft:custom_name={"text":"Blizzard","bold":true,"color":"blue","italic":false}] run tellraw @a[tag=p4] ["",{"selector":"@p[tag=p4]"}," You dont have enough spell points to equip this spell."]
execute if score Spell_Points_P4 Spell_Points < blizzardSp spellStats run execute if items entity @p[tag=p4,tag=blizzardO] container.* blue_ice[minecraft:custom_name={"text":"Blizzard","bold":true,"color":"blue","italic":false}] run clear @a[tag=p4]
execute if score Spell_Points_P4 Spell_Points >= blizzardSp spellStats run execute if items entity @p[tag=p4,tag=blizzardO] container.* blue_ice[minecraft:custom_name={"text":"Blizzard","bold":true,"color":"blue","italic":false}] run scoreboard players operation Spell_Points_P4 Spell_Points -= blizzardSp spellStats
execute if score Spell_Points_P4 Spell_Points >= blizzardSp spellStats run execute if items entity @p[tag=p4,tag=blizzardO] container.* blue_ice[minecraft:custom_name={"text":"Blizzard","bold":true,"color":"blue","italic":false}] run effect clear @a[tag=p4] water_breathing

execute if items entity @p[tag=p4,tag=!blizzardO] container.* blue_ice[minecraft:custom_name={"text":"Blizzard","bold":true,"color":"blue","italic":false}] run tellraw @a[tag=p4] ["Sorry, you don't own this spell."]
execute if items entity @p[tag=p4,tag=!blizzardO] container.* blue_ice[minecraft:custom_name={"text":"Blizzard","bold":true,"color":"blue","italic":false}] run clear @a[tag=p4]

#Plague Select P3
execute if score Spell_Points_P4 Spell_Points >= plagueSp spellStats run execute if items entity @p[tag=p4,tag=plagueO] container.* fermented_spider_eye[minecraft:custom_name={"text":"Plague","bold":true,"color":"dark_purple","italic":false}] run tag @p[tag=p4] add plague
execute if score Spell_Points_P4 Spell_Points >= plagueSp spellStats run execute if items entity @p[tag=p4,tag=plagueO] container.* fermented_spider_eye[minecraft:custom_name={"text":"Plague","bold":true,"color":"dark_purple","italic":false}] run tellraw @a[tag=p4] ["",{"selector":"@p[tag=p4]"}," picked Plague."]
execute if score Spell_Points_P4 Spell_Points < plagueSp spellStats run execute if items entity @p[tag=p4,tag=plagueO] container.* fermented_spider_eye[minecraft:custom_name={"text":"Plague","bold":true,"color":"dark_purple","italic":false}] run tellraw @a[tag=p4] ["",{"selector":"@p[tag=p4]"}," You dont have enough spell points to equip this spell."]
execute if score Spell_Points_P4 Spell_Points < plagueSp spellStats run execute if items entity @p[tag=p4,tag=plagueO] container.* fermented_spider_eye[minecraft:custom_name={"text":"Plague","bold":true,"color":"dark_purple","italic":false}] run clear @a[tag=p4]
execute if score Spell_Points_P4 Spell_Points >= plagueSp spellStats run execute if items entity @p[tag=p4,tag=plagueO] container.* fermented_spider_eye[minecraft:custom_name={"text":"Plague","bold":true,"color":"dark_purple","italic":false}] run scoreboard players operation Spell_Points_P4 Spell_Points -= plagueSp spellStats
execute if score Spell_Points_P4 Spell_Points >= plagueSp spellStats run execute if items entity @p[tag=p4,tag=plagueO] container.* fermented_spider_eye[minecraft:custom_name={"text":"Plague","bold":true,"color":"dark_purple","italic":false}] run effect clear @a[tag=p4] water_breathing

execute if items entity @p[tag=p4,tag=!plagueO] container.* fermented_spider_eye[minecraft:custom_name={"text":"Plague","bold":true,"color":"dark_purple","italic":false}] run tellraw @a[tag=p4] ["Sorry, you don't own this spell."]
execute if items entity @p[tag=p4,tag=!plagueO] container.* fermented_spider_eye[minecraft:custom_name={"text":"Plague","bold":true,"color":"dark_purple","italic":false}] run clear @a[tag=p4]

#Second Wind Select P3
execute if score Spell_Points_P4 Spell_Points >= secondWindSp spellStats run execute if items entity @p[tag=p4,tag=secondwindO] container.* feather[minecraft:custom_name={"text":"Second Wind","bold":true,"color":"dark_purple","italic":false}] run tag @p[tag=p4] add secondwind
execute if score Spell_Points_P4 Spell_Points >= secondWindSp spellStats run execute if items entity @p[tag=p4,tag=secondwindO] container.* feather[minecraft:custom_name={"text":"Second Wind","bold":true,"color":"dark_purple","italic":false}] run tellraw @a[tag=p4] ["",{"selector":"@p[tag=p4]"}," picked Second Wind."]
execute if score Spell_Points_P4 Spell_Points < secondWindSp spellStats run execute if items entity @p[tag=p4,tag=secondwindO] container.* feather[minecraft:custom_name={"text":"Second Wind","bold":true,"color":"dark_purple","italic":false}] run tellraw @a[tag=p4] ["",{"selector":"@p[tag=p4]"}," You dont have enough spell points to equip this spell."]
execute if score Spell_Points_P4 Spell_Points < secondWindSp spellStats run execute if items entity @p[tag=p4,tag=secondwindO] container.* feather[minecraft:custom_name={"text":"Second Wind","bold":true,"color":"dark_purple","italic":false}] run clear @a[tag=p4]
execute if score Spell_Points_P4 Spell_Points >= secondWindSp spellStats run execute if items entity @p[tag=p4,tag=secondwindO] container.* feather[minecraft:custom_name={"text":"Second Wind","bold":true,"color":"dark_purple","italic":false}] run scoreboard players operation Spell_Points_P4 Spell_Points -= secondWindSp spellStats
execute if score Spell_Points_P4 Spell_Points >= secondWindSp spellStats run execute if items entity @p[tag=p4,tag=secondwindO] container.* feather[minecraft:custom_name={"text":"Second Wind","bold":true,"color":"dark_purple","italic":false}] run effect clear @a[tag=p4] water_breathing

execute if items entity @p[tag=p4,tag=!secondwindO] container.* feather[minecraft:custom_name={"text":"Second Wind","bold":true,"color":"dark_purple","italic":false}] run tellraw @a[tag=p4] ["Sorry, you don't own this spell."]
execute if items entity @p[tag=p4,tag=!secondwindO] container.* feather[minecraft:custom_name={"text":"Second Wind","bold":true,"color":"dark_purple","italic":false}] run clear @a[tag=p4]
#Witches Brew Select P3
execute if score Spell_Points_P4 Spell_Points >= witchesBrewSp spellStats run execute if items entity @p[tag=p4,tag=witchesbrewO] container.* minecraft:cauldron[minecraft:custom_name={"text":"Witches Brew","bold":true,"color":"dark_purple","italic":false}] run tag @p[tag=p4] add witchesbrew
execute if score Spell_Points_P4 Spell_Points >= witchesBrewSp spellStats run execute if items entity @p[tag=p4,tag=witchesbrewO] container.* minecraft:cauldron[minecraft:custom_name={"text":"Witches Brew","bold":true,"color":"dark_purple","italic":false}] run tellraw @a[tag=p4] ["",{"selector":"@p[tag=p4]"}," picked Witches Brew."]
execute if score Spell_Points_P4 Spell_Points < witchesBrewSp spellStats run execute if items entity @p[tag=p4,tag=witchesbrewO] container.* minecraft:cauldron[minecraft:custom_name={"text":"Witches Brew","bold":true,"color":"dark_purple","italic":false}] run tellraw @a[tag=p4] ["",{"selector":"@p[tag=p4]"}," You dont have enough spell points to equip this spell."]
execute if score Spell_Points_P4 Spell_Points < witchesBrewSp spellStats run execute if items entity @p[tag=p4,tag=witchesbrewO] container.* minecraft:cauldron[minecraft:custom_name={"text":"Witches Brew","bold":true,"color":"dark_purple","italic":false}] run clear @a[tag=p4]
execute if score Spell_Points_P4 Spell_Points >= witchesBrewSp spellStats run execute if items entity @p[tag=p4,tag=witchesbrewO] container.* minecraft:cauldron[minecraft:custom_name={"text":"Witches Brew","bold":true,"color":"dark_purple","italic":false}] run scoreboard players operation Spell_Points_P4 Spell_Points -= witchesBrewSp spellStats
execute if score Spell_Points_P4 Spell_Points >= witchesBrewSp spellStats run execute if items entity @p[tag=p4,tag=witchesbrewO] container.* minecraft:cauldron[minecraft:custom_name={"text":"Witches Brew","bold":true,"color":"dark_purple","italic":false}] run effect clear @a[tag=p4] water_breathing

execute if items entity @p[tag=p4,tag=!witchesbrewO] container.* minecraft:cauldron[minecraft:custom_name={"text":"Witches Brew","bold":true,"color":"dark_purple","italic":false}] run tellraw @a[tag=p4] ["Sorry, you don't own this spell."]
execute if items entity @p[tag=p4,tag=!witchesbrewO] container.* minecraft:cauldron[minecraft:custom_name={"text":"Witches Brew","bold":true,"color":"dark_purple","italic":false}] run clear @a[tag=p4]



#Font of Wisdom Select P3
execute if score Spell_Points_P4 Spell_Points >= fontOfWisdomSp spellStats run execute if items entity @p[tag=p4,tag=fontofwisdomO] container.* minecraft:enchanted_book[minecraft:custom_name={"text":"Font of Wisdom","bold":true,"color":"dark_purple","italic":false}] run tag @p[tag=p4] add fontofwisdom
execute if score Spell_Points_P4 Spell_Points >= fontOfWisdomSp spellStats run execute if items entity @p[tag=p4,tag=fontofwisdomO] container.* minecraft:enchanted_book[minecraft:custom_name={"text":"Font of Wisdom","bold":true,"color":"dark_purple","italic":false}] run tellraw @a[tag=p4] ["",{"selector":"@p[tag=p4]"}," picked Font of Wisdom."]
execute if score Spell_Points_P4 Spell_Points < fontOfWisdomSp spellStats run execute if items entity @p[tag=p4,tag=fontofwisdomO] container.* minecraft:enchanted_book[minecraft:custom_name={"text":"Font of Wisdom","bold":true,"color":"dark_purple","italic":false}] run tellraw @a[tag=p4] ["",{"selector":"@p[tag=p4]"}," You dont have enough spell points to equip this spell."]
execute if score Spell_Points_P4 Spell_Points < fontOfWisdomSp spellStats run execute if items entity @p[tag=p4,tag=fontofwisdomO] container.* minecraft:enchanted_book[minecraft:custom_name={"text":"Font of Wisdom","bold":true,"color":"dark_purple","italic":false}] run clear @a[tag=p4]
execute if score Spell_Points_P4 Spell_Points >= fontOfWisdomSp spellStats run execute if items entity @p[tag=p4,tag=fontofwisdomO] container.* minecraft:enchanted_book[minecraft:custom_name={"text":"Font of Wisdom","bold":true,"color":"dark_purple","italic":false}] run scoreboard players operation Spell_Points_P4 Spell_Points -= fontOfWisdomSp spellStats
execute if score Spell_Points_P4 Spell_Points >= fontOfWisdomSp spellStats run execute if items entity @p[tag=p4,tag=fontofwisdomO] container.* minecraft:enchanted_book[minecraft:custom_name={"text":"Font of Wisdom","bold":true,"color":"dark_purple","italic":false}] run effect clear @a[tag=p4] water_breathing

execute if items entity @p[tag=p4,tag=!fontofwisdomO] container.* minecraft:enchanted_book[minecraft:custom_name={"text":"Font of Wisdom","bold":true,"color":"dark_purple","italic":false}] run tellraw @a[tag=p4] ["Sorry, you don't own this spell."]
execute if items entity @p[tag=p4,tag=!fontofwisdomO] container.* minecraft:enchanted_book[minecraft:custom_name={"text":"Font of Wisdom","bold":true,"color":"dark_purple","italic":false}] run clear @a[tag=p4]

#Fountain of Youth Select P3
execute if score Spell_Points_P4 Spell_Points >= fountainOfYouthSp spellStats run execute if items entity @p[tag=p4,tag=fountainofyouthO] container.* minecraft:potion[minecraft:custom_name={"text":"Fountain of Youth","bold":true,"color":"dark_purple","italic":false}] run tag @p[tag=p4] add fountainofyouth
execute if score Spell_Points_P4 Spell_Points >= fountainOfYouthSp spellStats run execute if items entity @p[tag=p4,tag=fountainofyouthO] container.* minecraft:potion[minecraft:custom_name={"text":"Fountain of Youth","bold":true,"color":"dark_purple","italic":false}] run tellraw @a[tag=p4] ["",{"selector":"@p[tag=p4]"}," picked Fountain of Youth."]
execute if score Spell_Points_P4 Spell_Points < fountainOfYouthSp spellStats run execute if items entity @p[tag=p4,tag=fountainofyouthO] container.* minecraft:potion[minecraft:custom_name={"text":"Fountain of Youth","bold":true,"color":"dark_purple","italic":false}] run tellraw @a[tag=p4] ["",{"selector":"@p[tag=p4]"}," You dont have enough spell points to equip this spell."]
execute if score Spell_Points_P4 Spell_Points < fountainOfYouthSp spellStats run execute if items entity @p[tag=p4,tag=fountainofyouthO] container.* minecraft:potion[minecraft:custom_name={"text":"Fountain of Youth","bold":true,"color":"dark_purple","italic":false}] run clear @a[tag=p4]
execute if score Spell_Points_P4 Spell_Points >= fountainOfYouthSp spellStats run execute if items entity @p[tag=p4,tag=fountainofyouthO] container.* minecraft:potion[minecraft:custom_name={"text":"Fountain of Youth","bold":true,"color":"dark_purple","italic":false}] run scoreboard players operation Spell_Points_P4 Spell_Points -= fountainOfYouthSp spellStats
execute if score Spell_Points_P4 Spell_Points >= fountainOfYouthSp spellStats run execute if items entity @p[tag=p4,tag=fountainofyouthO] container.* minecraft:potion[minecraft:custom_name={"text":"Fountain of Youth","bold":true,"color":"dark_purple","italic":false}] run effect clear @a[tag=p4] water_breathing

execute if items entity @p[tag=p4,tag=!fountainofyouthO] container.* minecraft:potion[minecraft:custom_name={"text":"Fountain of Youth","bold":true,"color":"dark_purple","italic":false}] run tellraw @a[tag=p4] ["Sorry, you don't own this spell."]
execute if items entity @p[tag=p4,tag=!fountainofyouthO] container.* minecraft:potion[minecraft:custom_name={"text":"Fountain of Youth","bold":true,"color":"dark_purple","italic":false}] run clear @a[tag=p4]


#Dragonforge Select P3
execute if score Spell_Points_P4 Spell_Points >= dragonforgeSp spellStats run execute if items entity @p[tag=p4,tag=dragonforgeO] container.* minecraft:dragon_head[minecraft:custom_name={"text":"Dragonforge","bold":true,"color":"dark_purple","italic":false}] run tag @p[tag=p4] add dragonforge
execute if score Spell_Points_P4 Spell_Points >= dragonforgeSp spellStats run execute if items entity @p[tag=p4,tag=dragonforgeO] container.* minecraft:dragon_head[minecraft:custom_name={"text":"Dragonforge","bold":true,"color":"dark_purple","italic":false}] run tellraw @a[tag=p4] ["",{"selector":"@p[tag=p4]"}," picked Dragonforge."]
execute if score Spell_Points_P4 Spell_Points < dragonforgeSp spellStats run execute if items entity @p[tag=p4,tag=dragonforgeO] container.* minecraft:dragon_head[minecraft:custom_name={"text":"Dragonforge","bold":true,"color":"dark_purple","italic":false}] run tellraw @a[tag=p4] ["",{"selector":"@p[tag=p4]"}," You dont have enough spell points to equip this spell."]
execute if score Spell_Points_P4 Spell_Points < dragonforgeSp spellStats run execute if items entity @p[tag=p4,tag=dragonforgeO] container.* minecraft:dragon_head[minecraft:custom_name={"text":"Dragonforge","bold":true,"color":"dark_purple","italic":false}] run clear @a[tag=p4]
execute if score Spell_Points_P4 Spell_Points >= dragonforgeSp spellStats run execute if items entity @p[tag=p4,tag=dragonforgeO] container.* minecraft:dragon_head[minecraft:custom_name={"text":"Dragonforge","bold":true,"color":"dark_purple","italic":false}] run scoreboard players operation Spell_Points_P4 Spell_Points -= dragonforgeSp spellStats
execute if score Spell_Points_P4 Spell_Points >= dragonforgeSp spellStats run execute if items entity @p[tag=p4,tag=dragonforgeO] container.* minecraft:dragon_head[minecraft:custom_name={"text":"Dragonforge","bold":true,"color":"dark_purple","italic":false}] run effect clear @a[tag=p4] water_breathing

execute if items entity @p[tag=p4,tag=!dragonforgeO] container.* minecraft:dragon_head[minecraft:custom_name={"text":"Dragonforge","bold":true,"color":"dark_purple","italic":false}] run tellraw @a[tag=p4] ["Sorry, you don't own this spell."]
execute if items entity @p[tag=p4,tag=!dragonforgeO] container.* minecraft:dragon_head[minecraft:custom_name={"text":"Dragonforge","bold":true,"color":"dark_purple","italic":false}] run clear @a[tag=p4]

#Overclock Select P3
execute if score Spell_Points_P4 Spell_Points >= overclockSp spellStats run execute if items entity @p[tag=p4,tag=overclockO] container.* minecraft:heavy_core[minecraft:custom_name={"text":"Overclock","bold":true,"color":"dark_purple","italic":false}] run tag @p[tag=p4] add overclock
execute if score Spell_Points_P4 Spell_Points >= overclockSp spellStats run execute if items entity @p[tag=p4,tag=overclockO] container.* minecraft:heavy_core[minecraft:custom_name={"text":"Overclock","bold":true,"color":"dark_purple","italic":false}] run tellraw @a[tag=p4] ["",{"selector":"@p[tag=p4]"}," picked Overclock."]
execute if score Spell_Points_P4 Spell_Points < overclockSp spellStats run execute if items entity @p[tag=p4,tag=overclockO] container.* minecraft:heavy_core[minecraft:custom_name={"text":"Overclock","bold":true,"color":"dark_purple","italic":false}] run tellraw @a[tag=p4] ["",{"selector":"@p[tag=p4]"}," You dont have enough spell points to equip this spell."]
execute if score Spell_Points_P4 Spell_Points < overclockSp spellStats run execute if items entity @p[tag=p4,tag=overclockO] container.* minecraft:heavy_core[minecraft:custom_name={"text":"Overclock","bold":true,"color":"dark_purple","italic":false}] run clear @a[tag=p4]
execute if score Spell_Points_P4 Spell_Points >= overclockSp spellStats run execute if items entity @p[tag=p4,tag=overclockO] container.* minecraft:heavy_core[minecraft:custom_name={"text":"Overclock","bold":true,"color":"dark_purple","italic":false}] run scoreboard players operation Spell_Points_P4 Spell_Points -= overclockSp spellStats
execute if score Spell_Points_P4 Spell_Points >= overclockSp spellStats run execute if items entity @p[tag=p4,tag=overclockO] container.* minecraft:heavy_core[minecraft:custom_name={"text":"Overclock","bold":true,"color":"dark_purple","italic":false}] run effect clear @a[tag=p4] water_breathing

execute if items entity @p[tag=p4,tag=!overclockO] container.* minecraft:heavy_core[minecraft:custom_name={"text":"Overclock","bold":true,"color":"dark_purple","italic":false}] run tellraw @a[tag=p4] ["Sorry, you don't own this spell."]
execute if items entity @p[tag=p4,tag=!overclockO] container.* minecraft:heavy_core[minecraft:custom_name={"text":"Overclock","bold":true,"color":"dark_purple","italic":false}] run clear @a[tag=p4]


#Shifting Shadows Select P3
execute if score Spell_Points_P4 Spell_Points >= shiftingShadowsSp spellStats run execute if items entity @p[tag=p4,tag=shiftingshadowsO] container.* minecraft:echo_shard[minecraft:custom_name={"text":"Shifting Shadows","bold":true,"color":"gold","italic":false}] run tag @p[tag=p4] add shiftingshadows
execute if score Spell_Points_P4 Spell_Points >= shiftingShadowsSp spellStats run execute if items entity @p[tag=p4,tag=shiftingshadowsO] container.* minecraft:echo_shard[minecraft:custom_name={"text":"Shifting Shadows","bold":true,"color":"gold","italic":false}] run tellraw @a[tag=p4] ["",{"selector":"@p[tag=p4]"}," picked Shifting Shadows."]
execute if score Spell_Points_P4 Spell_Points < shiftingShadowsSp spellStats run execute if items entity @p[tag=p4,tag=shiftingshadowsO] container.* minecraft:echo_shard[minecraft:custom_name={"text":"Shifting Shadows","bold":true,"color":"gold","italic":false}] run tellraw @a[tag=p4] ["",{"selector":"@p[tag=p4]"}," You dont have enough spell points to equip this spell."]
execute if score Spell_Points_P4 Spell_Points < shiftingShadowsSp spellStats run execute if items entity @p[tag=p4,tag=shiftingshadowsO] container.* minecraft:echo_shard[minecraft:custom_name={"text":"Shifting Shadows","bold":true,"color":"gold","italic":false}] run clear @a[tag=p4]
execute if score Spell_Points_P4 Spell_Points >= shiftingShadowsSp spellStats run execute if items entity @p[tag=p4,tag=shiftingshadowsO] container.* minecraft:echo_shard[minecraft:custom_name={"text":"Shifting Shadows","bold":true,"color":"gold","italic":false}] run scoreboard players operation Spell_Points_P4 Spell_Points -= shiftingShadowsSp spellStats
execute if score Spell_Points_P4 Spell_Points >= shiftingShadowsSp spellStats run execute if items entity @p[tag=p4,tag=shiftingshadowsO] container.* minecraft:echo_shard[minecraft:custom_name={"text":"Shifting Shadows","bold":true,"color":"gold","italic":false}] run effect clear @a[tag=p4] water_breathing

execute if items entity @p[tag=p4,tag=!shiftingshadowsO] container.* minecraft:echo_shard[minecraft:custom_name={"text":"Shifting Shadows","bold":true,"color":"gold","italic":false}] run tellraw @a[tag=p4] ["Sorry, you don't own this spell."]
execute if items entity @p[tag=p4,tag=!shiftingshadowsO] container.* minecraft:echo_shard[minecraft:custom_name={"text":"Shifting Shadows","bold":true,"color":"gold","italic":false}] run clear @a[tag=p4]


#Chrono Warp Select P3
execute if score Spell_Points_P4 Spell_Points >= chronoWarpSp spellStats run execute if items entity @p[tag=p4,tag=chronowarpO] container.* minecraft:clock[minecraft:custom_name={"text":"Chrono Warp","bold":true,"color":"gold","italic":false}] run tag @p[tag=p4] add chronowarp
execute if score Spell_Points_P4 Spell_Points >= chronoWarpSp spellStats run execute if items entity @p[tag=p4,tag=chronowarpO] container.* minecraft:clock[minecraft:custom_name={"text":"Chrono Warp","bold":true,"color":"gold","italic":false}] run tellraw @a[tag=p4] ["",{"selector":"@p[tag=p4]"}," picked Chrono Warp."]
execute if score Spell_Points_P4 Spell_Points < chronoWarpSp spellStats run execute if items entity @p[tag=p4,tag=chronowarpO] container.* minecraft:clock[minecraft:custom_name={"text":"Chrono Warp","bold":true,"color":"gold","italic":false}] run tellraw @a[tag=p4] ["",{"selector":"@p[tag=p4]"}," You dont have enough spell points to equip this spell."]
execute if score Spell_Points_P4 Spell_Points < chronoWarpSp spellStats run execute if items entity @p[tag=p4,tag=chronowarpO] container.* minecraft:clock[minecraft:custom_name={"text":"Chrono Warp","bold":true,"color":"gold","italic":false}] run clear @a[tag=p4]
execute if score Spell_Points_P4 Spell_Points >= chronoWarpSp spellStats run execute if items entity @p[tag=p4,tag=chronowarpO] container.* minecraft:clock[minecraft:custom_name={"text":"Chrono Warp","bold":true,"color":"gold","italic":false}] run scoreboard players operation Spell_Points_P4 Spell_Points -= chronoWarpSp spellStats
execute if score Spell_Points_P4 Spell_Points >= chronoWarpSp spellStats run execute if items entity @p[tag=p4,tag=chronowarpO] container.* minecraft:clock[minecraft:custom_name={"text":"Chrono Warp","bold":true,"color":"gold","italic":false}] run effect clear @a[tag=p4] water_breathing

execute if items entity @p[tag=p4,tag=!chronowarpO] container.* minecraft:clock[minecraft:custom_name={"text":"Chrono Warp","bold":true,"color":"gold","italic":false}] run tellraw @a[tag=p4] ["Sorry, you don't own this spell."]
execute if items entity @p[tag=p4,tag=!chronowarpO] container.* minecraft:clock[minecraft:custom_name={"text":"Chrono Warp","bold":true,"color":"gold","italic":false}] run clear @a[tag=p4]


#Healing Totem Select P3
execute if score Spell_Points_P4 Spell_Points >= healingTotemSp spellStats run execute if items entity @p[tag=p4,tag=healingtotemO] container.* minecraft:totem_of_undying[minecraft:custom_name={"text":"Healing Totem","bold":true,"color":"gold","italic":false}] run tag @p[tag=p4] add healingtotem
execute if score Spell_Points_P4 Spell_Points >= healingTotemSp spellStats run execute if items entity @p[tag=p4,tag=healingtotemO] container.* minecraft:totem_of_undying[minecraft:custom_name={"text":"Healing Totem","bold":true,"color":"gold","italic":false}] run tellraw @a[tag=p4] ["",{"selector":"@p[tag=p4]"}," picked Healing Totem."]
execute if score Spell_Points_P4 Spell_Points < healingTotemSp spellStats run execute if items entity @p[tag=p4,tag=healingtotemO] container.* minecraft:totem_of_undying[minecraft:custom_name={"text":"Healing Totem","bold":true,"color":"gold","italic":false}] run tellraw @a[tag=p4] ["",{"selector":"@p[tag=p4]"}," You dont have enough spell points to equip this spell."]
execute if score Spell_Points_P4 Spell_Points < healingTotemSp spellStats run execute if items entity @p[tag=p4,tag=healingtotemO] container.* minecraft:totem_of_undying[minecraft:custom_name={"text":"Healing Totem","bold":true,"color":"gold","italic":false}] run clear @a[tag=p4]
execute if score Spell_Points_P4 Spell_Points >= healingTotemSp spellStats run execute if items entity @p[tag=p4,tag=healingtotemO] container.* minecraft:totem_of_undying[minecraft:custom_name={"text":"Healing Totem","bold":true,"color":"gold","italic":false}] run scoreboard players operation Spell_Points_P4 Spell_Points -= healingTotemSp spellStats
execute if score Spell_Points_P4 Spell_Points >= healingTotemSp spellStats run execute if items entity @p[tag=p4,tag=healingtotemO] container.* minecraft:totem_of_undying[minecraft:custom_name={"text":"Healing Totem","bold":true,"color":"gold","italic":false}] run effect clear @a[tag=p4] water_breathing


execute if items entity @p[tag=p4,tag=!healingtotemO] container.* minecraft:totem_of_undying[minecraft:custom_name={"text":"Healing Totem","bold":true,"color":"gold","italic":false}] run tellraw @a[tag=p4] ["Sorry, you don't own this spell."]
execute if items entity @p[tag=p4,tag=!healingtotemO] container.* minecraft:totem_of_undying[minecraft:custom_name={"text":"Healing Totem","bold":true,"color":"gold","italic":false}] run clear @a[tag=p4]

#Life Leech Select P3
execute if score Spell_Points_P4 Spell_Points >= lifeLeechSp spellStats run execute if items entity @p[tag=p4,tag=lifeleechO] container.* minecraft:weeping_vines[minecraft:custom_name={"text":"Life Leech","bold":true,"color":"dark_purple","italic":false}] run tag @p[tag=p4] add lifeleech
execute if score Spell_Points_P4 Spell_Points >= lifeLeechSp spellStats run execute if items entity @p[tag=p4,tag=lifeleechO] container.* minecraft:weeping_vines[minecraft:custom_name={"text":"Life Leech","bold":true,"color":"dark_purple","italic":false}] run tellraw @a[tag=p4] ["",{"selector":"@p[tag=p4]"}," picked Life Leech."]
execute if score Spell_Points_P4 Spell_Points < lifeLeechSp spellStats run execute if items entity @p[tag=p4,tag=lifeleechO] container.* minecraft:weeping_vines[minecraft:custom_name={"text":"Life Leech","bold":true,"color":"dark_purple","italic":false}] run tellraw @a[tag=p4] ["",{"selector":"@p[tag=p4]"}," You dont have enough spell points to equip this spell."]
execute if score Spell_Points_P4 Spell_Points < lifeLeechSp spellStats run execute if items entity @p[tag=p4,tag=lifeleechO] container.* minecraft:weeping_vines[minecraft:custom_name={"text":"Life Leech","bold":true,"color":"dark_purple","italic":false}] run clear @a[tag=p4]
execute if score Spell_Points_P4 Spell_Points >= lifeLeechSp spellStats run execute if items entity @p[tag=p4,tag=lifeleechO] container.* minecraft:weeping_vines[minecraft:custom_name={"text":"Life Leech","bold":true,"color":"dark_purple","italic":false}] run scoreboard players operation Spell_Points_P4 Spell_Points -= lifeLeechSp spellStats
execute if score Spell_Points_P4 Spell_Points >= lifeLeechSp spellStats run execute if items entity @p[tag=p4,tag=lifeleechO] container.* minecraft:weeping_vines[minecraft:custom_name={"text":"Life Leech","bold":true,"color":"dark_purple","italic":false}] run effect clear @a[tag=p4] water_breathing


execute if items entity @p[tag=p4,tag=!lifeleechO] container.* minecraft:weeping_vines[minecraft:custom_name={"text":"Life Leech","bold":true,"color":"dark_purple","italic":false}] run tellraw @a[tag=p4] ["Sorry, you don't own this spell."]
execute if items entity @p[tag=p4,tag=!lifeleechO] container.* minecraft:weeping_vines[minecraft:custom_name={"text":"Life Leech","bold":true,"color":"dark_purple","italic":false}] run clear @a[tag=p4]

#Decimate Select P4
execute if score Spell_Points_P4 Spell_Points >= decimateSp spellStats run execute if items entity @p[tag=p4,tag=decimateO] container.* minecraft:pointed_dripstone[minecraft:custom_name={"text":"Decimate","bold":true,"color":"dark_purple","italic":false}] run tag @p[tag=p4] add decimate
execute if score Spell_Points_P4 Spell_Points >= decimateSp spellStats run execute if items entity @p[tag=p4,tag=decimateO] container.* minecraft:pointed_dripstone[minecraft:custom_name={"text":"Decimate","bold":true,"color":"dark_purple","italic":false}] run tellraw @a[tag=p4] ["",{"selector":"@p[tag=p4]"}," picked Decimate."]
execute if score Spell_Points_P4 Spell_Points < decimateSp spellStats run execute if items entity @p[tag=p4,tag=decimateO] container.* minecraft:pointed_dripstone[minecraft:custom_name={"text":"Decimate","bold":true,"color":"dark_purple","italic":false}] run tellraw @a[tag=p4] ["",{"selector":"@p[tag=p4]"}," You dont have enough spell points to equip this spell."]
execute if score Spell_Points_P4 Spell_Points < decimateSp spellStats run execute if items entity @p[tag=p4,tag=decimateO] container.* minecraft:pointed_dripstone[minecraft:custom_name={"text":"Decimate","bold":true,"color":"dark_purple","italic":false}] run clear @a[tag=p4]
execute if score Spell_Points_P4 Spell_Points >= decimateSp spellStats run execute if items entity @p[tag=p4,tag=decimateO] container.* minecraft:pointed_dripstone[minecraft:custom_name={"text":"Decimate","bold":true,"color":"dark_purple","italic":false}] run scoreboard players operation Spell_Points_P4 Spell_Points -= decimateSp spellStats
execute if score Spell_Points_P4 Spell_Points >= decimateSp spellStats run execute if items entity @p[tag=p4,tag=decimateO] container.* minecraft:pointed_dripstone[minecraft:custom_name={"text":"Decimate","bold":true,"color":"dark_purple","italic":false}] run effect clear @a[tag=p4] water_breathing


execute if items entity @p[tag=p4,tag=!decimateO] container.* minecraft:pointed_dripstone[minecraft:custom_name={"text":"Decimate","bold":true,"color":"dark_purple","italic":false}] run tellraw @a[tag=p4] ["Sorry, you don't own this spell."]
execute if items entity @p[tag=p4,tag=!decimateO] container.* minecraft:pointed_dripstone[minecraft:custom_name={"text":"Decimate","bold":true,"color":"dark_purple","italic":false}] run clear @a[tag=p4]

#Healing Rain Select P4
execute if score Spell_Points_P4 Spell_Points >= healingRainSp spellStats run execute if items entity @p[tag=p4,tag=healingrainO] container.* minecraft:ghast_tear[minecraft:custom_name={"text":"Healing Rain","bold":true,"color":"blue","italic":false}] run tag @p[tag=p4] add healingrain
execute if score Spell_Points_P4 Spell_Points >= healingRainSp spellStats run execute if items entity @p[tag=p4,tag=healingrainO] container.* minecraft:ghast_tear[minecraft:custom_name={"text":"Healing Rain","bold":true,"color":"blue","italic":false}] run tellraw @a[tag=p4] ["",{"selector":"@p[tag=p4]"}," picked Healing Rain."]
execute if score Spell_Points_P4 Spell_Points < healingRainSp spellStats run execute if items entity @p[tag=p4,tag=healingrainO] container.* minecraft:ghast_tear[minecraft:custom_name={"text":"Healing Rain","bold":true,"color":"blue","italic":false}] run tellraw @a[tag=p4] ["",{"selector":"@p[tag=p4]"}," You dont have enough spell points to equip this spell."]
execute if score Spell_Points_P4 Spell_Points < healingRainSp spellStats run execute if items entity @p[tag=p4,tag=healingrainO] container.* minecraft:ghast_tear[minecraft:custom_name={"text":"Healing Rain","bold":true,"color":"blue","italic":false}] run clear @a[tag=p4]
execute if score Spell_Points_P4 Spell_Points >= healingRainSp spellStats run execute if items entity @p[tag=p4,tag=healingrainO] container.* minecraft:ghast_tear[minecraft:custom_name={"text":"Healing Rain","bold":true,"color":"blue","italic":false}] run scoreboard players operation Spell_Points_P4 Spell_Points -= healingRainSp spellStats
execute if score Spell_Points_P4 Spell_Points >= healingRainSp spellStats run execute if items entity @p[tag=p4,tag=healingrainO] container.* minecraft:ghast_tear[minecraft:custom_name={"text":"Healing Rain","bold":true,"color":"blue","italic":false}] run effect clear @a[tag=p4] water_breathing


execute if items entity @p[tag=p4,tag=!healingrainO] container.* minecraft:ghast_tear[minecraft:custom_name={"text":"Healing Rain","bold":true,"color":"blue","italic":false}] run tellraw @a[tag=p4] ["Sorry, you don't own this spell."]
execute if items entity @p[tag=p4,tag=!healingrainO] container.* minecraft:ghast_tear[minecraft:custom_name={"text":"Healing Rain","bold":true,"color":"blue","italic":false}] run clear @a[tag=p4]


#Cannibalize Select P4
execute if score Spell_Points_P4 Spell_Points >= cannibalizeSp spellStats run execute if items entity @p[tag=p4,tag=cannibalizeO] container.* rotten_flesh[minecraft:custom_name={"text":"Cannibalize","bold":true,"color":"dark_green","italic":false}] run tag @p[tag=p4] add cannibalize
execute if score Spell_Points_P4 Spell_Points >= cannibalizeSp spellStats run execute if items entity @p[tag=p4,tag=cannibalizeO] container.* rotten_flesh[minecraft:custom_name={"text":"Cannibalize","bold":true,"color":"dark_green","italic":false}] run tellraw @a[tag=p4] ["",{"selector":"@p[tag=p4]"}," picked Cannibalize."]
execute if score Spell_Points_P4 Spell_Points < cannibalizeSp spellStats run execute if items entity @p[tag=p4,tag=cannibalizeO] container.* rotten_flesh[minecraft:custom_name={"text":"Cannibalize","bold":true,"color":"dark_green","italic":false}] run tellraw @a[tag=p4] ["",{"selector":"@p[tag=p4]"}," You dont have enough spell points to equip this spell."]
execute if score Spell_Points_P4 Spell_Points < cannibalizeSp spellStats run execute if items entity @p[tag=p4,tag=cannibalizeO] container.* rotten_flesh[minecraft:custom_name={"text":"Cannibalize","bold":true,"color":"dark_green","italic":false}] run clear @a[tag=p4]
execute if score Spell_Points_P4 Spell_Points >= cannibalizeSp spellStats run execute if items entity @p[tag=p4,tag=cannibalizeO] container.* rotten_flesh[minecraft:custom_name={"text":"Cannibalize","bold":true,"color":"dark_green","italic":false}] run scoreboard players operation Spell_Points_P4 Spell_Points -= cannibalizeSp spellStats
execute if score Spell_Points_P4 Spell_Points >= cannibalizeSp spellStats run execute if items entity @p[tag=p4,tag=cannibalizeO] container.* rotten_flesh[minecraft:custom_name={"text":"Cannibalize","bold":true,"color":"dark_green","italic":false}] run effect clear @a[tag=p4] water_breathing

execute if items entity @p[tag=p4,tag=!cannibalizeO] container.* rotten_flesh[minecraft:custom_name={"text":"Cannibalize","bold":true,"color":"dark_green","italic":false}] run tellraw @a[tag=p4] ["Sorry, you don't own this spell."]
execute if items entity @p[tag=p4,tag=!cannibalizeO] container.* rotten_flesh[minecraft:custom_name={"text":"Cannibalize","bold":true,"color":"dark_green","italic":false}] run clear @a[tag=p4]

#Slimed! Select P4
execute if score Spell_Points_P4 Spell_Points >= slimedSp spellStats run execute if items entity @p[tag=p4,tag=slimedO] container.* slime_ball[minecraft:custom_name={"text":"Slimed!","bold":true,"color":"dark_green","italic":false}] run tag @p[tag=p4] add slimed
execute if score Spell_Points_P4 Spell_Points >= slimedSp spellStats run execute if items entity @p[tag=p4,tag=slimedO] container.* slime_ball[minecraft:custom_name={"text":"Slimed!","bold":true,"color":"dark_green","italic":false}] run tellraw @a[tag=p4] ["",{"selector":"@p[tag=p4]"}," picked Slimed!"]
execute if score Spell_Points_P4 Spell_Points < slimedSp spellStats run execute if items entity @p[tag=p4,tag=slimedO] container.* slime_ball[minecraft:custom_name={"text":"Slimed!","bold":true,"color":"dark_green","italic":false}] run tellraw @a[tag=p4] ["",{"selector":"@p[tag=p4]"}," You dont have enough spell points to equip this spell."]
execute if score Spell_Points_P4 Spell_Points < slimedSp spellStats run execute if items entity @p[tag=p4,tag=slimedO] container.* slime_ball[minecraft:custom_name={"text":"Slimed!","bold":true,"color":"dark_green","italic":false}] run clear @a[tag=p4]
execute if score Spell_Points_P4 Spell_Points >= slimedSp spellStats run execute if items entity @p[tag=p4,tag=slimedO] container.* slime_ball[minecraft:custom_name={"text":"Slimed!","bold":true,"color":"dark_green","italic":false}] run scoreboard players operation Spell_Points_P4 Spell_Points -= slimedSp spellStats
execute if score Spell_Points_P4 Spell_Points >= slimedSp spellStats run execute if items entity @p[tag=p4,tag=slimedO] container.* slime_ball[minecraft:custom_name={"text":"Slimed!","bold":true,"color":"dark_green","italic":false}] run effect clear @a[tag=p4] water_breathing

execute if items entity @p[tag=p4,tag=!slimedO] container.* slime_ball[minecraft:custom_name={"text":"Slimed!","bold":true,"color":"dark_green","italic":false}] run tellraw @a[tag=p4] ["Sorry, you don't own this spell."]
execute if items entity @p[tag=p4,tag=!slimedO] container.* slime_ball[minecraft:custom_name={"text":"Slimed!","bold":true,"color":"dark_green","italic":false}] run clear @a[tag=p4]

#Vampire Mark Select P4
execute if score Spell_Points_P4 Spell_Points >= vampiremarkSp spellStats run execute if items entity @p[tag=p4,tag=vampiremarkO] container.* red_dye[minecraft:custom_name={"text":"Vampire Mark","bold":true,"color":"dark_green","italic":false}] run tag @p[tag=p4] add vampiremark
execute if score Spell_Points_P4 Spell_Points >= vampiremarkSp spellStats run execute if items entity @p[tag=p4,tag=vampiremarkO] container.* red_dye[minecraft:custom_name={"text":"Vampire Mark","bold":true,"color":"dark_green","italic":false}] run tellraw @a[tag=p4] ["",{"selector":"@p[tag=p4]"}," picked Vampire Mark."]
execute if score Spell_Points_P4 Spell_Points < vampiremarkSp spellStats run execute if items entity @p[tag=p4,tag=vampiremarkO] container.* red_dye[minecraft:custom_name={"text":"Vampire Mark","bold":true,"color":"dark_green","italic":false}] run tellraw @a[tag=p4] ["",{"selector":"@p[tag=p4]"}," You dont have enough spell points to equip this spell."]
execute if score Spell_Points_P4 Spell_Points < vampiremarkSp spellStats run execute if items entity @p[tag=p4,tag=vampiremarkO] container.* red_dye[minecraft:custom_name={"text":"Vampire Mark","bold":true,"color":"dark_green","italic":false}] run clear @a[tag=p4]
execute if score Spell_Points_P4 Spell_Points >= vampiremarkSp spellStats run execute if items entity @p[tag=p4,tag=vampiremarkO] container.* red_dye[minecraft:custom_name={"text":"Vampire Mark","bold":true,"color":"dark_green","italic":false}] run scoreboard players operation Spell_Points_P4 Spell_Points -= vampiremarkSp spellStats
execute if score Spell_Points_P4 Spell_Points >= vampiremarkSp spellStats run execute if items entity @p[tag=p4,tag=vampiremarkO] container.* red_dye[minecraft:custom_name={"text":"Vampire Mark","bold":true,"color":"dark_green","italic":false}] run effect clear @a[tag=p4] water_breathing



execute if items entity @p[tag=p4,tag=!vampiremarkO] container.* red_dye[minecraft:custom_name={"text":"Vampire Mark","bold":true,"color":"dark_green","italic":false}] run tellraw @a[tag=p4] ["Sorry, you don't own this spell."]
execute if items entity @p[tag=p4,tag=!vampiremarkO] container.* red_dye[minecraft:custom_name={"text":"Vampire Mark","bold":true,"color":"dark_green","italic":false}] run clear @a[tag=p4]

#Butchering Select P4
execute if score Spell_Points_P4 Spell_Points >= butcheringSp spellStats run execute if items entity @p[tag=p4,tag=butcheringO] container.* iron_axe[minecraft:custom_name={"text":"Butchering","bold":true,"color":"blue","italic":false}] run tag @p[tag=p4] add butchering
execute if score Spell_Points_P4 Spell_Points >= butcheringSp spellStats run execute if items entity @p[tag=p4,tag=butcheringO] container.* iron_axe[minecraft:custom_name={"text":"Butchering","bold":true,"color":"blue","italic":false}] run tellraw @a[tag=p4] ["",{"selector":"@p[tag=p4]"}," picked Butchering."]
execute if score Spell_Points_P4 Spell_Points < butcheringSp spellStats run execute if items entity @p[tag=p4,tag=butcheringO] container.* iron_axe[minecraft:custom_name={"text":"Butchering","bold":true,"color":"blue","italic":false}] run tellraw @a[tag=p4] ["",{"selector":"@p[tag=p4]"}," You dont have enough spell points to equip this spell."]
execute if score Spell_Points_P4 Spell_Points < butcheringSp spellStats run execute if items entity @p[tag=p4,tag=butcheringO] container.* iron_axe[minecraft:custom_name={"text":"Butchering","bold":true,"color":"blue","italic":false}] run clear @a[tag=p4]
execute if score Spell_Points_P4 Spell_Points >= butcheringSp spellStats run execute if items entity @p[tag=p4,tag=butcheringO] container.* iron_axe[minecraft:custom_name={"text":"Butchering","bold":true,"color":"blue","italic":false}] run scoreboard players operation Spell_Points_P4 Spell_Points -= butcheringSp spellStats
execute if score Spell_Points_P4 Spell_Points >= butcheringSp spellStats run execute if items entity @p[tag=p4,tag=butcheringO] container.* iron_axe[minecraft:custom_name={"text":"Butchering","bold":true,"color":"blue","italic":false}] run effect clear @a[tag=p4] water_breathing

execute if items entity @p[tag=p4,tag=!butcheringO] container.* iron_axe[minecraft:custom_name={"text":"Butchering","bold":true,"color":"blue","italic":false}] run tellraw @a[tag=p4] ["Sorry, you don't own this spell."]
execute if items entity @p[tag=p4,tag=!butcheringO] container.* iron_axe[minecraft:custom_name={"text":"Butchering","bold":true,"color":"blue","italic":false}] run clear @a[tag=p4]

#Will O' Wisp Select P4
execute if score Spell_Points_P4 Spell_Points >= willowispSp spellStats run execute if items entity @p[tag=p4,tag=willowispO] container.* weathered_copper_lantern[minecraft:custom_name={"text":"Will O' Wisp","bold":true,"color":"blue","italic":false}] run tag @p[tag=p4] add willowisp
execute if score Spell_Points_P4 Spell_Points >= willowispSp spellStats run execute if items entity @p[tag=p4,tag=willowispO] container.* weathered_copper_lantern[minecraft:custom_name={"text":"Will O' Wisp","bold":true,"color":"blue","italic":false}] run tellraw @a[tag=p4] ["",{"selector":"@p[tag=p4]"}," picked Will O' Wisp."]
execute if score Spell_Points_P4 Spell_Points < willowispSp spellStats run execute if items entity @p[tag=p4,tag=willowispO] container.* weathered_copper_lantern[minecraft:custom_name={"text":"Will O' Wisp","bold":true,"color":"blue","italic":false}] run tellraw @a[tag=p4] ["",{"selector":"@p[tag=p4]"}," You dont have enough spell points to equip this spell."]
execute if score Spell_Points_P4 Spell_Points < willowispSp spellStats run execute if items entity @p[tag=p4,tag=willowispO] container.* weathered_copper_lantern[minecraft:custom_name={"text":"Will O' Wisp","bold":true,"color":"blue","italic":false}] run clear @a[tag=p4]
execute if score Spell_Points_P4 Spell_Points >= willowispSp spellStats run execute if items entity @p[tag=p4,tag=willowispO] container.* weathered_copper_lantern[minecraft:custom_name={"text":"Will O' Wisp","bold":true,"color":"blue","italic":false}] run scoreboard players operation Spell_Points_P4 Spell_Points -= willowispSp spellStats
execute if score Spell_Points_P4 Spell_Points >= willowispSp spellStats run execute if items entity @p[tag=p4,tag=willowispO] container.* weathered_copper_lantern[minecraft:custom_name={"text":"Will O' Wisp","bold":true,"color":"blue","italic":false}] run effect clear @a[tag=p4] water_breathing

execute if items entity @p[tag=p4,tag=!willowispO] container.* weathered_copper_lantern[minecraft:custom_name={"text":"Will O' Wisp","bold":true,"color":"blue","italic":false}] run tellraw @a[tag=p4] ["Sorry, you don't own this spell."]
execute if items entity @p[tag=p4,tag=!willowispO] container.* weathered_copper_lantern[minecraft:custom_name={"text":"Will O' Wisp","bold":true,"color":"blue","italic":false}] run clear @a[tag=p4]

#Spider Ward Select P4
execute if score Spell_Points_P4 Spell_Points >= spiderwardSp spellStats run execute if items entity @p[tag=p4,tag=spiderwardO] container.* cobweb[minecraft:custom_name={"text":"Spider Ward","bold":true,"color":"blue","italic":false}] run tag @p[tag=p4] add spiderward
execute if score Spell_Points_P4 Spell_Points >= spiderwardSp spellStats run execute if items entity @p[tag=p4,tag=spiderwardO] container.* cobweb[minecraft:custom_name={"text":"Spider Ward","bold":true,"color":"blue","italic":false}] run tellraw @a[tag=p4] ["",{"selector":"@p[tag=p4]"}," picked Spider Ward."]
execute if score Spell_Points_P4 Spell_Points < spiderwardSp spellStats run execute if items entity @p[tag=p4,tag=spiderwardO] container.* cobweb[minecraft:custom_name={"text":"Spider Ward","bold":true,"color":"blue","italic":false}] run tellraw @a[tag=p4] ["",{"selector":"@p[tag=p4]"}," You dont have enough spell points to equip this spell."]
execute if score Spell_Points_P4 Spell_Points < spiderwardSp spellStats run execute if items entity @p[tag=p4,tag=spiderwardO] container.* cobweb[minecraft:custom_name={"text":"Spider Ward","bold":true,"color":"blue","italic":false}] run clear @a[tag=p4]
execute if score Spell_Points_P4 Spell_Points >= spiderwardSp spellStats run execute if items entity @p[tag=p4,tag=spiderwardO] container.* cobweb[minecraft:custom_name={"text":"Spider Ward","bold":true,"color":"blue","italic":false}] run scoreboard players operation Spell_Points_P4 Spell_Points -= spiderwardSp spellStats
execute if score Spell_Points_P4 Spell_Points >= spiderwardSp spellStats run execute if items entity @p[tag=p4,tag=spiderwardO] container.* cobweb[minecraft:custom_name={"text":"Spider Ward","bold":true,"color":"blue","italic":false}] run effect clear @a[tag=p4] water_breathing

execute if items entity @p[tag=p4,tag=!spiderwardO] container.* cobweb[minecraft:custom_name={"text":"Spider Ward","bold":true,"color":"blue","italic":false}] run tellraw @a[tag=p4] ["Sorry, you don't own this spell."]
execute if items entity @p[tag=p4,tag=!spiderwardO] container.* cobweb[minecraft:custom_name={"text":"Spider Ward","bold":true,"color":"blue","italic":false}] run clear @a[tag=p4]

#Dark Ritual Select P4
execute if score Spell_Points_P4 Spell_Points >= darkritualSp spellStats run execute if items entity @p[tag=p4,tag=darkritualO] container.* red_candle[minecraft:custom_name={"text":"Dark Ritual","bold":true,"color":"dark_purple","italic":false}] run tag @p[tag=p4] add darkritual
execute if score Spell_Points_P4 Spell_Points >= darkritualSp spellStats run execute if items entity @p[tag=p4,tag=darkritualO] container.* red_candle[minecraft:custom_name={"text":"Dark Ritual","bold":true,"color":"dark_purple","italic":false}] run tellraw @a[tag=p4] ["",{"selector":"@p[tag=p4]"}," picked Dark Ritual."]
execute if score Spell_Points_P4 Spell_Points < darkritualSp spellStats run execute if items entity @p[tag=p4,tag=darkritualO] container.* red_candle[minecraft:custom_name={"text":"Dark Ritual","bold":true,"color":"dark_purple","italic":false}] run tellraw @a[tag=p4] ["",{"selector":"@p[tag=p4]"}," You dont have enough spell points to equip this spell."]
execute if score Spell_Points_P4 Spell_Points < darkritualSp spellStats run execute if items entity @p[tag=p4,tag=darkritualO] container.* red_candle[minecraft:custom_name={"text":"Dark Ritual","bold":true,"color":"dark_purple","italic":false}] run clear @a[tag=p4]
execute if score Spell_Points_P4 Spell_Points >= darkritualSp spellStats run execute if items entity @p[tag=p4,tag=darkritualO] container.* red_candle[minecraft:custom_name={"text":"Dark Ritual","bold":true,"color":"dark_purple","italic":false}] run scoreboard players operation Spell_Points_P4 Spell_Points -= darkritualSp spellStats
execute if score Spell_Points_P4 Spell_Points >= darkritualSp spellStats run execute if items entity @p[tag=p4,tag=darkritualO] container.* red_candle[minecraft:custom_name={"text":"Dark Ritual","bold":true,"color":"dark_purple","italic":false}] run effect clear @a[tag=p4] water_breathing

execute if items entity @p[tag=p4,tag=!darkritualO] container.* red_candle[minecraft:custom_name={"text":"Dark Ritual","bold":true,"color":"dark_purple","italic":false}] run tellraw @a[tag=p4] ["Sorry, you don't own this spell."]
execute if items entity @p[tag=p4,tag=!darkritualO] container.* red_candle[minecraft:custom_name={"text":"Dark Ritual","bold":true,"color":"dark_purple","italic":false}] run clear @a[tag=p4]

#Raise Dead Select P4
execute if score Spell_Points_P4 Spell_Points >= raisedeadSp spellStats run execute if items entity @p[tag=p4,tag=raisedeadO] container.* bone[minecraft:custom_name={"text":"Raise Dead","bold":true,"color":"dark_purple","italic":false}] run tag @p[tag=p4] add raisedead
execute if score Spell_Points_P4 Spell_Points >= raisedeadSp spellStats run execute if items entity @p[tag=p4,tag=raisedeadO] container.* bone[minecraft:custom_name={"text":"Raise Dead","bold":true,"color":"dark_purple","italic":false}] run tellraw @a[tag=p4] ["",{"selector":"@p[tag=p4]"}," picked Raise Dead."]
execute if score Spell_Points_P4 Spell_Points < raisedeadSp spellStats run execute if items entity @p[tag=p4,tag=raisedeadO] container.* bone[minecraft:custom_name={"text":"Raise Dead","bold":true,"color":"dark_purple","italic":false}] run tellraw @a[tag=p4] ["",{"selector":"@p[tag=p4]"}," You dont have enough spell points to equip this spell."]
execute if score Spell_Points_P4 Spell_Points < raisedeadSp spellStats run execute if items entity @p[tag=p4,tag=raisedeadO] container.* bone[minecraft:custom_name={"text":"Raise Dead","bold":true,"color":"dark_purple","italic":false}] run clear @a[tag=p4]
execute if score Spell_Points_P4 Spell_Points >= raisedeadSp spellStats run execute if items entity @p[tag=p4,tag=raisedeadO] container.* bone[minecraft:custom_name={"text":"Raise Dead","bold":true,"color":"dark_purple","italic":false}] run scoreboard players operation Spell_Points_P4 Spell_Points -= raisedeadSp spellStats
execute if score Spell_Points_P4 Spell_Points >= raisedeadSp spellStats run execute if items entity @p[tag=p4,tag=raisedeadO] container.* bone[minecraft:custom_name={"text":"Raise Dead","bold":true,"color":"dark_purple","italic":false}] run effect clear @a[tag=p4] water_breathing

execute if items entity @p[tag=p4,tag=!raisedeadO] container.* bone[minecraft:custom_name={"text":"Raise Dead","bold":true,"color":"dark_purple","italic":false}] run tellraw @a[tag=p4] ["Sorry, you don't own this spell."]
execute if items entity @p[tag=p4,tag=!raisedeadO] container.* bone[minecraft:custom_name={"text":"Raise Dead","bold":true,"color":"dark_purple","italic":false}] run clear @a[tag=p4]

#Curse of Bats Select P4
execute if score Spell_Points_P4 Spell_Points >= curseofbatsSp spellStats run execute if items entity @p[tag=p4,tag=curseofbatsO] container.* elytra[minecraft:custom_name={"text":"Curse of Bats","bold":true,"color":"gold","italic":false}] run tag @p[tag=p4] add curseofbats
execute if score Spell_Points_P4 Spell_Points >= curseofbatsSp spellStats run execute if items entity @p[tag=p4,tag=curseofbatsO] container.* elytra[minecraft:custom_name={"text":"Curse of Bats","bold":true,"color":"gold","italic":false}] run tellraw @a[tag=p4] ["",{"selector":"@p[tag=p4]"}," picked Curse of Bats."]
execute if score Spell_Points_P4 Spell_Points < curseofbatsSp spellStats run execute if items entity @p[tag=p4,tag=curseofbatsO] container.* elytra[minecraft:custom_name={"text":"Curse of Bats","bold":true,"color":"gold","italic":false}] run tellraw @a[tag=p4] ["",{"selector":"@p[tag=p4]"}," You dont have enough spell points to equip this spell."]
execute if score Spell_Points_P4 Spell_Points < curseofbatsSp spellStats run execute if items entity @p[tag=p4,tag=curseofbatsO] container.* elytra[minecraft:custom_name={"text":"Curse of Bats","bold":true,"color":"gold","italic":false}] run clear @a[tag=p4]
execute if score Spell_Points_P4 Spell_Points >= curseofbatsSp spellStats run execute if items entity @p[tag=p4,tag=curseofbatsO] container.* elytra[minecraft:custom_name={"text":"Curse of Bats","bold":true,"color":"gold","italic":false}] run scoreboard players operation Spell_Points_P4 Spell_Points -= curseofbatsSp spellStats
execute if score Spell_Points_P4 Spell_Points >= curseofbatsSp spellStats run execute if items entity @p[tag=p4,tag=curseofbatsO] container.* elytra[minecraft:custom_name={"text":"Curse of Bats","bold":true,"color":"gold","italic":false}] run effect clear @a[tag=p4] water_breathing

execute if items entity @p[tag=p4,tag=!curseofbatsO] container.* elytra[minecraft:custom_name={"text":"Curse of Bats","bold":true,"color":"gold","italic":false}] run tellraw @a[tag=p4] ["Sorry, you don't own this spell."]
execute if items entity @p[tag=p4,tag=!curseofbatsO] container.* elytra[minecraft:custom_name={"text":"Curse of Bats","bold":true,"color":"gold","italic":false}] run clear @a[tag=p4]

#Monkey's Paw Select P4
execute if score Spell_Points_P4 Spell_Points >= monkeyspawSp spellStats run execute if items entity @p[tag=p4,tag=monkeyspawO] container.* dried_kelp[minecraft:custom_name={"text":"Monkey's Paw","bold":true,"color":"gold","italic":false}] run tag @p[tag=p4] add monkeyspaw
execute if score Spell_Points_P4 Spell_Points >= monkeyspawSp spellStats run execute if items entity @p[tag=p4,tag=monkeyspawO] container.* dried_kelp[minecraft:custom_name={"text":"Monkey's Paw","bold":true,"color":"gold","italic":false}] run tellraw @a[tag=p4] ["",{"selector":"@p[tag=p4]"}," picked Monkey's Paw."]
execute if score Spell_Points_P4 Spell_Points < monkeyspawSp spellStats run execute if items entity @p[tag=p4,tag=monkeyspawO] container.* dried_kelp[minecraft:custom_name={"text":"Monkey's Paw","bold":true,"color":"gold","italic":false}] run tellraw @a[tag=p4] ["",{"selector":"@p[tag=p4]"}," You dont have enough spell points to equip this spell."]
execute if score Spell_Points_P4 Spell_Points < monkeyspawSp spellStats run execute if items entity @p[tag=p4,tag=monkeyspawO] container.* dried_kelp[minecraft:custom_name={"text":"Monkey's Paw","bold":true,"color":"gold","italic":false}] run clear @a[tag=p4]
execute if score Spell_Points_P4 Spell_Points >= monkeyspawSp spellStats run execute if items entity @p[tag=p4,tag=monkeyspawO] container.* dried_kelp[minecraft:custom_name={"text":"Monkey's Paw","bold":true,"color":"gold","italic":false}] run scoreboard players operation Spell_Points_P4 Spell_Points -= monkeyspawSp spellStats
execute if score Spell_Points_P4 Spell_Points >= monkeyspawSp spellStats run execute if items entity @p[tag=p4,tag=monkeyspawO] container.* dried_kelp[minecraft:custom_name={"text":"Monkey's Paw","bold":true,"color":"gold","italic":false}] run effect clear @a[tag=p4] water_breathing

execute if items entity @p[tag=p4,tag=!monkeyspawO] container.* dried_kelp[minecraft:custom_name={"text":"Monkey's Paw","bold":true,"color":"gold","italic":false}] run tellraw @a[tag=p4] ["Sorry, you don't own this spell."]
execute if items entity @p[tag=p4,tag=!monkeyspawO] container.* dried_kelp[minecraft:custom_name={"text":"Monkey's Paw","bold":true,"color":"gold","italic":false}] run clear @a[tag=p4]

execute if score spellpick4 drafts > Spell_Points_P4 Spell_Points run clear @a[tag=p4]
