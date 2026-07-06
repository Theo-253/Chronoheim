execute as @a[tag=p3] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:36,max:36}}}}} run scoreboard players operation vampireMarkCooldown player3spells = vampiremarkCD spellStats

execute as @a[tag=p4] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:36,max:36}}}}} run scoreboard players operation vampireMarkCooldown player4spells = vampiremarkCD spellStats
scoreboard players set spellnumber2 spells 36

execute as @a[tag=p3] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:36,max:36}}}}} run function chtoo:spellgivetargetsp4reverse
execute as @a[tag=p4] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:infested":{amplifier:{min:36,max:36}}}}} run function chtoo:spellgivetargetsp3reverse

