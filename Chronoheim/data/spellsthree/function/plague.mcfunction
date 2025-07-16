execute as @a[tag=p5] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:21,max:21}}}}} run scoreboard players operation plagueCooldown player5spells = plagueCD spellStats

execute as @a[tag=p6] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:21,max:21}}}}} run scoreboard players operation plagueCooldown player6spells = plagueCD spellStats
scoreboard players set spellnumber3 spells 21
execute as @a[tag=p5] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:21,max:21}}}}} run function chthree:spellgivetargetsp5
execute as @a[tag=p6] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:21,max:21}}}}} run function chthree:spellgivetargetsp6
