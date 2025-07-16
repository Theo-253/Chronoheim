execute as @a[tag=p5] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:12,max:12}}}}} run scoreboard players operation embrittleCooldown player5spells = embrittleCD spellStats

execute as @a[tag=p6] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:12,max:12}}}}} run scoreboard players operation embrittleCooldown player6spells = embrittleCD spellStats
scoreboard players set spellnumber3 spells 12

execute as @a[tag=p5] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:12,max:12}}}}} run function chthree:spellgivetargetsp5
execute as @a[tag=p6] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:12,max:12}}}}} run function chthree:spellgivetargetsp6


