execute as @a[tag=p3] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:34,max:34}}}}} run scoreboard players operation cannibalizeCooldown player3spells = cannibalizeCD spellStats

execute as @a[tag=p4] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:34,max:34}}}}} run scoreboard players operation cannibalizeCooldown player4spells = cannibalizeCD spellStats
scoreboard players set spellnumber2 spells 34
execute as @a[tag=p3] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:34,max:34}}}}} run function chtoo:spellgivetargetsp4reverse
execute as @a[tag=p4] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:34,max:34}}}}} run function chtoo:spellgivetargetsp3reverse