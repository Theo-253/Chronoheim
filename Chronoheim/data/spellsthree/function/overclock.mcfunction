execute as @a[tag=p5] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:27,max:27}}}}} run scoreboard players operation overclockCooldown player5spells = overclockCD spellStats

execute as @a[tag=p6] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:27,max:27}}}}} run scoreboard players operation overclockCooldown player6spells = overclockCD spellStats
scoreboard players set spellnumber3 spells 27
execute as @a[tag=p5] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:27,max:27}}}}} run function chthree:spellgivetargetsp6reverse
execute as @a[tag=p6] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:27,max:27}}}}} run function chthree:spellgivetargetsp5reverse