execute as @a[tag=p3] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:23,max:23}}}}} run scoreboard players operation witchesBrewCooldown player3spells = witchesBrewCD spellStats

execute as @a[tag=p4] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:23,max:23}}}}} run scoreboard players operation witchesBrewCooldown player4spells = witchesBrewCD spellStats
scoreboard players set spellnumber2 spells 23
execute as @a[tag=p3] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:23,max:23}}}}} run function ch:spellgivetargetsp3
execute as @a[tag=p4] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:23,max:23}}}}} run function ch:spellgivetargetsp4