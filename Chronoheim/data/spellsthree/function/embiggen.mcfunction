execute as @a[tag=p5] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:13,max:13}}}}} run scoreboard players operation embiggenCooldown player5spells = embiggenCD spellStats

execute as @a[tag=p6] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:13,max:13}}}}} run scoreboard players operation embiggenCooldown player6spells = embiggenCD spellStats
scoreboard players set spellnumber3 spells 13
execute as @a[tag=p5] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:13,max:13}}}}} run function chthree:spellgivetargetsp6reverse
execute as @a[tag=p6] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:13,max:13}}}}} run function chthree:spellgivetargetsp5reverse
