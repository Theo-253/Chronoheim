execute as @a[tag=p5] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:40,max:40}}}}} run scoreboard players operation darkRitualCooldown player5spells = darkpowerCD spellStats

execute as @a[tag=p6] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:40,max:40}}}}} run scoreboard players operation darkRitualCooldown player6spells = darkpowerCD spellStats
scoreboard players set spellnumber3 spells 40
execute as @a[tag=p5] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:40,max:40}}}}} run scoreboard players operation darkritual player5spells += darkpowerScale spellStats
execute as @a[tag=p6] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:40,max:40}}}}} run scoreboard players operation darkritual player6spells += darkpowerScale spellStats
execute as @a[tag=p5] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:40,max:40}}}}} run function chthree:spellgivetargetsp6reverse
execute as @a[tag=p6] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:40,max:40}}}}} run function chthree:spellgivetargetsp5reverse


