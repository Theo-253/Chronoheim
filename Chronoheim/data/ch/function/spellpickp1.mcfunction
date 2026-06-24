#Spell Point Giver
item replace entity @p[tag=p1] container.0 with barrier[minecraft:custom_name="Skip Spell Picking",food={can_always_eat:1b,nutrition:1,saturation:1},consumable={consume_seconds:0.1,animation:none,sound:"block.amethyst_block.break",has_consume_particles:0b,on_consume_effects:[{type:apply_effects,effects:[{id:water_breathing,duration:1,amplifier:0,show_particles:0b}]}]}]
item replace entity @p[tag=p2] container.0 with barrier[minecraft:custom_name="Skip Spell Picking",food={can_always_eat:1b,nutrition:1,saturation:1},consumable={consume_seconds:0.1,animation:none,sound:"block.amethyst_block.break",has_consume_particles:0b,on_consume_effects:[{type:apply_effects,effects:[{id:water_breathing,duration:1,amplifier:0,show_particles:0b}]}]}]
execute if score character# slot7 matches 1.. run execute if score character# slot3 matches 1.. run execute if score Spell_Points_P1 Spell_Points matches -1 run scoreboard players set Spell_Points_P1 Spell_Points 7
execute if score character# slot7 matches 1.. run execute if score character# slot3 matches 1.. run execute if score Spell_Points_P2 Spell_Points matches -1 run scoreboard players set Spell_Points_P2 Spell_Points 7
execute if score character# slot7 matches 1.. run execute if score character# slot3 matches 1.. run execute if score Spell_Points_P1 Spell_Points matches -2 run scoreboard players set Spell_Points_P1 Spell_Points 8
execute if score character# slot7 matches 1.. run execute if score character# slot3 matches 1.. run execute if score Spell_Points_P1 Spell_Points matches -3 run scoreboard players set Spell_Points_P1 Spell_Points 9
execute if score character# slot7 matches 1.. run execute if score character# slot3 matches 1.. run execute if score Spell_Points_P2 Spell_Points matches -2 run scoreboard players set Spell_Points_P2 Spell_Points 8
execute if score character# slot7 matches 1.. run execute if score character# slot3 matches 1.. run execute if score Spell_Points_P2 Spell_Points matches -3 run scoreboard players set Spell_Points_P2 Spell_Points 9


scoreboard players operation spellpick1 drafts = Spell_Points_P1 Spell_Points

#Fireball Select P1
execute if score Spell_Points_P1 Spell_Points >= fireballSp spellStats run execute if items entity @p[tag=p1] container.* fire_charge[minecraft:custom_name={"text":"Fireball","bold":true,"color":"gray","italic":false}] run tag @p[tag=p1] add fireball
execute if score Spell_Points_P1 Spell_Points >= fireballSp spellStats run execute if items entity @p[tag=p1] container.* fire_charge[minecraft:custom_name={"text":"Fireball","bold":true,"color":"gray","italic":false}] run tellraw @a[tag=p1] ["",{"selector":"@p[tag=p1]"}," picked Fireball."]
execute if score Spell_Points_P1 Spell_Points < fireballSp spellStats run execute if items entity @p[tag=p1] container.* fire_charge[minecraft:custom_name={"text":"Fireball","bold":true,"color":"gray","italic":false}] run tellraw @a[tag=p1] ["",{"selector":"@p[tag=p1]"}," You dont have enough spell points to equip this spell."]
execute if score Spell_Points_P1 Spell_Points < fireballSp spellStats run execute if items entity @p[tag=p1] container.* fire_charge[minecraft:custom_name={"text":"Fireball","bold":true,"color":"gray","italic":false}] run clear @a[tag=p1]
execute if score Spell_Points_P1 Spell_Points >= fireballSp spellStats run execute if items entity @p[tag=p1] container.* fire_charge[minecraft:custom_name={"text":"Fireball","bold":true,"color":"gray","italic":false}] run scoreboard players operation Spell_Points_P1 Spell_Points -= fireballSp spellStats
execute if score Spell_Points_P1 Spell_Points >= fireballSp spellStats run execute if items entity @p[tag=p1] container.* fire_charge[minecraft:custom_name={"text":"Fireball","bold":true,"color":"gray","italic":false}] run effect clear @a[tag=p1] water_breathing


#Heal Select P1
execute if score Spell_Points_P1 Spell_Points >= healSp spellStats run execute if items entity @p[tag=p1] container.* emerald[minecraft:custom_name={"text":"Heal","bold":true,"color":"gray","italic":false}] run tag @p[tag=p1] add heal
execute if score Spell_Points_P1 Spell_Points >= healSp spellStats run execute if items entity @p[tag=p1] container.* emerald[minecraft:custom_name={"text":"Heal","bold":true,"color":"gray","italic":false}] run tellraw @a[tag=p1] ["",{"selector":"@p[tag=p1]"}," picked Heal."]
execute if score Spell_Points_P1 Spell_Points < healSp spellStats run execute if items entity @p[tag=p1] container.* emerald[minecraft:custom_name={"text":"Heal","bold":true,"color":"gray","italic":false}] run tellraw @a[tag=p1] ["",{"selector":"@p[tag=p1]"}," You dont have enough spell points to equip this spell."]
execute if score Spell_Points_P1 Spell_Points < healSp spellStats run execute if items entity @p[tag=p1] container.* emerald[minecraft:custom_name={"text":"Heal","bold":true,"color":"gray","italic":false}] run clear @a[tag=p1]
execute if score Spell_Points_P1 Spell_Points >= healSp spellStats run execute if items entity @p[tag=p1] container.* emerald[minecraft:custom_name={"text":"Heal","bold":true,"color":"gray","italic":false}] run scoreboard players operation Spell_Points_P1 Spell_Points -= healSp spellStats
execute if score Spell_Points_P1 Spell_Points >= healSp spellStats run execute if items entity @p[tag=p1] container.* emerald[minecraft:custom_name={"text":"Heal","bold":true,"color":"gray","italic":false}] run effect clear @a[tag=p1] water_breathing


#Chain Lightning Select P1
execute if score Spell_Points_P1 Spell_Points >= chainLightningSp spellStats run execute if items entity @p[tag=p1] container.* lightning_rod[minecraft:custom_name={"text":"Chain Lightning","bold":true,"color":"gray","italic":false}] run tag @p[tag=p1] add chainlightning
execute if score Spell_Points_P1 Spell_Points >= chainLightningSp spellStats run execute if items entity @p[tag=p1] container.* lightning_rod[minecraft:custom_name={"text":"Chain Lightning","bold":true,"color":"gray","italic":false}] run tellraw @a[tag=p1] ["",{"selector":"@p[tag=p1]"}," picked Chain Lightning."]
execute if score Spell_Points_P1 Spell_Points < chainLightningSp spellStats run execute if items entity @p[tag=p1] container.* lightning_rod[minecraft:custom_name={"text":"Chain Lightning","bold":true,"color":"gray","italic":false}] run tellraw @a[tag=p1] ["",{"selector":"@p[tag=p1]"}," You dont have enough spell points to equip this spell."]
execute if score Spell_Points_P1 Spell_Points < chainLightningSp spellStats run execute if items entity @p[tag=p1] container.* lightning_rod[minecraft:custom_name={"text":"Chain Lightning","bold":true,"color":"gray","italic":false}] run clear @a[tag=p1]
execute if score Spell_Points_P1 Spell_Points >= chainLightningSp spellStats run execute if items entity @p[tag=p1] container.* lightning_rod[minecraft:custom_name={"text":"Chain Lightning","bold":true,"color":"gray","italic":false}] run scoreboard players operation Spell_Points_P1 Spell_Points -= chainLightningSp spellStats
execute if score Spell_Points_P1 Spell_Points >= chainLightningSp spellStats run execute if items entity @p[tag=p1] container.* lightning_rod[minecraft:custom_name={"text":"Chain Lightning","bold":true,"color":"gray","italic":false}] run effect clear @a[tag=p1] water_breathing



#Magic Missile! Magic Missile! I smite thee with Magic Missile! Lightning Select P1
execute if score Spell_Points_P1 Spell_Points >= magicMissileSp spellStats run execute if items entity @p[tag=p1,tag=magicmissileO] container.* spectral_arrow[minecraft:custom_name={"text":"Magic Missile","bold":true,"color":"dark_green","italic":false}] run tag @p[tag=p1] add magicmissile
execute if score Spell_Points_P1 Spell_Points >= magicMissileSp spellStats run execute if items entity @p[tag=p1,tag=magicmissileO] container.* spectral_arrow[minecraft:custom_name={"text":"Magic Missile","bold":true,"color":"dark_green","italic":false}] run tellraw @a[tag=p1] ["",{"selector":"@p[tag=p1]"}," picked Magic Missile."]
execute if score Spell_Points_P1 Spell_Points < magicMissileSp spellStats run execute if items entity @p[tag=p1,tag=magicmissileO] container.* spectral_arrow[minecraft:custom_name={"text":"Magic Missile","bold":true,"color":"dark_green","italic":false}] run tellraw @a[tag=p1] ["",{"selector":"@p[tag=p1]"}," You dont have enough spell points to equip this spell."]
execute if score Spell_Points_P1 Spell_Points < magicMissileSp spellStats run execute if items entity @p[tag=p1,tag=magicmissileO] container.* spectral_arrow[minecraft:custom_name={"text":"Magic Missile","bold":true,"color":"dark_green","italic":false}] run clear @a[tag=p1]
execute if score Spell_Points_P1 Spell_Points >= magicMissileSp spellStats run execute if items entity @p[tag=p1,tag=magicmissileO] container.* spectral_arrow[minecraft:custom_name={"text":"Magic Missile","bold":true,"color":"dark_green","italic":false}] run scoreboard players operation Spell_Points_P1 Spell_Points -= magicMissileSp spellStats
execute if score Spell_Points_P1 Spell_Points >= magicMissileSp spellStats run execute if items entity @p[tag=p1,tag=magicmissileO] container.* spectral_arrow[minecraft:custom_name={"text":"Magic Missile","bold":true,"color":"dark_green","italic":false}] run effect clear @a[tag=p1] water_breathing

execute if items entity @p[tag=p1,tag=!magicmissileO] container.* spectral_arrow[minecraft:custom_name={"text":"Magic Missile","bold":true,"color":"dark_green","italic":false}] run tellraw @a[tag=p1] ["Sorry, you don't own this spell."]
execute if items entity @p[tag=p1,tag=!magicmissileO] container.* spectral_arrow[minecraft:custom_name={"text":"Magic Missile","bold":true,"color":"dark_green","italic":false}] run clear @a[tag=p1]




#Ritual of Blood Select P1
execute if score Spell_Points_P1 Spell_Points >= ritualOfBloodSp spellStats run execute if items entity @p[tag=p1,tag=ritualofbloodO] container.* redstone[minecraft:custom_name={"text":"Ritual of Blood","bold":true,"color":"dark_green","italic":false}] run tag @p[tag=p1] add ritualofblood
execute if score Spell_Points_P1 Spell_Points >= ritualOfBloodSp spellStats run execute if items entity @p[tag=p1,tag=ritualofbloodO] container.* redstone[minecraft:custom_name={"text":"Ritual of Blood","bold":true,"color":"dark_green","italic":false}] run tellraw @a[tag=p1] ["",{"selector":"@p[tag=p1]"}," picked Ritual of Blood."]
execute if score Spell_Points_P1 Spell_Points < ritualOfBloodSp spellStats run execute if items entity @p[tag=p1,tag=ritualofbloodO] container.* redstone[minecraft:custom_name={"text":"Ritual of Blood","bold":true,"color":"dark_green","italic":false}] run tellraw @a[tag=p1] ["",{"selector":"@p[tag=p1]"}," You dont have enough spell points to equip this spell."]
execute if score Spell_Points_P1 Spell_Points < ritualOfBloodSp spellStats run execute if items entity @p[tag=p1,tag=ritualofbloodO] container.* redstone[minecraft:custom_name={"text":"Ritual of Blood","bold":true,"color":"dark_green","italic":false}] run clear @a[tag=p1]
execute if score Spell_Points_P1 Spell_Points >= ritualOfBloodSp spellStats run execute if items entity @p[tag=p1,tag=ritualofbloodO] container.* redstone[minecraft:custom_name={"text":"Ritual of Blood","bold":true,"color":"dark_green","italic":false}] run scoreboard players operation Spell_Points_P1 Spell_Points -= ritualOfBloodSp spellStats
execute if score Spell_Points_P1 Spell_Points >= ritualOfBloodSp spellStats run execute if items entity @p[tag=p1,tag=ritualofbloodO] container.* redstone[minecraft:custom_name={"text":"Ritual of Blood","bold":true,"color":"dark_green","italic":false}] run effect clear @a[tag=p1] water_breathing

execute if items entity @p[tag=p1,tag=!ritualofbloodO] container.* redstone[minecraft:custom_name={"text":"Ritual of Blood","bold":true,"color":"dark_green","italic":false}] run tellraw @a[tag=p1] ["Sorry, you don't own this spell."]
execute if items entity @p[tag=p1,tag=!ritualofbloodO] container.* redstone[minecraft:custom_name={"text":"Ritual of Blood","bold":true,"color":"dark_green","italic":false}] run clear @a[tag=p1]




#Frost Bolt Select P1
execute if score Spell_Points_P1 Spell_Points >= frostboltSp spellStats run execute if items entity @p[tag=p1,tag=frostboltO] container.* breeze_rod[minecraft:custom_name={"text":"Frostbolt","bold":true,"color":"dark_green","italic":false}] run tag @p[tag=p1] add frostbolt
execute if score Spell_Points_P1 Spell_Points >= frostboltSp spellStats run execute if items entity @p[tag=p1,tag=frostboltO] container.* breeze_rod[minecraft:custom_name={"text":"Frostbolt","bold":true,"color":"dark_green","italic":false}] run tellraw @a[tag=p1] ["",{"selector":"@p[tag=p1]"}," picked Frostbolt."]
execute if score Spell_Points_P1 Spell_Points < frostboltSp spellStats run execute if items entity @p[tag=p1,tag=frostboltO] container.* breeze_rod[minecraft:custom_name={"text":"Frostbolt","bold":true,"color":"dark_green","italic":false}] run tellraw @a[tag=p1] ["",{"selector":"@p[tag=p1]"}," You dont have enough spell points to equip this spell."]
execute if score Spell_Points_P1 Spell_Points < frostboltSp spellStats run execute if items entity @p[tag=p1,tag=frostboltO] container.* breeze_rod[minecraft:custom_name={"text":"Frostbolt","bold":true,"color":"dark_green","italic":false}] run clear @a[tag=p1]
execute if score Spell_Points_P1 Spell_Points >= frostboltSp spellStats run execute if items entity @p[tag=p1,tag=frostboltO] container.* breeze_rod[minecraft:custom_name={"text":"Frostbolt","bold":true,"color":"dark_green","italic":false}] run scoreboard players operation Spell_Points_P1 Spell_Points -= frostboltSp spellStats
execute if score Spell_Points_P1 Spell_Points >= frostboltSp spellStats run execute if items entity @p[tag=p1,tag=frostboltO] container.* breeze_rod[minecraft:custom_name={"text":"Frostbolt","bold":true,"color":"dark_green","italic":false}] run effect clear @a[tag=p1] water_breathing

execute if items entity @p[tag=p1,tag=!frostboltO] container.* breeze_rod[minecraft:custom_name={"text":"Frostbolt","bold":true,"color":"dark_green","italic":false}] run tellraw @a[tag=p1] ["Sorry, you don't own this spell."]
execute if items entity @p[tag=p1,tag=!frostboltO] container.* breeze_rod[minecraft:custom_name={"text":"Frostbolt","bold":true,"color":"dark_green","italic":false}] run clear @a[tag=p1]




#Meteor Select P1
execute if score Spell_Points_P1 Spell_Points >= meteorSp spellStats run execute if items entity @p[tag=p1,tag=meteorO] container.* dead_brain_coral_block[minecraft:custom_name={"text":"Meteor","bold":true,"color":"dark_green","italic":false}] run tag @p[tag=p1] add meteor
execute if score Spell_Points_P1 Spell_Points >= meteorSp spellStats run execute if items entity @p[tag=p1,tag=meteorO] container.* dead_brain_coral_block[minecraft:custom_name={"text":"Meteor","bold":true,"color":"dark_green","italic":false}] run tellraw @a[tag=p1] ["",{"selector":"@p[tag=p1]"}," picked Meteor."]
execute if score Spell_Points_P1 Spell_Points < meteorSp spellStats run execute if items entity @p[tag=p1,tag=meteorO] container.* dead_brain_coral_block[minecraft:custom_name={"text":"Meteor","bold":true,"color":"dark_green","italic":false}] run tellraw @a[tag=p1] ["",{"selector":"@p[tag=p1]"}," You dont have enough spell points to equip this spell."]
execute if score Spell_Points_P1 Spell_Points < meteorSp spellStats run execute if items entity @p[tag=p1,tag=meteorO] container.* dead_brain_coral_block[minecraft:custom_name={"text":"Meteor","bold":true,"color":"dark_green","italic":false}] run clear @a[tag=p1]
execute if score Spell_Points_P1 Spell_Points >= meteorSp spellStats run execute if items entity @p[tag=p1,tag=meteorO] container.* dead_brain_coral_block[minecraft:custom_name={"text":"Meteor","bold":true,"color":"dark_green","italic":false}] run scoreboard players operation Spell_Points_P1 Spell_Points -= meteorSp spellStats
execute if score Spell_Points_P1 Spell_Points >= meteorSp spellStats run execute if items entity @p[tag=p1,tag=meteorO] container.* dead_brain_coral_block[minecraft:custom_name={"text":"Meteor","bold":true,"color":"dark_green","italic":false}] run effect clear @a[tag=p1] water_breathing

execute if items entity @p[tag=p1,tag=!meteorO] container.* dead_brain_coral_block[minecraft:custom_name={"text":"Meteor","bold":true,"color":"dark_green","italic":false}] run tellraw @a[tag=p1] ["Sorry, you don't own this spell."]
execute if items entity @p[tag=p1,tag=!meteorO] container.* dead_brain_coral_block[minecraft:custom_name={"text":"Meteor","bold":true,"color":"dark_green","italic":false}] run clear @a[tag=p1]


#Shield Select P1
execute if score Spell_Points_P1 Spell_Points >= shieldSp spellStats run execute if items entity @p[tag=p1,tag=shieldO] container.* shield[minecraft:custom_name={"text":"Shield","bold":true,"color":"dark_green","italic":false}] run tag @p[tag=p1] add shield
execute if score Spell_Points_P1 Spell_Points >= shieldSp spellStats run execute if items entity @p[tag=p1,tag=shieldO] container.* shield[minecraft:custom_name={"text":"Shield","bold":true,"color":"dark_green","italic":false}] run tellraw @a[tag=p1] ["",{"selector":"@p[tag=p1]"}," picked Shield."]
execute if score Spell_Points_P1 Spell_Points < shieldSp spellStats run execute if items entity @p[tag=p1,tag=shieldO] container.* shield[minecraft:custom_name={"text":"Shield","bold":true,"color":"dark_green","italic":false}] run tellraw @a[tag=p1] ["",{"selector":"@p[tag=p1]"}," You dont have enough spell points to equip this spell."]
execute if score Spell_Points_P1 Spell_Points < shieldSp spellStats run execute if items entity @p[tag=p1,tag=shieldO] container.* shield[minecraft:custom_name={"text":"Shield","bold":true,"color":"dark_green","italic":false}] run clear @a[tag=p1]
execute if score Spell_Points_P1 Spell_Points >= shieldSp spellStats run execute if items entity @p[tag=p1,tag=shieldO] container.* shield[minecraft:custom_name={"text":"Shield","bold":true,"color":"dark_green","italic":false}] run scoreboard players operation Spell_Points_P1 Spell_Points -= shieldSp spellStats
execute if score Spell_Points_P1 Spell_Points >= shieldSp spellStats run execute if items entity @p[tag=p1,tag=shieldO] container.* shield[minecraft:custom_name={"text":"Shield","bold":true,"color":"dark_green","italic":false}] run effect clear @a[tag=p1] water_breathing

execute if items entity @p[tag=p1,tag=!shieldO] container.* shield[minecraft:custom_name={"text":"Shield","bold":true,"color":"dark_green","italic":false}] run tellraw @a[tag=p1] ["Sorry, you don't own this spell."]
execute if items entity @p[tag=p1,tag=!shieldO] container.* shield[minecraft:custom_name={"text":"Shield","bold":true,"color":"dark_green","italic":false}] run clear @a[tag=p1]



#Shock Orb Select P1
execute if score Spell_Points_P1 Spell_Points >= shockOrbSp spellStats run execute if items entity @p[tag=p1,tag=shockorbO] container.* heart_of_the_sea[minecraft:custom_name={"text":"Ball Lightning","bold":true,"color":"dark_green","italic":false}] run tag @p[tag=p1] add shockorb
execute if score Spell_Points_P1 Spell_Points >= shockOrbSp spellStats run execute if items entity @p[tag=p1,tag=shockorbO] container.* heart_of_the_sea[minecraft:custom_name={"text":"Ball Lightning","bold":true,"color":"dark_green","italic":false}] run tellraw @a[tag=p1] ["",{"selector":"@p[tag=p1]"}," picked Ball Lightning."]
execute if score Spell_Points_P1 Spell_Points < shockOrbSp spellStats run execute if items entity @p[tag=p1,tag=shockorbO] container.* heart_of_the_sea[minecraft:custom_name={"text":"Ball Lightning","bold":true,"color":"dark_green","italic":false}] run tellraw @a[tag=p1] ["",{"selector":"@p[tag=p1]"}," You dont have enough spell points to equip this spell."]
execute if score Spell_Points_P1 Spell_Points < shockOrbSp spellStats run execute if items entity @p[tag=p1,tag=shockorbO] container.* heart_of_the_sea[minecraft:custom_name={"text":"Ball Lightning","bold":true,"color":"dark_green","italic":false}] run clear @a[tag=p1]
execute if score Spell_Points_P1 Spell_Points >= shockOrbSp spellStats run execute if items entity @p[tag=p1,tag=shockorbO] container.* heart_of_the_sea[minecraft:custom_name={"text":"Ball Lightning","bold":true,"color":"dark_green","italic":false}] run scoreboard players operation Spell_Points_P1 Spell_Points -= shockOrbSp spellStats
execute if score Spell_Points_P1 Spell_Points >= shockOrbSp spellStats run execute if items entity @p[tag=p1,tag=shockorbO] container.* heart_of_the_sea[minecraft:custom_name={"text":"Ball Lightning","bold":true,"color":"dark_green","italic":false}] run effect clear @a[tag=p1] water_breathing

execute if items entity @p[tag=p1,tag=!shockorbO] container.* heart_of_the_sea[minecraft:custom_name={"text":"Ball Lightning","bold":true,"color":"dark_green","italic":false}] run tellraw @a[tag=p1] ["Sorry, you don't own this spell."]
execute if items entity @p[tag=p1,tag=!shockorbO] container.* heart_of_the_sea[minecraft:custom_name={"text":"Ball Lightning","bold":true,"color":"dark_green","italic":false}] run clear @a[tag=p1]




#Witch Bolt Select P1
execute if score Spell_Points_P1 Spell_Points >= witchBoltSp spellStats run execute if items entity @p[tag=p1,tag=witchboltO] container.* blaze_rod[minecraft:custom_name={"text":"Witch Bolt","bold":true,"color":"dark_green","italic":false}] run tag @p[tag=p1] add witchbolt
execute if score Spell_Points_P1 Spell_Points >= witchBoltSp spellStats run execute if items entity @p[tag=p1,tag=witchboltO] container.* blaze_rod[minecraft:custom_name={"text":"Witch Bolt","bold":true,"color":"dark_green","italic":false}] run tellraw @a[tag=p1] ["",{"selector":"@p[tag=p1]"}," picked Witch Bolt."]
execute if score Spell_Points_P1 Spell_Points < witchBoltSp spellStats run execute if items entity @p[tag=p1,tag=witchboltO] container.* blaze_rod[minecraft:custom_name={"text":"Witch Bolt","bold":true,"color":"dark_green","italic":false}] run tellraw @a[tag=p1] ["",{"selector":"@p[tag=p1]"}," You dont have enough spell points to equip this spell."]
execute if score Spell_Points_P1 Spell_Points < witchBoltSp spellStats run execute if items entity @p[tag=p1,tag=witchboltO] container.* blaze_rod[minecraft:custom_name={"text":"Witch Bolt","bold":true,"color":"dark_green","italic":false}] run clear @a[tag=p1]
execute if score Spell_Points_P1 Spell_Points >= witchBoltSp spellStats run execute if items entity @p[tag=p1,tag=witchboltO] container.* blaze_rod[minecraft:custom_name={"text":"Witch Bolt","bold":true,"color":"dark_green","italic":false}] run scoreboard players operation Spell_Points_P1 Spell_Points -= witchBoltSp spellStats
execute if score Spell_Points_P1 Spell_Points >= witchBoltSP spellStats run execute if items entity @p[tag=p1,tag=witchboltO] container.* blaze_rod[minecraft:custom_name={"text":"Witch Bolt","bold":true,"color":"dark_green","italic":false}] run effect clear @a[tag=p1] water_breathing

execute if items entity @p[tag=p1,tag=!witchboltO] container.* blaze_rod[minecraft:custom_name={"text":"Witch Bolt","bold":true,"color":"dark_green","italic":false}] run tellraw @a[tag=p1] ["Sorry, you don't own this spell."]
execute if items entity @p[tag=p1,tag=!witchboltO] container.* blaze_rod[minecraft:custom_name={"text":"Witch Bolt","bold":true,"color":"dark_green","italic":false}] run clear @a[tag=p1]
#Swiftness Select P1
execute if score Spell_Points_P1 Spell_Points >= swiftnessSp spellStats run execute if items entity @p[tag=p1,tag=swiftnessO] container.* rabbit_foot[minecraft:custom_name={"text":"Swiftness","bold":true,"color":"dark_green","italic":false}] run tag @p[tag=p1] add swiftness
execute if score Spell_Points_P1 Spell_Points >= swiftnessSp spellStats run execute if items entity @p[tag=p1,tag=swiftnessO] container.* rabbit_foot[minecraft:custom_name={"text":"Swiftness","bold":true,"color":"dark_green","italic":false}] run tellraw @a[tag=p1] ["",{"selector":"@p[tag=p1]"}," picked Swiftness."]
execute if score Spell_Points_P1 Spell_Points < swiftnessSp spellStats run execute if items entity @p[tag=p1,tag=swiftnessO] container.* rabbit_foot[minecraft:custom_name={"text":"Swiftness","bold":true,"color":"dark_green","italic":false}] run tellraw @a[tag=p1] ["",{"selector":"@p[tag=p1]"}," You dont have enough spell points to equip this spell."]
execute if score Spell_Points_P1 Spell_Points < swiftnessSp spellStats run execute if items entity @p[tag=p1,tag=swiftnessO] container.* rabbit_foot[minecraft:custom_name={"text":"Swiftness","bold":true,"color":"dark_green","italic":false}] run clear @a[tag=p1]
execute if score Spell_Points_P1 Spell_Points >= swiftnessSp spellStats run execute if items entity @p[tag=p1,tag=swiftnessO] container.* rabbit_foot[minecraft:custom_name={"text":"Swiftness","bold":true,"color":"dark_green","italic":false}] run scoreboard players operation Spell_Points_P1 Spell_Points -= swiftnessSp spellStats
execute if score Spell_Points_P1 Spell_Points >= swiftnessSp spellStats run execute if items entity @p[tag=p1,tag=swiftnessO] container.* rabbit_foot[minecraft:custom_name={"text":"Swiftness","bold":true,"color":"dark_green","italic":false}] run effect clear @a[tag=p1] water_breathing

execute if items entity @p[tag=p1,tag=!swiftnessO] container.* rabbit_foot[minecraft:custom_name={"text":"Swiftness","bold":true,"color":"dark_green","italic":false}] run tellraw @a[tag=p1] ["Sorry, you don't own this spell."]
execute if items entity @p[tag=p1,tag=!swiftnessO] container.* rabbit_foot[minecraft:custom_name={"text":"Swiftness","bold":true,"color":"dark_green","italic":false}] run clear @a[tag=p1]


#Embrittle Select P1
execute if score Spell_Points_P1 Spell_Points >= embrittleSp spellStats run execute if items entity @p[tag=p1,tag=embrittleO] container.* damaged_anvil[minecraft:custom_name={"text":"Embrittle","bold":true,"color":"dark_green","italic":false}] run tag @p[tag=p1] add embrittle
execute if score Spell_Points_P1 Spell_Points >= embrittleSp spellStats run execute if items entity @p[tag=p1,tag=embrittleO] container.* damaged_anvil[minecraft:custom_name={"text":"Embrittle","bold":true,"color":"dark_green","italic":false}] run tellraw @a[tag=p1] ["",{"selector":"@p[tag=p1]"}," picked Embrittle."]
execute if score Spell_Points_P1 Spell_Points < embrittleSp spellStats run execute if items entity @p[tag=p1,tag=embrittleO] container.* damaged_anvil[minecraft:custom_name={"text":"Embrittle","bold":true,"color":"dark_green","italic":false}] run tellraw @a[tag=p1] ["",{"selector":"@p[tag=p1]"}," You dont have enough spell points to equip this spell."]
execute if score Spell_Points_P1 Spell_Points < embrittleSp spellStats run execute if items entity @p[tag=p1,tag=embrittleO] container.* damaged_anvil[minecraft:custom_name={"text":"Embrittle","bold":true,"color":"dark_green","italic":false}] run clear @a[tag=p1]
execute if score Spell_Points_P1 Spell_Points >= embrittleSp spellStats run execute if items entity @p[tag=p1,tag=embrittleO] container.* damaged_anvil[minecraft:custom_name={"text":"Embrittle","bold":true,"color":"dark_green","italic":false}] run scoreboard players operation Spell_Points_P1 Spell_Points -= embrittleSp spellStats
execute if score Spell_Points_P1 Spell_Points >= embrittleSp spellStats run execute if items entity @p[tag=p1,tag=embrittleO] container.* damaged_anvil[minecraft:custom_name={"text":"Embrittle","bold":true,"color":"dark_green","italic":false}] run effect clear @a[tag=p1] water_breathing

execute if items entity @p[tag=p1,tag=!embrittleO] container.* damaged_anvil[minecraft:custom_name={"text":"Embrittle","bold":true,"color":"dark_green","italic":false}] run tellraw @a[tag=p1] ["Sorry, you don't own this spell."]
execute if items entity @p[tag=p1,tag=!embrittleO] container.* damaged_anvil[minecraft:custom_name={"text":"Embrittle","bold":true,"color":"dark_green","italic":false}] run clear @a[tag=p1]


#Embiggen Select P1
execute if score Spell_Points_P1 Spell_Points >= embiggenSp spellStats run execute if items entity @p[tag=p1,tag=embiggenO] container.* pufferfish[minecraft:custom_name={"text":"Embiggen","bold":true,"color":"dark_green","italic":false}] run tag @p[tag=p1] add embiggen
execute if score Spell_Points_P1 Spell_Points >= embiggenSp spellStats run execute if items entity @p[tag=p1,tag=embiggenO] container.* pufferfish[minecraft:custom_name={"text":"Embiggen","bold":true,"color":"dark_green","italic":false}] run tellraw @a[tag=p1] ["",{"selector":"@p[tag=p1]"}," picked Embiggen."]
execute if score Spell_Points_P1 Spell_Points < embiggenSp spellStats run execute if items entity @p[tag=p1,tag=embiggenO] container.* pufferfish[minecraft:custom_name={"text":"Embiggen","bold":true,"color":"dark_green","italic":false}] run tellraw @a[tag=p1] ["",{"selector":"@p[tag=p1]"}," You dont have enough spell points to equip this spell."]
execute if score Spell_Points_P1 Spell_Points < embiggenSp spellStats run execute if items entity @p[tag=p1,tag=embiggenO] container.* pufferfish[minecraft:custom_name={"text":"Embiggen","bold":true,"color":"dark_green","italic":false}] run clear @a[tag=p1]
execute if score Spell_Points_P1 Spell_Points >= embiggenSp spellStats run execute if items entity @p[tag=p1,tag=embiggenO] container.* pufferfish[minecraft:custom_name={"text":"Embiggen","bold":true,"color":"dark_green","italic":false}] run scoreboard players operation Spell_Points_P1 Spell_Points -= embiggenSp spellStats
execute if score Spell_Points_P1 Spell_Points >= embiggenSp spellStats run execute if items entity @p[tag=p1,tag=embiggenO] container.* pufferfish[minecraft:custom_name={"text":"Embiggen","bold":true,"color":"dark_green","italic":false}] run effect clear @a[tag=p1] water_breathing

execute if items entity @p[tag=p1,tag=!embiggenO] container.* pufferfish[minecraft:custom_name={"text":"Embiggen","bold":true,"color":"dark_green","italic":false}] run tellraw @a[tag=p1] ["Sorry, you don't own this spell."]
execute if items entity @p[tag=p1,tag=!embiggenO] container.* pufferfish[minecraft:custom_name={"text":"Embiggen","bold":true,"color":"dark_green","italic":false}] run clear @a[tag=p1]




#Immolate Select P1
execute if score Spell_Points_P1 Spell_Points >= immolateSp spellStats run execute if items entity @p[tag=p1,tag=immolateO] container.* blaze_powder[minecraft:custom_name={"text":"Immolate","bold":true,"color":"blue","italic":false}] run tag @p[tag=p1] add immolate
execute if score Spell_Points_P1 Spell_Points >= immolateSp spellStats run execute if items entity @p[tag=p1,tag=immolateO] container.* blaze_powder[minecraft:custom_name={"text":"Immolate","bold":true,"color":"blue","italic":false}] run tellraw @a[tag=p1] ["",{"selector":"@p[tag=p1]"}," picked Immolate."]
execute if score Spell_Points_P1 Spell_Points < immolateSp spellStats run execute if items entity @p[tag=p1,tag=immolateO] container.* blaze_powder[minecraft:custom_name={"text":"Immolate","bold":true,"color":"blue","italic":false}] run tellraw @a[tag=p1] ["",{"selector":"@p[tag=p1]"}," You dont have enough spell points to equip this spell."]
execute if score Spell_Points_P1 Spell_Points < immolateSp spellStats run execute if items entity @p[tag=p1,tag=immolateO] container.* blaze_powder[minecraft:custom_name={"text":"Immolate","bold":true,"color":"blue","italic":false}] run clear @a[tag=p1]
execute if score Spell_Points_P1 Spell_Points >= immolateSp spellStats run execute if items entity @p[tag=p1,tag=immolateO] container.* blaze_powder[minecraft:custom_name={"text":"Immolate","bold":true,"color":"blue","italic":false}] run scoreboard players operation Spell_Points_P1 Spell_Points -= immolateSp spellStats
execute if score Spell_Points_P1 Spell_Points >= immolateSp spellStats run execute if items entity @p[tag=p1,tag=immolateO] container.* blaze_powder[minecraft:custom_name={"text":"Immolate","bold":true,"color":"blue","italic":false}] run effect clear @a[tag=p1] water_breathing

execute if items entity @p[tag=p1,tag=!immolateO] container.* blaze_powder[minecraft:custom_name={"text":"Immolate","bold":true,"color":"blue","italic":false}] run tellraw @a[tag=p1] ["Sorry, you don't own this spell."]
execute if items entity @p[tag=p1,tag=!immolateO] container.* blaze_powder[minecraft:custom_name={"text":"Immolate","bold":true,"color":"blue","italic":false}] run clear @a[tag=p1]



#Evil Eye Select P1
execute if score Spell_Points_P1 Spell_Points >= evilEyeSp spellStats run execute if items entity @p[tag=p1,tag=evileyeO] container.* spider_eye[minecraft:custom_name={"text":"Evil Eye","bold":true,"color":"blue","italic":false}] run tag @p[tag=p1] add evileye
execute if score Spell_Points_P1 Spell_Points >= evilEyeSp spellStats run execute if items entity @p[tag=p1,tag=evileyeO] container.* spider_eye[minecraft:custom_name={"text":"Evil Eye","bold":true,"color":"blue","italic":false}] run tellraw @a[tag=p1] ["",{"selector":"@p[tag=p1]"}," picked Evil Eye."]
execute if score Spell_Points_P1 Spell_Points < evilEyeSp spellStats run execute if items entity @p[tag=p1,tag=evileyeO] container.* spider_eye[minecraft:custom_name={"text":"Evil Eye","bold":true,"color":"blue","italic":false}] run tellraw @a[tag=p1] ["",{"selector":"@p[tag=p1]"}," You dont have enough spell points to equip this spell."]
execute if score Spell_Points_P1 Spell_Points < evilEyeSp spellStats run execute if items entity @p[tag=p1,tag=evileyeO] container.* spider_eye[minecraft:custom_name={"text":"Evil Eye","bold":true,"color":"blue","italic":false}] run clear @a[tag=p1]
execute if score Spell_Points_P1 Spell_Points >= evilEyeSp spellStats run execute if items entity @p[tag=p1,tag=evileyeO] container.* spider_eye[minecraft:custom_name={"text":"Evil Eye","bold":true,"color":"blue","italic":false}] run scoreboard players operation Spell_Points_P1 Spell_Points -= evilEyeSp spellStats
execute if score Spell_Points_P1 Spell_Points >= evilEyeSp spellStats run execute if items entity @p[tag=p1,tag=evileyeO] container.* spider_eye[minecraft:custom_name={"text":"Evil Eye","bold":true,"color":"blue","italic":false}] run effect clear @a[tag=p1] water_breathing

execute if items entity @p[tag=p1,tag=!evileyeO] container.* spider_eye[minecraft:custom_name={"text":"Evil Eye","bold":true,"color":"blue","italic":false}] run tellraw @a[tag=p1] ["Sorry, you don't own this spell."]
execute if items entity @p[tag=p1,tag=!evileyeO] container.* spider_eye[minecraft:custom_name={"text":"Evil Eye","bold":true,"color":"blue","italic":false}] run clear @a[tag=p1]




#Protector's Rune Select P1
execute if score Spell_Points_P1 Spell_Points >= protectorsRuneSp spellStats run execute if items entity @p[tag=p1,tag=protectorsruneO] container.* chiseled_tuff[minecraft:custom_name={"text":"Protector's Rune","bold":true,"color":"blue","italic":false}] run tag @p[tag=p1] add protectorsrune
execute if score Spell_Points_P1 Spell_Points >= protectorsRuneSp spellStats run execute if items entity @p[tag=p1,tag=protectorsruneO] container.* chiseled_tuff[minecraft:custom_name={"text":"Protector's Rune","bold":true,"color":"blue","italic":false}] run tellraw @a[tag=p1] ["",{"selector":"@p[tag=p1]"}," picked Protector's Rune."]
execute if score Spell_Points_P1 Spell_Points < protectorsRuneSp spellStats run execute if items entity @p[tag=p1,tag=protectorsruneO] container.* chiseled_tuff[minecraft:custom_name={"text":"Protector's Rune","bold":true,"color":"blue","italic":false}] run tellraw @a[tag=p1] ["",{"selector":"@p[tag=p1]"}," You dont have enough spell points to equip this spell."]
execute if score Spell_Points_P1 Spell_Points < protectorsRuneSp spellStats run execute if items entity @p[tag=p1,tag=protectorsruneO] container.* chiseled_tuff[minecraft:custom_name={"text":"Protector's Rune","bold":true,"color":"blue","italic":false}] run clear @a[tag=p1]
execute if score Spell_Points_P1 Spell_Points >= protectorsRuneSp spellStats run execute if items entity @p[tag=p1,tag=protectorsruneO] container.* chiseled_tuff[minecraft:custom_name={"text":"Protector's Rune","bold":true,"color":"blue","italic":false}] run scoreboard players operation Spell_Points_P1 Spell_Points -= protectorsRuneSp spellStats
execute if score Spell_Points_P1 Spell_Points >= protectorsRuneSp spellStats run execute if items entity @p[tag=p1,tag=protectorsruneO] container.* chiseled_tuff[minecraft:custom_name={"text":"Protector's Rune","bold":true,"color":"blue","italic":false}] run effect clear @a[tag=p1] water_breathing

execute if items entity @p[tag=p1,tag=!protectorsruneO] container.* chiseled_tuff[minecraft:custom_name={"text":"Protector's Rune","bold":true,"color":"blue","italic":false}] run tellraw @a[tag=p1] ["Sorry, you don't own this spell."]
execute if items entity @p[tag=p1,tag=!protectorsruneO] container.* chiseled_tuff[minecraft:custom_name={"text":"Protector's Rune","bold":true,"color":"blue","italic":false}] run clear @a[tag=p1]




#Miracle Select P1
execute if score Spell_Points_P1 Spell_Points >= miracleSp spellStats run execute if items entity @p[tag=p1,tag=miracleO] container.* beacon[minecraft:custom_name={"text":"Miracle","bold":true,"color":"blue","italic":false}] run tag @p[tag=p1] add miracle
execute if score Spell_Points_P1 Spell_Points >= miracleSp spellStats run execute if items entity @p[tag=p1,tag=miracleO] container.* beacon[minecraft:custom_name={"text":"Miracle","bold":true,"color":"blue","italic":false}] run tellraw @a[tag=p1] ["",{"selector":"@p[tag=p1]"}," picked Miracle."]
execute if score Spell_Points_P1 Spell_Points < miracleSp spellStats run execute if items entity @p[tag=p1,tag=miracleO] container.* beacon[minecraft:custom_name={"text":"Miracle","bold":true,"color":"blue","italic":false}] run tellraw @a[tag=p1] ["",{"selector":"@p[tag=p1]"}," You dont have enough spell points to equip this spell."]
execute if score Spell_Points_P1 Spell_Points < miracleSp spellStats run execute if items entity @p[tag=p1,tag=miracleO] container.* beacon[minecraft:custom_name={"text":"Miracle","bold":true,"color":"blue","italic":false}] run clear @a[tag=p1]
execute if score Spell_Points_P1 Spell_Points >= miracleSp spellStats run execute if items entity @p[tag=p1,tag=miracleO] container.* beacon[minecraft:custom_name={"text":"Miracle","bold":true,"color":"blue","italic":false}] run scoreboard players operation Spell_Points_P1 Spell_Points -= miracleSp spellStats
execute if score Spell_Points_P1 Spell_Points >= miracleSp spellStats run execute if items entity @p[tag=p1,tag=miracleO] container.* beacon[minecraft:custom_name={"text":"Miracle","bold":true,"color":"blue","italic":false}] run effect clear @a[tag=p1] water_breathing

execute if items entity @p[tag=p1,tag=!miracleO] container.* beacon[minecraft:custom_name={"text":"Miracle","bold":true,"color":"blue","italic":false}] run tellraw @a[tag=p1] ["Sorry, you don't own this spell."]
execute if items entity @p[tag=p1,tag=!miracleO] container.* beacon[minecraft:custom_name={"text":"Miracle","bold":true,"color":"blue","italic":false}] run clear @a[tag=p1]


#Miasma Select P1
execute if score Spell_Points_P1 Spell_Points >= miasmaSp spellStats run execute if items entity @p[tag=p1,tag=miasmaO] container.* sculk_vein[minecraft:custom_name={"text":"Miasma","bold":true,"color":"blue","italic":false}] run tag @p[tag=p1] add miasma
execute if score Spell_Points_P1 Spell_Points >= miasmaSp spellStats run execute if items entity @p[tag=p1,tag=miasmaO] container.* sculk_vein[minecraft:custom_name={"text":"Miasma","bold":true,"color":"blue","italic":false}] run tellraw @a[tag=p1] ["",{"selector":"@p[tag=p1]"}," picked Miasma."]
execute if score Spell_Points_P1 Spell_Points < miasmaSp spellStats run execute if items entity @p[tag=p1,tag=miasmaO] container.* sculk_vein[minecraft:custom_name={"text":"Miasma","bold":true,"color":"blue","italic":false}] run tellraw @a[tag=p1] ["",{"selector":"@p[tag=p1]"}," You dont have enough spell points to equip this spell."]
execute if score Spell_Points_P1 Spell_Points < miasmaSp spellStats run execute if items entity @p[tag=p1,tag=miasmaO] container.* sculk_vein[minecraft:custom_name={"text":"Miasma","bold":true,"color":"blue","italic":false}] run clear @a[tag=p1]
execute if score Spell_Points_P1 Spell_Points >= miasmaSp spellStats run execute if items entity @p[tag=p1,tag=miasmaO] container.* sculk_vein[minecraft:custom_name={"text":"Miasma","bold":true,"color":"blue","italic":false}] run scoreboard players operation Spell_Points_P1 Spell_Points -= miasmaSp spellStats
execute if score Spell_Points_P1 Spell_Points >= miasmaSp spellStats run execute if items entity @p[tag=p1,tag=miasmaO] container.* sculk_vein[minecraft:custom_name={"text":"Miasma","bold":true,"color":"blue","italic":false}] run effect clear @a[tag=p1] water_breathing

execute if items entity @p[tag=p1,tag=!miasmaO] container.* sculk_vein[minecraft:custom_name={"text":"Miasma","bold":true,"color":"blue","italic":false}] run tellraw @a[tag=p1] ["Sorry, you don't own this spell."]
execute if items entity @p[tag=p1,tag=!miasmaO] container.* sculk_vein[minecraft:custom_name={"text":"Miasma","bold":true,"color":"blue","italic":false}] run clear @a[tag=p1]


#Ward Select P1
execute if score Spell_Points_P1 Spell_Points >= wardSp spellStats run execute if items entity @p[tag=p1,tag=wardO] container.* blue_stained_glass[minecraft:custom_name={"text":"Ward","bold":true,"color":"blue","italic":false}] run tag @p[tag=p1] add ward
execute if score Spell_Points_P1 Spell_Points >= wardSp spellStats run execute if items entity @p[tag=p1,tag=wardO] container.* blue_stained_glass[minecraft:custom_name={"text":"Ward","bold":true,"color":"blue","italic":false}] run tellraw @a[tag=p1] ["",{"selector":"@p[tag=p1]"}," picked Ward."]
execute if score Spell_Points_P1 Spell_Points < wardSp spellStats run execute if items entity @p[tag=p1,tag=wardO] container.* blue_stained_glass[minecraft:custom_name={"text":"Ward","bold":true,"color":"blue","italic":false}] run tellraw @a[tag=p1] ["",{"selector":"@p[tag=p1]"}," You dont have enough spell points to equip this spell."]
execute if score Spell_Points_P1 Spell_Points < wardSp spellStats run execute if items entity @p[tag=p1,tag=wardO] container.* blue_stained_glass[minecraft:custom_name={"text":"Ward","bold":true,"color":"blue","italic":false}] run clear @a[tag=p1]
execute if score Spell_Points_P1 Spell_Points >= wardSp spellStats run execute if items entity @p[tag=p1,tag=wardO] container.* blue_stained_glass[minecraft:custom_name={"text":"Ward","bold":true,"color":"blue","italic":false}] run scoreboard players operation Spell_Points_P1 Spell_Points -= wardSp spellStats
execute if score Spell_Points_P1 Spell_Points >= wardSp spellStats run execute if items entity @p[tag=p1,tag=wardO] container.* blue_stained_glass[minecraft:custom_name={"text":"Ward","bold":true,"color":"blue","italic":false}] run effect clear @a[tag=p1] water_breathing

execute if items entity @p[tag=p1,tag=!wardO] container.* blue_stained_glass[minecraft:custom_name={"text":"Ward","bold":true,"color":"blue","italic":false}] run tellraw @a[tag=p1] ["Sorry, you don't own this spell."]
execute if items entity @p[tag=p1,tag=!wardO] container.* blue_stained_glass[minecraft:custom_name={"text":"Ward","bold":true,"color":"blue","italic":false}] run clear @a[tag=p1]

#Blizzard Select P1
execute if score Spell_Points_P1 Spell_Points >= blizzardSp spellStats run execute if items entity @p[tag=p1,tag=blizzardO] container.* blue_ice[minecraft:custom_name={"text":"Blizzard","bold":true,"color":"blue","italic":false}] run tag @p[tag=p1] add blizzard
execute if score Spell_Points_P1 Spell_Points >= blizzardSp spellStats run execute if items entity @p[tag=p1,tag=blizzardO] container.* blue_ice[minecraft:custom_name={"text":"Blizzard","bold":true,"color":"blue","italic":false}] run tellraw @a[tag=p1] ["",{"selector":"@p[tag=p1]"}," picked Blizzard."]
execute if score Spell_Points_P1 Spell_Points < blizzardSp spellStats run execute if items entity @p[tag=p1,tag=blizzardO] container.* blue_ice[minecraft:custom_name={"text":"Blizzard","bold":true,"color":"blue","italic":false}] run tellraw @a[tag=p1] ["",{"selector":"@p[tag=p1]"}," You dont have enough spell points to equip this spell."]
execute if score Spell_Points_P1 Spell_Points < blizzardSp spellStats run execute if items entity @p[tag=p1,tag=blizzardO] container.* blue_ice[minecraft:custom_name={"text":"Blizzard","bold":true,"color":"blue","italic":false}] run clear @a[tag=p1]
execute if score Spell_Points_P1 Spell_Points >= blizzardSp spellStats run execute if items entity @p[tag=p1,tag=blizzardO] container.* blue_ice[minecraft:custom_name={"text":"Blizzard","bold":true,"color":"blue","italic":false}] run scoreboard players operation Spell_Points_P1 Spell_Points -= blizzardSp spellStats
execute if score Spell_Points_P1 Spell_Points >= blizzardSp spellStats run execute if items entity @p[tag=p1,tag=blizzardO] container.* blue_ice[minecraft:custom_name={"text":"Blizzard","bold":true,"color":"blue","italic":false}] run effect clear @a[tag=p1] water_breathing

execute if items entity @p[tag=p1,tag=!blizzardO] container.* blue_ice[minecraft:custom_name={"text":"Blizzard","bold":true,"color":"blue","italic":false}] run tellraw @a[tag=p1] ["Sorry, you don't own this spell."]
execute if items entity @p[tag=p1,tag=!blizzardO] container.* blue_ice[minecraft:custom_name={"text":"Blizzard","bold":true,"color":"blue","italic":false}] run clear @a[tag=p1]

#Plague Select P1
execute if score Spell_Points_P1 Spell_Points >= plagueSp spellStats run execute if items entity @p[tag=p1,tag=plagueO] container.* fermented_spider_eye[minecraft:custom_name={"text":"Plague","bold":true,"color":"dark_purple","italic":false}] run tag @p[tag=p1] add plague
execute if score Spell_Points_P1 Spell_Points >= plagueSp spellStats run execute if items entity @p[tag=p1,tag=plagueO] container.* fermented_spider_eye[minecraft:custom_name={"text":"Plague","bold":true,"color":"dark_purple","italic":false}] run tellraw @a[tag=p1] ["",{"selector":"@p[tag=p1]"}," picked Plague."]
execute if score Spell_Points_P1 Spell_Points < plagueSp spellStats run execute if items entity @p[tag=p1,tag=plagueO] container.* fermented_spider_eye[minecraft:custom_name={"text":"Plague","bold":true,"color":"dark_purple","italic":false}] run tellraw @a[tag=p1] ["",{"selector":"@p[tag=p1]"}," You dont have enough spell points to equip this spell."]
execute if score Spell_Points_P1 Spell_Points < plagueSp spellStats run execute if items entity @p[tag=p1,tag=plagueO] container.* fermented_spider_eye[minecraft:custom_name={"text":"Plague","bold":true,"color":"dark_purple","italic":false}] run clear @a[tag=p1]
execute if score Spell_Points_P1 Spell_Points >= plagueSp spellStats run execute if items entity @p[tag=p1,tag=plagueO] container.* fermented_spider_eye[minecraft:custom_name={"text":"Plague","bold":true,"color":"dark_purple","italic":false}] run scoreboard players operation Spell_Points_P1 Spell_Points -= plagueSp spellStats
execute if score Spell_Points_P1 Spell_Points >= plagueSp spellStats run execute if items entity @p[tag=p1,tag=plagueO] container.* fermented_spider_eye[minecraft:custom_name={"text":"Plague","bold":true,"color":"dark_purple","italic":false}] run effect clear @a[tag=p1] water_breathing

execute if items entity @p[tag=p1,tag=!plagueO] container.* fermented_spider_eye[minecraft:custom_name={"text":"Plague","bold":true,"color":"dark_purple","italic":false}] run tellraw @a[tag=p1] ["Sorry, you don't own this spell."]
execute if items entity @p[tag=p1,tag=!plagueO] container.* fermented_spider_eye[minecraft:custom_name={"text":"Plague","bold":true,"color":"dark_purple","italic":false}] run clear @a[tag=p1]

#Second Wind Select P1
execute if score Spell_Points_P1 Spell_Points >= secondWindSp spellStats run execute if items entity @p[tag=p1,tag=secondwindO] container.* feather[minecraft:custom_name={"text":"Second Wind","bold":true,"color":"dark_purple","italic":false}] run tag @p[tag=p1] add secondwind
execute if score Spell_Points_P1 Spell_Points >= secondWindSp spellStats run execute if items entity @p[tag=p1,tag=secondwindO] container.* feather[minecraft:custom_name={"text":"Second Wind","bold":true,"color":"dark_purple","italic":false}] run tellraw @a[tag=p1] ["",{"selector":"@p[tag=p1]"}," picked Second Wind."]
execute if score Spell_Points_P1 Spell_Points < secondWindSp spellStats run execute if items entity @p[tag=p1,tag=secondwindO] container.* feather[minecraft:custom_name={"text":"Second Wind","bold":true,"color":"dark_purple","italic":false}] run tellraw @a[tag=p1] ["",{"selector":"@p[tag=p1]"}," You dont have enough spell points to equip this spell."]
execute if score Spell_Points_P1 Spell_Points < secondWindSp spellStats run execute if items entity @p[tag=p1,tag=secondwindO] container.* feather[minecraft:custom_name={"text":"Second Wind","bold":true,"color":"dark_purple","italic":false}] run clear @a[tag=p1]
execute if score Spell_Points_P1 Spell_Points >= secondWindSp spellStats run execute if items entity @p[tag=p1,tag=secondwindO] container.* feather[minecraft:custom_name={"text":"Second Wind","bold":true,"color":"dark_purple","italic":false}] run scoreboard players operation Spell_Points_P1 Spell_Points -= secondWindSp spellStats
execute if score Spell_Points_P1 Spell_Points >= secondWindSp spellStats run execute if items entity @p[tag=p1,tag=secondwindO] container.* feather[minecraft:custom_name={"text":"Second Wind","bold":true,"color":"dark_purple","italic":false}] run effect clear @a[tag=p1] water_breathing

execute if items entity @p[tag=p1,tag=!secondwindO] container.* feather[minecraft:custom_name={"text":"Second Wind","bold":true,"color":"dark_purple","italic":false}] run tellraw @a[tag=p1] ["Sorry, you don't own this spell."]
execute if items entity @p[tag=p1,tag=!secondwindO] container.* feather[minecraft:custom_name={"text":"Second Wind","bold":true,"color":"dark_purple","italic":false}] run clear @a[tag=p1]
#Witches Brew Select P1
execute if score Spell_Points_P1 Spell_Points >= witchesBrewSp spellStats run execute if items entity @p[tag=p1,tag=witchesbrewO] container.* minecraft:cauldron[minecraft:custom_name={"text":"Witches Brew","bold":true,"color":"dark_purple","italic":false}] run tag @p[tag=p1] add witchesbrew
execute if score Spell_Points_P1 Spell_Points >= witchesBrewSp spellStats run execute if items entity @p[tag=p1,tag=witchesbrewO] container.* minecraft:cauldron[minecraft:custom_name={"text":"Witches Brew","bold":true,"color":"dark_purple","italic":false}] run tellraw @a[tag=p1] ["",{"selector":"@p[tag=p1]"}," picked Witches Brew."]
execute if score Spell_Points_P1 Spell_Points < witchesBrewSp spellStats run execute if items entity @p[tag=p1,tag=witchesbrewO] container.* minecraft:cauldron[minecraft:custom_name={"text":"Witches Brew","bold":true,"color":"dark_purple","italic":false}] run tellraw @a[tag=p1] ["",{"selector":"@p[tag=p1]"}," You dont have enough spell points to equip this spell."]
execute if score Spell_Points_P1 Spell_Points < witchesBrewSp spellStats run execute if items entity @p[tag=p1,tag=witchesbrewO] container.* minecraft:cauldron[minecraft:custom_name={"text":"Witches Brew","bold":true,"color":"dark_purple","italic":false}] run clear @a[tag=p1]
execute if score Spell_Points_P1 Spell_Points >= witchesBrewSp spellStats run execute if items entity @p[tag=p1,tag=witchesbrewO] container.* minecraft:cauldron[minecraft:custom_name={"text":"Witches Brew","bold":true,"color":"dark_purple","italic":false}] run scoreboard players operation Spell_Points_P1 Spell_Points -= witchesBrewSp spellStats
execute if score Spell_Points_P1 Spell_Points >= witchesBrewSp spellStats run execute if items entity @p[tag=p1,tag=witchesbrewO] container.* minecraft:cauldron[minecraft:custom_name={"text":"Witches Brew","bold":true,"color":"dark_purple","italic":false}] run effect clear @a[tag=p1] water_breathing

execute if items entity @p[tag=p1,tag=!witchesbrewO] container.* minecraft:cauldron[minecraft:custom_name={"text":"Witches Brew","bold":true,"color":"dark_purple","italic":false}] run tellraw @a[tag=p1] ["Sorry, you don't own this spell."]
execute if items entity @p[tag=p1,tag=!witchesbrewO] container.* minecraft:cauldron[minecraft:custom_name={"text":"Witches Brew","bold":true,"color":"dark_purple","italic":false}] run clear @a[tag=p1]



#Font of Wisdom Select P1
execute if score Spell_Points_P1 Spell_Points >= fontOfWisdomSp spellStats run execute if items entity @p[tag=p1,tag=fontofwisdomO] container.* minecraft:enchanted_book[minecraft:custom_name={"text":"Font of Wisdom","bold":true,"color":"dark_purple","italic":false}] run tag @p[tag=p1] add fontofwisdom
execute if score Spell_Points_P1 Spell_Points >= fontOfWisdomSp spellStats run execute if items entity @p[tag=p1,tag=fontofwisdomO] container.* minecraft:enchanted_book[minecraft:custom_name={"text":"Font of Wisdom","bold":true,"color":"dark_purple","italic":false}] run tellraw @a[tag=p1] ["",{"selector":"@p[tag=p1]"}," picked Font of Wisdom."]
execute if score Spell_Points_P1 Spell_Points < fontOfWisdomSp spellStats run execute if items entity @p[tag=p1,tag=fontofwisdomO] container.* minecraft:enchanted_book[minecraft:custom_name={"text":"Font of Wisdom","bold":true,"color":"dark_purple","italic":false}] run tellraw @a[tag=p1] ["",{"selector":"@p[tag=p1]"}," You dont have enough spell points to equip this spell."]
execute if score Spell_Points_P1 Spell_Points < fontOfWisdomSp spellStats run execute if items entity @p[tag=p1,tag=fontofwisdomO] container.* minecraft:enchanted_book[minecraft:custom_name={"text":"Font of Wisdom","bold":true,"color":"dark_purple","italic":false}] run clear @a[tag=p1]
execute if score Spell_Points_P1 Spell_Points >= fontOfWisdomSp spellStats run execute if items entity @p[tag=p1,tag=fontofwisdomO] container.* minecraft:enchanted_book[minecraft:custom_name={"text":"Font of Wisdom","bold":true,"color":"dark_purple","italic":false}] run scoreboard players operation Spell_Points_P1 Spell_Points -= fontOfWisdomSp spellStats
execute if score Spell_Points_P1 Spell_Points >= fontOfWisdomSp spellStats run execute if items entity @p[tag=p1,tag=fontofwisdomO] container.* minecraft:enchanted_book[minecraft:custom_name={"text":"Font of Wisdom","bold":true,"color":"dark_purple","italic":false}] run effect clear @a[tag=p1] water_breathing

execute if items entity @p[tag=p1,tag=!fontofwisdomO] container.* minecraft:enchanted_book[minecraft:custom_name={"text":"Font of Wisdom","bold":true,"color":"dark_purple","italic":false}] run tellraw @a[tag=p1] ["Sorry, you don't own this spell."]
execute if items entity @p[tag=p1,tag=!fontofwisdomO] container.* minecraft:enchanted_book[minecraft:custom_name={"text":"Font of Wisdom","bold":true,"color":"dark_purple","italic":false}] run clear @a[tag=p1]

#Fountain of Youth Select P1
execute if score Spell_Points_P1 Spell_Points >= fountainOfYouthSp spellStats run execute if items entity @p[tag=p1,tag=fountainofyouthO] container.* minecraft:potion[minecraft:custom_name={"text":"Fountain of Youth","bold":true,"color":"dark_purple","italic":false}] run tag @p[tag=p1] add fountainofyouth
execute if score Spell_Points_P1 Spell_Points >= fountainOfYouthSp spellStats run execute if items entity @p[tag=p1,tag=fountainofyouthO] container.* minecraft:potion[minecraft:custom_name={"text":"Fountain of Youth","bold":true,"color":"dark_purple","italic":false}] run tellraw @a[tag=p1] ["",{"selector":"@p[tag=p1]"}," picked Fountain of Youth."]
execute if score Spell_Points_P1 Spell_Points < fountainOfYouthSp spellStats run execute if items entity @p[tag=p1,tag=fountainofyouthO] container.* minecraft:potion[minecraft:custom_name={"text":"Fountain of Youth","bold":true,"color":"dark_purple","italic":false}] run tellraw @a[tag=p1] ["",{"selector":"@p[tag=p1]"}," You dont have enough spell points to equip this spell."]
execute if score Spell_Points_P1 Spell_Points < fountainOfYouthSp spellStats run execute if items entity @p[tag=p1,tag=fountainofyouthO] container.* minecraft:potion[minecraft:custom_name={"text":"Fountain of Youth","bold":true,"color":"dark_purple","italic":false}] run clear @a[tag=p1]
execute if score Spell_Points_P1 Spell_Points >= fountainOfYouthSp spellStats run execute if items entity @p[tag=p1,tag=fountainofyouthO] container.* minecraft:potion[minecraft:custom_name={"text":"Fountain of Youth","bold":true,"color":"dark_purple","italic":false}] run scoreboard players operation Spell_Points_P1 Spell_Points -= fountainOfYouthSp spellStats
execute if score Spell_Points_P1 Spell_Points >= fountainOfYouthSp spellStats run execute if items entity @p[tag=p1,tag=fountainofyouthO] container.* minecraft:potion[minecraft:custom_name={"text":"Fountain of Youth","bold":true,"color":"dark_purple","italic":false}] run effect clear @a[tag=p1] water_breathing

execute if items entity @p[tag=p1,tag=!fountainofyouthO] container.* minecraft:potion[minecraft:custom_name={"text":"Fountain of Youth","bold":true,"color":"dark_purple","italic":false}] run tellraw @a[tag=p1] ["Sorry, you don't own this spell."]
execute if items entity @p[tag=p1,tag=!fountainofyouthO] container.* minecraft:potion[minecraft:custom_name={"text":"Fountain of Youth","bold":true,"color":"dark_purple","italic":false}] run clear @a[tag=p1]


#Dragonforge Select P1
execute if score Spell_Points_P1 Spell_Points >= dragonforgeSp spellStats run execute if items entity @p[tag=p1,tag=dragonforgeO] container.* minecraft:dragon_head[minecraft:custom_name={"text":"Dragonforge","bold":true,"color":"dark_purple","italic":false}] run tag @p[tag=p1] add dragonforge
execute if score Spell_Points_P1 Spell_Points >= dragonforgeSp spellStats run execute if items entity @p[tag=p1,tag=dragonforgeO] container.* minecraft:dragon_head[minecraft:custom_name={"text":"Dragonforge","bold":true,"color":"dark_purple","italic":false}] run tellraw @a[tag=p1] ["",{"selector":"@p[tag=p1]"}," picked Dragonforge."]
execute if score Spell_Points_P1 Spell_Points < dragonforgeSp spellStats run execute if items entity @p[tag=p1,tag=dragonforgeO] container.* minecraft:dragon_head[minecraft:custom_name={"text":"Dragonforge","bold":true,"color":"dark_purple","italic":false}] run tellraw @a[tag=p1] ["",{"selector":"@p[tag=p1]"}," You dont have enough spell points to equip this spell."]
execute if score Spell_Points_P1 Spell_Points < dragonforgeSp spellStats run execute if items entity @p[tag=p1,tag=dragonforgeO] container.* minecraft:dragon_head[minecraft:custom_name={"text":"Dragonforge","bold":true,"color":"dark_purple","italic":false}] run clear @a[tag=p1]
execute if score Spell_Points_P1 Spell_Points >= dragonforgeSp spellStats run execute if items entity @p[tag=p1,tag=dragonforgeO] container.* minecraft:dragon_head[minecraft:custom_name={"text":"Dragonforge","bold":true,"color":"dark_purple","italic":false}] run scoreboard players operation Spell_Points_P1 Spell_Points -= dragonforgeSp spellStats
execute if score Spell_Points_P1 Spell_Points >= dragonforgeSp spellStats run execute if items entity @p[tag=p1,tag=dragonforgeO] container.* minecraft:dragon_head[minecraft:custom_name={"text":"Dragonforge","bold":true,"color":"dark_purple","italic":false}] run effect clear @a[tag=p1] water_breathing

execute if items entity @p[tag=p1,tag=!dragonforgeO] container.* minecraft:dragon_head[minecraft:custom_name={"text":"Dragonforge","bold":true,"color":"dark_purple","italic":false}] run tellraw @a[tag=p1] ["Sorry, you don't own this spell."]
execute if items entity @p[tag=p1,tag=!dragonforgeO] container.* minecraft:dragon_head[minecraft:custom_name={"text":"Dragonforge","bold":true,"color":"dark_purple","italic":false}] run clear @a[tag=p1]

#Overclock Select P1
execute if score Spell_Points_P1 Spell_Points >= overclockSp spellStats run execute if items entity @p[tag=p1,tag=overclockO] container.* minecraft:heavy_core[minecraft:custom_name={"text":"Overclock","bold":true,"color":"dark_purple","italic":false}] run tag @p[tag=p1] add overclock
execute if score Spell_Points_P1 Spell_Points >= overclockSp spellStats run execute if items entity @p[tag=p1,tag=overclockO] container.* minecraft:heavy_core[minecraft:custom_name={"text":"Overclock","bold":true,"color":"dark_purple","italic":false}] run tellraw @a[tag=p1] ["",{"selector":"@p[tag=p1]"}," picked Overclock."]
execute if score Spell_Points_P1 Spell_Points < overclockSp spellStats run execute if items entity @p[tag=p1,tag=overclockO] container.* minecraft:heavy_core[minecraft:custom_name={"text":"Overclock","bold":true,"color":"dark_purple","italic":false}] run tellraw @a[tag=p1] ["",{"selector":"@p[tag=p1]"}," You dont have enough spell points to equip this spell."]
execute if score Spell_Points_P1 Spell_Points < overclockSp spellStats run execute if items entity @p[tag=p1,tag=overclockO] container.* minecraft:heavy_core[minecraft:custom_name={"text":"Overclock","bold":true,"color":"dark_purple","italic":false}] run clear @a[tag=p1]
execute if score Spell_Points_P1 Spell_Points >= overclockSp spellStats run execute if items entity @p[tag=p1,tag=overclockO] container.* minecraft:heavy_core[minecraft:custom_name={"text":"Overclock","bold":true,"color":"dark_purple","italic":false}] run scoreboard players operation Spell_Points_P1 Spell_Points -= overclockSp spellStats
execute if score Spell_Points_P1 Spell_Points >= overclockSp spellStats run execute if items entity @p[tag=p1,tag=overclockO] container.* minecraft:heavy_core[minecraft:custom_name={"text":"Overclock","bold":true,"color":"dark_purple","italic":false}] run effect clear @a[tag=p1] water_breathing

execute if items entity @p[tag=p1,tag=!overclockO] container.* minecraft:heavy_core[minecraft:custom_name={"text":"Overclock","bold":true,"color":"dark_purple","italic":false}] run tellraw @a[tag=p1] ["Sorry, you don't own this spell."]
execute if items entity @p[tag=p1,tag=!overclockO] container.* minecraft:heavy_core[minecraft:custom_name={"text":"Overclock","bold":true,"color":"dark_purple","italic":false}] run clear @a[tag=p1]


#Shifting Shadows Select P1
execute if score Spell_Points_P1 Spell_Points >= shiftingShadowsSp spellStats run execute if items entity @p[tag=p1,tag=shiftingshadowsO] container.* minecraft:echo_shard[minecraft:custom_name={"text":"Shifting Shadows","bold":true,"color":"gold","italic":false}] run tag @p[tag=p1] add shiftingshadows
execute if score Spell_Points_P1 Spell_Points >= shiftingShadowsSp spellStats run execute if items entity @p[tag=p1,tag=shiftingshadowsO] container.* minecraft:echo_shard[minecraft:custom_name={"text":"Shifting Shadows","bold":true,"color":"gold","italic":false}] run tellraw @a[tag=p1] ["",{"selector":"@p[tag=p1]"}," picked Shifting Shadows."]
execute if score Spell_Points_P1 Spell_Points < shiftingShadowsSp spellStats run execute if items entity @p[tag=p1,tag=shiftingshadowsO] container.* minecraft:echo_shard[minecraft:custom_name={"text":"Shifting Shadows","bold":true,"color":"gold","italic":false}] run tellraw @a[tag=p1] ["",{"selector":"@p[tag=p1]"}," You dont have enough spell points to equip this spell."]
execute if score Spell_Points_P1 Spell_Points < shiftingShadowsSp spellStats run execute if items entity @p[tag=p1,tag=shiftingshadowsO] container.* minecraft:echo_shard[minecraft:custom_name={"text":"Shifting Shadows","bold":true,"color":"gold","italic":false}] run clear @a[tag=p1]
execute if score Spell_Points_P1 Spell_Points >= shiftingShadowsSp spellStats run execute if items entity @p[tag=p1,tag=shiftingshadowsO] container.* minecraft:echo_shard[minecraft:custom_name={"text":"Shifting Shadows","bold":true,"color":"gold","italic":false}] run scoreboard players operation Spell_Points_P1 Spell_Points -= shiftingShadowsSp spellStats
execute if score Spell_Points_P1 Spell_Points >= shiftingShadowsSp spellStats run execute if items entity @p[tag=p1,tag=shiftingshadowsO] container.* minecraft:echo_shard[minecraft:custom_name={"text":"Shifting Shadows","bold":true,"color":"gold","italic":false}] run effect clear @a[tag=p1] water_breathing

execute if items entity @p[tag=p1,tag=!shiftingshadowsO] container.* minecraft:echo_shard[minecraft:custom_name={"text":"Shifting Shadows","bold":true,"color":"gold","italic":false}] run tellraw @a[tag=p1] ["Sorry, you don't own this spell."]
execute if items entity @p[tag=p1,tag=!shiftingshadowsO] container.* minecraft:echo_shard[minecraft:custom_name={"text":"Shifting Shadows","bold":true,"color":"gold","italic":false}] run clear @a[tag=p1]


#Chrono Warp Select P1
execute if score Spell_Points_P1 Spell_Points >= chronoWarpSp spellStats run execute if items entity @p[tag=p1,tag=chronowarpO] container.* minecraft:clock[minecraft:custom_name={"text":"Chrono Warp","bold":true,"color":"gold","italic":false}] run tag @p[tag=p1] add chronowarp
execute if score Spell_Points_P1 Spell_Points >= chronoWarpSp spellStats run execute if items entity @p[tag=p1,tag=chronowarpO] container.* minecraft:clock[minecraft:custom_name={"text":"Chrono Warp","bold":true,"color":"gold","italic":false}] run tellraw @a[tag=p1] ["",{"selector":"@p[tag=p1]"}," picked Chrono Warp."]
execute if score Spell_Points_P1 Spell_Points < chronoWarpSp spellStats run execute if items entity @p[tag=p1,tag=chronowarpO] container.* minecraft:clock[minecraft:custom_name={"text":"Chrono Warp","bold":true,"color":"gold","italic":false}] run tellraw @a[tag=p1] ["",{"selector":"@p[tag=p1]"}," You dont have enough spell points to equip this spell."]
execute if score Spell_Points_P1 Spell_Points < chronoWarpSp spellStats run execute if items entity @p[tag=p1,tag=chronowarpO] container.* minecraft:clock[minecraft:custom_name={"text":"Chrono Warp","bold":true,"color":"gold","italic":false}] run clear @a[tag=p1]
execute if score Spell_Points_P1 Spell_Points >= chronoWarpSp spellStats run execute if items entity @p[tag=p1,tag=chronowarpO] container.* minecraft:clock[minecraft:custom_name={"text":"Chrono Warp","bold":true,"color":"gold","italic":false}] run scoreboard players operation Spell_Points_P1 Spell_Points -= chronoWarpSp spellStats
execute if score Spell_Points_P1 Spell_Points >= chronoWarpSp spellStats run execute if items entity @p[tag=p1,tag=chronowarpO] container.* minecraft:clock[minecraft:custom_name={"text":"Chrono Warp","bold":true,"color":"gold","italic":false}] run effect clear @a[tag=p1] water_breathing

execute if items entity @p[tag=p1,tag=!chronowarpO] container.* minecraft:clock[minecraft:custom_name={"text":"Chrono Warp","bold":true,"color":"gold","italic":false}] run tellraw @a[tag=p1] ["Sorry, you don't own this spell."]
execute if items entity @p[tag=p1,tag=!chronowarpO] container.* minecraft:clock[minecraft:custom_name={"text":"Chrono Warp","bold":true,"color":"gold","italic":false}] run clear @a[tag=p1]


#Healing Totem Select P1
execute if score Spell_Points_P1 Spell_Points >= healingTotemSp spellStats run execute if items entity @p[tag=p1,tag=healingtotemO] container.* minecraft:totem_of_undying[minecraft:custom_name={"text":"Healing Totem","bold":true,"color":"gold","italic":false}] run tag @p[tag=p1] add healingtotem
execute if score Spell_Points_P1 Spell_Points >= healingTotemSp spellStats run execute if items entity @p[tag=p1,tag=healingtotemO] container.* minecraft:totem_of_undying[minecraft:custom_name={"text":"Healing Totem","bold":true,"color":"gold","italic":false}] run tellraw @a[tag=p1] ["",{"selector":"@p[tag=p1]"}," picked Healing Totem."]
execute if score Spell_Points_P1 Spell_Points < healingTotemSp spellStats run execute if items entity @p[tag=p1,tag=healingtotemO] container.* minecraft:totem_of_undying[minecraft:custom_name={"text":"Healing Totem","bold":true,"color":"gold","italic":false}] run tellraw @a[tag=p1] ["",{"selector":"@p[tag=p1]"}," You dont have enough spell points to equip this spell."]
execute if score Spell_Points_P1 Spell_Points < healingTotemSp spellStats run execute if items entity @p[tag=p1,tag=healingtotemO] container.* minecraft:totem_of_undying[minecraft:custom_name={"text":"Healing Totem","bold":true,"color":"gold","italic":false}] run clear @a[tag=p1]
execute if score Spell_Points_P1 Spell_Points >= healingTotemSp spellStats run execute if items entity @p[tag=p1,tag=healingtotemO] container.* minecraft:totem_of_undying[minecraft:custom_name={"text":"Healing Totem","bold":true,"color":"gold","italic":false}] run scoreboard players operation Spell_Points_P1 Spell_Points -= healingTotemSp spellStats
execute if score Spell_Points_P1 Spell_Points >= healingTotemSp spellStats run execute if items entity @p[tag=p1,tag=healingtotemO] container.* minecraft:totem_of_undying[minecraft:custom_name={"text":"Healing Totem","bold":true,"color":"gold","italic":false}] run effect clear @a[tag=p1] water_breathing


execute if items entity @p[tag=p1,tag=!healingtotemO] container.* minecraft:totem_of_undying[minecraft:custom_name={"text":"Healing Totem","bold":true,"color":"gold","italic":false}] run tellraw @a[tag=p1] ["Sorry, you don't own this spell."]
execute if items entity @p[tag=p1,tag=!healingtotemO] container.* minecraft:totem_of_undying[minecraft:custom_name={"text":"Healing Totem","bold":true,"color":"gold","italic":false}] run clear @a[tag=p1]

#Life Leech Select P1
execute if score Spell_Points_P1 Spell_Points >= lifeLeechSp spellStats run execute if items entity @p[tag=p1,tag=lifeleechO] container.* minecraft:weeping_vines[minecraft:custom_name={"text":"Life Leech","bold":true,"color":"dark_purple","italic":false}] run tag @p[tag=p1] add lifeleech
execute if score Spell_Points_P1 Spell_Points >= lifeLeechSp spellStats run execute if items entity @p[tag=p1,tag=lifeleechO] container.* minecraft:weeping_vines[minecraft:custom_name={"text":"Life Leech","bold":true,"color":"dark_purple","italic":false}] run tellraw @a[tag=p1] ["",{"selector":"@p[tag=p1]"}," picked Life Leech."]
execute if score Spell_Points_P1 Spell_Points < lifeLeechSp spellStats run execute if items entity @p[tag=p1,tag=lifeleechO] container.* minecraft:weeping_vines[minecraft:custom_name={"text":"Life Leech","bold":true,"color":"dark_purple","italic":false}] run tellraw @a[tag=p1] ["",{"selector":"@p[tag=p1]"}," You dont have enough spell points to equip this spell."]
execute if score Spell_Points_P1 Spell_Points < lifeLeechSp spellStats run execute if items entity @p[tag=p1,tag=lifeleechO] container.* minecraft:weeping_vines[minecraft:custom_name={"text":"Life Leech","bold":true,"color":"dark_purple","italic":false}] run clear @a[tag=p1]
execute if score Spell_Points_P1 Spell_Points >= lifeLeechSp spellStats run execute if items entity @p[tag=p1,tag=lifeleechO] container.* minecraft:weeping_vines[minecraft:custom_name={"text":"Life Leech","bold":true,"color":"dark_purple","italic":false}] run scoreboard players operation Spell_Points_P1 Spell_Points -= lifeLeechSp spellStats
execute if score Spell_Points_P1 Spell_Points >= lifeLeechSp spellStats run execute if items entity @p[tag=p1,tag=lifeleechO] container.* minecraft:weeping_vines[minecraft:custom_name={"text":"Life Leech","bold":true,"color":"dark_purple","italic":false}] run effect clear @a[tag=p1] water_breathing


execute if items entity @p[tag=p1,tag=!lifeleechO] container.* minecraft:weeping_vines[minecraft:custom_name={"text":"Life Leech","bold":true,"color":"dark_purple","italic":false}] run tellraw @a[tag=p1] ["Sorry, you don't own this spell."]
execute if items entity @p[tag=p1,tag=!lifeleechO] container.* minecraft:weeping_vines[minecraft:custom_name={"text":"Life Leech","bold":true,"color":"dark_purple","italic":false}] run clear @a[tag=p1]

#Decimate Select P1
execute if score Spell_Points_P1 Spell_Points >= decimateSp spellStats run execute if items entity @p[tag=p1,tag=decimateO] container.* minecraft:pointed_dripstone[minecraft:custom_name={"text":"Decimate","bold":true,"color":"dark_purple","italic":false}] run tag @p[tag=p1] add decimate
execute if score Spell_Points_P1 Spell_Points >= decimateSp spellStats run execute if items entity @p[tag=p1,tag=decimateO] container.* minecraft:pointed_dripstone[minecraft:custom_name={"text":"Decimate","bold":true,"color":"dark_purple","italic":false}] run tellraw @a[tag=p1] ["",{"selector":"@p[tag=p1]"}," picked Decimate."]
execute if score Spell_Points_P1 Spell_Points < decimateSp spellStats run execute if items entity @p[tag=p1,tag=decimateO] container.* minecraft:pointed_dripstone[minecraft:custom_name={"text":"Decimate","bold":true,"color":"dark_purple","italic":false}] run tellraw @a[tag=p1] ["",{"selector":"@p[tag=p1]"}," You dont have enough spell points to equip this spell."]
execute if score Spell_Points_P1 Spell_Points < decimateSp spellStats run execute if items entity @p[tag=p1,tag=decimateO] container.* minecraft:pointed_dripstone[minecraft:custom_name={"text":"Decimate","bold":true,"color":"dark_purple","italic":false}] run clear @a[tag=p1]
execute if score Spell_Points_P1 Spell_Points >= decimateSp spellStats run execute if items entity @p[tag=p1,tag=decimateO] container.* minecraft:pointed_dripstone[minecraft:custom_name={"text":"Decimate","bold":true,"color":"dark_purple","italic":false}] run scoreboard players operation Spell_Points_P1 Spell_Points -= decimateSp spellStats
execute if score Spell_Points_P1 Spell_Points >= decimateSp spellStats run execute if items entity @p[tag=p1,tag=decimateO] container.* minecraft:pointed_dripstone[minecraft:custom_name={"text":"Decimate","bold":true,"color":"dark_purple","italic":false}] run effect clear @a[tag=p1] water_breathing


execute if items entity @p[tag=p1,tag=!decimateO] container.* minecraft:pointed_dripstone[minecraft:custom_name={"text":"Decimate","bold":true,"color":"dark_purple","italic":false}] run tellraw @a[tag=p1] ["Sorry, you don't own this spell."]
execute if items entity @p[tag=p1,tag=!decimateO] container.* minecraft:pointed_dripstone[minecraft:custom_name={"text":"Decimate","bold":true,"color":"dark_purple","italic":false}] run clear @a[tag=p1]

#Healing Rain Select P1
execute if score Spell_Points_P1 Spell_Points >= healingRainSp spellStats run execute if items entity @p[tag=p1,tag=healingrainO] container.* minecraft:ghast_tear[minecraft:custom_name={"text":"Healing Rain","bold":true,"color":"blue","italic":false}] run tag @p[tag=p1] add healingrain
execute if score Spell_Points_P1 Spell_Points >= healingRainSp spellStats run execute if items entity @p[tag=p1,tag=healingrainO] container.* minecraft:ghast_tear[minecraft:custom_name={"text":"Healing Rain","bold":true,"color":"blue","italic":false}] run tellraw @a[tag=p1] ["",{"selector":"@p[tag=p1]"}," picked Healing Rain."]
execute if score Spell_Points_P1 Spell_Points < healingRainSp spellStats run execute if items entity @p[tag=p1,tag=healingrainO] container.* minecraft:ghast_tear[minecraft:custom_name={"text":"Healing Rain","bold":true,"color":"blue","italic":false}] run tellraw @a[tag=p1] ["",{"selector":"@p[tag=p1]"}," You dont have enough spell points to equip this spell."]
execute if score Spell_Points_P1 Spell_Points < healingRainSp spellStats run execute if items entity @p[tag=p1,tag=healingrainO] container.* minecraft:ghast_tear[minecraft:custom_name={"text":"Healing Rain","bold":true,"color":"blue","italic":false}] run clear @a[tag=p1]
execute if score Spell_Points_P1 Spell_Points >= healingRainSp spellStats run execute if items entity @p[tag=p1,tag=healingrainO] container.* minecraft:ghast_tear[minecraft:custom_name={"text":"Healing Rain","bold":true,"color":"blue","italic":false}] run scoreboard players operation Spell_Points_P1 Spell_Points -= healingRainSp spellStats
execute if score Spell_Points_P1 Spell_Points >= healingRainSp spellStats run execute if items entity @p[tag=p1,tag=healingrainO] container.* minecraft:ghast_tear[minecraft:custom_name={"text":"Healing Rain","bold":true,"color":"blue","italic":false}] run effect clear @a[tag=p1] water_breathing


execute if items entity @p[tag=p1,tag=!healingrainO] container.* minecraft:ghast_tear[minecraft:custom_name={"text":"Healing Rain","bold":true,"color":"blue","italic":false}] run tellraw @a[tag=p1] ["Sorry, you don't own this spell."]
execute if items entity @p[tag=p1,tag=!healingrainO] container.* minecraft:ghast_tear[minecraft:custom_name={"text":"Healing Rain","bold":true,"color":"blue","italic":false}] run clear @a[tag=p1]

execute if score spellpick1 drafts > Spell_Points_P1 Spell_Points run clear @a[tag=p1]

execute if score Spell_Points_P1 Spell_Points matches 0 run execute if score Spell_Points_P2 Spell_Points matches 0 run function ch:game1start