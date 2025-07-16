execute as @a[tag=p3] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:28,max:28}}}}} run scoreboard players operation shiftingShadowsCooldown player3spells = shiftingShadowsCD spellStats

execute as @a[tag=p4] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:28,max:28}}}}} run scoreboard players operation shiftingShadowsCooldown player4spells = shiftingShadowsCD spellStats
scoreboard players set spellnumber2 spells 28
execute as @a[tag=p3] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:28,max:28}}}}} run function chtoo:spellgivetargetsp4reverse
execute as @a[tag=p4] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:28,max:28}}}}} run function chtoo:spellgivetargetsp3reverse

