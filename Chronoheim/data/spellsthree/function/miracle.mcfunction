execute as @a[tag=p5] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:17,max:17}}}}} run scoreboard players operation miracleCooldown player5spells = miracleCD spellStats

execute as @a[tag=p6] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:17,max:17}}}}} run scoreboard players operation miracleCooldown player6spells = miracleCD spellStats
scoreboard players set spellnumber3 spells 17
execute as @a[tag=p5] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:17,max:17}}}}} run function chthree:spellgivetargetsp6reverse
execute as @a[tag=p6] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:17,max:17}}}}} run function chthree:spellgivetargetsp5reverse



