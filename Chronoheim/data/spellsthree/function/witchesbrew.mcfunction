execute as @a[tag=p5] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:23,max:23}}}}} run scoreboard players operation witchesBrewCooldown player3spells = witchesBrewCD spellStats

execute as @a[tag=p6] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:23,max:23}}}}} run scoreboard players operation witchesBrewCooldown player4spells = witchesBrewCD spellStats
scoreboard players set spellnumber3 spells 23
execute as @a[tag=p5] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:23,max:23}}}}} run function ch:spellgivetargetsp5
execute as @a[tag=p6] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:23,max:23}}}}} run function ch:spellgivetargetsp6