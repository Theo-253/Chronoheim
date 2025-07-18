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

#Uncommon Hero Drops 
execute if score uncommonhero lootboxes matches 1 run scoreboard players add @p[tag=lootbox,tag=subjectO] Shards 50
execute if score uncommonhero lootboxes matches 1 run execute at @p[tag=lootbox,tag=!subjectO] run say @p[tag=lootbox,tag=!subjectO] unlocked Subject!
execute if score uncommonhero lootboxes matches 1 run tag @p[tag=lootbox,tag=!subjectO] add subjectO

execute if score uncommonhero lootboxes matches 2 run scoreboard players add @p[tag=lootbox,tag=roboO] Shards 50
execute if score uncommonhero lootboxes matches 2 run execute at @p[tag=lootbox,tag=!roboO] run say @p[tag=lootbox,tag=!roboO] unlocked Robo!
execute if score uncommonhero lootboxes matches 2 run tag @p[tag=lootbox,tag=!roboO] add roboO

execute if score uncommonhero lootboxes matches 3 run scoreboard players add @p[tag=lootbox,tag=thornO] Shards 50
execute if score uncommonhero lootboxes matches 3 run execute at @p[tag=lootbox,tag=!thornO] run say @p[tag=lootbox,tag=!thornO] unlocked Thorn!
execute if score uncommonhero lootboxes matches 3 run tag @p[tag=lootbox,tag=!thornO] add thornO

execute if score uncommonhero lootboxes matches 4 run scoreboard players add @p[tag=lootbox,tag=kongO] Shards 50
execute if score uncommonhero lootboxes matches 4 run execute at @p[tag=lootbox,tag=!kongO] run say @p[tag=lootbox,tag=!kongO] unlocked K.O.N.G.!
execute if score uncommonhero lootboxes matches 4 run tag @p[tag=lootbox,tag=!kongO] add kongO

execute if score uncommonhero lootboxes matches 5 run scoreboard players add @p[tag=lootbox,tag=kirinO] Shards 50
execute if score uncommonhero lootboxes matches 5 run execute at @p[tag=lootbox,tag=!kirinO] run say @p[tag=lootbox,tag=!kirinO] unlocked Kirin
execute if score uncommonhero lootboxes matches 5 run tag @p[tag=lootbox,tag=!kirinO] add kirinO

execute if score uncommonhero lootboxes matches 6 run scoreboard players add @p[tag=lootbox,tag=robynO] Shards 50
execute if score uncommonhero lootboxes matches 6 run execute at @p[tag=lootbox,tag=!robynO] run say @p[tag=lootbox,tag=!robynO] unlocked Robyn!
execute if score uncommonhero lootboxes matches 6 run tag @p[tag=lootbox,tag=!robynO] add robynO

execute if score uncommonhero lootboxes matches 7 run scoreboard players add @p[tag=lootbox,tag=flintO] Shards 50
execute if score uncommonhero lootboxes matches 7 run execute at @p[tag=lootbox,tag=!flintO] run say @p[tag=lootbox,tag=!flintO] unlocked Flint!
execute if score uncommonhero lootboxes matches 7 run tag @p[tag=lootbox,tag=!flintO] add flintO

execute if score uncommonhero lootboxes matches 8 run scoreboard players add @p[tag=lootbox,tag=hydraO] Shards 50
execute if score uncommonhero lootboxes matches 8 run execute at @p[tag=lootbox,tag=!hydraO] run say @p[tag=lootbox,tag=!hydraO] unlocked Hydra!
execute if score uncommonhero lootboxes matches 8 run tag @p[tag=lootbox,tag=!hydraO] add hydraO

#Rare Hero Drops
execute if score rarehero lootboxes matches 1 run scoreboard players add @p[tag=lootbox,tag=aceO] Shards 100
execute if score rarehero lootboxes matches 1 run execute at @p[tag=lootbox,tag=!aceO] run say @p[tag=lootbox,tag=!aceO] unlocked Ace!
execute if score rarehero lootboxes matches 1 run tag @p[tag=lootbox,tag=!aceO] add aceO

execute if score rarehero lootboxes matches 2 run scoreboard players add @p[tag=lootbox,tag=londonO] Shards 100
execute if score rarehero lootboxes matches 2 run execute at @p[tag=lootbox,tag=!londonO] run say @p[tag=lootbox,tag=!londonO] unlocked London!
execute if score rarehero lootboxes matches 2 run tag @p[tag=lootbox,tag=!londonO] add londonO

execute if score rarehero lootboxes matches 3 run scoreboard players add @p[tag=lootbox,tag=golemO] Shards 100
execute if score rarehero lootboxes matches 3 run execute at @p[tag=lootbox,tag=!golemO] run say @p[tag=lootbox,tag=!golemO] unlocked Golem!
execute if score rarehero lootboxes matches 3 run tag @p[tag=lootbox,tag=!golemO] add golemO

execute if score rarehero lootboxes matches 4 run scoreboard players add @p[tag=lootbox,tag=blackbeardO] Shards 100
execute if score rarehero lootboxes matches 4 run execute at @p[tag=lootbox,tag=!blackbeardO] run say @p[tag=lootbox,tag=!blackbeardO] unlocked Blackbeard!
execute if score rarehero lootboxes matches 4 run tag @p[tag=lootbox,tag=!blackbeardO] add blackbeardO

execute if score rarehero lootboxes matches 5 run scoreboard players add @p[tag=lootbox,tag=grimoireO] Shards 100
execute if score rarehero lootboxes matches 5 run execute at @p[tag=lootbox,tag=!grimoireO] run say @p[tag=lootbox,tag=!grimoireO] unlocked Grimoire!
execute if score rarehero lootboxes matches 5 run tag @p[tag=lootbox,tag=!grimoireO] add grimoireO

execute if score rarehero lootboxes matches 6 run scoreboard players add @p[tag=lootbox,tag=grangorO] Shards 100
execute if score rarehero lootboxes matches 6 run execute at @p[tag=lootbox,tag=!grangorO] run say @p[tag=lootbox,tag=!grangorO] unlocked Grangor!
execute if score rarehero lootboxes matches 6 run tag @p[tag=lootbox,tag=!grangorO] add grangorO

execute if score rarehero lootboxes matches 7 run scoreboard players add @p[tag=lootbox,tag=dominoO] Shards 100
execute if score rarehero lootboxes matches 7 run execute at @p[tag=lootbox,tag=!dominoO] run say @p[tag=lootbox,tag=!dominoO] unlocked Domino!
execute if score rarehero lootboxes matches 7 run tag @p[tag=lootbox,tag=!dominoO] add dominoO

#Epic Hero Drops
execute if score epichero lootboxes matches 1 run scoreboard players add @p[tag=lootbox,tag=astroO] Shards 200
execute if score epichero lootboxes matches 1 run execute at @p[tag=lootbox,tag=!astroO] run say @p[tag=lootbox,tag=!astroO] unlocked Astro!
execute if score epichero lootboxes matches 1 run tag @p[tag=lootbox,tag=!astroO] add astroO

execute if score epichero lootboxes matches 2 run scoreboard players add @p[tag=lootbox,tag=docO] Shards 200
execute if score epichero lootboxes matches 2 run execute at @p[tag=lootbox,tag=!docO] run say @p[tag=lootbox,tag=!docO] unlocked Doc!
execute if score epichero lootboxes matches 2 run tag @p[tag=lootbox,tag=!docO] add docO

execute if score epichero lootboxes matches 3 run scoreboard players add @p[tag=lootbox,tag=lillithO] Shards 200
execute if score epichero lootboxes matches 3 run execute at @p[tag=lootbox,tag=!lillithO] run say @p[tag=lootbox,tag=!lillithO] unlocked Lillith!
execute if score epichero lootboxes matches 3 run tag @p[tag=lootbox,tag=!lillithO] add lillithO

execute if score epichero lootboxes matches 4 run scoreboard players add @p[tag=lootbox,tag=gabrielO] Shards 200
execute if score epichero lootboxes matches 4 run execute at @p[tag=lootbox,tag=!gabrielO] run say @p[tag=lootbox,tag=!gabrielO] unlocked Gabriel!
execute if score epichero lootboxes matches 4 run tag @p[tag=lootbox,tag=!gabrielO] add gabrielO

execute if score epichero lootboxes matches 5 run scoreboard players add @p[tag=lootbox,tag=gatsbyO] Shards 200
execute if score epichero lootboxes matches 5 run execute at @p[tag=lootbox,tag=!gatsbyO] run say @p[tag=lootbox,tag=!gatsbyO] unlocked Gatsby!
execute if score epichero lootboxes matches 5 run tag @p[tag=lootbox,tag=!gatsbyO] add gatsbyO

execute if score epichero lootboxes matches 6 run scoreboard players add @p[tag=lootbox,tag=garabaldiO] Shards 200
execute if score epichero lootboxes matches 6 run execute at @p[tag=lootbox,tag=!garabaldiO] run say @p[tag=lootbox,tag=!garabaldiO] unlocked Garabaldi!
execute if score epichero lootboxes matches 6 run tag @p[tag=lootbox,tag=!garabaldiO] add garabaldiO

execute if score epichero lootboxes matches 7 run scoreboard players add @p[tag=lootbox,tag=juniperO] Shards 200
execute if score epichero lootboxes matches 7 run execute at @p[tag=lootbox,tag=!juniperO] run say @p[tag=lootbox,tag=!juniperO] unlocked Juniper!
execute if score epichero lootboxes matches 7 run tag @p[tag=lootbox,tag=!juniperO] add juniperO

#Legendary Hero Drops
execute if score legendaryhero lootboxes matches 1 run scoreboard players add @p[tag=lootbox,tag=dilloO] Shards 400
execute if score legendaryhero lootboxes matches 1 run execute at @p[tag=lootbox,tag=!dilloO] run say @p[tag=lootbox,tag=!dilloO] unlocked Dillo!
execute if score legendaryhero lootboxes matches 1 run tag @p[tag=lootbox,tag=!dilloO] add dilloO

execute if score legendaryhero lootboxes matches 2 run scoreboard players add @p[tag=lootbox,tag=osirisO] Shards 400
execute if score legendaryhero lootboxes matches 2 run execute at @p[tag=lootbox,tag=!osirisO] run say @p[tag=lootbox,tag=!osirisO] unlocked Osiris!
execute if score legendaryhero lootboxes matches 2 run tag @p[tag=lootbox,tag=!osirisO] add osirisO

execute if score legendaryhero lootboxes matches 3 run scoreboard players add @p[tag=lootbox,tag=eidolonO] Shards 400
execute if score legendaryhero lootboxes matches 3 run execute at @p[tag=lootbox,tag=!eidolonO] run say @p[tag=lootbox,tag=!eidolonO] unlocked Eidolon!
execute if score legendaryhero lootboxes matches 3 run tag @p[tag=lootbox,tag=!eidolonO] add eidolonO

execute if score legendaryhero lootboxes matches 4 run scoreboard players add @p[tag=lootbox,tag=boomerO] Shards 400
execute if score legendaryhero lootboxes matches 4 run execute at @p[tag=lootbox,tag=!boomerO] run say @p[tag=lootbox,tag=!boomerO] unlocked Boomer!
execute if score legendaryhero lootboxes matches 4 run tag @p[tag=lootbox,tag=!boomerO] add boomerO

execute if score legendaryhero lootboxes matches 5 run scoreboard players add @p[tag=lootbox,tag=ripperO] Shards 400
execute if score legendaryhero lootboxes matches 5 run execute at @p[tag=lootbox,tag=!ripperO] run say @p[tag=lootbox,tag=!ripperO] unlocked Dillo!
execute if score legendaryhero lootboxes matches 5 run tag @p[tag=lootbox,tag=!ripperO] add ripperO

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
effect clear @a luck