execute as @a if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:luck":{amplifier:{min:0,max:0}}}}} run tag @s add lootbox
execute store result score drop lootboxes run random value 1..100
execute if score drop lootboxes matches 1..50 run execute store result score spellraritydrop lootboxes run random value 1..10
execute if score drop lootboxes matches 50..99 run execute store result score heroraritydrop lootboxes run random value 1..10
execute if score drop lootboxes matches 100 run execute store result score mapdrop lootboxes run random value 1..2
execute if score spellraritydrop lootboxes matches 1..4 run execute store result score uncommonspell lootboxes run random value 1..10
execute if score spellraritydrop lootboxes matches 5..7 run execute store result score rarespell lootboxes run random value 1..7
execute if score spellraritydrop lootboxes matches 8..9 run execute store result score epicspell lootboxes run random value 1..7
execute if score spellraritydrop lootboxes matches 10 run execute store result score legendaryspell lootboxes run random value 1..3
execute if score heroraritydrop lootboxes matches 1..4 run execute store result score uncommonhero lootboxes run random value 1..8
execute if score heroraritydrop lootboxes matches 5..7 run execute store result score rarehero lootboxes run random value 1..7
execute if score heroraritydrop lootboxes matches 8..9 run execute store result score epichero lootboxes run random value 1..7
execute if score heroraritydrop lootboxes matches 10 run execute store result score legendaryhero lootboxes run random value 1..5

#Map Drops
execute if score mapdrop lootboxes matches 1 run scoreboard players add @p[tag=lootbox,tag=colosseumO] Shards 800
execute if score mapdrop lootboxes matches 1 run execute at @p[tag=lootbox,tag=!colosseumO] run say @p[tag=lootbox,tag=!colosseumO] unlocked the Colosseum Map!
execute if score mapdrop lootboxes matches 1 run tag @p[tag=lootbox,tag=!colosseumO] add colosseumO
execute if score mapdrop lootboxes matches 2 run scoreboard players add @p[tag=lootbox,tag=labO] Shards 800
execute if score mapdrop lootboxes matches 2 run execute at @p[tag=lootbox,tag=!labO] run say @p[tag=lootbox,tag=!labO] unlocked the Lab Map!
execute if score mapdrop lootboxes matches 2 run tag @p[tag=lootbox,tag=!labO] add labO

#Uncommon Spell Drops
execute if score uncommonspell lootboxes matches 1 run scoreboard players add @p[tag=lootbox,tag=frostboltO] Shards 25
execute if score uncommonspell lootboxes matches 1 run execute at @p[tag=lootbox,tag=!frostboltO] run say @p[tag=lootbox,tag=!frostboltO] unlocked Frostbolt!
execute if score uncommonspell lootboxes matches 1 run tag @p[tag=lootbox,tag=!frostboltO] add frostboltO

execute if score uncommonspell lootboxes matches 2 run scoreboard players add @p[tag=lootbox,tag=magicmissileO] Shards 25
execute if score uncommonspell lootboxes matches 2 run execute at @p[tag=lootbox,tag=!magicmissileO] run say @p[tag=lootbox,tag=!magicmissileO] smites thee with Magic Missile!
execute if score uncommonspell lootboxes matches 2 run tag @p[tag=lootbox,tag=!magicmissileO] add magicmissileO

execute if score uncommonspell lootboxes matches 3 run scoreboard players add @p[tag=lootbox,tag=ritualofbloodO] Shards 25
execute if score uncommonspell lootboxes matches 3 run execute at @p[tag=lootbox,tag=!ritualofbloodO] run say @p[tag=lootbox,tag=!ritualofbloodO] unlocked Ritual of Blood!
execute if score uncommonspell lootboxes matches 3 run tag @p[tag=lootbox,tag=!ritualofbloodO] add ritualofbloodO

execute if score uncommonspell lootboxes matches 4 run scoreboard players add @p[tag=lootbox,tag=meteorO] Shards 25
execute if score uncommonspell lootboxes matches 4 run execute at @p[tag=lootbox,tag=!meteorO] run say @p[tag=lootbox,tag=!meteorO] unlocked Meteor!
execute if score uncommonspell lootboxes matches 4 run tag @p[tag=lootbox,tag=!meteorO] add meteorO

execute if score uncommonspell lootboxes matches 5 run scoreboard players add @p[tag=lootbox,tag=shieldO] Shards 25
execute if score uncommonspell lootboxes matches 5 run execute at @p[tag=lootbox,tag=!shieldO] run say @p[tag=lootbox,tag=!shieldO] unlocked Shield!
execute if score uncommonspell lootboxes matches 5 run tag @p[tag=lootbox,tag=!shieldO] add shieldO

execute if score uncommonspell lootboxes matches 6 run scoreboard players add @p[tag=lootbox,tag=shockorbO] Shards 25
execute if score uncommonspell lootboxes matches 6 run execute at @p[tag=lootbox,tag=!shockorbO] run say @p[tag=lootbox,tag=!shockorbO] unlocked Ball Lightning!
execute if score uncommonspell lootboxes matches 6 run tag @p[tag=lootbox,tag=!shockorbO] add shockorbO

execute if score uncommonspell lootboxes matches 7 run scoreboard players add @p[tag=lootbox,tag=witchboltO] Shards 25
execute if score uncommonspell lootboxes matches 7 run execute at @p[tag=lootbox,tag=!witchboltO] run say @p[tag=lootbox,tag=!witchboltO] unlocked Witch Bolt!
execute if score uncommonspell lootboxes matches 7 run tag @p[tag=lootbox,tag=!witchboltO] add witchboltO

execute if score uncommonspell lootboxes matches 8 run scoreboard players add @p[tag=lootbox,tag=swiftnessO] Shards 25
execute if score uncommonspell lootboxes matches 8 run execute at @p[tag=lootbox,tag=!swiftnessO] run say @p[tag=lootbox,tag=!swiftnessO] unlocked Swiftness!
execute if score uncommonspell lootboxes matches 8 run tag @p[tag=lootbox,tag=!swiftnessO] add swiftnessO

execute if score uncommonspell lootboxes matches 9 run scoreboard players add @p[tag=lootbox,tag=embrittleO] Shards 25
execute if score uncommonspell lootboxes matches 9 run execute at @p[tag=lootbox,tag=!embrittleO] run say @p[tag=lootbox,tag=!embrittleO] unlocked Embrittle!
execute if score uncommonspell lootboxes matches 9 run tag @p[tag=lootbox,tag=!embrittleO] add embrittleO

execute if score uncommonspell lootboxes matches 10 run scoreboard players add @p[tag=lootbox,tag=embiggenO] Shards 25
execute if score uncommonspell lootboxes matches 10 run execute at @p[tag=lootbox,tag=!embiggenO] run say @p[tag=lootbox,tag=!embiggenO] unlocked Embiggen!
execute if score uncommonspell lootboxes matches 10 run tag @p[tag=lootbox,tag=!embiggenO] add embiggenO

#Rare Spell Drops
execute if score rarespell lootboxes matches 1 run scoreboard players add @p[tag=lootbox,tag=immolateO] Shards 50
execute if score rarespell lootboxes matches 1 run execute at @p[tag=lootbox,tag=!immolateO] run say @p[tag=lootbox,tag=!immolateO] unlocked Immolate!
execute if score rarespell lootboxes matches 1 run tag @p[tag=lootbox,tag=!immolateO] add immolateO

execute if score rarespell lootboxes matches 2 run scoreboard players add @p[tag=lootbox,tag=evileyeO] Shards 50
execute if score rarespell lootboxes matches 2 run execute at @p[tag=lootbox,tag=!evileyeO] run say @p[tag=lootbox,tag=!evileyeO] unlocked Evil Eye!
execute if score rarespell lootboxes matches 2 run tag @p[tag=lootbox,tag=!evileyeO] add evileyeO

execute if score rarespell lootboxes matches 3 run scoreboard players add @p[tag=lootbox,tag=protectorsruneO] Shards 50
execute if score rarespell lootboxes matches 3 run execute at @p[tag=lootbox,tag=!protectorsruneO] run say @p[tag=lootbox,tag=!protectorsruneO] unlocked Protector's Rune!
execute if score rarespell lootboxes matches 3 run tag @p[tag=lootbox,tag=!protectorsruneO] add protectorsruneO

execute if score rarespell lootboxes matches 4 run scoreboard players add @p[tag=lootbox,tag=miracleO] Shards 50
execute if score rarespell lootboxes matches 4 run execute at @p[tag=lootbox,tag=!miracleO] run say @p[tag=lootbox,tag=!miracleO] unlocked Miracle!
execute if score rarespell lootboxes matches 4 run tag @p[tag=lootbox,tag=!miracleO] add miracleO

execute if score rarespell lootboxes matches 5 run scoreboard players add @p[tag=lootbox,tag=miasmaO] Shards 50
execute if score rarespell lootboxes matches 5 run execute at @p[tag=lootbox,tag=!miasmaO] run say @p[tag=lootbox,tag=!miasmaO] unlocked Miasma!
execute if score rarespell lootboxes matches 5 run tag @p[tag=lootbox,tag=!miasmaO] add miasmaO

execute if score rarespell lootboxes matches 6 run scoreboard players add @p[tag=lootbox,tag=wardO] Shards 50
execute if score rarespell lootboxes matches 6 run execute at @p[tag=lootbox,tag=!wardO] run say @p[tag=lootbox,tag=!wardO] unlocked Ward!
execute if score rarespell lootboxes matches 6 run tag @p[tag=lootbox,tag=!wardO] add wardO

execute if score rarespell lootboxes matches 7 run scoreboard players add @p[tag=lootbox,tag=blizzardO] Shards 50
execute if score rarespell lootboxes matches 7 run execute at @p[tag=lootbox,tag=!blizzardO] run say @p[tag=lootbox,tag=!blizzardO] unlocked Blizzard!
execute if score rarespell lootboxes matches 7 run tag @p[tag=lootbox,tag=!blizzardO] add blizzardO

#Epic Spell Drops
execute if score epicspell lootboxes matches 1 run scoreboard players add @p[tag=lootbox,tag=plagueO] Shards 100
execute if score epicspell lootboxes matches 1 run execute at @p[tag=lootbox,tag=!plagueO] run say @p[tag=lootbox,tag=!plagueO] unlocked Plague!
execute if score epicspell lootboxes matches 1 run tag @p[tag=lootbox,tag=!plagueO] add plagueO

execute if score epicspell lootboxes matches 2 run scoreboard players add @p[tag=lootbox,tag=secondwindO] Shards 100
execute if score epicspell lootboxes matches 2 run execute at @p[tag=lootbox,tag=!secondwindO] run say @p[tag=lootbox,tag=!secondwindO] unlocked Second Wind!
execute if score epicspell lootboxes matches 2 run tag @p[tag=lootbox,tag=!secondwindO] add secondwindO

execute if score epicspell lootboxes matches 3 run scoreboard players add @p[tag=lootbox,tag=witchesbrewO] Shards 100
execute if score epicspell lootboxes matches 3 run execute at @p[tag=lootbox,tag=!witchesbrewO] run say @p[tag=lootbox,tag=!witchesbrewO] unlocked Witches Brew!
execute if score epicspell lootboxes matches 3 run tag @p[tag=lootbox,tag=!witchesbrewO] add witchesbrewO

execute if score epicspell lootboxes matches 4 run scoreboard players add @p[tag=lootbox,tag=fontofwisdomO] Shards 100
execute if score epicspell lootboxes matches 4 run execute at @p[tag=lootbox,tag=!fontofwisdomO] run say @p[tag=lootbox,tag=!fontofwisdomO] unlocked Font of Wisdom!
execute if score epicspell lootboxes matches 4 run tag @p[tag=lootbox,tag=!fontofwisdomO] add fontofwisdomO

execute if score epicspell lootboxes matches 5 run scoreboard players add @p[tag=lootbox,tag=fountainofyouthO] Shards 100
execute if score epicspell lootboxes matches 5 run execute at @p[tag=lootbox,tag=!fountainofyouthO] run say @p[tag=lootbox,tag=!fountainofyouthO] unlocked Fountain of Youth!
execute if score epicspell lootboxes matches 5 run tag @p[tag=lootbox,tag=!fountainofyouthO] add fountainofyouthO

execute if score epicspell lootboxes matches 6 run scoreboard players add @p[tag=lootbox,tag=overclockO] Shards 100
execute if score epicspell lootboxes matches 6 run execute at @p[tag=lootbox,tag=!overclockO] run say @p[tag=lootbox,tag=!overclockO] unlocked Overclock!
execute if score epicspell lootboxes matches 6 run tag @p[tag=lootbox,tag=!overclockO] add overclockO

execute if score epicspell lootboxes matches 7 run scoreboard players add @p[tag=lootbox,tag=dragonforgeO] Shards 100
execute if score epicspell lootboxes matches 7 run execute at @p[tag=lootbox,tag=!dragonforgeO] run say @p[tag=lootbox,tag=!dragonforgeO] unlocked Dragonforge!
execute if score epicspell lootboxes matches 7 run tag @p[tag=lootbox,tag=!dragonforgeO] add dragonforgeO

#Legendary Spell Drops
execute if score legendaryspell lootboxes matches 1 run scoreboard players add @p[tag=lootbox,tag=shiftingshadowsO] Shards 200
execute if score legendaryspell lootboxes matches 1 run execute at @p[tag=lootbox,tag=!shiftingshadowsO] run say @p[tag=lootbox,tag=!shiftingshadowsO] unlocked Shifting Shadows!
execute if score legendaryspell lootboxes matches 1 run tag @p[tag=lootbox,tag=!shiftingshadowsO] add shiftingshadowsO

execute if score legendaryspell lootboxes matches 2 run scoreboard players add @p[tag=lootbox,tag=chronowarpO] Shards 200
execute if score legendaryspell lootboxes matches 2 run execute at @p[tag=lootbox,tag=!chronowarpO] run say @p[tag=lootbox,tag=!chronowarpO] unlocked Chrono Warp!
execute if score legendaryspell lootboxes matches 2 run tag @p[tag=lootbox,tag=!chronowarpO] add chronowarpO

execute if score legendaryspell lootboxes matches 3 run scoreboard players add @p[tag=lootbox,tag=healingtotemO] Shards 200
execute if score legendaryspell lootboxes matches 3 run execute at @p[tag=lootbox,tag=!healingtotemO] run say @p[tag=lootbox,tag=!healingtotemO] unlocked Healing Totem!
execute if score legendaryspell lootboxes matches 3 run tag @p[tag=lootbox,tag=!healingtotemO] add healingtotemO

#Score resets
scoreboard players set drop lootboxes 0
scoreboard players set spellraritydrop lootboxes 0
scoreboard players set heroraritydrop lootboxes 0
scoreboard players set mapdrop lootboxes 0
scoreboard players set uncommonspell lootboxes 0
scoreboard players set rarespell lootboxes 0
scoreboard players set epicspell lootboxes 0
scoreboard players set legendaryspell lootboxes 0
scoreboard players set uncommonhero lootboxes 0
scoreboard players set rarehero lootboxes 0
scoreboard players set epichero lootboxes 0
scoreboard players set legendaryhero lootboxes 0
tag @a remove lootbox