execute as @a[tag=p3] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:strength":{amplifier:{min:29,max:29}}}}} run function chtoo:abilitygivetargetsp4reverse
execute as @a[tag=p4] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:strength":{amplifier:{min:29,max:29}}}}} run function chtoo:abilitygivetargetsp3reverse

scoreboard players set abilitynumber2 abilities -5