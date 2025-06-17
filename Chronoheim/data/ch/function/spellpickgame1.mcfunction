#Spell Point Giver
execute if score character# slot6 matches 1.. run execute if score character# slot3 matches 1.. run execute if score Spell_Points_P1 Spell_Points matches ..-1 run scoreboard players set Spell_Points_P1 Spell_Points 7
execute if score character# slot6 matches 1.. run execute if score character# slot3 matches 1.. run execute if score Spell_Points_p2 Spell_Points matches ..-1 run scoreboard players set Spell_Points_P2 Spell_Points 7

#Fireball Select P1
execute if score Spell_Points_P1 Spell_Points matches 3.. run execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:1,max:1}}}}} run tag @p[tag=p1] add fireball
execute if score Spell_Points_P1 Spell_Points matches 3.. run execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:1,max:1}}}}} run scoreboard players remove Spell_Points_P1 Spell_Points 3
execute if score Spell_Points_P1 Spell_Points matches 3.. run execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:1,max:1}}}}} run say picked Fireball
execute if score Spell_Points_P1 Spell_Points matches 3.. run execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:1,max:1}}}}} run effect clear @a[tag=p1] water_breathing
execute if score Spell_Points_P1 Spell_Points matches ..2 run execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:1,max:1}}}}} run say You dont have enough spell points to equip this spell yeet yo

#Fireball Select P2
execute if score Spell_Points_P2 Spell_Points matches 3.. run execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:1,max:1}}}}} run tag @p[tag=p2] add fireball
execute if score Spell_Points_P2 Spell_Points matches 3.. run execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:1,max:1}}}}} run scoreboard players remove Spell_Points_P2 Spell_Points 3
execute if score Spell_Points_P1 Spell_Points matches 3.. run execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:1,max:1}}}}} run say picked Fireball
execute if score Spell_Points_P2 Spell_Points matches 3.. run execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:1,max:1}}}}} run effect clear @a[tag=p2] water_breathing
execute if score Spell_Points_P2 Spell_Points matches ..2 run execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:1,max:1}}}}} run say You dont have enough spell points to equip this spell yeet yo


#Heal Select P1
execute if score Spell_Points_P1 Spell_Points matches 2.. run execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:2,max:2}}}}} run tag @p[tag=p1] add heal
execute if score Spell_Points_P1 Spell_Points matches 2.. run execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:2,max:2}}}}} run scoreboard players remove Spell_Points_P1 Spell_Points 2
execute if score Spell_Points_P1 Spell_Points matches 2.. run execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:2,max:2}}}}} run say picked Heal
execute if score Spell_Points_P1 Spell_Points matches 2.. run execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:2,max:2}}}}} run effect clear @a[tag=p1] water_breathing
execute if score Spell_Points_P1 Spell_Points matches ..1 run execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:2,max:2}}}}} run say You dont have enough spell points to equip this spell yeet yo

#Heal Select P2
execute if score Spell_Points_P2 Spell_Points matches 2.. run execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:2,max:2}}}}} run tag @p[tag=p2] add heal
execute if score Spell_Points_P2 Spell_Points matches 2.. run execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:2,max:2}}}}} run scoreboard players remove Spell_Points_P2 Spell_Points 2
execute if score Spell_Points_P1 Spell_Points matches 2.. run execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:2,max:2}}}}} run say picked Heal
execute if score Spell_Points_P2 Spell_Points matches 2.. run execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:2,max:2}}}}} run effect clear @a[tag=p2] water_breathing
execute if score Spell_Points_P2 Spell_Points matches ..1 run execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:2,max:2}}}}} run say You dont have enough spell points to equip this spell yeet yo


#Chain Lightning Select P1
execute if score Spell_Points_P1 Spell_Points matches 2.. run execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:3,max:3}}}}} run tag @p[tag=p1] add chainlightning
execute if score Spell_Points_P1 Spell_Points matches 2.. run execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:3,max:3}}}}} run scoreboard players remove Spell_Points_P1 Spell_Points 2
execute if score Spell_Points_P1 Spell_Points matches 2.. run execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:3,max:3}}}}} run say picked Chain Lightning
execute if score Spell_Points_P1 Spell_Points matches 2.. run execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:3,max:3}}}}} run effect clear @a[tag=p1] water_breathing
execute if score Spell_Points_P1 Spell_Points matches ..1 run execute as @a[tag=p1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:3,max:3}}}}} run say You dont have enough spell points to equip this spell yeet yo

#Chain Lightning Select P2
execute if score Spell_Points_P2 Spell_Points matches 2.. run execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:3,max:3}}}}} run tag @p[tag=p2] add chainlightning
execute if score Spell_Points_P2 Spell_Points matches 2.. run execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:3,max:3}}}}} run scoreboard players remove Spell_Points_P2 Spell_Points 2
execute if score Spell_Points_P1 Spell_Points matches 2.. run execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:3,max:3}}}}} run say picked Chain Lightning
execute if score Spell_Points_P2 Spell_Points matches 2.. run execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:3,max:3}}}}} run effect clear @a[tag=p2] water_breathing
execute if score Spell_Points_P2 Spell_Points matches ..1 run execute as @a[tag=p2] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:3,max:3}}}}} run say You dont have enough spell points to equip this spell yeet yo


#Magic Missile Lightning Select P1
execute if score Spell_Points_P1 Spell_Points matches 1.. run execute as @a[tag=p1,tag=magicmissileO] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:4,max:4}}}}} run tag @p[tag=p1] add magicmissile
execute if score Spell_Points_P1 Spell_Points matches 1.. run execute as @a[tag=p1,tag=magicmissileO] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:4,max:4}}}}} run scoreboard players remove Spell_Points_P1 Spell_Points 1
execute if score Spell_Points_P1 Spell_Points matches 1.. run execute as @a[tag=p1,tag=magicmissileO] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:4,max:4}}}}} run say picked Magic Missile
execute if score Spell_Points_P1 Spell_Points matches 1.. run execute as @a[tag=p1,tag=magicmissileO] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:4,max:4}}}}} run effect clear @a[tag=p1] water_breathing
execute if score Spell_Points_P1 Spell_Points matches ..0 run execute as @a[tag=p1,tag=magicmissileO] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:4,max:4}}}}} run say You dont have enough spell points to equip this spell yeet yo

execute as @a[tag=!magicmissileO] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:4,max:4}}}}} run say Sorry, you don't own this spell


#Magic Missile Select P2
execute if score Spell_Points_P2 Spell_Points matches 1.. run execute as @a[tag=p2,tag=magicmissileO] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:4,max:4}}}}} run tag @p[tag=p2] add magicmissile
execute if score Spell_Points_P2 Spell_Points matches 1.. run execute as @a[tag=p2,tag=magicmissileO] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:4,max:4}}}}} run scoreboard players remove Spell_Points_P2 Spell_Points 1
execute if score Spell_Points_P2 Spell_Points matches 1.. run execute as @a[tag=p2,tag=magicmissileO] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:4,max:4}}}}} run say picked Magic Missile
execute if score Spell_Points_P2 Spell_Points matches 1.. run execute as @a[tag=p2,tag=magicmissileO] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:4,max:4}}}}} run effect clear @a[tag=p2] water_breathing
execute if score Spell_Points_P2 Spell_Points matches ..0 run execute as @a[tag=p2,tag=magicmissileO] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:4,max:4}}}}} run say You dont have enough spell points to equip this spell yeet yo


#Ritual of Blood Select P1
execute if score Spell_Points_P1 Spell_Points matches 1.. run execute as @a[tag=p1,tag=ritualofbloodO] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:5,max:5}}}}} run tag @p[tag=p1] add ritualofblood
execute if score Spell_Points_P1 Spell_Points matches 1.. run execute as @a[tag=p1,tag=ritualofbloodO] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:5,max:5}}}}} run scoreboard players remove Spell_Points_P1 Spell_Points 1
execute if score Spell_Points_P1 Spell_Points matches 1.. run execute as @a[tag=p1,tag=ritualofbloodO] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:5,max:5}}}}} run say picked Ritual of Blood
execute if score Spell_Points_P1 Spell_Points matches 1.. run execute as @a[tag=p1,tag=ritualofbloodO] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:5,max:5}}}}} run effect clear @a[tag=p1] water_breathing
execute if score Spell_Points_P1 Spell_Points matches ..0 run execute as @a[tag=p1,tag=ritualofbloodO] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:5,max:5}}}}} run say You dont have enough spell points to equip this spell yeet yo

execute as @a[tag=!ritualofbloodO] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:5,max:5}}}}} run say Sorry, you don't own this spell


#Ritual of Blood Select P2
execute if score Spell_Points_P2 Spell_Points matches 1.. run execute as @a[tag=p2,tag=ritualofbloodO] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:5,max:5}}}}} run tag @p[tag=p2] add ritualofblood
execute if score Spell_Points_P2 Spell_Points matches 1.. run execute as @a[tag=p2,tag=ritualofbloodO] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:5,max:5}}}}} run scoreboard players remove Spell_Points_P2 Spell_Points 1
execute if score Spell_Points_P2 Spell_Points matches 1.. run execute as @a[tag=p2,tag=ritualofbloodO] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:5,max:5}}}}} run say picked Ritual of Blood
execute if score Spell_Points_P2 Spell_Points matches 1.. run execute as @a[tag=p2,tag=ritualofbloodO] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:5,max:5}}}}} run effect clear @a[tag=p2] water_breathing
execute if score Spell_Points_P2 Spell_Points matches ..0 run execute as @a[tag=p2,tag=ritualofbloodO] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:5,max:5}}}}} run say You dont have enough spell points to equip this spell yeet yo


#Frost Bolt Select P1
execute if score Spell_Points_P1 Spell_Points matches 2.. run execute as @a[tag=p1,tag=frostboltO] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:6,max:6}}}}} run tag @p[tag=p1] add frostbolt
execute if score Spell_Points_P1 Spell_Points matches 2.. run execute as @a[tag=p1,tag=frostboltO] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:6,max:6}}}}} run scoreboard players remove Spell_Points_P1 Spell_Points 1
execute if score Spell_Points_P1 Spell_Points matches 2.. run execute as @a[tag=p1,tag=frostboltO] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:6,max:6}}}}} run say picked Frost Bolt
execute if score Spell_Points_P1 Spell_Points matches 2.. run execute as @a[tag=p1,tag=frostboltO] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:6,max:6}}}}} run effect clear @a[tag=p1] water_breathing
execute if score Spell_Points_P1 Spell_Points matches ..1 run execute as @a[tag=p1,tag=frostboltO] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:6,max:6}}}}} run say You dont have enough spell points to equip this spell yeet yo

execute as @a[tag=!ritualofbloodO] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:6,max:6}}}}} run say Sorry, you don't own this spell


#Frost Bolt Select P2
execute if score Spell_Points_P2 Spell_Points matches 2.. run execute as @a[tag=p2,tag=frostboltO] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:6,max:6}}}}} run tag @p[tag=p2] add frostbolt
execute if score Spell_Points_P2 Spell_Points matches 2.. run execute as @a[tag=p2,tag=frostboltO] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:6,max:6}}}}} run scoreboard players remove Spell_Points_P2 Spell_Points 2
execute if score Spell_Points_P2 Spell_Points matches 2.. run execute as @a[tag=p2,tag=frostboltO] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:6,max:6}}}}} run say picked Frostbolt
execute if score Spell_Points_P2 Spell_Points matches 2.. run execute as @a[tag=p2,tag=frostboltO] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:6,max:6}}}}} run effect clear @a[tag=p2] water_breathing
execute if score Spell_Points_P2 Spell_Points matches ..1 run execute as @a[tag=p2,tag=frostboltO] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:6,max:6}}}}} run say You dont have enough spell points to equip this spell yeet yo


#Meteor Select P1
execute if score Spell_Points_P1 Spell_Points matches 4.. run execute as @a[tag=p1,tag=meteorO] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:7,max:7}}}}} run tag @p[tag=p1] add meteor
execute if score Spell_Points_P1 Spell_Points matches 4.. run execute as @a[tag=p1,tag=meteorO] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:7,max:7}}}}} run scoreboard players remove Spell_Points_P1 Spell_Points 4
execute if score Spell_Points_P1 Spell_Points matches 4.. run execute as @a[tag=p1,tag=meteorO] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:7,max:7}}}}} run say picked Meteor
execute if score Spell_Points_P1 Spell_Points matches 4.. run execute as @a[tag=p1,tag=meteorO] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:7,max:7}}}}} run effect clear @a[tag=p1] water_breathing
execute if score Spell_Points_P1 Spell_Points matches ..3 run execute as @a[tag=p1,tag=meteorO] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:7,max:7}}}}} run say You dont have enough spell points to equip this spell yeet yo

execute as @a[tag=!meteorO] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:7,max:7}}}}} run say Sorry, you don't own this spell

#Meteor Select P2
execute if score Spell_Points_P2 Spell_Points matches 4.. run execute as @a[tag=p2,tag=meteorO] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:7,max:7}}}}} run tag @p[tag=p2] add meteor
execute if score Spell_Points_P2 Spell_Points matches 4.. run execute as @a[tag=p2,tag=meteorO] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:7,max:7}}}}} run scoreboard players remove Spell_Points_P2 Spell_Points 4
execute if score Spell_Points_P2 Spell_Points matches 4.. run execute as @a[tag=p2,tag=meteorO] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:7,max:7}}}}} run say picked Meteor
execute if score Spell_Points_P2 Spell_Points matches 4.. run execute as @a[tag=p2,tag=meteorO] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:7,max:7}}}}} run effect clear @a[tag=p2] water_breathing
execute if score Spell_Points_P2 Spell_Points matches ..3 run execute as @a[tag=p2,tag=meteorO] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:7,max:7}}}}} run say You dont have enough spell points to equip this spell yeet yo

#Shield Select P1
execute if score Spell_Points_P1 Spell_Points matches 2.. run execute as @a[tag=p1,tag=shieldO] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:8,max:8}}}}} run tag @p[tag=p1] add shield
execute if score Spell_Points_P1 Spell_Points matches 2.. run execute as @a[tag=p1,tag=shieldO] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:8,max:8}}}}} run scoreboard players remove Spell_Points_P1 Spell_Points 2
execute if score Spell_Points_P1 Spell_Points matches 2.. run execute as @a[tag=p1,tag=shieldO] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:8,max:8}}}}} run say picked Shield
execute if score Spell_Points_P1 Spell_Points matches 2.. run execute as @a[tag=p1,tag=shieldO] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:8,max:8}}}}} run effect clear @a[tag=p1] water_breathing
execute if score Spell_Points_P1 Spell_Points matches ..1 run execute as @a[tag=p1,tag=shieldO] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:8,max:8}}}}} run say You dont have enough spell points to equip this spell yeet yo

execute as @a[tag=!shieldO] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:8,max:8}}}}} run say Sorry, you don't own this spell

#Shield Select P2
execute if score Spell_Points_P2 Spell_Points matches 2.. run execute as @a[tag=p2,tag=shieldO] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:8,max:8}}}}} run tag @p[tag=p2] add shield
execute if score Spell_Points_P2 Spell_Points matches 2.. run execute as @a[tag=p2,tag=shieldO] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:8,max:8}}}}} run scoreboard players remove Spell_Points_P2 Spell_Points 2
execute if score Spell_Points_P2 Spell_Points matches 2.. run execute as @a[tag=p2,tag=shieldO] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:8,max:8}}}}} run say picked Shield
execute if score Spell_Points_P2 Spell_Points matches 2.. run execute as @a[tag=p2,tag=shieldO] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:8,max:8}}}}} run effect clear @a[tag=p2] water_breathing
execute if score Spell_Points_P2 Spell_Points matches ..1 run execute as @a[tag=p2,tag=shieldO] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:8,max:8}}}}} run say You dont have enough spell points to equip this spell yeet yo


#Shock Orb Select P1
execute if score Spell_Points_P1 Spell_Points matches 3.. run execute as @a[tag=p1,tag=shockorbO] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:9,max:9}}}}} run tag @p[tag=p1] add shockorb
execute if score Spell_Points_P1 Spell_Points matches 3.. run execute as @a[tag=p1,tag=shockorbO] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:9,max:9}}}}} run scoreboard players remove Spell_Points_P1 Spell_Points 3
execute if score Spell_Points_P1 Spell_Points matches 3.. run execute as @a[tag=p1,tag=shockorbO] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:9,max:9}}}}} run say picked Shock Orb
execute if score Spell_Points_P1 Spell_Points matches 3.. run execute as @a[tag=p1,tag=shockorbO] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:9,max:9}}}}} run effect clear @a[tag=p1] water_breathing
execute if score Spell_Points_P1 Spell_Points matches ..2 run execute as @a[tag=p1,tag=shockorbO] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:9,max:9}}}}} run say You dont have enough spell points to equip this spell yeet yo

execute as @a[tag=!shockorbO] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:9,max:9}}}}} run say Sorry, you don't own this spell

#Shock Orb Select P2
execute if score Spell_Points_P2 Spell_Points matches 3.. run execute as @a[tag=p2,tag=shockorbO] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:9,max:9}}}}} run tag @p[tag=p2] add shockorb
execute if score Spell_Points_P2 Spell_Points matches 3.. run execute as @a[tag=p2,tag=shockorbO] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:9,max:9}}}}} run scoreboard players remove Spell_Points_P2 Spell_Points 2
execute if score Spell_Points_P2 Spell_Points matches 3.. run execute as @a[tag=p2,tag=shockorbO] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:9,max:9}}}}} run say picked Shock Orb
execute if score Spell_Points_P2 Spell_Points matches 3.. run execute as @a[tag=p2,tag=shockorbO] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:9,max:9}}}}} run effect clear @a[tag=p2] water_breathing
execute if score Spell_Points_P2 Spell_Points matches ..2 run execute as @a[tag=p2,tag=shockorbO] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:9,max:9}}}}} run say You dont have enough spell points to equip this spell yeet yo


#Witch Bolt Select P1
execute if score Spell_Points_P1 Spell_Points matches 2.. run execute as @a[tag=p1,tag=witchboltO] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:10,max:10}}}}} run tag @p[tag=p1] add witchbolt
execute if score Spell_Points_P1 Spell_Points matches 2.. run execute as @a[tag=p1,tag=witchboltO] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:10,max:10}}}}} run scoreboard players remove Spell_Points_P1 Spell_Points 2
execute if score Spell_Points_P1 Spell_Points matches 2.. run execute as @a[tag=p1,tag=witchboltO] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:10,max:10}}}}} run say picked Witch Bolt
execute if score Spell_Points_P1 Spell_Points matches 2.. run execute as @a[tag=p1,tag=witchboltO] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:10,max:10}}}}} run effect clear @a[tag=p1] water_breathing
execute if score Spell_Points_P1 Spell_Points matches ..1 run execute as @a[tag=p1,tag=witchboltO] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:10,max:10}}}}} run say You dont have enough spell points to equip this spell yeet yo

execute as @a[tag=!witchboltO] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:10,max:10}}}}} run say Sorry, you don't own this spell

#Witch Bolt Select P2
execute if score Spell_Points_P2 Spell_Points matches 2.. run execute as @a[tag=p2,tag=witchboltO] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:10,max:10}}}}} run tag @p[tag=p2] add witchbolt
execute if score Spell_Points_P2 Spell_Points matches 2.. run execute as @a[tag=p2,tag=witchboltO] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:10,max:10}}}}} run scoreboard players remove Spell_Points_P2 Spell_Points 2
execute if score Spell_Points_P2 Spell_Points matches 2.. run execute as @a[tag=p2,tag=witchboltO] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:10,max:10}}}}} run say picked Witch Bolt
execute if score Spell_Points_P2 Spell_Points matches 2.. run execute as @a[tag=p2,tag=witchboltO] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:10,max:10}}}}} run effect clear @a[tag=p2] water_breathing
execute if score Spell_Points_P2 Spell_Points matches ..1 run execute as @a[tag=p2,tag=witchboltO] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:10,max:10}}}}} run say You dont have enough spell points to equip this spell yeet yo


#Swiftness Select P1
execute if score Spell_Points_P1 Spell_Points matches 1.. run execute as @a[tag=p1,tag=swiftnessO] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:11,max:11}}}}} run tag @p[tag=p1] add swiftness
execute if score Spell_Points_P1 Spell_Points matches 1.. run execute as @a[tag=p1,tag=swiftnessO] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:11,max:11}}}}} run scoreboard players remove Spell_Points_P1 Spell_Points 1
execute if score Spell_Points_P1 Spell_Points matches 1.. run execute as @a[tag=p1,tag=swiftnessO] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:11,max:11}}}}} run say picked Swiftness
execute if score Spell_Points_P1 Spell_Points matches 1.. run execute as @a[tag=p1,tag=swiftnessO] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:11,max:11}}}}} run effect clear @a[tag=p1] water_breathing
execute if score Spell_Points_P1 Spell_Points matches ..0 run execute as @a[tag=p1,tag=swiftnessO] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:11,max:11}}}}} run say You dont have enough spell points to equip this spell yeet yo

execute as @a[tag=!swiftnessO] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:11,max:11}}}}} run say Sorry, you don't own this spell

#Swiftness Select P2
execute if score Spell_Points_P2 Spell_Points matches 1.. run execute as @a[tag=p2,tag=swiftnessO] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:11,max:11}}}}} run tag @p[tag=p2] add swiftness
execute if score Spell_Points_P2 Spell_Points matches 1.. run execute as @a[tag=p2,tag=swiftnessO] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:11,max:11}}}}} run scoreboard players remove Spell_Points_P2 Spell_Points 1
execute if score Spell_Points_P2 Spell_Points matches 1.. run execute as @a[tag=p2,tag=swiftnessO] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:11,max:11}}}}} run say picked Swiftness
execute if score Spell_Points_P2 Spell_Points matches 1.. run execute as @a[tag=p2,tag=swiftnessO] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:11,max:11}}}}} run effect clear @a[tag=p2] water_breathing
execute if score Spell_Points_P2 Spell_Points matches ..0 run execute as @a[tag=p2,tag=swiftnessO] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:11,max:11}}}}} run say You dont have enough spell points to equip this spell yeet yo


#Embrittle Select P1
execute if score Spell_Points_P1 Spell_Points matches 2.. run execute as @a[tag=p1,tag=embrittleO] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:12,max:12}}}}} run tag @p[tag=p1] add embrittle
execute if score Spell_Points_P1 Spell_Points matches 2.. run execute as @a[tag=p1,tag=embrittleO] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:12,max:12}}}}} run scoreboard players remove Spell_Points_P1 Spell_Points 2
execute if score Spell_Points_P1 Spell_Points matches 2.. run execute as @a[tag=p1,tag=embrittleO] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:12,max:12}}}}} run say picked Embrittle
execute if score Spell_Points_P1 Spell_Points matches 2.. run execute as @a[tag=p1,tag=embrittleO] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:12,max:12}}}}} run effect clear @a[tag=p1] water_breathing
execute if score Spell_Points_P1 Spell_Points matches ..1 run execute as @a[tag=p1,tag=embrittleO] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:12,max:12}}}}} run say You dont have enough spell points to equip this spell yeet yo

execute as @a[tag=!embrittleO] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:12,max:12}}}}} run say Sorry, you don't own this spell

#Embrittle Select P2
execute if score Spell_Points_P2 Spell_Points matches 2.. run execute as @a[tag=p2,tag=embrittleO] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:12,max:12}}}}} run tag @p[tag=p2] add embrittle
execute if score Spell_Points_P2 Spell_Points matches 2.. run execute as @a[tag=p2,tag=embrittleO] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:12,max:12}}}}} run scoreboard players remove Spell_Points_P2 Spell_Points 2
execute if score Spell_Points_P2 Spell_Points matches 2.. run execute as @a[tag=p2,tag=embrittleO] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:12,max:12}}}}} run say picked Embrittle
execute if score Spell_Points_P2 Spell_Points matches 2.. run execute as @a[tag=p2,tag=embrittleO] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:12,max:12}}}}} run effect clear @a[tag=p2] water_breathing
execute if score Spell_Points_P2 Spell_Points matches ..1 run execute as @a[tag=p2,tag=embrittleO] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:12,max:12}}}}} run say You dont have enough spell points to equip this spell yeet yo


#Embiggen Select P1
execute if score Spell_Points_P1 Spell_Points matches 3.. run execute as @a[tag=p1,tag=embiggenO] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:13,max:13}}}}} run tag @p[tag=p1] add embiggen
execute if score Spell_Points_P1 Spell_Points matches 3.. run execute as @a[tag=p1,tag=embiggenO] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:13,max:13}}}}} run scoreboard players remove Spell_Points_P1 Spell_Points 3
execute if score Spell_Points_P1 Spell_Points matches 3.. run execute as @a[tag=p1,tag=embiggenO] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:13,max:13}}}}} run say picked Embiggen
execute if score Spell_Points_P1 Spell_Points matches 3.. run execute as @a[tag=p1,tag=embiggenO] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:13,max:13}}}}} run effect clear @a[tag=p1] water_breathing
execute if score Spell_Points_P1 Spell_Points matches ..2 run execute as @a[tag=p1,tag=embiggenO] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:13,max:13}}}}} run say You dont have enough spell points to equip this spell yeet yo

execute as @a[tag=!embiggenO] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:13,max:13}}}}} run say Sorry, you don't own this spell

#Embiggen Select P2
execute if score Spell_Points_P2 Spell_Points matches 3.. run execute as @a[tag=p2,tag=embiggenO] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:13,max:13}}}}} run tag @p[tag=p2] add embiggen
execute if score Spell_Points_P2 Spell_Points matches 3.. run execute as @a[tag=p2,tag=embiggenO] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:13,max:13}}}}} run scoreboard players remove Spell_Points_P2 Spell_Points 3
execute if score Spell_Points_P2 Spell_Points matches 3.. run execute as @a[tag=p2,tag=embiggenO] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:13,max:13}}}}} run say picked Embiggen
execute if score Spell_Points_P2 Spell_Points matches 3.. run execute as @a[tag=p2,tag=embiggenO] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:13,max:13}}}}} run effect clear @a[tag=p2] water_breathing
execute if score Spell_Points_P2 Spell_Points matches ..2 run execute as @a[tag=p2,tag=embiggenO] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:13,max:13}}}}} run say You dont have enough spell points to equip this spell yeet yo


#Immolate Select P1
execute if score Spell_Points_P1 Spell_Points matches 2.. run execute as @a[tag=p1,tag=immolateO] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:14,max:14}}}}} run tag @p[tag=p1] add immolate
execute if score Spell_Points_P1 Spell_Points matches 2.. run execute as @a[tag=p1,tag=immolateO] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:14,max:14}}}}} run scoreboard players remove Spell_Points_P1 Spell_Points 2
execute if score Spell_Points_P1 Spell_Points matches 2.. run execute as @a[tag=p1,tag=immolateO] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:14,max:14}}}}} run say picked Immolate
execute if score Spell_Points_P1 Spell_Points matches 2.. run execute as @a[tag=p1,tag=immolateO] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:14,max:14}}}}} run effect clear @a[tag=p1] water_breathing
execute if score Spell_Points_P1 Spell_Points matches ..1 run execute as @a[tag=p1,tag=immolateO] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:14,max:14}}}}} run say You dont have enough spell points to equip this spell yeet yo

execute as @a[tag=!immolateO] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:14,max:14}}}}} run say Sorry, you don't own this spell

#Immolate Select P2
execute if score Spell_Points_P2 Spell_Points matches 2.. run execute as @a[tag=p2,tag=immolateO] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:14,max:14}}}}} run tag @p[tag=p2] add immolate
execute if score Spell_Points_P2 Spell_Points matches 2.. run execute as @a[tag=p2,tag=immolateO] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:14,max:14}}}}} run scoreboard players remove Spell_Points_P2 Spell_Points 2
execute if score Spell_Points_P2 Spell_Points matches 2.. run execute as @a[tag=p2,tag=immolateO] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:14,max:14}}}}} run say picked Immolate
execute if score Spell_Points_P2 Spell_Points matches 2.. run execute as @a[tag=p2,tag=immolateO] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:14,max:14}}}}} run effect clear @a[tag=p2] water_breathing
execute if score Spell_Points_P2 Spell_Points matches ..1 run execute as @a[tag=p2,tag=immolateO] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:14,max:14}}}}} run say You dont have enough spell points to equip this spell yeet yo


#Evil Eye Select P1
execute if score Spell_Points_P1 Spell_Points matches 2.. run execute as @a[tag=p1,tag=evileyeO] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:15,max:15}}}}} run tag @p[tag=p1] add evileye
execute if score Spell_Points_P1 Spell_Points matches 2.. run execute as @a[tag=p1,tag=evileyeO] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:15,max:15}}}}} run scoreboard players remove Spell_Points_P1 Spell_Points 2
execute if score Spell_Points_P1 Spell_Points matches 2.. run execute as @a[tag=p1,tag=evileyeO] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:15,max:15}}}}} run say picked Evil Eye
execute if score Spell_Points_P1 Spell_Points matches 2.. run execute as @a[tag=p1,tag=evileyeO] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:15,max:15}}}}} run effect clear @a[tag=p1] water_breathing
execute if score Spell_Points_P1 Spell_Points matches ..1 run execute as @a[tag=p1,tag=evileyeO] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:15,max:15}}}}} run say You dont have enough spell points to equip this spell yeet yo

execute as @a[tag=!evileyeO] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:15,max:15}}}}} run say Sorry, you don't own this spell

#Evil Eye Select P2
execute if score Spell_Points_P2 Spell_Points matches 2.. run execute as @a[tag=p2,tag=evileyeO] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:15,max:15}}}}} run tag @p[tag=p2] add evileye
execute if score Spell_Points_P2 Spell_Points matches 2.. run execute as @a[tag=p2,tag=evileyeO] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:15,max:15}}}}} run scoreboard players remove Spell_Points_P2 Spell_Points 2
execute if score Spell_Points_P2 Spell_Points matches 2.. run execute as @a[tag=p2,tag=evileyeO] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:15,max:15}}}}} run say picked Evil Eye
execute if score Spell_Points_P2 Spell_Points matches 2.. run execute as @a[tag=p2,tag=evileyeO] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:15,max:15}}}}} run effect clear @a[tag=p2] water_breathing
execute if score Spell_Points_P2 Spell_Points matches ..1 run execute as @a[tag=p2,tag=evileyeO] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:15,max:15}}}}} run say You dont have enough spell points to equip this spell yeet yo


#Protector's Rune Select P1
execute if score Spell_Points_P1 Spell_Points matches 4.. run execute as @a[tag=p1,tag=protectorsruneO] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:16,max:16}}}}} run tag @p[tag=p1] add protectorsrune
execute if score Spell_Points_P1 Spell_Points matches 4.. run execute as @a[tag=p1,tag=protectorsruneO] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:16,max:16}}}}} run scoreboard players remove Spell_Points_P1 Spell_Points 4
execute if score Spell_Points_P1 Spell_Points matches 4.. run execute as @a[tag=p1,tag=protectorsruneO] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:16,max:16}}}}} run say picked Protector's Rune
execute if score Spell_Points_P1 Spell_Points matches 4.. run execute as @a[tag=p1,tag=protectorsruneO] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:16,max:16}}}}} run effect clear @a[tag=p1] water_breathing
execute if score Spell_Points_P1 Spell_Points matches ..3 run execute as @a[tag=p1,tag=protectorsruneO] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:16,max:16}}}}} run say You dont have enough spell points to equip this spell yeet yo

execute as @a[tag=!protectorsruneO] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:16,max:16}}}}} run say Sorry, you don't own this spell

#Protector's Rune Select P2
execute if score Spell_Points_P2 Spell_Points matches 4.. run execute as @a[tag=p2,tag=protectorsruneO] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:16,max:16}}}}} run tag @p[tag=p2] add protectorsrune
execute if score Spell_Points_P2 Spell_Points matches 4.. run execute as @a[tag=p2,tag=protectorsruneO] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:16,max:16}}}}} run scoreboard players remove Spell_Points_P2 Spell_Points 4
execute if score Spell_Points_P2 Spell_Points matches 4.. run execute as @a[tag=p2,tag=protectorsruneO] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:16,max:16}}}}} run say picked Protector's Rune
execute if score Spell_Points_P2 Spell_Points matches 4.. run execute as @a[tag=p2,tag=protectorsruneO] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:16,max:16}}}}} run effect clear @a[tag=p2] water_breathing
execute if score Spell_Points_P2 Spell_Points matches ..3 run execute as @a[tag=p2,tag=protectorsruneO] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:16,max:16}}}}} run say You dont have enough spell points to equip this spell yeet yo


#Miracle Select P1
execute if score Spell_Points_P1 Spell_Points matches 2.. run execute as @a[tag=p1,tag=miracleO] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:17,max:17}}}}} run tag @p[tag=p1] add miracle
execute if score Spell_Points_P1 Spell_Points matches 2.. run execute as @a[tag=p1,tag=miracleO] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:17,max:17}}}}} run scoreboard players remove Spell_Points_P1 Spell_Points 2
execute if score Spell_Points_P1 Spell_Points matches 2.. run execute as @a[tag=p1,tag=miracleO] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:17,max:17}}}}} run say picked Miracle
execute if score Spell_Points_P1 Spell_Points matches 2.. run execute as @a[tag=p1,tag=miracleO] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:17,max:17}}}}} run effect clear @a[tag=p1] water_breathing
execute if score Spell_Points_P1 Spell_Points matches ..1 run execute as @a[tag=p1,tag=miracleO] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:17,max:17}}}}} run say You dont have enough spell points to equip this spell yeet yo

execute as @a[tag=!miracleO] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:17,max:17}}}}} run say Sorry, you don't own this spell

#Miracle Select P2
execute if score Spell_Points_P2 Spell_Points matches 2.. run execute as @a[tag=p2,tag=miracleO] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:17,max:17}}}}} run tag @p[tag=p2] add miracle
execute if score Spell_Points_P2 Spell_Points matches 2.. run execute as @a[tag=p2,tag=miracleO] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:17,max:17}}}}} run scoreboard players remove Spell_Points_P2 Spell_Points 2
execute if score Spell_Points_P2 Spell_Points matches 2.. run execute as @a[tag=p2,tag=miracleO] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:17,max:17}}}}} run say picked Miracle
execute if score Spell_Points_P2 Spell_Points matches 2.. run execute as @a[tag=p2,tag=miracleO] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:17,max:17}}}}} run effect clear @a[tag=p2] water_breathing
execute if score Spell_Points_P2 Spell_Points matches ..1 run execute as @a[tag=p2,tag=miracleO] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:17,max:17}}}}} run say You dont have enough spell points to equip this spell yeet yo


#Miasma Select P1
execute if score Spell_Points_P1 Spell_Points matches 3.. run execute as @a[tag=p1,tag=miasmaO] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:18,max:18}}}}} run tag @p[tag=p1] add miasma
execute if score Spell_Points_P1 Spell_Points matches 3.. run execute as @a[tag=p1,tag=miasmaO] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:18,max:18}}}}} run scoreboard players remove Spell_Points_P1 Spell_Points 3
execute if score Spell_Points_P1 Spell_Points matches 3.. run execute as @a[tag=p1,tag=miasmaO] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:18,max:18}}}}} run say picked Miasma
execute if score Spell_Points_P1 Spell_Points matches 3.. run execute as @a[tag=p1,tag=miasmaO] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:18,max:18}}}}} run effect clear @a[tag=p1] water_breathing
execute if score Spell_Points_P1 Spell_Points matches ..2 run execute as @a[tag=p1,tag=miasmaO] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:18,max:18}}}}} run say You dont have enough spell points to equip this spell yeet yo

execute as @a[tag=!miasmaO] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:18,max:18}}}}} run say Sorry, you don't own this spell

#Miasma Select P2
execute if score Spell_Points_P2 Spell_Points matches 3.. run execute as @a[tag=p2,tag=miasmaO] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:18,max:18}}}}} run tag @p[tag=p2] add miasma
execute if score Spell_Points_P2 Spell_Points matches 3.. run execute as @a[tag=p2,tag=miasmaO] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:18,max:18}}}}} run scoreboard players remove Spell_Points_P2 Spell_Points 3
execute if score Spell_Points_P2 Spell_Points matches 3.. run execute as @a[tag=p2,tag=miasmaO] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:18,max:18}}}}} run say picked Miasma
execute if score Spell_Points_P2 Spell_Points matches 3.. run execute as @a[tag=p2,tag=miasmaO] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:18,max:18}}}}} run effect clear @a[tag=p2] water_breathing
execute if score Spell_Points_P2 Spell_Points matches ..2 run execute as @a[tag=p2,tag=miasmaO] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:18,max:18}}}}} run say You dont have enough spell points to equip this spell yeet yo


#Ward Select P1
execute if score Spell_Points_P1 Spell_Points matches 3.. run execute as @a[tag=p1,tag=wardO] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:19,max:19}}}}} run tag @p[tag=p1] add ward
execute if score Spell_Points_P1 Spell_Points matches 3.. run execute as @a[tag=p1,tag=wardO] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:19,max:19}}}}} run scoreboard players remove Spell_Points_P1 Spell_Points 3
execute if score Spell_Points_P1 Spell_Points matches 3.. run execute as @a[tag=p1,tag=wardO] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:19,max:19}}}}} run say picked Ward
execute if score Spell_Points_P1 Spell_Points matches 3.. run execute as @a[tag=p1,tag=wardO] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:19,max:19}}}}} run effect clear @a[tag=p1] water_breathing
execute if score Spell_Points_P1 Spell_Points matches ..2 run execute as @a[tag=p1,tag=wardO] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:19,max:19}}}}} run say You dont have enough spell points to equip this spell yeet yo

execute as @a[tag=!wardO] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:19,max:19}}}}} run say Sorry, you don't own this spell

#Ward Select P2
execute if score Spell_Points_P2 Spell_Points matches 2.. run execute as @a[tag=p2,tag=wardO] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:19,max:19}}}}} run tag @p[tag=p2] add ward
execute if score Spell_Points_P2 Spell_Points matches 2.. run execute as @a[tag=p2,tag=wardO] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:19,max:19}}}}} run scoreboard players remove Spell_Points_P2 Spell_Points 3
execute if score Spell_Points_P2 Spell_Points matches 2.. run execute as @a[tag=p2,tag=wardO] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:19,max:19}}}}} run say picked Ward
execute if score Spell_Points_P2 Spell_Points matches 2.. run execute as @a[tag=p2,tag=wardO] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:19,max:19}}}}} run effect clear @a[tag=p2] water_breathing
execute if score Spell_Points_P2 Spell_Points matches ..1 run execute as @a[tag=p2,tag=wardO] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:19,max:19}}}}} run say You dont have enough spell points to equip this spell yeet yo


#Blizzard Select P1
execute if score Spell_Points_P1 Spell_Points matches 3.. run execute as @a[tag=p1,tag=blizzardO] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:20,max:20}}}}} run tag @p[tag=p1] add blizzard
execute if score Spell_Points_P1 Spell_Points matches 3.. run execute as @a[tag=p1,tag=blizzardO] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:20,max:20}}}}} run scoreboard players remove Spell_Points_P1 Spell_Points 3
execute if score Spell_Points_P1 Spell_Points matches 3.. run execute as @a[tag=p1,tag=blizzardO] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:20,max:20}}}}} run say picked Blizzard
execute if score Spell_Points_P1 Spell_Points matches 3.. run execute as @a[tag=p1,tag=blizzardO] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:20,max:20}}}}} run effect clear @a[tag=p1] water_breathing
execute if score Spell_Points_P1 Spell_Points matches ..2 run execute as @a[tag=p1,tag=blizzardO] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:20,max:20}}}}} run say You dont have enough spell points to equip this spell yeet yo

execute as @a[tag=!blizzardO] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:20,max:20}}}}} run say Sorry, you don't own this spell

#Blizzard Select P2
execute if score Spell_Points_P2 Spell_Points matches 3.. run execute as @a[tag=p2,tag=blizzardO] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:20,max:20}}}}} run tag @p[tag=p2] add blizzard
execute if score Spell_Points_P2 Spell_Points matches 3.. run execute as @a[tag=p2,tag=blizzardO] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:20,max:20}}}}} run scoreboard players remove Spell_Points_P2 Spell_Points 3
execute if score Spell_Points_P2 Spell_Points matches 3.. run execute as @a[tag=p2,tag=blizzardO] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:20,max:20}}}}} run say picked Blizzard
execute if score Spell_Points_P2 Spell_Points matches 3.. run execute as @a[tag=p2,tag=blizzardO] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:20,max:20}}}}} run effect clear @a[tag=p2] water_breathing
execute if score Spell_Points_P2 Spell_Points matches ..2 run execute as @a[tag=p2,tag=blizzardO] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:20,max:20}}}}} run say You dont have enough spell points to equip this spell yeet yo


#Plague Select P1
execute if score Spell_Points_P1 Spell_Points matches 3.. run execute as @a[tag=p1,tag=plagueO] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:21,max:21}}}}} run tag @p[tag=p1] add plague
execute if score Spell_Points_P1 Spell_Points matches 3.. run execute as @a[tag=p1,tag=plagueO] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:21,max:21}}}}} run scoreboard players remove Spell_Points_P1 Spell_Points 3
execute if score Spell_Points_P1 Spell_Points matches 3.. run execute as @a[tag=p1,tag=plagueO] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:21,max:21}}}}} run say picked Plague
execute if score Spell_Points_P1 Spell_Points matches 3.. run execute as @a[tag=p1,tag=plagueO] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:21,max:21}}}}} run effect clear @a[tag=p1] water_breathing
execute if score Spell_Points_P1 Spell_Points matches ..2 run execute as @a[tag=p1,tag=plagueO] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:21,max:21}}}}} run say You dont have enough spell points to equip this spell yeet yo

execute as @a[tag=!plagueO] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:21,max:21}}}}} run say Sorry, you don't own this spell

#Plague Select P2
execute if score Spell_Points_P2 Spell_Points matches 3.. run execute as @a[tag=p2,tag=plagueO] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:21,max:21}}}}} run tag @p[tag=p2] add plague
execute if score Spell_Points_P2 Spell_Points matches 3.. run execute as @a[tag=p2,tag=plagueO] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:21,max:21}}}}} run scoreboard players remove Spell_Points_P2 Spell_Points 3
execute if score Spell_Points_P2 Spell_Points matches 3.. run execute as @a[tag=p2,tag=plagueO] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:21,max:21}}}}} run say picked Plague
execute if score Spell_Points_P2 Spell_Points matches 3.. run execute as @a[tag=p2,tag=plagueO] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:21,max:21}}}}} run effect clear @a[tag=p2] water_breathing
execute if score Spell_Points_P2 Spell_Points matches ..2 run execute as @a[tag=p2,tag=plagueO] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:21,max:21}}}}} run say You dont have enough spell points to equip this spell yeet yo


#Second Wind Select P1
execute if score Spell_Points_P1 Spell_Points matches 2.. run execute as @a[tag=p1,tag=secondwindO] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:22,max:22}}}}} run tag @p[tag=p1] add secondwind
execute if score Spell_Points_P1 Spell_Points matches 2.. run execute as @a[tag=p1,tag=secondwindO] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:22,max:22}}}}} run scoreboard players remove Spell_Points_P1 Spell_Points 2
execute if score Spell_Points_P1 Spell_Points matches 2.. run execute as @a[tag=p1,tag=secondwindO] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:22,max:22}}}}} run say picked Second Wind
execute if score Spell_Points_P1 Spell_Points matches 2.. run execute as @a[tag=p1,tag=secondwindO] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:22,max:22}}}}} run effect clear @a[tag=p1] water_breathing
execute if score Spell_Points_P1 Spell_Points matches ..1 run execute as @a[tag=p1,tag=secondwindO] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:22,max:22}}}}} run say You dont have enough spell points to equip this spell yeet yo

execute as @a[tag=!secondwindO] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:22,max:22}}}}} run say Sorry, you don't own this spell

#Second Wind Select P2
execute if score Spell_Points_P2 Spell_Points matches 2.. run execute as @a[tag=p2,tag=secondwindO] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:22,max:22}}}}} run tag @p[tag=p2] add secondwind
execute if score Spell_Points_P2 Spell_Points matches 2.. run execute as @a[tag=p2,tag=secondwindO] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:22,max:22}}}}} run scoreboard players remove Spell_Points_P2 Spell_Points 2
execute if score Spell_Points_P2 Spell_Points matches 2.. run execute as @a[tag=p2,tag=secondwindO] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:22,max:22}}}}} run say picked Second Wind
execute if score Spell_Points_P2 Spell_Points matches 2.. run execute as @a[tag=p2,tag=secondwindO] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:22,max:22}}}}} run effect clear @a[tag=p2] water_breathing
execute if score Spell_Points_P2 Spell_Points matches ..1 run execute as @a[tag=p2,tag=secondwindO] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:22,max:22}}}}} run say You dont have enough spell points to equip this spell yeet yo


#Witches Brew Select P1
execute if score Spell_Points_P1 Spell_Points matches 2.. run execute as @a[tag=p1,tag=witchesbrewO] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:23,max:23}}}}} run tag @p[tag=p1] add witchesbrew
execute if score Spell_Points_P1 Spell_Points matches 2.. run execute as @a[tag=p1,tag=witchesbrewO] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:23,max:23}}}}} run scoreboard players remove Spell_Points_P1 Spell_Points 2
execute if score Spell_Points_P1 Spell_Points matches 2.. run execute as @a[tag=p1,tag=witchesbrewO] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:23,max:23}}}}} run say picked Witches Brew
execute if score Spell_Points_P1 Spell_Points matches 2.. run execute as @a[tag=p1,tag=witchesbrewO] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:23,max:23}}}}} run effect clear @a[tag=p1] water_breathing
execute if score Spell_Points_P1 Spell_Points matches ..1 run execute as @a[tag=p1,tag=O] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:23,max:23}}}}} run say You dont have enough spell points to equip this spell yeet yo

execute as @a[tag=!witchesbrewO] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:23,max:23}}}}} run say Sorry, you don't own this spell

#Witches Brew Select P2
execute if score Spell_Points_P2 Spell_Points matches 2.. run execute as @a[tag=p2,tag=witchesbrewO] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:23,max:23}}}}} run tag @p[tag=p2] add witchesbrew
execute if score Spell_Points_P2 Spell_Points matches 2.. run execute as @a[tag=p2,tag=witchesbrewO] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:23,max:23}}}}} run scoreboard players remove Spell_Points_P2 Spell_Points 2
execute if score Spell_Points_P2 Spell_Points matches 2.. run execute as @a[tag=p2,tag=witchesbrewO] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:23,max:23}}}}} run say picked Witches Brew
execute if score Spell_Points_P2 Spell_Points matches 2.. run execute as @a[tag=p2,tag=witchesbrewO] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:23,max:23}}}}} run effect clear @a[tag=p2] water_breathing
execute if score Spell_Points_P2 Spell_Points matches ..1 run execute as @a[tag=p2,tag=witchesbrewO] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:23,max:23}}}}} run say You dont have enough spell points to equip this spell yeet yo


#Font of Wisdom Select P1
execute if score Spell_Points_P1 Spell_Points matches 2.. run execute as @a[tag=p1,tag=fontofwisdomO] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:24,max:24}}}}} run tag @p[tag=p1] add fontofwisdom
execute if score Spell_Points_P1 Spell_Points matches 2.. run execute as @a[tag=p1,tag=fontofwisdomO] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:24,max:24}}}}} run scoreboard players remove Spell_Points_P1 Spell_Points 2
execute if score Spell_Points_P1 Spell_Points matches 2.. run execute as @a[tag=p1,tag=fontofwisdomO] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:24,max:24}}}}} run say picked Font of Wisdom
execute if score Spell_Points_P1 Spell_Points matches 2.. run execute as @a[tag=p1,tag=fontofwisdomO] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:24,max:24}}}}} run effect clear @a[tag=p1] water_breathing
execute if score Spell_Points_P1 Spell_Points matches ..1 run execute as @a[tag=p1,tag=fontofwisdomO] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:24,max:24}}}}} run say You dont have enough spell points to equip this spell yeet yo

execute as @a[tag=!O] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:24,max:24}}}}} run say Sorry, you don't own this spell

#Font of Wisdom Select P2
execute if score Spell_Points_P2 Spell_Points matches 2.. run execute as @a[tag=p2,tag=fontofwisdomO] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:24,max:24}}}}} run tag @p[tag=p2] add fontofwisdom
execute if score Spell_Points_P2 Spell_Points matches 2.. run execute as @a[tag=p2,tag=fontofwisdomO] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:24,max:24}}}}} run scoreboard players remove Spell_Points_P2 Spell_Points 2
execute if score Spell_Points_P2 Spell_Points matches 2.. run execute as @a[tag=p2,tag=fontofwisdomO] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:24,max:24}}}}} run say picked Font of Wisdom
execute if score Spell_Points_P2 Spell_Points matches 2.. run execute as @a[tag=p2,tag=fontofwisdomO] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:24,max:24}}}}} run effect clear @a[tag=p2] water_breathing
execute if score Spell_Points_P2 Spell_Points matches ..1 run execute as @a[tag=p2,tag=fontofwisdomO] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:24,max:24}}}}} run say You dont have enough spell points to equip this spell yeet yo


#Fountain of Youth Select P1
execute if score Spell_Points_P1 Spell_Points matches 3.. run execute as @a[tag=p1,tag=fountainofyouthO] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:25,max:25}}}}} run tag @p[tag=p1] add fountainofyouth
execute if score Spell_Points_P1 Spell_Points matches 3.. run execute as @a[tag=p1,tag=fountainofyouthO] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:25,max:25}}}}} run scoreboard players remove Spell_Points_P1 Spell_Points 3
execute if score Spell_Points_P1 Spell_Points matches 3.. run execute as @a[tag=p1,tag=fountainofyouthO] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:25,max:25}}}}} run say picked Fountain of Youth
execute if score Spell_Points_P1 Spell_Points matches 3.. run execute as @a[tag=p1,tag=fountainofyouthO] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:25,max:25}}}}} run effect clear @a[tag=p1] water_breathing
execute if score Spell_Points_P1 Spell_Points matches ..2 run execute as @a[tag=p1,tag=fountainofyouthO] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:25,max:25}}}}} run say You dont have enough spell points to equip this spell yeet yo

execute as @a[tag=!fountainofyouthO] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:25,max:25}}}}} run say Sorry, you don't own this spell

#Fountain of Youth Select P2
execute if score Spell_Points_P2 Spell_Points matches 3.. run execute as @a[tag=p2,tag=fountainofyouthO] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:25,max:25}}}}} run tag @p[tag=p2] add fountainofyouth
execute if score Spell_Points_P2 Spell_Points matches 3.. run execute as @a[tag=p2,tag=fountainofyouthO] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:25,max:25}}}}} run scoreboard players remove Spell_Points_P2 Spell_Points 3
execute if score Spell_Points_P2 Spell_Points matches 3.. run execute as @a[tag=p2,tag=fountainofyouthO] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:25,max:25}}}}} run say picked Fountain of Youth
execute if score Spell_Points_P2 Spell_Points matches 3.. run execute as @a[tag=p2,tag=fountainofyouthO] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:25,max:25}}}}} run effect clear @a[tag=p2] water_breathing
execute if score Spell_Points_P2 Spell_Points matches ..2 run execute as @a[tag=p2,tag=fountainofyouthO] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:25,max:25}}}}} run say You dont have enough spell points to equip this spell yeet yo


#Dragonforge Select P1
execute if score Spell_Points_P1 Spell_Points matches 3.. run execute as @a[tag=p1,tag=dragonforgeO] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:26,max:26}}}}} run tag @p[tag=p1] add dragonforge
execute if score Spell_Points_P1 Spell_Points matches 3.. run execute as @a[tag=p1,tag=dragonforgeO] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:26,max:26}}}}} run scoreboard players remove Spell_Points_P1 Spell_Points 3
execute if score Spell_Points_P1 Spell_Points matches 3.. run execute as @a[tag=p1,tag=dragonforgeO] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:26,max:26}}}}} run say picked Dragonforge
execute if score Spell_Points_P1 Spell_Points matches 3.. run execute as @a[tag=p1,tag=dragonforgeO] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:26,max:26}}}}} run effect clear @a[tag=p1] water_breathing
execute if score Spell_Points_P1 Spell_Points matches ..2 run execute as @a[tag=p1,tag=dragonforgeO] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:26,max:26}}}}} run say You dont have enough spell points to equip this spell yeet yo

execute as @a[tag=!dragonforgeO] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:26,max:26}}}}} run say Sorry, you don't own this spell

#Dragonforge Select P2
execute if score Spell_Points_P2 Spell_Points matches 3.. run execute as @a[tag=p2,tag=dragonforgeO] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:26,max:26}}}}} run tag @p[tag=p2] add dragonforge
execute if score Spell_Points_P2 Spell_Points matches 3.. run execute as @a[tag=p2,tag=dragonforgeO] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:26,max:26}}}}} run scoreboard players remove Spell_Points_P2 Spell_Points 3
execute if score Spell_Points_P2 Spell_Points matches 3.. run execute as @a[tag=p2,tag=dragonforgeO] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:26,max:26}}}}} run say picked Dragonforge
execute if score Spell_Points_P2 Spell_Points matches 3.. run execute as @a[tag=p2,tag=dragonforgeO] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:26,max:26}}}}} run effect clear @a[tag=p2] water_breathing
execute if score Spell_Points_P2 Spell_Points matches ..2 run execute as @a[tag=p2,tag=dragonforgeO] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:26,max:26}}}}} run say You dont have enough spell points to equip this spell yeet yo


#Overclock Select P1
execute if score Spell_Points_P1 Spell_Points matches 3.. run execute as @a[tag=p1,tag=overclockO] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:27,max:27}}}}} run tag @p[tag=p1] add overclock
execute if score Spell_Points_P1 Spell_Points matches 3.. run execute as @a[tag=p1,tag=overclockO] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:27,max:27}}}}} run scoreboard players remove Spell_Points_P1 Spell_Points 3
execute if score Spell_Points_P1 Spell_Points matches 3.. run execute as @a[tag=p1,tag=overclockO] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:27,max:27}}}}} run say picked Overclock
execute if score Spell_Points_P1 Spell_Points matches 3.. run execute as @a[tag=p1,tag=overclockO] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:27,max:27}}}}} run effect clear @a[tag=p1] water_breathing
execute if score Spell_Points_P1 Spell_Points matches ..2 run execute as @a[tag=p1,tag=overclockO] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:27,max:27}}}}} run say You dont have enough spell points to equip this spell yeet yo

execute as @a[tag=!overclockO] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:27,max:27}}}}} run say Sorry, you don't own this spell

#Overclock Select P2
execute if score Spell_Points_P2 Spell_Points matches 3.. run execute as @a[tag=p2,tag=overclockO] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:27,max:27}}}}} run tag @p[tag=p2] add overclock
execute if score Spell_Points_P2 Spell_Points matches 3.. run execute as @a[tag=p2,tag=overclockO] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:27,max:27}}}}} run scoreboard players remove Spell_Points_P2 Spell_Points 3
execute if score Spell_Points_P2 Spell_Points matches 3.. run execute as @a[tag=p2,tag=overclockO] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:27,max:27}}}}} run say picked Overclock
execute if score Spell_Points_P2 Spell_Points matches 3.. run execute as @a[tag=p2,tag=overclockO] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:27,max:27}}}}} run effect clear @a[tag=p2] water_breathing
execute if score Spell_Points_P2 Spell_Points matches ..2 run execute as @a[tag=p2,tag=overclockO] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:27,max:27}}}}} run say You dont have enough spell points to equip this spell yeet yo


#Shifting Shadows Select P1
execute if score Spell_Points_P1 Spell_Points matches 1.. run execute as @a[tag=p1,tag=shiftingshadowsO] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:28,max:28}}}}} run tag @p[tag=p1] add shiftingshadows
execute if score Spell_Points_P1 Spell_Points matches 1.. run execute as @a[tag=p1,tag=shiftingshadowsO] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:28,max:28}}}}} run scoreboard players remove Spell_Points_P1 Spell_Points 1
execute if score Spell_Points_P1 Spell_Points matches 1.. run execute as @a[tag=p1,tag=shiftingshadowsO] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:28,max:28}}}}} run say picked Shifting Shadows
execute if score Spell_Points_P1 Spell_Points matches 1.. run execute as @a[tag=p1,tag=shiftingshadowsO] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:28,max:28}}}}} run effect clear @a[tag=p1] water_breathing
execute if score Spell_Points_P1 Spell_Points matches ..0 run execute as @a[tag=p1,tag=shiftingshadowsO] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:28,max:28}}}}} run say You dont have enough spell points to equip this spell yeet yo

execute as @a[tag=!shiftingshadowsO] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:28,max:28}}}}} run say Sorry, you don't own this spell

#Shifting Shadows Select P2
execute if score Spell_Points_P2 Spell_Points matches 1.. run execute as @a[tag=p2,tag=shiftingshadowsO] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:28,max:28}}}}} run tag @p[tag=p2] add shiftingshadows
execute if score Spell_Points_P2 Spell_Points matches 1.. run execute as @a[tag=p2,tag=shiftingshadowsO] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:28,max:28}}}}} run scoreboard players remove Spell_Points_P2 Spell_Points 1
execute if score Spell_Points_P2 Spell_Points matches 1.. run execute as @a[tag=p2,tag=shiftingshadowsO] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:28,max:28}}}}} run say picked Shifting Shadows
execute if score Spell_Points_P2 Spell_Points matches 1.. run execute as @a[tag=p2,tag=shiftingshadowsO] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:28,max:28}}}}} run effect clear @a[tag=p2] water_breathing
execute if score Spell_Points_P2 Spell_Points matches ..0 run execute as @a[tag=p2,tag=shiftingshadowsO] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:28,max:28}}}}} run say You dont have enough spell points to equip this spell yeet yo


#Chrono Warp Select P1
execute if score Spell_Points_P1 Spell_Points matches 4.. run execute as @a[tag=p1,tag=chronowarpO] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:29,max:29}}}}} run tag @p[tag=p1] add chronowarp
execute if score Spell_Points_P1 Spell_Points matches 4.. run execute as @a[tag=p1,tag=chronowarpO] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:29,max:29}}}}} run scoreboard players remove Spell_Points_P1 Spell_Points 4
execute if score Spell_Points_P1 Spell_Points matches 4.. run execute as @a[tag=p1,tag=chronowarpO] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:29,max:29}}}}} run say picked Chrono Warp
execute if score Spell_Points_P1 Spell_Points matches 4.. run execute as @a[tag=p1,tag=chronowarpO] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:29,max:29}}}}} run effect clear @a[tag=p1] water_breathing
execute if score Spell_Points_P1 Spell_Points matches ..3 run execute as @a[tag=p1,tag=chronowarpO] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:29,max:29}}}}} run say You dont have enough spell points to equip this spell yeet yo

execute as @a[tag=!chronowarpO] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:29,max:29}}}}} run say Sorry, you don't own this spell

#Chrono Warp Select P2
execute if score Spell_Points_P2 Spell_Points matches 4.. run execute as @a[tag=p2,tag=chronowarpO] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:29,max:29}}}}} run tag @p[tag=p2] add chronowarp
execute if score Spell_Points_P2 Spell_Points matches 4.. run execute as @a[tag=p2,tag=chronowarpO] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:29,max:29}}}}} run scoreboard players remove Spell_Points_P2 Spell_Points 4
execute if score Spell_Points_P2 Spell_Points matches 4.. run execute as @a[tag=p2,tag=chronowarpO] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:29,max:29}}}}} run say picked Chrono Warp
execute if score Spell_Points_P2 Spell_Points matches 4.. run execute as @a[tag=p2,tag=chronowarpO] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:29,max:29}}}}} run effect clear @a[tag=p2] water_breathing
execute if score Spell_Points_P2 Spell_Points matches ..3 run execute as @a[tag=p2,tag=chronowarpO] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:29,max:29}}}}} run say You dont have enough spell points to equip this spell yeet yo


#Healing Totem Select P1
execute if score Spell_Points_P1 Spell_Points matches 4.. run execute as @a[tag=p1,tag=healingtotemO] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:30,max:30}}}}} run tag @p[tag=p1] add healingtotem
execute if score Spell_Points_P1 Spell_Points matches 4.. run execute as @a[tag=p1,tag=healingtotemO] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:30,max:30}}}}} run scoreboard players remove Spell_Points_P1 Spell_Points 4
execute if score Spell_Points_P1 Spell_Points matches 4.. run execute as @a[tag=p1,tag=healingtotemO] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:30,max:30}}}}} run say picked Healing Totem
execute if score Spell_Points_P1 Spell_Points matches 4.. run execute as @a[tag=p1,tag=healingtotemO] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:30,max:30}}}}} run effect clear @a[tag=p1] water_breathing
execute if score Spell_Points_P1 Spell_Points matches ..3 run execute as @a[tag=p1,tag=healingtotemO] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:30,max:30}}}}} run say You dont have enough spell points to equip this spell yeet yo

execute as @a[tag=!healingtotemO] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:30,max:30}}}}} run say Sorry, you don't own this spell

#Healing Totem Select P2
execute if score Spell_Points_P2 Spell_Points matches 4.. run execute as @a[tag=p2,tag=healingtotemO] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:30,max:30}}}}} run tag @p[tag=p2] add healingtotem
execute if score Spell_Points_P2 Spell_Points matches 4.. run execute as @a[tag=p2,tag=healingtotemO] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:30,max:30}}}}} run scoreboard players remove Spell_Points_P2 Spell_Points 4
execute if score Spell_Points_P2 Spell_Points matches 4.. run execute as @a[tag=p2,tag=healingtotemO] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:30,max:30}}}}} run say picked Healing Totem
execute if score Spell_Points_P2 Spell_Points matches 4.. run execute as @a[tag=p2,tag=healingtotemO] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:30,max:30}}}}} run effect clear @a[tag=p2] water_breathing
execute if score Spell_Points_P2 Spell_Points matches ..3 run execute as @a[tag=p2,tag=healingtotemO] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:water_breathing":{amplifier:{min:30,max:30}}}}} run say You dont have enough spell points to equip this spell yeet yo

execute if score Spell_Points_P1 Spell_Points matches 0 run execute if score Spell_Points_P2 Spell_Points matches 0 run function ch:game1start