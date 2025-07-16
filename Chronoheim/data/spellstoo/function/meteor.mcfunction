execute as @a[tag=p3] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:7,max:7}}}}} run scoreboard players operation meteorCooldown player3spells = meteorCD spellStats
execute as @a[tag=p4] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:7,max:7}}}}} run scoreboard players operation meteorCooldown player4spells = meteorCD spellStats

scoreboard players set spellnumber2 spells 7
execute as @a[tag=p3] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:7,max:7}}}}} run function chtoo:spellgivetargetsp3
execute as @a[tag=p4] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:7,max:7}}}}} run function chtoo:spellgivetargetsp4