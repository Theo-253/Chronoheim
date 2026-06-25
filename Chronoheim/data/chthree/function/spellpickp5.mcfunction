
#Spell Point Giver
item replace entity @p[tag=p5] container.0 with barrier[minecraft:custom_name="Skip Spell Picking",food={can_always_eat:1b,nutrition:1,saturation:1},consumable={consume_seconds:0.1,animation:none,sound:"block.amethyst_block.break",has_consume_particles:0b,on_consume_effects:[{type:apply_effects,effects:[{id:water_breathing,duration:1,amplifier:0,show_particles:0b}]}]}]
item replace entity @p[tag=p6] container.0 with barrier[minecraft:custom_name="Skip Spell Picking",food={can_always_eat:1b,nutrition:1,saturation:1},consumable={consume_seconds:0.1,animation:none,sound:"block.amethyst_block.break",has_consume_particles:0b,on_consume_effects:[{type:apply_effects,effects:[{id:water_breathing,duration:1,amplifier:0,show_particles:0b}]}]}]
execute if score character# slot23 matches 1.. run execute if score character# slot19 matches 1.. run execute if score Spell_Points_P5 Spell_Points matches -1 run scoreboard players set Spell_Points_P5 Spell_Points 7
execute if score character# slot23 matches 1.. run execute if score character# slot19 matches 1.. run execute if score Spell_Points_P6 Spell_Points matches -1 run scoreboard players set Spell_Points_P6 Spell_Points 7
execute if score character# slot23 matches 1.. run execute if score character# slot19 matches 1.. run execute if score Spell_Points_P5 Spell_Points matches -2 run scoreboard players set Spell_Points_P5 Spell_Points 8
execute if score character# slot23 matches 1.. run execute if score character# slot19 matches 1.. run execute if score Spell_Points_P5 Spell_Points matches -3 run scoreboard players set Spell_Points_P5 Spell_Points 9
execute if score character# slot23 matches 1.. run execute if score character# slot19 matches 1.. run execute if score Spell_Points_P6 Spell_Points matches -2 run scoreboard players set Spell_Points_P6 Spell_Points 8
execute if score character# slot23 matches 1.. run execute if score character# slot19 matches 1.. run execute if score Spell_Points_P6 Spell_Points matches -3 run scoreboard players set Spell_Points_P6 Spell_Points 9

scoreboard players operation spellpick3 drafts = Spell_Points_P5 Spell_Points

#Fireball Select P5
execute if score Spell_Points_P5 Spell_Points >= fireballSp spellStats run execute if items entity @p[tag=p5] container.* fire_charge[minecraft:custom_name={"text":"Fireball","bold":true,"color":"gray","italic":false}] run tag @p[tag=p5] add fireball
execute if score Spell_Points_P5 Spell_Points >= fireballSp spellStats run execute if items entity @p[tag=p5] container.* fire_charge[minecraft:custom_name={"text":"Fireball","bold":true,"color":"gray","italic":false}] run tellraw @a[tag=p5] ["",{"selector":"@p[tag=p5]"}," picked Fireball."]
execute if score Spell_Points_P5 Spell_Points < fireballSp spellStats run execute if items entity @p[tag=p5] container.* fire_charge[minecraft:custom_name={"text":"Fireball","bold":true,"color":"gray","italic":false}] run tellraw @a[tag=p5] ["",{"selector":"@p[tag=p5]"}," You dont have enough spell points to equip this spell."]
execute if score Spell_Points_P5 Spell_Points < fireballSp spellStats run execute if items entity @p[tag=p5] container.* fire_charge[minecraft:custom_name={"text":"Fireball","bold":true,"color":"gray","italic":false}] run clear @a[tag=p5]
execute if score Spell_Points_P5 Spell_Points >= fireballSp spellStats run execute if items entity @p[tag=p5] container.* fire_charge[minecraft:custom_name={"text":"Fireball","bold":true,"color":"gray","italic":false}] run scoreboard players operation Spell_Points_P5 Spell_Points -= fireballSp spellStats
execute if score Spell_Points_P5 Spell_Points >= fireballSp spellStats run execute if items entity @p[tag=p5] container.* fire_charge[minecraft:custom_name={"text":"Fireball","bold":true,"color":"gray","italic":false}] run effect clear @a[tag=p5] water_breathing


#Heal Select P5
execute if score Spell_Points_P5 Spell_Points >= healSp spellStats run execute if items entity @p[tag=p5] container.* emerald[minecraft:custom_name={"text":"Heal","bold":true,"color":"gray","italic":false}] run tag @p[tag=p5] add heal
execute if score Spell_Points_P5 Spell_Points >= healSp spellStats run execute if items entity @p[tag=p5] container.* emerald[minecraft:custom_name={"text":"Heal","bold":true,"color":"gray","italic":false}] run tellraw @a[tag=p5] ["",{"selector":"@p[tag=p5]"}," picked Heal."]
execute if score Spell_Points_P5 Spell_Points < healSp spellStats run execute if items entity @p[tag=p5] container.* emerald[minecraft:custom_name={"text":"Heal","bold":true,"color":"gray","italic":false}] run tellraw @a[tag=p5] ["",{"selector":"@p[tag=p5]"}," You dont have enough spell points to equip this spell."]
execute if score Spell_Points_P5 Spell_Points < healSp spellStats run execute if items entity @p[tag=p5] container.* emerald[minecraft:custom_name={"text":"Heal","bold":true,"color":"gray","italic":false}] run clear @a[tag=p5]
execute if score Spell_Points_P5 Spell_Points >= healSp spellStats run execute if items entity @p[tag=p5] container.* emerald[minecraft:custom_name={"text":"Heal","bold":true,"color":"gray","italic":false}] run scoreboard players operation Spell_Points_P5 Spell_Points -= healSp spellStats
execute if score Spell_Points_P5 Spell_Points >= healSp spellStats run execute if items entity @p[tag=p5] container.* emerald[minecraft:custom_name={"text":"Heal","bold":true,"color":"gray","italic":false}] run effect clear @a[tag=p5] water_breathing


#Chain Lightning Select P5
execute if score Spell_Points_P5 Spell_Points >= chainLightningSp spellStats run execute if items entity @p[tag=p5] container.* lightning_rod[minecraft:custom_name={"text":"Chain Lightning","bold":true,"color":"gray","italic":false}] run tag @p[tag=p5] add chainlightning
execute if score Spell_Points_P5 Spell_Points >= chainLightningSp spellStats run execute if items entity @p[tag=p5] container.* lightning_rod[minecraft:custom_name={"text":"Chain Lightning","bold":true,"color":"gray","italic":false}] run tellraw @a[tag=p5] ["",{"selector":"@p[tag=p5]"}," picked Chain Lightning."]
execute if score Spell_Points_P5 Spell_Points < chainLightningSp spellStats run execute if items entity @p[tag=p5] container.* lightning_rod[minecraft:custom_name={"text":"Chain Lightning","bold":true,"color":"gray","italic":false}] run tellraw @a[tag=p5] ["",{"selector":"@p[tag=p5]"}," You dont have enough spell points to equip this spell."]
execute if score Spell_Points_P5 Spell_Points < chainLightningSp spellStats run execute if items entity @p[tag=p5] container.* lightning_rod[minecraft:custom_name={"text":"Chain Lightning","bold":true,"color":"gray","italic":false}] run clear @a[tag=p5]
execute if score Spell_Points_P5 Spell_Points >= chainLightningSp spellStats run execute if items entity @p[tag=p5] container.* lightning_rod[minecraft:custom_name={"text":"Chain Lightning","bold":true,"color":"gray","italic":false}] run scoreboard players operation Spell_Points_P5 Spell_Points -= chainLightningSp spellStats
execute if score Spell_Points_P5 Spell_Points >= chainLightningSp spellStats run execute if items entity @p[tag=p5] container.* lightning_rod[minecraft:custom_name={"text":"Chain Lightning","bold":true,"color":"gray","italic":false}] run effect clear @a[tag=p5] water_breathing



#Magic Missile! Magic Missile! I smite thee with Magic Missile! Lightning Select P5
execute if score Spell_Points_P5 Spell_Points >= magicMissileSp spellStats run execute if items entity @p[tag=p5,tag=magicmissileO] container.* spectral_arrow[minecraft:custom_name={"text":"Magic Missile","bold":true,"color":"dark_green","italic":false}] run tag @p[tag=p5] add magicmissile
execute if score Spell_Points_P5 Spell_Points >= magicMissileSp spellStats run execute if items entity @p[tag=p5,tag=magicmissileO] container.* spectral_arrow[minecraft:custom_name={"text":"Magic Missile","bold":true,"color":"dark_green","italic":false}] run tellraw @a[tag=p5] ["",{"selector":"@p[tag=p5]"}," picked Magic Missile."]
execute if score Spell_Points_P5 Spell_Points < magicMissileSp spellStats run execute if items entity @p[tag=p5,tag=magicmissileO] container.* spectral_arrow[minecraft:custom_name={"text":"Magic Missile","bold":true,"color":"dark_green","italic":false}] run tellraw @a[tag=p5] ["",{"selector":"@p[tag=p5]"}," You dont have enough spell points to equip this spell."]
execute if score Spell_Points_P5 Spell_Points < magicMissileSp spellStats run execute if items entity @p[tag=p5,tag=magicmissileO] container.* spectral_arrow[minecraft:custom_name={"text":"Magic Missile","bold":true,"color":"dark_green","italic":false}] run clear @a[tag=p5]
execute if score Spell_Points_P5 Spell_Points >= magicMissileSp spellStats run execute if items entity @p[tag=p5,tag=magicmissileO] container.* spectral_arrow[minecraft:custom_name={"text":"Magic Missile","bold":true,"color":"dark_green","italic":false}] run scoreboard players operation Spell_Points_P5 Spell_Points -= magicMissileSp spellStats
execute if score Spell_Points_P5 Spell_Points >= magicMissileSp spellStats run execute if items entity @p[tag=p5,tag=magicmissileO] container.* spectral_arrow[minecraft:custom_name={"text":"Magic Missile","bold":true,"color":"dark_green","italic":false}] run effect clear @a[tag=p5] water_breathing

execute if items entity @p[tag=p5,tag=!magicmissileO] container.* spectral_arrow[minecraft:custom_name={"text":"Magic Missile","bold":true,"color":"dark_green","italic":false}] run tellraw @a[tag=p5] ["Sorry, you don't own this spell."]
execute if items entity @p[tag=p5,tag=!magicmissileO] container.* spectral_arrow[minecraft:custom_name={"text":"Magic Missile","bold":true,"color":"dark_green","italic":false}] run clear @a[tag=p5]




#Ritual of Blood Select P5
execute if score Spell_Points_P5 Spell_Points >= ritualOfBloodSp spellStats run execute if items entity @p[tag=p5,tag=ritualofbloodO] container.* redstone[minecraft:custom_name={"text":"Ritual of Blood","bold":true,"color":"dark_green","italic":false}] run tag @p[tag=p5] add ritualofblood
execute if score Spell_Points_P5 Spell_Points >= ritualOfBloodSp spellStats run execute if items entity @p[tag=p5,tag=ritualofbloodO] container.* redstone[minecraft:custom_name={"text":"Ritual of Blood","bold":true,"color":"dark_green","italic":false}] run tellraw @a[tag=p5] ["",{"selector":"@p[tag=p5]"}," picked Ritual of Blood."]
execute if score Spell_Points_P5 Spell_Points < ritualOfBloodSp spellStats run execute if items entity @p[tag=p5,tag=ritualofbloodO] container.* redstone[minecraft:custom_name={"text":"Ritual of Blood","bold":true,"color":"dark_green","italic":false}] run tellraw @a[tag=p5] ["",{"selector":"@p[tag=p5]"}," You dont have enough spell points to equip this spell."]
execute if score Spell_Points_P5 Spell_Points < ritualOfBloodSp spellStats run execute if items entity @p[tag=p5,tag=ritualofbloodO] container.* redstone[minecraft:custom_name={"text":"Ritual of Blood","bold":true,"color":"dark_green","italic":false}] run clear @a[tag=p5]
execute if score Spell_Points_P5 Spell_Points >= ritualOfBloodSp spellStats run execute if items entity @p[tag=p5,tag=ritualofbloodO] container.* redstone[minecraft:custom_name={"text":"Ritual of Blood","bold":true,"color":"dark_green","italic":false}] run scoreboard players operation Spell_Points_P5 Spell_Points -= ritualOfBloodSp spellStats
execute if score Spell_Points_P5 Spell_Points >= ritualOfBloodSp spellStats run execute if items entity @p[tag=p5,tag=ritualofbloodO] container.* redstone[minecraft:custom_name={"text":"Ritual of Blood","bold":true,"color":"dark_green","italic":false}] run effect clear @a[tag=p5] water_breathing

execute if items entity @p[tag=p5,tag=!ritualofbloodO] container.* redstone[minecraft:custom_name={"text":"Ritual of Blood","bold":true,"color":"dark_green","italic":false}] run tellraw @a[tag=p5] ["Sorry, you don't own this spell."]
execute if items entity @p[tag=p5,tag=!ritualofbloodO] container.* redstone[minecraft:custom_name={"text":"Ritual of Blood","bold":true,"color":"dark_green","italic":false}] run clear @a[tag=p5]




#Frost Bolt Select P5
execute if score Spell_Points_P5 Spell_Points >= frostboltSp spellStats run execute if items entity @p[tag=p5,tag=frostboltO] container.* breeze_rod[minecraft:custom_name={"text":"Frostbolt","bold":true,"color":"dark_green","italic":false}] run tag @p[tag=p5] add frostbolt
execute if score Spell_Points_P5 Spell_Points >= frostboltSp spellStats run execute if items entity @p[tag=p5,tag=frostboltO] container.* breeze_rod[minecraft:custom_name={"text":"Frostbolt","bold":true,"color":"dark_green","italic":false}] run tellraw @a[tag=p5] ["",{"selector":"@p[tag=p5]"}," picked Frostbolt."]
execute if score Spell_Points_P5 Spell_Points < frostboltSp spellStats run execute if items entity @p[tag=p5,tag=frostboltO] container.* breeze_rod[minecraft:custom_name={"text":"Frostbolt","bold":true,"color":"dark_green","italic":false}] run tellraw @a[tag=p5] ["",{"selector":"@p[tag=p5]"}," You dont have enough spell points to equip this spell."]
execute if score Spell_Points_P5 Spell_Points < frostboltSp spellStats run execute if items entity @p[tag=p5,tag=frostboltO] container.* breeze_rod[minecraft:custom_name={"text":"Frostbolt","bold":true,"color":"dark_green","italic":false}] run clear @a[tag=p5]
execute if score Spell_Points_P5 Spell_Points >= frostboltSp spellStats run execute if items entity @p[tag=p5,tag=frostboltO] container.* breeze_rod[minecraft:custom_name={"text":"Frostbolt","bold":true,"color":"dark_green","italic":false}] run scoreboard players operation Spell_Points_P5 Spell_Points -= frostboltSp spellStats
execute if score Spell_Points_P5 Spell_Points >= frostboltSp spellStats run execute if items entity @p[tag=p5,tag=frostboltO] container.* breeze_rod[minecraft:custom_name={"text":"Frostbolt","bold":true,"color":"dark_green","italic":false}] run effect clear @a[tag=p5] water_breathing

execute if items entity @p[tag=p5,tag=!frostboltO] container.* breeze_rod[minecraft:custom_name={"text":"Frostbolt","bold":true,"color":"dark_green","italic":false}] run tellraw @a[tag=p5] ["Sorry, you don't own this spell."]
execute if items entity @p[tag=p5,tag=!frostboltO] container.* breeze_rod[minecraft:custom_name={"text":"Frostbolt","bold":true,"color":"dark_green","italic":false}] run clear @a[tag=p5]




#Meteor Select P5
execute if score Spell_Points_P5 Spell_Points >= meteorSp spellStats run execute if items entity @p[tag=p5,tag=meteorO] container.* dead_brain_coral_block[minecraft:custom_name={"text":"Meteor","bold":true,"color":"dark_green","italic":false}] run tag @p[tag=p5] add meteor
execute if score Spell_Points_P5 Spell_Points >= meteorSp spellStats run execute if items entity @p[tag=p5,tag=meteorO] container.* dead_brain_coral_block[minecraft:custom_name={"text":"Meteor","bold":true,"color":"dark_green","italic":false}] run tellraw @a[tag=p5] ["",{"selector":"@p[tag=p5]"}," picked Meteor."]
execute if score Spell_Points_P5 Spell_Points < meteorSp spellStats run execute if items entity @p[tag=p5,tag=meteorO] container.* dead_brain_coral_block[minecraft:custom_name={"text":"Meteor","bold":true,"color":"dark_green","italic":false}] run tellraw @a[tag=p5] ["",{"selector":"@p[tag=p5]"}," You dont have enough spell points to equip this spell."]
execute if score Spell_Points_P5 Spell_Points < meteorSp spellStats run execute if items entity @p[tag=p5,tag=meteorO] container.* dead_brain_coral_block[minecraft:custom_name={"text":"Meteor","bold":true,"color":"dark_green","italic":false}] run clear @a[tag=p5]
execute if score Spell_Points_P5 Spell_Points >= meteorSp spellStats run execute if items entity @p[tag=p5,tag=meteorO] container.* dead_brain_coral_block[minecraft:custom_name={"text":"Meteor","bold":true,"color":"dark_green","italic":false}] run scoreboard players operation Spell_Points_P5 Spell_Points -= meteorSp spellStats
execute if score Spell_Points_P5 Spell_Points >= meteorSp spellStats run execute if items entity @p[tag=p5,tag=meteorO] container.* dead_brain_coral_block[minecraft:custom_name={"text":"Meteor","bold":true,"color":"dark_green","italic":false}] run effect clear @a[tag=p5] water_breathing

execute if items entity @p[tag=p5,tag=!meteorO] container.* dead_brain_coral_block[minecraft:custom_name={"text":"Meteor","bold":true,"color":"dark_green","italic":false}] run tellraw @a[tag=p5] ["Sorry, you don't own this spell."]
execute if items entity @p[tag=p5,tag=!meteorO] container.* dead_brain_coral_block[minecraft:custom_name={"text":"Meteor","bold":true,"color":"dark_green","italic":false}] run clear @a[tag=p5]


#Shield Select P5
execute if score Spell_Points_P5 Spell_Points >= shieldSp spellStats run execute if items entity @p[tag=p5,tag=shieldO] container.* shield[minecraft:custom_name={"text":"Shield","bold":true,"color":"dark_green","italic":false}] run tag @p[tag=p5] add shield
execute if score Spell_Points_P5 Spell_Points >= shieldSp spellStats run execute if items entity @p[tag=p5,tag=shieldO] container.* shield[minecraft:custom_name={"text":"Shield","bold":true,"color":"dark_green","italic":false}] run tellraw @a[tag=p5] ["",{"selector":"@p[tag=p5]"}," picked Shield."]
execute if score Spell_Points_P5 Spell_Points < shieldSp spellStats run execute if items entity @p[tag=p5,tag=shieldO] container.* shield[minecraft:custom_name={"text":"Shield","bold":true,"color":"dark_green","italic":false}] run tellraw @a[tag=p5] ["",{"selector":"@p[tag=p5]"}," You dont have enough spell points to equip this spell."]
execute if score Spell_Points_P5 Spell_Points < shieldSp spellStats run execute if items entity @p[tag=p5,tag=shieldO] container.* shield[minecraft:custom_name={"text":"Shield","bold":true,"color":"dark_green","italic":false}] run clear @a[tag=p5]
execute if score Spell_Points_P5 Spell_Points >= shieldSp spellStats run execute if items entity @p[tag=p5,tag=shieldO] container.* shield[minecraft:custom_name={"text":"Shield","bold":true,"color":"dark_green","italic":false}] run scoreboard players operation Spell_Points_P5 Spell_Points -= shieldSp spellStats
execute if score Spell_Points_P5 Spell_Points >= shieldSp spellStats run execute if items entity @p[tag=p5,tag=shieldO] container.* shield[minecraft:custom_name={"text":"Shield","bold":true,"color":"dark_green","italic":false}] run effect clear @a[tag=p5] water_breathing

execute if items entity @p[tag=p5,tag=!shieldO] container.* shield[minecraft:custom_name={"text":"Shield","bold":true,"color":"dark_green","italic":false}] run tellraw @a[tag=p5] ["Sorry, you don't own this spell."]
execute if items entity @p[tag=p5,tag=!shieldO] container.* shield[minecraft:custom_name={"text":"Shield","bold":true,"color":"dark_green","italic":false}] run clear @a[tag=p5]



#Shock Orb Select P5
execute if score Spell_Points_P5 Spell_Points >= shockOrbSp spellStats run execute if items entity @p[tag=p5,tag=shockorbO] container.* heart_of_the_sea[minecraft:custom_name={"text":"Ball Lightning","bold":true,"color":"dark_green","italic":false}] run tag @p[tag=p5] add shockorb
execute if score Spell_Points_P5 Spell_Points >= shockOrbSp spellStats run execute if items entity @p[tag=p5,tag=shockorbO] container.* heart_of_the_sea[minecraft:custom_name={"text":"Ball Lightning","bold":true,"color":"dark_green","italic":false}] run tellraw @a[tag=p5] ["",{"selector":"@p[tag=p5]"}," picked Ball Lightning."]
execute if score Spell_Points_P5 Spell_Points < shockOrbSp spellStats run execute if items entity @p[tag=p5,tag=shockorbO] container.* heart_of_the_sea[minecraft:custom_name={"text":"Ball Lightning","bold":true,"color":"dark_green","italic":false}] run tellraw @a[tag=p5] ["",{"selector":"@p[tag=p5]"}," You dont have enough spell points to equip this spell."]
execute if score Spell_Points_P5 Spell_Points < shockOrbSp spellStats run execute if items entity @p[tag=p5,tag=shockorbO] container.* heart_of_the_sea[minecraft:custom_name={"text":"Ball Lightning","bold":true,"color":"dark_green","italic":false}] run clear @a[tag=p5]
execute if score Spell_Points_P5 Spell_Points >= shockOrbSp spellStats run execute if items entity @p[tag=p5,tag=shockorbO] container.* heart_of_the_sea[minecraft:custom_name={"text":"Ball Lightning","bold":true,"color":"dark_green","italic":false}] run scoreboard players operation Spell_Points_P5 Spell_Points -= shockOrbSp spellStats
execute if score Spell_Points_P5 Spell_Points >= shockOrbSp spellStats run execute if items entity @p[tag=p5,tag=shockorbO] container.* heart_of_the_sea[minecraft:custom_name={"text":"Ball Lightning","bold":true,"color":"dark_green","italic":false}] run effect clear @a[tag=p5] water_breathing

execute if items entity @p[tag=p5,tag=!shockorbO] container.* heart_of_the_sea[minecraft:custom_name={"text":"Ball Lightning","bold":true,"color":"dark_green","italic":false}] run tellraw @a[tag=p5] ["Sorry, you don't own this spell."]
execute if items entity @p[tag=p5,tag=!shockorbO] container.* heart_of_the_sea[minecraft:custom_name={"text":"Ball Lightning","bold":true,"color":"dark_green","italic":false}] run clear @a[tag=p5]




#Witch Bolt Select P5
execute if score Spell_Points_P5 Spell_Points >= witchBoltSp spellStats run execute if items entity @p[tag=p5,tag=witchboltO] container.* blaze_rod[minecraft:custom_name={"text":"Witch Bolt","bold":true,"color":"dark_green","italic":false}] run tag @p[tag=p5] add witchbolt
execute if score Spell_Points_P5 Spell_Points >= witchBoltSp spellStats run execute if items entity @p[tag=p5,tag=witchboltO] container.* blaze_rod[minecraft:custom_name={"text":"Witch Bolt","bold":true,"color":"dark_green","italic":false}] run tellraw @a[tag=p5] ["",{"selector":"@p[tag=p5]"}," picked Witch Bolt."]
execute if score Spell_Points_P5 Spell_Points < witchBoltSp spellStats run execute if items entity @p[tag=p5,tag=witchboltO] container.* blaze_rod[minecraft:custom_name={"text":"Witch Bolt","bold":true,"color":"dark_green","italic":false}] run tellraw @a[tag=p5] ["",{"selector":"@p[tag=p5]"}," You dont have enough spell points to equip this spell."]
execute if score Spell_Points_P5 Spell_Points < witchBoltSp spellStats run execute if items entity @p[tag=p5,tag=witchboltO] container.* blaze_rod[minecraft:custom_name={"text":"Witch Bolt","bold":true,"color":"dark_green","italic":false}] run clear @a[tag=p5]
execute if score Spell_Points_P5 Spell_Points >= witchBoltSp spellStats run execute if items entity @p[tag=p5,tag=witchboltO] container.* blaze_rod[minecraft:custom_name={"text":"Witch Bolt","bold":true,"color":"dark_green","italic":false}] run scoreboard players operation Spell_Points_P5 Spell_Points -= witchBoltSp spellStats
execute if score Spell_Points_P5 Spell_Points >= witchBoltSP spellStats run execute if items entity @p[tag=p5,tag=witchboltO] container.* blaze_rod[minecraft:custom_name={"text":"Witch Bolt","bold":true,"color":"dark_green","italic":false}] run effect clear @a[tag=p5] water_breathing

execute if items entity @p[tag=p5,tag=!witchboltO] container.* blaze_rod[minecraft:custom_name={"text":"Witch Bolt","bold":true,"color":"dark_green","italic":false}] run tellraw @a[tag=p5] ["Sorry, you don't own this spell."]
execute if items entity @p[tag=p5,tag=!witchboltO] container.* blaze_rod[minecraft:custom_name={"text":"Witch Bolt","bold":true,"color":"dark_green","italic":false}] run clear @a[tag=p5]
#Swiftness Select P5
execute if score Spell_Points_P5 Spell_Points >= swiftnessSp spellStats run execute if items entity @p[tag=p5,tag=swiftnessO] container.* rabbit_foot[minecraft:custom_name={"text":"Swiftness","bold":true,"color":"dark_green","italic":false}] run tag @p[tag=p5] add swiftness
execute if score Spell_Points_P5 Spell_Points >= swiftnessSp spellStats run execute if items entity @p[tag=p5,tag=swiftnessO] container.* rabbit_foot[minecraft:custom_name={"text":"Swiftness","bold":true,"color":"dark_green","italic":false}] run tellraw @a[tag=p5] ["",{"selector":"@p[tag=p5]"}," picked Swiftness."]
execute if score Spell_Points_P5 Spell_Points < swiftnessSp spellStats run execute if items entity @p[tag=p5,tag=swiftnessO] container.* rabbit_foot[minecraft:custom_name={"text":"Swiftness","bold":true,"color":"dark_green","italic":false}] run tellraw @a[tag=p5] ["",{"selector":"@p[tag=p5]"}," You dont have enough spell points to equip this spell."]
execute if score Spell_Points_P5 Spell_Points < swiftnessSp spellStats run execute if items entity @p[tag=p5,tag=swiftnessO] container.* rabbit_foot[minecraft:custom_name={"text":"Swiftness","bold":true,"color":"dark_green","italic":false}] run clear @a[tag=p5]
execute if score Spell_Points_P5 Spell_Points >= swiftnessSp spellStats run execute if items entity @p[tag=p5,tag=swiftnessO] container.* rabbit_foot[minecraft:custom_name={"text":"Swiftness","bold":true,"color":"dark_green","italic":false}] run scoreboard players operation Spell_Points_P5 Spell_Points -= swiftnessSp spellStats
execute if score Spell_Points_P5 Spell_Points >= swiftnessSp spellStats run execute if items entity @p[tag=p5,tag=swiftnessO] container.* rabbit_foot[minecraft:custom_name={"text":"Swiftness","bold":true,"color":"dark_green","italic":false}] run effect clear @a[tag=p5] water_breathing

execute if items entity @p[tag=p5,tag=!swiftnessO] container.* rabbit_foot[minecraft:custom_name={"text":"Swiftness","bold":true,"color":"dark_green","italic":false}] run tellraw @a[tag=p5] ["Sorry, you don't own this spell."]
execute if items entity @p[tag=p5,tag=!swiftnessO] container.* rabbit_foot[minecraft:custom_name={"text":"Swiftness","bold":true,"color":"dark_green","italic":false}] run clear @a[tag=p5]


#Embrittle Select P5
execute if score Spell_Points_P5 Spell_Points >= embrittleSp spellStats run execute if items entity @p[tag=p5,tag=embrittleO] container.* damaged_anvil[minecraft:custom_name={"text":"Embrittle","bold":true,"color":"dark_green","italic":false}] run tag @p[tag=p5] add embrittle
execute if score Spell_Points_P5 Spell_Points >= embrittleSp spellStats run execute if items entity @p[tag=p5,tag=embrittleO] container.* damaged_anvil[minecraft:custom_name={"text":"Embrittle","bold":true,"color":"dark_green","italic":false}] run tellraw @a[tag=p5] ["",{"selector":"@p[tag=p5]"}," picked Embrittle."]
execute if score Spell_Points_P5 Spell_Points < embrittleSp spellStats run execute if items entity @p[tag=p5,tag=embrittleO] container.* damaged_anvil[minecraft:custom_name={"text":"Embrittle","bold":true,"color":"dark_green","italic":false}] run tellraw @a[tag=p5] ["",{"selector":"@p[tag=p5]"}," You dont have enough spell points to equip this spell."]
execute if score Spell_Points_P5 Spell_Points < embrittleSp spellStats run execute if items entity @p[tag=p5,tag=embrittleO] container.* damaged_anvil[minecraft:custom_name={"text":"Embrittle","bold":true,"color":"dark_green","italic":false}] run clear @a[tag=p5]
execute if score Spell_Points_P5 Spell_Points >= embrittleSp spellStats run execute if items entity @p[tag=p5,tag=embrittleO] container.* damaged_anvil[minecraft:custom_name={"text":"Embrittle","bold":true,"color":"dark_green","italic":false}] run scoreboard players operation Spell_Points_P5 Spell_Points -= embrittleSp spellStats
execute if score Spell_Points_P5 Spell_Points >= embrittleSp spellStats run execute if items entity @p[tag=p5,tag=embrittleO] container.* damaged_anvil[minecraft:custom_name={"text":"Embrittle","bold":true,"color":"dark_green","italic":false}] run effect clear @a[tag=p5] water_breathing

execute if items entity @p[tag=p5,tag=!embrittleO] container.* damaged_anvil[minecraft:custom_name={"text":"Embrittle","bold":true,"color":"dark_green","italic":false}] run tellraw @a[tag=p5] ["Sorry, you don't own this spell."]
execute if items entity @p[tag=p5,tag=!embrittleO] container.* damaged_anvil[minecraft:custom_name={"text":"Embrittle","bold":true,"color":"dark_green","italic":false}] run clear @a[tag=p5]


#Embiggen Select P5
execute if score Spell_Points_P5 Spell_Points >= embiggenSp spellStats run execute if items entity @p[tag=p5,tag=embiggenO] container.* pufferfish[minecraft:custom_name={"text":"Embiggen","bold":true,"color":"dark_green","italic":false}] run tag @p[tag=p5] add embiggen
execute if score Spell_Points_P5 Spell_Points >= embiggenSp spellStats run execute if items entity @p[tag=p5,tag=embiggenO] container.* pufferfish[minecraft:custom_name={"text":"Embiggen","bold":true,"color":"dark_green","italic":false}] run tellraw @a[tag=p5] ["",{"selector":"@p[tag=p5]"}," picked Embiggen."]
execute if score Spell_Points_P5 Spell_Points < embiggenSp spellStats run execute if items entity @p[tag=p5,tag=embiggenO] container.* pufferfish[minecraft:custom_name={"text":"Embiggen","bold":true,"color":"dark_green","italic":false}] run tellraw @a[tag=p5] ["",{"selector":"@p[tag=p5]"}," You dont have enough spell points to equip this spell."]
execute if score Spell_Points_P5 Spell_Points < embiggenSp spellStats run execute if items entity @p[tag=p5,tag=embiggenO] container.* pufferfish[minecraft:custom_name={"text":"Embiggen","bold":true,"color":"dark_green","italic":false}] run clear @a[tag=p5]
execute if score Spell_Points_P5 Spell_Points >= embiggenSp spellStats run execute if items entity @p[tag=p5,tag=embiggenO] container.* pufferfish[minecraft:custom_name={"text":"Embiggen","bold":true,"color":"dark_green","italic":false}] run scoreboard players operation Spell_Points_P5 Spell_Points -= embiggenSp spellStats
execute if score Spell_Points_P5 Spell_Points >= embiggenSp spellStats run execute if items entity @p[tag=p5,tag=embiggenO] container.* pufferfish[minecraft:custom_name={"text":"Embiggen","bold":true,"color":"dark_green","italic":false}] run effect clear @a[tag=p5] water_breathing

execute if items entity @p[tag=p5,tag=!embiggenO] container.* pufferfish[minecraft:custom_name={"text":"Embiggen","bold":true,"color":"dark_green","italic":false}] run tellraw @a[tag=p5] ["Sorry, you don't own this spell."]
execute if items entity @p[tag=p5,tag=!embiggenO] container.* pufferfish[minecraft:custom_name={"text":"Embiggen","bold":true,"color":"dark_green","italic":false}] run clear @a[tag=p5]




#Immolate Select P5
execute if score Spell_Points_P5 Spell_Points >= immolateSp spellStats run execute if items entity @p[tag=p5,tag=immolateO] container.* blaze_powder[minecraft:custom_name={"text":"Immolate","bold":true,"color":"blue","italic":false}] run tag @p[tag=p5] add immolate
execute if score Spell_Points_P5 Spell_Points >= immolateSp spellStats run execute if items entity @p[tag=p5,tag=immolateO] container.* blaze_powder[minecraft:custom_name={"text":"Immolate","bold":true,"color":"blue","italic":false}] run tellraw @a[tag=p5] ["",{"selector":"@p[tag=p5]"}," picked Immolate."]
execute if score Spell_Points_P5 Spell_Points < immolateSp spellStats run execute if items entity @p[tag=p5,tag=immolateO] container.* blaze_powder[minecraft:custom_name={"text":"Immolate","bold":true,"color":"blue","italic":false}] run tellraw @a[tag=p5] ["",{"selector":"@p[tag=p5]"}," You dont have enough spell points to equip this spell."]
execute if score Spell_Points_P5 Spell_Points < immolateSp spellStats run execute if items entity @p[tag=p5,tag=immolateO] container.* blaze_powder[minecraft:custom_name={"text":"Immolate","bold":true,"color":"blue","italic":false}] run clear @a[tag=p5]
execute if score Spell_Points_P5 Spell_Points >= immolateSp spellStats run execute if items entity @p[tag=p5,tag=immolateO] container.* blaze_powder[minecraft:custom_name={"text":"Immolate","bold":true,"color":"blue","italic":false}] run scoreboard players operation Spell_Points_P5 Spell_Points -= immolateSp spellStats
execute if score Spell_Points_P5 Spell_Points >= immolateSp spellStats run execute if items entity @p[tag=p5,tag=immolateO] container.* blaze_powder[minecraft:custom_name={"text":"Immolate","bold":true,"color":"blue","italic":false}] run effect clear @a[tag=p5] water_breathing

execute if items entity @p[tag=p5,tag=!immolateO] container.* blaze_powder[minecraft:custom_name={"text":"Immolate","bold":true,"color":"blue","italic":false}] run tellraw @a[tag=p5] ["Sorry, you don't own this spell."]
execute if items entity @p[tag=p5,tag=!immolateO] container.* blaze_powder[minecraft:custom_name={"text":"Immolate","bold":true,"color":"blue","italic":false}] run clear @a[tag=p5]



#Evil Eye Select P5
execute if score Spell_Points_P5 Spell_Points >= evilEyeSp spellStats run execute if items entity @p[tag=p5,tag=evileyeO] container.* spider_eye[minecraft:custom_name={"text":"Evil Eye","bold":true,"color":"blue","italic":false}] run tag @p[tag=p5] add evileye
execute if score Spell_Points_P5 Spell_Points >= evilEyeSp spellStats run execute if items entity @p[tag=p5,tag=evileyeO] container.* spider_eye[minecraft:custom_name={"text":"Evil Eye","bold":true,"color":"blue","italic":false}] run tellraw @a[tag=p5] ["",{"selector":"@p[tag=p5]"}," picked Evil Eye."]
execute if score Spell_Points_P5 Spell_Points < evilEyeSp spellStats run execute if items entity @p[tag=p5,tag=evileyeO] container.* spider_eye[minecraft:custom_name={"text":"Evil Eye","bold":true,"color":"blue","italic":false}] run tellraw @a[tag=p5] ["",{"selector":"@p[tag=p5]"}," You dont have enough spell points to equip this spell."]
execute if score Spell_Points_P5 Spell_Points < evilEyeSp spellStats run execute if items entity @p[tag=p5,tag=evileyeO] container.* spider_eye[minecraft:custom_name={"text":"Evil Eye","bold":true,"color":"blue","italic":false}] run clear @a[tag=p5]
execute if score Spell_Points_P5 Spell_Points >= evilEyeSp spellStats run execute if items entity @p[tag=p5,tag=evileyeO] container.* spider_eye[minecraft:custom_name={"text":"Evil Eye","bold":true,"color":"blue","italic":false}] run scoreboard players operation Spell_Points_P5 Spell_Points -= evilEyeSp spellStats
execute if score Spell_Points_P5 Spell_Points >= evilEyeSp spellStats run execute if items entity @p[tag=p5,tag=evileyeO] container.* spider_eye[minecraft:custom_name={"text":"Evil Eye","bold":true,"color":"blue","italic":false}] run effect clear @a[tag=p5] water_breathing

execute if items entity @p[tag=p5,tag=!evileyeO] container.* spider_eye[minecraft:custom_name={"text":"Evil Eye","bold":true,"color":"blue","italic":false}] run tellraw @a[tag=p5] ["Sorry, you don't own this spell."]
execute if items entity @p[tag=p5,tag=!evileyeO] container.* spider_eye[minecraft:custom_name={"text":"Evil Eye","bold":true,"color":"blue","italic":false}] run clear @a[tag=p5]




#Protector's Rune Select P5
execute if score Spell_Points_P5 Spell_Points >= protectorsRuneSp spellStats run execute if items entity @p[tag=p5,tag=protectorsruneO] container.* chiseled_tuff[minecraft:custom_name={"text":"Protector's Rune","bold":true,"color":"blue","italic":false}] run tag @p[tag=p5] add protectorsrune
execute if score Spell_Points_P5 Spell_Points >= protectorsRuneSp spellStats run execute if items entity @p[tag=p5,tag=protectorsruneO] container.* chiseled_tuff[minecraft:custom_name={"text":"Protector's Rune","bold":true,"color":"blue","italic":false}] run tellraw @a[tag=p5] ["",{"selector":"@p[tag=p5]"}," picked Protector's Rune."]
execute if score Spell_Points_P5 Spell_Points < protectorsRuneSp spellStats run execute if items entity @p[tag=p5,tag=protectorsruneO] container.* chiseled_tuff[minecraft:custom_name={"text":"Protector's Rune","bold":true,"color":"blue","italic":false}] run tellraw @a[tag=p5] ["",{"selector":"@p[tag=p5]"}," You dont have enough spell points to equip this spell."]
execute if score Spell_Points_P5 Spell_Points < protectorsRuneSp spellStats run execute if items entity @p[tag=p5,tag=protectorsruneO] container.* chiseled_tuff[minecraft:custom_name={"text":"Protector's Rune","bold":true,"color":"blue","italic":false}] run clear @a[tag=p5]
execute if score Spell_Points_P5 Spell_Points >= protectorsRuneSp spellStats run execute if items entity @p[tag=p5,tag=protectorsruneO] container.* chiseled_tuff[minecraft:custom_name={"text":"Protector's Rune","bold":true,"color":"blue","italic":false}] run scoreboard players operation Spell_Points_P5 Spell_Points -= protectorsRuneSp spellStats
execute if score Spell_Points_P5 Spell_Points >= protectorsRuneSp spellStats run execute if items entity @p[tag=p5,tag=protectorsruneO] container.* chiseled_tuff[minecraft:custom_name={"text":"Protector's Rune","bold":true,"color":"blue","italic":false}] run effect clear @a[tag=p5] water_breathing

execute if items entity @p[tag=p5,tag=!protectorsruneO] container.* chiseled_tuff[minecraft:custom_name={"text":"Protector's Rune","bold":true,"color":"blue","italic":false}] run tellraw @a[tag=p5] ["Sorry, you don't own this spell."]
execute if items entity @p[tag=p5,tag=!protectorsruneO] container.* chiseled_tuff[minecraft:custom_name={"text":"Protector's Rune","bold":true,"color":"blue","italic":false}] run clear @a[tag=p5]




#Miracle Select P5
execute if score Spell_Points_P5 Spell_Points >= miracleSp spellStats run execute if items entity @p[tag=p5,tag=miracleO] container.* beacon[minecraft:custom_name={"text":"Miracle","bold":true,"color":"blue","italic":false}] run tag @p[tag=p5] add miracle
execute if score Spell_Points_P5 Spell_Points >= miracleSp spellStats run execute if items entity @p[tag=p5,tag=miracleO] container.* beacon[minecraft:custom_name={"text":"Miracle","bold":true,"color":"blue","italic":false}] run tellraw @a[tag=p5] ["",{"selector":"@p[tag=p5]"}," picked Miracle."]
execute if score Spell_Points_P5 Spell_Points < miracleSp spellStats run execute if items entity @p[tag=p5,tag=miracleO] container.* beacon[minecraft:custom_name={"text":"Miracle","bold":true,"color":"blue","italic":false}] run tellraw @a[tag=p5] ["",{"selector":"@p[tag=p5]"}," You dont have enough spell points to equip this spell."]
execute if score Spell_Points_P5 Spell_Points < miracleSp spellStats run execute if items entity @p[tag=p5,tag=miracleO] container.* beacon[minecraft:custom_name={"text":"Miracle","bold":true,"color":"blue","italic":false}] run clear @a[tag=p5]
execute if score Spell_Points_P5 Spell_Points >= miracleSp spellStats run execute if items entity @p[tag=p5,tag=miracleO] container.* beacon[minecraft:custom_name={"text":"Miracle","bold":true,"color":"blue","italic":false}] run scoreboard players operation Spell_Points_P5 Spell_Points -= miracleSp spellStats
execute if score Spell_Points_P5 Spell_Points >= miracleSp spellStats run execute if items entity @p[tag=p5,tag=miracleO] container.* beacon[minecraft:custom_name={"text":"Miracle","bold":true,"color":"blue","italic":false}] run effect clear @a[tag=p5] water_breathing

execute if items entity @p[tag=p5,tag=!miracleO] container.* beacon[minecraft:custom_name={"text":"Miracle","bold":true,"color":"blue","italic":false}] run tellraw @a[tag=p5] ["Sorry, you don't own this spell."]
execute if items entity @p[tag=p5,tag=!miracleO] container.* beacon[minecraft:custom_name={"text":"Miracle","bold":true,"color":"blue","italic":false}] run clear @a[tag=p5]


#Miasma Select P5
execute if score Spell_Points_P5 Spell_Points >= miasmaSp spellStats run execute if items entity @p[tag=p5,tag=miasmaO] container.* sculk_vein[minecraft:custom_name={"text":"Miasma","bold":true,"color":"blue","italic":false}] run tag @p[tag=p5] add miasma
execute if score Spell_Points_P5 Spell_Points >= miasmaSp spellStats run execute if items entity @p[tag=p5,tag=miasmaO] container.* sculk_vein[minecraft:custom_name={"text":"Miasma","bold":true,"color":"blue","italic":false}] run tellraw @a[tag=p5] ["",{"selector":"@p[tag=p5]"}," picked Miasma."]
execute if score Spell_Points_P5 Spell_Points < miasmaSp spellStats run execute if items entity @p[tag=p5,tag=miasmaO] container.* sculk_vein[minecraft:custom_name={"text":"Miasma","bold":true,"color":"blue","italic":false}] run tellraw @a[tag=p5] ["",{"selector":"@p[tag=p5]"}," You dont have enough spell points to equip this spell."]
execute if score Spell_Points_P5 Spell_Points < miasmaSp spellStats run execute if items entity @p[tag=p5,tag=miasmaO] container.* sculk_vein[minecraft:custom_name={"text":"Miasma","bold":true,"color":"blue","italic":false}] run clear @a[tag=p5]
execute if score Spell_Points_P5 Spell_Points >= miasmaSp spellStats run execute if items entity @p[tag=p5,tag=miasmaO] container.* sculk_vein[minecraft:custom_name={"text":"Miasma","bold":true,"color":"blue","italic":false}] run scoreboard players operation Spell_Points_P5 Spell_Points -= miasmaSp spellStats
execute if score Spell_Points_P5 Spell_Points >= miasmaSp spellStats run execute if items entity @p[tag=p5,tag=miasmaO] container.* sculk_vein[minecraft:custom_name={"text":"Miasma","bold":true,"color":"blue","italic":false}] run effect clear @a[tag=p5] water_breathing

execute if items entity @p[tag=p5,tag=!miasmaO] container.* sculk_vein[minecraft:custom_name={"text":"Miasma","bold":true,"color":"blue","italic":false}] run tellraw @a[tag=p5] ["Sorry, you don't own this spell."]
execute if items entity @p[tag=p5,tag=!miasmaO] container.* sculk_vein[minecraft:custom_name={"text":"Miasma","bold":true,"color":"blue","italic":false}] run clear @a[tag=p5]


#Ward Select P5
execute if score Spell_Points_P5 Spell_Points >= wardSp spellStats run execute if items entity @p[tag=p5,tag=wardO] container.* blue_stained_glass[minecraft:custom_name={"text":"Ward","bold":true,"color":"blue","italic":false}] run tag @p[tag=p5] add ward
execute if score Spell_Points_P5 Spell_Points >= wardSp spellStats run execute if items entity @p[tag=p5,tag=wardO] container.* blue_stained_glass[minecraft:custom_name={"text":"Ward","bold":true,"color":"blue","italic":false}] run tellraw @a[tag=p5] ["",{"selector":"@p[tag=p5]"}," picked Ward."]
execute if score Spell_Points_P5 Spell_Points < wardSp spellStats run execute if items entity @p[tag=p5,tag=wardO] container.* blue_stained_glass[minecraft:custom_name={"text":"Ward","bold":true,"color":"blue","italic":false}] run tellraw @a[tag=p5] ["",{"selector":"@p[tag=p5]"}," You dont have enough spell points to equip this spell."]
execute if score Spell_Points_P5 Spell_Points < wardSp spellStats run execute if items entity @p[tag=p5,tag=wardO] container.* blue_stained_glass[minecraft:custom_name={"text":"Ward","bold":true,"color":"blue","italic":false}] run clear @a[tag=p5]
execute if score Spell_Points_P5 Spell_Points >= wardSp spellStats run execute if items entity @p[tag=p5,tag=wardO] container.* blue_stained_glass[minecraft:custom_name={"text":"Ward","bold":true,"color":"blue","italic":false}] run scoreboard players operation Spell_Points_P5 Spell_Points -= wardSp spellStats
execute if score Spell_Points_P5 Spell_Points >= wardSp spellStats run execute if items entity @p[tag=p5,tag=wardO] container.* blue_stained_glass[minecraft:custom_name={"text":"Ward","bold":true,"color":"blue","italic":false}] run effect clear @a[tag=p5] water_breathing

execute if items entity @p[tag=p5,tag=!wardO] container.* blue_stained_glass[minecraft:custom_name={"text":"Ward","bold":true,"color":"blue","italic":false}] run tellraw @a[tag=p5] ["Sorry, you don't own this spell."]
execute if items entity @p[tag=p5,tag=!wardO] container.* blue_stained_glass[minecraft:custom_name={"text":"Ward","bold":true,"color":"blue","italic":false}] run clear @a[tag=p5]

#Blizzard Select P5
execute if score Spell_Points_P5 Spell_Points >= blizzardSp spellStats run execute if items entity @p[tag=p5,tag=blizzardO] container.* blue_ice[minecraft:custom_name={"text":"Blizzard","bold":true,"color":"blue","italic":false}] run tag @p[tag=p5] add blizzard
execute if score Spell_Points_P5 Spell_Points >= blizzardSp spellStats run execute if items entity @p[tag=p5,tag=blizzardO] container.* blue_ice[minecraft:custom_name={"text":"Blizzard","bold":true,"color":"blue","italic":false}] run tellraw @a[tag=p5] ["",{"selector":"@p[tag=p5]"}," picked Blizzard."]
execute if score Spell_Points_P5 Spell_Points < blizzardSp spellStats run execute if items entity @p[tag=p5,tag=blizzardO] container.* blue_ice[minecraft:custom_name={"text":"Blizzard","bold":true,"color":"blue","italic":false}] run tellraw @a[tag=p5] ["",{"selector":"@p[tag=p5]"}," You dont have enough spell points to equip this spell."]
execute if score Spell_Points_P5 Spell_Points < blizzardSp spellStats run execute if items entity @p[tag=p5,tag=blizzardO] container.* blue_ice[minecraft:custom_name={"text":"Blizzard","bold":true,"color":"blue","italic":false}] run clear @a[tag=p5]
execute if score Spell_Points_P5 Spell_Points >= blizzardSp spellStats run execute if items entity @p[tag=p5,tag=blizzardO] container.* blue_ice[minecraft:custom_name={"text":"Blizzard","bold":true,"color":"blue","italic":false}] run scoreboard players operation Spell_Points_P5 Spell_Points -= blizzardSp spellStats
execute if score Spell_Points_P5 Spell_Points >= blizzardSp spellStats run execute if items entity @p[tag=p5,tag=blizzardO] container.* blue_ice[minecraft:custom_name={"text":"Blizzard","bold":true,"color":"blue","italic":false}] run effect clear @a[tag=p5] water_breathing

execute if items entity @p[tag=p5,tag=!blizzardO] container.* blue_ice[minecraft:custom_name={"text":"Blizzard","bold":true,"color":"blue","italic":false}] run tellraw @a[tag=p5] ["Sorry, you don't own this spell."]
execute if items entity @p[tag=p5,tag=!blizzardO] container.* blue_ice[minecraft:custom_name={"text":"Blizzard","bold":true,"color":"blue","italic":false}] run clear @a[tag=p5]

#Plague Select P5
execute if score Spell_Points_P5 Spell_Points >= plagueSp spellStats run execute if items entity @p[tag=p5,tag=plagueO] container.* fermented_spider_eye[minecraft:custom_name={"text":"Plague","bold":true,"color":"dark_purple","italic":false}] run tag @p[tag=p5] add plague
execute if score Spell_Points_P5 Spell_Points >= plagueSp spellStats run execute if items entity @p[tag=p5,tag=plagueO] container.* fermented_spider_eye[minecraft:custom_name={"text":"Plague","bold":true,"color":"dark_purple","italic":false}] run tellraw @a[tag=p5] ["",{"selector":"@p[tag=p5]"}," picked Plague."]
execute if score Spell_Points_P5 Spell_Points < plagueSp spellStats run execute if items entity @p[tag=p5,tag=plagueO] container.* fermented_spider_eye[minecraft:custom_name={"text":"Plague","bold":true,"color":"dark_purple","italic":false}] run tellraw @a[tag=p5] ["",{"selector":"@p[tag=p5]"}," You dont have enough spell points to equip this spell."]
execute if score Spell_Points_P5 Spell_Points < plagueSp spellStats run execute if items entity @p[tag=p5,tag=plagueO] container.* fermented_spider_eye[minecraft:custom_name={"text":"Plague","bold":true,"color":"dark_purple","italic":false}] run clear @a[tag=p5]
execute if score Spell_Points_P5 Spell_Points >= plagueSp spellStats run execute if items entity @p[tag=p5,tag=plagueO] container.* fermented_spider_eye[minecraft:custom_name={"text":"Plague","bold":true,"color":"dark_purple","italic":false}] run scoreboard players operation Spell_Points_P5 Spell_Points -= plagueSp spellStats
execute if score Spell_Points_P5 Spell_Points >= plagueSp spellStats run execute if items entity @p[tag=p5,tag=plagueO] container.* fermented_spider_eye[minecraft:custom_name={"text":"Plague","bold":true,"color":"dark_purple","italic":false}] run effect clear @a[tag=p5] water_breathing

execute if items entity @p[tag=p5,tag=!plagueO] container.* fermented_spider_eye[minecraft:custom_name={"text":"Plague","bold":true,"color":"dark_purple","italic":false}] run tellraw @a[tag=p5] ["Sorry, you don't own this spell."]
execute if items entity @p[tag=p5,tag=!plagueO] container.* fermented_spider_eye[minecraft:custom_name={"text":"Plague","bold":true,"color":"dark_purple","italic":false}] run clear @a[tag=p5]

#Second Wind Select P5
execute if score Spell_Points_P5 Spell_Points >= secondWindSp spellStats run execute if items entity @p[tag=p5,tag=secondwindO] container.* feather[minecraft:custom_name={"text":"Second Wind","bold":true,"color":"dark_purple","italic":false}] run tag @p[tag=p5] add secondwind
execute if score Spell_Points_P5 Spell_Points >= secondWindSp spellStats run execute if items entity @p[tag=p5,tag=secondwindO] container.* feather[minecraft:custom_name={"text":"Second Wind","bold":true,"color":"dark_purple","italic":false}] run tellraw @a[tag=p5] ["",{"selector":"@p[tag=p5]"}," picked Second Wind."]
execute if score Spell_Points_P5 Spell_Points < secondWindSp spellStats run execute if items entity @p[tag=p5,tag=secondwindO] container.* feather[minecraft:custom_name={"text":"Second Wind","bold":true,"color":"dark_purple","italic":false}] run tellraw @a[tag=p5] ["",{"selector":"@p[tag=p5]"}," You dont have enough spell points to equip this spell."]
execute if score Spell_Points_P5 Spell_Points < secondWindSp spellStats run execute if items entity @p[tag=p5,tag=secondwindO] container.* feather[minecraft:custom_name={"text":"Second Wind","bold":true,"color":"dark_purple","italic":false}] run clear @a[tag=p5]
execute if score Spell_Points_P5 Spell_Points >= secondWindSp spellStats run execute if items entity @p[tag=p5,tag=secondwindO] container.* feather[minecraft:custom_name={"text":"Second Wind","bold":true,"color":"dark_purple","italic":false}] run scoreboard players operation Spell_Points_P5 Spell_Points -= secondWindSp spellStats
execute if score Spell_Points_P5 Spell_Points >= secondWindSp spellStats run execute if items entity @p[tag=p5,tag=secondwindO] container.* feather[minecraft:custom_name={"text":"Second Wind","bold":true,"color":"dark_purple","italic":false}] run effect clear @a[tag=p5] water_breathing

execute if items entity @p[tag=p5,tag=!secondwindO] container.* feather[minecraft:custom_name={"text":"Second Wind","bold":true,"color":"dark_purple","italic":false}] run tellraw @a[tag=p5] ["Sorry, you don't own this spell."]
execute if items entity @p[tag=p5,tag=!secondwindO] container.* feather[minecraft:custom_name={"text":"Second Wind","bold":true,"color":"dark_purple","italic":false}] run clear @a[tag=p5]
#Witches Brew Select P5
execute if score Spell_Points_P5 Spell_Points >= witchesBrewSp spellStats run execute if items entity @p[tag=p5,tag=witchesbrewO] container.* minecraft:cauldron[minecraft:custom_name={"text":"Witches Brew","bold":true,"color":"dark_purple","italic":false}] run tag @p[tag=p5] add witchesbrew
execute if score Spell_Points_P5 Spell_Points >= witchesBrewSp spellStats run execute if items entity @p[tag=p5,tag=witchesbrewO] container.* minecraft:cauldron[minecraft:custom_name={"text":"Witches Brew","bold":true,"color":"dark_purple","italic":false}] run tellraw @a[tag=p5] ["",{"selector":"@p[tag=p5]"}," picked Witches Brew."]
execute if score Spell_Points_P5 Spell_Points < witchesBrewSp spellStats run execute if items entity @p[tag=p5,tag=witchesbrewO] container.* minecraft:cauldron[minecraft:custom_name={"text":"Witches Brew","bold":true,"color":"dark_purple","italic":false}] run tellraw @a[tag=p5] ["",{"selector":"@p[tag=p5]"}," You dont have enough spell points to equip this spell."]
execute if score Spell_Points_P5 Spell_Points < witchesBrewSp spellStats run execute if items entity @p[tag=p5,tag=witchesbrewO] container.* minecraft:cauldron[minecraft:custom_name={"text":"Witches Brew","bold":true,"color":"dark_purple","italic":false}] run clear @a[tag=p5]
execute if score Spell_Points_P5 Spell_Points >= witchesBrewSp spellStats run execute if items entity @p[tag=p5,tag=witchesbrewO] container.* minecraft:cauldron[minecraft:custom_name={"text":"Witches Brew","bold":true,"color":"dark_purple","italic":false}] run scoreboard players operation Spell_Points_P5 Spell_Points -= witchesBrewSp spellStats
execute if score Spell_Points_P5 Spell_Points >= witchesBrewSp spellStats run execute if items entity @p[tag=p5,tag=witchesbrewO] container.* minecraft:cauldron[minecraft:custom_name={"text":"Witches Brew","bold":true,"color":"dark_purple","italic":false}] run effect clear @a[tag=p5] water_breathing

execute if items entity @p[tag=p5,tag=!witchesbrewO] container.* minecraft:cauldron[minecraft:custom_name={"text":"Witches Brew","bold":true,"color":"dark_purple","italic":false}] run tellraw @a[tag=p5] ["Sorry, you don't own this spell."]
execute if items entity @p[tag=p5,tag=!witchesbrewO] container.* minecraft:cauldron[minecraft:custom_name={"text":"Witches Brew","bold":true,"color":"dark_purple","italic":false}] run clear @a[tag=p5]



#Font of Wisdom Select P5
execute if score Spell_Points_P5 Spell_Points >= fontOfWisdomSp spellStats run execute if items entity @p[tag=p5,tag=fontofwisdomO] container.* minecraft:enchanted_book[minecraft:custom_name={"text":"Font of Wisdom","bold":true,"color":"dark_purple","italic":false}] run tag @p[tag=p5] add fontofwisdom
execute if score Spell_Points_P5 Spell_Points >= fontOfWisdomSp spellStats run execute if items entity @p[tag=p5,tag=fontofwisdomO] container.* minecraft:enchanted_book[minecraft:custom_name={"text":"Font of Wisdom","bold":true,"color":"dark_purple","italic":false}] run tellraw @a[tag=p5] ["",{"selector":"@p[tag=p5]"}," picked Font of Wisdom."]
execute if score Spell_Points_P5 Spell_Points < fontOfWisdomSp spellStats run execute if items entity @p[tag=p5,tag=fontofwisdomO] container.* minecraft:enchanted_book[minecraft:custom_name={"text":"Font of Wisdom","bold":true,"color":"dark_purple","italic":false}] run tellraw @a[tag=p5] ["",{"selector":"@p[tag=p5]"}," You dont have enough spell points to equip this spell."]
execute if score Spell_Points_P5 Spell_Points < fontOfWisdomSp spellStats run execute if items entity @p[tag=p5,tag=fontofwisdomO] container.* minecraft:enchanted_book[minecraft:custom_name={"text":"Font of Wisdom","bold":true,"color":"dark_purple","italic":false}] run clear @a[tag=p5]
execute if score Spell_Points_P5 Spell_Points >= fontOfWisdomSp spellStats run execute if items entity @p[tag=p5,tag=fontofwisdomO] container.* minecraft:enchanted_book[minecraft:custom_name={"text":"Font of Wisdom","bold":true,"color":"dark_purple","italic":false}] run scoreboard players operation Spell_Points_P5 Spell_Points -= fontOfWisdomSp spellStats
execute if score Spell_Points_P5 Spell_Points >= fontOfWisdomSp spellStats run execute if items entity @p[tag=p5,tag=fontofwisdomO] container.* minecraft:enchanted_book[minecraft:custom_name={"text":"Font of Wisdom","bold":true,"color":"dark_purple","italic":false}] run effect clear @a[tag=p5] water_breathing

execute if items entity @p[tag=p5,tag=!fontofwisdomO] container.* minecraft:enchanted_book[minecraft:custom_name={"text":"Font of Wisdom","bold":true,"color":"dark_purple","italic":false}] run tellraw @a[tag=p5] ["Sorry, you don't own this spell."]
execute if items entity @p[tag=p5,tag=!fontofwisdomO] container.* minecraft:enchanted_book[minecraft:custom_name={"text":"Font of Wisdom","bold":true,"color":"dark_purple","italic":false}] run clear @a[tag=p5]

#Fountain of Youth Select P5
execute if score Spell_Points_P5 Spell_Points >= fountainOfYouthSp spellStats run execute if items entity @p[tag=p5,tag=fountainofyouthO] container.* minecraft:potion[minecraft:custom_name={"text":"Fountain of Youth","bold":true,"color":"dark_purple","italic":false}] run tag @p[tag=p5] add fountainofyouth
execute if score Spell_Points_P5 Spell_Points >= fountainOfYouthSp spellStats run execute if items entity @p[tag=p5,tag=fountainofyouthO] container.* minecraft:potion[minecraft:custom_name={"text":"Fountain of Youth","bold":true,"color":"dark_purple","italic":false}] run tellraw @a[tag=p5] ["",{"selector":"@p[tag=p5]"}," picked Fountain of Youth."]
execute if score Spell_Points_P5 Spell_Points < fountainOfYouthSp spellStats run execute if items entity @p[tag=p5,tag=fountainofyouthO] container.* minecraft:potion[minecraft:custom_name={"text":"Fountain of Youth","bold":true,"color":"dark_purple","italic":false}] run tellraw @a[tag=p5] ["",{"selector":"@p[tag=p5]"}," You dont have enough spell points to equip this spell."]
execute if score Spell_Points_P5 Spell_Points < fountainOfYouthSp spellStats run execute if items entity @p[tag=p5,tag=fountainofyouthO] container.* minecraft:potion[minecraft:custom_name={"text":"Fountain of Youth","bold":true,"color":"dark_purple","italic":false}] run clear @a[tag=p5]
execute if score Spell_Points_P5 Spell_Points >= fountainOfYouthSp spellStats run execute if items entity @p[tag=p5,tag=fountainofyouthO] container.* minecraft:potion[minecraft:custom_name={"text":"Fountain of Youth","bold":true,"color":"dark_purple","italic":false}] run scoreboard players operation Spell_Points_P5 Spell_Points -= fountainOfYouthSp spellStats
execute if score Spell_Points_P5 Spell_Points >= fountainOfYouthSp spellStats run execute if items entity @p[tag=p5,tag=fountainofyouthO] container.* minecraft:potion[minecraft:custom_name={"text":"Fountain of Youth","bold":true,"color":"dark_purple","italic":false}] run effect clear @a[tag=p5] water_breathing

execute if items entity @p[tag=p5,tag=!fountainofyouthO] container.* minecraft:potion[minecraft:custom_name={"text":"Fountain of Youth","bold":true,"color":"dark_purple","italic":false}] run tellraw @a[tag=p5] ["Sorry, you don't own this spell."]
execute if items entity @p[tag=p5,tag=!fountainofyouthO] container.* minecraft:potion[minecraft:custom_name={"text":"Fountain of Youth","bold":true,"color":"dark_purple","italic":false}] run clear @a[tag=p5]


#Dragonforge Select P5
execute if score Spell_Points_P5 Spell_Points >= dragonforgeSp spellStats run execute if items entity @p[tag=p5,tag=dragonforgeO] container.* minecraft:dragon_head[minecraft:custom_name={"text":"Dragonforge","bold":true,"color":"dark_purple","italic":false}] run tag @p[tag=p5] add dragonforge
execute if score Spell_Points_P5 Spell_Points >= dragonforgeSp spellStats run execute if items entity @p[tag=p5,tag=dragonforgeO] container.* minecraft:dragon_head[minecraft:custom_name={"text":"Dragonforge","bold":true,"color":"dark_purple","italic":false}] run tellraw @a[tag=p5] ["",{"selector":"@p[tag=p5]"}," picked Dragonforge."]
execute if score Spell_Points_P5 Spell_Points < dragonforgeSp spellStats run execute if items entity @p[tag=p5,tag=dragonforgeO] container.* minecraft:dragon_head[minecraft:custom_name={"text":"Dragonforge","bold":true,"color":"dark_purple","italic":false}] run tellraw @a[tag=p5] ["",{"selector":"@p[tag=p5]"}," You dont have enough spell points to equip this spell."]
execute if score Spell_Points_P5 Spell_Points < dragonforgeSp spellStats run execute if items entity @p[tag=p5,tag=dragonforgeO] container.* minecraft:dragon_head[minecraft:custom_name={"text":"Dragonforge","bold":true,"color":"dark_purple","italic":false}] run clear @a[tag=p5]
execute if score Spell_Points_P5 Spell_Points >= dragonforgeSp spellStats run execute if items entity @p[tag=p5,tag=dragonforgeO] container.* minecraft:dragon_head[minecraft:custom_name={"text":"Dragonforge","bold":true,"color":"dark_purple","italic":false}] run scoreboard players operation Spell_Points_P5 Spell_Points -= dragonforgeSp spellStats
execute if score Spell_Points_P5 Spell_Points >= dragonforgeSp spellStats run execute if items entity @p[tag=p5,tag=dragonforgeO] container.* minecraft:dragon_head[minecraft:custom_name={"text":"Dragonforge","bold":true,"color":"dark_purple","italic":false}] run effect clear @a[tag=p5] water_breathing

execute if items entity @p[tag=p5,tag=!dragonforgeO] container.* minecraft:dragon_head[minecraft:custom_name={"text":"Dragonforge","bold":true,"color":"dark_purple","italic":false}] run tellraw @a[tag=p5] ["Sorry, you don't own this spell."]
execute if items entity @p[tag=p5,tag=!dragonforgeO] container.* minecraft:dragon_head[minecraft:custom_name={"text":"Dragonforge","bold":true,"color":"dark_purple","italic":false}] run clear @a[tag=p5]

#Overclock Select P5
execute if score Spell_Points_P5 Spell_Points >= overclockSp spellStats run execute if items entity @p[tag=p5,tag=overclockO] container.* minecraft:heavy_core[minecraft:custom_name={"text":"Overclock","bold":true,"color":"dark_purple","italic":false}] run tag @p[tag=p5] add overclock
execute if score Spell_Points_P5 Spell_Points >= overclockSp spellStats run execute if items entity @p[tag=p5,tag=overclockO] container.* minecraft:heavy_core[minecraft:custom_name={"text":"Overclock","bold":true,"color":"dark_purple","italic":false}] run tellraw @a[tag=p5] ["",{"selector":"@p[tag=p5]"}," picked Overclock."]
execute if score Spell_Points_P5 Spell_Points < overclockSp spellStats run execute if items entity @p[tag=p5,tag=overclockO] container.* minecraft:heavy_core[minecraft:custom_name={"text":"Overclock","bold":true,"color":"dark_purple","italic":false}] run tellraw @a[tag=p5] ["",{"selector":"@p[tag=p5]"}," You dont have enough spell points to equip this spell."]
execute if score Spell_Points_P5 Spell_Points < overclockSp spellStats run execute if items entity @p[tag=p5,tag=overclockO] container.* minecraft:heavy_core[minecraft:custom_name={"text":"Overclock","bold":true,"color":"dark_purple","italic":false}] run clear @a[tag=p5]
execute if score Spell_Points_P5 Spell_Points >= overclockSp spellStats run execute if items entity @p[tag=p5,tag=overclockO] container.* minecraft:heavy_core[minecraft:custom_name={"text":"Overclock","bold":true,"color":"dark_purple","italic":false}] run scoreboard players operation Spell_Points_P5 Spell_Points -= overclockSp spellStats
execute if score Spell_Points_P5 Spell_Points >= overclockSp spellStats run execute if items entity @p[tag=p5,tag=overclockO] container.* minecraft:heavy_core[minecraft:custom_name={"text":"Overclock","bold":true,"color":"dark_purple","italic":false}] run effect clear @a[tag=p5] water_breathing

execute if items entity @p[tag=p5,tag=!overclockO] container.* minecraft:heavy_core[minecraft:custom_name={"text":"Overclock","bold":true,"color":"dark_purple","italic":false}] run tellraw @a[tag=p5] ["Sorry, you don't own this spell."]
execute if items entity @p[tag=p5,tag=!overclockO] container.* minecraft:heavy_core[minecraft:custom_name={"text":"Overclock","bold":true,"color":"dark_purple","italic":false}] run clear @a[tag=p5]


#Shifting Shadows Select P5
execute if score Spell_Points_P5 Spell_Points >= shiftingShadowsSp spellStats run execute if items entity @p[tag=p5,tag=shiftingshadowsO] container.* minecraft:echo_shard[minecraft:custom_name={"text":"Shifting Shadows","bold":true,"color":"gold","italic":false}] run tag @p[tag=p5] add shiftingshadows
execute if score Spell_Points_P5 Spell_Points >= shiftingShadowsSp spellStats run execute if items entity @p[tag=p5,tag=shiftingshadowsO] container.* minecraft:echo_shard[minecraft:custom_name={"text":"Shifting Shadows","bold":true,"color":"gold","italic":false}] run tellraw @a[tag=p5] ["",{"selector":"@p[tag=p5]"}," picked Shifting Shadows."]
execute if score Spell_Points_P5 Spell_Points < shiftingShadowsSp spellStats run execute if items entity @p[tag=p5,tag=shiftingshadowsO] container.* minecraft:echo_shard[minecraft:custom_name={"text":"Shifting Shadows","bold":true,"color":"gold","italic":false}] run tellraw @a[tag=p5] ["",{"selector":"@p[tag=p5]"}," You dont have enough spell points to equip this spell."]
execute if score Spell_Points_P5 Spell_Points < shiftingShadowsSp spellStats run execute if items entity @p[tag=p5,tag=shiftingshadowsO] container.* minecraft:echo_shard[minecraft:custom_name={"text":"Shifting Shadows","bold":true,"color":"gold","italic":false}] run clear @a[tag=p5]
execute if score Spell_Points_P5 Spell_Points >= shiftingShadowsSp spellStats run execute if items entity @p[tag=p5,tag=shiftingshadowsO] container.* minecraft:echo_shard[minecraft:custom_name={"text":"Shifting Shadows","bold":true,"color":"gold","italic":false}] run scoreboard players operation Spell_Points_P5 Spell_Points -= shiftingShadowsSp spellStats
execute if score Spell_Points_P5 Spell_Points >= shiftingShadowsSp spellStats run execute if items entity @p[tag=p5,tag=shiftingshadowsO] container.* minecraft:echo_shard[minecraft:custom_name={"text":"Shifting Shadows","bold":true,"color":"gold","italic":false}] run effect clear @a[tag=p5] water_breathing

execute if items entity @p[tag=p5,tag=!shiftingshadowsO] container.* minecraft:echo_shard[minecraft:custom_name={"text":"Shifting Shadows","bold":true,"color":"gold","italic":false}] run tellraw @a[tag=p5] ["Sorry, you don't own this spell."]
execute if items entity @p[tag=p5,tag=!shiftingshadowsO] container.* minecraft:echo_shard[minecraft:custom_name={"text":"Shifting Shadows","bold":true,"color":"gold","italic":false}] run clear @a[tag=p5]


#Chrono Warp Select P5
execute if score Spell_Points_P5 Spell_Points >= chronoWarpSp spellStats run execute if items entity @p[tag=p5,tag=chronowarpO] container.* minecraft:clock[minecraft:custom_name={"text":"Chrono Warp","bold":true,"color":"gold","italic":false}] run tag @p[tag=p5] add chronowarp
execute if score Spell_Points_P5 Spell_Points >= chronoWarpSp spellStats run execute if items entity @p[tag=p5,tag=chronowarpO] container.* minecraft:clock[minecraft:custom_name={"text":"Chrono Warp","bold":true,"color":"gold","italic":false}] run tellraw @a[tag=p5] ["",{"selector":"@p[tag=p5]"}," picked Chrono Warp."]
execute if score Spell_Points_P5 Spell_Points < chronoWarpSp spellStats run execute if items entity @p[tag=p5,tag=chronowarpO] container.* minecraft:clock[minecraft:custom_name={"text":"Chrono Warp","bold":true,"color":"gold","italic":false}] run tellraw @a[tag=p5] ["",{"selector":"@p[tag=p5]"}," You dont have enough spell points to equip this spell."]
execute if score Spell_Points_P5 Spell_Points < chronoWarpSp spellStats run execute if items entity @p[tag=p5,tag=chronowarpO] container.* minecraft:clock[minecraft:custom_name={"text":"Chrono Warp","bold":true,"color":"gold","italic":false}] run clear @a[tag=p5]
execute if score Spell_Points_P5 Spell_Points >= chronoWarpSp spellStats run execute if items entity @p[tag=p5,tag=chronowarpO] container.* minecraft:clock[minecraft:custom_name={"text":"Chrono Warp","bold":true,"color":"gold","italic":false}] run scoreboard players operation Spell_Points_P5 Spell_Points -= chronoWarpSp spellStats
execute if score Spell_Points_P5 Spell_Points >= chronoWarpSp spellStats run execute if items entity @p[tag=p5,tag=chronowarpO] container.* minecraft:clock[minecraft:custom_name={"text":"Chrono Warp","bold":true,"color":"gold","italic":false}] run effect clear @a[tag=p5] water_breathing

execute if items entity @p[tag=p5,tag=!chronowarpO] container.* minecraft:clock[minecraft:custom_name={"text":"Chrono Warp","bold":true,"color":"gold","italic":false}] run tellraw @a[tag=p5] ["Sorry, you don't own this spell."]
execute if items entity @p[tag=p5,tag=!chronowarpO] container.* minecraft:clock[minecraft:custom_name={"text":"Chrono Warp","bold":true,"color":"gold","italic":false}] run clear @a[tag=p5]


#Healing Totem Select P5
execute if score Spell_Points_P5 Spell_Points >= healingTotemSp spellStats run execute if items entity @p[tag=p5,tag=healingtotemO] container.* minecraft:totem_of_undying[minecraft:custom_name={"text":"Healing Totem","bold":true,"color":"gold","italic":false}] run tag @p[tag=p5] add healingtotem
execute if score Spell_Points_P5 Spell_Points >= healingTotemSp spellStats run execute if items entity @p[tag=p5,tag=healingtotemO] container.* minecraft:totem_of_undying[minecraft:custom_name={"text":"Healing Totem","bold":true,"color":"gold","italic":false}] run tellraw @a[tag=p5] ["",{"selector":"@p[tag=p5]"}," picked Healing Totem."]
execute if score Spell_Points_P5 Spell_Points < healingTotemSp spellStats run execute if items entity @p[tag=p5,tag=healingtotemO] container.* minecraft:totem_of_undying[minecraft:custom_name={"text":"Healing Totem","bold":true,"color":"gold","italic":false}] run tellraw @a[tag=p5] ["",{"selector":"@p[tag=p5]"}," You dont have enough spell points to equip this spell."]
execute if score Spell_Points_P5 Spell_Points < healingTotemSp spellStats run execute if items entity @p[tag=p5,tag=healingtotemO] container.* minecraft:totem_of_undying[minecraft:custom_name={"text":"Healing Totem","bold":true,"color":"gold","italic":false}] run clear @a[tag=p5]
execute if score Spell_Points_P5 Spell_Points >= healingTotemSp spellStats run execute if items entity @p[tag=p5,tag=healingtotemO] container.* minecraft:totem_of_undying[minecraft:custom_name={"text":"Healing Totem","bold":true,"color":"gold","italic":false}] run scoreboard players operation Spell_Points_P5 Spell_Points -= healingTotemSp spellStats
execute if score Spell_Points_P5 Spell_Points >= healingTotemSp spellStats run execute if items entity @p[tag=p5,tag=healingtotemO] container.* minecraft:totem_of_undying[minecraft:custom_name={"text":"Healing Totem","bold":true,"color":"gold","italic":false}] run effect clear @a[tag=p5] water_breathing


execute if items entity @p[tag=p5,tag=!healingtotemO] container.* minecraft:totem_of_undying[minecraft:custom_name={"text":"Healing Totem","bold":true,"color":"gold","italic":false}] run tellraw @a[tag=p5] ["Sorry, you don't own this spell."]
execute if items entity @p[tag=p5,tag=!healingtotemO] container.* minecraft:totem_of_undying[minecraft:custom_name={"text":"Healing Totem","bold":true,"color":"gold","italic":false}] run clear @a[tag=p5]

#Life Leech Select P5
execute if score Spell_Points_P5 Spell_Points >= lifeLeechSp spellStats run execute if items entity @p[tag=p5,tag=lifeleechO] container.* minecraft:weeping_vines[minecraft:custom_name={"text":"Life Leech","bold":true,"color":"dark_purple","italic":false}] run tag @p[tag=p5] add lifeleech
execute if score Spell_Points_P5 Spell_Points >= lifeLeechSp spellStats run execute if items entity @p[tag=p5,tag=lifeleechO] container.* minecraft:weeping_vines[minecraft:custom_name={"text":"Life Leech","bold":true,"color":"dark_purple","italic":false}] run tellraw @a[tag=p5] ["",{"selector":"@p[tag=p5]"}," picked Life Leech."]
execute if score Spell_Points_P5 Spell_Points < lifeLeechSp spellStats run execute if items entity @p[tag=p5,tag=lifeleechO] container.* minecraft:weeping_vines[minecraft:custom_name={"text":"Life Leech","bold":true,"color":"dark_purple","italic":false}] run tellraw @a[tag=p5] ["",{"selector":"@p[tag=p5]"}," You dont have enough spell points to equip this spell."]
execute if score Spell_Points_P5 Spell_Points < lifeLeechSp spellStats run execute if items entity @p[tag=p5,tag=lifeleechO] container.* minecraft:weeping_vines[minecraft:custom_name={"text":"Life Leech","bold":true,"color":"dark_purple","italic":false}] run clear @a[tag=p5]
execute if score Spell_Points_P5 Spell_Points >= lifeLeechSp spellStats run execute if items entity @p[tag=p5,tag=lifeleechO] container.* minecraft:weeping_vines[minecraft:custom_name={"text":"Life Leech","bold":true,"color":"dark_purple","italic":false}] run scoreboard players operation Spell_Points_P5 Spell_Points -= lifeLeechSp spellStats
execute if score Spell_Points_P5 Spell_Points >= lifeLeechSp spellStats run execute if items entity @p[tag=p5,tag=lifeleechO] container.* minecraft:weeping_vines[minecraft:custom_name={"text":"Life Leech","bold":true,"color":"dark_purple","italic":false}] run effect clear @a[tag=p5] water_breathing


execute if items entity @p[tag=p5,tag=!lifeleechO] container.* minecraft:weeping_vines[minecraft:custom_name={"text":"Life Leech","bold":true,"color":"dark_purple","italic":false}] run tellraw @a[tag=p5] ["Sorry, you don't own this spell."]
execute if items entity @p[tag=p5,tag=!lifeleechO] container.* minecraft:weeping_vines[minecraft:custom_name={"text":"Life Leech","bold":true,"color":"dark_purple","italic":false}] run clear @a[tag=p5]

#Decimate Select P5
execute if score Spell_Points_P5 Spell_Points >= decimateSp spellStats run execute if items entity @p[tag=p5,tag=decimateO] container.* minecraft:pointed_dripstone[minecraft:custom_name={"text":"Decimate","bold":true,"color":"dark_purple","italic":false}] run tag @p[tag=p5] add decimate
execute if score Spell_Points_P5 Spell_Points >= decimateSp spellStats run execute if items entity @p[tag=p5,tag=decimateO] container.* minecraft:pointed_dripstone[minecraft:custom_name={"text":"Decimate","bold":true,"color":"dark_purple","italic":false}] run tellraw @a[tag=p5] ["",{"selector":"@p[tag=p5]"}," picked Decimate."]
execute if score Spell_Points_P5 Spell_Points < decimateSp spellStats run execute if items entity @p[tag=p5,tag=decimateO] container.* minecraft:pointed_dripstone[minecraft:custom_name={"text":"Decimate","bold":true,"color":"dark_purple","italic":false}] run tellraw @a[tag=p5] ["",{"selector":"@p[tag=p5]"}," You dont have enough spell points to equip this spell."]
execute if score Spell_Points_P5 Spell_Points < decimateSp spellStats run execute if items entity @p[tag=p5,tag=decimateO] container.* minecraft:pointed_dripstone[minecraft:custom_name={"text":"Decimate","bold":true,"color":"dark_purple","italic":false}] run clear @a[tag=p5]
execute if score Spell_Points_P5 Spell_Points >= decimateSp spellStats run execute if items entity @p[tag=p5,tag=decimateO] container.* minecraft:pointed_dripstone[minecraft:custom_name={"text":"Decimate","bold":true,"color":"dark_purple","italic":false}] run scoreboard players operation Spell_Points_P5 Spell_Points -= decimateSp spellStats
execute if score Spell_Points_P5 Spell_Points >= decimateSp spellStats run execute if items entity @p[tag=p5,tag=decimateO] container.* minecraft:pointed_dripstone[minecraft:custom_name={"text":"Decimate","bold":true,"color":"dark_purple","italic":false}] run effect clear @a[tag=p5] water_breathing


execute if items entity @p[tag=p5,tag=!decimateO] container.* minecraft:pointed_dripstone[minecraft:custom_name={"text":"Decimate","bold":true,"color":"dark_purple","italic":false}] run tellraw @a[tag=p5] ["Sorry, you don't own this spell."]
execute if items entity @p[tag=p5,tag=!decimateO] container.* minecraft:pointed_dripstone[minecraft:custom_name={"text":"Decimate","bold":true,"color":"dark_purple","italic":false}] run clear @a[tag=p5]

#Healing Rain Select P5
execute if score Spell_Points_P5 Spell_Points >= healingRainSp spellStats run execute if items entity @p[tag=p5,tag=healingrainO] container.* minecraft:ghast_tear[minecraft:custom_name={"text":"Healing Rain","bold":true,"color":"blue","italic":false}] run tag @p[tag=p5] add healingrain
execute if score Spell_Points_P5 Spell_Points >= healingRainSp spellStats run execute if items entity @p[tag=p5,tag=healingrainO] container.* minecraft:ghast_tear[minecraft:custom_name={"text":"Healing Rain","bold":true,"color":"blue","italic":false}] run tellraw @a[tag=p5] ["",{"selector":"@p[tag=p5]"}," picked Healing Rain."]
execute if score Spell_Points_P5 Spell_Points < healingRainSp spellStats run execute if items entity @p[tag=p5,tag=healingrainO] container.* minecraft:ghast_tear[minecraft:custom_name={"text":"Healing Rain","bold":true,"color":"blue","italic":false}] run tellraw @a[tag=p5] ["",{"selector":"@p[tag=p5]"}," You dont have enough spell points to equip this spell."]
execute if score Spell_Points_P5 Spell_Points < healingRainSp spellStats run execute if items entity @p[tag=p5,tag=healingrainO] container.* minecraft:ghast_tear[minecraft:custom_name={"text":"Healing Rain","bold":true,"color":"blue","italic":false}] run clear @a[tag=p5]
execute if score Spell_Points_P5 Spell_Points >= healingRainSp spellStats run execute if items entity @p[tag=p5,tag=healingrainO] container.* minecraft:ghast_tear[minecraft:custom_name={"text":"Healing Rain","bold":true,"color":"blue","italic":false}] run scoreboard players operation Spell_Points_P5 Spell_Points -= healingRainSp spellStats
execute if score Spell_Points_P5 Spell_Points >= healingRainSp spellStats run execute if items entity @p[tag=p5,tag=healingrainO] container.* minecraft:ghast_tear[minecraft:custom_name={"text":"Healing Rain","bold":true,"color":"blue","italic":false}] run effect clear @a[tag=p5] water_breathing


execute if items entity @p[tag=p5,tag=!healingrainO] container.* minecraft:ghast_tear[minecraft:custom_name={"text":"Healing Rain","bold":true,"color":"blue","italic":false}] run tellraw @a[tag=p5] ["Sorry, you don't own this spell."]
execute if items entity @p[tag=p5,tag=!healingrainO] container.* minecraft:ghast_tear[minecraft:custom_name={"text":"Healing Rain","bold":true,"color":"blue","italic":false}] run clear @a[tag=p5]


#Cannibalize Select P5
execute if score Spell_Points_P5 Spell_Points >= cannibalizeSp spellStats run execute if items entity @p[tag=p5,tag=cannibalizeO] container.* rotten_flesh[minecraft:custom_name={"text":"Cannibalize","bold":true,"color":"dark_green","italic":false}] run tag @p[tag=p5] add cannibalize
execute if score Spell_Points_P5 Spell_Points >= cannibalizeSp spellStats run execute if items entity @p[tag=p5,tag=cannibalizeO] container.* rotten_flesh[minecraft:custom_name={"text":"Cannibalize","bold":true,"color":"dark_green","italic":false}] run tellraw @a[tag=p5] ["",{"selector":"@p[tag=p5]"}," picked Cannibalize."]
execute if score Spell_Points_P5 Spell_Points < cannibalizeSp spellStats run execute if items entity @p[tag=p5,tag=cannibalizeO] container.* rotten_flesh[minecraft:custom_name={"text":"Cannibalize","bold":true,"color":"dark_green","italic":false}] run tellraw @a[tag=p5] ["",{"selector":"@p[tag=p5]"}," You dont have enough spell points to equip this spell."]
execute if score Spell_Points_P5 Spell_Points < cannibalizeSp spellStats run execute if items entity @p[tag=p5,tag=cannibalizeO] container.* rotten_flesh[minecraft:custom_name={"text":"Cannibalize","bold":true,"color":"dark_green","italic":false}] run clear @a[tag=p5]
execute if score Spell_Points_P5 Spell_Points >= cannibalizeSp spellStats run execute if items entity @p[tag=p5,tag=cannibalizeO] container.* rotten_flesh[minecraft:custom_name={"text":"Cannibalize","bold":true,"color":"dark_green","italic":false}] run scoreboard players operation Spell_Points_P5 Spell_Points -= cannibalizeSp spellStats
execute if score Spell_Points_P5 Spell_Points >= cannibalizeSp spellStats run execute if items entity @p[tag=p5,tag=cannibalizeO] container.* rotten_flesh[minecraft:custom_name={"text":"Cannibalize","bold":true,"color":"dark_green","italic":false}] run effect clear @a[tag=p5] water_breathing

execute if items entity @p[tag=p5,tag=!cannibalizeO] container.* rotten_flesh[minecraft:custom_name={"text":"Cannibalize","bold":true,"color":"dark_green","italic":false}] run tellraw @a[tag=p5] ["Sorry, you don't own this spell."]
execute if items entity @p[tag=p5,tag=!cannibalizeO] container.* rotten_flesh[minecraft:custom_name={"text":"Cannibalize","bold":true,"color":"dark_green","italic":false}] run clear @a[tag=p5]

#Slimed! Select P5
execute if score Spell_Points_P5 Spell_Points >= slimedSp spellStats run execute if items entity @p[tag=p5,tag=slimedO] container.* slime_ball[minecraft:custom_name={"text":"Slimed!","bold":true,"color":"dark_green","italic":false}] run tag @p[tag=p5] add slimed
execute if score Spell_Points_P5 Spell_Points >= slimedSp spellStats run execute if items entity @p[tag=p5,tag=slimedO] container.* slime_ball[minecraft:custom_name={"text":"Slimed!","bold":true,"color":"dark_green","italic":false}] run tellraw @a[tag=p5] ["",{"selector":"@p[tag=p5]"}," picked Slimed!"]
execute if score Spell_Points_P5 Spell_Points < slimedSp spellStats run execute if items entity @p[tag=p5,tag=slimedO] container.* slime_ball[minecraft:custom_name={"text":"Slimed!","bold":true,"color":"dark_green","italic":false}] run tellraw @a[tag=p5] ["",{"selector":"@p[tag=p5]"}," You dont have enough spell points to equip this spell."]
execute if score Spell_Points_P5 Spell_Points < slimedSp spellStats run execute if items entity @p[tag=p5,tag=slimedO] container.* slime_ball[minecraft:custom_name={"text":"Slimed!","bold":true,"color":"dark_green","italic":false}] run clear @a[tag=p5]
execute if score Spell_Points_P5 Spell_Points >= slimedSp spellStats run execute if items entity @p[tag=p5,tag=slimedO] container.* slime_ball[minecraft:custom_name={"text":"Slimed!","bold":true,"color":"dark_green","italic":false}] run scoreboard players operation Spell_Points_P5 Spell_Points -= slimedSp spellStats
execute if score Spell_Points_P5 Spell_Points >= slimedSp spellStats run execute if items entity @p[tag=p5,tag=slimedO] container.* slime_ball[minecraft:custom_name={"text":"Slimed!","bold":true,"color":"dark_green","italic":false}] run effect clear @a[tag=p5] water_breathing

execute if items entity @p[tag=p5,tag=!slimedO] container.* slime_ball[minecraft:custom_name={"text":"Slimed!","bold":true,"color":"dark_green","italic":false}] run tellraw @a[tag=p5] ["Sorry, you don't own this spell."]
execute if items entity @p[tag=p5,tag=!slimedO] container.* slime_ball[minecraft:custom_name={"text":"Slimed!","bold":true,"color":"dark_green","italic":false}] run clear @a[tag=p5]

#Vampire Mark Select P5
execute if score Spell_Points_P5 Spell_Points >= vampiremarkSp spellStats run execute if items entity @p[tag=p5,tag=vampiremarkO] container.* red_dye[minecraft:custom_name={"text":"Vampire Mark","bold":true,"color":"dark_green","italic":false}] run tag @p[tag=p5] add vampiremark
execute if score Spell_Points_P5 Spell_Points >= vampiremarkSp spellStats run execute if items entity @p[tag=p5,tag=vampiremarkO] container.* red_dye[minecraft:custom_name={"text":"Vampire Mark","bold":true,"color":"dark_green","italic":false}] run tellraw @a[tag=p5] ["",{"selector":"@p[tag=p5]"}," picked Vampire Mark."]
execute if score Spell_Points_P5 Spell_Points < vampiremarkSp spellStats run execute if items entity @p[tag=p5,tag=vampiremarkO] container.* red_dye[minecraft:custom_name={"text":"Vampire Mark","bold":true,"color":"dark_green","italic":false}] run tellraw @a[tag=p5] ["",{"selector":"@p[tag=p5]"}," You dont have enough spell points to equip this spell."]
execute if score Spell_Points_P5 Spell_Points < vampiremarkSp spellStats run execute if items entity @p[tag=p5,tag=vampiremarkO] container.* red_dye[minecraft:custom_name={"text":"Vampire Mark","bold":true,"color":"dark_green","italic":false}] run clear @a[tag=p5]
execute if score Spell_Points_P5 Spell_Points >= vampiremarkSp spellStats run execute if items entity @p[tag=p5,tag=vampiremarkO] container.* red_dye[minecraft:custom_name={"text":"Vampire Mark","bold":true,"color":"dark_green","italic":false}] run scoreboard players operation Spell_Points_P5 Spell_Points -= vampiremarkSp spellStats
execute if score Spell_Points_P5 Spell_Points >= vampiremarkSp spellStats run execute if items entity @p[tag=p5,tag=vampiremarkO] container.* red_dye[minecraft:custom_name={"text":"Vampire Mark","bold":true,"color":"dark_green","italic":false}] run effect clear @a[tag=p5] water_breathing



execute if items entity @p[tag=p5,tag=!vampiremarkO] container.* red_dye[minecraft:custom_name={"text":"Vampire Mark","bold":true,"color":"dark_green","italic":false}] run tellraw @a[tag=p5] ["Sorry, you don't own this spell."]
execute if items entity @p[tag=p5,tag=!vampiremarkO] container.* red_dye[minecraft:custom_name={"text":"Vampire Mark","bold":true,"color":"dark_green","italic":false}] run clear @a[tag=p5]

#Butchering Select P5
execute if score Spell_Points_P5 Spell_Points >= butcheringSp spellStats run execute if items entity @p[tag=p5,tag=butcheringO] container.* iron_axe[minecraft:custom_name={"text":"Butchering","bold":true,"color":"blue","italic":false}] run tag @p[tag=p5] add butchering
execute if score Spell_Points_P5 Spell_Points >= butcheringSp spellStats run execute if items entity @p[tag=p5,tag=butcheringO] container.* iron_axe[minecraft:custom_name={"text":"Butchering","bold":true,"color":"blue","italic":false}] run tellraw @a[tag=p5] ["",{"selector":"@p[tag=p5]"}," picked Butchering."]
execute if score Spell_Points_P5 Spell_Points < butcheringSp spellStats run execute if items entity @p[tag=p5,tag=butcheringO] container.* iron_axe[minecraft:custom_name={"text":"Butchering","bold":true,"color":"blue","italic":false}] run tellraw @a[tag=p5] ["",{"selector":"@p[tag=p5]"}," You dont have enough spell points to equip this spell."]
execute if score Spell_Points_P5 Spell_Points < butcheringSp spellStats run execute if items entity @p[tag=p5,tag=butcheringO] container.* iron_axe[minecraft:custom_name={"text":"Butchering","bold":true,"color":"blue","italic":false}] run clear @a[tag=p5]
execute if score Spell_Points_P5 Spell_Points >= butcheringSp spellStats run execute if items entity @p[tag=p5,tag=butcheringO] container.* iron_axe[minecraft:custom_name={"text":"Butchering","bold":true,"color":"blue","italic":false}] run scoreboard players operation Spell_Points_P5 Spell_Points -= butcheringSp spellStats
execute if score Spell_Points_P5 Spell_Points >= butcheringSp spellStats run execute if items entity @p[tag=p5,tag=butcheringO] container.* iron_axe[minecraft:custom_name={"text":"Butchering","bold":true,"color":"blue","italic":false}] run effect clear @a[tag=p5] water_breathing

execute if items entity @p[tag=p5,tag=!butcheringO] container.* iron_axe[minecraft:custom_name={"text":"Butchering","bold":true,"color":"blue","italic":false}] run tellraw @a[tag=p5] ["Sorry, you don't own this spell."]
execute if items entity @p[tag=p5,tag=!butcheringO] container.* iron_axe[minecraft:custom_name={"text":"Butchering","bold":true,"color":"blue","italic":false}] run clear @a[tag=p5]

#Will O' Wisp Select P5
execute if score Spell_Points_P5 Spell_Points >= willowispSp spellStats run execute if items entity @p[tag=p5,tag=willowispO] container.* weathered_copper_lantern[minecraft:custom_name={"text":"Will O' Wisp","bold":true,"color":"blue","italic":false}] run tag @p[tag=p5] add willowisp
execute if score Spell_Points_P5 Spell_Points >= willowispSp spellStats run execute if items entity @p[tag=p5,tag=willowispO] container.* weathered_copper_lantern[minecraft:custom_name={"text":"Will O' Wisp","bold":true,"color":"blue","italic":false}] run tellraw @a[tag=p5] ["",{"selector":"@p[tag=p5]"}," picked Will O' Wisp."]
execute if score Spell_Points_P5 Spell_Points < willowispSp spellStats run execute if items entity @p[tag=p5,tag=willowispO] container.* weathered_copper_lantern[minecraft:custom_name={"text":"Will O' Wisp","bold":true,"color":"blue","italic":false}] run tellraw @a[tag=p5] ["",{"selector":"@p[tag=p5]"}," You dont have enough spell points to equip this spell."]
execute if score Spell_Points_P5 Spell_Points < willowispSp spellStats run execute if items entity @p[tag=p5,tag=willowispO] container.* weathered_copper_lantern[minecraft:custom_name={"text":"Will O' Wisp","bold":true,"color":"blue","italic":false}] run clear @a[tag=p5]
execute if score Spell_Points_P5 Spell_Points >= willowispSp spellStats run execute if items entity @p[tag=p5,tag=willowispO] container.* weathered_copper_lantern[minecraft:custom_name={"text":"Will O' Wisp","bold":true,"color":"blue","italic":false}] run scoreboard players operation Spell_Points_P5 Spell_Points -= willowispSp spellStats
execute if score Spell_Points_P5 Spell_Points >= willowispSp spellStats run execute if items entity @p[tag=p5,tag=willowispO] container.* weathered_copper_lantern[minecraft:custom_name={"text":"Will O' Wisp","bold":true,"color":"blue","italic":false}] run effect clear @a[tag=p5] water_breathing

execute if items entity @p[tag=p5,tag=!willowispO] container.* weathered_copper_lantern[minecraft:custom_name={"text":"Will O' Wisp","bold":true,"color":"blue","italic":false}] run tellraw @a[tag=p5] ["Sorry, you don't own this spell."]
execute if items entity @p[tag=p5,tag=!willowispO] container.* weathered_copper_lantern[minecraft:custom_name={"text":"Will O' Wisp","bold":true,"color":"blue","italic":false}] run clear @a[tag=p5]

#Spider Ward Select P5
execute if score Spell_Points_P5 Spell_Points >= spiderwardSp spellStats run execute if items entity @p[tag=p5,tag=spiderwardO] container.* cobweb[minecraft:custom_name={"text":"Spider Ward","bold":true,"color":"blue","italic":false}] run tag @p[tag=p5] add spiderward
execute if score Spell_Points_P5 Spell_Points >= spiderwardSp spellStats run execute if items entity @p[tag=p5,tag=spiderwardO] container.* cobweb[minecraft:custom_name={"text":"Spider Ward","bold":true,"color":"blue","italic":false}] run tellraw @a[tag=p5] ["",{"selector":"@p[tag=p5]"}," picked Spider Ward."]
execute if score Spell_Points_P5 Spell_Points < spiderwardSp spellStats run execute if items entity @p[tag=p5,tag=spiderwardO] container.* cobweb[minecraft:custom_name={"text":"Spider Ward","bold":true,"color":"blue","italic":false}] run tellraw @a[tag=p5] ["",{"selector":"@p[tag=p5]"}," You dont have enough spell points to equip this spell."]
execute if score Spell_Points_P5 Spell_Points < spiderwardSp spellStats run execute if items entity @p[tag=p5,tag=spiderwardO] container.* cobweb[minecraft:custom_name={"text":"Spider Ward","bold":true,"color":"blue","italic":false}] run clear @a[tag=p5]
execute if score Spell_Points_P5 Spell_Points >= spiderwardSp spellStats run execute if items entity @p[tag=p5,tag=spiderwardO] container.* cobweb[minecraft:custom_name={"text":"Spider Ward","bold":true,"color":"blue","italic":false}] run scoreboard players operation Spell_Points_P5 Spell_Points -= spiderwardSp spellStats
execute if score Spell_Points_P5 Spell_Points >= spiderwardSp spellStats run execute if items entity @p[tag=p5,tag=spiderwardO] container.* cobweb[minecraft:custom_name={"text":"Spider Ward","bold":true,"color":"blue","italic":false}] run effect clear @a[tag=p5] water_breathing

execute if items entity @p[tag=p5,tag=!spiderwardO] container.* cobweb[minecraft:custom_name={"text":"Spider Ward","bold":true,"color":"blue","italic":false}] run tellraw @a[tag=p5] ["Sorry, you don't own this spell."]
execute if items entity @p[tag=p5,tag=!spiderwardO] container.* cobweb[minecraft:custom_name={"text":"Spider Ward","bold":true,"color":"blue","italic":false}] run clear @a[tag=p5]

#Dark Ritual Select P5
execute if score Spell_Points_P5 Spell_Points >= darkritualSp spellStats run execute if items entity @p[tag=p5,tag=darkritualO] container.* red_candle[minecraft:custom_name={"text":"Dark Ritual","bold":true,"color":"dark_purple","italic":false}] run tag @p[tag=p5] add darkritual
execute if score Spell_Points_P5 Spell_Points >= darkritualSp spellStats run execute if items entity @p[tag=p5,tag=darkritualO] container.* red_candle[minecraft:custom_name={"text":"Dark Ritual","bold":true,"color":"dark_purple","italic":false}] run tellraw @a[tag=p5] ["",{"selector":"@p[tag=p5]"}," picked Dark Ritual."]
execute if score Spell_Points_P5 Spell_Points < darkritualSp spellStats run execute if items entity @p[tag=p5,tag=darkritualO] container.* red_candle[minecraft:custom_name={"text":"Dark Ritual","bold":true,"color":"dark_purple","italic":false}] run tellraw @a[tag=p5] ["",{"selector":"@p[tag=p5]"}," You dont have enough spell points to equip this spell."]
execute if score Spell_Points_P5 Spell_Points < darkritualSp spellStats run execute if items entity @p[tag=p5,tag=darkritualO] container.* red_candle[minecraft:custom_name={"text":"Dark Ritual","bold":true,"color":"dark_purple","italic":false}] run clear @a[tag=p5]
execute if score Spell_Points_P5 Spell_Points >= darkritualSp spellStats run execute if items entity @p[tag=p5,tag=darkritualO] container.* red_candle[minecraft:custom_name={"text":"Dark Ritual","bold":true,"color":"dark_purple","italic":false}] run scoreboard players operation Spell_Points_P5 Spell_Points -= darkritualSp spellStats
execute if score Spell_Points_P5 Spell_Points >= darkritualSp spellStats run execute if items entity @p[tag=p5,tag=darkritualO] container.* red_candle[minecraft:custom_name={"text":"Dark Ritual","bold":true,"color":"dark_purple","italic":false}] run effect clear @a[tag=p5] water_breathing

execute if items entity @p[tag=p5,tag=!darkritualO] container.* red_candle[minecraft:custom_name={"text":"Dark Ritual","bold":true,"color":"dark_purple","italic":false}] run tellraw @a[tag=p5] ["Sorry, you don't own this spell."]
execute if items entity @p[tag=p5,tag=!darkritualO] container.* red_candle[minecraft:custom_name={"text":"Dark Ritual","bold":true,"color":"dark_purple","italic":false}] run clear @a[tag=p5]

#Raise Dead Select P5
execute if score Spell_Points_P5 Spell_Points >= raisedeadSp spellStats run execute if items entity @p[tag=p5,tag=raisedeadO] container.* bone[minecraft:custom_name={"text":"Raise Dead","bold":true,"color":"dark_purple","italic":false}] run tag @p[tag=p5] add raisedead
execute if score Spell_Points_P5 Spell_Points >= raisedeadSp spellStats run execute if items entity @p[tag=p5,tag=raisedeadO] container.* bone[minecraft:custom_name={"text":"Raise Dead","bold":true,"color":"dark_purple","italic":false}] run tellraw @a[tag=p5] ["",{"selector":"@p[tag=p5]"}," picked Raise Dead."]
execute if score Spell_Points_P5 Spell_Points < raisedeadSp spellStats run execute if items entity @p[tag=p5,tag=raisedeadO] container.* bone[minecraft:custom_name={"text":"Raise Dead","bold":true,"color":"dark_purple","italic":false}] run tellraw @a[tag=p5] ["",{"selector":"@p[tag=p5]"}," You dont have enough spell points to equip this spell."]
execute if score Spell_Points_P5 Spell_Points < raisedeadSp spellStats run execute if items entity @p[tag=p5,tag=raisedeadO] container.* bone[minecraft:custom_name={"text":"Raise Dead","bold":true,"color":"dark_purple","italic":false}] run clear @a[tag=p5]
execute if score Spell_Points_P5 Spell_Points >= raisedeadSp spellStats run execute if items entity @p[tag=p5,tag=raisedeadO] container.* bone[minecraft:custom_name={"text":"Raise Dead","bold":true,"color":"dark_purple","italic":false}] run scoreboard players operation Spell_Points_P5 Spell_Points -= raisedeadSp spellStats
execute if score Spell_Points_P5 Spell_Points >= raisedeadSp spellStats run execute if items entity @p[tag=p5,tag=raisedeadO] container.* bone[minecraft:custom_name={"text":"Raise Dead","bold":true,"color":"dark_purple","italic":false}] run effect clear @a[tag=p5] water_breathing

execute if items entity @p[tag=p5,tag=!raisedeadO] container.* bone[minecraft:custom_name={"text":"Raise Dead","bold":true,"color":"dark_purple","italic":false}] run tellraw @a[tag=p5] ["Sorry, you don't own this spell."]
execute if items entity @p[tag=p5,tag=!raisedeadO] container.* bone[minecraft:custom_name={"text":"Raise Dead","bold":true,"color":"dark_purple","italic":false}] run clear @a[tag=p5]

#Curse of Bats Select P5
execute if score Spell_Points_P5 Spell_Points >= curseofbatsSp spellStats run execute if items entity @p[tag=p5,tag=curseofbatsO] container.* elytra[minecraft:custom_name={"text":"Curse of Bats","bold":true,"color":"gold","italic":false}] run tag @p[tag=p5] add curseofbats
execute if score Spell_Points_P5 Spell_Points >= curseofbatsSp spellStats run execute if items entity @p[tag=p5,tag=curseofbatsO] container.* elytra[minecraft:custom_name={"text":"Curse of Bats","bold":true,"color":"gold","italic":false}] run tellraw @a[tag=p5] ["",{"selector":"@p[tag=p5]"}," picked Curse of Bats."]
execute if score Spell_Points_P5 Spell_Points < curseofbatsSp spellStats run execute if items entity @p[tag=p5,tag=curseofbatsO] container.* elytra[minecraft:custom_name={"text":"Curse of Bats","bold":true,"color":"gold","italic":false}] run tellraw @a[tag=p5] ["",{"selector":"@p[tag=p5]"}," You dont have enough spell points to equip this spell."]
execute if score Spell_Points_P5 Spell_Points < curseofbatsSp spellStats run execute if items entity @p[tag=p5,tag=curseofbatsO] container.* elytra[minecraft:custom_name={"text":"Curse of Bats","bold":true,"color":"gold","italic":false}] run clear @a[tag=p5]
execute if score Spell_Points_P5 Spell_Points >= curseofbatsSp spellStats run execute if items entity @p[tag=p5,tag=curseofbatsO] container.* elytra[minecraft:custom_name={"text":"Curse of Bats","bold":true,"color":"gold","italic":false}] run scoreboard players operation Spell_Points_P5 Spell_Points -= curseofbatsSp spellStats
execute if score Spell_Points_P5 Spell_Points >= curseofbatsSp spellStats run execute if items entity @p[tag=p5,tag=curseofbatsO] container.* elytra[minecraft:custom_name={"text":"Curse of Bats","bold":true,"color":"gold","italic":false}] run effect clear @a[tag=p5] water_breathing

execute if items entity @p[tag=p5,tag=!curseofbatsO] container.* elytra[minecraft:custom_name={"text":"Curse of Bats","bold":true,"color":"gold","italic":false}] run tellraw @a[tag=p5] ["Sorry, you don't own this spell."]
execute if items entity @p[tag=p5,tag=!curseofbatsO] container.* elytra[minecraft:custom_name={"text":"Curse of Bats","bold":true,"color":"gold","italic":false}] run clear @a[tag=p5]

#Monkey's Paw Select P5
execute if score Spell_Points_P5 Spell_Points >= monkeyspawSp spellStats run execute if items entity @p[tag=p5,tag=monkeyspawO] container.* dried_kelp[minecraft:custom_name={"text":"Monkey's Paw","bold":true,"color":"gold","italic":false}] run tag @p[tag=p5] add monkeyspaw
execute if score Spell_Points_P5 Spell_Points >= monkeyspawSp spellStats run execute if items entity @p[tag=p5,tag=monkeyspawO] container.* dried_kelp[minecraft:custom_name={"text":"Monkey's Paw","bold":true,"color":"gold","italic":false}] run tellraw @a[tag=p5] ["",{"selector":"@p[tag=p5]"}," picked Monkey's Paw."]
execute if score Spell_Points_P5 Spell_Points < monkeyspawSp spellStats run execute if items entity @p[tag=p5,tag=monkeyspawO] container.* dried_kelp[minecraft:custom_name={"text":"Monkey's Paw","bold":true,"color":"gold","italic":false}] run tellraw @a[tag=p5] ["",{"selector":"@p[tag=p5]"}," You dont have enough spell points to equip this spell."]
execute if score Spell_Points_P5 Spell_Points < monkeyspawSp spellStats run execute if items entity @p[tag=p5,tag=monkeyspawO] container.* dried_kelp[minecraft:custom_name={"text":"Monkey's Paw","bold":true,"color":"gold","italic":false}] run clear @a[tag=p5]
execute if score Spell_Points_P5 Spell_Points >= monkeyspawSp spellStats run execute if items entity @p[tag=p5,tag=monkeyspawO] container.* dried_kelp[minecraft:custom_name={"text":"Monkey's Paw","bold":true,"color":"gold","italic":false}] run scoreboard players operation Spell_Points_P5 Spell_Points -= monkeyspawSp spellStats
execute if score Spell_Points_P5 Spell_Points >= monkeyspawSp spellStats run execute if items entity @p[tag=p5,tag=monkeyspawO] container.* dried_kelp[minecraft:custom_name={"text":"Monkey's Paw","bold":true,"color":"gold","italic":false}] run effect clear @a[tag=p5] water_breathing

execute if items entity @p[tag=p5,tag=!monkeyspawO] container.* dried_kelp[minecraft:custom_name={"text":"Monkey's Paw","bold":true,"color":"gold","italic":false}] run tellraw @a[tag=p5] ["Sorry, you don't own this spell."]
execute if items entity @p[tag=p5,tag=!monkeyspawO] container.* dried_kelp[minecraft:custom_name={"text":"Monkey's Paw","bold":true,"color":"gold","italic":false}] run clear @a[tag=p5]

execute if score spellpick3 drafts > Spell_Points_P5 Spell_Points run clear @a[tag=p5]

execute if score Spell_Points_P5 Spell_Points matches 0 run execute if score Spell_Points_P6 Spell_Points matches 0 run function chthree:game3start