execute as @a[tag=p5] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:7,max:7}}}}} run scoreboard players operation meteorCooldown player5spells = meteorCD spellStats
execute as @a[tag=p6] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:7,max:7}}}}} run scoreboard players operation meteorCooldown player6spells = meteorCD spellStats

scoreboard players set spellnumber3 spells 7
execute as @a[tag=p5] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:7,max:7}}}}} run function chthree:spellgivetargetsp5
execute as @a[tag=p6] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:7,max:7}}}}} run function chthree:spellgivetargetsp6