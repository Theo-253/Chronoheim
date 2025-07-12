scoreboard players operation spellpick2 drafts = Spell_Points_P2 Spell_Points

#Fireball Select P1
execute if score Spell_Points_P2 Spell_Points >= fireballSp spellStats run execute if items entity @p[tag=p2] container.* fire_charge[minecraft:custom_name={"text":"Fireball","bold":true,"color":"gray","italic":false}] run tag @p[tag=p2] add fireball
execute if score Spell_Points_P2 Spell_Points >= fireballSp spellStats run execute if items entity @p[tag=p2] container.* fire_charge[minecraft:custom_name={"text":"Fireball","bold":true,"color":"gray","italic":false}] run tellraw @a[tag=p2] ["",{"selector":"@p[tag=p2]"}," picked Fireball."]
execute if score Spell_Points_P2 Spell_Points < fireballSp spellStats run execute if items entity @p[tag=p2] container.* fire_charge[minecraft:custom_name={"text":"Fireball","bold":true,"color":"gray","italic":false}] run tellraw @a[tag=p2] ["",{"selector":"@p[tag=p2]"}," You dont have enough spell points to equip this spell."]
execute if score Spell_Points_P2 Spell_Points < fireballSp spellStats run execute if items entity @p[tag=p2] container.* fire_charge[minecraft:custom_name={"text":"Fireball","bold":true,"color":"gray","italic":false}] run clear @a[tag=p2]
execute if score Spell_Points_P2 Spell_Points >= fireballSp spellStats run execute if items entity @p[tag=p2] container.* fire_charge[minecraft:custom_name={"text":"Fireball","bold":true,"color":"gray","italic":false}] run scoreboard players operation Spell_Points_P2 Spell_Points -= fireballSp spellStats
execute if score Spell_Points_P2 Spell_Points >= fireballSp spellStats run execute if items entity @p[tag=p2] container.* fire_charge[minecraft:custom_name={"text":"Fireball","bold":true,"color":"gray","italic":false}] run effect clear @a[tag=p2] water_breathing


#Heal Select P1
execute if score Spell_Points_P2 Spell_Points >= healSp spellStats run execute if items entity @p[tag=p2] container.* emerald[minecraft:custom_name={"text":"Heal","bold":true,"color":"gray","italic":false}] run tag @p[tag=p2] add heal
execute if score Spell_Points_P2 Spell_Points >= healSp spellStats run execute if items entity @p[tag=p2] container.* emerald[minecraft:custom_name={"text":"Heal","bold":true,"color":"gray","italic":false}] run tellraw @a[tag=p2] ["",{"selector":"@p[tag=p2]"}," picked Heal."]
execute if score Spell_Points_P2 Spell_Points < healSp spellStats run execute if items entity @p[tag=p2] container.* emerald[minecraft:custom_name={"text":"Heal","bold":true,"color":"gray","italic":false}] run tellraw @a[tag=p2] ["",{"selector":"@p[tag=p2]"}," You dont have enough spell points to equip this spell."]
execute if score Spell_Points_P2 Spell_Points < healSp spellStats run execute if items entity @p[tag=p2] container.* emerald[minecraft:custom_name={"text":"Heal","bold":true,"color":"gray","italic":false}] run clear @a[tag=p2]
execute if score Spell_Points_P2 Spell_Points >= healSp spellStats run execute if items entity @p[tag=p2] container.* emerald[minecraft:custom_name={"text":"Heal","bold":true,"color":"gray","italic":false}] run scoreboard players operation Spell_Points_P2 Spell_Points -= healSp spellStats
execute if score Spell_Points_P2 Spell_Points >= healSp spellStats run execute if items entity @p[tag=p2] container.* emerald[minecraft:custom_name={"text":"Heal","bold":true,"color":"gray","italic":false}] run effect clear @a[tag=p2] water_breathing


#Chain Lightning Select P1
execute if score Spell_Points_P2 Spell_Points >= chainLightningSp spellStats run execute if items entity @p[tag=p2] container.* lightning_rod[minecraft:custom_name={"text":"Chain Lightning","bold":true,"color":"gray","italic":false}] run tag @p[tag=p2] add chainlightning
execute if score Spell_Points_P2 Spell_Points >= chainLightningSp spellStats run execute if items entity @p[tag=p2] container.* lightning_rod[minecraft:custom_name={"text":"Chain Lightning","bold":true,"color":"gray","italic":false}] run tellraw @a[tag=p2] ["",{"selector":"@p[tag=p2]"}," picked Chain Lightning."]
execute if score Spell_Points_P2 Spell_Points < chainLightningSp spellStats run execute if items entity @p[tag=p2] container.* lightning_rod[minecraft:custom_name={"text":"Chain Lightning","bold":true,"color":"gray","italic":false}] run tellraw @a[tag=p2] ["",{"selector":"@p[tag=p2]"}," You dont have enough spell points to equip this spell."]
execute if score Spell_Points_P2 Spell_Points < chainLightningSp spellStats run execute if items entity @p[tag=p2] container.* lightning_rod[minecraft:custom_name={"text":"Chain Lightning","bold":true,"color":"gray","italic":false}] run clear @a[tag=p2]
execute if score Spell_Points_P2 Spell_Points >= chainLightningSp spellStats run execute if items entity @p[tag=p2] container.* lightning_rod[minecraft:custom_name={"text":"Chain Lightning","bold":true,"color":"gray","italic":false}] run scoreboard players operation Spell_Points_P2 Spell_Points -= chainLightningSp spellStats
execute if score Spell_Points_P2 Spell_Points >= chainLightningSp spellStats run execute if items entity @p[tag=p2] container.* lightning_rod[minecraft:custom_name={"text":"Chain Lightning","bold":true,"color":"gray","italic":false}] run effect clear @a[tag=p2] water_breathing



#Magic Missile Lightning Select P1
execute if score Spell_Points_P2 Spell_Points >= magicMissileSp spellStats run execute if items entity @p[tag=p2,tag=magicmissileO] container.* spectral_arrow[minecraft:custom_name={"text":"Magic Missile","bold":true,"color":"dark_green","italic":false}] run tag @p[tag=p2] add magicmissile
execute if score Spell_Points_P2 Spell_Points >= magicMissileSp spellStats run execute if items entity @p[tag=p2,tag=magicmissileO] container.* spectral_arrow[minecraft:custom_name={"text":"Magic Missile","bold":true,"color":"dark_green","italic":false}] run tellraw @a[tag=p2] ["",{"selector":"@p[tag=p2]"}," picked Magic Missile."]
execute if score Spell_Points_P2 Spell_Points < magicMissileSp spellStats run execute if items entity @p[tag=p2,tag=magicmissileO] container.* spectral_arrow[minecraft:custom_name={"text":"Magic Missile","bold":true,"color":"dark_green","italic":false}] run tellraw @a[tag=p2] ["",{"selector":"@p[tag=p2]"}," You dont have enough spell points to equip this spell."]
execute if score Spell_Points_P2 Spell_Points < magicMissileSp spellStats run execute if items entity @p[tag=p2,tag=magicmissileO] container.* spectral_arrow[minecraft:custom_name={"text":"Magic Missile","bold":true,"color":"dark_green","italic":false}] run clear @a[tag=p2]
execute if score Spell_Points_P2 Spell_Points >= magicMissileSp spellStats run execute if items entity @p[tag=p2,tag=magicmissileO] container.* spectral_arrow[minecraft:custom_name={"text":"Magic Missile","bold":true,"color":"dark_green","italic":false}] run scoreboard players operation Spell_Points_P2 Spell_Points -= magicMissileSp spellStats
execute if score Spell_Points_P2 Spell_Points >= magicMissileSp spellStats run execute if items entity @p[tag=p2,tag=magicmissileO] container.* spectral_arrow[minecraft:custom_name={"text":"Magic Missile","bold":true,"color":"dark_green","italic":false}] run effect clear @a[tag=p2] water_breathing

execute if items entity @p[tag=p2,tag=!magicmissileO] container.* spectral_arrow[minecraft:custom_name={"text":"Magic Missile","bold":true,"color":"dark_green","italic":false}] run tellraw @a[tag=p2] ["Sorry, you don't own this spell."]
execute if items entity @p[tag=p2,tag=!magicmissileO] container.* spectral_arrow[minecraft:custom_name={"text":"Magic Missile","bold":true,"color":"dark_green","italic":false}] run clear @a[tag=p2]




#Ritual of Blood Select P1
execute if score Spell_Points_P2 Spell_Points >= ritualOfBloodSp spellStats run execute if items entity @p[tag=p2,tag=ritualofbloodO] container.* redstone[minecraft:custom_name={"text":"Ritual of Blood","bold":true,"color":"dark_green","italic":false}] run tag @p[tag=p2] add ritualofblood
execute if score Spell_Points_P2 Spell_Points >= ritualOfBloodSp spellStats run execute if items entity @p[tag=p2,tag=ritualofbloodO] container.* redstone[minecraft:custom_name={"text":"Ritual of Blood","bold":true,"color":"dark_green","italic":false}] run tellraw @a[tag=p2] ["",{"selector":"@p[tag=p2]"}," picked Ritual of Blood."]
execute if score Spell_Points_P2 Spell_Points < ritualOfBloodSp spellStats run execute if items entity @p[tag=p2,tag=ritualofbloodO] container.* redstone[minecraft:custom_name={"text":"Ritual of Blood","bold":true,"color":"dark_green","italic":false}] run tellraw @a[tag=p2] ["",{"selector":"@p[tag=p2]"}," You dont have enough spell points to equip this spell."]
execute if score Spell_Points_P2 Spell_Points < ritualOfBloodSp spellStats run execute if items entity @p[tag=p2,tag=ritualofbloodO] container.* redstone[minecraft:custom_name={"text":"Ritual of Blood","bold":true,"color":"dark_green","italic":false}] run clear @a[tag=p2]
execute if score Spell_Points_P2 Spell_Points >= ritualOfBloodSp spellStats run execute if items entity @p[tag=p2,tag=ritualofbloodO] container.* redstone[minecraft:custom_name={"text":"Ritual of Blood","bold":true,"color":"dark_green","italic":false}] run scoreboard players operation Spell_Points_P2 Spell_Points -= ritualOfBloodSp spellStats
execute if score Spell_Points_P2 Spell_Points >= ritualOfBloodSp spellStats run execute if items entity @p[tag=p2,tag=ritualofbloodO] container.* redstone[minecraft:custom_name={"text":"Ritual of Blood","bold":true,"color":"dark_green","italic":false}] run effect clear @a[tag=p2] water_breathing

execute if items entity @p[tag=p2,tag=!ritualofbloodO] container.* redstone[minecraft:custom_name={"text":"Ritual of Blood","bold":true,"color":"dark_green","italic":false}] run tellraw @a[tag=p2] ["Sorry, you don't own this spell."]
execute if items entity @p[tag=p2,tag=!ritualofbloodO] container.* redstone[minecraft:custom_name={"text":"Ritual of Blood","bold":true,"color":"dark_green","italic":false}] run clear @a[tag=p2]




#Frost Bolt Select P1
execute if score Spell_Points_P2 Spell_Points >= frostboltSp spellStats run execute if items entity @p[tag=p2,tag=frostboltO] container.* breeze_rod[minecraft:custom_name={"text":"Frostbolt","bold":true,"color":"dark_green","italic":false}] run tag @p[tag=p2] add frostbolt
execute if score Spell_Points_P2 Spell_Points >= frostboltSp spellStats run execute if items entity @p[tag=p2,tag=frostboltO] container.* breeze_rod[minecraft:custom_name={"text":"Frostbolt","bold":true,"color":"dark_green","italic":false}] run tellraw @a[tag=p2] ["",{"selector":"@p[tag=p2]"}," picked Frost Bolt."]
execute if score Spell_Points_P2 Spell_Points < frostboltSp spellStats run execute if items entity @p[tag=p2,tag=frostboltO] container.* breeze_rod[minecraft:custom_name={"text":"Frostbolt","bold":true,"color":"dark_green","italic":false}] run tellraw @a[tag=p2] ["",{"selector":"@p[tag=p2]"}," You dont have enough spell points to equip this spell."]
execute if score Spell_Points_P2 Spell_Points < frostboltSp spellStats run execute if items entity @p[tag=p2,tag=frostboltO] container.* breeze_rod[minecraft:custom_name={"text":"Frostbolt","bold":true,"color":"dark_green","italic":false}] run clear @a[tag=p2]
execute if score Spell_Points_P2 Spell_Points >= frostboltSp spellStats run execute if items entity @p[tag=p2,tag=frostboltO] container.* breeze_rod[minecraft:custom_name={"text":"Frostbolt","bold":true,"color":"dark_green","italic":false}] run scoreboard players operation Spell_Points_P2 Spell_Points -= frostboltSp spellStats
execute if score Spell_Points_P2 Spell_Points >= frostboltSp spellStats run execute if items entity @p[tag=p2,tag=frostboltO] container.* breeze_rod[minecraft:custom_name={"text":"Frostbolt","bold":true,"color":"dark_green","italic":false}] run effect clear @a[tag=p2] water_breathing

execute if items entity @p[tag=p2,tag=!frostboltO] container.* breeze_rod[minecraft:custom_name={"text":"Frostbolt","bold":true,"color":"dark_green","italic":false}] run tellraw @a[tag=p2] ["Sorry, you don't own this spell."]
execute if items entity @p[tag=p2,tag=!frostboltO] container.* breeze_rod[minecraft:custom_name={"text":"Frostbolt","bold":true,"color":"dark_green","italic":false}] run clear @a[tag=p2]




#Meteor Select P1
execute if score Spell_Points_P2 Spell_Points >= meteorSp spellStats run execute if items entity @p[tag=p2,tag=meteorO] container.* dead_brain_coral[minecraft:custom_name={"text":"Meteor","bold":true,"color":"dark_green","italic":false}] run tag @p[tag=p2] add meteor
execute if score Spell_Points_P2 Spell_Points >= meteorSp spellStats run execute if items entity @p[tag=p2,tag=meteorO] container.* dead_brain_coral[minecraft:custom_name={"text":"Meteor","bold":true,"color":"dark_green","italic":false}] run tellraw @a[tag=p2] ["",{"selector":"@p[tag=p2]"}," picked Meteor."]
execute if score Spell_Points_P2 Spell_Points < meteorSp spellStats run execute if items entity @p[tag=p2,tag=meteorO] container.* dead_brain_coral[minecraft:custom_name={"text":"Meteor","bold":true,"color":"dark_green","italic":false}] run tellraw @a[tag=p2] ["",{"selector":"@p[tag=p2]"}," You dont have enough spell points to equip this spell."]
execute if score Spell_Points_P2 Spell_Points < meteorSp spellStats run execute if items entity @p[tag=p2,tag=meteorO] container.* dead_brain_coral[minecraft:custom_name={"text":"Meteor","bold":true,"color":"dark_green","italic":false}] run clear @a[tag=p2]
execute if score Spell_Points_P2 Spell_Points >= meteorSp spellStats run execute if items entity @p[tag=p2,tag=meteorO] container.* dead_brain_coral[minecraft:custom_name={"text":"Meteor","bold":true,"color":"dark_green","italic":false}] run scoreboard players operation Spell_Points_P2 Spell_Points -= meteorSp spellStats
execute if score Spell_Points_P2 Spell_Points >= meteorSp spellStats run execute if items entity @p[tag=p2,tag=meteorO] container.* dead_brain_coral[minecraft:custom_name={"text":"Meteor","bold":true,"color":"dark_green","italic":false}] run effect clear @a[tag=p2] water_breathing

execute if items entity @p[tag=p2,tag=!meteorO] container.* dead_brain_coral[minecraft:custom_name={"text":"Meteor","bold":true,"color":"dark_green","italic":false}] run tellraw @a[tag=p2] ["Sorry, you don't own this spell."]
execute if items entity @p[tag=p2,tag=!meteorO] container.* dead_brain_coral[minecraft:custom_name={"text":"Meteor","bold":true,"color":"dark_green","italic":false}] run clear @a[tag=p2]


#Shield Select P1
execute if score Spell_Points_P2 Spell_Points >= shieldSp spellStats run execute if items entity @p[tag=p2,tag=shieldO] container.* shield[minecraft:custom_name={"text":"Shield","bold":true,"color":"dark_green","italic":false}] run tag @p[tag=p2] add shield
execute if score Spell_Points_P2 Spell_Points >= shieldSp spellStats run execute if items entity @p[tag=p2,tag=shieldO] container.* shield[minecraft:custom_name={"text":"Shield","bold":true,"color":"dark_green","italic":false}] run tellraw @a[tag=p2] ["",{"selector":"@p[tag=p2]"}," picked Shield."]
execute if score Spell_Points_P2 Spell_Points < shieldSp spellStats run execute if items entity @p[tag=p2,tag=shieldO] container.* shield[minecraft:custom_name={"text":"Shield","bold":true,"color":"dark_green","italic":false}] run tellraw @a[tag=p2] ["",{"selector":"@p[tag=p2]"}," You dont have enough spell points to equip this spell."]
execute if score Spell_Points_P2 Spell_Points < shieldSp spellStats run execute if items entity @p[tag=p2,tag=shieldO] container.* shield[minecraft:custom_name={"text":"Shield","bold":true,"color":"dark_green","italic":false}] run clear @a[tag=p2]
execute if score Spell_Points_P2 Spell_Points >= shieldSp spellStats run execute if items entity @p[tag=p2,tag=shieldO] container.* shield[minecraft:custom_name={"text":"Shield","bold":true,"color":"dark_green","italic":false}] run scoreboard players operation Spell_Points_P2 Spell_Points -= shieldSp spellStats
execute if score Spell_Points_P2 Spell_Points >= shieldSp spellStats run execute if items entity @p[tag=p2,tag=shieldO] container.* shield[minecraft:custom_name={"text":"Shield","bold":true,"color":"dark_green","italic":false}] run effect clear @a[tag=p2] water_breathing

execute if items entity @p[tag=p2,tag=!shieldO] container.* shield[minecraft:custom_name={"text":"Shield","bold":true,"color":"dark_green","italic":false}] run tellraw @a[tag=p2] ["Sorry, you don't own this spell."]
execute if items entity @p[tag=p2,tag=!shieldO] container.* shield[minecraft:custom_name={"text":"Shield","bold":true,"color":"dark_green","italic":false}] run clear @a[tag=p2]



#Shock Orb Select P1
execute if score Spell_Points_P2 Spell_Points >= shockOrbSp spellStats run execute if items entity @p[tag=p2,tag=shockorbO] container.* heart_of_the_sea[minecraft:custom_name={"text":"Ball Lightning","bold":true,"color":"dark_green","italic":false}] run tag @p[tag=p2] add shockorb
execute if score Spell_Points_P2 Spell_Points >= shockOrbSp spellStats run execute if items entity @p[tag=p2,tag=shockorbO] container.* heart_of_the_sea[minecraft:custom_name={"text":"Ball Lightning","bold":true,"color":"dark_green","italic":false}] run tellraw @a[tag=p2] ["",{"selector":"@p[tag=p2]"}," picked Ball Lightning."]
execute if score Spell_Points_P2 Spell_Points < shockOrbSp spellStats run execute if items entity @p[tag=p2,tag=shockorbO] container.* heart_of_the_sea[minecraft:custom_name={"text":"Ball Lightning","bold":true,"color":"dark_green","italic":false}] run tellraw @a[tag=p2] ["",{"selector":"@p[tag=p2]"}," You dont have enough spell points to equip this spell."]
execute if score Spell_Points_P2 Spell_Points < shockOrbSp spellStats run execute if items entity @p[tag=p2,tag=shockorbO] container.* heart_of_the_sea[minecraft:custom_name={"text":"Ball Lightning","bold":true,"color":"dark_green","italic":false}] run clear @a[tag=p2]
execute if score Spell_Points_P2 Spell_Points >= shockOrbSp spellStats run execute if items entity @p[tag=p2,tag=shockorbO] container.* heart_of_the_sea[minecraft:custom_name={"text":"Ball Lightning","bold":true,"color":"dark_green","italic":false}] run scoreboard players operation Spell_Points_P2 Spell_Points -= shockOrbSp spellStats
execute if score Spell_Points_P2 Spell_Points >= shockOrbSp spellStats run execute if items entity @p[tag=p2,tag=shockorbO] container.* heart_of_the_sea[minecraft:custom_name={"text":"Ball Lightning","bold":true,"color":"dark_green","italic":false}] run effect clear @a[tag=p2] water_breathing

execute if items entity @p[tag=p2,tag=!shockorbO] container.* heart_of_the_sea[minecraft:custom_name={"text":"Ball Lightning","bold":true,"color":"dark_green","italic":false}] run tellraw @a[tag=p2] ["Sorry, you don't own this spell."]
execute if items entity @p[tag=p2,tag=!shockorbO] container.* heart_of_the_sea[minecraft:custom_name={"text":"Ball Lightning","bold":true,"color":"dark_green","italic":false}] run clear @a[tag=p2]




#Witch Bolt Select P1
execute if score Spell_Points_P2 Spell_Points >= witchBoltSp spellStats run execute if items entity @p[tag=p2,tag=witchboltO] container.* blaze_rod[minecraft:custom_name={"text":"Witch Bolt","bold":true,"color":"dark_green","italic":false}] run tag @p[tag=p2] add witchbolt
execute if score Spell_Points_P2 Spell_Points >= witchBoltSp spellStats run execute if items entity @p[tag=p2,tag=witchboltO] container.* blaze_rod[minecraft:custom_name={"text":"Witch Bolt","bold":true,"color":"dark_green","italic":false}] run tellraw @a[tag=p2] ["",{"selector":"@p[tag=p2]"}," picked Witch Bolt."]
execute if score Spell_Points_P2 Spell_Points < witchBoltSp spellStats run execute if items entity @p[tag=p2,tag=witchboltO] container.* blaze_rod[minecraft:custom_name={"text":"Witch Bolt","bold":true,"color":"dark_green","italic":false}] run tellraw @a[tag=p2] ["",{"selector":"@p[tag=p2]"}," You dont have enough spell points to equip this spell."]
execute if score Spell_Points_P2 Spell_Points < witchBoltSp spellStats run execute if items entity @p[tag=p2,tag=witchboltO] container.* blaze_rod[minecraft:custom_name={"text":"Witch Bolt","bold":true,"color":"dark_green","italic":false}] run clear @a[tag=p2]
execute if score Spell_Points_P2 Spell_Points >= witchBoltSp spellStats run execute if items entity @p[tag=p2,tag=witchboltO] container.* blaze_rod[minecraft:custom_name={"text":"Witch Bolt","bold":true,"color":"dark_green","italic":false}] run scoreboard players operation Spell_Points_P2 Spell_Points -= witchBoltSp spellStats
execute if score Spell_Points_P2 Spell_Points >= witchBoltSP spellStats run execute if items entity @p[tag=p2,tag=witchboltO] container.* blaze_rod[minecraft:custom_name={"text":"Witch Bolt","bold":true,"color":"dark_green","italic":false}] run effect clear @a[tag=p2] water_breathing

execute if items entity @p[tag=p2,tag=!witchboltO] container.* blaze_rod[minecraft:custom_name={"text":"Witch Bolt","bold":true,"color":"dark_green","italic":false}] run tellraw @a[tag=p2] ["Sorry, you don't own this spell."]
execute if items entity @p[tag=p2,tag=!witchboltO] container.* blaze_rod[minecraft:custom_name={"text":"Witch Bolt","bold":true,"color":"dark_green","italic":false}] run clear @a[tag=p2]
#Swiftness Select P1
execute if score Spell_Points_P2 Spell_Points >= swiftnessSp spellStats run execute if items entity @p[tag=p2,tag=swiftnessO] container.* rabbit_foot[minecraft:custom_name={"text":"Swiftness","bold":true,"color":"dark_green","italic":false}] run tag @p[tag=p2] add swiftness
execute if score Spell_Points_P2 Spell_Points >= swiftnessSp spellStats run execute if items entity @p[tag=p2,tag=swiftnessO] container.* rabbit_foot[minecraft:custom_name={"text":"Swiftness","bold":true,"color":"dark_green","italic":false}] run tellraw @a[tag=p2] ["",{"selector":"@p[tag=p2]"}," picked Swiftness."]
execute if score Spell_Points_P2 Spell_Points < swiftnessSp spellStats run execute if items entity @p[tag=p2,tag=swiftnessO] container.* rabbit_foot[minecraft:custom_name={"text":"Swiftness","bold":true,"color":"dark_green","italic":false}] run tellraw @a[tag=p2] ["",{"selector":"@p[tag=p2]"}," You dont have enough spell points to equip this spell."]
execute if score Spell_Points_P2 Spell_Points < swiftnessSp spellStats run execute if items entity @p[tag=p2,tag=swiftnessO] container.* rabbit_foot[minecraft:custom_name={"text":"Swiftness","bold":true,"color":"dark_green","italic":false}] run clear @a[tag=p2]
execute if score Spell_Points_P2 Spell_Points >= swiftnessSp spellStats run execute if items entity @p[tag=p2,tag=swiftnessO] container.* rabbit_foot[minecraft:custom_name={"text":"Swiftness","bold":true,"color":"dark_green","italic":false}] run scoreboard players operation Spell_Points_P2 Spell_Points -= swiftnessSp spellStats
execute if score Spell_Points_P2 Spell_Points >= swiftnessSp spellStats run execute if items entity @p[tag=p2,tag=swiftnessO] container.* rabbit_foot[minecraft:custom_name={"text":"Swiftness","bold":true,"color":"dark_green","italic":false}] run effect clear @a[tag=p2] water_breathing

execute if items entity @p[tag=p2,tag=!swiftnessO] container.* rabbit_foot[minecraft:custom_name={"text":"Swiftness","bold":true,"color":"dark_green","italic":false}] run tellraw @a[tag=p2] ["Sorry, you don't own this spell."]
execute if items entity @p[tag=p2,tag=!swiftnessO] container.* rabbit_foot[minecraft:custom_name={"text":"Swiftness","bold":true,"color":"dark_green","italic":false}] run clear @a[tag=p2]


#Embrittle Select P1
execute if score Spell_Points_P2 Spell_Points >= embrittleSp spellStats run execute if items entity @p[tag=p2,tag=embrittleO] container.* damaged_anvil[minecraft:custom_name={"text":"Embrittle","bold":true,"color":"dark_green","italic":false}] run tag @p[tag=p2] add embrittle
execute if score Spell_Points_P2 Spell_Points >= embrittleSp spellStats run execute if items entity @p[tag=p2,tag=embrittleO] container.* damaged_anvil[minecraft:custom_name={"text":"Embrittle","bold":true,"color":"dark_green","italic":false}] run tellraw @a[tag=p2] ["",{"selector":"@p[tag=p2]"}," picked Embrittle."]
execute if score Spell_Points_P2 Spell_Points < embrittleSp spellStats run execute if items entity @p[tag=p2,tag=embrittleO] container.* damaged_anvil[minecraft:custom_name={"text":"Embrittle","bold":true,"color":"dark_green","italic":false}] run tellraw @a[tag=p2] ["",{"selector":"@p[tag=p2]"}," You dont have enough spell points to equip this spell."]
execute if score Spell_Points_P2 Spell_Points < embrittleSp spellStats run execute if items entity @p[tag=p2,tag=embrittleO] container.* damaged_anvil[minecraft:custom_name={"text":"Embrittle","bold":true,"color":"dark_green","italic":false}] run clear @a[tag=p2]
execute if score Spell_Points_P2 Spell_Points >= embrittleSp spellStats run execute if items entity @p[tag=p2,tag=embrittleO] container.* damaged_anvil[minecraft:custom_name={"text":"Embrittle","bold":true,"color":"dark_green","italic":false}] run scoreboard players operation Spell_Points_P2 Spell_Points -= embrittleSp spellStats
execute if score Spell_Points_P2 Spell_Points >= embrittleSp spellStats run execute if items entity @p[tag=p2,tag=embrittleO] container.* damaged_anvil[minecraft:custom_name={"text":"Embrittle","bold":true,"color":"dark_green","italic":false}] run effect clear @a[tag=p2] water_breathing

execute if items entity @p[tag=p2,tag=!embrittleO] container.* damaged_anvil[minecraft:custom_name={"text":"Embrittle","bold":true,"color":"dark_green","italic":false}] run tellraw @a[tag=p2] ["Sorry, you don't own this spell."]
execute if items entity @p[tag=p2,tag=!embrittleO] container.* damaged_anvil[minecraft:custom_name={"text":"Embrittle","bold":true,"color":"dark_green","italic":false}] run clear @a[tag=p2]


#Embiggen Select P1
execute if score Spell_Points_P2 Spell_Points >= embiggenSp spellStats run execute if items entity @p[tag=p2,tag=embiggenO] container.* pufferfish[minecraft:custom_name={"text":"Embiggen","bold":true,"color":"dark_green","italic":false}] run tag @p[tag=p2] add embiggen
execute if score Spell_Points_P2 Spell_Points >= embiggenSp spellStats run execute if items entity @p[tag=p2,tag=embiggenO] container.* pufferfish[minecraft:custom_name={"text":"Embiggen","bold":true,"color":"dark_green","italic":false}] run tellraw @a[tag=p2] ["",{"selector":"@p[tag=p2]"}," picked Embiggen."]
execute if score Spell_Points_P2 Spell_Points < embiggenSp spellStats run execute if items entity @p[tag=p2,tag=embiggenO] container.* pufferfish[minecraft:custom_name={"text":"Embiggen","bold":true,"color":"dark_green","italic":false}] run tellraw @a[tag=p2] ["",{"selector":"@p[tag=p2]"}," You dont have enough spell points to equip this spell."]
execute if score Spell_Points_P2 Spell_Points < embiggenSp spellStats run execute if items entity @p[tag=p2,tag=embiggenO] container.* pufferfish[minecraft:custom_name={"text":"Embiggen","bold":true,"color":"dark_green","italic":false}] run clear @a[tag=p2]
execute if score Spell_Points_P2 Spell_Points >= embiggenSp spellStats run execute if items entity @p[tag=p2,tag=embiggenO] container.* pufferfish[minecraft:custom_name={"text":"Embiggen","bold":true,"color":"dark_green","italic":false}] run scoreboard players operation Spell_Points_P2 Spell_Points -= embiggenSp spellStats
execute if score Spell_Points_P2 Spell_Points >= embiggenSp spellStats run execute if items entity @p[tag=p2,tag=embiggenO] container.* pufferfish[minecraft:custom_name={"text":"Embiggen","bold":true,"color":"dark_green","italic":false}] run effect clear @a[tag=p2] water_breathing

execute if items entity @p[tag=p2,tag=!embiggenO] container.* pufferfish[minecraft:custom_name={"text":"Embiggen","bold":true,"color":"dark_green","italic":false}] run tellraw @a[tag=p2] ["Sorry, you don't own this spell."]
execute if items entity @p[tag=p2,tag=!embiggenO] container.* pufferfish[minecraft:custom_name={"text":"Embiggen","bold":true,"color":"dark_green","italic":false}] run clear @a[tag=p2]




#Immolate Select P1
execute if score Spell_Points_P2 Spell_Points >= immolateSp spellStats run execute if items entity @p[tag=p2,tag=immolateO] container.* blaze_powder[minecraft:custom_name={"text":"Immolate","bold":true,"color":"blue","italic":false}] run tag @p[tag=p2] add immolate
execute if score Spell_Points_P2 Spell_Points >= immolateSp spellStats run execute if items entity @p[tag=p2,tag=immolateO] container.* blaze_powder[minecraft:custom_name={"text":"Immolate","bold":true,"color":"blue","italic":false}] run tellraw @a[tag=p2] ["",{"selector":"@p[tag=p2]"}," picked Immolate."]
execute if score Spell_Points_P2 Spell_Points < immolateSp spellStats run execute if items entity @p[tag=p2,tag=immolateO] container.* blaze_powder[minecraft:custom_name={"text":"Immolate","bold":true,"color":"blue","italic":false}] run tellraw @a[tag=p2] ["",{"selector":"@p[tag=p2]"}," You dont have enough spell points to equip this spell."]
execute if score Spell_Points_P2 Spell_Points < immolateSp spellStats run execute if items entity @p[tag=p2,tag=immolateO] container.* blaze_powder[minecraft:custom_name={"text":"Immolate","bold":true,"color":"blue","italic":false}] run clear @a[tag=p2]
execute if score Spell_Points_P2 Spell_Points >= immolateSp spellStats run execute if items entity @p[tag=p2,tag=immolateO] container.* blaze_powder[minecraft:custom_name={"text":"Immolate","bold":true,"color":"blue","italic":false}] run scoreboard players operation Spell_Points_P2 Spell_Points -= immolateSp spellStats
execute if score Spell_Points_P2 Spell_Points >= immolateSp spellStats run execute if items entity @p[tag=p2,tag=immolateO] container.* blaze_powder[minecraft:custom_name={"text":"Immolate","bold":true,"color":"blue","italic":false}] run effect clear @a[tag=p2] water_breathing

execute if items entity @p[tag=p2,tag=!immolateO] container.* blaze_powder[minecraft:custom_name={"text":"Immolate","bold":true,"color":"blue","italic":false}] run tellraw @a[tag=p2] ["Sorry, you don't own this spell."]
execute if items entity @p[tag=p2,tag=!immolateO] container.* blaze_powder[minecraft:custom_name={"text":"Immolate","bold":true,"color":"blue","italic":false}] run clear @a[tag=p2]



#Evil Eye Select P1
execute if score Spell_Points_P2 Spell_Points >= evilEyeSp spellStats run execute if items entity @p[tag=p2,tag=evileyeO] container.* spider_eye[minecraft:custom_name={"text":"Evil Eye","bold":true,"color":"blue","italic":false}] run tag @p[tag=p2] add evileye
execute if score Spell_Points_P2 Spell_Points >= evilEyeSp spellStats run execute if items entity @p[tag=p2,tag=evileyeO] container.* spider_eye[minecraft:custom_name={"text":"Evil Eye","bold":true,"color":"blue","italic":false}] run tellraw @a[tag=p2] ["",{"selector":"@p[tag=p2]"}," picked Evil Eye."]
execute if score Spell_Points_P2 Spell_Points < evilEyeSp spellStats run execute if items entity @p[tag=p2,tag=evileyeO] container.* spider_eye[minecraft:custom_name={"text":"Evil Eye","bold":true,"color":"blue","italic":false}] run tellraw @a[tag=p2] ["",{"selector":"@p[tag=p2]"}," You dont have enough spell points to equip this spell."]
execute if score Spell_Points_P2 Spell_Points < evilEyeSp spellStats run execute if items entity @p[tag=p2,tag=evileyeO] container.* spider_eye[minecraft:custom_name={"text":"Evil Eye","bold":true,"color":"blue","italic":false}] run clear @a[tag=p2]
execute if score Spell_Points_P2 Spell_Points >= evilEyeSp spellStats run execute if items entity @p[tag=p2,tag=evileyeO] container.* spider_eye[minecraft:custom_name={"text":"Evil Eye","bold":true,"color":"blue","italic":false}] run scoreboard players operation Spell_Points_P2 Spell_Points -= evilEyeSp spellStats
execute if score Spell_Points_P2 Spell_Points >= evilEyeSp spellStats run execute if items entity @p[tag=p2,tag=evileyeO] container.* spider_eye[minecraft:custom_name={"text":"Evil Eye","bold":true,"color":"blue","italic":false}] run effect clear @a[tag=p2] water_breathing

execute if items entity @p[tag=p2,tag=!evileyeO] container.* spider_eye[minecraft:custom_name={"text":"Evil Eye","bold":true,"color":"blue","italic":false}] run tellraw @a[tag=p2] ["Sorry, you don't own this spell."]
execute if items entity @p[tag=p2,tag=!evileyeO] container.* spider_eye[minecraft:custom_name={"text":"Evil Eye","bold":true,"color":"blue","italic":false}] run clear @a[tag=p2]




#Protector's Rune Select P1
execute if score Spell_Points_P2 Spell_Points >= protectorsRuneSp spellStats run execute if items entity @p[tag=p2,tag=protectorsruneO] container.* chiseled_tuff[minecraft:custom_name={"text":"Protector's Rune","bold":true,"color":"blue","italic":false}] run tag @p[tag=p2] add protectorsrune
execute if score Spell_Points_P2 Spell_Points >= protectorsRuneSp spellStats run execute if items entity @p[tag=p2,tag=protectorsruneO] container.* chiseled_tuff[minecraft:custom_name={"text":"Protector's Rune","bold":true,"color":"blue","italic":false}] run tellraw @a[tag=p2] ["",{"selector":"@p[tag=p2]"}," picked Protector's Rune."]
execute if score Spell_Points_P2 Spell_Points < protectorsRuneSp spellStats run execute if items entity @p[tag=p2,tag=protectorsruneO] container.* chiseled_tuff[minecraft:custom_name={"text":"Protector's Rune","bold":true,"color":"blue","italic":false}] run tellraw @a[tag=p2] ["",{"selector":"@p[tag=p2]"}," You dont have enough spell points to equip this spell."]
execute if score Spell_Points_P2 Spell_Points < protectorsRuneSp spellStats run execute if items entity @p[tag=p2,tag=protectorsruneO] container.* chiseled_tuff[minecraft:custom_name={"text":"Protector's Rune","bold":true,"color":"blue","italic":false}] run clear @a[tag=p2]
execute if score Spell_Points_P2 Spell_Points >= protectorsRuneSp spellStats run execute if items entity @p[tag=p2,tag=protectorsruneO] container.* chiseled_tuff[minecraft:custom_name={"text":"Protector's Rune","bold":true,"color":"blue","italic":false}] run scoreboard players operation Spell_Points_P2 Spell_Points -= protectorsRuneSp spellStats
execute if score Spell_Points_P2 Spell_Points >= protectorsRuneSp spellStats run execute if items entity @p[tag=p2,tag=protectorsruneO] container.* chiseled_tuff[minecraft:custom_name={"text":"Protector's Rune","bold":true,"color":"blue","italic":false}] run effect clear @a[tag=p2] water_breathing

execute if items entity @p[tag=p2,tag=!protectorsruneO] container.* chiseled_tuff[minecraft:custom_name={"text":"Protector's Rune","bold":true,"color":"blue","italic":false}] run tellraw @a[tag=p2] ["Sorry, you don't own this spell."]
execute if items entity @p[tag=p2,tag=!protectorsruneO] container.* chiseled_tuff[minecraft:custom_name={"text":"Protector's Rune","bold":true,"color":"blue","italic":false}] run clear @a[tag=p2]




#Miracle Select P1
execute if score Spell_Points_P2 Spell_Points >= miracleSp spellStats run execute if items entity @p[tag=p2,tag=miracleO] container.* beacon[minecraft:custom_name={"text":"Miracle","bold":true,"color":"blue","italic":false}] run tag @p[tag=p2] add miracle
execute if score Spell_Points_P2 Spell_Points >= miracleSp spellStats run execute if items entity @p[tag=p2,tag=protectorsruneO] container.* chiseled_tuff[minecraft:custom_name={"text":"Protector's Rune","bold":true,"color":"blue","italic":false}] run tellraw @a[tag=p2] ["",{"selector":"@p[tag=p2]"}," picked Miracle."]
execute if score Spell_Points_P2 Spell_Points < miracleSp spellStats run execute if items entity @p[tag=p2,tag=protectorsruneO] container.* chiseled_tuff[minecraft:custom_name={"text":"Protector's Rune","bold":true,"color":"blue","italic":false}] run tellraw @a[tag=p2] ["",{"selector":"@p[tag=p2]"}," You dont have enough spell points to equip this spell."]
execute if score Spell_Points_P2 Spell_Points < miracleSp spellStats run execute if items entity @p[tag=p2,tag=protectorsruneO] container.* chiseled_tuff[minecraft:custom_name={"text":"Protector's Rune","bold":true,"color":"blue","italic":false}] run clear @a[tag=p2]
execute if score Spell_Points_P2 Spell_Points >= miracleSp spellStats run execute if items entity @p[tag=p2,tag=protectorsruneO] container.* chiseled_tuff[minecraft:custom_name={"text":"Protector's Rune","bold":true,"color":"blue","italic":false}] run scoreboard players operation Spell_Points_P2 Spell_Points -= miracleSp spellStats
execute if score Spell_Points_P2 Spell_Points >= miracleSp spellStats run execute if items entity @p[tag=p2,tag=protectorsruneO] container.* chiseled_tuff[minecraft:custom_name={"text":"Protector's Rune","bold":true,"color":"blue","italic":false}] run effect clear @a[tag=p2] water_breathing

execute if items entity @p[tag=p2,tag=!miracleO] container.* beacon[minecraft:custom_name={"text":"Miracle","bold":true,"color":"blue","italic":false}] run tellraw @a[tag=p2] ["Sorry, you don't own this spell."]
execute if items entity @p[tag=p2,tag=!miracleO] container.* beacon[minecraft:custom_name={"text":"Miracle","bold":true,"color":"blue","italic":false}] run clear @a[tag=p2]


#Miasma Select P1
execute if score Spell_Points_P2 Spell_Points >= miasmaSp spellStats run execute if items entity @p[tag=p2,tag=miasmaO] container.* sculk_vein[minecraft:custom_name={"text":"Miasma","bold":true,"color":"blue","italic":false}] run tag @p[tag=p2] add miasma
execute if score Spell_Points_P2 Spell_Points >= miasmaSp spellStats run execute if items entity @p[tag=p2,tag=miasmaO] container.* sculk_vein[minecraft:custom_name={"text":"Miasma","bold":true,"color":"blue","italic":false}] run tellraw @a[tag=p2] ["",{"selector":"@p[tag=p2]"}," picked Miasma."]
execute if score Spell_Points_P2 Spell_Points < miasmaSp spellStats run execute if items entity @p[tag=p2,tag=miasmaO] container.* sculk_vein[minecraft:custom_name={"text":"Miasma","bold":true,"color":"blue","italic":false}] run tellraw @a[tag=p2] ["",{"selector":"@p[tag=p2]"}," You dont have enough spell points to equip this spell."]
execute if score Spell_Points_P2 Spell_Points < miasmaSp spellStats run execute if items entity @p[tag=p2,tag=miasmaO] container.* sculk_vein[minecraft:custom_name={"text":"Miasma","bold":true,"color":"blue","italic":false}] run clear @a[tag=p2]
execute if score Spell_Points_P2 Spell_Points >= miasmaSp spellStats run execute if items entity @p[tag=p2,tag=miasmaO] container.* sculk_vein[minecraft:custom_name={"text":"Miasma","bold":true,"color":"blue","italic":false}] run scoreboard players operation Spell_Points_P2 Spell_Points -= miasmaSp spellStats
execute if score Spell_Points_P2 Spell_Points >= miasmaSp spellStats run execute if items entity @p[tag=p2,tag=miasmaO] container.* sculk_vein[minecraft:custom_name={"text":"Miasma","bold":true,"color":"blue","italic":false}] run effect clear @a[tag=p2] water_breathing

execute if items entity @p[tag=p2,tag=!miasmaO] container.* sculk_vein[minecraft:custom_name={"text":"Miasma","bold":true,"color":"blue","italic":false}] run tellraw @a[tag=p2] ["Sorry, you don't own this spell."]
execute if items entity @p[tag=p2,tag=!miasmaO] container.* sculk_vein[minecraft:custom_name={"text":"Miasma","bold":true,"color":"blue","italic":false}] run clear @a[tag=p2]


#Ward Select P1
execute if score Spell_Points_P2 Spell_Points >= wardSp spellStats run execute if items entity @p[tag=p2,tag=wardO] container.* blue_stained_glass[minecraft:custom_name={"text":"Ward","bold":true,"color":"blue","italic":false}] run tag @p[tag=p2] add ward
execute if score Spell_Points_P2 Spell_Points >= wardSp spellStats run execute if items entity @p[tag=p2,tag=wardO] container.* blue_stained_glass[minecraft:custom_name={"text":"Ward","bold":true,"color":"blue","italic":false}] run tellraw @a[tag=p2] ["",{"selector":"@p[tag=p2]"}," picked Ward."]
execute if score Spell_Points_P2 Spell_Points < wardSp spellStats run execute if items entity @p[tag=p2,tag=wardO] container.* blue_stained_glass[minecraft:custom_name={"text":"Ward","bold":true,"color":"blue","italic":false}] run tellraw @a[tag=p2] ["",{"selector":"@p[tag=p2]"}," You dont have enough spell points to equip this spell."]
execute if score Spell_Points_P2 Spell_Points < wardSp spellStats run execute if items entity @p[tag=p2,tag=wardO] container.* blue_stained_glass[minecraft:custom_name={"text":"Ward","bold":true,"color":"blue","italic":false}] run clear @a[tag=p2]
execute if score Spell_Points_P2 Spell_Points >= wardSp spellStats run execute if items entity @p[tag=p2,tag=wardO] container.* blue_stained_glass[minecraft:custom_name={"text":"Ward","bold":true,"color":"blue","italic":false}] run scoreboard players operation Spell_Points_P2 Spell_Points -= wardSp spellStats
execute if score Spell_Points_P2 Spell_Points >= wardSp spellStats run execute if items entity @p[tag=p2,tag=wardO] container.* blue_stained_glass[minecraft:custom_name={"text":"Ward","bold":true,"color":"blue","italic":false}] run effect clear @a[tag=p2] water_breathing

execute if items entity @p[tag=p2,tag=!wardO] container.* blue_stained_glass[minecraft:custom_name={"text":"Ward","bold":true,"color":"blue","italic":false}] run tellraw @a[tag=p2] ["Sorry, you don't own this spell."]
execute if items entity @p[tag=p2,tag=!wardO] container.* blue_stained_glass[minecraft:custom_name={"text":"Ward","bold":true,"color":"blue","italic":false}] run clear @a[tag=p2]

#Blizzard Select P1
execute if score Spell_Points_P2 Spell_Points >= blizzardSp spellStats run execute if items entity @p[tag=p2,tag=blizzardO] container.* blue_ice[minecraft:custom_name={"text":"Blizzard","bold":true,"color":"blue","italic":false}] run tag @p[tag=p2] add blizzard
execute if score Spell_Points_P2 Spell_Points >= blizzardSp spellStats run execute if items entity @p[tag=p2,tag=blizzardO] container.* blue_ice[minecraft:custom_name={"text":"Blizzard","bold":true,"color":"blue","italic":false}] run tellraw @a[tag=p2] ["",{"selector":"@p[tag=p2]"}," picked Blizzard."]
execute if score Spell_Points_P2 Spell_Points < blizzardSp spellStats run execute if items entity @p[tag=p2,tag=blizzardO] container.* blue_ice[minecraft:custom_name={"text":"Blizzard","bold":true,"color":"blue","italic":false}] run tellraw @a[tag=p2] ["",{"selector":"@p[tag=p2]"}," You dont have enough spell points to equip this spell."]
execute if score Spell_Points_P2 Spell_Points < blizzardSp spellStats run execute if items entity @p[tag=p2,tag=blizzardO] container.* blue_ice[minecraft:custom_name={"text":"Blizzard","bold":true,"color":"blue","italic":false}] run clear @a[tag=p2]
execute if score Spell_Points_P2 Spell_Points >= blizzardSp spellStats run execute if items entity @p[tag=p2,tag=blizzardO] container.* blue_ice[minecraft:custom_name={"text":"Blizzard","bold":true,"color":"blue","italic":false}] run scoreboard players operation Spell_Points_P2 Spell_Points -= blizzardSp spellStats
execute if score Spell_Points_P2 Spell_Points >= blizzardSp spellStats run execute if items entity @p[tag=p2,tag=blizzardO] container.* blue_ice[minecraft:custom_name={"text":"Blizzard","bold":true,"color":"blue","italic":false}] run effect clear @a[tag=p2] water_breathing

execute if items entity @p[tag=p2,tag=!blizzardO] container.* blue_ice[minecraft:custom_name={"text":"Blizzard","bold":true,"color":"blue","italic":false}] run tellraw @a[tag=p2] ["Sorry, you don't own this spell."]
execute if items entity @p[tag=p2,tag=!blizzardO] container.* blue_ice[minecraft:custom_name={"text":"Blizzard","bold":true,"color":"blue","italic":false}] run clear @a[tag=p2]

#Plague Select P1
execute if score Spell_Points_P2 Spell_Points >= plagueSp spellStats run execute if items entity @p[tag=p2,tag=plagueO] container.* fermented_spider_eye[minecraft:custom_name={"text":"Plague","bold":true,"color":"dark_purple","italic":false}] run tag @p[tag=p2] add plague
execute if score Spell_Points_P2 Spell_Points >= plagueSp spellStats run execute if items entity @p[tag=p2,tag=plagueO] container.* fermented_spider_eye[minecraft:custom_name={"text":"Plague","bold":true,"color":"dark_purple","italic":false}] run tellraw @a[tag=p2] ["",{"selector":"@p[tag=p2]"}," picked Plague."]
execute if score Spell_Points_P2 Spell_Points < plagueSp spellStats run execute if items entity @p[tag=p2,tag=plagueO] container.* fermented_spider_eye[minecraft:custom_name={"text":"Plague","bold":true,"color":"dark_purple","italic":false}] run tellraw @a[tag=p2] ["",{"selector":"@p[tag=p2]"}," You dont have enough spell points to equip this spell."]
execute if score Spell_Points_P2 Spell_Points < plagueSp spellStats run execute if items entity @p[tag=p2,tag=plagueO] container.* fermented_spider_eye[minecraft:custom_name={"text":"Plague","bold":true,"color":"dark_purple","italic":false}] run clear @a[tag=p2]
execute if score Spell_Points_P2 Spell_Points >= plagueSp spellStats run execute if items entity @p[tag=p2,tag=plagueO] container.* fermented_spider_eye[minecraft:custom_name={"text":"Plague","bold":true,"color":"dark_purple","italic":false}] run scoreboard players operation Spell_Points_P2 Spell_Points -= plagueSp spellStats
execute if score Spell_Points_P2 Spell_Points >= plagueSp spellStats run execute if items entity @p[tag=p2,tag=plagueO] container.* fermented_spider_eye[minecraft:custom_name={"text":"Plague","bold":true,"color":"dark_purple","italic":false}] run effect clear @a[tag=p2] water_breathing

execute if items entity @p[tag=p2,tag=!plagueO] container.* fermented_spider_eye[minecraft:custom_name={"text":"Plague","bold":true,"color":"dark_purple","italic":false}] run tellraw @a[tag=p2] ["Sorry, you don't own this spell."]
execute if items entity @p[tag=p2,tag=!plagueO] container.* fermented_spider_eye[minecraft:custom_name={"text":"Plague","bold":true,"color":"dark_purple","italic":false}] run clear @a[tag=p2]

#Second Wind Select P1
execute if score Spell_Points_P2 Spell_Points >= secondWindSp spellStats run execute if items entity @p[tag=p2,tag=secondwindO] container.* feather[minecraft:custom_name={"text":"Second Wind","bold":true,"color":"dark_purple","italic":false}] run tag @p[tag=p2] add secondwind
execute if score Spell_Points_P2 Spell_Points >= secondWindSp spellStats run execute if items entity @p[tag=p2,tag=secondwindO] container.* feather[minecraft:custom_name={"text":"Second Wind","bold":true,"color":"dark_purple","italic":false}] run tellraw @a[tag=p2] ["",{"selector":"@p[tag=p2]"}," picked Second Wind."]
execute if score Spell_Points_P2 Spell_Points < secondWindSp spellStats run execute if items entity @p[tag=p2,tag=secondwindO] container.* feather[minecraft:custom_name={"text":"Second Wind","bold":true,"color":"dark_purple","italic":false}] run tellraw @a[tag=p2] ["",{"selector":"@p[tag=p2]"}," You dont have enough spell points to equip this spell."]
execute if score Spell_Points_P2 Spell_Points < secondWindSp spellStats run execute if items entity @p[tag=p2,tag=secondwindO] container.* feather[minecraft:custom_name={"text":"Second Wind","bold":true,"color":"dark_purple","italic":false}] run clear @a[tag=p2]
execute if score Spell_Points_P2 Spell_Points >= secondWindSp spellStats run execute if items entity @p[tag=p2,tag=secondwindO] container.* feather[minecraft:custom_name={"text":"Second Wind","bold":true,"color":"dark_purple","italic":false}] run scoreboard players operation Spell_Points_P2 Spell_Points -= secondWindSp spellStats
execute if score Spell_Points_P2 Spell_Points >= secondWindSp spellStats run execute if items entity @p[tag=p2,tag=secondwindO] container.* feather[minecraft:custom_name={"text":"Second Wind","bold":true,"color":"dark_purple","italic":false}] run effect clear @a[tag=p2] water_breathing

execute if items entity @p[tag=p2,tag=!secondwindO] container.* feather[minecraft:custom_name={"text":"Second Wind","bold":true,"color":"dark_purple","italic":false}] run tellraw @a[tag=p2] ["Sorry, you don't own this spell."]
execute if items entity @p[tag=p2,tag=!secondwindO] container.* feather[minecraft:custom_name={"text":"Second Wind","bold":true,"color":"dark_purple","italic":false}] run clear @a[tag=p2]
#Witches Brew Select P1
execute if score Spell_Points_P2 Spell_Points >= witchesBrewSp spellStats run execute if items entity @p[tag=p2,tag=witchesbrewO] container.* minecraft:cauldron[minecraft:custom_name={"text":"Witches Brew","bold":true,"color":"dark_purple","italic":false}] run tag @p[tag=p2] add witchesbrew
execute if score Spell_Points_P2 Spell_Points >= witchesBrewSp spellStats run execute if items entity @p[tag=p2,tag=witchesbrewO] container.* minecraft:cauldron[minecraft:custom_name={"text":"Witches Brew","bold":true,"color":"dark_purple","italic":false}] run tellraw @a[tag=p2] ["",{"selector":"@p[tag=p2]"}," picked Witches Brew."]
execute if score Spell_Points_P2 Spell_Points < witchesBrewSp spellStats run execute if items entity @p[tag=p2,tag=witchesbrewO] container.* minecraft:cauldron[minecraft:custom_name={"text":"Witches Brew","bold":true,"color":"dark_purple","italic":false}] run tellraw @a[tag=p2] ["",{"selector":"@p[tag=p2]"}," You dont have enough spell points to equip this spell."]
execute if score Spell_Points_P2 Spell_Points < witchesBrewSp spellStats run execute if items entity @p[tag=p2,tag=witchesbrewO] container.* minecraft:cauldron[minecraft:custom_name={"text":"Witches Brew","bold":true,"color":"dark_purple","italic":false}] run clear @a[tag=p2]
execute if score Spell_Points_P2 Spell_Points >= witchesBrewSp spellStats run execute if items entity @p[tag=p2,tag=witchesbrewO] container.* minecraft:cauldron[minecraft:custom_name={"text":"Witches Brew","bold":true,"color":"dark_purple","italic":false}] run scoreboard players operation Spell_Points_P2 Spell_Points -= witchesBrewSp spellStats
execute if score Spell_Points_P2 Spell_Points >= witchesBrewSp spellStats run execute if items entity @p[tag=p2,tag=witchesbrewO] container.* minecraft:cauldron[minecraft:custom_name={"text":"Witches Brew","bold":true,"color":"dark_purple","italic":false}] run effect clear @a[tag=p2] water_breathing

execute if items entity @p[tag=p2,tag=!witchesbrewO] container.* minecraft:cauldron[minecraft:custom_name={"text":"Witches Brew","bold":true,"color":"dark_purple","italic":false}] run tellraw @a[tag=p2] ["Sorry, you don't own this spell."]
execute if items entity @p[tag=p2,tag=!witchesbrewO] container.* minecraft:cauldron[minecraft:custom_name={"text":"Witches Brew","bold":true,"color":"dark_purple","italic":false}] run clear @a[tag=p2]



#Font of Wisdom Select P1
execute if score Spell_Points_P2 Spell_Points >= fontOfWisdomSp spellStats run execute if items entity @p[tag=p2,tag=fontofwisdomO] container.* minecraft:enchanted_book[minecraft:custom_name={"text":"Font of Wisdom","bold":true,"color":"dark_purple","italic":false}] run tag @p[tag=p2] add fontofwisdom
execute if score Spell_Points_P2 Spell_Points >= fontOfWisdomSp spellStats run execute if items entity @p[tag=p2,tag=fontofwisdomO] container.* minecraft:enchanted_book[minecraft:custom_name={"text":"Font of Wisdom","bold":true,"color":"dark_purple","italic":false}] run tellraw @a[tag=p2] ["",{"selector":"@p[tag=p2]"}," picked Font of Wisdom."]
execute if score Spell_Points_P2 Spell_Points < fontOfWisdomSp spellStats run execute if items entity @p[tag=p2,tag=fontofwisdomO] container.* minecraft:enchanted_book[minecraft:custom_name={"text":"Font of Wisdom","bold":true,"color":"dark_purple","italic":false}] run tellraw @a[tag=p2] ["",{"selector":"@p[tag=p2]"}," You dont have enough spell points to equip this spell."]
execute if score Spell_Points_P2 Spell_Points < fontOfWisdomSp spellStats run execute if items entity @p[tag=p2,tag=fontofwisdomO] container.* minecraft:enchanted_book[minecraft:custom_name={"text":"Font of Wisdom","bold":true,"color":"dark_purple","italic":false}] run clear @a[tag=p2]
execute if score Spell_Points_P2 Spell_Points >= fontOfWisdomSp spellStats run execute if items entity @p[tag=p2,tag=fontofwisdomO] container.* minecraft:enchanted_book[minecraft:custom_name={"text":"Font of Wisdom","bold":true,"color":"dark_purple","italic":false}] run scoreboard players operation Spell_Points_P2 Spell_Points -= fontOfWisdomSp spellStats
execute if score Spell_Points_P2 Spell_Points >= fontOfWisdomSp spellStats run execute if items entity @p[tag=p2,tag=fontofwisdomO] container.* minecraft:enchanted_book[minecraft:custom_name={"text":"Font of Wisdom","bold":true,"color":"dark_purple","italic":false}] run effect clear @a[tag=p2] water_breathing

execute if items entity @p[tag=p2,tag=!fontofwisdomO] container.* minecraft:enchanted_book[minecraft:custom_name={"text":"Font of Wisdom","bold":true,"color":"dark_purple","italic":false}] run tellraw @a[tag=p2] ["Sorry, you don't own this spell."]
execute if items entity @p[tag=p2,tag=!fontofwisdomO] container.* minecraft:enchanted_book[minecraft:custom_name={"text":"Font of Wisdom","bold":true,"color":"dark_purple","italic":false}] run clear @a[tag=p2]

#Fountain of Youth Select P1
execute if score Spell_Points_P2 Spell_Points >= fountainOfYouthSp spellStats run execute if items entity @p[tag=p2,tag=fountainofyouthO] container.* minecraft:potion[minecraft:custom_name={"text":"Fountain of Youth","bold":true,"color":"dark_purple","italic":false}] run tag @p[tag=p2] add fountainofyouth
execute if score Spell_Points_P2 Spell_Points >= fountainOfYouthSp spellStats run execute if items entity @p[tag=p2,tag=fountainofyouthO] container.* minecraft:potion[minecraft:custom_name={"text":"Fountain of Youth","bold":true,"color":"dark_purple","italic":false}] run tellraw @a[tag=p2] ["",{"selector":"@p[tag=p2]"}," picked Fountain of Youth."]
execute if score Spell_Points_P2 Spell_Points < fountainOfYouthSp spellStats run execute if items entity @p[tag=p2,tag=fountainofyouthO] container.* minecraft:potion[minecraft:custom_name={"text":"Fountain of Youth","bold":true,"color":"dark_purple","italic":false}] run tellraw @a[tag=p2] ["",{"selector":"@p[tag=p2]"}," You dont have enough spell points to equip this spell."]
execute if score Spell_Points_P2 Spell_Points < fountainOfYouthSp spellStats run execute if items entity @p[tag=p2,tag=fountainofyouthO] container.* minecraft:potion[minecraft:custom_name={"text":"Fountain of Youth","bold":true,"color":"dark_purple","italic":false}] run clear @a[tag=p2]
execute if score Spell_Points_P2 Spell_Points >= fountainOfYouthSp spellStats run execute if items entity @p[tag=p2,tag=fountainofyouthO] container.* minecraft:potion[minecraft:custom_name={"text":"Fountain of Youth","bold":true,"color":"dark_purple","italic":false}] run scoreboard players operation Spell_Points_P2 Spell_Points -= fountainOfYouthSp spellStats
execute if score Spell_Points_P2 Spell_Points >= fountainOfYouthSp spellStats run execute if items entity @p[tag=p2,tag=fountainofyouthO] container.* minecraft:potion[minecraft:custom_name={"text":"Fountain of Youth","bold":true,"color":"dark_purple","italic":false}] run effect clear @a[tag=p2] water_breathing

execute if items entity @p[tag=p2,tag=!fountainofyouthO] container.* minecraft:potion[minecraft:custom_name={"text":"Fountain of Youth","bold":true,"color":"dark_purple","italic":false}] run tellraw @a[tag=p2] ["Sorry, you don't own this spell."]
execute if items entity @p[tag=p2,tag=!fountainofyouthO] container.* minecraft:potion[minecraft:custom_name={"text":"Fountain of Youth","bold":true,"color":"dark_purple","italic":false}] run clear @a[tag=p2]


#Dragonforge Select P1
execute if score Spell_Points_P2 Spell_Points >= dragonforgeSp spellStats run execute if items entity @p[tag=p2,tag=dragonforgeO] container.* minecraft:dragon_head[minecraft:custom_name={"text":"Dragonforge","bold":true,"color":"dark_purple","italic":false}] run tag @p[tag=p2] add dragonforge
execute if score Spell_Points_P2 Spell_Points >= dragonforgeSp spellStats run execute if items entity @p[tag=p2,tag=dragonforgeO] container.* minecraft:dragon_head[minecraft:custom_name={"text":"Dragonforge","bold":true,"color":"dark_purple","italic":false}] run tellraw @a[tag=p2] ["",{"selector":"@p[tag=p2]"}," picked Dragonforge."]
execute if score Spell_Points_P2 Spell_Points < dragonforgeSp spellStats run execute if items entity @p[tag=p2,tag=dragonforgeO] container.* minecraft:dragon_head[minecraft:custom_name={"text":"Dragonforge","bold":true,"color":"dark_purple","italic":false}] run tellraw @a[tag=p2] ["",{"selector":"@p[tag=p2]"}," You dont have enough spell points to equip this spell."]
execute if score Spell_Points_P2 Spell_Points < dragonforgeSp spellStats run execute if items entity @p[tag=p2,tag=dragonforgeO] container.* minecraft:dragon_head[minecraft:custom_name={"text":"Dragonforge","bold":true,"color":"dark_purple","italic":false}] run clear @a[tag=p2]
execute if score Spell_Points_P2 Spell_Points >= dragonforgeSp spellStats run execute if items entity @p[tag=p2,tag=dragonforgeO] container.* minecraft:dragon_head[minecraft:custom_name={"text":"Dragonforge","bold":true,"color":"dark_purple","italic":false}] run scoreboard players operation Spell_Points_P2 Spell_Points -= dragonforgeSp spellStats
execute if score Spell_Points_P2 Spell_Points >= dragonforgeSp spellStats run execute if items entity @p[tag=p2,tag=dragonforgeO] container.* minecraft:dragon_head[minecraft:custom_name={"text":"Dragonforge","bold":true,"color":"dark_purple","italic":false}] run effect clear @a[tag=p2] water_breathing

execute if items entity @p[tag=p2,tag=!dragonforgeO] container.* minecraft:dragon_head[minecraft:custom_name={"text":"Dragonforge","bold":true,"color":"dark_purple","italic":false}] run tellraw @a[tag=p2] ["Sorry, you don't own this spell."]
execute if items entity @p[tag=p2,tag=!dragonforgeO] container.* minecraft:dragon_head[minecraft:custom_name={"text":"Dragonforge","bold":true,"color":"dark_purple","italic":false}] run clear @a[tag=p2]

#Overclock Select P1
execute if score Spell_Points_P2 Spell_Points >= overclockSp spellStats run execute if items entity @p[tag=p2,tag=overclockO] container.* minecraft:heavy_core[minecraft:custom_name={"text":"Overclock","bold":true,"color":"dark_purple","italic":false}] run tag @p[tag=p2] add overclock
execute if score Spell_Points_P2 Spell_Points >= overclockSp spellStats run execute if items entity @p[tag=p2,tag=overclockO] container.* minecraft:heavy_core[minecraft:custom_name={"text":"Overclock","bold":true,"color":"dark_purple","italic":false}] run tellraw @a[tag=p2] ["",{"selector":"@p[tag=p2]"}," picked Overclock."]
execute if score Spell_Points_P2 Spell_Points < overclockSp spellStats run execute if items entity @p[tag=p2,tag=overclockO] container.* minecraft:heavy_core[minecraft:custom_name={"text":"Overclock","bold":true,"color":"dark_purple","italic":false}] run tellraw @a[tag=p2] ["",{"selector":"@p[tag=p2]"}," You dont have enough spell points to equip this spell."]
execute if score Spell_Points_P2 Spell_Points < overclockSp spellStats run execute if items entity @p[tag=p2,tag=overclockO] container.* minecraft:heavy_core[minecraft:custom_name={"text":"Overclock","bold":true,"color":"dark_purple","italic":false}] run clear @a[tag=p2]
execute if score Spell_Points_P2 Spell_Points >= overclockSp spellStats run execute if items entity @p[tag=p2,tag=overclockO] container.* minecraft:heavy_core[minecraft:custom_name={"text":"Overclock","bold":true,"color":"dark_purple","italic":false}] run scoreboard players operation Spell_Points_P2 Spell_Points -= overclockSp spellStats
execute if score Spell_Points_P2 Spell_Points >= overclockSp spellStats run execute if items entity @p[tag=p2,tag=overclockO] container.* minecraft:heavy_core[minecraft:custom_name={"text":"Overclock","bold":true,"color":"dark_purple","italic":false}] run effect clear @a[tag=p2] water_breathing

execute if items entity @p[tag=p2,tag=!overclockO] container.* minecraft:heavy_core[minecraft:custom_name={"text":"Overclock","bold":true,"color":"dark_purple","italic":false}] run tellraw @a[tag=p2] ["Sorry, you don't own this spell."]
execute if items entity @p[tag=p2,tag=!overclockO] container.* minecraft:heavy_core[minecraft:custom_name={"text":"Overclock","bold":true,"color":"dark_purple","italic":false}] run clear @a[tag=p2]


#Shifting Shadows Select P1
execute if score Spell_Points_P2 Spell_Points >= shiftingShadowsSp spellStats run execute if items entity @p[tag=p2,tag=shiftingshadowsO] container.* minecraft:echo_shard[minecraft:custom_name={"text":"Shifting Shadows","bold":true,"color":"gold","italic":false}] run tag @p[tag=p2] add shiftingshadows
execute if score Spell_Points_P2 Spell_Points >= shiftingShadowsSp spellStats run execute if items entity @p[tag=p2,tag=shiftingshadowsO] container.* minecraft:echo_shard[minecraft:custom_name={"text":"Shifting Shadows","bold":true,"color":"gold","italic":false}] run tellraw @a[tag=p2] ["",{"selector":"@p[tag=p2]"}," picked Shifting Shadows."]
execute if score Spell_Points_P2 Spell_Points < shiftingShadowsSp spellStats run execute if items entity @p[tag=p2,tag=shiftingshadowsO] container.* minecraft:echo_shard[minecraft:custom_name={"text":"Shifting Shadows","bold":true,"color":"gold","italic":false}] run tellraw @a[tag=p2] ["",{"selector":"@p[tag=p2]"}," You dont have enough spell points to equip this spell."]
execute if score Spell_Points_P2 Spell_Points < shiftingShadowsSp spellStats run execute if items entity @p[tag=p2,tag=shiftingshadowsO] container.* minecraft:echo_shard[minecraft:custom_name={"text":"Shifting Shadows","bold":true,"color":"gold","italic":false}] run clear @a[tag=p2]
execute if score Spell_Points_P2 Spell_Points >= shiftingShadowsSp spellStats run execute if items entity @p[tag=p2,tag=shiftingshadowsO] container.* minecraft:echo_shard[minecraft:custom_name={"text":"Shifting Shadows","bold":true,"color":"gold","italic":false}] run scoreboard players operation Spell_Points_P2 Spell_Points -= shiftingShadowsSp spellStats
execute if score Spell_Points_P2 Spell_Points >= shiftingShadowsSp spellStats run execute if items entity @p[tag=p2,tag=shiftingshadowsO] container.* minecraft:echo_shard[minecraft:custom_name={"text":"Shifting Shadows","bold":true,"color":"gold","italic":false}] run effect clear @a[tag=p2] water_breathing

execute if items entity @p[tag=p2,tag=!shiftingshadowsO] container.* minecraft:echo_shard[minecraft:custom_name={"text":"Shifting Shadows","bold":true,"color":"gold","italic":false}] run tellraw @a[tag=p2] ["Sorry, you don't own this spell."]
execute if items entity @p[tag=p2,tag=!shiftingshadowsO] container.* minecraft:echo_shard[minecraft:custom_name={"text":"Shifting Shadows","bold":true,"color":"gold","italic":false}] run clear @a[tag=p2]


#Chrono Warp Select P1
execute if score Spell_Points_P2 Spell_Points >= chronoWarpSp spellStats run execute if items entity @p[tag=p2,tag=chronowarpO] container.* minecraft:clock[minecraft:custom_name={"text":"Chrono Warp","bold":true,"color":"gold","italic":false}] run tag @p[tag=p2] add chronowarp
execute if score Spell_Points_P2 Spell_Points >= chronoWarpSp spellStats run execute if items entity @p[tag=p2,tag=chronowarpO] container.* minecraft:clock[minecraft:custom_name={"text":"Chrono Warp","bold":true,"color":"gold","italic":false}] run tellraw @a[tag=p2] ["",{"selector":"@p[tag=p2]"}," picked Chrono Warp."]
execute if score Spell_Points_P2 Spell_Points < chronoWarpSp spellStats run execute if items entity @p[tag=p2,tag=chronowarpO] container.* minecraft:clock[minecraft:custom_name={"text":"Chrono Warp","bold":true,"color":"gold","italic":false}] run tellraw @a[tag=p2] ["",{"selector":"@p[tag=p2]"}," You dont have enough spell points to equip this spell."]
execute if score Spell_Points_P2 Spell_Points < chronoWarpSp spellStats run execute if items entity @p[tag=p2,tag=chronowarpO] container.* minecraft:clock[minecraft:custom_name={"text":"Chrono Warp","bold":true,"color":"gold","italic":false}] run clear @a[tag=p2]
execute if score Spell_Points_P2 Spell_Points >= chronoWarpSp spellStats run execute if items entity @p[tag=p2,tag=chronowarpO] container.* minecraft:clock[minecraft:custom_name={"text":"Chrono Warp","bold":true,"color":"gold","italic":false}] run scoreboard players operation Spell_Points_P2 Spell_Points -= chronoWarpSp spellStats
execute if score Spell_Points_P2 Spell_Points >= chronoWarpSp spellStats run execute if items entity @p[tag=p2,tag=chronowarpO] container.* minecraft:clock[minecraft:custom_name={"text":"Chrono Warp","bold":true,"color":"gold","italic":false}] run effect clear @a[tag=p2] water_breathing

execute if items entity @p[tag=p2,tag=!chronowarpO] container.* minecraft:clock[minecraft:custom_name={"text":"Chrono Warp","bold":true,"color":"gold","italic":false}] run tellraw @a[tag=p2] ["Sorry, you don't own this spell."]
execute if items entity @p[tag=p2,tag=!chronowarpO] container.* minecraft:clock[minecraft:custom_name={"text":"Chrono Warp","bold":true,"color":"gold","italic":false}] run clear @a[tag=p2]


#Healing Totem Select P1
execute if score Spell_Points_P2 Spell_Points >= healingTotemSp spellStats run execute if items entity @p[tag=p2,tag=healingtotemO] container.* minecraft:totem_of_undying[minecraft:custom_name={"text":"Healing Totem","bold":true,"color":"gold","italic":false}] run tag @p[tag=p2] add healingtotem
execute if score Spell_Points_P2 Spell_Points >= healingTotemSp spellStats run execute if items entity @p[tag=p2,tag=healingtotemO] container.* minecraft:totem_of_undying[minecraft:custom_name={"text":"Healing Totem","bold":true,"color":"gold","italic":false}] run tellraw @a[tag=p2] ["",{"selector":"@p[tag=p2]"}," picked Healing Totem."]
execute if score Spell_Points_P2 Spell_Points < healingTotemSp spellStats run execute if items entity @p[tag=p2,tag=healingtotemO] container.* minecraft:totem_of_undying[minecraft:custom_name={"text":"Healing Totem","bold":true,"color":"gold","italic":false}] run tellraw @a[tag=p2] ["",{"selector":"@p[tag=p2]"}," You dont have enough spell points to equip this spell."]
execute if score Spell_Points_P2 Spell_Points < healingTotemSp spellStats run execute if items entity @p[tag=p2,tag=healingtotemO] container.* minecraft:totem_of_undying[minecraft:custom_name={"text":"Healing Totem","bold":true,"color":"gold","italic":false}] run clear @a[tag=p2]
execute if score Spell_Points_P2 Spell_Points >= healingTotemSp spellStats run execute if items entity @p[tag=p2,tag=healingtotemO] container.* minecraft:totem_of_undying[minecraft:custom_name={"text":"Healing Totem","bold":true,"color":"gold","italic":false}] run scoreboard players operation Spell_Points_P2 Spell_Points -= healingTotemSp spellStats
execute if score Spell_Points_P2 Spell_Points >= healingTotemSp spellStats run execute if items entity @p[tag=p2,tag=healingtotemO] container.* minecraft:totem_of_undying[minecraft:custom_name={"text":"Healing Totem","bold":true,"color":"gold","italic":false}] run effect clear @a[tag=p2] water_breathing


execute if items entity @p[tag=p2,tag=!healingtotemO] container.* minecraft:totem_of_undying[minecraft:custom_name={"text":"Healing Totem","bold":true,"color":"gold","italic":false}] run tellraw @a[tag=p2] ["Sorry, you don't own this spell."]
execute if items entity @p[tag=p2,tag=!healingtotemO] container.* minecraft:totem_of_undying[minecraft:custom_name={"text":"Healing Totem","bold":true,"color":"gold","italic":false}] run clear @a[tag=p2]


execute if score spellpick2 drafts > Spell_Points_P2 Spell_Points run clear @a[tag=p2]
