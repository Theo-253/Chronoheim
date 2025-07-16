execute as @a[tag=p3] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:26,max:26}}}}} run scoreboard players operation dragonforgeCooldown player3spells = dragonforgeCD spellStats

execute as @a[tag=p4] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:26,max:26}}}}} run scoreboard players operation dragonforgeCooldown player4spells = dragonforgeCD spellStats
scoreboard players set spellnumber2 spells 26

execute as @a[tag=p3] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:26,max:26}}}}} run function chtoo:spellgivetargetsp4reverse
execute as @a[tag=p4] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:26,max:26}}}}} run function chtoo:spellgivetargetsp3reverse