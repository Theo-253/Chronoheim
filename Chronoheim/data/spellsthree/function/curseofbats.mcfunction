execute as @a[tag=p5] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:42,max:42}}}}} run scoreboard players operation curseOfBatsCooldown player5spells = curseofbatsCD spellStats

execute as @a[tag=p6] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:42,max:42}}}}} run scoreboard players operation curseOfBatsCooldown player6spells = curseofbatsCD spellStats
scoreboard players set spellnumber3 spells 42

execute as @a[tag=p5] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:42,max:42}}}}} run function chthree:spellgivetargetsp5
execute as @a[tag=p6] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:42,max:42}}}}} run function chthree:spellgivetargetsp6
