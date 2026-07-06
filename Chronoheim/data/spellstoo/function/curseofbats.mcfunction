execute as @a[tag=p3] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:42,max:42}}}}} run scoreboard players operation curseOfBatsCooldown player3spells = curseofbatsCD spellStats

execute as @a[tag=p4] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:42,max:42}}}}} run scoreboard players operation curseOfBatsCooldown player4spells = curseofbatsCD spellStats
scoreboard players set spellnumber2 spells 42

execute as @a[tag=p3] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:42,max:42}}}}} run function chtoo:spellgivetargetsp3
execute as @a[tag=p4] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:42,max:42}}}}} run function chtoo:spellgivetargetsp4