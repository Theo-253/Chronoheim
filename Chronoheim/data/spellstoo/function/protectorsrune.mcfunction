execute as @a[tag=p3] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:16,max:16}}}}} run scoreboard players operation protectorsRuneCooldown player3spells = protectorsRuneCD spellStats

execute as @a[tag=p4] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:16,max:16}}}}} run scoreboard players operation protectorsRuneCooldown player4spells = protectorsRuneCD spellStats
scoreboard players set spellnumber2 spells 16
execute as @a[tag=p3] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:16,max:16}}}}} run function chtoo:spellgivetargetsp4reverse
execute as @a[tag=p4] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:16,max:16}}}}} run function chtoo:spellgivetargetsp3reverse

