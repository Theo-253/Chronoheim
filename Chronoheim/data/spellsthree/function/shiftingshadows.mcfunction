execute as @a[tag=p5] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:28,max:28}}}}} run scoreboard players operation shiftingShadowsCooldown player5spells = shiftingShadowsCD spellStats

execute as @a[tag=p6] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:28,max:28}}}}} run scoreboard players operation shiftingShadowsCooldown player6spells = shiftingShadowsCD spellStats
scoreboard players set spellnumber3 spells 28
execute as @a[tag=p5] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:28,max:28}}}}} run function chthree:spellgivetargetsp6reverse
execute as @a[tag=p6] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:28,max:28}}}}} run function chthree:spellgivetargetsp5reverse

