execute as @a[tag=p3] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:strength":{amplifier:{min:26,max:26}}}}} run function chtoo:abilitygivetargetsp3reverse
execute as @a[tag=p4] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:strength":{amplifier:{min:26,max:26}}}}} run function chtoo:abilitygivetargetsp4reverse

scoreboard players set abilitynumber2 abilities -5